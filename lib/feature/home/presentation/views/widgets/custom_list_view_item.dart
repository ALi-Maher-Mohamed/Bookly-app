import 'package:bookly_app/core/utlis/assets.dart';
import 'package:flutter/material.dart';

class FeatureListViewitem extends StatelessWidget {
  const FeatureListViewitem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.all(Radius.circular(18)),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              AssetsData.testImage,
            ),
          ),
        ),
      ),
    );
  }
}
