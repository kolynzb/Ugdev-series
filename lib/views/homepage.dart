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

  void getUserIndex() {
    setState(() => pageIndex = 0);
  }

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
          margin: EdgeInsets.only(bottom: height * .02),
          height: 70,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                const Color(0xFF3366FF),
                const Color(0xFF00CCFF),
                const Color(0xFF3366FF),
              ],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0, 0.0],
              tileMode: TileMode.clamp,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                  onTap: () {
                    setState(() => pageIndex = 1);
                  },
                  child: const Icon(
                    Icons.account_tree,
                    color: Colors.white,
                  )),
              GestureDetector(
                  onTap: () {
                    setState(() => pageIndex = 0);
                  },
                  child: const Icon(
                    Icons.home,
                    color: Colors.white,
                  )),
              GestureDetector(
                  onTap: () {
                    setState(() => pageIndex = 2);
                  },
                  child: const Icon(
                    Icons.settings,
                    color: Colors.white,
                  )),
              GestureDetector(
                  onTap: () {
                    setState(() => pageIndex = 3);
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
