//
//  ViewController.swift
//  TableViewApp
//
//  Created by Delil Güç on 11.04.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var MealTableview: UITableView!
    var ListMeals = [Meals]() // create list array
    override func viewDidLoad() {
        super.viewDidLoad()
        // create objects
        let y1 = Meals(mealId: 1, mealName: "Ayran", mealImage: "ayran", mealPrice: 9.90)
        let y2 = Meals(mealId: 1, mealName: "Baklava", mealImage: "baklava", mealPrice: 5.90)
        let y3 = Meals(mealId: 1, mealName: "Fanta", mealImage: "fanta", mealPrice: 1.90)
        let y4 = Meals(mealId: 1, mealName: "Grilled Salmon", mealImage: "izgarasomon", mealPrice: 14.90)
        let y5 = Meals(mealId: 1, mealName: "Grilled Chicken", mealImage: "izgaratavuk", mealPrice: 12.90)
        let y6 = Meals(mealId: 1, mealName: "Kadayıf", mealImage: "kadayif", mealPrice: 9.90)
        let y7 = Meals(mealId: 1, mealName: "Coffee", mealImage: "kahve", mealPrice: 3.90)
        let y8 = Meals(mealId: 1, mealName: "Meatballs", mealImage: "kofte", mealPrice: 9.90)
        let y9 = Meals(mealId: 1, mealName: "Lazania", mealImage: "lazanya", mealPrice: 8.90)
        let y10 = Meals(mealId: 1, mealName: "Pasta", mealImage: "makarna", mealPrice: 11.90)
        let y11 = Meals(mealId: 1, mealName: "Pizza", mealImage: "pizza", mealPrice: 5.90)
        let y12 = Meals(mealId: 1, mealName: "Water", mealImage: "su", mealPrice: 0.90)
        let y13 = Meals(mealId: 1, mealName: "Sutlac", mealImage: "sutlac", mealPrice: 4.90)
        let y14 = Meals(mealId: 1, mealName: "Tiramisu", mealImage: "tiramisu", mealPrice: 4.90)
        // objects adding to list
        ListMeals.append(y1)
        ListMeals.append(y2)
        ListMeals.append(y3)
        ListMeals.append(y4)
        ListMeals.append(y5)
        ListMeals.append(y6)
        ListMeals.append(y7)
        ListMeals.append(y8)
        ListMeals.append(y9)
        ListMeals.append(y10)
        ListMeals.append(y11)
        ListMeals.append(y12)
        ListMeals.append(y13)
        ListMeals.append(y14)
        /*
         The dataSource and delegate properties determine how the TableView displays data and handles user interactions. The dataSource property specifies the class that provides the data for the TableView, while the delegate property specifies the class that handles interactions in the TableView.

         Therefore, the statement MealTableview.dataSource = self indicates that the TableView will use this class as its data source, while the statement MealTableview.delegate = self specifies the class that will handle user interactions in the TableView.
         */
        MealTableview.dataSource = self
        MealTableview.delegate = self
        
    }


}
extension ViewController: UITableViewDelegate,UITableViewDataSource,TableViewCellMealProtocol{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func PlaceOrder(indexPath: IndexPath) {
        let data = ListMeals[indexPath.row]
        print("MEAL: \(data.mealName!) ----  REVENUE: \(data.mealPrice!) ") //print meal name and price
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ListMeals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = ListMeals[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "MealCell", for: indexPath) as! TableViewCellMeal // downcasting and using cell id
        cell.Meal.text = data.mealName!
        cell.Price.text = "\(data.mealPrice!) € "
        cell.ImageView.image = UIImage(named: "\(data.mealImage!)")
        cell.cellprotocol = self
        cell.indexpath = indexPath
        return cell
    }
    
    
}

