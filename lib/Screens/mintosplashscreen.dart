import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'mintologin.dart';

class MintoSplash extends StatefulWidget {
  const MintoSplash({Key? key}) : super(key: key);

  @override
  State<MintoSplash> createState() => _MintoSplashState();
}

class _MintoSplashState extends State<MintoSplash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: Container(
          child: Image.asset('assets/images/minto-logo-png-transparent.png'),
        ),
        duration: 3000,
        nextScreen: const MintoLoginPage(),
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }
}
