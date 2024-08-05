import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/pages/calls.dart';
import 'package:whatsapp_ui_clone/pages/commu.dart';
import 'package:whatsapp_ui_clone/pages/updates.dart';
import 'package:whatsapp_ui_clone/widgets/chat_my_listview.dart';
import 'package:whatsapp_ui_clone/widgets/chat_page_head.dart';
import 'package:whatsapp_ui_clone/widgets/chat_search_form_field.dart';
import 'package:whatsapp_ui_clone/widgets/chat_my_chips.dart';

class MyChats extends StatefulWidget {
  const MyChats({super.key});

  @override
  State<MyChats> createState() => _MyChatsState();
}

class _MyChatsState extends State<MyChats> {
  int myIndex = 0;
  List pages = [
    MyChats(),
    UpdatesPage(),
    CommunitiesPage(),
    CallsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ChatPageHeadRow(),
              ChatSearchFormField(),
              MyMultiChips(),
              ChatMyListview(),
            ],
          ),
        ),
      ),
    );
  }
}
