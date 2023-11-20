import 'package:flutter/material.dart';
import 'package:open_fashion/core/design/app_image.dart';

import '../model.dart';
import 'item_product.dart';

class JustForYouSection extends StatefulWidget {
  const JustForYouSection({Key? key}) : super(key: key);

  @override
  State<JustForYouSection> createState() => _JustForYouSectionState();
}

class _JustForYouSectionState extends State<JustForYouSection> {
  List<ProductModel> products = [
    ProductModel(id: 0, title: "21WN  angora cardigan", price: 300, image: "https://a.lmcdn.ru/pi/img600x866/M/P/MP002XW05H1X_13427263_2_v1_2x.jpg"),
    ProductModel(id: 0, title: "22WN reversible angora cardigan", price: 1200, image: "https://a.lmcdn.ru/pi/img600x866/M/P/MP002XW0AD32_15779528_2_v1_2x.jpg"),
    ProductModel(id: 0, title: "23WN reversible  cardigan", price: 999, image: "https://a.lmcdn.ru/pi/img600x866/M/P/MP002XW03KWF_12513855_2_v1_2x.jpg"),
    ProductModel(id: 0, title: "24WN reversible angora", price: 400, image: "https://media.gen.ru/insecure/rs:fit:1000:1000:no:0/el:0/plain/local:/p/28040/wu03w502_20_1000x1000.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 531,
      margin: EdgeInsets.only(top: 22),
      child: Column(
        children: [
          Text(
            "Just for You".toUpperCase(),
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 8),
          AppImage("divider.svg"),
          SizedBox(height: 8),
          Expanded(
              child: GridView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              crossAxisSpacing: 12,
              mainAxisSpacing: 10,
              childAspectRatio: 390 / 255,
            ),
            itemBuilder: (context, index) => ItemProduct(
              model: products[index],
            ),
          )),
          SizedBox(height: 8),
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(
                  3,
                  (index) => Padding(
                        padding: EdgeInsetsDirectional.only(end: 5),
                        child: AppImage(
                          index == 0 ? "dot_filled.svg" : "dot_outline.svg",
                        ),
                      )),
            ),
          )
        ],
      ),
    );
  }
}
