import 'package:flutter/material.dart';

import 'package:untitled/constants.dart';

import '../widgets/home/home_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: homeAppbar(),
      body: HomeBody(),
    ),
    );
   
  }

  AppBar homeAppbar() {
    return AppBar(
      elevation: 0,
      title: Text(
        "welcome to my simple store",
        style: TextStyle(color: Colors.blue),
      ),
      centerTitle: false,
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
    );
  }
}
