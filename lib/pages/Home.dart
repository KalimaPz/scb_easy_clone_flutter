import 'package:flutter/material.dart';
import 'package:scb_clone/pages/home_section/gridmenu_section.dart';
import 'package:scb_clone/pages/home_section/profile_section.dart';
import 'package:scb_clone/pages/home_section/promptpay_section.dart';
import 'package:scb_clone/pages/home_section/tilemenu_list.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  navItem(BuildContext context, IconData icon, index) {
    return GestureDetector(
      onTap: () => setState(() => currentIndex = index),
      child: Container(
        width: MediaQuery.of(context).size.width / 5,
        child: Icon(
          icon,
          size: 28,
          color: currentIndex == index ? Colors.purple[900] : Colors.grey,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            border:
                Border(top: BorderSide(width: 3.5, color: Colors.grey[200]!))),
        height: 80,
        child: Row(
          children: [
            navItem(context, Icons.home, 0),
            navItem(context, Icons.account_balance_wallet_outlined, 1),
            navItem(context, Icons.transform_rounded, 2),
            navItem(context, Icons.notifications_none_outlined, 3),
            navItem(context, Icons.list, 4),
          ],
        ),
      ),
      body: MediaQuery.removePadding(
          removeTop: true,
          context: context,
          child: ListView(
            children: [
              ProfileSection(),
              PromptPaySection(),
              GridMenuSection(),
              TileMenuList(),
            ],
          )),
    );
  }
}
