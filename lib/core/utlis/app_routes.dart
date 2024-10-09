import 'package:bookly_app/feature/home/presentation/views/book_detail.dart';
import 'package:bookly_app/feature/home/presentation/views/home_view.dart';
import 'package:bookly_app/feature/search/presentation/views/search_view.dart';
import 'package:bookly_app/feature/splash/presentation/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static const kHomeVeiw = '/homeView';
  static const kDetailsview = '/detailVeiw';
  static const kSearchview = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/searchView',
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: kDetailsview,
        builder: (context, state) => const BookDetailsVeiw(),
      ),
      GoRoute(
        path: kHomeVeiw,
        builder: (context, state) => const HomeView(),
      )
    ],
  );
}
