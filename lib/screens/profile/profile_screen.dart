import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/app_layout.dart';
import '../../utils/style.dart';
import '../../widgets/column_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getHeight(20),
        ),
        children: [
          Gap(
            AppLayout.getHeight(50),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getHeight(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(10),
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/images/img_1.png"),
                  ),
                ),
              ),
              Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Book Tickets",
                    style: CustomTextStyles.headlineText1,
                  ),
                  Text(
                    "New-York",
                    style: CustomTextStyles.headlineText3,
                  ),
                  Gap(5),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              color: ColorStyles.blueColor,
                              shape: BoxShape.circle),
                          child: Icon(
                            Icons.shield,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(5),
                        Text(
                          "Premium status",
                          style: CustomTextStyles.headlineText3,
                        )
                      ],
                    ),
                  )
                ],
              ),
              Spacer(),
              InkWell(
                onTap: () {},
                child: Text(
                  'Edit',
                  style: CustomTextStyles.headlineText4
                      .copyWith(color: ColorStyles.blueColor),
                ),
              ),
            ],
          ),
          Gap(
            AppLayout.getHeight(15),
          ),
          Divider(
            color: Colors.grey.shade300,
          ),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      AppLayout.getHeight(21),
                    ),
                    color: ColorStyles.primaryColor),
              ),
              Positioned(
                  top: -40,
                  right: -45,
                  child: Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border:
                            Border.all(width: 18, color: Color(0xff264cd2))),
                  )),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      maxRadius: 25,
                      child: Icon(
                        Icons.lightbulb,
                        color: ColorStyles.blueColor,
                        size: 27,
                      ),
                    ),
                    Gap(12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You\'ve got new award",
                          style: CustomTextStyles.headlineText3.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Gap(2),
                        Text(
                          "You have 10 flights in a year",
                          style: CustomTextStyles.headlineText4
                              .copyWith(color: Colors.grey.shade300),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(25),
          Text("Acumulated miles", style: CustomTextStyles.headlineText2),
          Gap(30),
          Container(
            child: Column(children: [
              Text("192802",
                  style: CustomTextStyles.headlineText1.copyWith(fontSize: 45)),
              Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Miles acoured", style: CustomTextStyles.headlineText4),
                  Text("23 May 2021", style: CustomTextStyles.headlineText4),
                ],
              ),
              Gap(20),
              Row(
                children: [
                  AppColumnLayout(
                      firstText: "23 042",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start),
                  Spacer(),
                  AppColumnLayout(
                      firstText: "Airline CO",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end),
                ],
              ),
              Gap(20),
              Row(
                children: [
                  AppColumnLayout(
                      firstText: "24",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start),
                  Spacer(),
                  AppColumnLayout(
                      firstText: "McDonal's",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end),
                ],
              ),
              Gap(20),
              Row(
                children: [
                  AppColumnLayout(
                      firstText: "52 340",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start),
                  Spacer(),
                  AppColumnLayout(
                      firstText: "DBestech",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end),
                ],
              ),
              Gap(25),
              Center(
                child: Text(
                  'How to get more miles',
                  style: CustomTextStyles.headlineText2
                      .copyWith(color: ColorStyles.blueHoverColor),
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
