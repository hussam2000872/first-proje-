import 'package:flutter/material.dart';
import 'package:mytest/pages/page3.dart';
import 'package:mytest/student.dart';

class page2 extends StatefulWidget {

  static final route ='&page2';
  const page2({super.key});

  @override
  State<page2> createState() => _screenState();
}

class _screenState extends State<page2> {
  @override
  Widget build(BuildContext context) {

   Student student = ModalRoute.of(context).Settings.arguments;
    return  Scaffold(
      appBar: AppBar(
        title: Text('Screen Home',style: TextStyle(color: Colors.black),),
      ),
      body: Center(
        child: Column(
          children: [

            Text('name${student.name}'),
            Text('age${student.age}' ),
          
          ],
        ),
      ),
    );
  }
}