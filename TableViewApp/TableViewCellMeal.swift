//
//  TableViewCellMeal.swift
//  TableViewApp
//
//  Created by Delil Güç on 11.04.2023.
//

import UIKit
protocol TableViewCellMealProtocol {
    // create protocol class
    
    func PlaceOrder (indexPath:IndexPath) // create func for triggering the button action
}


class TableViewCellMeal: UITableViewCell {

    
    
    @IBOutlet weak var Price: UILabel! // define label
    @IBOutlet weak var Meal: UILabel! // define label
    @IBOutlet weak var ImageView: UIImageView! // define imageview
    
    /*
     cellprotocol: A variable of type TableViewCellMealProtocol protocol. This variable can hold any instance of a class that implements the TableViewCellMealProtocol protocol. This variable is typically used to handle a custom view in a TableView cell.

     indexpath: A variable of type IndexPath class. This variable is used to determine the position of a cell in a TableView. IndexPath contains section and row numbers to indicate a specific cell in the TableView. This variable is typically used to handle a cell in a TableView.
     */
    var cellprotocol:TableViewCellMealProtocol?
    var indexpath:IndexPath?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
   
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func Order(_ sender: Any) {
        cellprotocol?.PlaceOrder(indexPath: indexpath!) // triggered
    }

}
