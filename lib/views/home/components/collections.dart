import 'package:flutter/material.dart';

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
            "Collections",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 16,),
          Container(
            height: 240,
            color: Colors.red,
          ),
          SizedBox(height: 40,),
          Container(
            height: 296,
            width: 260,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
