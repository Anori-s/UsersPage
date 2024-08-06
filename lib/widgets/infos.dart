import 'package:flutter/material.dart';

import '../models/user.dart';

class infoCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData icon;

  const infoCard({super.key, required this.title, required this.subTitle, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: ListTile(
          leading: Icon(icon, size: 20, color: Colors.black),
          title: Text(
            title,
            // ignore: prefer_const_constructors
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          subtitle: Text(
            subTitle,
            // ignore: prefer_const_constructors
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
