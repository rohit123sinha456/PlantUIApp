import 'package:FlutterApp/contants.dart';
import 'package:flutter/material.dart';

class ImageWithOptions extends StatelessWidget {
  const ImageWithOptions({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.8,
      child: Row(
        children: <Widget>[
          Expanded(
              child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: IconButton(
                      icon: Icon(Icons.arrow_back, size: 20),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
              ),
              IconsTile(icontile: Icons.ac_unit_outlined),
              IconsTile(icontile: Icons.nightlight_round),
              IconsTile(icontile: Icons.water_damage),
              IconsTile(icontile: Icons.ac_unit_outlined),
            ],
          )),
          Container(
            height: size.height * 0.8,
            width: size.width * 0.75,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(63),
                    topLeft: Radius.circular(63)),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.29))
                ],
                image: DecorationImage(
                    alignment: Alignment.center,
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/image_1.png"))),
          )
        ],
      ),
    );
  }
}

class IconsTile extends StatelessWidget {
  const IconsTile({
    Key key,
    this.icontile,
  }) : super(key: key);
  final IconData icontile;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.all(15.0),
      child: Icon(
        icontile, //Icons.ac_unit_rounded,
        size: 35,
        color: kPrimaryColor,
      ),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 10),
              color: kPrimaryColor.withOpacity(0.29),
              blurRadius: 22)
        ],
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
    );
  }
}
