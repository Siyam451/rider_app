import 'package:flutter/material.dart';

class AutoBidButton extends StatelessWidget {
  const AutoBidButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.symmetric(horizontal: 12),
      padding:  EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(12),
      ),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("অটো বিড চালু করুন"),
          Icon(Icons.arrow_forward_ios, size: 16),
        ],
      ),
    );
  }
}