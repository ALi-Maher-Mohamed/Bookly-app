import 'package:bookly_app/feature/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/feature/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/book_details_veiw_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsVeiw extends StatefulWidget {
  const BookDetailsVeiw({super.key, required this.bookmodel});
  final BookModel bookmodel;
  @override
  State<BookDetailsVeiw> createState() => _BookDetailsVeiwState();
}

class _BookDetailsVeiwState extends State<BookDetailsVeiw> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
        category: widget.bookmodel.volumeInfo.categories![0]);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: BookDetailVeiwBody()),
    );
  }
}
