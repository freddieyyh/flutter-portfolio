import 'package:flutter/material.dart';
import 'package:sample/components/animated_progress_indicator.dart';
import 'package:sample/constants.dart';
import 'package:sample/screens/home/components/title_header.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TitleHeader(title: "About",),
        Row(
          children: const [
            Spacer(flex: 2,),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.85,
                title: "Java & \nKotlin",
                contents: "",
              ),
            ),
            Spacer(flex: 1,),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.8,
                title: "Spring\n(server)",
                contents: "",
              ),
            ),
            Spacer(flex: 1,),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.5,
                title: "Kubernetes",
                contents: "",
              ),
            ),
            Spacer(flex: 1,),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.5,
                title: "Vue.js",
                contents: "",
              ),
            ),
            Spacer(flex: 2,),
          ],
        ),
      ],
    );
  }
}
