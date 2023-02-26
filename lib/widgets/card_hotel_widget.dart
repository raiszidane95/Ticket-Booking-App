import 'package:flutter/material.dart';

import '../utils/app_layout.dart';
import '../utils/style.dart';

class CardHotelWidget extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const CardHotelWidget({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      // padding: EdgeInsets.symmetric(vertical: 2, horizontal: 2),
      margin: EdgeInsets.only(right: 15, top: 17),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(color: Colors.grey.shade400, blurRadius: 5, spreadRadius: 3)
      ], color: ColorStyles.blueColor, borderRadius: BorderRadius.circular(15)),
      width: size.width * 0.6,
      height: AppLayout.getHeight(350),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              color: ColorStyles.blueColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/${hotel['image']}"),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 8,
                ),
                Text(
                  '${hotel['place']}',
                  style: CustomTextStyles.headlineText3
                      .copyWith(color: Colors.white),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '${hotel['destination']}',
                  textAlign: TextAlign.left,
                  style:
                      CustomTextStyles.textStyle.copyWith(color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "\$${hotel['price']}/night",
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.headlineText1
                      .copyWith(color: Colors.white),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
