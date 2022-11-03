import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: height,
          width: width,
          // color: Colors.black,
          padding: EdgeInsets.symmetric(horizontal: height * .05),
          child: Expanded(
              child: SizedBox(
                  child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
                child: Row(
                  children: const <Widget>[
                    Text("Hello Mr/Miss"),
                  ],
                ),
              ),
              SizedBox(
                height: height * .75,
                child: ListView.builder(
                  itemCount: 9,
                  itemBuilder: (BuildContext, int) {
                    return ListTile(
                      leading: const CircleAvatar(
                          backgroundColor: Colors.red, radius: 25),
                      title: Text("I am Rated Number $int"),
                      subtitle: Text("Hey hire your Number $int"),
                      trailing:
                          const Icon(Icons.mark_chat_read, color: Colors.black),
                    );
                  },
                ),
              )
            ],
          ))),
        ),
      ),
    );
  }
}
