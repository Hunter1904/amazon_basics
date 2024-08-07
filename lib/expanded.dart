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
        body:Row(
          children: [
            Container(
              width: 50,
              height: 100,
              color: Colors.blue,
            ),Expanded(
              child: Container(
                width: 50,
                height: 100,
                color: Colors.orange,
              ),
            ),Expanded(
              child: Container(
                width: 50,
                height: 100,
                color: Colors.yellow,
              ),
            ), Container(
              width: 50,
              height: 100,
              color: Colors.red,
            ),
          ],
        ) );
  }
}