import 'package:flutter/material.dart';

import '../../../core/design/app_image.dart';

class CollectionsSection extends StatelessWidget {
  const CollectionsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 640,
      margin: EdgeInsets.only(top: 46),
      child: Column(
        children: [
          Text(
            "Collections".toUpperCase(),
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 16,
          ),
          AppImage(
            "https://firebasestorage.googleapis.com/v0/b/sec3test.appspot.com/o/Frame%202.png?alt=media&token=b10c6936-5d0f-45f3-9671-dbea6adde158",
            height: 240,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 40,
          ),
          AppImage(
            "https://firebasestorage.googleapis.com/v0/b/sec3test.appspot.com/o/Frame%202.png?alt=media&token=b10c6936-5d0f-45f3-9671-dbea6adde158",
            height: 296,
            width: 260,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
