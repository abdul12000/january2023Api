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
      | 4  | alias odio sit                             | Lew@alysha.tv           |
      | 20 | molestias expedita iste aliquid voluptates | Mariana_Orn@preston.org |



  Scenario Outline:  Create a Comment
    Given JsonPlaceHolder service is up and running
    When I create a new comment with "<postId>", "<name>", "<email>" and "<body>"
    Then details with "<postId>", "<name>", "<email>" and "<body>" are returned with status code of 201
    Examples:
      | postId | name              | email                      | body                       |
      | 1000   | Lateef Abdulsalam | Abdulsalam1220@gardner.biz | I like this post           |
      | 20     | Lateef Nnena      | Nnena0@gardner.biz         | I like this post very well |
      | 80     | Alero Abdulsalam  | Alero@gardner.biz          | I like the holiday         |