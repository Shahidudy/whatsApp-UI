import 'package:flutter/material.dart';

Widget updateHeadRow() {
  return Row(
    children: [
      Text(
        'Updates',
        style: TextStyle(
          fontSize: 22,
          // fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 9, 16, 9),
        ),
      ),
      Spacer(),
      Icon(
        Icons.qr_code_scanner,
        size: 28,
      ),
      SizedBox(
        width: 15,
      ),
      Icon(
        Icons.camera_alt,
        size: 28,
      ),
      SizedBox(
        width: 10,
      ),
      Icon(
        Icons.search,
        size: 28,
      ),
      SizedBox(
        width: 10,
      ),
      Icon(
        Icons.more_vert,
        size: 28,
      )
    ],
  );
}
