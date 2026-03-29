import 'package:flutter/material.dart';

class TripTypesRow extends StatelessWidget {
  const TripTypesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

         Padding(
          padding: EdgeInsets.all(12),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text("নতুন ট্রিপ (২৩)",
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:  [
            _item("20", Icons.arrow_forward, Colors.blue, "শুধু যাওয়া"),
            _item("3", Icons.swap_horiz, Colors.purple, "যাওয়া-আসা"),
            _item("0", Icons.flight, Colors.orange, "এয়ারপোর্ট"),
            _item("0", Icons.access_time, Colors.green, "ঘন্টায়"),
          ],
        ),
      ],
    );
  }
}

class _item extends StatelessWidget {
  final String count;
  final IconData icon;
  final Color color;
  final String label;

  const _item(this.count, this.icon, this.color, this.label);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Stack(
          children: [
            CircleAvatar(
              radius: 26,
              backgroundColor: color,
              child: Icon(icon, color: Colors.white),
            ),

            Positioned(
              top: 0,
              right: 0,
              child: Container(
                padding:  EdgeInsets.all(4),
                decoration:  BoxDecoration(
                  color: Colors.yellow,
                  shape: BoxShape.circle,
                ),
                child: Text(count),
              ),
            )
          ],
        ),

         SizedBox(height: 6),
        Text(label, style:  TextStyle(fontSize: 12)),
      ],
    );
  }
}