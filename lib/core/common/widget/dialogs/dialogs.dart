import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppDialogs {
  AppDialogs();

  // Function to show a dialog with CircularProgressIndicator
  static Future<void> showLoadingDialog(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return const AlertDialog(
          content: SizedBox(
            height: 50,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
        );
      },
    );
  }

  // Function to show an alert dialog with dynamic message
  static Future<void> showMessageDialog(
      BuildContext context, String message, String title, String location) {
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => context.go(location),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  // Function to show an alert dialog with error message
  static Future<void> showErrorMessageDialog(
      BuildContext context, Object message, String title) {
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message.toString()),
          actions: [
            TextButton(
              onPressed: () => context.pop(),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
