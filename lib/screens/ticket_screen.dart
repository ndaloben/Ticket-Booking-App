import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/screens/ticket_view.dart';
import 'package:tickets/utils/app_info_list.dart';
import 'package:tickets/utils/app_layout.dart';

import '../utils/app_styles.dart';
import '../widgets/column_layout.dart';
import '../widgets/layout_builder_widget.dart';
import '../widgets/ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children:[ ListView(
          padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20), vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text("Tickets",
            style: Styles.headlineStyle,),
            Gap(AppLayout.getHeight(20)),
            const TicketTabs(firstTab: "Upcoming", secondTab: "Previous",),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child: TicketView(ticket: ticketList[0], isColor: false),
            ),
            const SizedBox(height: 1,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              margin: const EdgeInsets.symmetric(horizontal: 15),
              color: Colors.white,
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColumnLayout(
                        firstText: "Flutter DB",
                        secondText: "Passenger",
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                        ),
                        ColumnLayout(
                        firstText: "5221 467893",
                        secondText: "passport",
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                        ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                   const AppLayoutBuilder(sections: 15, isColor: false, width: 5),
                  Gap(AppLayout.getHeight(20)),
                    const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColumnLayout(
                        firstText: "0055 444 77156",
                        secondText: "Number of E-ticket",
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                        ),
                        ColumnLayout(
                        firstText: "B2SG28",
                        secondText: "Booking code",
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                        ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  const AppLayoutBuilder(sections: 15, isColor: false, width: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "images/plane.png",
                                scale: 11,
                                ),
                                Text(
                                  "*** 3452",
                                  style: Styles.headlineStyle3,
                                  ),
                            ],
                          ),
                          const Gap(5),
                          Text(
                            "Payment method",
                            style: Styles.headlineStyle4,
                            )
                        ],
                      ),
                        const ColumnLayout(
                        firstText: "\$256.99",
                        secondText: "Price",
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                        ),
                    ],
                  )
              ]),
            ),
            /**
             barcode
             **/
             
          ],
        ),
        ],
      ),
    );
  }
}