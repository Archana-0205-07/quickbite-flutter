import '../models/models.dart';

final List<Category> dummyCategories = [
  Category(id: 'c1', name: 'Burgers', icon: '🍔'),
  Category(id: 'c2', name: 'Pizza', icon: '🍕'),
  Category(id: 'c3', name: 'Healthy', icon: '🥗'),
  Category(id: 'c4', name: 'Desserts', icon: '🍰'),
  Category(id: 'c5', name: 'Asian', icon: '🍜'),
  Category(id: 'c6', name: 'Drinks', icon: '🥤'),
];

final List<String> _burgerImgs = [
  'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=400',
  'https://images.unsplash.com/photo-1586816001966-79b736744398?w=400',
  'https://images.unsplash.com/photo-1594212202884-2a1f26f2a245?w=400',
];

final List<String> _pizzaImgs = [
  'https://images.unsplash.com/photo-1574071318508-1cdbab80d002?w=400',
  'https://images.unsplash.com/photo-1604382354936-07c5d9983bd3?w=400',
  'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=400',
];

final List<String> _healthyImgs = [
  'https://images.unsplash.com/photo-1550304943-4f24f54ddde9?w=400',
  'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=400',
];

final List<String> _dessertImgs = [
  'https://images.unsplash.com/photo-1624353365286-3f8d62daad51?w=400',
  'https://images.unsplash.com/photo-1551024506-0cb4a1cb1c26?w=400',
];

final List<String> _asianImgs = [
  'https://images.unsplash.com/photo-1569718212165-3a8278d5f624?w=400',
  'https://images.unsplash.com/photo-1552611052-33e04de081de?w=400',
];

final List<String> _drinkImgs = [
  'https://images.unsplash.com/photo-1513558161293-cdaf765ed2fd?w=400',
  'https://images.unsplash.com/photo-1544145945-f90425340c7e?w=400',
];

// Dynamically generate 50+ diverse food items for a realistic showcase
final List<FoodItem> dummyFoods = List.generate(60, (index) {
  final id = 'f$index';
  String name = '';
  String categoryId = '';
  String img = '';
  bool isVeg = false;
  double basePrice = 5.0 + (index % 10);
  
  if (index < 12) {
    categoryId = 'c1'; // Burgers
    final variants = ['Classic', 'Spicy', 'Double', 'Vegan', 'BBQ', 'Cheese', 'Mushroom', 'Bacon', 'Tex-Mex', 'Gourmet', 'Mini', 'Monster'];
    name = '${variants[index]} Burger';
    img = _burgerImgs[index % _burgerImgs.length];
    isVeg = name.contains('Vegan') || name.contains('Mushroom');
  } else if (index < 24) {
    categoryId = 'c2'; // Pizza
    final variants = ['Margherita', 'Pepperoni', 'BBQ Chicken', 'Hawaiian', 'Veggie Supreme', 'Meat Lovers', 'Four Cheese', 'Mushroom', 'Buffalo', 'Spinach', 'Garlic', 'Truffle'];
    name = '${variants[index - 12]} Pizza';
    img = _pizzaImgs[index % _pizzaImgs.length];
    isVeg = ['Margherita', 'Veggie Supreme', 'Four Cheese', 'Mushroom', 'Spinach', 'Garlic', 'Truffle'].contains(variants[index - 12]);
    basePrice += 4;
  } else if (index < 34) {
    categoryId = 'c3'; // Healthy
    final variants = ['Caesar', 'Greek', 'Quinoa', 'Avocado', 'Tofu', 'Keto', 'Protein', 'Kale', 'Green', 'Detox'];
    name = '${variants[index - 24]} Bowl';
    img = _healthyImgs[index % _healthyImgs.length];
    isVeg = true;
  } else if (index < 42) {
    categoryId = 'c4'; // Desserts
    final variants = ['Lava Cake', 'Cheesecake', 'Brownie', 'Ice Cream', 'Tiramisu', 'Donut', 'Waffle', 'Pancake'];
    name = 'Sweet ${variants[index - 34]}';
    img = _dessertImgs[index % _dessertImgs.length];
    isVeg = true;
    basePrice -= 2;
  } else if (index < 52) {
    categoryId = 'c5'; // Asian
    final variants = ['Ramen', 'Sushi', 'Pad Thai', 'Fried Rice', 'Dumplings', 'Spring Rolls', 'Udon', 'Teriyaki', 'Curry', 'Pho'];
    name = 'Authentic ${variants[index - 42]}';
    img = _asianImgs[index % _asianImgs.length];
    isVeg = ['Spring Rolls', 'Tofu', 'Vegetable'].contains(variants[index - 42]);
  } else {
    categoryId = 'c6'; // Drinks
    final variants = ['Cola', 'Lemonade', 'Iced Tea', 'Mojito', 'Smoothie', 'Milkshake', 'Cold Brew', 'Matcha'];
    name = 'Fresh ${variants[index - 52]}';
    img = _drinkImgs[index % _drinkImgs.length];
    isVeg = true;
    basePrice = 3.99;
  }

  return FoodItem(
    id: id,
    name: name,
    description: 'A delicious and highly recommended $name made with premium ingredients. Perfect for your cravings! Prepared fresh to order.',
    price: basePrice + (index % 5) * 0.5,
    categoryId: categoryId,
    imageUrl: img,
    rating: 4.0 + (index % 10) / 10,
    isVegetarian: isVeg,
  );
});
