import 'package:flutter/material.dart';

class CommunitiesPage extends StatelessWidget {
  const CommunitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Row(
              children: [
                Text(
                  'Communities',
                  style: TextStyle(
                    fontSize: 25,
                    // fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 9, 16, 9),
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.camera_alt,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.more_vert,
                  size: 30,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Image(
              image: AssetImage(
                'asset/images/w-2.jpg',
              ),
              height: 200,
            ),
            Text(
              'Stay connected with a community',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              'Communities bring members together in\ntopic-based groups, and make it easy to get\nadmin announcements. Any community you are added to will appear here.',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'See example communities >',
              textAlign: TextAlign.center,
              style: TextStyle(color: Color.fromARGB(255, 22, 170, 27)),
            ),
            SizedBox(
              height: 26,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Start your community',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
