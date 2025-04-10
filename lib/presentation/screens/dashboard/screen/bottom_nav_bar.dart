import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_clone/presentation/screens/dashboard/bloc/dashboard_bloc.dart';

import '../../home/home_screen.dart';

class BottomNavBar extends StatelessWidget {
  final List<Widget> widgetOptions = const [
    HomeScreen(),
    Center(
      child: Text("Notification"),
    ),
    Center(
      child: Text("Notification"),
    ),
    Center(
      child: Text("Profile"),
    ),
  ];

  void _onItemTapped(BuildContext context, int index) {
    context.read<DashboardBloc>().add(TabChanged(index));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) => Scaffold(
        body: widgetOptions.elementAt(state.selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.blueGrey,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: 'Notifications'),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore), label: 'Explore'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
          currentIndex: state.selectedIndex,
          onTap: (index) => _onItemTapped(context, index),
        ),
      ),
    );
  }
}
