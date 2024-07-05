import 'package:ai_trade/locator.dart';
import 'package:ai_trade/route/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:skeletons/skeletons.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
  ));

  await setup();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(const MainApp()));

  setPathUrlStrategy();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SkeletonTheme(
      themeMode: ThemeMode.dark,
      darkShimmerGradient: const LinearGradient(colors: [
        Color.fromRGBO(36, 27, 62, 1),
        Color.fromRGBO(38, 29, 64, 1),
        Color.fromRGBO(45, 36, 71, 1),
        Color.fromRGBO(38, 29, 64, 1),
        Color.fromRGBO(36, 27, 62, 1),
      ], stops: [
        0.0,
        0.2,
        0.5,
        0.8,
        1,
      ]),
      child: MaterialApp.router(
        theme: ThemeData.dark(),
        darkTheme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        routerConfig: Routes.router,
      ),
    );
  }
}
