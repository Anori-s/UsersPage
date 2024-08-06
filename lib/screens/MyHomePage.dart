import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:secound_app/api/api.dart';
import 'package:secound_app/models/user.dart';
import 'package:secound_app/provider/user_provider.dart';

import '../widgets/user_card.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('𝐔𝐒𝐄𝐑𝐒',style: TextStyle(color: Colors.white),),
        ),
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: userProvider.isLoading
              ? Center(child: CircularProgressIndicator())
              : userProvider.errorMessages != null
                  ? Center(
                      child: Text(
                        userProvider.errorMessages!,
                      ),
                    )
                  : ListView.builder(
                      itemCount: userProvider.users.length,
                      itemBuilder: (context, index) {
                        User user = userProvider.users[index];
                        int num = Random().nextInt(7) + 1;
                        return UserCard(imagePath:'assets/${num}.png', user: user,);
                      }),
        ));
  }
}
