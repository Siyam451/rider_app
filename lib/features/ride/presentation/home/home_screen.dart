import 'package:flutter/material.dart';
import 'package:riderapp/features/ride/presentation/home/widgets/auto_bid_button.dart';
import 'package:riderapp/features/ride/presentation/home/widgets/buttom_navigation.dart';
import 'package:riderapp/features/ride/presentation/home/widgets/promo_banner.dart';
import 'package:riderapp/features/ride/presentation/home/widgets/request_trip_card.dart';
import 'package:riderapp/features/ride/presentation/home/widgets/stats_card.dart';
import 'package:riderapp/features/ride/presentation/home/widgets/subscription_banner.dart';
import 'package:riderapp/features/ride/presentation/home/widgets/top_toggle.dart';
import 'package:riderapp/features/ride/presentation/home/widgets/trip_type_row.dart';
import '../ride-request/ride_request_screen.dart';





class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F6FA), //the colour will remain constant

      body: SafeArea(
        child: Column(
          children: [


            TopToggle(
              onChanged: (isRideShare) {
                if (isRideShare) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>  RideRequestScreen(),
                    ),
                  );
                }
              },
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children:  [

                    SubscriptionBanner(),
                    PromoBanner(),
                    StatsRow(),
                    TripTypesRow(),
                    RequestTripCard(),
                    AutoBidButton(),

                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),


      bottomNavigationBar: BottomNav(
        index: selectedIndex,
        onTap: (i) => setState(() => selectedIndex = i),
      ),
    );
  }
}