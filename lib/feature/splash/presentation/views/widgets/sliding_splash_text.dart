import 'package:bookly_app/core/utlis/assets.dart';
import 'package:flutter/material.dart';

class AnimatedSplashText extends StatelessWidget {
  const AnimatedSplashText({
    super.key,
    required this.slidingAnimation,
    required this.slidingAnimation2,
  });

  final Animation<Offset> slidingAnimation;
  final Animation<Offset> slidingAnimation2;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SlideTransition(
              position: slidingAnimation2, child: Image.asset(AssetsData.logo)),
          const SizedBox(
            height: 10,
          ),
          SlideTransition(
            position: slidingAnimation,
            child: const Text(
              'All you need ❤',
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
