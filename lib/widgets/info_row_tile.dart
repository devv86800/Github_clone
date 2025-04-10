import 'package:flutter/material.dart';

class InfoRowTile extends StatelessWidget {
  final IconData icon;
  final String text;

  const InfoRowTile({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    if (text.isEmpty) return SizedBox.shrink();
    return ListTile(leading: Icon(icon), title: Text(text));
  }
}
