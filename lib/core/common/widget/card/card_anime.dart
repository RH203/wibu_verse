import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class CardAnime extends StatelessWidget {
  const CardAnime({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      color: Theme.of(context).colorScheme.onPrimary,
      margin: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
