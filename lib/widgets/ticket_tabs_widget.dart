import 'package:flutter/material.dart';

import '../utils/app_layout.dart';
import '../utils/style.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs(
      {super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: AppLayout.getHeight(5),
          horizontal: AppLayout.getHeight(50)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
          color: Colors.white),
      child: SizedBox(
        height: 25,
        width: AppLayout.getWidth(80),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              firstTab,
              style: CustomTextStyles.headlineText3,
            ),
            Text(
              secondTab,
              style: CustomTextStyles.headlineText3,
            ),
          ],
        ),
      ),
    );
  }
}
