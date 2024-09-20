import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wibu_verse/app_logger.dart';
import 'package:wibu_verse/core/injection/injection.dart';
import 'package:go_router/go_router.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: getIt<FirebaseAuth>().authStateChanges(),
      builder: (context, snapshot) {
        // Debugging connection state
        AppLogger.debug("Connection State: ${snapshot.connectionState}");

        // if (snapshot.hasError) {
        //   AppLogger.error("Error: ${snapshot.error}");
        //   WidgetsBinding.instance.addPostFrameCallback((_) {
        //     context.go('/sign-in');
        //   });
        //   return Center(child: Text("Error: ${snapshot.error}"));
        // }

        if (snapshot.connectionState == ConnectionState.waiting) {
          AppLogger.debug("Loading");
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (snapshot.hasData && snapshot.data != null) {
          AppLogger.debug("User is authenticated: ${snapshot.data?.email}");
          WidgetsBinding.instance.addPostFrameCallback((_) {
            context.go('/home-screen');
          });
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        // // If no user is authenticated, redirect to sign-in
        // AppLogger.debug("No user is authenticated, redirecting to sign-in");
        // WidgetsBinding.instance.addPostFrameCallback(
        //   (_) {
        //     context.go('/sign-in');
        //   },
        // );

        // Return a fallback UI
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
