import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'imagelabeling.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
    appBar: AppBar(
      title: Text('ML Kit',style: TextStyle(
        color: Colors.black,
        fontSize: 16
      ),),
    ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(
            children: [
             SizedBox(height: 25),
             ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,            // Button background
              foregroundColor: Colors.white,            // Text color
              shape: const StadiumBorder(),             // Stadium shape
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 12,
              ),
            ),
            onPressed: () {
              // TODO: your function here
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ImageLabeling()),
              );
              print('------ImageLabeling-----');
            }, child: Text('Image Labeling',style: TextStyle(
               color: Colors.white,
               fontSize: 16
             ),),),
              SizedBox(height: 15),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,            // Button background
                  foregroundColor: Colors.white,            // Text color
                  shape: const StadiumBorder(),             // Stadium shape
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                ),
                onPressed: () {
                  // TODO: your function here
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ImageLabeling()),
                  );
                  print('------ImageLabeling-----');
                }, child: Text(' RealTime Image Labeling',style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
              ),),),

            ],
          ),
        ),
    )
    );
  }
}
