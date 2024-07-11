import 'package:e_commerce/pages/Settingspage.dart';
import 'package:e_commerce/pages/login.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 50),
        child: Column( 
          children: [
            Icon(
              Icons.lock_open_outlined,
              size: 70,
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.home),
                Text("Home"),
              ],
            )),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=>Settingspage())
                );
              },
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.settings),
                Text("Settings"),
              ],
            )),
            SizedBox(
              height: 30,
            ),
            InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Login()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.logout),
                    Text("Logout"),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
