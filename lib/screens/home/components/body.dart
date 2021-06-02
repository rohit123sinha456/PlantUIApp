import 'package:FlutterApp/screens/home/components/head.dart';
import 'package:FlutterApp/screens/home/components/recomended_plant.dart';
import 'package:FlutterApp/screens/home/components/title_with_more.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          HeaderWithSearchBar(size: size),
          TitleWithMoreBtn(
            title: "Recomended",
            btnaction: "More",
          ),
          RecomendedPlantsList(),
          TitleWithMoreBtn(
            title: "Features",
            btnaction: "More",
          ),
        ],
      ),
    );
  }
}
