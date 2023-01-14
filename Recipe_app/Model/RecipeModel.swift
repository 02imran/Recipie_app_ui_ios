//
//  RecipeModel.swift
//  Recipe_app
//
//  Created by md imran on 7/1/23.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case desert = "Desert"
    case snak = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingradients: String
    let direction: String
    let categories: Category.RawValue
    let datePublished: String
    let url: String
}


extension Recipe {
    static let all: [Recipe] = [
        Recipe(
            name: "Salad",
            image: "https://images.unsplash.com/photo-1518779578993-ec3579fee39f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80",
            description: "Fill a large pot with lightly salted water and bring to a rolling boil over high heat; stir in tortellini (in batches if necessary) and return to a boil. Cook uncovered, stirring occasionally, until the tortellini float to the top and the filling is hot, about 3 minutes.",
            ingradients: "1 (20 ounce) package refrigerated cheese tortellini",
            direction: "Scoop tortellini into a bowl with a slotted spoon. Drain water, reserving 1 cup of pasta water.",
            categories: "Soup",
            datePublished: "11-11-2023",
            url: "https://www.allrecipes.com/recipe/8522526/creamy-gochujang-tortellini/"
        ),
        Recipe(
            name: "Creamy Gochujang Tortellini",
            image: "https://images.unsplash.com/photo-1518779578993-ec3579fee39f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80",
            description: "Fill a large pot with lightly salted water and bring to a rolling boil over high heat; stir in tortellini (in batches if necessary) and return to a boil. Cook uncovered, stirring occasionally, until the tortellini float to the top and the filling is hot, about 3 minutes.",
            ingradients: "1 (20 ounce) package refrigerated cheese tortellini",
            direction: "Scoop tortellini into a bowl with a slotted spoon. Drain water, reserving 1 cup of pasta water.",
            categories: "Desert",
            datePublished: "11-11-2023",
            url: "https://www.allrecipes.com/recipe/8522526/creamy-gochujang-tortellini/"
        ),
        
        Recipe(
            name: "Creamy Gochujang Tortellini",
            image: "https://www.allrecipes.com/thmb/lgVDNZzeAKRUYiFZsZPEV7vctWg=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/16726858945C408F9A-A8D8-47F4-8C00-A2840B7AFF4F-2000-2ad7b7d0fb9f4a75ac35cb0df543299b.jpeg",
            description: "Fill a large pot with lightly salted water and bring to a rolling boil over high heat; stir in tortellini (in batches if necessary) and return to a boil. Cook uncovered, stirring occasionally, until the tortellini float to the top and the filling is hot, about 3 minutes.",
            ingradients: "1 (20 ounce) package refrigerated cheese tortellini",
            direction: "Scoop tortellini into a bowl with a slotted spoon. Drain water, reserving 1 cup of pasta water.",
            categories: "Desert",
            datePublished: "11-11-2023",
            url: "https://www.allrecipes.com/recipe/8522526/creamy-gochujang-tortellini/"
        ),
        
        
        Recipe(
            name: "Creamy Gochujang Tortellini",
            image: "https://www.allrecipes.com/thmb/lgVDNZzeAKRUYiFZsZPEV7vctWg=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/16726858945C408F9A-A8D8-47F4-8C00-A2840B7AFF4F-2000-2ad7b7d0fb9f4a75ac35cb0df543299b.jpeg",
            description: "Fill a large pot with lightly salted water and bring to a rolling boil over high heat; stir in tortellini (in batches if necessary) and return to a boil. Cook uncovered, stirring occasionally, until the tortellini float to the top and the filling is hot, about 3 minutes.",
            ingradients: "1 (20 ounce) package refrigerated cheese tortellini",
            direction: "Scoop tortellini into a bowl with a slotted spoon. Drain water, reserving 1 cup of pasta water.",
            categories: "Desert",
            datePublished: "11-11-2023",
            url: "https://www.allrecipes.com/recipe/8522526/creamy-gochujang-tortellini/"
        ),
        
        Recipe(
            name: "Creamy Gochujang Tortellini",
            image: "https://www.allrecipes.com/thmb/lgVDNZzeAKRUYiFZsZPEV7vctWg=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/16726858945C408F9A-A8D8-47F4-8C00-A2840B7AFF4F-2000-2ad7b7d0fb9f4a75ac35cb0df543299b.jpeg",
            description: "Fill a large pot with lightly salted water and bring to a rolling boil over high heat; stir in tortellini (in batches if necessary) and return to a boil. Cook uncovered, stirring occasionally, until the tortellini float to the top and the filling is hot, about 3 minutes.",
            ingradients: "1 (20 ounce) package refrigerated cheese tortellini",
            direction: "Scoop tortellini into a bowl with a slotted spoon. Drain water, reserving 1 cup of pasta water.",
            categories: "Desert",
            datePublished: "11-11-2023",
            url: "https://www.allrecipes.com/recipe/8522526/creamy-gochujang-tortellini/"
        ),
        
        Recipe(
            name: "Creamy Gochujang Tortellini",
            image: "https://www.allrecipes.com/thmb/lgVDNZzeAKRUYiFZsZPEV7vctWg=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/16726858945C408F9A-A8D8-47F4-8C00-A2840B7AFF4F-2000-2ad7b7d0fb9f4a75ac35cb0df543299b.jpeg",
            description: "Fill a large pot with lightly salted water and bring to a rolling boil over high heat; stir in tortellini (in batches if necessary) and return to a boil. Cook uncovered, stirring occasionally, until the tortellini float to the top and the filling is hot, about 3 minutes.",
            ingradients: "1 (20 ounce) package refrigerated cheese tortellini",
            direction: "Scoop tortellini into a bowl with a slotted spoon. Drain water, reserving 1 cup of pasta water.",
            categories: "Desert",
            datePublished: "11-11-2023",
            url: "https://www.allrecipes.com/recipe/8522526/creamy-gochujang-tortellini/"
        ),
        
        
        Recipe(
            name: "Creamy Gochujang Tortellini",
            image: "https://www.allrecipes.com/thmb/lgVDNZzeAKRUYiFZsZPEV7vctWg=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/16726858945C408F9A-A8D8-47F4-8C00-A2840B7AFF4F-2000-2ad7b7d0fb9f4a75ac35cb0df543299b.jpeg",
            description: "Fill a large pot with lightly salted water and bring to a rolling boil over high heat; stir in tortellini (in batches if necessary) and return to a boil. Cook uncovered, stirring occasionally, until the tortellini float to the top and the filling is hot, about 3 minutes.",
            ingradients: "1 (20 ounce) package refrigerated cheese tortellini",
            direction: "Scoop tortellini into a bowl with a slotted spoon. Drain water, reserving 1 cup of pasta water.",
            categories: "Desert",
            datePublished: "11-11-2023",
            url: "https://www.allrecipes.com/recipe/8522526/creamy-gochujang-tortellini/"
        )
    ]
}
