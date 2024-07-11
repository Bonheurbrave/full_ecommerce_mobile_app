import 'package:e_commerce/pages/currentlocation.dart';
import 'package:flutter/material.dart';

class MyTabbedApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, // specify the number of tabs
      child: Scaffold(
        appBar: AppBar(
          
          title: Container(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: Column(children: [
              Currentlocation(),
            ],),
          ),
          bottom: TabBar(
            tabs: [
              Tab(child: Text('burger' , style: TextStyle(fontSize: 15),)),
              Tab(child: Text('salads' , style: TextStyle(fontSize: 16),)),
              Tab(child:Text( 'sides' , style: TextStyle(fontSize: 16),)),
              Tab(child: Text('desert' , style: TextStyle(fontSize: 16),)),
              Tab(child: Text('drinks' , style: TextStyle(fontSize: 16),)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Row(children: [
              Column(children: [
                Image.asset("images/")
              ],)
            ],)
          ],
        ),
      ),
    );
  }
}
