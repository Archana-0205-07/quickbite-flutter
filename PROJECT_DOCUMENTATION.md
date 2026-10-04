# QuickBite – Smart Food Ordering App

## Project Objective
This is a Flutter laboratory project designed to demonstrate a functional, professional-looking food ordering application using core Flutter concepts. It avoids external backend dependencies by utilizing local state management and mock data, making it perfectly suited for beginner learning and lab demonstrations.

## Main Features
* **Splash Screen:** Animated splash screen.
* **Home Screen:** Food categories, popular items, search, and veg/non-veg filter.
* **Product Details:** Detailed view of food items, ratings, and Add to Cart.
* **Cart Management:** Adjust quantities, view subtotal, delivery fee, and total.
* **Checkout & Mock Payment:** Form validation for address/phone and order placement.
* **Order History:** Tracking past orders with an expandable list view.
* **Favorites:** Toggle favorite foods using a Provider.
* **Theming:** Toggle between Light and Dark mode.

## Flutter/Dart Concepts Used
* `StatelessWidget` and `StatefulWidget`
* **Navigation:** MaterialPageRoute and BottomNavigationBar.
* **State Management:** `provider` package (CartProvider, OrderProvider, FavoriteProvider, ThemeProvider).
* **Forms & Validation:** `GlobalKey<FormState>`, `TextFormField`.
* **Lists:** `ListView.builder`, `ExpansionTile`.
* **Animations:** `AnimationController`, `FadeTransition`.
* **Themes:** `ThemeData`, `ColorScheme`, Dark Mode.

## Project Architecture & Folder Structure
```
lib/
 ├── data/
 │    └── dummy_data.dart        # Mock foods and categories
 ├── models/
 │    └── models.dart            # Data models (FoodItem, CartItem, Order, Category)
 ├── providers/
 │    └── app_providers.dart     # State management logic
 ├── screens/
 │    ├── cart_screen.dart       # Cart UI
 │    ├── checkout_screen.dart   # Checkout form and success dialog
 │    ├── food_detail_screen.dart# Food details UI
 │    ├── home_screen.dart       # Main dashboard UI
 │    ├── order_history_screen.dart # Past orders UI
 │    └── splash_screen.dart     # Initial loading screen
 └── main.dart                   # Entry point and MultiProvider setup
```

## State Management Approach
The app uses the `provider` package. Models mixed with `ChangeNotifier` are injected into the top of the widget tree in `main.dart` using `MultiProvider`. Widgets read or listen to these providers using `Provider.of<T>(context)` or Consumer widgets.

## Installation & Setup Instructions
1. **Ensure Flutter is installed:** Run `flutter doctor` in your terminal to ensure you have Flutter and the SDKs configured. (Note: In the current environment, Flutter was not detected in PATH, so please install the Flutter SDK and restart your terminal).
2. **Navigate to the folder:** Open terminal and cd into the `quick_bite` folder.
3. **Get Packages:** Run `flutter pub get` to download dependencies like `provider`, `uuid`, etc.
4. **Run the App:** 
   * To run on Chrome: `flutter run -d chrome`
   * To run on Emulator: `flutter run` (Ensure emulator is running)

## Current Implementation Status
* **Setup Complete:** Basic structure, dummy data, models, and providers are fully implemented.
* **UI Complete:** Splash, Home, Details, Cart, Checkout, and Orders screens are implemented.
* **To-Do:** Add actual local storage (e.g., `shared_preferences`) if data persistence across app restarts is required. Currently, state persists during the session in memory.

## How to add new food items
Open `lib/data/dummy_data.dart` and add a new `FoodItem` object to the `dummyFoods` list. Provide a valid image URL, name, price, categoryId, etc.

## How to modify the theme
Open `lib/main.dart` and adjust the `ThemeData` block (e.g. changing `primarySwatch` or `scaffoldBackgroundColor`).
