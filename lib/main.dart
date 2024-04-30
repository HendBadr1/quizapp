import 'package:flutter/material.dart';
import 'package:untitled/core/utils/App.colors.dart';

import 'package:untitled/featuers/home/views/widgets/custom_home_body.dart';
import 'package:untitled/featuers/splash/splash_screen.dart';

void main(){
  runApp(QuizApp());



}
class QuizApp extends StatelessWidget{



  QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),







        );
  }}
