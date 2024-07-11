import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settingspage extends StatefulWidget {
  const Settingspage({super.key});

  @override
  State<Settingspage> createState() => _SettingspageState();
}

class _SettingspageState extends State<Settingspage> {
  bool switched = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Container(
            padding: EdgeInsets.only(left: 10),
            child: Row(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back)),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Settings",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 60, top: 80, right: 60),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Text('Dark mode'),
                    Container(
                        padding: EdgeInsets.only(left: 25),
                        child: CupertinoSwitch(
                            value: switched, onChanged: (value) {}))
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  Icon(Icons.warning),
                  Text("Sorry you can't change the mode"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
