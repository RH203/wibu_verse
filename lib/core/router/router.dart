import 'package:go_router/go_router.dart';
import 'package:wibu_verse/src/auth/view/signin_screen.dart';
import 'package:wibu_verse/src/auth/view/signup_screen.dart';
import 'package:wibu_verse/src/home/view/Homescreen.dart';
import 'package:wibu_verse/src/onboard/view/initial_screen.dart';
import 'package:wibu_verse/src/onboard/view/onboard.dart';

class AppRouter {
  AppRouter();

  final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const InitialScreen(),
      ),
      GoRoute(
        path: '/onboard-screen',
        builder: (context, state) => const Onboard(),
      ),
      GoRoute(
        path: '/sign-in',
        builder: (context, state) => const SigninScreen(),
      ),
      GoRoute(
        path: '/sign-up',
        builder: (context, state) => const SignupScreen(),
      ),
      GoRoute(
        path: '/home-screen',
        builder: (context, state) => const Homescreen(),
      )
    ],
  );
}
