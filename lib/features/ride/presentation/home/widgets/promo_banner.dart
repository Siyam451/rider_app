import 'package:flutter/material.dart';

class PromoBanner extends StatelessWidget {
  const PromoBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      margin:  EdgeInsets.all(12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Stack(
          fit: StackFit.expand,
          children: [

            Image.asset(
              "assets/images/promo_banner.png",
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}