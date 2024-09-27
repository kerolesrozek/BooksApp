import 'package:booksapp/features/home/presentation/views/widgets/best_seller_listview_widget.dart';
import 'package:booksapp/features/search/presentation/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(12),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CustomtextField(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 25,
            ),
          ),
          SliverToBoxAdapter(
              child: Text(
            'Result',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
          )),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          BestSellerListView()
        ],
      ),
    );
  }
}
