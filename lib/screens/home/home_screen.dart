import 'package:flutter/material.dart';
import 'package:sample/screens/home/components/heighlights.dart';
import 'package:sample/screens/home/components/home_banner.dart';
import 'package:sample/screens/home/components/my_projects.dart';
import 'package:sample/screens/home/components/recommendations.dart';
import 'package:sample/screens/main/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HighLightsInfo(),
        MyProjects(),
        Recommendations(),
      ],
    );
  }
}