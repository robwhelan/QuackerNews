Feature: List Posts

Scenario: 2 Posts

Given I have a post titled "foo"
And I have a post titled "bar"
When I visit the home page
Then I should see "foo"
And I should see "bar"