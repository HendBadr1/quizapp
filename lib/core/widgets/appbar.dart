import 'package:flutter/material.dart';
import 'package:untitled/core/utils/App.colors.dart';

class CustomAppBar extends StatelessWidget {
  final String name;

  const CustomAppBar({super.key, required this.name});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xff006672),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child:
        Text(name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        )
    );
  }
}
