import 'package:menu_flutter/models/menu_item.dart';

/// this is the category class, it has a name which is
/// a type string, and a list of menuitems from the menuitems
/// class

class Category {
  Category({required String name, List<MenuItem>? menuItems})
      : _name = name,
        _menuItems = menuItems ?? [];

  String _name;
  List<MenuItem> _menuItems = [];

  // Getters
  String get name => _name;
  List<MenuItem> get menuItems => List.unmodifiable(_menuItems);

  // Methods to modify the category (these could be protected by auth later)
  void updateName(String newName) {
    _name = newName;
  }

  void addMenuItem(MenuItem item) {
    _menuItems.add(item);
  }

  void removeMenuItem(MenuItem item) {
    _menuItems.remove(item);
  }
}

// Dummy data
final List<Category> categories = [
  Category(
    name: "Appetizers",
    menuItems: [
      MenuItem(
          name: "Bruschetta",
          description: "Toasted bread with tomatoes, garlic, and basil",
          price: 7.99,
          images: ["bruschetta.jpg"]),
      MenuItem(
          name: "Mozzarella Sticks",
          description: "Breaded and fried mozzarella",
          price: 6.99,
          images: ["mozzarella_sticks.jpg"]),
      MenuItem(
          name: "Spinach Artichoke Dip",
          description: "Creamy dip with spinach and artichokes",
          price: 8.99,
          images: ["spinach_dip.jpg"]),
      MenuItem(
          name: "Chicken Wings",
          description: "Crispy wings with your choice of sauce",
          price: 9.99,
          images: ["chicken_wings.jpg"]),
      MenuItem(
          name: "Calamari",
          description: "Lightly breaded and fried squid rings",
          price: 10.99,
          images: ["calamari.jpg"]),
      MenuItem(
          name: "Nachos",
          description: "Tortilla chips with cheese, jalapeños, and salsa",
          price: 8.99,
          images: ["nachos.jpg"]),
    ],
  ),
  Category(
    name: "Main Courses",
    menuItems: [
      MenuItem(
          name: "Grilled Salmon",
          description: "Fresh salmon fillet with lemon butter sauce",
          price: 18.99,
          images: ["grilled_salmon.jpg"]),
      MenuItem(
          name: "Steak Frites",
          description: "Sirloin steak with crispy fries",
          price: 22.99,
          images: ["steak_frites.jpg"]),
      MenuItem(
          name: "Chicken Parmesan",
          description: "Breaded chicken with marinara and mozzarella",
          price: 16.99,
          images: ["chicken_parmesan.jpg"]),
      MenuItem(
          name: "Vegetable Stir Fry",
          description: "Mixed vegetables in a savory sauce",
          price: 14.99,
          images: ["veggie_stir_fry.jpg"]),
      MenuItem(
          name: "Lobster Ravioli",
          description: "Pasta filled with lobster in a creamy sauce",
          price: 24.99,
          images: ["lobster_ravioli.jpg"]),
      MenuItem(
          name: "BBQ Ribs",
          description: "Tender pork ribs with house BBQ sauce",
          price: 20.99,
          images: ["bbq_ribs.jpg"]),
    ],
  ),
  Category(
    name: "Salads",
    menuItems: [
      MenuItem(
          name: "Caesar Salad",
          description: "Romaine lettuce with Caesar dressing and croutons",
          price: 9.99,
          images: ["caesar_salad.jpg"]),
      MenuItem(
          name: "Greek Salad",
          description: "Mixed greens with feta, olives, and vinaigrette",
          price: 10.99,
          images: ["greek_salad.jpg"]),
      MenuItem(
          name: "Cobb Salad",
          description: "Lettuce with chicken, bacon, eggs, and blue cheese",
          price: 12.99,
          images: ["cobb_salad.jpg"]),
      MenuItem(
          name: "Spinach Salad",
          description: "Baby spinach with strawberries and balsamic",
          price: 10.99,
          images: ["spinach_salad.jpg"]),
      MenuItem(
          name: "Taco Salad",
          description: "Lettuce, ground beef, cheese in a tortilla bowl",
          price: 11.99,
          images: ["taco_salad.jpg"]),
      MenuItem(
          name: "Caprese Salad",
          description: "Tomatoes, mozzarella, and basil with balsamic glaze",
          price: 9.99,
          images: ["caprese_salad.jpg"]),
    ],
  ),
  Category(
    name: "Sandwiches",
    menuItems: [
      MenuItem(
          name: "Classic Club",
          description: "Turkey, bacon, lettuce, and tomato on toasted bread",
          price: 11.99,
          images: ["club_sandwich.jpg"]),
      MenuItem(
          name: "Philly Cheesesteak",
          description: "Sliced beef with melted cheese on a hoagie roll",
          price: 12.99,
          images: ["philly_cheesesteak.jpg"]),
      MenuItem(
          name: "Veggie Wrap",
          description: "Grilled vegetables and hummus in a wheat wrap",
          price: 9.99,
          images: ["veggie_wrap.jpg"]),
      MenuItem(
          name: "Reuben",
          description: "Corned beef, sauerkraut, and Swiss on rye bread",
          price: 13.99,
          images: ["reuben.jpg"]),
      MenuItem(
          name: "Grilled Chicken Sandwich",
          description: "Grilled chicken breast with avocado and bacon",
          price: 12.99,
          images: ["grilled_chicken_sandwich.jpg"]),
      MenuItem(
          name: "Tuna Melt",
          description: "Tuna salad with melted cheddar on sourdough",
          price: 10.99,
          images: ["tuna_melt.jpg"]),
    ],
  ),
  Category(
    name: "Pasta",
    menuItems: [
      MenuItem(
          name: "Spaghetti Carbonara",
          description: "Spaghetti with bacon, eggs, and parmesan",
          price: 14.99,
          images: ["spaghetti_carbonara.jpg"]),
      MenuItem(
          name: "Fettuccine Alfredo",
          description: "Fettuccine in a creamy parmesan sauce",
          price: 13.99,
          images: ["fettuccine_alfredo.jpg"]),
      MenuItem(
          name: "Penne Arrabbiata",
          description: "Penne in a spicy tomato sauce",
          price: 12.99,
          images: ["penne_arrabbiata.jpg"]),
      MenuItem(
          name: "Lasagna",
          description: "Layers of pasta, meat sauce, and cheese",
          price: 15.99,
          images: ["lasagna.jpg"]),
      MenuItem(
          name: "Shrimp Scampi",
          description: "Linguine with garlic butter shrimp",
          price: 17.99,
          images: ["shrimp_scampi.jpg"]),
      MenuItem(
          name: "Mushroom Risotto",
          description: "Creamy rice dish with assorted mushrooms",
          price: 14.99,
          images: ["mushroom_risotto.jpg"]),
    ],
  ),
  Category(
    name: "Desserts",
    menuItems: [
      MenuItem(
          name: "Chocolate Lava Cake",
          description: "Warm chocolate cake with a gooey center",
          price: 7.99,
          images: ["chocolate_lava_cake.jpg"]),
      MenuItem(
          name: "New York Cheesecake",
          description: "Classic creamy cheesecake with graham cracker crust",
          price: 8.99,
          images: ["ny_cheesecake.jpg"]),
      MenuItem(
          name: "Tiramisu",
          description: "Italian coffee-flavored dessert",
          price: 7.99,
          images: ["tiramisu.jpg"]),
      MenuItem(
          name: "Apple Pie",
          description: "Homemade pie with vanilla ice cream",
          price: 6.99,
          images: ["apple_pie.jpg"]),
      MenuItem(
          name: "Crème Brûlée",
          description: "Rich custard with caramelized sugar topping",
          price: 8.99,
          images: ["creme_brulee.jpg"]),
      MenuItem(
          name: "Fruit Sorbet",
          description: "Assorted flavors of refreshing sorbet",
          price: 5.99,
          images: ["fruit_sorbet.jpg"]),
    ],
  ),
  Category(
    name: "Beverages",
    menuItems: [
      MenuItem(
          name: "Fresh Lemonade",
          description: "Homemade lemonade with mint",
          price: 3.99,
          images: ["lemonade.jpg"]),
      MenuItem(
          name: "Iced Tea",
          description: "Freshly brewed and chilled",
          price: 2.99,
          images: ["iced_tea.jpg"]),
      MenuItem(
          name: "Cappuccino",
          description: "Espresso with steamed milk and foam",
          price: 4.99,
          images: ["cappuccino.jpg"]),
      MenuItem(
          name: "Smoothie",
          description: "Blended fruit smoothie of the day",
          price: 5.99,
          images: ["smoothie.jpg"]),
      MenuItem(
          name: "Craft Beer",
          description: "Selection of local craft beers",
          price: 6.99,
          images: ["craft_beer.jpg"]),
      MenuItem(
          name: "Red Wine",
          description: "House red wine by the glass",
          price: 7.99,
          images: ["red_wine.jpg"]),
    ],
  ),
];
