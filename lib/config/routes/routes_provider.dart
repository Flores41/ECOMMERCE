import 'package:ecommerce_01/config/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class RouteProvider extends ChangeNotifier {
  late GoRouter _router;

  RouteProvider() {
    _router = GoRouter(
      initialLocation: RouteLocation.home,
      navigatorKey: navigationkey,
      routes: appRoutes,
    );
    notifyListeners();
  }

  GoRouter get router => _router;
}
