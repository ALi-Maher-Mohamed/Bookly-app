import 'package:bookly_app/constant.dart';
import 'package:bookly_app/feature/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/custo_book_detail_app_bar.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/similar_book_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailVeiwBody extends StatelessWidget {
  const BookDetailVeiwBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: kPrimaryPaddig,
            child: Column(
              children: [
                CustomBookDetailAppBar(),
                BookDetailsSection(
                  bookModel: bookModel,
                ),
                Expanded(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
                SimilarSection(),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
