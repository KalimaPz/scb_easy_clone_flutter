import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scb_clone/components/grid_item.dart';

class GridMenuSection extends StatelessWidget {
  const GridMenuSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
        crossAxisCount: 3,
        children: [
          GridItem(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(),
                  CircleAvatar(),
                  CircleAvatar(),
                ],
              ),
              label: 'บัญชีครอบครัว และ เพื่อน'),
          GridItem(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(),
                  CircleAvatar(),
                  CircleAvatar(),
                ],
              ),
              label: 'มือถือ และเนต'),
          GridItem(
              darkMode: true,
              backgroundColor: Colors.purple[800]!,
              child: FaIcon(
                FontAwesomeIcons.home,
                color: Colors.white,
              ),
              label: 'ธุรกรรมของฉัน'),
          GridItem(
            child: CircleAvatar(
                backgroundColor: Colors.grey,
                child: FaIcon(
                  FontAwesomeIcons.passport,
                  color: Colors.white,
                )),
            label: 'Easy Pass',
          ),
          GridItem(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(),
                CircleAvatar(),
                CircleAvatar(),
              ],
            ),
            label: 'ค่าน้ำ ค่าไฟ',
          ),
          GridItem(
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                child: FaIcon(
                  FontAwesomeIcons.mobile,
                  color: Colors.white,
                ),
              ),
              label: 'โอนผ่านพร้อมเพย์'),
        ],
      ),
    );
  }
}
