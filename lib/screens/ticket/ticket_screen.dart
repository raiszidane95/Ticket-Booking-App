import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/app_info_list.dart';
import '../../utils/app_layout.dart';
import '../../utils/style.dart';
import '../../widgets/column_layout.dart';
import '../../widgets/ticket_tabs_widget.dart';
import '../../widgets/ticket_view_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: ColorStyles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(20),
                vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text("Tickets",
                  style: CustomTextStyles.headlineText1.copyWith(fontSize: 36)),
              Gap(AppLayout.getHeight(40)),
              AppTicketTabs(firstTab: 'Upcoming', secondTab: 'Previous'),
              Gap(AppLayout.getHeight(40)),
              Container(
                child: TicketWidget(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              Container(
                height: AppLayout.getHeight(75),
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(
                              alignment: CrossAxisAlignment.start,
                              firstText: 'Flutter DB',
                              secondText: 'Passenger'),
                          AppColumnLayout(
                              alignment: CrossAxisAlignment.end,
                              firstText: '8183 83913468',
                              secondText: 'Passport'),
                        ],
                      )
                    ]),
              ),
              Container(
                height: AppLayout.getHeight(75),
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(
                              alignment: CrossAxisAlignment.start,
                              firstText: '98201 412401285',
                              secondText: 'Number of E-Ticket'),
                          AppColumnLayout(
                              alignment: CrossAxisAlignment.end,
                              firstText: 'B91288FL',
                              secondText: 'Booking Code'),
                        ],
                      )
                    ]),
              ),
              Container(
                height: AppLayout.getHeight(75),
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/visa.png",
                                    scale: 11,
                                  ),
                                  Text(
                                    " *** 2462",
                                    style: CustomTextStyles.headlineText4,
                                  )
                                ],
                              ),
                              Gap(5),
                              Text(
                                "Payment Method",
                                style: CustomTextStyles.headlineText4,
                              )
                            ],
                          ),
                          AppColumnLayout(
                              alignment: CrossAxisAlignment.end,
                              firstText: 'B91288FL',
                              secondText: 'Booking Code'),
                        ],
                      )
                    ]),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                padding: EdgeInsets.all(AppLayout.getHeight(15)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                  child: BarcodeWidget(
                    data: 'https://github.com/raiszidane95',
                    barcode: Barcode.code128(),
                    drawText: false,
                    color: ColorStyles.textColor,
                    width: double.infinity,
                    height: 70,
                  ),
                ),
              ),
              Gap(15),
              TicketWidget(
                ticket: ticketList[0],
              ),
            ],
          ),
          Positioned(
            left: AppLayout.getHeight(10),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: ColorStyles.textColor, width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 7,
                backgroundColor: ColorStyles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(10),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: ColorStyles.textColor, width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 7,
                backgroundColor: ColorStyles.textColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
