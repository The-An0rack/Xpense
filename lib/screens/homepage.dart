import 'package:flutter/material.dart';

import 'package:xpense/models/device_dimentions.dart';
import './onboarding_screen.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    DeviceDimentions.height = MediaQuery.of(context).size.height;
    DeviceDimentions.width = MediaQuery.of(context).size.width;
    DeviceDimentions.normalFontSize = MediaQuery.of(context).textScaleFactor;
    return OnboardingScreen();
  }
}
