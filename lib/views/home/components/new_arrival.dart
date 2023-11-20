import 'dart:math';

import 'package:flutter/material.dart';
import 'package:open_fashion/core/design/app_image.dart';

import '../model.dart';
import 'item_product.dart';

class NewArrivalSection extends StatefulWidget {
  const NewArrivalSection({Key? key}) : super(key: key);

  @override
  State<NewArrivalSection> createState() => _NewArrivalSectionState();
}

class _NewArrivalSectionState extends State<NewArrivalSection> {
  final list = ["All", "Apparel", "Dress", "Tshirt", "Bag"];
  int selectedCategory = 0;
  List<ProductModel> products = [
    ProductModel(id: 0, title: "21WN  angora cardigan", price: 120, image: "https://a.lmcdn.ru/pi/img600x866/M/P/MP002XW0HBQY_10152772_9_v2_2x.jpg"),
    ProductModel(id: 0, title: "22WN reversible angora cardigan", price: 200, image: "https://static.tildacdn.com/tild3034-3831-4965-b134-356431333836/IMG_7720.jpg"),
    ProductModel(id: 0, title: "23WN reversible  cardigan", price: 155, image: "https://image.geeko.ltd/original/65c2dbc5-337d-4f38-a3d1-010f4e0540a7-26105-pc-sec"),
    ProductModel(id: 0, title: "24WN reversible angora", price: 99, image: "https://a.lmcdn.ru/pi/img600x866/R/T/RTLAAZ779001_16079304_3_v1_2x.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 736,
      margin: EdgeInsets.only(top: 27),
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.only(bottom: 16),
        children: [
          Center(
            child: Text(
              "new arrival".toUpperCase(),
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          AppImage("divider.svg"),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 36,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 42),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  selectedCategory = index;
                  setState(() {});
                },
                child: Column(
                  children: [
                    Text(
                      list[index],
                      style: TextStyle(fontSize: 14, color: Color(selectedCategory == index ? 0xff212806 : 0xff888888)),
                    ),
                    if (selectedCategory == index) AppImage("dot.svg")
                  ],
                ),
              ),
              separatorBuilder: (context, index) => SizedBox(
                width: 22,
              ),
              itemCount: list.length,
            ),
          ),
          Expanded(
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              itemCount: 4,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 12, mainAxisSpacing: 12, childAspectRatio: 165 / 260),
              itemBuilder: (context, index) => ItemProduct(model: products[index]),
            ),
          ),
          SizedBox(
            height: 19,
          ),
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Explore More",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                AppImage("forward_arrow.svg")
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
