import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utlis/app_routes.dart';
import 'package:bookly_app/core/utlis/service_locator.dart';
import 'package:bookly_app/feature/home/presentation/manager/feature_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/feature/home/presentation/manager/newest_books_cubit/newest_books_cubit_cubit.dart';
import 'package:bookly_app/feature/home/repos/home_repo_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiveLocator();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => FeaturedbookCubit(
                  getIt<HomeRepoImpl>(),
                )..fetchFeaturedBooks()),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt<HomeRepoImpl>(),
          )..fetchNewestBooks(),
        )
      ],
      child: MaterialApp.router(
        routerConfig: AppRoutes.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
