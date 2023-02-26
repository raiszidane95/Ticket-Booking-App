import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

import '../../utils/style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var bgColor = const Color(0xffeeedf2);
    return Scaffold(
      backgroundColor: ColorStyles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning!',
                          style: CustomTextStyles.headlineText3,
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Book Tickets',
                          style: CustomTextStyles.headlineText1,
                        ),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/img_1.png"))),
                      // child: Image.asset("assets/images/img_1.png")
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(children: [
                  Expanded(
                    child: Container(
                      // color: Colors.blueAccent.shade100,
                      height: 35,
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: TextField(
                        textAlignVertical: TextAlignVertical.bottom,
                        textAlign: TextAlign.start,
                        style: CustomTextStyles.headlineText4,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none),
                            hintText: 'Search',
                            filled: true,
                            fillColor: Color(0xFFF4F6FD),
                            hintTextDirection: TextDirection.ltr,
                            prefixIcon: Icon(
                              FluentIcons.search_20_filled,
                              color: Color(0xffbfc205),
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.never),
                      ),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 40,
                ),
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
                        style:
                            CustomTextStyles.textStyle.copyWith(color: primary),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
