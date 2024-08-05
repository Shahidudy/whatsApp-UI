import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/widgets/update_head_row.dart';
import 'package:whatsapp_ui_clone/widgets/update_listTile.dart';

class UpdatesPage extends StatelessWidget {
  const UpdatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: ListView(
          children: [
            updateHeadRow(),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Status',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  statusRow(
                    myStatus: false,
                    needBorder: false,
                    status: true,
                    // profName: 'Marzooqi',
                    profPhoto: AssetImage('asset/images/b-1.jpg'),
                    statusImageVideo: AssetImage(
                      'asset/images/b-2.jpg',
                    ),
                  ),
                  statusRow(
                    status: false,
                    profName: 'Shameer',
                    profPhoto: AssetImage('asset/images/b-2.jpg'),
                    statusImageVideo: AssetImage(
                      'asset/images/b-3.jpg',
                    ),
                  ),
                  statusRow(
                    status: false,
                    profName: 'Samad',
                    profPhoto: AssetImage('asset/images/b-3.jpg'),
                    statusImageVideo: AssetImage(
                      'asset/images/b-4.jpg',
                    ),
                  ),
                  statusRow(
                    status: false,
                    profName: 'Nappu',
                    profPhoto: AssetImage('asset/images/b-4.jpg'),
                    statusImageVideo: AssetImage(
                      'asset/images/b-5.jpg',
                    ),
                  ),
                  statusRow(
                    status: false,
                    profName: 'Saleem',
                    profPhoto: AssetImage('asset/images/b-5.jpg'),
                    statusImageVideo: AssetImage(
                      'asset/images/b-6.jpg',
                    ),
                  ),
                  statusRow(
                    status: false,
                    profName: 'Sinan',
                    profPhoto: AssetImage('asset/images/b-6.jpg'),
                    statusImageVideo: AssetImage(
                      'asset/images/b-7.jpg',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Channels',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  ),
                  Text(
                    'Explore >',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 53, 117, 55),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            UpdateListtiles(
              profileimage: AssetImage('asset/images/b-1.jpg'),
              myTitle: 'Shameema',
              mySubTitle: 'Observed a moment of silent',
              unReadMessage: '120',
              myTime: '10:29 am',
              myIcon: Icons.video_call,
            ),
            UpdateListtiles(
              profileimage: AssetImage('asset/images/b-2.jpg'),
              myTitle: 'Sahla Batool',
              mySubTitle: 'Vayanad incident is ...',
              unReadMessage: '10',
              myTime: '12:00 am',
              myIcon: Icons.image,
            ),
            UpdateListtiles(
              profileimage: AssetImage('asset/images/b-3.jpg'),
              myTitle: 'Saleem',
              mySubTitle: 'ICCI is doing well..',
              unReadMessage: '100',
              myTime: '1:00 am',
              myIcon: Icons.video_call,
            ),
            UpdateListtiles(
              profileimage: AssetImage('asset/images/b-4.jpg'),
              myTitle: 'Shahid Muhammad',
              mySubTitle: 'Education Field mentioned His..',
              unReadMessage: '1000',
              myTime: '10:00 am',
              myIcon: Icons.image_aspect_ratio,
            ),
            UpdateListtiles(
              profileimage: AssetImage('asset/images/b-3.jpg'),
              myTitle: 'Raees Abdulla Khan',
              mySubTitle: 'kids like toys very...',
              unReadMessage: '12000',
              myTime: '09:30 am',
              myIcon: Icons.video_call,
            ),
          ],
        ),
      ),
    );
  }

  Widget statusRow({
    required ImageProvider statusImageVideo,
    required ImageProvider profPhoto,
    bool status = true,
    bool needBorder = true,
    String profName = "Add Status",
    bool myStatus = true,
  }) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Row(
        children: [
          Container(
            height: 140,
            width: 90,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 207, 205, 205),
              image: myStatus ? DecorationImage(image: statusImageVideo) : null,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 5,
                  left: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: needBorder
                          ? Border.all(width: 3, color: Colors.green)
                          : Border(),
                    ),
                    child: CircleAvatar(
                      backgroundImage: profPhoto,
                      // radius: 40,
                    ),
                  ),
                ),
                Positioned(
                  top: 23,
                  left: 22,
                  child: status
                      ? Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border:
                                  Border.all(width: 2, color: Colors.white)),
                          child: CircleAvatar(
                            backgroundColor: Colors.green,
                            maxRadius: 11,
                            child: Center(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      : SizedBox(),
                ),
                Positioned(
                    bottom: 6,
                    left: 6,
                    child: Text(
                      profName,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          shadows: [
                            Shadow(color: Colors.black, blurRadius: 10)
                          ]),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
