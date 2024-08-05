import 'package:flutter/material.dart';

class MyMultiChips extends StatefulWidget {
  const MyMultiChips({super.key});

  @override
  State<MyMultiChips> createState() => _MyMultiChipsState();
}

class _MyMultiChipsState extends State<MyMultiChips> {
  void onTappingFun(int index) {
    setState(() {
      myIndex = index;
    });
  }

  int myIndex = 0;
  List<String> headTexts = [
    'All',
    'Unread',
    'Favourites',
    'Groups',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        children: [
          headingRow(myText: headTexts[0], index: 0),
          headingRow(myText: headTexts[1], index: 1),
          headingRow(myText: headTexts[2], index: 2),
          headingRow(myText: headTexts[3], index: 3),
        ],
      ),
    );
  }

  Widget headingRow({
    required String myText,
    required int index,
  }) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: GestureDetector(
        onTap: () {
          onTappingFun(index);
        },
        child: Container(
          height: 30,
          width: 80,
          decoration: BoxDecoration(
              color: myIndex == index
                  ? Color.fromARGB(255, 174, 214, 175)
                  : Color.fromARGB(255, 236, 234, 234),
              borderRadius: BorderRadius.circular(30),
              shape: BoxShape.rectangle),
          child: Center(
              child: Text(
            myText,
            style: TextStyle(color: Colors.black),
          )),
        ),
      ),
    );
  }
}
