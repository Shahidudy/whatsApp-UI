import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/pages/calls.dart';
import 'package:whatsapp_ui_clone/pages/chats.dart';
import 'package:whatsapp_ui_clone/pages/commu.dart';
import 'package:whatsapp_ui_clone/pages/updates.dart';

class Newchattwo extends StatefulWidget {
  const Newchattwo({super.key});

  @override
  State<Newchattwo> createState() => _NewchattwoState();
}

int mySelectedIndex = 0;

class _NewchattwoState extends State<Newchattwo> {
  void tapItemFunction(int tappingIndex) {
    setState(() {
      mySelectedIndex = tappingIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    List _pages = [
      MyChats(),
      UpdatesPage(),
      CommunitiesPage(),
      CallsPage(),
    ];
    return Scaffold(
      body: _pages[mySelectedIndex],
      bottomNavigationBar: BottomAppBar(
        height: 90,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              navColumn(
                myText: 'Chat',
                mySelectedIcon: Icons.message,
                myUnselectedIcon: Icons.message_outlined,
                tapableIndex: 0,
                // myColor: Colors.lightGreen,
              ),
              navColumn(
                  myText: 'Updates',
                  mySelectedIcon: Icons.update,
                  myUnselectedIcon: Icons.update_outlined,
                  // myColor: isSelected ? Colors.lightGreen : Colors.transparent,
                  tapableIndex: 1),
              navColumn(
                  myText: 'Communities',
                  mySelectedIcon: Icons.people,
                  myUnselectedIcon: Icons.people_outline,
                  // myColor: isSelected ? Colors.lightGreen : Colors.transparent,
                  tapableIndex: 2),
              navColumn(
                  myText: 'Calls',
                  mySelectedIcon: Icons.call,
                  myUnselectedIcon: Icons.call_outlined,
                  // myColor: isSelected ? Colors.lightGreen : Colors.transparent,
                  tapableIndex: 3),
            ],
          ),
        ),
      ),
    );
  }

  Widget navColumn(
      {required IconData mySelectedIcon,
      required IconData myUnselectedIcon,
      required String myText,
      required int tapableIndex}) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            tapItemFunction(tapableIndex);
          },
          child: Container(
            padding: EdgeInsets.only(top: 5),
            width: 65,
            decoration: BoxDecoration(
                color: mySelectedIndex == tapableIndex
                    ? Colors.lightGreen
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(25)),
            child: Icon(
              mySelectedIndex == tapableIndex
                  ? mySelectedIcon
                  : myUnselectedIcon,
              size: 30,
            ),
          ),
        ),
        Text(myText),
      ],
    );
  }
}
