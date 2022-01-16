import 'package:flutter/material.dart';
import 'package:sample/components/animated_progress_indicator.dart';
import 'package:sample/constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        AnimatedLinearProgressIndicator(
          percentage: 0.85,
          label: "Java",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.75,
          label: "Spring Framework",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: "Kotlin",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: "Docker & Kubernetes",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.65,
          label: "Git & Github",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.6,
          label: "MySQL",
        ),
      ],
    );
  }
}