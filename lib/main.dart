import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Store  electrical',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        hintColor: kPrimaryColor,
      ),
      home: HomeScreen(),
    );
  }
}
