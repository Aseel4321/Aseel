import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:camera/camera.dart';
class cameraViewModel extends ChangeNotifier{
  var initializeControllerFuture;
  bool k=false; late File filei;
  late CameraController controller;
  TextEditingController Code=TextEditingController();
  bool vtrue=false;
  Future<void> intt(CameraDescription camera,int y) async {
    print('file.pathkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk');
    final cameras = await availableCameras();

    final firstCamera = cameras[y];
    controller = CameraController(
      firstCamera,
      ResolutionPreset.medium,

    );
    controller.setFlashMode(FlashMode.off);
    initializeControllerFuture = controller.initialize();await initializeControllerFuture;

    print('ggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg');

notifyListeners();

  }


}