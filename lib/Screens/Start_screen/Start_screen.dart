import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Start_Screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
   return SafeArea(
     child: Scaffold(body:Container(child: Column(children: [
       Container(decoration: BoxDecoration( borderRadius: BorderRadius.only(
         bottomRight: Radius.circular(MediaQuery.of(context).size.height/10), // Adjust the values as needed
         bottomLeft: Radius.circular(MediaQuery.of(context).size.height/10), // Adjust the values as needed
       ),color: Color(0xffd7e3ec)) ,height:MediaQuery.of(context).size.height/4,width: MediaQuery.of(context).size.width,
          child:Column(children: [Expanded(child: Container()),Image.asset('assets/images/img_3.png',height: MediaQuery.of(context).size.height/7,width:MediaQuery.of(context).size.height/7 ,),Expanded(child: Container()),Row(children: [Expanded(child: Container()),Text('SIGN UP',style: TextStyle(fontSize: MediaQuery.of(context).size.width/12),),Expanded(child: Container()),Text('SIGN IN',style: TextStyle(fontSize: MediaQuery.of(context).size.width/12)),Expanded(child: Container())],),
          ],) ,)
     ,Expanded(child: Container()),
     Container(height:MediaQuery.of(context).size.height/9,width: MediaQuery.of(context).size.width,decoration: BoxDecoration( borderRadius: BorderRadius.only(
       topRight: Radius.circular(MediaQuery.of(context).size.height/15), // Adjust the values as needed
       topLeft: Radius.circular(MediaQuery.of(context).size.height/15), // Adjust the values as needed
     ),color: Color(0xffd7e3ec)) ,)],),) ,),
   );
    throw UnimplementedError();
  }
}