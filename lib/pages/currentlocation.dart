import 'package:flutter/material.dart';

class Currentlocation extends StatelessWidget {
  const Currentlocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 30),
      child: Column(
        children: [
          
          Row(
            children: [
              Text("6910 hollywood Blv" , style: TextStyle(fontSize: 14),),
              InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: Text("your location"),
                              content: Column(
                                children: [
                                  TextField(decoration: InputDecoration(hintText: "enter your location"),)
                                ],
                              ),
                            ));
                  },
                  child: Icon(Icons.arrow_drop_down))
            ],
          )
        ],
      ),
    );
  }
}
