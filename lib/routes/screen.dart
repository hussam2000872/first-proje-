import 'package:flutter/material.dart';
import 'package:mytest/routes/scound.dart';

class screen extends StatefulWidget {
  const screen({super.key});

  @override
  State<screen> createState() => _screenState();
}

class _screenState extends State<screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Screen Home',style: TextStyle(color: Colors.black),),
      ),
      body: Center(
        child: Column(
          children: [
            Text('screen home ',style: TextStyle(color: Colors.grey,fontSize: 50),
            ),
            ElevatedButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => scound()),
                );
            },
            
             child: Text('open scound'))
          ],
        ),
      ),
    );
  }
}