import 'package:flutter/material.dart';

class RippleAnimation extends StatefulWidget {
  const RippleAnimation({super.key});

  @override
  State<RippleAnimation> createState() => _RippleAnimationState();
}

class _RippleAnimationState extends State<RippleAnimation>
    with SingleTickerProviderStateMixin {

  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration:  Duration(seconds: 2),
    )..repeat();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      width: 220,
      child: AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          return Stack(
            alignment: Alignment.center,
            children: [


              _buildCircle(controller.value * 200),


              _buildCircle((controller.value * 200) - 60),


              _buildCircle((controller.value * 200) - 120),

              Container(
                height: 80,
                width: 80,
                decoration:  BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                child:  Icon(Icons.directions_car,
                    color: Colors.white, size: 32),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildCircle(double size) {
    if (size < 0) return  SizedBox();

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.blue.withOpacity(1 - (size / 200)),
          width: 2,
        ),
      ),
    );
  }
}