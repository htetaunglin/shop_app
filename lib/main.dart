import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:shop_app/di/locator.dart';
import 'package:shop_app/router.dart';

void main() {
  setupLocator();
  _setupLogging();
  runApp(MyApp());
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print("${rec.level.name}: ${rec.time}: ${rec.message}");
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(),
      initialRoute: '/',
      onGenerateRoute: Router.generateRoute,
    );
  }
}
