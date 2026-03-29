import 'package:flutter/material.dart';
import 'package:riderapp/features/ride/presentation/ride-request/widgets/ripple_animation.dart';
import 'package:riderapp/features/ride/presentation/ride-request/widgets/online_toggle.dart';

class RideRequestScreen extends StatefulWidget {
  const RideRequestScreen({super.key});

  @override
  State<RideRequestScreen> createState() => _RideRequestScreenState();
}

class _RideRequestScreenState extends State<RideRequestScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // ✅ base white

      body: SafeArea(
        child: Column(
          children: [

            Container(
              color: Colors.white,
              child: Column(
                children: [

                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Expanded(child: _card("আজকের আয়", "৳ 0")),
                         SizedBox(width: 10),
                        Expanded(child: _card("ট্রিপসমূহ", "অনলিমিটেড",icon: Icons.directions_car, )),
                      ],
                    ),
                  ),

                   OnlineToggle(),

                   SizedBox(height: 10),
                ],
              ),
            ),

            Expanded(
              child: Container(
                width: double.infinity,
                color:  Color(0xffF5F6FA),
                child: Column(
                  children: [

                     SizedBox(height: 20),

                     Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "রাইডশেয়ার রিকোয়েস্ট",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),

                     SizedBox(height: 40),

                     RippleAnimation(),

                     SizedBox(height: 20),

                     Text("নিকটবর্তী রিকোয়েস্টগুলো খোঁজা হচ্ছে..."),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _card(String title, String value, {IconData? icon}) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xffF2F2F2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title),

          const SizedBox(height: 6),

          /// VALUE + ICON ROW
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null) ...[
                Icon(icon, size: 18),
                const SizedBox(width: 6),
              ],
              Text(
                value,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }}