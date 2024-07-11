import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mysilverappbar extends StatelessWidget {
  final Widget child ;
  final Widget  title;
  const Mysilverappbar(this.title , this.child);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      pinned: true,
      floating: false,
      title: Text("Sunset Dinner" ,style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
      actions: [
        Container(padding: EdgeInsets.symmetric(horizontal: 30), child: Icon(CupertinoIcons.cart))
      ],
      flexibleSpace: FlexibleSpaceBar(background: child,title: title, centerTitle: true,),
    );
  }
}