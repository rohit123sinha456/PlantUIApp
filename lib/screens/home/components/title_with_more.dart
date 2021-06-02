import 'package:FlutterApp/contants.dart';
import 'package:flutter/material.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key key,
    this.title,
    this.btnaction,
  }) : super(key: key);

  final String title;
  final String btnaction;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(children: [
        Recomended(text: "$title"),
        Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            "$btnaction",
            style: TextStyle(color: Colors.white),
          ),
          style: TextButton.styleFrom(
              padding: EdgeInsets.all(2.0),
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)))),
        )
      ]),
    );
  }
}

class Recomended extends StatelessWidget {
  const Recomended({
    Key key,
    this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34,
      child: Stack(
        children: <Widget>[
          Text(
            text,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 5,
              color: kPrimaryColor,
            ),
          )
        ],
      ),
    );
  }
}
