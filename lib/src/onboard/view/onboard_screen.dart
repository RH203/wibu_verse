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
    return StreamBuilder(
      stream: getIt<FirebaseAuth>().authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (snapshot.hasData) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            // Change later
            context.go('/home-screen');
          });
        } else {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            // Change later
            context.go('/sign-in');
          });
        }

        AppLogger.debug(snapshot.data);

        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
