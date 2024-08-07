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
        body: Center(
          child: CircleAvatar(
            child: Container(
              width: 60,
              height: 60,
              child: Column(
                children: [
                  Container(
                      width: 30,
                      height: 30,
                      child: Image.asset("assets/Images/boy.png")),
                  Text("Name")
                ],
              ),
            ),
            // backgroundImage: AssetImage('assets/Images/boy.png'),
            backgroundColor: Colors.green,
            maxRadius: 50,
          ),
        ));
  }
}