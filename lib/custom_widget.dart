import 'package:flutter/material.dart';
import 'package:flutter_basics/Widgets/rounded_btn.dart';
import 'package:flutter_basics/ui_helper/util.dart';


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
          child: Container(
            width: 200,
            child: RoundedBtn(btnName: "Play" , icon: Icon( Icons.play_arrow), callBack:(){
              print("Logged In!");
            },
                textStyle:headerStyle(),
            ),
          ),
        )
    );

  }
}