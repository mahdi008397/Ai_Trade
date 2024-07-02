import 'package:ai_trade/ui/screens/home_screen.dart';
import 'package:ai_trade/ui/screens/splash_screen.dart';
import 'package:ai_trade/ui/screens/wellcome_screen.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/wellcome',
        builder: (context, state) => const WellcomeScreen(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
}
