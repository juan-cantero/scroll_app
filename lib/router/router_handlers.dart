// Fluro is a popular Flutter routing library that provides powerful navigation features
// It allows for more complex routing patterns than Flutter's built-in Navigator
import 'package:fluro/fluro.dart';
import 'package:scroll_app/ui/pages/home_page.dart';

// Route handlers define how the app responds to specific URL patterns
// Each handler contains the logic for what widget to display when a route is matched

// homeHandler: Defines the routing logic for the home page
// This handler will be called whenever the home route is navigated to
final homeHandler = Handler(
  // handlerFunc: The function that gets executed when this route is matched
  // Parameters:
  // - context: BuildContext for the current widget tree
  // - params: Map containing route parameters (e.g., /user/:id would have 'id' in params)
  handlerFunc: (context, params) {
    // Return the widget that should be displayed for this route
    // Using 'const' constructor for better performance since HomePage doesn't change
    return const HomePage();
  },
);
