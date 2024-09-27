import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookdetailItem extends StatelessWidget {
  const BookdetailItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .20,
        child: AspectRatio(
          aspectRatio: 2 / 3,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: CachedNetworkImage(
              fit: BoxFit.fill,
              imageUrl:
                  'https://biblebookprofiler.com/images/James_Structure.png',
            ),
          ),
        ),
      ),
    );
  }
}
