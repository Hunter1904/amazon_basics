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

  var arrColor = [Colors.blue ,
                  Colors.green ,
                  Colors.grey ,
                  Colors.red ,
                  Colors.yellow ,
                  Colors.brown ,
                  Colors.orange ,
                  Colors.pink ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("DashBoard"),
        ),
         body:   Padding(
           padding: const EdgeInsets.all(8.0),
           child: GridView.builder(itemBuilder: (context ,index){
             return Container(color: arrColor[index],);
           }, itemCount: arrColor.length,  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
             crossAxisCount: 4,
             crossAxisSpacing: 11,
             mainAxisSpacing: 11
           ),
           ),
         ));
  }
}


// Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: GridView.extent(
//             maxCrossAxisExtent: 200,
//             mainAxisSpacing: 11,
//             crossAxisSpacing: 11,
//             children: [
//               CircleAvatar(
//                 child: Container(
//                   width: 60,
//                   height: 60,
//                   child: Column(
//                     children: [
//                       Container(
//                           width: 30,
//                           height: 30,
//                           child: Image.asset("assets/Images/boy.png")),
//                       Text("Name")
//                     ],
//                   ),
//                 ),
//                 // backgroundImage: AssetImage('assets/Images/boy.png'),
//                 backgroundColor: Colors.green,
//                 maxRadius: 50,
//               ),
//               CircleAvatar(
//                 child: Container(
//                   width: 60,
//                   height: 60,
//                   child: Column(
//                     children: [
//                       Container(
//                           width: 30,
//                           height: 30,
//                           child: Image.asset("assets/Images/boy.png")),
//                       Text("Name")
//                     ],
//                   ),
//                 ),
//                 // backgroundImage: AssetImage('assets/Images/boy.png'),
//                 backgroundColor: Colors.blue,
//                 maxRadius: 50,
//               ),
//               CircleAvatar(
//                 child: Container(
//                   width: 60,
//                   height: 60,
//                   child: Column(
//                     children: [
//                       Container(
//                           width: 30,
//                           height: 30,
//                           child: Image.asset("assets/Images/boy.png")),
//                       Text("Name")
//                     ],
//                   ),
//                 ),
//                 // backgroundImage: AssetImage('assets/Images/boy.png'),
//                 backgroundColor: Colors.red,
//                 maxRadius: 50,
//               ),
//               CircleAvatar(
//                 child: Container(
//                   width: 60,
//                   height: 60,
//                   child: Column(
//                     children: [
//                       Container(
//                           width: 30,
//                           height: 30,
//                           child: Image.asset("assets/Images/boy.png")),
//                       Text("Name")
//                     ],
//                   ),
//                 ),
//                 // backgroundImage: AssetImage('assets/Images/boy.png'),
//                 backgroundColor: Colors.blueGrey,
//                 maxRadius: 50,
//               ),
//               CircleAvatar(
//                 child: Container(
//                   width: 60,
//                   height: 60,
//                   child: Column(
//                     children: [
//                       Container(
//                           width: 30,
//                           height: 30,
//                           child: Image.asset("assets/Images/boy.png")),
//                       Text("Name")
//                     ],
//                   ),
//                 ),
//                 // backgroundImage: AssetImage('assets/Images/boy.png'),
//                 backgroundColor: Colors.yellow,
//                 maxRadius: 50,
//               ),
//               CircleAvatar(
//                 child: Container(
//                   width: 60,
//                   height: 60,
//                   child: Column(
//                     children: [
//                       Container(
//                           width: 30,
//                           height: 30,
//                           child: Image.asset("assets/Images/boy.png")),
//                       Text("Name")
//                     ],
//                   ),
//                 ),
//                 // backgroundImage: AssetImage('assets/Images/boy.png'),
//                 backgroundColor: Colors.green,
//                 maxRadius: 50,
//               ),
//               CircleAvatar(
//                 child: Container(
//                   width: 60,
//                   height: 60,
//                   child: Column(
//                     children: [
//                       Container(
//                           width: 30,
//                           height: 30,
//                           child: Image.asset("assets/Images/boy.png")),
//                       Text("Name")
//                     ],
//                   ),
//                 ),
//                 // backgroundImage: AssetImage('assets/Images/boy.png'),
//                 backgroundColor: Colors.blueGrey,
//                 maxRadius: 50,
//               ),
//               CircleAvatar(
//                 child: Container(
//                   width: 60,
//                   height: 60,
//                   child: Column(
//                     children: [
//                       Container(
//                           width: 30,
//                           height: 30,
//                           child: Image.asset("assets/Images/boy.png")),
//                       Text("Name")
//                     ],
//                   ),
//                 ),
//                 // backgroundImage: AssetImage('assets/Images/boy.png'),
//                 backgroundColor: Colors.red,
//                 maxRadius: 50,
//               ),
//             ],
//           ),
//         ));
//   }
// }

        //Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: GridView.count(
        //     crossAxisCount: 3,
        //     mainAxisSpacing: 11,
        //     crossAxisSpacing: 11,
        //     children: [
        //       CircleAvatar(
        //         child: Container(
        //           width: 60,
        //           height: 60,
        //           child: Column(
        //             children: [
        //               Container(
        //                   width: 30,
        //                   height: 30,
        //                   child: Image.asset("assets/Images/boy.png")),
        //               Text("Name")
        //             ],
        //           ),
        //         ),
        //         // backgroundImage: AssetImage('assets/Images/boy.png'),
        //         backgroundColor: Colors.green,
        //         maxRadius: 50,
        //       ),
        //       CircleAvatar(
        //         child: Container(
        //           width: 60,
        //           height: 60,
        //           child: Column(
        //             children: [
        //               Container(
        //                   width: 30,
        //                   height: 30,
        //                   child: Image.asset("assets/Images/boy.png")),
        //               Text("Name")
        //             ],
        //           ),
        //         ),
        //         // backgroundImage: AssetImage('assets/Images/boy.png'),
        //         backgroundColor: Colors.blue,
        //         maxRadius: 50,
        //       ),
        //       CircleAvatar(
        //         child: Container(
        //           width: 60,
        //           height: 60,
        //           child: Column(
        //             children: [
        //               Container(
        //                   width: 30,
        //                   height: 30,
        //                   child: Image.asset("assets/Images/boy.png")),
        //               Text("Name")
        //             ],
        //           ),
        //         ),
        //         // backgroundImage: AssetImage('assets/Images/boy.png'),
        //         backgroundColor: Colors.red,
        //         maxRadius: 50,
        //       ),
        //       CircleAvatar(
        //         child: Container(
        //           width: 60,
        //           height: 60,
        //           child: Column(
        //             children: [
        //               Container(
        //                   width: 30,
        //                   height: 30,
        //                   child: Image.asset("assets/Images/boy.png")),
        //               Text("Name")
        //             ],
        //           ),
        //         ),
        //         // backgroundImage: AssetImage('assets/Images/boy.png'),
        //         backgroundColor: Colors.blueGrey,
        //         maxRadius: 50,
        //       ),
        //       CircleAvatar(
        //         child: Container(
        //           width: 60,
        //           height: 60,
        //           child: Column(
        //             children: [
        //               Container(
        //                   width: 30,
        //                   height: 30,
        //                   child: Image.asset("assets/Images/boy.png")),
        //               Text("Name")
        //             ],
        //           ),
        //         ),
        //         // backgroundImage: AssetImage('assets/Images/boy.png'),
        //         backgroundColor: Colors.yellow,
        //         maxRadius: 50,
        //       ),
        //       CircleAvatar(
        //         child: Container(
        //           width: 60,
        //           height: 60,
        //           child: Column(
        //             children: [
        //               Container(
        //                   width: 30,
        //                   height: 30,
        //                   child: Image.asset("assets/Images/boy.png")),
        //               Text("Name")
        //             ],
        //           ),
        //         ),
        //         // backgroundImage: AssetImage('assets/Images/boy.png'),
        //         backgroundColor: Colors.green,
        //         maxRadius: 50,
        //       ),
        //       CircleAvatar(
        //         child: Container(
        //           width: 60,
        //           height: 60,
        //           child: Column(
        //             children: [
        //               Container(
        //                   width: 30,
        //                   height: 30,
        //                   child: Image.asset("assets/Images/boy.png")),
        //               Text("Name")
        //             ],
        //           ),
        //         ),
        //         // backgroundImage: AssetImage('assets/Images/boy.png'),
        //         backgroundColor: Colors.blueGrey,
        //         maxRadius: 50,
        //       ),
        //       CircleAvatar(
        //         child: Container(
        //           width: 60,
        //           height: 60,
        //           child: Column(
        //             children: [
        //               Container(
        //                   width: 30,
        //                   height: 30,
        //                   child: Image.asset("assets/Images/boy.png")),
        //               Text("Name")
        //             ],
        //           ),
        //         ),
        //         // backgroundImage: AssetImage('assets/Images/boy.png'),
        //         backgroundColor: Colors.red,
        //         maxRadius: 50,
        //       ),
        //     ],
        //   ),
        // )

