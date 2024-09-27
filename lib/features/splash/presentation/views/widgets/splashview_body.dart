import 'package:booksapp/core/approutes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigateHomeView();
  }

  /// navigate to home view
  void navigateHomeView() {
    Future.delayed(
        Duration(
          seconds: 5,
        ), () {
      GoRouter.of(context).push(Approutes.kHomeview);
    });
  }

  ///end of method

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset('assets/images/Logo.png'),
        const Text(
          'Free__Books',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
          ),
        )
      ],
    );
  }
}
