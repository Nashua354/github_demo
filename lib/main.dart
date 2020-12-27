import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_demo/bloc/user_bloc.dart';
import 'package:github_demo/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<UserBloc>(
          create: (context) => UserBloc(), child: HomeScreen()),
      debugShowCheckedModeBanner: false,
    );
  }
}
