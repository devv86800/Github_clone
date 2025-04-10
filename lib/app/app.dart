import 'package:flutter/material.dart';
import 'package:github_clone/models/github_user.dart';

import 'package:github_clone/presentation/screens/home/home_screen.dart';
import 'package:github_clone/presentation/screens/search/search_page.dart';
import 'package:go_router/go_router.dart';

import '../presentation/screens/dashboard/bottom_bar_page.dart';
part 'router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "Github Clone",
      routerConfig: _router,
      theme: ThemeData.dark(),
    );
  }
}
