import 'package:flutter/material.dart';
import 'bottomnav/exportBottom.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageindex = 0;
  var pages = [FirstPage(), Secondpg(), ThirdPage(), FourthPage()];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: pages[pageindex],
        bottomNavigationBar: Container(
          padding: const EdgeInsets.all(10),
          margin: EdgeInsets.only(bottom: height * .02),
          height: 70,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                  onTap: () {
                    setState(() => pageindex = 1);
                  },
                  child: const Icon(
                    Icons.account_tree,
                    color: Colors.white,
                  )),
              GestureDetector(
                  onTap: () {
                    setState(() => pageindex = 0);
                  },
                  child: const Icon(
                    Icons.home,
                    color: Colors.white,
                  )),
              GestureDetector(
                  onTap: () {
                    setState(() => pageindex = 2);
                  },
                  child: const Icon(
                    Icons.settings,
                    color: Colors.white,
                  )),
              GestureDetector(
                  onTap: () {
                    setState(() => pageindex = 3);
                  },
                  child: const Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
