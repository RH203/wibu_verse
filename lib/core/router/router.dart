import 'package:go_router/go_router.dart';
import 'package:wibu_verse/src/auth/view/signin_screen.dart';
import 'package:wibu_verse/src/home/view/Homescreen.dart';
import 'package:wibu_verse/src/onboard/view/onboard_screen.dart';

class AppRouter {
  AppRouter();

  final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const OnboardScreen(),
      ),
      GoRoute(
        path: '/sign-in',
        builder: (context, state) => const SigninScreen(),
      ),
      GoRoute(
        path: '/home-screen',
        builder: (context, state) => const Homescreen(),
      )
    ],
  );
}
