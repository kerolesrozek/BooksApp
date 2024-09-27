import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.title,
      this.borderradus,
      required this.colorbuttn,
      required this.colortext});
  final String title;
  final Color colorbuttn;
  final BorderRadiusGeometry? borderradus;
  final Color colortext;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 10),
      width: MediaQuery.of(context).size.width * .40,
      decoration: BoxDecoration(
        borderRadius: borderradus,
        color: colorbuttn,
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              color: colortext, fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
