import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  const Responsive({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  });

  //this is all the designs size maybe we can try on other devices
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width < 650;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        //if our width is more than 1100 then we consider it a desktop
        builder: (context, constraint) {
      if (constraint.maxWidth >= 1100) {
        return desktop;
      }
      //if our width is more than 1100 and more than 650 we consider it as tablet
      else if (constraint.maxWidth >= 650) {
        return tablet;
        //or less then that we called it mobile
      } else {
        return mobile;
      }
    });
  }
}
