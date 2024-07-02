import 'package:ai_trade/ui/screens/wellcome_screen.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const WellcomeScreen(),
      ),
    ],
  );
}
