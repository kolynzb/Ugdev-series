import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ug_devs/views/homepage.dart';
import 'package:ug_devs/views/splashScreen.dart';

void main() {
  
  runApp(const UgDevs());
}

class UgDevs extends StatelessWidget {
  const UgDevs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UG Devs',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool? isFirstTimer = true;

  Future<bool> checkisFirstTimer() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      isFirstTimer = prefs.getBool('isFirstTimer') ?? true;
    });

    return isFirstTimer!;
  }

  

  

  @override
  void initState() {
    super.initState();
    checkisFirstTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isFirstTimer! ? const SplashScreen() : const HomePage(),
    );
  }
}
