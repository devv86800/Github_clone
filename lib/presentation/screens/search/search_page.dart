import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_clone/presentation/screens/search/bloc/search_bloc.dart';
import 'package:github_clone/presentation/screens/search/screen/search_screen.dart';

import '../../../data/repositories/github_repository.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final repository = GitHubRepositoryImpl();

    return BlocProvider(
      create: (context) => SearchBloc(repository),
      child: SearchScreen(),
    );
  }
}
