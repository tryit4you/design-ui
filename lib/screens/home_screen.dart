import 'package:design1_learning1/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset('assets/svg/travelkuy_logo.svg'),
        elevation: 0,
        backgroundColor: mBackgroundColor,
      ),
      body: Container(

      )
    );
  }
}
