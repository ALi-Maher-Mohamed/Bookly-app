import 'package:bookly_app/feature/home/presentation/views/home_view.dart';
import 'package:bookly_app/feature/splash/presentation/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static const kHomeVeiw = '/homeView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeVeiw,
        builder: (context, state) => const HomeView(),
      )
    ],
  );
}
