import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/app_layout.dart';
import '../../utils/style.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getHeight(20),
            vertical: AppLayout.getHeight(40)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text("What are\nyou looking for?",
              style: CustomTextStyles.headlineText1.copyWith(fontSize: 32)),
          Gap(20),
          Container(
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
                    'Airlines Ticket',
                    style: CustomTextStyles.headlineText3,
                  ),
                  Text(
                    'Hotels',
                    style: CustomTextStyles.headlineText3,
                  ),
                ],
              ),
            ),
          ),
          Gap(35),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(5),
                horizontal: AppLayout.getHeight(20)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                color: Colors.white),
            child: SizedBox(
              height: 40,
              width: AppLayout.getWidth(80),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: ColorStyles.blueHoverColor,
                  ),
                  Gap(5),
                  Text(
                    'Departure',
                    style: CustomTextStyles.headlineText3,
                  ),
                ],
              ),
            ),
          ),
          Gap(15),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(5),
                horizontal: AppLayout.getHeight(20)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                color: Colors.white),
            child: SizedBox(
              height: 40,
              width: AppLayout.getWidth(80),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.map_outlined,
                    color: ColorStyles.blueHoverColor,
                  ),
                  Gap(5),
                  Text(
                    'Arrival',
                    style: CustomTextStyles.headlineText3,
                  ),
                ],
              ),
            ),
          ),
          Gap(25),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(5),
                horizontal: AppLayout.getHeight(20)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                color: Color(0xff2c43ce)),
            child: SizedBox(
              height: 40,
              width: AppLayout.getWidth(80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Find Tickets',
                    style: CustomTextStyles.headlineText3
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Gap(35),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Upcoming Flights",
                style: CustomTextStyles.headlineText2,
              ),
              InkWell(
                onTap: () {
                  print('object');
                },
                child: Text(
                  'View all',
                  style: CustomTextStyles.textStyle.copyWith(color: primary),
                ),
              )
            ],
          ),
          Gap(15),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: AppLayout.getHeight(5),
                    horizontal: AppLayout.getWidth(5)),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(10)),
                    color: Colors.white),
                child: SizedBox(
                  height: AppLayout.getHeight(250),
                  width: AppLayout.getWidth(150),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: AppLayout.getHeight(170),
                            width: AppLayout.getWidth(140),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/sit.jpg"),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 4, top: 10),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '20%',
                              style: CustomTextStyles.headlineText1,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
