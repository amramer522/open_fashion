import 'package:flutter/material.dart';
import 'package:open_fashion/core/design/app_image.dart';

class SliderSection extends StatefulWidget {
  const SliderSection({Key? key}) : super(key: key);

  @override
  State<SliderSection> createState() => _SliderSectionState();
}

class _SliderSectionState extends State<SliderSection> {
  List<String> list = [
    "https://a.lmcdn.ru/product/R/T/RTLACU353201_20481348_9_v2_2x.jpg",
    "https://a.lmcdn.ru/pi/product/R/T/RTLABH214701_16875181_9_v1_2x.jpg",
    "https://a.lmcdn.ru/pi/img600x866/M/P/MP002XW0D0MQ_17123693_9_v1_2x.jpg",
    "https://www.koffer.ru/upload/iblock/fcb/gc6sfq0h4v9kwpoqp43i63o316bipftn.jpg",
    "https://www.koffer.ru/upload/iblock/874/lsuuugu450sms47oy4j07prntu24shu2.jpg",
    "https://www.koffer.ru/upload/iblock/b50/4vkh1ccoez8pxxvn7ahakifz9th5a3va.jpg"
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        // fit: StackFit.expand,
        children: [
          PageView.builder(
            itemBuilder: (context, index) => AppImage(
              list[index],
              fit: BoxFit.fill,
              // height: 600,
              width: double.infinity,
            ),
            onPageChanged: (value) {
              currentIndex = value;
              setState(() {});
            },
            itemCount: list.length,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.black.withOpacity(.4)),
                child: Text(
                  "Explore Collection".toUpperCase(),
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              if (list.length != 1)
                Padding(
                  padding: const EdgeInsets.only(bottom: 18),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(
                        list.length,
                        (index) => Padding(
                              padding: EdgeInsetsDirectional.only(end: 5),
                              child: AppImage(
                                index == currentIndex ? "dot_filled.svg" : "dot_outline.svg",
                                color: Colors.white,
                              ),
                            )),
                  ),
                ),
            ],
          )
        ],
      ),
    );
  }
}
