import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/core/utils/text.dart';
import 'package:untitled/core/widgets/appbar.dart';
import 'package:untitled/featuers/home/views/widgets/custom_home_body.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context){
    return Directionality(textDirection: (TextDirection.rtl),
    child: Scaffold(
    appBar: AppBar(
    toolbarHeight: 100,
    flexibleSpace: CustomAppBar(
      name: AppText.appname,
    ),
    ),
    body: CustomHomeBody(),

    ) );

  }
}