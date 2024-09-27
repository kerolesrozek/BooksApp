import 'package:booksapp/core/approutes.dart';
import 'package:booksapp/features/home/domain/entities/book_entity.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookItem extends StatelessWidget {
  const BookItem({
    super.key, required this.bookEntity,
    
  });

final  BookEntity bookEntity;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(Approutes.kBookDetail);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * .25,
          child: AspectRatio(
            aspectRatio: 3.2 / 5,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: CachedNetworkImage(
                fit: BoxFit.fill,
                errorWidget: (context, url, error) => Icon(Icons.error),
                imageUrl:
          bookEntity.image??       'https://biblebookprofiler.com/images/James_Structure.png',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
