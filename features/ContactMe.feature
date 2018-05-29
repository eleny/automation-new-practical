Feature: Contact me

  Scenario: @contact
    Given I navigate to Contact me page
    When I login with "admin" username and "admin" password
    When I verify the Contact Me page loaded
    Then I write my comment "Hello world!"
    Then I click on Post Comment button