Feature: --disable-knapsack-output
  Rule: it should disable outputting of the knapsack
    Background:
      Given a file named "cypress/integration/a.js" with:
        """
        it("should pass", () => expect(true).to.be.true);
        """

    Scenario:
      Given I run cypress-parallel with "--node 1:1 --disable-knapsack-output"
      Then it passes
      # IE. no changes
      And I should see a file "knapsack.json" with content:
        """
        {}
        """