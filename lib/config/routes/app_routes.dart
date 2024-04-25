import 'package:ecommerce_01/config/routes/routes.dart';

import 'package:ecommerce_01/screens/screens.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/cupertino.dart';

final navigationkey = GlobalKey<NavigatorState>();
final appRoutes =  [
  GoRoute(
    path: RouteLocation.welcome,
    parentNavigatorKey: navigationkey,
    builder: WelcomeScreen.builder,
    
    
  ),
  GoRoute(
    path: RouteLocation.home,
    parentNavigatorKey: navigationkey,
    builder: HomeScreen.builder,
  ),
  GoRoute(
    path: RouteLocation.authentication,
    parentNavigatorKey: navigationkey,
    builder: AuthenticationScreen.builder,
  ),
  // GoRoute(
  //   path: RouteLocation.details,
  //   parentNavigatorKey: navigationkey,
  //   builder: DetailsScreen.builder,
  // ),
  GoRoute(
    path: RouteLocation.basket,
    parentNavigatorKey: navigationkey,
    builder: BasketScreen.builder,
  )
];
