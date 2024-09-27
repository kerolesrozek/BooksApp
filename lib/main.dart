import 'package:booksapp/core/approutes.dart';
import 'package:booksapp/core/constants.dart';
import 'package:booksapp/core/setup_service_locator.dart';
import 'package:booksapp/core/simple_bloc_observer.dart';
import 'package:booksapp/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  setUpSreviceLocator();
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(kBooks);
  await Hive.openBox<BookEntity>(kNewestBooks);
  Bloc.observer=SimpleBlocObserver();
  runApp(BooksApp());
}




class BooksApp extends StatelessWidget {
  const BooksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark().copyWith(
          // scaffoldBackgroundColor: Color(value)
          ),
      debugShowCheckedModeBanner: false,
      routerConfig: Approutes.router,
    );
  }
}
