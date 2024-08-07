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


        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Select Date',
                style: TextStyle(fontSize: 25),
              ),
              ElevatedButton(
                  onPressed: () async {
                    DateTime? datePicked = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2021),
                        lastDate: DateTime(2025));

                    if(datePicked!=null){
                      print('Date Selected: ${datePicked.day}-${datePicked.month}-${datePicked.year}');
                    }

                  },
                  child: Text('Show')),


              ElevatedButton(onPressed: () async {
                TimeOfDay? timePicked =await  showTimePicker(context: context, initialTime: TimeOfDay.now(),
                initialEntryMode: TimePickerEntryMode.input,
                );

                if(timePicked!=null)
                  {
                    print('Time Selected : ${timePicked.hour}: ${timePicked.minute} ');
                  }

              }, child: const Text('Select Time'))
            ],
          ),
        ));
  }
}
