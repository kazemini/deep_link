import 'package:go_router/go_router.dart';

import '../pages/home_page.dart';
import '../pages/news_page.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => const HomePage(),
  ),
  GoRoute(
    path: "/news/:id/:path",
    name: "news",
    builder: (context, state) => NewsPage(
      userId: state.pathParameters["id"].toString(),
      path: state.pathParameters["path"].toString(),
    ),
  )
]);