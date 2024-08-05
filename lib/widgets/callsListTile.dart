import 'package:flutter/material.dart';

Widget callsListTile({
  required String contctName,
  required String contactSubTitle,
  required Icon myIcon,
  required ImageProvider contactImage,
}) {
  return ListTile(
    title: Text(contctName),
    subtitle: Text(contactSubTitle),
    trailing: Icon(Icons.call),
    leading: CircleAvatar(
      backgroundImage: contactImage,
      radius: 30,
    ),
  );
}
