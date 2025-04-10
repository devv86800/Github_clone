import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_clone/models/github_user.dart';
import 'package:github_clone/presentation/screens/dashboard/bloc/dashboard_bloc.dart';

import 'screen/bottom_nav_bar.dart';

class BottombarPage extends StatelessWidget {
  GitHubUser user;
  BottombarPage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) {
        final bloc = DashboardBloc();
        bloc.add(SetSelectedUser(user)); 
        return bloc;
      },
      child: BottomNavBar(),
    );
  }
}
