import 'package:ai_trade/route/routes.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark(),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      routerConfig: Routes.router,
    );
  }
}
