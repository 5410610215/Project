Feature: Add the problem to Problempedia
 
  As an Admin
  So that I can share the problem with either employees
  I want to add the problem to Problempedia

Background: problem have been added to database
  
  Given the following problem exist:
  | topic    | priority | release_date | department | status |               detail                |
  | LAN      |    2     | 5-Jan-2014   | HR         |   0    | Lan cable is broken                 |
  | Internet |    2     | 21-Jul-2014  | Engineer   |   1    | I can't use Internet                |
  | Printer  |    5     | 10-Aug-2014  | Manager    |   0    | Printer says ink cartridge is empty |
 


  And I am on the Problempedia home page

Scenario: Add a new problem
Given I am on home page
When I press "add the problem"
Then I should be on add a new problem page
And I fill in "topic" with "Blue screen"
And I select "0" from "priority"
And I fill in "priority" with "1"
And I fill in "department" with "Accounting"
And I fill in "detail" with "Error405 x00001"
And I press "Add Data"
Then I should be on the unsolved problem
And I should see "Blue Screen" 


Scenario: sort movies in increasing order of release date
When I check the following ratings: G,R,PG-13,PG
And I press "Refresh"
When I follow "Release Date"
Then I should see "1968-04-06" before "1984-10-26"
