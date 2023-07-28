import 'package:flutter/material.dart';
import 'package:responsive_app/responsive/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreen;
  final Widget desktopScreen;
  const ResponsiveLayout(
      {super.key, required this.mobileScreen, required this.desktopScreen});
  @override
  Widget build(context) {
    return LayoutBuilder(builder: (ctx, constraints) {
      return constraints.maxWidth < mobileWidth ? mobileScreen : desktopScreen;
    });
  }
}
