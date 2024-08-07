import 'package:flutter/material.dart';
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

        textTheme: TextTheme(
          headlineLarge: TextStyle(fontSize: 21 , fontWeight:FontWeight.bold),
        ),

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

  var emailText = TextEditingController();
  var passText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("DashBoard"),
        ),
        body:Column(
          children: [
            Text("Hello World" , style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.orange),),
            Text("Hello World" , style: TextStyle(fontSize: 11 , fontWeight:FontWeight.w500),),
            Text("Hello World" , style: TextStyle(fontSize: 21 , fontWeight:FontWeight.bold),) ,
            Text("Hello World" , style: headerStyle() )
          ],
        ) );
  }
}