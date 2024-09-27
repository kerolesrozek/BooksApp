import 'package:booksapp/features/home/presentation/views/widgets/book_detail_body.dart';

import 'package:flutter/material.dart';

class BookDetailView extends StatelessWidget {
  const BookDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BookDetailBody(),
      ),
    );
  }
}
