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
        child: Column(
          children: [
            Spacer(flex: 2),
            CircleAvatar(
              radius: 150,
              backgroundImage: AssetImage("assets/images/26202106.jpeg"),
            ),
            Spacer(),
            Text(
              "윤영한",
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              "Server developer \n& 성장중인 꼬마개발자..",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                height: 1.5,
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}