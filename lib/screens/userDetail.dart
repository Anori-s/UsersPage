// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:secound_app/models/user.dart';
import 'package:secound_app/widgets/infos.dart';
import 'package:secound_app/widgets/textcard.dart';

class Userdetail extends StatelessWidget {
  final User user;
  final String imagePath;
  const Userdetail({required this.user, required this.imagePath, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ID: ${user.id}'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                clipBehavior: Clip.hardEdge,
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(imagePath),
              ),
              Text('${user.name}', style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold,)
              ),
              Text('${user.username}', style: TextStyle(color:Colors.grey,fontSize: 12,)
              ),
              infoCard(title: 'email', subTitle: user.email, icon: Icons.email),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextCard(ftext:'street',subtext: user.address['street'] ,),
                  TextCard(ftext:'suite',subtext: user.address['suite'] ,),
                  TextCard(ftext:'city',subtext: user.address['city'] ,),
                ],
              ),
              infoCard(title: 'phone', subTitle: user.phone, icon: Icons.phone),
              infoCard(title: 'website', subTitle: user.website, icon: Icons.web),
              infoCard(title: 'company', subTitle: user.company['name'], icon: Icons.house)
            ],
          ),
        ),
      ),
    );
  }
}


