import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_demo/bloc/user_bloc.dart';
import 'package:github_demo/bloc/user_event.dart';
import 'package:github_demo/bloc/user_state.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(hintText: 'github id'),
                    ),
                  ),
                  RaisedButton(
                    child: Text('Search'),
                    onPressed: () async {
                      BlocProvider.of<UserBloc>(context)
                          .add(Fetch(_controller.text));
                    },
                  ),
                ],
              ),
              BlocBuilder<UserBloc, UserState>(
                builder: (_, state) {
                  return state.when(
                    success: (value) => Container(
                      child: Column(
                        children: [
                          Text('id ${value.id}'),
                          Text('Name : ${value.name}'),
                          Text('Followers : ${value.followers}'),
                          Text('Following : ${value.following}')
                        ],
                      ),
                    ),
                    initial: () => Container(
                        child: Text('Type github userId and hit Search')),
                    error: () => Container(child: Text('Error')),
                    loading: () => Center(child: CircularProgressIndicator()),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
