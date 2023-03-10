import 'package:flutter/material.dart';

import '../utils/app_layout.dart';
import '../utils/style.dart';
import 'airplane_logo_widget.dart';

class TicketWidget extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketWidget({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: AppLayout.getHeight(200),
      child: Container(
        margin: EdgeInsets.only(left: AppLayout.getHeight(16)),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: ColorStyles.blueColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(children: [
                Row(children: [
                  Text(
                    ticket['from']['code'],
                    style: CustomTextStyles.headlineText4
                        .copyWith(color: Colors.white),
                  ),
                  Expanded(child: Container()),
                  ThickContainerWidget(),
                  Expanded(
                    child: Stack(children: [
                      SizedBox(
                        height: AppLayout.getHeight(24),
                        child: LayoutBuilder(
                          builder: (BuildContext, BoxConstraints) {
                            // print("the number .constrainWidth()}");

                            return Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(
                                  6,
                                  (index) => SizedBox(
                                      width: 3,
                                      height: 1,
                                      child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: Colors.white)))),
                            );
                          },
                        ),
                      ),
                      Center(
                        child: Transform.rotate(
                          angle: 1.5,
                          child: Icon(
                            Icons.airplanemode_active_sharp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ]),
                  ),
                  ThickContainerWidget(),
                  Expanded(child: Container()),
                  Text(
                    ticket['to']['code'],
                    style: CustomTextStyles.headlineText4
                        .copyWith(color: Colors.white),
                  ),
                ]),
                SizedBox(
                  height: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text(
                        ticket['from']['name'],
                        style: CustomTextStyles.headlineText4
                            .copyWith(color: Colors.white),
                      ),
                    ),
                    Text(
                      ticket['flying_time'],
                      style: CustomTextStyles.headlineText4.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 100,
                      child: Text(
                        ticket['to']['name'],
                        textAlign: TextAlign.end,
                        style: CustomTextStyles.headlineText4
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ],
                )
              ]),
            ),
            Container(
              color: ColorStyles.orangeColor,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: ColorStyles.bgColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                            (constraints.constrainWidth() / 15).floor(),
                            (index) => SizedBox(
                              width: 5,
                              height: 1,
                              child: DecoratedBox(
                                decoration: BoxDecoration(color: Colors.white),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: ColorStyles.bgColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            /*
            Orange Section 2
          */
            Container(
              decoration: BoxDecoration(
                color: ColorStyles.orangeColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
              ),
              padding:
                  EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            ticket['date'],
                            style: CustomTextStyles.headlineText3
                                .copyWith(color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'DATE',
                            style: CustomTextStyles.headlineText4
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            ticket['departure_time'],
                            style: CustomTextStyles.headlineText3
                                .copyWith(color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Departure Time',
                            style: CustomTextStyles.headlineText4
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '${ticket['number']}',
                            style: CustomTextStyles.headlineText3
                                .copyWith(color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Number',
                            textAlign: TextAlign.end,
                            style: CustomTextStyles.headlineText4
                                .copyWith(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
