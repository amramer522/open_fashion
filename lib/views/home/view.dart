import 'package:flutter/material.dart';
import 'package:open_fashion/views/home/components/brands.dart';
import 'package:open_fashion/views/home/components/new_arrival.dart';
import 'package:open_fashion/views/home/components/slider.dart';

import '../../core/design/app_image.dart';
import 'components/app_features.dart';
import 'components/collections.dart';
import 'components/contact.dart';
import 'components/follow_us.dart';
import 'components/just_for_you.dart';
import 'components/trending.dart';
import 'components/video_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {},
          child: AppImage(
            "drawer.svg",
            height: 24,
            width: 24,
          ),
        ),
        title: AppImage(
          "logo.svg",
          width: 78,
          height: 31,
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: AppImage(
              "search.svg",
              height: 24,
              width: 24,
            ),
          ),
          SizedBox(
            width: 16,
          ),
          GestureDetector(
            onTap: () {},
            child: AppImage(
              "cart.svg",
              height: 24,
              width: 24,
            ),
          ),
          SizedBox(
            width: 23,
          ),
        ],
      ),
      body: ListView(
        children: [
          // SliderSection(),
          // NewArrivalSection(),
          // BrandsSection(),
          // CollectionsSection(),
          VideoSection(),
          JustForYouSection(),
          TrendingSection(),
          AppFeaturesSection(),
          FollowUsSection(),
          ContactSection(),
        ],
      ),
    );
  }
}
