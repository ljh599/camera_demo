// ignore_for_file: avoid_print

import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CameraPage extends StatefulWidget {
  final List<CameraDescription>? cameras;
  final String imagepath;
  const CameraPage({this.cameras, required this.imagepath, Key? key})
      : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  late CameraController controller;

  @override
  void initState() {
    super.initState();
    controller = CameraController(
      widget.cameras![0],
      ResolutionPreset.medium,
    );
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return const SizedBox(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(title: const Text('Camera demo')),
      body: Column(
        children: <Widget>[
          Stack(
            alignment: FractionalOffset.center,
            children: <Widget>[
              SizedBox(
                width: 400,
                height: 650,
                child: AspectRatio(
                    aspectRatio: controller.value.aspectRatio,
                    child: CameraPreview(controller)),
              ),
              SizedBox(
                  height: 400,
                  width: 650,
                  child: Image.asset(widget.imagepath)),
            ],
          ),
          Expanded(
              child: Container(
            alignment: Alignment.center,
            color: Colors.black,
            child: FloatingActionButton(
              foregroundColor: Colors.grey,
              backgroundColor: Colors.white,
              onPressed: () async {
                try {
                  final image = await controller.takePicture();
                  print(image.path);
                  // If the picture was taken, display it on a new screen.
                  await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DisplayPictureScreen(
                        // Pass the automatically generated path to
                        // the DisplayPictureScreen widget.
                        imagePath: image.path,
                      ),
                    ),
                  );
                } catch (e) {
                  // If an error occurs, log the error to the console.
                  print(e);
                }
              },
              child: const Icon(Icons.camera_alt_outlined),
            ),
          ))
        ],
      ),
    );
  }
}

class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;

  const DisplayPictureScreen({Key? key, required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Display the Picture')),
        // The image is stored as a file on the device. Use the `Image.file`
        // constructor with the given path to display the image.
        body: Center(
            child: Image.file(
          File(imagePath),
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        )));
  }
}
