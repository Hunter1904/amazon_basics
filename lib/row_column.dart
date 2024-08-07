import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Flutter App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          color: Colors.blue,
        ),
      ),
      home: DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("DashBoard"),
        ),
        body: Container(
          height: 300,
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [

                  Text('R1',style: TextStyle(fontSize: 25),),
                  Text('R2',style: TextStyle(fontSize: 25),),
                  Text('R3',style: TextStyle(fontSize: 25),),
                  Text('R4',style: TextStyle(fontSize: 25),),
                  ElevatedButton(onPressed: (){

                  }, child: Text("Click Me"))

                ],
              ),

              Text('A',style: TextStyle(fontSize: 25),),
              Text('B',style: TextStyle(fontSize: 25),),
              Text('C',style: TextStyle(fontSize: 25),),
              Text('D',style: TextStyle(fontSize: 25),),
              ElevatedButton(onPressed: (){

              }, child: Text("Click Me"))
            ],
          ),
        ));
  }
}