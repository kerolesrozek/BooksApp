import 'package:booksapp/features/home/presentation/views/widgets/best_seller_listview_widget.dart';
import 'package:booksapp/features/home/presentation/views/widgets/books_listview_widget.dart';
import 'package:booksapp/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class HomeviewBody extends StatelessWidget {
  const HomeviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(12),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CustomAppBar()),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(child: BooksListView()),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
          SliverToBoxAdapter(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Best Seller',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Sectra Fine',
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          BestSellerListView(),
        ],
      ),
    );
  }
}
