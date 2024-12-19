import 'package:fitness_app/app.dart';
import 'package:fitness_app/initializer.dart';
import 'package:fitness_app/routes/app_pages.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await Initializer.init();

  final String initialRoute = await Routes.INITIAL;

  runApp(App(initialRoute: initialRoute));
}
