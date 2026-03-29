import 'package:flutter/material.dart';

class StatsRow extends StatelessWidget {
  const StatsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Expanded(child: _card("চলমান বিডিং", "0", Colors.blue)),
           SizedBox(width: 10),
          Expanded(child: _card("বিজয়ী ট্রিপ", "0", Colors.green)),
        ],
      ),
    );
  }

  Widget _card(String title, String value, Color color) {
    return Container(
      padding:  EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          CircleAvatar(
            radius: 14,
            backgroundColor: color,
            child: Text(value,
                style:  TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}