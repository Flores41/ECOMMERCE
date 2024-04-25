import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app/todo_app.dart';
import 'config/config.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => RouteProvider()),
    ],
    child: const MyApp(),
  ));
}
