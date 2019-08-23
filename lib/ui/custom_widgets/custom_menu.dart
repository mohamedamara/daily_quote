import 'package:flutter/material.dart';

class CustomMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 4),
      height: 23,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 2,
            width: 23,
            color: Colors.white,
          ),
          Container(
            height: 2.6,
            width: 34,
            color: Colors.white,
          ),
          Container(
            height: 2,
            width: 23,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
