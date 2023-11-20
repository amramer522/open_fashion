import 'package:flutter/material.dart';
import 'package:open_fashion/core/design/app_image.dart';

class FollowUsSection extends StatefulWidget {
  const FollowUsSection({Key? key}) : super(key: key);

  @override
  State<FollowUsSection> createState() => _FollowUsSectionState();
}

class _FollowUsSectionState extends State<FollowUsSection> {
  List<PersonMode> list = [
    PersonMode(title: "@mia", url: "url", image: "https://cbgd.ask.fm/58f/61a82/db17/44a5/af78/e515a172dd93/original/116234.jpg"),
    PersonMode(title: "@_jihyn", url: "url", image: "https://i.pinimg.com/originals/8b/e4/32/8be432950e675254eb7d535214f7a779.jpg"),
    PersonMode(title: "@mia", url: "url", image: "https://ic.pics.livejournal.com/pro_ramt/13398512/113582/113582_600.jpg"),
    PersonMode(title: "@_jihyn", url: "url", image: "https://ic.pics.livejournal.com/pro_ramt/13398512/113582/113582_600.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 460,
      padding: EdgeInsets.symmetric(horizontal: 16),
      margin: EdgeInsets.only(top: 17),
      child: Column(
        children: [
          Text(
            "Follow Us".toUpperCase(),
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          AppImage("instgram.svg"),
          SizedBox(
            height: 19,
          ),
          Expanded(
              child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
            ),
            itemCount: list.length,
            itemBuilder: (context, index) => Stack(
              alignment: AlignmentDirectional.bottomCenter,
              fit: StackFit.expand,
              children: [
                AppImage(
                  list[index].image,
                  fit: BoxFit.cover,
                ),
                Align(
                  alignment: AlignmentDirectional.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 9, vertical: 8),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: AlignmentDirectional.topCenter,
                        end: AlignmentDirectional.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0),
                          Colors.black,
                        ],
                      ),
                    ),
                    child: Text(
                      list[index].title,
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class PersonMode {
  late String image, title, url;

  PersonMode({required this.image, required this.title, required this.url});
}
