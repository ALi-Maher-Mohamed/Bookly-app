import 'package:bookly_app/feature/home/presentation/views/widgets/book_details_veiw_body.dart';
import 'package:flutter/material.dart';

class BookDetailsVeiw extends StatelessWidget {
  const BookDetailsVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: BookDetailVeiwBody()),
    );
  }
}
