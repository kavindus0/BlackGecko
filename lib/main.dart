import 'package:flutter/material.dart';
import 'package:blackgecko/mainHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
