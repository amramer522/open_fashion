import 'package:flutter/material.dart';
import 'package:open_fashion/core/design/app_image.dart';
import 'package:open_fashion/views/home/model.dart';

class ItemProduct extends StatelessWidget {
  final ProductModel model;

  const ItemProduct({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 5,
          child: AppImage(
            model.image,
          ),
        ),
        Expanded(
            child: Column(
          children: [
            SizedBox(
              height: 4,
            ),
            Flexible(
              child: Text(
                model.title,
                maxLines: 2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff333333),
                ),
              ),
            ),
            Text(
              "\$${model.price}",
              style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 15),
            )
          ],
        ))
      ],
    );
  }
}
