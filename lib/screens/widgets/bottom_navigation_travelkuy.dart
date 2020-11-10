import 'package:disign1/constants/color_constants.dart';
import 'package:disign1/constants/textstyle_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationTravelkuy extends StatefulWidget {
  @override
  _BottomNavigationTravelkuyState createState() =>
      _BottomNavigationTravelkuyState();
}

class _BottomNavigationTravelkuyState extends State<BottomNavigationTravelkuy> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration( 
          color: mFillColor,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 15,
                offset: Offset(0, 5))
          ],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24), topRight: Radius.circular(24))),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: _selectedIndex == 0
                  ? SvgPicture.asset('assets/icons/home_colored.svg')
                  : SvgPicture.asset('assets/icons/home.svg'),
              title: Text(
                'Home',
                style: bottomTextStyle,
              )),
          BottomNavigationBarItem(
              icon: _selectedIndex == 1
                  ? SvgPicture.asset('assets/icons/order_colored.svg')
                  : SvgPicture.asset('assets/icons/order.svg'),
              title: Text(
                'My Order',
                style: bottomTextStyle,
              )),
          BottomNavigationBarItem(
              icon: _selectedIndex == 2
                  ? SvgPicture.asset('assets/icons/watch_colored.svg')
                  : SvgPicture.asset('assets/icons/watch.svg'),
              title: Text(
                'Watch List',
                style: bottomTextStyle,
              )),
          BottomNavigationBarItem(
              icon: _selectedIndex == 3
                  ? SvgPicture.asset('assets/icons/account_colored.svg')
                  : SvgPicture.asset('assets/icons/account.svg'),
              title: Text(
                'Account',
                style: bottomTextStyle,
              )),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: mBlueColor,
        unselectedItemColor: mGreyColor,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        showUnselectedLabels: true,
        elevation: 0,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
      ),
    );
  }
}
