import 'package:flutter/material.dart';

class CustomCalendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          width: 27,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 7,
                width: 1.5,
                color: Colors.white,
              ),
              Container(
                height: 7,
                width: 1.5,
                color: Colors.white,
              ),
            ],
          ),
        ),
        Positioned(
          top: 3,
          child: Container(
            height: 27,
            width: 30,
            decoration: ShapeDecoration(
              color: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(3),
                ),
                side: BorderSide(
                  style: BorderStyle.solid,
                  color: Colors.white,
                  width: 1.5,
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 6,
                  decoration: ShapeDecoration(
                    shape: Border(
                      bottom: BorderSide(
                        width: 1.5,
                        color: Colors.white,
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 2, right: 2, top: 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 3,
                          width: 3,
                          color: Colors.white,
                        ),
                        Container(
                          height: 3,
                          width: 3,
                          color: Colors.white,
                        ),
                        Container(
                          height: 3,
                          width: 3,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 2, right: 2, bottom: 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          height: 3,
                          width: 3,
                          color: Colors.white,
                        ),
                        Container(
                          height: 3,
                          width: 3,
                          color: Colors.white,
                        ),
                        Container(
                          height: 3,
                          width: 3,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
