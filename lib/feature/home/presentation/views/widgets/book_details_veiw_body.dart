import 'package:bookly_app/feature/home/presentation/views/widgets/custo_book_detail_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailVeiwBody extends StatelessWidget {
  const BookDetailVeiwBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          CustomBookDetailAppBar(),
        ],
      ),
    );
  }
}
