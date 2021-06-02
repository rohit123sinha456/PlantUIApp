import 'package:FlutterApp/screens/home/components/body.dart';
import 'package:FlutterApp/screens/home/components/botton_navigation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.menu),
        title: Text("Testing App"),
      ),
      body: Body(),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
