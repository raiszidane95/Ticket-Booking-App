import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/app_info_list.dart';
import '../../utils/style.dart';
import '../../widgets/card_hotel_widget.dart';
import '../../widgets/ticket_view_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Gap(60),
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
                        Gap(5),
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
                Gap(20),
                Row(
                  children: [
                    Expanded(
                      child: Container(
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
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never),
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(40),
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
                ),
              ],
            ),
          ),
          /**
           * 
           * Widget Ticket
           * 
          */
          SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(right: 20),
            child: Row(
                children: ticketList
                    .map((singleTicket) => TicketWidget(ticket: singleTicket))
                    .toList()),
          ),

          /**
           * Hotels Content
          */
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hotels",
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
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(right: 20),
            child: Row(
              children: hotelList
                  .map(
                    (singleHotel) => CardHotelWidget(hotel: singleHotel),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
