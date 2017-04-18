Feature: Add a new forum post
  
  As a poster
  So that I can add a new forum post
  I want to be able to add a new forum post
  
  
Scenario: As a blogger I want to be able to navigate to the All forum list
  Given I am on the home page
  When I click on the "All" link
  Then I should be on the "Listing Groups: All" page
  When I click on the "Register a Group Ad" link
  Then I should be on the "Register a Group" page
  And I should see the "Groupname" field
  And I should see the "Numberneeded" field
  And I should see the "Numbertotal" field
  And I should see the "Category" field
  And I should see the "Description" field