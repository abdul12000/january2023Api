@JPlaceholder2
Feature: JsonPlaceHolder

  @JPlaceholder
  Scenario Outline:  Get specific comment
    Given JsonPlaceHolder service is up and running
    When Get request is sent to get a specific comment with "<id>"
    Then specific comment details with "<id>", "<name>", "<email>" is returned with status code of 200
    Examples:
      | id | name                                       | email                   |
      | 3  | odio adipisci rerum aut animi              | Nikita@garfield.biz     |
      | 4  | alias odio sit                             | Lew@alysha.tv