import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.green,
      alignment: Alignment.center,
      // width: 64,
      // height: 64,
      child: Stack(
        children: [
          CircleAvatar(
            radius: 25,
          ),
          // Positioned(
          //   right: 3,
          //   bottom: 2,
          //   child: CircleAvatar(
          //     radius: 5,
          //     backgroundColor: Colors.red,
          //     child: Icon(
          //       Icons.add,
          //       color: Colors.white,
          //       size: 2,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
