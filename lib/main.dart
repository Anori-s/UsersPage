import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:secound_app/provider/user_provider.dart';
import 'package:secound_app/screens/MyHomePage.dart';
void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (_)=> UserProvider()..fetchUsers(),
        ),
    ],
    child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}


