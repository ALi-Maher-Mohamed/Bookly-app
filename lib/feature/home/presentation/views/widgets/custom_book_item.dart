import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustombBookImage extends StatelessWidget {
  const CustombBookImage({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6 / 3.6,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          placeholder: (context, url) =>
              const Center(child: CircularProgressIndicator()),
          imageUrl: imageUrl,
          errorWidget: (context, url, error) =>
              const Icon(Icons.error_outline_outlined),
        ),
      ),
    );
  }
}
