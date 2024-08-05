import 'package:flutter/material.dart';

class ChatPageHeadRow extends StatelessWidget {
  const ChatPageHeadRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'WhatsApp',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 81, 192, 87),
              // shadows: [
              //   Shadow(color: Colors.black, offset: Offset(1, 1))
              //   ]
            ),
          ),
        ),
        Spacer(),
        Icon(
          Icons.qr_code_scanner,
          size: 30,
        ),
        SizedBox(
          width: 10,
        ),
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
    );
  }
}
