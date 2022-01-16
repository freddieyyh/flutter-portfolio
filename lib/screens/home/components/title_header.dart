import 'package:flutter/material.dart';
import 'package:sample/constants.dart';

class TitleHeader extends StatelessWidget {
  const TitleHeader({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height : defaultPadding,),
        Text(
          title,
          style: Theme.of(context).textTheme.headline2?.copyWith(color: Colors.white),
        ),
        Divider(),
        SizedBox(height : defaultPadding,),
      ],
    );
  }
}