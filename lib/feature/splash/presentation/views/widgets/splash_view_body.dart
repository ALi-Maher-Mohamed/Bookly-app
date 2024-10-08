import 'package:bookly_app/core/utlis/app_routes.dart';
import 'package:bookly_app/feature/splash/presentation/views/widgets/sliding_splash_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  late Animation<Offset> slidingAnimation2;

  @override
  void initState() {
    super.initState();
    InitSlidingAnimation();
    navigationToHomePage();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashText(
        slidingAnimation: slidingAnimation,
        slidingAnimation2: slidingAnimation2);
  }

  void InitSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
            .animate(animationController);
    slidingAnimation2 =
        Tween<Offset>(begin: const Offset(0, -10), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
    animationController.addListener(() {});
  }

  void navigationToHomePage() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        GoRouter.of(context).push(AppRoutes.kHomeVeiw);
        // Get.to(() => const HomeView(),
        //     transition: Transition.cupertino, duration: kTransationDuration);
      },
    );
  }
}
