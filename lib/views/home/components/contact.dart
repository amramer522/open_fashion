import 'package:flutter/material.dart';
import 'package:open_fashion/core/design/app_image.dart';

class ContactSection extends StatefulWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  List<String> list = [
    "twitter.svg",
    "instagram_filled.svg",
    "youtube.svg",
  ];

  List<String> pages = [
    "About",
    "Contact",
    "Blog",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 18),
      // height: 340,
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
              list.length,
              (index) => Padding(
                padding: EdgeInsetsDirectional.only(end: index == list.length - 1 ? 0 : 45),
                child: AppImage(
                  list[index],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          AppImage("divider.svg"),
          SizedBox(
            height: 18,
          ),
          Text(
            "support@openui.design",
            style: TextStyle(fontSize: 16, color: Color(0xff333333)),
          ),
          Text(
            "+60 825 876",
            style: TextStyle(fontSize: 16, color: Color(0xff333333)),
          ),
          Text(
            "08:00 - 22:00 - Everyday",
            style: TextStyle(fontSize: 16, color: Color(0xff333333)),
          ),
          SizedBox(
            height: 18,
          ),
          AppImage("divider.svg"),
          SizedBox(
            height: 32,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
              pages.length,
              (index) => Padding(
                padding: EdgeInsetsDirectional.only(end: index == pages.length - 1 ? 0 : 52),
                child: Text(
                  pages[index],
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            color: Colors.grey[100],
            child: Center(
                child: Text(
              "Copyright© OpenUI All Rights Reserved.",
              style: TextStyle(
                fontSize: 12,
                color: Color(0xff555555),
              ),
            )),
          )
        ],
      ),
    );
  }
}
