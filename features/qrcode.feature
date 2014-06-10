Feature: QR code
  So that I can generate a qrcode with the message
  As a qrcode-user
  I want to enter a funny message
  
  Scenario: generate a qrcode
    When a funny message "hello" is entered
    And qrcode-user hit the button "submit"
    Then the page should show the result qrcode on the screen
    And the page should say "Your QR code is created successfully."
