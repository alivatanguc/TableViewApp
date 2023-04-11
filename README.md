# TableViewApp

This code is an iOS application for a food ordering app that contains a TableView. The TableView contains a list of meals to be displayed and allows the user to select and order a meal.

The Meals.swift file defines a Meals class that includes meal properties such as meal name, meal image, and meal price.

The TableViewCellMeal.swift file defines the TableViewCellMeal class and includes the meal information that will be displayed in each cell of the TableView. It also includes an "Order Now" button that allows the user to place an order.

The ViewController.swift file defines the ViewController class and creates a list of meals using the Meals class mentioned above. It also sets the TableView as its data source and delegate and implements a TableViewCellMealProtocol protocol that listens for when the order now button on each cell is clicked.



