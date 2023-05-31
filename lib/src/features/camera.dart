import 'package:camera/camera.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CameraPage(),
    );
  }
}

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}



class _CameraPageState extends State<CameraPage> {

 
  bool _isLoading = true;
  late CameraController _cameraController;


 

  
  @override
  void dispose() {
    _cameraController.dispose();
    super.dispose();
    _initCamera();
  }


 

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return Container(
        color: Colors.white,
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      return CameraPreview(_cameraController);
    }
  }
}


