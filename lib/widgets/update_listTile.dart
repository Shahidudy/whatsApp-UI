import 'package:flutter/material.dart';

class UpdateListtiles extends StatelessWidget {
  const UpdateListtiles({
    super.key,
    required this.profileimage,
    required this.myTitle,
    required this.mySubTitle,
    required this.myIcon,
    required this.myTime,
    required this.unReadMessage,
  });

  final ImageProvider profileimage;
  final String myTitle;
  final String mySubTitle;
  final IconData myIcon;
  final String myTime;
  final String unReadMessage;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: profileimage,
      ),
      title: Text(myTitle),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(myTime),
          Container(
            height: 20,
            width: 30,
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(30)),
            child: Center(
              child: Text(
                unReadMessage, style: TextStyle(color: Colors.white),
                // textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
      subtitle: Row(
        children: [
          Icon(myIcon),
          Text(
            mySubTitle,
          )
        ],
      ),
    );
  }
}
