import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xFF650E0E),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(flex: 2),
            CircleAvatar(
              radius: 50,
              backgroundImage:
              AssetImage("assets/images/IMG_7344.jpeg"),
            ),
            Spacer(),
            Text("윤영한",
                style: Theme.of(context).textTheme.subtitle2),
            Text(
              "Backend web developer",
              style: TextStyle(
                  fontWeight: FontWeight.w200, height: 1.5),
              textAlign: TextAlign.center,
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
