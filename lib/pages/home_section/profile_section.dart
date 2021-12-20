import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scb_clone/components/profile_avatar.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://www.wealthandfinance-news.com/wp-content/uploads/2021/04/investment.jpg'),
              fit: BoxFit.cover)),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProfileAvatar(),
              // CircleAvatar(
              //   minRadius: 30,
              // ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'สวัสดี',
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('ดลนุกฤษฐ์', style: TextStyle(fontSize: 16)),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.mapMarkerAlt,
                        size: 16,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Pak Phanang', style: TextStyle(fontSize: 14)),
                    ],
                  )
                ],
              ))
            ],
          ),
        ],
      ),
    );
  }
}
