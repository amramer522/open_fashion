import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppImage extends StatelessWidget {
  final String path;
  final double? height, width;
  final BoxFit fit;
  final Color? color;

  const AppImage(this.path, {Key? key, this.height, this.width, this.fit = BoxFit.scaleDown, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (path.endsWith("svg")) {
      return SvgPicture.asset(
        "assets/icons/svg/$path",
        height: height,
        width: width,
        fit: fit,
        color: color,
      );
    } else if (path.startsWith("http")) {
      return Image.network(
        path,
        height: height,
        width: width,
        fit: fit,
        errorBuilder: (context, error, stackTrace) => Text("Error"),
      );
    } else {
      return Image.asset(
        "assets/icons/$path",
        height: height,
        width: width,
        fit: fit,
        errorBuilder: (context, error, stackTrace) => Text("Error"),
      );
    }
  }
}


