import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  bool? listOrList = true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      height: height,
      width: width,
      padding: EdgeInsets.symmetric(horizontal: height * .05),
      child: SizedBox(
        child: Column(
          children: [
            SizedBox(
              // height: 50,
              child: Row(
                children: const [
                  Text('Hello Mr/Miss'),
                ],
              ),
            ),
            SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  listOrList == false
                      ? IconButton(
                          onPressed: () => setState(() {
                            listOrList = !listOrList!;
                          }),
                          icon: const Icon(Icons.grid_on),
                        )
                      : IconButton(
                          onPressed: () => setState(() {
                            listOrList = !listOrList!;
                          }),
                          icon: const Icon(Icons.view_list),
                        ),
                ],
              ),
            ),
            SizedBox(
              height: height * .75,
              child: listOrList == false
                  ? GridView.builder(
                      itemCount: 9,
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        // mainAxisExtent: 3,
                        crossAxisSpacing: 2,
                        mainAxisSpacing: 2,
                        // childAspectRatio: 1
                      ),
                      itemBuilder: (BuildContext context, int i) {
                        return Container(
                          height: 100,
                          width: 100,
                          color: Colors.red,
                          child: Center(child: Text('$i')),
                        );
                      })
                  : ListView.builder(
                      itemCount: 9,
                      itemBuilder: (BuildContext context, int i) {
                        return ListTile(
                          leading: const CircleAvatar(
                              backgroundColor: Colors.red, radius: 20),
                          title: Text('I am rated No $i'),
                          subtitle: Text('Hey hire your No $i'),
                          trailing: const Icon(Icons.mark_chat_read,
                              color: Colors.black),
                        );
                      }),
            ),
          ],
        ),
      ),
    ));
  }
}
