import 'package:go_router/go_router.dart';

import 'home/home_screen.dart';

final routing = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      name: 'home',
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);