import 'package:flutter/material.dart';

class TrendingSection extends StatefulWidget {
  const TrendingSection({Key? key}) : super(key: key);

  @override
  State<TrendingSection> createState() => _TrendingSectionState();
}

class _TrendingSectionState extends State<TrendingSection> {
  List<String> list = ["#2021", "#spring", "#collection", "#fall", "#dress", "#autumncollection", "#openfashion"];

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 140,
      padding: EdgeInsets.symmetric(horizontal: 16),
      margin: EdgeInsets.only(top: 44, bottom: 22),
      child: Column(
        children: [
          Text(
            "@Trending".toUpperCase(),
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 12,),
          Wrap(
            runSpacing: 8,
            spacing: 8,
            children: List.generate(
              list.length,
              (index) => Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                child: Text(list[index],style: TextStyle(fontSize: 14),),
                decoration: BoxDecoration(
                  color: Color(0xffF9F9F9),
                  borderRadius: BorderRadius.circular(30)
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
