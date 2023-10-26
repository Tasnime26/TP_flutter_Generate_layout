import 'screen.dart'; 
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String info = "Hello World";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Builder(  // <-- Add the Builder widget here
        builder: (BuildContext context) {  // <-- This context has access to the Navigator
          return Scaffold(
            appBar: AppBar(
              title: Text(info),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    child: Text('Valider'),
                    onPressed: () {
                      print('Validation ok');
                      setState(() {
                        info = 'tasnime';
                      });
                    },
                  ),
                  SizedBox(height: 20), 
                  ElevatedButton(
                    child: Text('Go to Second Page'),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Screen()));
                    },
                  ),
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}
