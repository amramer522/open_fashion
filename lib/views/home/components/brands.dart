import 'package:flutter/material.dart';
import 'package:open_fashion/core/design/app_image.dart';

class BrandsSection extends StatefulWidget {
  const BrandsSection({Key? key}) : super(key: key);

  @override
  State<BrandsSection> createState() => _BrandsSectionState();
}

class _BrandsSectionState extends State<BrandsSection> {
  List<String> list = [
    "https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/Burberry_Logo.svg/1200px-Burberry_Logo.svg.png",
    "https://e7.pngegg.com/pngimages/49/17/png-clipart-glasses-brand-logo-trademark-product-glasses-text-trademark.png",
    "https://banner2.cleanpng.com/20180531/yfz/kisspng-gucci-bloom-sunglasses-eyewear-logo-gucci-5b1038b3576032.6661089015277897473579.jpg",
    "https://e7.pngegg.com/pngimages/747/332/png-clipart-brand-logo-tiffany-co-product-design-tiffany-co-logo-blue-angle.png",
    "https://w7.pngwing.com/pngs/315/194/png-transparent-boss-hugo-boss-hd-logo.png",
    "https://thumbnail.imgbin.com/10/0/24/imgbin-logo-cartier-brand-watch-jewellery-watch-7p79pTdcaN80Ke4Qqr5RUVSTJ_t.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppImage("divider.svg"),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(20),
              scrollDirection: Axis.horizontal,
              itemCount: list.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 35, mainAxisSpacing: 20, childAspectRatio: 15 / 50),
              itemBuilder: (context, index) => AppImage(list[index]),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          AppImage("divider.svg"),
        ],
      ),
    );
  }
}
