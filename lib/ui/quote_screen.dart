import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import '../state/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'custom_widgets/custom_calendar.dart';
import 'custom_widgets/custom_menu.dart';

class QuoteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: const Color(0xFF0090FF),
        systemNavigationBarColor: const Color(0xFF0090FF),
      ),
    );
    final appState = Provider.of<AppState>(context);
    appState.fetchQuote();
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF0090FF),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    GestureDetector(
                      child: CustomMenu(),
                      onTap: () {},
                    ),
                    GestureDetector(
                      child: CustomCalendar(),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              if (appState.isLoading) ...[
                const Expanded(
                  child: Center(
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.white,
                    ),
                  ),
                )
              ] else ...[
                const Expanded(
                  flex: 5,
                  child: const SizedBox(),
                ),
                Icon(
                  FontAwesomeIcons.quoteLeft,
                  size: 35,
                  color: Colors.white,
                ),
                const Expanded(
                  flex: 2,
                  child: const SizedBox(),
                ),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      appState.quote,
                      style: TextStyle(
                        height: 0.9,
                        color: Colors.white,
                        fontSize: 31,
                        fontFamily: "Playfair Display",
                        fontWeight: FontWeight.w400,
                      ),
                    )),
                const Expanded(
                  flex: 1,
                  child: const SizedBox(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 2, left: 5),
                        height: 1,
                        width: 30,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        appState.author,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  flex: 3,
                  child: const SizedBox(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0xFF0090FF),
                        border: Border.all(
                          width: 1,
                          color: Colors.white,
                          style: BorderStyle.solid,
                        ),
                      ),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0xFF0090FF),
                        border: Border.all(
                          width: 1,
                          color: Colors.white,
                          style: BorderStyle.solid,
                        ),
                      ),
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const Expanded(
                  flex: 2,
                  child: const SizedBox(),
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }
}
