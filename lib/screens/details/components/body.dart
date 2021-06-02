import 'package:FlutterApp/contants.dart';
import 'package:FlutterApp/screens/details/components/image_with_options.dart';
import 'package:FlutterApp/screens/details/components/name_with_price.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DetailsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          ImageWithOptions(),
          NameAndPrice(
            name: "Rohit",
            country: "Russia",
            price: 400,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: FlatButton(
                    color: kPrimaryColor,
                    onPressed: () {},
                    child: Text(
                      "Buy Now",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )),
              ),
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: FlatButton(onPressed: () {}, child: Text("Add to Cart")),
              )
            ],
          )
        ],
      ),
    );
  }
}
