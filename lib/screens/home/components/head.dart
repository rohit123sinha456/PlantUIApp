import 'package:FlutterApp/contants.dart';
import 'package:flutter/material.dart';

class HeaderWithSearchBar extends StatelessWidget {
  const HeaderWithSearchBar({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: defaultPadding * 2.5),
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Text(
                  "Hi User",
                  style: TextStyle(
                      color: kBackgroundColor,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            padding: EdgeInsets.only(
                left: defaultPadding,
                right: defaultPadding,
                bottom: 36 + defaultPadding),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36))),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.only(left: 10.0),
                alignment: Alignment.center,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintStyle:
                          TextStyle(color: kPrimaryColor.withOpacity(0.4))),
                ),
                height: 54,
                margin: EdgeInsets.symmetric(horizontal: defaultPadding),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: kPrimaryColor.withOpacity(0.4))
                    ]),
              ))
        ],
      ),
    );
  }
}
