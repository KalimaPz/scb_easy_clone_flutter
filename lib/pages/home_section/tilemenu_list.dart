import 'package:flutter/material.dart';
import 'package:scb_clone/components/banner.dart' as MyBanner;

class TileMenuList extends StatelessWidget {
  const TileMenuList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          MyBanner.Banner(
            title: 'Loan & Credit Card',
            subtitle: 'สินเชื่อ และ บัตรเครดิต',
            imgUrl:
                'https://www.za.in.th/wp-content/uploads/what-is-a-personal-loan.jpg',
          ),
          MyBanner.Banner(
            title: 'Investment',
            subtitle: 'การลงทุน',
            imgUrl:
                'https://www.lehnerinvestments.com/wp-content/uploads/2021/10/Growing_Graph_Plant-780x438.jpg',
          ),
          MyBanner.Banner(
            title: 'Insuarance',
            subtitle: 'ประกัน',
            imgUrl: 'https://s.isanook.com/mn/0/ud/120/600225/insurance.jpg',
          ),
          MyBanner.Banner(
            title: 'Cryptocurrency',
            subtitle: 'คริปโทเคอเรนซี',
            imgUrl:
                'https://static.thairath.co.th/media/4DQpjUtzLUwmJZZSC5epKGpWEasD3JXpmOsOeGjdrFhM.jpg',
          ),
        ],
      ),
    );
  }
}
