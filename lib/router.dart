import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import 'package:counter_riverpod/views/DetailView.dart';
import 'package:counter_riverpod/views/HomeView.dart';


final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const MyHomePage(
          title: 'riverpodサンプル',
        );
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'details',
          builder: (BuildContext context, GoRouterState state) {
            return const DetailsScreen();
          },
        ),
      ],
    ),
  ],
);
