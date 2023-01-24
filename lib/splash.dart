import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spice_box/login.dart';
import 'package:spice_box/start.dart';

class splash extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EasySplashScreen(
        logo: Image(image: AssetImage('ast/img/splash.png'),fit: BoxFit.cover),
        logoWidth: 0.0,
        backgroundImage: AssetImage('ast/img/splash.png'),
        navigator: login(),
        durationInSeconds: 2,
        showLoader: false,
      ),
    );
  }

}