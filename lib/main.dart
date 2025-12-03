
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_labeling/pose_dector.dart';
import 'package:image_labeling/realtimeimagelabeling.dart';
import 'package:image_labeling/smartReply.dart';
import 'package:image_labeling/textrecognigation.dart';
import 'package:image_labeling/texttranslation.dart';
import 'barcode_scanning.dart';
import 'face_dection.dart';
import 'imagelabeling.dart';
import 'objectDection.dart';


late List<CameraDescription> cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),      // home: const MyHome(),()
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
              SizedBox(height: 10),
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
                      MaterialPageRoute(builder: (context) => RealTimeImageLabeling()));
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => RealTimeImageLabeling(cameras: cameras)));
                  print('------ImageLabeling-----');
                }, child: Text(' RealTime Image Labeling',style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
              ),),),
              SizedBox(height: 10),
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
                      MaterialPageRoute(builder: (context) => BarcodeScanning()));
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => BarcodeScanning(cameras: cameras)));
                  print('------ImageLabeling-----');
                }, child: Text('BarCodeScanning',style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
              ),),),
              //  TextRecognition
              SizedBox(height: 10),
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
                      MaterialPageRoute(builder: (context) => TextRecognitionScreen()));
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => TextRecognitionScreen(cameras: cameras)));
                  print('------ImageLabeling-----');
                }, child: Text('TextRecognition',style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
              ),),),
              SizedBox(height: 10),
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
                      MaterialPageRoute(builder: (context) => FaceDetectionScreen()));
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => FaceDection2(cameras: cameras)));
                  print('------ImageLabeling-----');
                }, child: Text('FaceDetection',style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
              ),),),
              SizedBox(height: 10),
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
                      MaterialPageRoute(builder: (context) => ObjectDetectionScreen()));
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => ObjectDetectionScreen(cameras: cameras)));

                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => FaceDection2(cameras: cameras)));
                  print('------ImageLabeling-----');
                }, child: Text('ObjectDetection',style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
              ),),),
              SizedBox(height: 10),
              // poseDector
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
                      MaterialPageRoute(builder: (context) => PoseDetectionScreen()));
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => ObjectDetectionScreen(cameras: cameras)));

                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => FaceDection2(cameras: cameras)));
                  print('------ImageLabeling-----');
                }, child: Text('PoseDetection',style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
              ),),),
              //googleMLkittranslator
              SizedBox(height: 20),
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
                      MaterialPageRoute(builder: (context) => TextTranslation()));
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => ObjectDetectionScreen(cameras: cameras)));

                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => FaceDection2(cameras: cameras)));
                  print('------ImageLabeling-----');
                }, child: Text('Text Translator',style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
              ),),),
             //Smart Reply
              SizedBox(height: 20),
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
                      MaterialPageRoute(builder: (context) => SmartReplyScreen()));
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => ObjectDetectionScreen(cameras: cameras)));

                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => FaceDection2(cameras: cameras)));
                  print('------ImageLabeling-----');
                }, child: Text('Smart Reply',style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
              ),),),
              // Selfie Segmentation
              SizedBox(height: 20),
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
                      MaterialPageRoute(builder: (context) => SmartReplyScreen()));
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => ObjectDetectionScreen(cameras: cameras)));

                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => FaceDection2(cameras: cameras)));
                  print('------ImageLabeling-----');
                }, child: Text('Selfie Segmentation',style: TextStyle(
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
