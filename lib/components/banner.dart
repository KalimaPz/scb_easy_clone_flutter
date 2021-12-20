import 'package:flutter/material.dart';

class Banner extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imgUrl;
  const Banner({
    Key? key,
    this.title = "",
    this.subtitle = "",
    this.imgUrl = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width / 3,
      margin: const EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
          image:
              DecorationImage(image: NetworkImage(imgUrl), fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('$title',
                style: TextStyle(
                    shadows: [
                      Shadow(
                          blurRadius: 10,
                          offset: Offset(1, 1),
                          color: Colors.black.withOpacity(0.9)),
                    ],
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w600)),
            Text('$subtitle',
                style: TextStyle(
                    shadows: [
                      Shadow(
                          blurRadius: 10,
                          offset: Offset(1, 2),
                          color: Colors.black.withOpacity(0.9)),
                    ],
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w600)),
          ],
        ),
      ),
    );
  }
}
