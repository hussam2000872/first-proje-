import 'package:fancy_flutter_dialog/fancy_flutter_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:mytest/pages/page1.dart';
import 'package:mytest/pages/page2.dart';
import 'package:mytest/pages/page3.dart';
import 'package:mytest/routes/screen.dart';
import 'package:mytest/student.dart';

 

 
void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
        primaryColor: Colors.red,
        iconTheme: IconThemeData(
          size: 30,
          color: Colors.blue),
          textTheme: TextTheme(headline2:TextStyle(fontSize: 20) )
          ) ,
       initialRoute: page1.route,
       onGenerateRoute:(settings){
        if (settings.name ==page3.route){
          Student s = Settings.arguments;
          return MaterialPageRoute(builder: (context)=> page3(age: s.age, name: s.name,),);
         }

       } ,
       routes: {
      page1.route :(context) => page1(), 
      page2.route :(context) => page2(),
      page3.route :(context) => page3(),

       },
       home: page1(),
 
      
    );
  }
}
class MYtheme extends StatelessWidget {
  const MYtheme({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child:Scaffold(
        endDrawer: Drawer(
          child: ListView(children: [DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            padding: EdgeInsets.all(10),
            child:Column(
             children: [
              Container(
                height: 70,
                width: 70,
                child: CircleAvatar(backgroundImage: NetworkImage('https://images.pexels.com/photos/10390026/pexels-photo-10390026.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load'),),
              ),
              SizedBox(height: 19,),
              Text('hussam muflih',style: TextStyle(color: Colors.black,fontSize: 20 )),
              Text('hussammefleh2000@gmail.com',style: TextStyle(color: Colors.black,fontSize: 10 )),

             ],
            

            )),
            ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              print(" home clicked");
            },
            ),
            ListTile(
            leading: Icon(Icons.car_crash),
            title: Text('Cars'),
            onTap: () {
              print(" cars clicked");
            },
            ),
            ListTile(
            leading: Icon(Icons.bike_scooter),
            title: Text('bikes'),
            onTap: () {
              print(" bikes clicked");
            },
            )
            ],),
          ),

        appBar: AppBar(
        title: Text("flutter tabs"),
        bottom: TabBar(
        tabs: [
          Tab(icon:Icon(Icons.home) ,text: "my home",),
          Tab(icon:Icon(Icons.directions_car),text: "my car" ,),
          Tab(icon:Icon(Icons.directions_bike),text: "my bike" ,)
          ]
        
        ),
        ),
        body: TabBarView(children: [
          Center(child:Column(
            children: [
              Icon(Icons.home,size: 200,),
            Switch(value: true, onChanged:(value) {}  ),
            Text("To share colors and font styles throughout an app, use themes. You can either define app-wide themes, or use Theme widgets that define the colors and font styles for a particular part of the application. In fact, app-wide themes are just Theme widgets created at the root of an app by the MaterialApp.", 
            style: Theme.of(context).textTheme.headline2,
            )
        
            ],
            
          )),
          Center(child:Icon(Icons.directions_car,size: 200,) ,),
          Center(child:Icon(Icons.directions_bike,size: 200,) ,)
        ],),
       floatingActionButton: FloatingActionButton(
        child:  Icon(Icons.add),
        onPressed: (){}),
      ), ) ;
  }
}
 class house extends StatefulWidget {
  const house({super.key});

  @override
  State<house> createState() => _houseState();
}

class _houseState extends State<house> {
  final List boxes = ['box1','box2','box3','box4'];
  final List colorcodes =[100,200,300,400];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("all about list view costum "),
      ),
      body: ListView.custom(childrenDelegate: SliverChildListDelegate(
        List.generate(100, (index) {
          return Container(
            height: 200,
            margin: EdgeInsets.only(bottom: 5),
            color: Colors.blue,
            child:Center(
            child:   ListTile(
                leading: Icon(Icons.access_alarm,color: Colors.black, ),
                title: Text('item is $index'),
                subtitle: Text('sub item $index'),
              )
            ),
              
          );
        })
      )),
    );
  }
}
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("alert dialog"),
    ),
    body:  
      Center(
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            child: InkWell(
              child: Text("Show Dialog"),
              onTap: (){
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return FancyAlertDialog(
                      title: "Rate us if you like the app",
                      backgroundColor: Color(0xFF303F9F),
                      message: "Do you really want to Exit ?",
                      negativeBtnText: "Cancel",
                      positiveBtnBackground: Color(0xFFFF4081),
                      positiveBtnText: "Rate",
                      negativeBtnBackground: Color(0xFFA9A7A8),
                      onPositiveClicked: () {
                        // Positive button clicked action
                        print("Rate");
                      },
                      onNegativeClicked: () {
                        // Negative button clicked action
                        print("Cancel");
                      },
                    );
                  },
                );
              },
            ),
          ),
    );

    
  }
}