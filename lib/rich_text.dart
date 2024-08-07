import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {


    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Hello"),
        ),
        body:Center(
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
              children:<TextSpan> [
                    TextSpan(text: 'Hello  ' , ),
                    TextSpan(text: 'World! ' , style: TextStyle(fontSize: 30 , color: Colors.blue , fontWeight: FontWeight.bold) ),
                    TextSpan(text: 'Welcome to  ' , ),
                    TextSpan(text: 'Flutter' , style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 40 , color: Colors.orange ,fontStyle: FontStyle.italic , fontFamily: 'FontMain') ),
              ]
            ),
          ),
        )
    );
  }
}

