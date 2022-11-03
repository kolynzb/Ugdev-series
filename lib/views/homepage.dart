import 'package:flutter/material.dart';
import 'bottomnav/exportBottom.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int? pageIndex;
  var pages = const [FirstPage(), Secondpg(), ThirdPage(), FourthPage()];

  void getUserIndex() => setState(() => pageIndex = 0);

  @override
  void initState() {
    super.initState();
    getUserIndex();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: pages[pageIndex!],
        bottomNavigationBar: Container(
          padding: const EdgeInsets.all(10),
          margin: EdgeInsets.only(
              bottom: height * .02, left: width * .02, right: width * .02),
          height: 70,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: <Color>[
                Color.fromARGB(255, 0, 0, 0),
                Color.fromARGB(255, 44, 44, 44),
                Color.fromARGB(255, 0, 0, 0),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.0, 1.0, 0.0],
              tileMode: TileMode.clamp,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () => setState(() => pageIndex = 0),
                child: Icon(
                  Icons.home,
                  color: pageIndex == 0 ? Colors.greenAccent : Colors.white,
                  size: pageIndex == 0 ? 30 : 20,
                ),
              ),
              GestureDetector(
                onTap: () => setState(() => pageIndex = 1),
                child: Icon(
                  Icons.account_tree,
                  color: pageIndex == 1 ? Colors.greenAccent : Colors.white,
                  size: pageIndex == 1 ? 30 : 20,
                ),
              ),
              GestureDetector(
                onTap: () => setState(() => pageIndex = 2),
                child: Icon(
                  Icons.notifications,
                  color: pageIndex == 2 ? Colors.greenAccent : Colors.white,
                  size: pageIndex == 2 ? 30 : 20,
                ),
              ),
              GestureDetector(
                onTap: () => setState(() => pageIndex = 3),
                child: Icon(
                  Icons.settings,
                  color: pageIndex == 3 ? Colors.greenAccent : Colors.white,
                  size: pageIndex == 3 ? 30 : 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
