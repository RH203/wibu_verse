import 'package:flutter/material.dart';
import 'package:wibu_verse/core/injection/injection.dart';
import 'package:wibu_verse/src/app/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await initDependencies();
  runApp(const App());
}
