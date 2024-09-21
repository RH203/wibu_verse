import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wibu_verse/core/di/injection.dart';
import 'package:wibu_verse/core/router/router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "WibuVerse",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      routerConfig: getIt<AppRouter>().router,
    );
  }
}
