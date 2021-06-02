import 'package:FlutterApp/contants.dart';
import 'package:flutter/material.dart';

class NameAndPrice extends StatelessWidget {
  const NameAndPrice({
    Key key,
    this.name,
    this.country,
    this.price,
  }) : super(key: key);

  final String name, country;
  final int price;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, top: 10, right: 15, bottom: 15),
      child: Row(
        children: <Widget>[
          RichText(
              text: TextSpan(children: <TextSpan>[
            TextSpan(
                text: "$name\n",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 36,
                    fontWeight: FontWeight.w500)),
            TextSpan(
                text: "$country\n",
                style: TextStyle(color: kPrimaryColor, fontSize: 18))
          ])),
          Spacer(),
          Text(
            "\$$price",
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: 30,
            ),
          )
        ],
      ),
    );
  }
}
