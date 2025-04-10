import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_clone/presentation/screens/dashboard/bloc/dashboard_bloc.dart';
import '../../../widgets/profile_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var userData = context.read<DashboardBloc>().selectUser;

    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(state.selectedUser?.name ?? ""),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ProfileHeader(user: state.selectedUser),
          ),
        );
      },
    );
    ;
  }
}
