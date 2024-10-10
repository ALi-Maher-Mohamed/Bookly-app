import 'package:bookly_app/feature/search/presentation/views/widgets/custom_search_text-feild.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [CustomSearchTextFeild()],
      ),
    );
  }
}
