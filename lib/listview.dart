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

  var arrNames = ['Arth','Mit','Karan','Ram','Krishna'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("DashBoard"),
        ),
        body:ListView.separated(itemBuilder: (context,index){
          return Row(
            children: [
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(arrNames[index] , style: TextStyle(fontSize: 21 ,fontWeight: FontWeight.w500),),
                      Padding(padding: EdgeInsets.all(8.0),
                        child: Text(arrNames[index] , style: TextStyle(fontSize: 11 , fontWeight: FontWeight.w500),),
                      )
                    ],
                  )
              )
            ],
          );
        }, itemCount: arrNames.length,
          separatorBuilder: (context , index){
            return Divider(height: 100 ,thickness: 1,);
          },
        ) );
  }
}