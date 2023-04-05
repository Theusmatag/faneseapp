import 'package:app_fanese/factory/inject.dart';
import 'package:app_fanese/theme/themes.dart';
import 'package:app_fanese/view/home.dart';
import 'package:flutter/material.dart';

void main() {
  Inject.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ligththeme,
      darkTheme: darktheme,
      home: const Home(),
    );
  }
}
