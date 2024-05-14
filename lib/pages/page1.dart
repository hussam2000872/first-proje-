import 'package:flutter/material.dart';
import 'package:mytest/pages/page2.dart';
import 'package:mytest/pages/page3.dart';
import 'package:mytest/student.dart';
 

class page1 extends StatefulWidget {
  static final route ='&page1';

  const page1({super.key});

  @override
  State<page1> createState() => _screenState();
}

class _screenState extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('page1',style: TextStyle(color: Colors.black),),
      ),
      body: Center(
        child: Column(
          children: [
            Text('page1',style: TextStyle(color: Colors.grey,fontSize: 50),
            ),
            ElevatedButton(onPressed: () {
           Navigator.pushNamed(context, page2.route, arguments:Student(name: 'husam muflih',age: 24) );
            },
            
             child: Text(' go to page 2')),
              ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, page3.route, arguments:Student(name: 'muhamed muflih',age: 20
              ) );
            },
            
             child: Text(' go to page 3'))
          ],
        ),
      ),
    );
  }
}