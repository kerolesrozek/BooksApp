import 'package:flutter/material.dart';

class CustomtextField extends StatelessWidget {
  const CustomtextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          hintText: 'Search',
          suffixIcon: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
              )),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(14))),
    );
  }
}
