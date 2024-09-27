import 'package:booksapp/features/home/presentation/views/widgets/bookdetail_item.dart';
import 'package:flutter/material.dart';

class BookDetailItems extends StatelessWidget {
  const BookDetailItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.20,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => BookdetailItem()),
    );
  }
}
