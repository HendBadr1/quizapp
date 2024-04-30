
import 'package:flutter/material.dart';
import 'package:untitled/core/utils/App.colors.dart';

class CustomDivider extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return   const Divider(
      color:AppColors.primaryColor,
      thickness: 0.9,
      indent: 50,
      endIndent: 50,



    );
  }
}