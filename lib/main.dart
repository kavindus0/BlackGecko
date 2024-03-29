import 'package:flutter/material.dart';
import 'package:blackgecko/mainHomePage.dart';
import 'package:animated_icon/animated_icon.dart';
import 'package:auto_scroll/auto_scroll.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title of the application
      title: 'Black Gecko',
      debugShowCheckedModeBanner: false,
      // theme of the widget
      theme: ThemeData.dark(),
      // Inner UI of the application
      home: const MyHomePage(title: 'Black Gecko'),
    );
  }
}
