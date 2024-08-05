import 'package:flutter/material.dart';

class CallsHeadrow extends StatelessWidget {
  const CallsHeadrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Calls',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 9, 16, 9),
          ),
        ),
        Spacer(),
        Icon(
          Icons.qr_code_scanner,
          size: 30,
        ),
        SizedBox(
          width: 15,
        ),
        Icon(
          Icons.camera_alt,
          size: 30,
        ),
        SizedBox(
          width: 10,
        ),
        Icon(
          Icons.search,
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
    );
  }
}
