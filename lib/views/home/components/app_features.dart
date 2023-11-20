import 'package:flutter/material.dart';
import 'package:open_fashion/core/design/app_image.dart';

class AppFeaturesSection extends StatelessWidget {
  const AppFeaturesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 465,
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(top: 22),
      color: Color(0xffF2F2F2),
      child: Column(
        children: [
          SizedBox(height: 16),
          AppImage("logo.svg",),
          SizedBox(height: 16),
          Text(
            "Making a luxurious lifestyle accessible for a generous group of women is our daily drive.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: Color(0xff555555)),
          ),
          SizedBox(
            height: 10,
          ),
          AppImage("divider.svg"),
          SizedBox(
            height: 18,
          ),
          Expanded(
            child: Row(
              children: [
                _Item(
                  text: "Fast shipping. Free on orders over \$25.",
                  image: "fast_shipping.png",
                ),
                SizedBox(width: 33),
                _Item(
                  image: "sustainable.png",
                  text: "Sustainable process from start to finish.",
                ),
              ],
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Expanded(
            child: Row(
              children: [
                _Item(
                  text: "Unique designs and high-quality materials.",
                  image: "unique_designs.png",
                ),
                SizedBox(width: 33),
                _Item(
                  image: "free_on_order.png",
                  text: "Fast shipping. Free on orders over \$25.",
                ),
              ],
            ),
          ),
          SizedBox(
            height: 33,
          ),
          AppImage("features.svg"),
          SizedBox(
            height: 28,
          ),
        ],
      ),
    );
  }
}

class _Item extends StatelessWidget {
  final String image, text;

  const _Item({Key? key, required this.image, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          AppImage(
            image,
            height: 38,
            width: 54,
          ),
          SizedBox(height: 8,),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13,
              color: Color(0xff555555),
            ),
          )
        ],
      ),
    );
  }
}
