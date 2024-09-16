import 'package:flutter/material.dart';
import 'package:wibu_verse/core/injection/injection.dart';
import 'package:wibu_verse/src/app/app.dart';

Future<void> main() async {
  await initDependencies();
  runApp(const App());
}
