import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ug_devs/views/login.dart';

import 'homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool? checkIfNew = false;

  void moveToNexxxtScreen(bool checkIfNew) {
    if (checkIfNew == true) {
      Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (BuildContext context) => const Login()),
        ),
      );
    } else {
      Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
          MaterialPageRoute(
              builder: (BuildContext context) => const HomePage()),
        ),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    moveToNexxxtScreen(checkIfNew!);
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Text('Welcome to UG DEVs'),
        ),
      ),
    );
  }
}
