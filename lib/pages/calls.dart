import 'dart:core';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/widgets/callsListTile.dart';
import 'package:whatsapp_ui_clone/widgets/calls_headRow.dart';

class CallsPage extends StatelessWidget {
  const CallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
          child: ListView(
            children: [
              CallsHeadrow(),
              Text(
                'Favorites',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              ListTile(
                title: Text(
                  'Add to Favorites',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: CircleAvatar(
                  child: Icon(Icons.favorite),
                ),
              ),
              Text(
                'Recent',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
              ),
              callsListTile(
                contactImage: AssetImage('asset/images/b-1.jpg'),
                contactSubTitle: 'Yesterday 12:32 pm',
                contctName: 'Aaron Sam Dubai',
                myIcon: Icon(Icons.call),
              ),
              callsListTile(
                contactImage: AssetImage('asset/images/b-2.jpg'),
                contactSubTitle: 'Yesterday 12:32 pm',
                contctName: 'Arman Anaya Al-Nahda',
                myIcon: Icon(Icons.video_call),
              ),
              callsListTile(
                contactImage: AssetImage('asset/images/b-3.jpg'),
                contactSubTitle: 'Yesterday 12:50 pm',
                contctName: 'Zahra Dubai',
                myIcon: Icon(Icons.call),
              ),
              callsListTile(
                contactImage: AssetImage('asset/images/b-4.jpg'),
                contactSubTitle: 'Yesterday 12:32 pm',
                contctName: 'Gautham Sharjah',
                myIcon: Icon(Icons.video_call),
              ),
              callsListTile(
                contactImage: AssetImage('asset/images/b-5.jpg'),
                contactSubTitle: 'Yesterday 12:32 pm',
                contctName: 'Miqdad Dubai',
                myIcon: Icon(Icons.call),
              ),
              callsListTile(
                contactImage: AssetImage('asset/images/b-6.jpg'),
                contactSubTitle: 'Yesterday 10:00 pm',
                contctName: 'Anamika Sharjah',
                myIcon: Icon(Icons.call),
              ),
              callsListTile(
                contactImage: AssetImage('asset/images/b-7.jpg'),
                contactSubTitle: 'Yesterday 12:32 pm',
                contctName: 'Nishan Sam Dubai',
                myIcon: Icon(Icons.call),
              ),
              callsListTile(
                contactImage: AssetImage('asset/images/b-8.jpg'),
                contactSubTitle: 'Yesterday 12:32 pm',
                contctName: 'Anaya Sam Dubai',
                myIcon: Icon(Icons.video_call),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
