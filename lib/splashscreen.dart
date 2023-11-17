import 'dart:async';

import 'package:bmi/bmiscreen.dart';
import 'package:flutter/material.dart';
class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4),
        () => Navigator.push(context, MaterialPageRoute(builder: (context) =>bmi()))


    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(height:900,width: 500,child:Image.asset('assets/images/splash1.jpg')
         
        ),
      ));

  }
}
