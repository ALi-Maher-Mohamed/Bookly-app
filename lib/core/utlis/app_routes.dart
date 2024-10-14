import 'package:bookly_app/core/utlis/service_locator.dart';
import 'package:bookly_app/feature/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/feature/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/feature/home/presentation/views/book_detail.dart';
import 'package:bookly_app/feature/home/presentation/views/home_view.dart';
import 'package:bookly_app/feature/home/repos/home_repo.dart';
import 'package:bookly_app/feature/home/repos/home_repo_impl.dart';
import 'package:bookly_app/feature/search/presentation/views/search_view.dart';
import 'package:bookly_app/feature/splash/presentation/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        path: kSearchview,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: kDetailsview,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
          child: BookDetailsVeiw(
            bookmodel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: kHomeVeiw,
        builder: (context, state) => const HomeView(),
      )
    ],
  );
}
