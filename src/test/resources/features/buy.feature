#6410406568 Nachpol Ruangnam
Feature: Buy products
    As a customer
    I want to buy products

Background:
    Given the store is ready to service customers
    And a product "Bread" with price 20.50 and stock of 5 exists
    And a product "Jam" with price 80.00 and stock of 10 exists
    And a product "Milk" with price 20.00 and stock of 10 exists

Scenario: Buy one product
    When I buy "Milk" with quantity 2
    Then total should be 40.00
    And stock "Milk" should be 8

Scenario: Buy multiple products
    When I buy "Bread" with quantity 2
    And I buy "Jam" with quantity 1
    And I buy "Milk" with quantity 2
    Then total should be 161.00
    And stock "Bread" should be 3
    And stock "Jam" should be 9
    And stock "Milk" should be 8

