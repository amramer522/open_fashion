import 'package:flutter/material.dart';

import 'views/home/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Open Fashion',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Tenor",
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xffDD8560)),
        appBarTheme: AppBarTheme(
          centerTitle: true
        ),
        useMaterial3: true,
      ),
      home: HomeView(),
    );
  }
}
