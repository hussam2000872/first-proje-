import 'package:flutter/material.dart';
import 'package:mytest/routes/screen.dart';
class scound extends StatefulWidget {
  const scound({super.key});

  @override
  State<scound> createState() => _scoundState();
}

class _scoundState extends State<scound> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('scound page',style: TextStyle(color: Colors.black),),
      ),
      body: Center(
        child: Column(
          children: [
            Text('scound page ',style: TextStyle(color: Colors.grey,fontSize: 50),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context, MaterialPageRoute(builder: (context)=>screen())
              );

            }, child:Text('back to Home'))
            
           
          ],
        ),
      ),
    );
  }
}