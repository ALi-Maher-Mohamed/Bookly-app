import 'package:bookly_app/constant.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/custo_book_detail_app_bar.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailVeiwBody extends StatelessWidget {
  const BookDetailVeiwBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: kPrimaryPaddig,
      child: Column(
        children: [
          const CustomBookDetailAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .17),
            child: const CustombBookImage(),
          ),
        ],
      ),
    );
  }
}
