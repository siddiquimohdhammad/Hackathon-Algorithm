import 'package:farmerconnect/splash.dart';
import 'package:flutter/material.dart';



void main()async{
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      brightness: Brightness.light,
    ),
    home:splashScreen(),
   
  ));
}