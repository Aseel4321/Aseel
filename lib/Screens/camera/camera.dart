

import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:restaurant_experts/Screens/main/main.dart';

class Camera extends StatefulWidget{
  @override
  State<Camera> createState() => _CameraState();
}
var initializeControllerFuture;
bool k=false; late File filei;
late CameraController controller;
bool s=false;


class _CameraState extends State<Camera> {Future<void> intt(CameraDescription camera,int y) async {
  print('file.pathkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk');
  final cameras = await availableCameras();
  // اختيار كاميرا معينة من القائمة.
  final firstCamera = cameras[y];
  controller = CameraController(
    firstCamera,
    ResolutionPreset.medium,

  );
  controller.setFlashMode(FlashMode.off);
  initializeControllerFuture = controller.initialize();
  await initializeControllerFuture;
  setState(() {
  });

}  @override
void dispose() {
  controller.dispose();
  super.dispose();
}
  @override
  void initState() {
   intt(firstCamera,1);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(body:FutureBuilder(
     future:initializeControllerFuture,
     builder: (context, snapshot) {
       if (snapshot.connectionState == ConnectionState.done) {
         return Column(
           children: [
             Stack(children:[
               Container(height:MediaQuery.of(context).size.height,width:MediaQuery.of(context).size.width ,
                   child: CameraPreview(controller)),Positioned.fill(child: Align(alignment: Alignment.bottomRight,child: IconButton(onPressed:() async {
                     if(s==false){ intt(firstCamera,0);s=true;}else{intt(firstCamera,1);s=false;}
                    }, icon:Icon(Icons.camera,size:MediaQuery.of(context).size.width/8,)))),Positioned.fill(child: Align(alignment: Alignment.bottomCenter,child: IconButton(onPressed:() async {var  file = await controller.takePicture();print(file.path);
                      }, icon:Icon(Icons.camera_alt_outlined,size:MediaQuery.of(context).size.width/5,))))] ),
           ],
         );
       } else {
         return Center(child: CircularProgressIndicator());
       }
     },
   ));
    throw UnimplementedError();
  }
}