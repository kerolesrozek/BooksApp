import 'package:booksapp/core/approutes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'assets/images/Logo.png',
          height: 25,
        ),
        IconButton(
            onPressed: () {
              GoRouter.of(context).push(Approutes.kSearchView);
            },
            icon: const Icon(FontAwesomeIcons.magnifyingGlass))
      ],
    );
  }
}
