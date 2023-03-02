import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/style.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;

  const AppColumnLayout(
      {super.key,
      required this.firstText,
      required this.secondText,
      required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          firstText,
          style: CustomTextStyles.headlineText3.copyWith(
              color: ColorStyles.blueColor, fontWeight: FontWeight.bold),
        ),
        Gap(AppLayout.getHeight(5)),
        Text(
          secondText,
          style: CustomTextStyles.headlineText4,
        )
      ],
    );
  }
}
