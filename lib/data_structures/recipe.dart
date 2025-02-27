class Recipe {
  String label;
  String imageUrl;
  //TODO: Add servings and ingredients here
  int servings;
  List<Ingredient> ingredients;
  Recipe(
    this.label,
    this.imageUrl,
    this.servings,
    this.ingredients,
  );
  //TODO: Add List<Recipe> here
  static List<Recipe> samples = [
    Recipe(
      "pepperoni",
      "assets/pepperoni.jpg",
      4,
      [
        Ingredient(1, "box", "Spaghetti"),
        Ingredient(4, "", "Frozen Meatballs"),
        Ingredient(0.5, "jar", "sauce")
      ],
    ),
    Recipe(
        "Hawaiian (ham & pineapple)",
        "assets/hawaiian (ham & pinnneaple).jpg",
        2,
        [
          Ingredient(1, 'item', 'pizza',),
          Ingredient(1, 'cup', 'pineapple',),
          Ingredient(8, 'oz', 'ham',)
        ]),
    Recipe(
        "Margherita",
        "assets/margherita.jpg",
      1,
      [
        Ingredient(2, 'slices', 'Cheese',),
        Ingredient(2, 'slices', 'Bread',),
      ]
    ),
    Recipe(
        "Garlic cheese pizza",
        "assets/garlic cheese pizza.jpg",
      24,
      [
      Ingredient(4, 'cups', 'flour',),
      Ingredient(2, 'cups', 'sugar',),
      Ingredient(0.5, 'cups', 'chocolate chips',),
      ]
    ),
    Recipe(
        "Garlic butter prawns and chilli",
        "assets/garlic butter prawns and chilli.jpg",
      1,
      [
        Ingredient(4, 'oz', 'nachos',),
        Ingredient(3, 'oz', 'taco meat',),
        Ingredient(0.5, 'cup', 'cheese',),
        Ingredient(0.25, 'cup', 'chopped tomatoes',),
      ]
    ),
    Recipe(
        "Bbq meat lovers",
        "assets/bbq meatlovers.jpg",
      4,
      [
        Ingredient(1, "can", "Tomato Soup")
      ]
    )
  ];
}

//TODO: Add ingredients class here
class Ingredient {
  double quantity;
  String measure;
  String name;
  Ingredient(
    this.quantity,
    this.measure,
    this.name,
  );
}
