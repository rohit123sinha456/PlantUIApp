import 'package:FlutterApp/contants.dart';
import 'package:FlutterApp/screens/details/details.dart';
import 'package:flutter/material.dart';

class RecomendedPlantsList extends StatelessWidget {
  const RecomendedPlantsList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            RecomendedPlant(
                image: "assets/images/image_1.png",
                name: "Rohit",
                country: "Russia",
                price: 400,
                press: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Details()));
                }),
            RecomendedPlant(
                image: "assets/images/image_2.png",
                name: "Rohit",
                country: "Russia",
                price: 400),
            RecomendedPlant(
                image: "assets/images/image_3.png",
                name: "Rohit",
                country: "Russia",
                price: 400)
          ],
        ));
  }
}

class RecomendedPlant extends StatelessWidget {
  const RecomendedPlant({
    Key key,
    this.name,
    this.country,
    this.price,
    this.image,
    this.press,
  }) : super(key: key);

  final String image;
  final int price;
  final String country;
  final String name;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: defaultPadding,
          top: defaultPadding,
          bottom: defaultPadding * 2.25),
      width: size.width * 0.4,
      child: GestureDetector(
        onTap: press,
        child: Column(
          children: <Widget>[
            Image.asset("$image"),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.3))
                  ]),
              child: Row(
                children: <Widget>[
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "$name\n".toUpperCase(),
                        style: Theme.of(context).textTheme.button),
                    TextSpan(
                        text: "$country\n".toUpperCase(),
                        style: TextStyle(color: Colors.black.withOpacity(0.4)))
                  ])),
                  Spacer(),
                  Text(
                    "\$$price",
                    style: Theme.of(context).textTheme.button,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
