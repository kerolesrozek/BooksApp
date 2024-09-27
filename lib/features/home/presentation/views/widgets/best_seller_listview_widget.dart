import 'package:booksapp/features/home/presentation/views/widgets/best_seller_item-widget.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: 20, itemBuilder: (context, index) => BestSellerItem());
  }
}
