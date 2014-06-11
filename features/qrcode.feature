Feature: QR code
  So that I can generate a qrcode with the message
  As a qrcode-user
  I want to enter a funny message
  
  Scenario: generate a qrcode
    Given I am at the welcome page
    And I fill in "message" with "hello"
    When I hit the button "submit"
    Then the page should show the result qrcode on the screen
    And the page should say "Your QR code is created successfully."
