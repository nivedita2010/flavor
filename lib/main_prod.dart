import 'package:flutter/material.dart';

import 'configure_app.dart';
import 'home_screen.dart';

void main() async {
  AppConfig.create(
    appName: "Production Flavor",
    baseUrl: "https://dwirandyh.com",
    primaryColor: Colors.yellow,
    flavor: Flavor.prod,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Production',
      theme: ThemeData(
        primarySwatch: AppConfig.shared.primaryColor,
      ),
      home: const HomePage(),
    );
  }
}
