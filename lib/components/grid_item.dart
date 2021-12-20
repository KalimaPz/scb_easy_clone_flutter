import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  final String label;
  final Widget child;
  final Color backgroundColor;
  final bool darkMode;
  const GridItem({
    Key? key,
    required this.child,
    required this.label,
    this.backgroundColor = const Color(0x70D3D3D3),
    this.darkMode = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      width: MediaQuery.of(context).size.width / 3,
      height: MediaQuery.of(context).size.width / 3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              // color: Colors.red,
              child: child,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              // color: Colors.blue,
              child: Text(label.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: darkMode ? Colors.white : Colors.black87,
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 0.45)),
            ),
          ),

          SizedBox(
            height: 10,
          ),
          // child,
          // SizedBox(
          //   height: 10,
          // ),
          // Container(
          //   child: Text(label.toString(),
          //       textAlign: TextAlign.center,
          //       style: TextStyle(
          //           color: darkMode ? Colors.white : Colors.black87,
          //           fontSize: 14,
          //           fontWeight: FontWeight.w400,
          //           letterSpacing: 0.45)),
          // ),
        ],
      ),
    );
  }
}
