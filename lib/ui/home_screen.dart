import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../ui/quote_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        systemNavigationBarColor: Colors.white,
      ),
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 5,
                child: SizedBox(),
              ),
              Icon(
                FontAwesomeIcons.quoteLeft,
                size: 35,
                color: Colors.black,
              ),
              const Expanded(
                flex: 2,
                child: const SizedBox(),
              ),
              Text(
                "Get",
                style: TextStyle(
                  height: 0.9,
                  color: Colors.black,
                  fontSize: 60,
                  fontFamily: "Playfair Display",
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "Inspired",
                style: TextStyle(
                  height: 0.6,
                  color: Colors.black,
                  fontSize: 60,
                  fontFamily: "Playfair Display",
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Expanded(
                flex: 3,
                child: const SizedBox(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  height: 55,
                  width: double.infinity,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                    elevation: 0,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => QuoteScreen()),
                      );
                    },
                    color: Colors.black,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Let's Go",
                          style: TextStyle(
                            fontSize: 26,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Expanded(
                flex: 2,
                child: const SizedBox(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
