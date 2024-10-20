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
          images: [
            "food1.jpg",
            "food3.jpg",
            "food14.jpg",
            'food6.jpg',
            'food19.jpg'
          ]),
      MenuItem(
          name: "Mozzarella Sticks",
          description: "Breaded and fried mozzarella",
          price: 6.99,
          images: ["food2.jpg", "food4.jpg", 'food16.jpg', 'food12.jpg']),
      MenuItem(
          name: "Spinach Artichoke Dip",
          description: "Creamy dip with spinach and artichokes",
          price: 8.99,
          images: [
            "food3.jpg",
            'food9.jpg',
            'food12.jpg',
            'food19.jpg',
            'food18.jpg',
            'food16.jpg'
          ]),
      MenuItem(
          name: "Chicken Wings",
          description: "Crispy wings with your choice of sauce",
          price: 9.99,
          images: [
            "food4.jpg",
            "food3.jpg",
            'food10.jpg',
            "food13.jpg",
            "food7.jpg",
            "food12.jpg",
          ]),
      MenuItem(
          name: "Calamari",
          description: "Lightly breaded and fried squid rings",
          price: 10.99,
          images: [
            "food5.jpg",
            'food11.jpg',
            'food12.jpg',
            'food13.jpg',
            'food17.jpg'
          ]),
      MenuItem(
          name: "Nachos",
          description: "Tortilla chips with cheese, jalapeños, and salsa",
          price: 8.99,
          images: [
            "food6.jpg",
            'food7.jpg',
            'food8.jpg',
            'food9.jpg',
            'food17.jpg'
          ]),
    ],
  ),
  Category(
    name: "Main Courses",
    menuItems: [
      MenuItem(
          name: "Grilled Salmon",
          description: "Fresh salmon fillet with lemon butter sauce",
          price: 18.99,
          images: [
            "food14.jpg",
            'food7.jpg',
            'food8.jpg',
            'food9.jpg',
            'food17.jpg'
          ]),
      MenuItem(
          name: "Steak Frites",
          description: "Sirloin steak with crispy fries",
          price: 22.99,
          images: [
            "food7.jpg",
            "food3.jpg",
            'food10.jpg',
            "food13.jpg",
          ]),
      MenuItem(
          name: "Chicken Parmesan",
          description: "Breaded chicken with marinara and mozzarella",
          price: 16.99,
          images: ["food8.jpg", "food4.jpg", 'food16.jpg', 'food12.jpg']),
      MenuItem(
          name: "Vegetable Stir Fry",
          description: "Mixed vegetables in a savory sauce",
          price: 14.99,
          images: [
            "food9.jpg",
            "food3.jpg",
            "food14.jpg",
            'food6.jpg',
          ]),
      MenuItem(
          name: "Lobster Ravioli",
          description: "Pasta filled with lobster in a creamy sauce",
          price: 24.99,
          images: [
            "food10.jpg",
            "food3.jpg",
            'food10.jpg',
            "food13.jpg",
          ]),
      MenuItem(
          name: "BBQ Ribs",
          description: "Tender pork ribs with house BBQ sauce",
          price: 20.99,
          images: [
            "food11.jpg",
            "food4.jpg",
            'food16.jpg',
            "food3.jpg",
            'food10.jpg',
          ]),
    ],
  ),
  Category(
    name: "Salads",
    menuItems: [
      MenuItem(
          name: "Caesar Salad",
          description: "Romaine lettuce with Caesar dressing and croutons",
          price: 9.99,
          images: ["food12.jpg", "food4.jpg", 'food16.jpg']),
      MenuItem(
          name: "Greek Salad",
          description: "Mixed greens with feta, olives, and vinaigrette",
          price: 10.99,
          images: [
            "food13.jpg",
            "food3.jpg",
            'food10.jpg',
          ]),
      MenuItem(
          name: "Cobb Salad",
          description: "Lettuce with chicken, bacon, eggs, and blue cheese",
          price: 12.99,
          images: ["food14.jpg", "food4.jpg", 'food16.jpg', "food3.jpg"]),
      MenuItem(
          name: "Spinach Salad",
          description: "Baby spinach with strawberries and balsamic",
          price: 10.99,
          images: ["food15.jpg"]),
      MenuItem(
          name: "Taco Salad",
          description: "Lettuce, ground beef, cheese in a tortilla bowl",
          price: 11.99,
          images: ["food16.jpg"]),
      MenuItem(
          name: "Caprese Salad",
          description: "Tomatoes, mozzarella, and basil with balsamic glaze",
          price: 9.99,
          images: ["food17.jpg"]),
    ],
  ),
  Category(
    name: "Sandwiches",
    menuItems: [
      MenuItem(
          name: "Classic Club",
          description: "Turkey, bacon, lettuce, and tomato on toasted bread",
          price: 11.99,
          images: ["food18.jpg", "food4.jpg", 'food16.jpg', "food3.jpg"]),
      MenuItem(
          name: "Philly Cheesesteak",
          description: "Sliced beef with melted cheese on a hoagie roll",
          price: 12.99,
          images: ["food19.jpg"]),
      MenuItem(
          name: "Veggie Wrap",
          description: "Grilled vegetables and hummus in a wheat wrap",
          price: 9.99,
          images: ["food20.jpg"]),
      MenuItem(
          name: "Reuben",
          description: "Corned beef, sauerkraut, and Swiss on rye bread",
          price: 13.99,
          images: ["food1.jpg"]),
      MenuItem(
          name: "Grilled Chicken Sandwich",
          description: "Grilled chicken breast with avocado and bacon",
          price: 12.99,
          images: ["food2.jpg"]),
      MenuItem(
          name: "Tuna Melt",
          description: "Tuna salad with melted cheddar on sourdough",
          price: 10.99,
          images: ["food3.jpg", "food4.jpg", 'food16.jpg', "food3.jpg"]),
    ],
  ),
  Category(
    name: "Pasta",
    menuItems: [
      MenuItem(
          name: "Spaghetti Carbonara",
          description: "Spaghetti with bacon, eggs, and parmesan",
          price: 14.99,
          images: ["food4.jpg"]),
      MenuItem(
          name: "Fettuccine Alfredo",
          description: "Fettuccine in a creamy parmesan sauce",
          price: 13.99,
          images: ["food5.jpg"]),
      MenuItem(
          name: "Penne Arrabbiata",
          description: "Penne in a spicy tomato sauce",
          price: 12.99,
          images: ["food6.jpg"]),
      MenuItem(
          name: "Lasagna",
          description: "Layers of pasta, meat sauce, and cheese",
          price: 15.99,
          images: ["food7.jpg"]),
      MenuItem(
          name: "Shrimp Scampi",
          description: "Linguine with garlic butter shrimp",
          price: 17.99,
          images: ["food8.jpg"]),
      MenuItem(
          name: "Mushroom Risotto",
          description: "Creamy rice dish with assorted mushrooms",
          price: 14.99,
          images: ["food9.jpg"]),
    ],
  ),
  Category(
    name: "Desserts",
    menuItems: [
      MenuItem(
          name: "Chocolate Lava Cake",
          description: "Warm chocolate cake with a gooey center",
          price: 7.99,
          images: ["food10.jpg"]),
      MenuItem(
          name: "New York Cheesecake",
          description: "Classic creamy cheesecake with graham cracker crust",
          price: 8.99,
          images: ["food11.jpg"]),
      MenuItem(
          name: "Tiramisu",
          description: "Italian coffee-flavored dessert",
          price: 7.99,
          images: ["food12.jpg"]),
      MenuItem(
          name: "Apple Pie",
          description: "Homemade pie with vanilla ice cream",
          price: 6.99,
          images: ["food13.jpg"]),
      MenuItem(
          name: "Crème Brûlée",
          description: "Rich custard with caramelized sugar topping",
          price: 8.99,
          images: ["food14.jpg"]),
      MenuItem(
          name: "Fruit Sorbet",
          description: "Assorted flavors of refreshing sorbet",
          price: 5.99,
          images: ["food15.jpg"]),
    ],
  ),
  Category(
    name: "Beverages",
    menuItems: [
      MenuItem(
          name: "Fresh Lemonade",
          description: "Homemade lemonade with mint",
          price: 3.99,
          images: ["food16.jpg"]),
      MenuItem(
          name: "Iced Tea",
          description: "Freshly brewed and chilled",
          price: 2.99,
          images: ["food17.jpg"]),
      MenuItem(
          name: "Cappuccino",
          description: "Espresso with steamed milk and foam",
          price: 4.99,
          images: ["food18.jpg"]),
      MenuItem(
          name: "Smoothie",
          description: "Blended fruit smoothie of the day",
          price: 5.99,
          images: ["food19.jpg"]),
      MenuItem(
          name: "Craft Beer",
          description: "Selection of local craft beers",
          price: 6.99,
          images: ["food20.jpg"]),
      MenuItem(
          name: "Red Wine",
          description: "House red wine by the glass",
          price: 7.99,
          images: [
            "food1.jpg",
            "food3.jpg",
            'food10.jpg',
          ]),
    ],
  ),
];
