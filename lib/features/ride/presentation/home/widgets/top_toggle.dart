import 'package:flutter/material.dart';

class TopToggle extends StatefulWidget {
  final Function(bool isRideShare)? onChanged;

  const TopToggle({super.key, this.onChanged});

  @override
  State<TopToggle> createState() => _TopToggleState();
}

class _TopToggleState extends State<TopToggle> {
  bool isRideShare = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(12),
      child: Row(
        children: [

          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() => isRideShare = false);
                widget.onChanged?.call(false);
              },
              child: Container(
                padding:  EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: !isRideShare ? Colors.blue : Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "ইন্সট্যান্ট",
                    style: TextStyle(
                      color: !isRideShare ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(width: 10),

          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() => isRideShare = true);
                widget.onChanged?.call(true);
              },
              child: Container(
                padding:  EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: isRideShare ? Colors.blue : Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "রাইডশেয়ার",
                    style: TextStyle(
                      color: isRideShare ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),

           SizedBox(width: 10),
           Icon(Icons.settings),
           SizedBox(width: 10),
           Icon(Icons.notifications),
        ],
      ),
    );
  }
}