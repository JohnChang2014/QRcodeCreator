Feature: welcome page
  So that I can start to generate a qrcode
  As a qrcode-user
  I want to visit welcome page of QR code generator
  
  Scenario: shows welcome page to users
    When users visit the welcome page of QR code generator
    Then the page should say "Welcome to QR code generator"
    And the page should have a text title of "Please enter any message for your QR code below:"
    And the page should have a form for users to enter any message
