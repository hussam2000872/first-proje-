import 'package:flutter/material.dart';
import 'package:mytest/pages/page1.dart';
import 'package:mytest/student.dart';
 

class page3 extends StatefulWidget {
   static final route ='&page3';
  final name;
  final age ;
  page3({this.name,this.age});
 

  @override
  State<page3> createState() => _screenState();
}

class _screenState extends State<page3> {
 

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Screen Home',style: TextStyle(color: Colors.black),),
      ),
      body: Center(
        child: Column(
          children: [
            Text('name',style: TextStyle(color: Colors.grey,fontSize: 50), ),
            Text('age ',style: TextStyle(color: Colors.grey,fontSize: 50), )
    
          ],
        ),
      ),
    );
  }
}