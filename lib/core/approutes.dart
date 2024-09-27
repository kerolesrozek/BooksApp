import 'package:booksapp/features/home/presentation/views/book_detail_view.dart';
import 'package:booksapp/features/home/presentation/views/home_view.dart';
import 'package:booksapp/features/search/presentation/views/search_view.dart';
import 'package:booksapp/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

class Approutes {
  static String kHomeview = '/homeview';
  static String kBookDetail = '/bookdetail';
  static String kSearchView = '/searchview';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: Approutes.kHomeview,
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: Approutes.kBookDetail,
        builder: (context, state) => BookDetailView(),
      ),
      GoRoute(
        path: Approutes.kSearchView,
        builder: (context, state) => SearchView(),
      ),
    ],
  );
}
