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
        title: Text("App split into widgets"),
      ),
      body: Container(
        child: Column(
          children: [

            CateItem(),
            Contacts(),
            SubCateItem(),
            BottomMenu()

          ],
        ),
      ));
  }
}

class CateItem extends StatelessWidget{
  var emailText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      flex: 2,
      // child: Container(
      //   color: Colors.blue,
      //   child: ListView.builder(itemBuilder: (context,index) => Padding(
      //     padding: const EdgeInsets.all(11),
      //     child: SizedBox(
      //       width: 100,
      //       child: CircleAvatar(
      //         backgroundColor: Colors.green,
      //       ),
      //     ),
      //   ), itemCount: 10 , scrollDirection: Axis.horizontal,),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Enter Email",
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide:
                  BorderSide(color: Colors.deepOrange, width: 2)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(
                    color: Colors.blueAccent,
                  )),
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(
                    color: Colors.black,
                  )),
              prefixIcon:Icon(
                Icons.email,
                color: Colors.blue,
              ),
            ),
            controller: emailText,
            keyboardType: TextInputType.emailAddress,
          ),
        ],
      ),
      // ),
    );
  }
}

class Contacts extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.orange,
        child: Container(
          child: ListView.builder(itemBuilder: (context,index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
              ),
              title: Text('Name'),
              subtitle: Text('Mob No'),
              trailing: Icon(Icons.delete),
            ),
          )),
        ),
      ),
    );
  }
}

class SubCateItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Container(
        color: Colors.grey,
        child: ListView.builder(itemBuilder: (context,index) => Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            width: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: Colors.blue
            ),
          ),
        ), itemCount: 10 , scrollDirection: Axis.horizontal,),
      ),
    );
  }
}class BottomMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      flex: 2,
      child: Container(
        color: Colors.green,
        child: GridView.count(
          crossAxisCount: 5,
          mainAxisSpacing: 11,
          crossAxisSpacing: 11,
          children: [
            Container(
              color: Colors.blue,
            ),Container(
              color: Colors.blue,
            ),Container(
              color: Colors.blue,
            ),Container(
              color: Colors.blue,
            ),Container(
              color: Colors.blue,
            ),Container(
              color: Colors.blue,
            ),Container(
              color: Colors.blue,
            ),Container(
              color: Colors.blue,
            ),Container(
              color: Colors.blue,
            ),

          ],
        ),
      ),
    );
  }
}