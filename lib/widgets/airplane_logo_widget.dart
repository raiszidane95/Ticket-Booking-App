import 'package:flutter/material.dart';

import '../utils/style.dart';

class ThickContainerWidget extends StatelessWidget {
  final bool? isColor;

  const ThickContainerWidget({super.key, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
            width: 2.5,
            color: isColor == null ? Colors.white : ColorStyles.blueColor),
      ),
    );
  }
}
