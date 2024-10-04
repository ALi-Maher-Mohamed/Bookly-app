import 'package:bookly_app/feature/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/home_veiw_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          HomeViewBody(),
        ],
      ),
    );
  }
}
