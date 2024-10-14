import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/feature/home/presentation/manager/newest_books_cubit/newest_books_cubit_cubit.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/best_seller_list_veiew_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksCubitState>(
      builder: (context, state) {
        if (state is NewestBooksCubitSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BooksListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is NewestBooksCubitfailure) {
          return CustomErrorWidgets(errMessage: state.errMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
