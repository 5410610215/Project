Feature : Show the unsolved problem

  As an everyone
  So that I can see the unsolved problem
  I want to see the unsolved problem

Background: Show the unsolved problem
  
  Given the following problem exist:
  | topic    | priority | release_date | department | status |               detail                |
  | LAN      |    2     | 5-Jan-2014   | HR         |   0    | Lan cable is broken                 |
  | Internet |    2     | 21-Jul-2014  | Engineer   |   1    | I can't use Internet                |
  | Printer  |    5     | 10-Aug-2014  | Manager    |   0    | Printer says ink cartridge is empty |



  And I am on the Problempedia home page

Scenario: Show the unsolved problem
Given I am on home page
When I press "Unsolved Problem"
Then I should be on the unsolved problem page
And I should see "LAN" and "Printer"
