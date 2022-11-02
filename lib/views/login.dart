import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  setRecordNotFirstTimer() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('isFirstTimer', false);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setRecordNotFirstTimer();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  Center(
        child: Text('Login please'),
      ),
    );
  }
}
