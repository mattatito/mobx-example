
import 'package:flutter/material.dart';
import 'package:mobx_example/features/home/presentation/pages/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.red,
        brightness:  Brightness.dark
      ),
      home: const HomePage(),
    );
  }
}
