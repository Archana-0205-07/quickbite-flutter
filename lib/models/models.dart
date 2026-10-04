class FoodItem {
  final String id;
  final String name;
  final String description;
  final double price;
  final String categoryId;
  final String imageUrl;
  final double rating;
  final bool isVegetarian;

  FoodItem({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.categoryId,
    required this.imageUrl,
    required this.rating,
    required this.isVegetarian,
  });
}

class Category {
  final String id;
  final String name;
  final String icon;

  Category({required this.id, required this.name, required this.icon});
}

class CartItem {
  final String id;
  final FoodItem food;
  int quantity;

  CartItem({required this.id, required this.food, this.quantity = 1});
}

class Order {
  final String id;
  final List<CartItem> items;
  final double totalAmount;
  final DateTime date;
  final String status; // Confirmed, Preparing, Out for Delivery, Delivered

  Order({
    required this.id,
    required this.items,
    required this.totalAmount,
    required this.date,
    required this.status,
  });
}
