import 'dart:async';
import 'package:beamer/beamer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_experts/sharedpreference/sharedpreference.dart';



class mainViewModel extends ChangeNotifier {
String langname='ar';
  bool lang=false;
  Locale locale =const Locale("ar");
void timer(BuildContext context,String name){
  Timer(const Duration(seconds: 6),(){
    Beamer.of(context).beamToNamed('/StartScreen');
    print('dddd');
  });
  notifyListeners();
}
void lang_S(lang){
if(lang=='ar'){
  langname='عربي';
  }else{langname='English';}
  notifyListeners();
}


}