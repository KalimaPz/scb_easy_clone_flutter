import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PromptPaySection extends StatelessWidget {
  const PromptPaySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
              child: Container(
            height: 45,
            color: Colors.grey[700],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.barcode,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('สแกน',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.65,
                        color: Colors.white))
              ],
            ),
          )),
          SizedBox(
            width: 2,
          ),
          Expanded(
              child: Container(
            height: 45,
            color: Colors.grey[700],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.qrcode,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('QR ของฉัน',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.65,
                        color: Colors.white))
              ],
            ),
          )),
        ],
      ),
    );
  }
}
