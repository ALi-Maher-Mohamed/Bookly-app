import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utlis/styles.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/best_seller_list_veiw.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/feature_books_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: kPrimaryPaddig,
                child: CustomAppBar(),
              ),
              FeatureBooksListView(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: kPrimaryPaddig,
                child: Text(
                  'Newest Books',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: BooksListView(),
          ),
        )
      ],
    );
  }
}
