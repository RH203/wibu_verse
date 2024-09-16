import 'package:flutter/material.dart';
import 'package:wibu_verse/core/injection/injection.dart';
import 'package:wibu_verse/core/router/router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "WibuVerse",
      debugShowCheckedModeBanner: false,
      routerConfig: getIt<AppRouter>().router,
    );
  }
}
