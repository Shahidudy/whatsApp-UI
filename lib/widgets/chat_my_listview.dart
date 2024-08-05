import 'package:flutter/material.dart';

class ChatMyListview extends StatelessWidget {
  const ChatMyListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        myListTileRow(
          contactImage: const AssetImage('asset/images/b-1.jpg'),
          contactName: 'FLUTTER',
          messageTime: '11:20 AM',
          contactMessage: 'Ok done',
          unreadMessages: '10',
        ),
        myListTileRow(
          contactImage: const AssetImage('asset/images/b-2.jpg'),
          contactName: 'MERN',
          messageTime: '10:00 AM',
          contactMessage: 'Ok finished',
          unreadMessages: '200',
        ),
        myListTileRow(
          contactImage: const AssetImage('asset/images/b-3.jpg'),
          contactName: 'DJANGO',
          messageTime: '12:10 PM',
          contactMessage: 'Ok done',
          unreadMessages: '10',
        ),
        myListTileRow(
          contactImage: const AssetImage('asset/images/b-4.jpg'),
          contactName: 'JAVA',
          messageTime: '12:10 PM',
          contactMessage: 'Dont know',
          unreadMessages: '11',
        ),
        myListTileRow(
          contactImage: const AssetImage('asset/images/b-5.jpg'),
          contactName: 'MEAN',
          messageTime: '12:10 PM',
          contactMessage: 'Ok done',
          unreadMessages: '10',
        ),
        myListTileRow(
          contactImage: const AssetImage('asset/images/b-6.jpg'),
          contactName: 'DJANGO',
          messageTime: '12:10 PM',
          contactMessage: 'Ok done',
          unreadMessages: '100',
        ),
      ],
    );
  }

  Widget myListTileRow({
    context,
    required String contactName,
    required String contactMessage,
    required ImageProvider contactImage,
    required String messageTime,
    required String unreadMessages,
  }) {
    return SizedBox(
      height: 90,
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: contactImage,
              maxRadius: 27,
            ),
            title: Text(
              contactName,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(messageTime),
                Container(
                  height: 20,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text(
                      unreadMessages, style: TextStyle(color: Colors.white),
                      // textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
            subtitle: Row(
              children: [
                // Icon(myIcon),
                Text(
                  contactMessage,
                )
              ],
            ),
          ),
          // const Divider(),
        ],
      ),
    );
  }
}
