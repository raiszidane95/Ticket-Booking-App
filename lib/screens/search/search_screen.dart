import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/app_layout.dart';
import '../../utils/style.dart';
import '../../widgets/ticket_tabs_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size = AppLayout.getSize(context);
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
          AppTicketTabs(firstTab: 'Airlines Tickets', secondTab: 'Hotels'),
          const Gap(35),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  height: AppLayout.getHeight(320),
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
                            padding: EdgeInsets.all(7),
                            child: Text(
                              "20% discount on early booking of this flights. Don't miss",
                              style: CustomTextStyles.headlineText1,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 10, right: 30, left: 10),
                        width: AppLayout.getSize(context).width * 0.40,
                        height: AppLayout.getHeight(154),
                        decoration: BoxDecoration(
                          color: Color(0xff3ab8b8),
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(18)),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Discount \nfor survey",
                                style: CustomTextStyles.headlineText2
                                    .copyWith(color: ColorStyles.bgColor),
                              ),
                              Gap(10),
                              Text(
                                "Take the survey about out services and get discount",
                                style: CustomTextStyles.headlineText3
                                    .copyWith(color: ColorStyles.bgColor),
                              ),
                            ]),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(
                            AppLayout.getHeight(30),
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 18,
                              color: Color(0xff189999),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Gap(10),
                  Container(
                    padding: EdgeInsets.only(top: 10, right: 10, left: 10),
                    width: AppLayout.getSize(context).width * 0.40,
                    height: AppLayout.getHeight(170),
                    decoration: BoxDecoration(
                      color: Color(0xffec6545),
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(18)),
                    ),
                    child: Column(children: [
                      Text(
                        "Take Love",
                        style: CustomTextStyles.headlineText2
                            .copyWith(color: ColorStyles.bgColor),
                        textAlign: TextAlign.center,
                      ),
                      Gap(10),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: '😍', style: TextStyle(fontSize: 23)),
                            TextSpan(
                                text: '🥰', style: TextStyle(fontSize: 29)),
                            TextSpan(
                                text: '😘', style: TextStyle(fontSize: 24)),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
