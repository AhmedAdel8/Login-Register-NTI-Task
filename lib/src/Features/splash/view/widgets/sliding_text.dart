import 'package:flutter/material.dart';
import 'package:nti_flutter21/src/core/style/size_app.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: Text(
            "Welcome",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: SizeApp.s24,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
    );
  }
}
