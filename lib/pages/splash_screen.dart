


import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mainscreen.dart';

class SplashScreen extends StatefulWidget {

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder:
              (context) => MainScreen(),
          )
          );
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/WhatsApp.png", width: 250,)
          ],
        ),
      ),
    );
  }
}

