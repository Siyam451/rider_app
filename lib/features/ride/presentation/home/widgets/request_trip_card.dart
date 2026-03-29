import 'package:flutter/material.dart';

class RequestTripCard extends StatelessWidget {
  const RequestTripCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.all(12),
      padding:  EdgeInsets.all(16),
      decoration: BoxDecoration(
        color:  Color(0xffE5E9F2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children:  [
          CircleAvatar(child: Icon(Icons.directions_car)),
          SizedBox(width: 10),
          Expanded(child: Text("রিকোয়েস্ট ট্রিপ")),
          Icon(Icons.arrow_forward_ios, size: 16),
        ],
      ),
    );
  }
}