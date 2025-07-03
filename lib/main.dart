// Flutter's material design library - provides UI components following Material Design
import 'package:flutter/material.dart';
// Custom router configuration for handling app navigation
import 'package:scroll_app/router/router.dart';

// main() function - Entry point of every Flutter application
// This is where the app execution begins
void main() {
  // runApp() - Takes a widget and makes it the root of the widget tree
  // This starts the Flutter framework and displays the app
  runApp(const MyApp());
}

// MyApp - Root widget of the application
// StatefulWidget is used because we need to manage state (router initialization)
// For simple apps without state management, StatelessWidget would suffice
class MyApp extends StatefulWidget {
  // Constructor with optional key parameter for widget identification
  // 'super.key' passes the key to the parent StatefulWidget class
  const MyApp({super.key});

  // createState() - Required method that creates the mutable state for this widget
  // The underscore prefix makes _MyAppState private to this library
  @override
  State<MyApp> createState() => _MyAppState();
}

// _MyAppState - The state class that contains the mutable state and build logic
class _MyAppState extends State<MyApp> {
  // initState() - Called once when the widget is first created
  // Perfect place for one-time initialization tasks
  @override
  void initState() {
    // Always call super.initState() first to ensure proper initialization
    super.initState();
    // Initialize the Fluro router with all route definitions
    // This sets up the routing table before the app starts navigating
    Flurorouter.configureRoutes();
  }

  // build() - Called every time the widget needs to be rendered
  // Returns the widget tree that describes the UI
  @override
  Widget build(BuildContext context) {
    // MaterialApp - Top-level widget that provides Material Design theming
    // This wraps the entire app and provides navigation, theming, and localization
    return MaterialApp(
      // Remove the debug banner in the top-right corner (useful for production)
      debugShowCheckedModeBanner: false,
      
      // App title - shown in browser tab for web apps and task switcher for mobile
      title: 'Scrolling App',
      
      // The route the app should start with when first launched
      // This corresponds to '/home' which should be defined in the router
      initialRoute: '/home',
      
      // onGenerateRoute - Handles route generation using Fluro router
      // This delegates all routing decisions to the Fluro router we configured
      // The router will match URLs to handlers and return appropriate widgets
      onGenerateRoute: Flurorouter.router.generator,
    );
  }
}
