import 'package:fluro/fluro.dart';
import 'package:scroll_app/router/router_handlers.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    // routes
    router.define(
      '/',
      handler: homeHandler,
      transitionType: TransitionType.fadeIn,
      // 404
    );
    router.notFoundHandler = homeHandler;
  }
}
