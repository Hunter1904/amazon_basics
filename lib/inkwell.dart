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
        body:Center(
          child: InkWell(
            onTap:(){
              print('Tapped on container');
            },
            onDoubleTap: (){
              print('Double tap on container');
            },

            onLongPress: (){
              print('Long pressed on container');
            },
            child: Container(
              width: 200,
              height: 200,
              color: Colors.amber,
              child: Center(child: InkWell(

                  onTap: (){
                    print('Text widget tapped');
                  },

                  child: Text("Click Here" , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.w700 ,), ))),
            ),
          ),
        ) );
  }
}