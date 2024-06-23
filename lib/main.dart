import 'package:flutter/material.dart';
import 'pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jason\'s Teaching Dossier',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: const TextTheme(
          displayLarge: TextStyle(
              fontFamily: 'Lato', fontWeight: FontWeight.bold, fontSize: 32),
          titleLarge: TextStyle(
              fontFamily: 'Lato', fontWeight: FontWeight.bold, fontSize: 20),
          bodyMedium: TextStyle(fontFamily: 'Lato', fontSize: 16),
        ),
      ),
      home: const MyHomePage(title: 'Teaching Dossier'),
    );
  }
}