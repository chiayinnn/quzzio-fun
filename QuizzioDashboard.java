import javax.swing.*;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.imageio.ImageIO;

public class QuizzioDashboard extends JFrame {

    private BufferedImage backgroundImage;
    private JLabel welcomeLabel;

    public QuizzioDashboard(String userId) {
        // Load the background image
        try {
            backgroundImage = ImageIO.read(new File("src/Images/background.png"));
        } catch (IOException e) {
            e.printStackTrace();
        }

        // Frame settings
        setTitle("Student Dashboard");
        setSize(800, 500);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);

        // Main panel with background image
        BackgroundPanel mainPanel = new BackgroundPanel();
        mainPanel.setLayout(new BorderLayout());
        add(mainPanel);

        // Top panel with title, search bar, and profile
        JPanel topPanel = new JPanel(new BorderLayout());
        topPanel.setOpaque(false);

        // Title
        JPanel titlePanel = new JPanel(new FlowLayout(FlowLayout.LEFT));
        titlePanel.setOpaque(false);
        JLabel titleLabel = new JLabel("Quizzio", JLabel.LEFT);
        titleLabel.setFont(new Font("Arial", Font.BOLD, 40));
        titlePanel.add(titleLabel);
        topPanel.add(titlePanel, BorderLayout.WEST);

        // Right-side panel for search and profile
        JPanel rightPanel = new JPanel(new FlowLayout(FlowLayout.RIGHT));
        rightPanel.setOpaque(false);
        JTextField searchBar = new JTextField(20);
        JButton searchButton = new JButton("Search");
        JButton allQuizButton = new JButton("All Quiz");

        ImageIcon settingsIcon = new ImageIcon(getClass().getResource("/Images/profile.png"));

        // Create a button with the icon
        JButton settingsButton = new JButton(settingsIcon);
        settingsButton.setContentAreaFilled(false);
        settingsButton.setBorderPainted(false);
        settingsButton.setFocusPainted(false);

        // Add the button to the panel
        rightPanel.add(searchBar);
        rightPanel.add(searchButton);
        rightPanel.add(allQuizButton);
        rightPanel.add(settingsButton);  // Add the button, not the ImageIcon itself

        topPanel.add(rightPanel, BorderLayout.EAST);


        mainPanel.add(topPanel, BorderLayout.NORTH);

        // Welcome panel
        JPanel welcomePanel = new JPanel(new BorderLayout());
        welcomePanel.setOpaque(false);
        welcomeLabel = new JLabel("<html><div style='text-align: center;'>Hi X X X,<br>Welcome to Quizzio</div></html>", JLabel.CENTER);
        welcomeLabel.setFont(new Font("Arial", Font.BOLD, 38));
        welcomePanel.add(welcomeLabel, BorderLayout.NORTH);

        JPanel quizPinPanel = new JPanel();
        quizPinPanel.setOpaque(false);
        JTextField quizPinField = new JTextField(10);
        JButton joinButton = new JButton("JOIN");
        quizPinPanel.add(new JLabel("Quiz PIN: "));
        quizPinPanel.add(quizPinField);
        quizPinPanel.add(joinButton);
        welcomePanel.add(quizPinPanel, BorderLayout.CENTER);

        mainPanel.add(welcomePanel, BorderLayout.CENTER);

        // Quiz categories panel (two rows)
        JPanel categoriesPanel = createQuizRows();  // Panel with two rows of quiz cards
        mainPanel.add(categoriesPanel, BorderLayout.SOUTH);

        // Event listeners
        joinButton.addActionListener(e -> {
            String pin = quizPinField.getText();
            JOptionPane.showMessageDialog(null, "Joining Quiz with PIN: " + pin);
        });

        settingsButton.addActionListener(e -> JOptionPane.showMessageDialog(null, "Opening settings..."));
        allQuizButton.addActionListener(e -> JOptionPane.showMessageDialog(null, "Showing all quizzes..."));

        // Load welcome message
        loadWelcomeMessage(userId);

