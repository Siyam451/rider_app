import 'package:flutter/material.dart';

class OnlineToggle extends StatefulWidget {
  const OnlineToggle({super.key});

  @override
  State<OnlineToggle> createState() => _OnlineToggleState();
}

class _OnlineToggleState extends State<OnlineToggle> {
  bool isOnline = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 220,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: const Color(0xff1E5BFF), // exact blue
        borderRadius: BorderRadius.circular(14), // smooth rounded
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.2),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          /// TEXT
          const Text(
            "অনলাইন",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),

          /// SWITCH
          Transform.scale(
            scale: 0.85, // ✅ smaller switch
            child: Switch(
              value: isOnline,
              onChanged: (value) {
                setState(() => isOnline = value);
              },
              activeColor: Colors.white,
              activeTrackColor: Colors.green,
              inactiveThumbColor: Colors.white,
              inactiveTrackColor: Colors.grey.shade400,
            ),
          ),
        ],
      ),
    );
  }
}