import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/utils/app_styles.dart';

import '../utils/app_layout.dart';
import '../widgets/double_text_widget.dart';
import '../widgets/icon_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20), vertical: AppLayout.getHeight(20)),
        children: [
           Gap(AppLayout.getHeight(40)),
           Text(
            "What are \n you looking for?",
            style: Styles.headlineStyle.copyWith(fontSize: AppLayout.getWidth(35)),
           ),
           Gap(AppLayout.getHeight(20)),
           FittedBox(
             child: Container(
              padding: const EdgeInsets.all(3.5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(50),),
                color: const Color(0xFFF4F6Fd),
              ),
              child: Row(
           
                children: [
                  /*
                  airline tickets
                   */
                  Container(
                    width:  size.width*.44,
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(50)),),
                      color: Colors.white,
                    ),
                    child: const Center(child: Text('Ailine Ticket')),
                  ),
                  /*   
                  hotels
                  */
                  Container(
                    width:  size.width*.44,
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(50)),),
                    ),
                    child: const Center(child: Text('Hotels')),
                  )
                  
                ],
              ),
              ),
           ),
           Gap(AppLayout.getHeight(25)),
         const AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure",),
         Gap(AppLayout.getHeight(20)),
         const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival",),
         Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getWidth(15)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
              color: const Color(0xD91130CE),
            ),
            child: Center(
              child: Text("find tickets", 
                  style: Styles.textStyle.copyWith(color: Colors.white),
                  
                  ),
            ),
           ),
           const Gap(40),
           const DoubleText(bigText: "Upcoming Flights", smallText: "view all",),
        ],   
      ),
    );
  }
}     