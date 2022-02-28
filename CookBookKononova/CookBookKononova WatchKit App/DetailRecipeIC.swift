//
//  DetailRecipeIC.swift
//  CookBookKononova WatchKit Extension
//
//  Created by Student on 28.02.2022.
//

import WatchKit
import Foundation


class DetailRecipeIC: WKInterfaceController {
    
//    @IBOutlet weak var iconRecipe: WKInterfaceImage!
    @IBOutlet weak var nameRecipe: WKInterfaceLabel!
    @IBOutlet weak var imageRecipe: WKInterfaceImage!
    @IBOutlet weak var authorRecipe: WKInterfaceLabel!
    @IBOutlet weak var textRecipe: WKInterfaceLabel!
    @IBOutlet weak var ratingRecipe: WKInterfaceSlider!
    
    var recipe: Recipes!
    
    @IBAction func changeRating(_ value: Float) {
    }
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        if let item = context as? Recipes {
            self.recipe = item
//            iconRecipe.setImageNamed(item.recipeIcon)
            nameRecipe.setText(item.recipeName)
            imageRecipe.setImageNamed(item.recipeImage)
            authorRecipe.setText(item.recipeAuthor)
            textRecipe.setText(item.recipeText)
            ratingRecipe.setValue(Float(item.recipeRating))
        
        }
        
        // Configure interface objects here.
    }

    override func contextForSegue(withIdentifier segueIdentifier: String) -> Any? {
        return recipe.recipeText
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
