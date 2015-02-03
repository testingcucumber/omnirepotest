Feature: My website registration

  Visitors can join our website by registering. They must fill in
  their email address and a password to do so.

  Scenario: Successful registration
    Given I am a visitor
    When I register with valid credentials
    Then I should get a registration confirmation
    And I should receive an email containing the following text:
      """
      Hi,

      Thank you for registering on our website. You can now
      use all our services 24/7.
      """