        setVisible(true);
    }

    private JButton createIconButton(String imagePath) {
        try {
            ImageIcon icon = new ImageIcon(imagePath);
            Image image = icon.getImage().getScaledInstance(30, 30, Image.SCALE_SMOOTH);
            JButton button = new JButton(new ImageIcon(image));
            button.setContentAreaFilled(false);
            button.setBorderPainted(false);
            button.setFocusPainted(false);
            return button;
        } catch (Exception e) {
            e.printStackTrace();
            return new JButton("Profile");
        }
    }

    private void loadWelcomeMessage(String userId) {
        try (Connection conn = db_conn.getConnection()) {
            String query = "SELECT username FROM user WHERE user_ID = ?";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, userId);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                String username = rs.getString("username");
                welcomeLabel.setText("<html><div style='text-align: center;'>Hi " + username + ",<br>Welcome to Quizzio</div></html>");
            }
        } catch (Exception e) {
            e.printStackTrace();
            JOptionPane.showMessageDialog(this, "Error loading welcome message.", "Error", JOptionPane.ERROR_MESSAGE);
        }
    }

    private void loadQuizCategories(JPanel categoriesPanel, String difficulty) {
        try (Connection conn = db_conn.getConnection()) {
            String query = "SELECT Title, Difficulty, Image FROM quiz WHERE Difficulty = ?";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, difficulty);
            ResultSet rs = stmt.executeQuery();
            int count = 0;
            while (rs.next() && count < 5) {  // Limit to 5 quiz cards
                String title = rs.getString("Title");
                String difficultyText = rs.getString("Difficulty");
                String imagePath = rs.getString("Image");
                categoriesPanel.add(createQuizCard(title, difficultyText, imagePath));
                count++;
            }
        } catch (Exception e) {
            e.printStackTrace();
            JOptionPane.showMessageDialog(this, "Error loading quiz categories.", "Error", JOptionPane.ERROR_MESSAGE);
        }
    }

    private JPanel createQuizRows() {
        // Panel to hold both rows of quiz categories
        JPanel mainPanel = new JPanel();
        mainPanel.setLayout(new BoxLayout(mainPanel, BoxLayout.Y_AXIS));

        // Panel for the first row (Beginner difficulty)
        JPanel beginnerPanel = new JPanel(new GridLayout(1, 5, 10, 10));  // Display 5 cards in a row
        beginnerPanel.setOpaque(false);
        loadQuizCategories(beginnerPanel, "Beginner"); // Fetch "Beginner" quizzes

        // Panel for the second row (Intermediate difficulty)
        JPanel intermediatePanel = new JPanel(new GridLayout(1, 5, 10, 10));  // Display 5 cards in a row
        intermediatePanel.setOpaque(false);
        loadQuizCategories(intermediatePanel, "Intermediate"); // Fetch "Intermediate" quizzes

        // Add both panels to the main panel (two rows)
        mainPanel.add(beginnerPanel);
        mainPanel.add(Box.createVerticalStrut(20));  // Add some space between rows
        mainPanel.add(intermediatePanel);

        return mainPanel;
    }

    private JPanel createQuizCard(String title, String difficulty, String imagePath) {
        JPanel cardPanel = new JPanel();
        cardPanel.setLayout(new BoxLayout(cardPanel, BoxLayout.Y_AXIS));
        cardPanel.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));
        
        // Set a fixed size for each card
        cardPanel.setPreferredSize(new Dimension(150, 200));  // Adjust size here
        cardPanel.setMaximumSize(new Dimension(150, 200));    // Optional: Maximum size
        cardPanel.setMinimumSize(new Dimension(150, 200));    // Optional: Minimum size
 
        // Generate a rainbow color for the background
        Color rainbowColor = getRainbowColor();
        cardPanel.setBackground(rainbowColor);  // Apply the rainbow color

        // Title label
        JLabel titleLabel = new JLabel(title);
        titleLabel.setFont(new Font("Arial", Font.BOLD, 16));
        titleLabel.setAlignmentX(Component.CENTER_ALIGNMENT);

        // Difficulty label
        JLabel difficultyLabel = new JLabel("Difficulty: " + difficulty);
        difficultyLabel.setFont(new Font("Arial", Font.PLAIN, 14));
        difficultyLabel.setAlignmentX(Component.CENTER_ALIGNMENT);

        // Load the quiz category image
        JLabel imageLabel;
        try {
            // Load image dynamically based on the image path from the database
            ImageIcon icon = new ImageIcon(getClass().getResource(imagePath)); // Adjust if using file path
            Image image = icon.getImage().getScaledInstance(80, 80, Image.SCALE_SMOOTH); // Scale image
            imageLabel = new JLabel(new ImageIcon(image));
        } catch (Exception e) {
            imageLabel = new JLabel("No Image");
            System.out.println("Error loading image: " + imagePath);  // Debugging
        }
        imageLabel.setAlignmentX(Component.CENTER_ALIGNMENT);

        // Play button with play icon
        JButton playButton = new JButton();
        playButton.setAlignmentX(Component.CENTER_ALIGNMENT);

        try {
            // Load the play-icon image
            ImageIcon playIcon = new ImageIcon(getClass().getResource("/Images/play-icon.png"));  // Correct path
            Image playImage = playIcon.getImage(); // Get the original image
            Image scaledPlayImage = playImage.getScaledInstance(80, 40, Image.SCALE_SMOOTH); // Scale image (resize)
            playIcon = new ImageIcon(scaledPlayImage); // Create a new ImageIcon with the scaled image

            // Set the play icon to the button
            playButton.setIcon(playIcon);
            playButton.setContentAreaFilled(false);  // Makes button background transparent
            playButton.setBorderPainted(false);  // Removes border
            playButton.setFocusPainted(false);   // Removes focus highlight

            playButton.addActionListener(e -> JOptionPane.showMessageDialog(null, "Starting " + title + " Quiz!"));
        } catch (Exception e) {
            e.printStackTrace();
            playButton.setText("Play");  // Fallback if icon is not loaded
        }

        // Add the components to the card panel
        cardPanel.add(titleLabel);
        cardPanel.add(Box.createVerticalStrut(10));
        cardPanel.add(imageLabel);
        cardPanel.add(Box.createVerticalStrut(10));
        cardPanel.add(difficultyLabel);
        cardPanel.add(Box.createVerticalStrut(10));
        cardPanel.add(playButton);

        return cardPanel;
    }

    private Color getRainbowColor() {
        // Define an array of rainbow colors
        Color[] rainbowColors = {
            new Color(255, 102, 102),   // Red
            new Color(255, 178, 102),   // Orange
            new Color(255, 255, 102),   // Yellow
            new Color(178, 255, 102),   // Green
            new Color(102, 255, 178),   // Mint
            new Color(102, 178, 255),   // Blue
            new Color(178, 102, 255),  // Indigo
            new Color(255, 102, 255) // Violet
        };

        // Return a color from the rainbowColors array
        // You can randomly select one or cycle through them
        int index = (int) (Math.random() * rainbowColors.length);  // Randomly select an index
        return rainbowColors[index];
    }

    private class BackgroundPanel extends JPanel {
        @Override
        protected void paintComponent(Graphics g) {
            super.paintComponent(g);
            if (backgroundImage != null) {
                g.drawImage(backgroundImage, 0, 0, getWidth(), getHeight(), this);
            }
        }
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> new QuizzioDashboard("1")); // Replace "1" with actual user ID
    }
}
