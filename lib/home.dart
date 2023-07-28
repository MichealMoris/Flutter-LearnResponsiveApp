import 'package:flutter/material.dart';
import 'package:responsive_app/responsive/desktop_screen.dart';
import 'package:responsive_app/responsive/mobile_screen.dart';
import 'package:responsive_app/responsive/responsive_layout.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(context) {
    return const ResponsiveLayout(
      mobileScreen: MobileScreen(),
      desktopScreen: DesktopScreen(),
    );
  }
}
