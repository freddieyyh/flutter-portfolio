import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sample/constants.dart';
import 'package:sample/screens/home/components/coding.dart';
import 'package:sample/screens/home/components/heighlights.dart';
import 'package:sample/screens/home/components/my_header.dart';
import 'package:sample/screens/home/components/my_info.dart';
import 'package:sample/screens/home/components/my_projects.dart';
import 'package:sample/screens/home/components/recommendations.dart';
import 'package:sample/screens/home/components/skills.dart';
import 'package:sample/screens/home/components/title_header.dart';
import 'package:sample/screens/main/main_screen.dart';
import 'package:url_launcher/link.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        MyHeader(),
        Skills(),
        Row(
          children: [
            Expanded(
              child: MyInfo(),
              flex: 5,
            ),
            Expanded(
              flex: 5,
              child: Coding(),
            ),
          ],
        ),
        MyProjects(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleHeader(
              title: "Contacts",
            ),
            Container(
              margin: EdgeInsets.only(top: defaultPadding),
              child: Row(
                children: [
                  Spacer(),
                  LinkIcon(
                    icon: SvgPicture.asset(
                      "assets/icons/linkedin.svg",
                      width: 100,
                      height: 100,
                    ),
                    uri: "https://www.linkedin.com/in/younghan-yun-a225b015b/",
                    width: 100,
                    height: 100,
                  ),
                  LinkIcon(
                    icon: SvgPicture.asset(
                      "assets/icons/github.svg",
                      width: 100,
                      height: 100,
                    ),
                    uri: "https://github.com/freddieyyh",
                    width: 100,
                    height: 100,
                  ),
                  LinkIcon(
                    icon: SvgPicture.asset(
                      "assets/icons/twitter.svg",
                      width: 100,
                      height: 100,
                    ),
                    uri: "https://github.com/freddieyyh",
                    width: 100,
                    height: 100,
                  ),
                  Spacer(),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}

class LinkIcon extends StatelessWidget {
  const LinkIcon({
    Key? key,
    required this.icon,
    required this.uri,
    this.width,
    this.height,
  }) : super(key: key);

  final Widget icon;
  final String uri;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Link(
        target: LinkTarget.blank,
        uri: Uri.parse(uri),
        builder: (context, followLink) => IconButton(
          onPressed: () {},
          icon: icon,
        ),
      ),
    );
  }
}
