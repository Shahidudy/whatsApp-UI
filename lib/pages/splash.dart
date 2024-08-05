import 'dart:async';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/pages/newChatTwo.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    myTimer();
  }

  void myTimer() {
    Timer(
      Duration(seconds: 2),
      () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Newchattwo(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Center(
            child: Image.asset(
              'asset/images/w-3.png',
              width: 150,
              // height: 100,
            ),
          ),
          Spacer(),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0.5,
                  left: 180,
                  child: Image.asset(
                    'asset/images/met-1.png',
                    height: 80,
                    width: 80,
                  ),
                ),
                Positioned(
                  top: 19,
                  left: 200,
                  child: Center(
                    child: Text(
                      'from',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey[600]),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
