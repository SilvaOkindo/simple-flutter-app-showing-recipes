class Recipe {
  String label;
  String imageUrl;

  Recipe(
      this.label,
      this.imageUrl,
      this.servings,
      this.ingredient
      );
// TODO: Add List<Recipe> here
  int servings;
  List<Ingredient> ingredient;
  static List<Recipe> samples = [
    Recipe(
        "Spaghetti",
        "images/2126711929_ef763de2b3_w.jpg",
        4,
        [
          Ingredient(1, 'box', 'Spaghetti',),
          Ingredient(4, '', 'Frozen Meatballs',),
          Ingredient(0.5, 'jar', 'sauce',),
        ]
    ),
    Recipe(
        "Tomato Soup",
        "images/27729023535_a57606c1be.jpg",
        2,
        [
          Ingredient(1, 'can', 'Sauce',),

        ]
    ),
    Recipe(
        "Grilled Cheese",
        "images/8533381643_a31a99e8a6_c.jpg",
        2,
        [
          Ingredient(2, 'slices', 'Cheese',),
          Ingredient(2, 'slices', 'Bread',),
        ]
    ),
    Recipe(
        "Chocolate Chip Cookies",
        "images/15992102771_b92f4cc00a_b.jpg",
        24,
        [
        Ingredient(4, 'cups', 'flour',),
        Ingredient(2, 'cups', 'sugar',),
        Ingredient(0.5, 'cups', 'chocolate chips')
        ]
    ),
    Recipe(
        "Taco Salad",
        "images/8533381643_a31a99e8a6_c.jpg",
      2,
        [
        Ingredient(4, 'oz', 'nachos',),
        Ingredient(3, 'oz', 'taco meat',),
        Ingredient(0.5, 'cup', 'cheese',),
      Ingredient(0.25, 'cup', 'chopped tomatoes')
     ],
    ),
    Recipe(
      'Hawaiian Pizza',
      'images/15452035777_294cefced5_c.jpg',
      4,
      [
        Ingredient(1, 'item', 'pizza',),
        Ingredient(1, 'cup', 'pineapple',),
        Ingredient(8, 'oz', 'ham',),
      ],
    ),
  ];
}

// TODO: Add Ingredient() here


class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(
      this.quantity,
      this.measure,
      this.name
      );
}