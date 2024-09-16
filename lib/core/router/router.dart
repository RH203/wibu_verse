import 'package:go_router/go_router.dart';
import 'package:wibu_verse/src/home/view/Homescreen.dart';

class AppRouter {
  AppRouter();

  final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const Homescreen(),
      )
    ],
  );
}
