import 'package:flutter/material.dart';

class StatCard extends StatelessWidget {
  final int followers;
  final int following;
  final int repos;

  const StatCard({required this.followers, required this.following, required this.repos});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildItem('Followers', followers),
        _buildItem('Following', following),
        _buildItem('Repos', repos),
      ],
    );
  }

  Widget _buildItem(String label, int count) {
    return Column(
      children: [
        Text('$count', style: TextStyle(fontWeight: FontWeight.bold)),
        Text(label),
      ],
    );
  }
}
