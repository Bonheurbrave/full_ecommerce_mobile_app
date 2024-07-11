import 'package:e_commerce/pages/currentlocation.dart';
import 'package:e_commerce/pages/drawer.dart';
import 'package:e_commerce/pages/mysilverAppbar.dart';
import 'package:e_commerce/pages/tab.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(title: Text("Home"),),
        body: MyTabbedApp(),
      ),
    );
  }
}
