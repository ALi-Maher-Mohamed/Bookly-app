import 'package:flutter/material.dart';

class CustombBookImage extends StatelessWidget {
  const CustombBookImage({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 3.6,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: const BorderRadius.all(Radius.circular(18)),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
              imageUrl,
            ),
          ),
        ),
      ),
    );
  }
}
