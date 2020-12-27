import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_demo/bloc/user_event.dart';
import 'package:github_demo/bloc/user_state.dart';
import 'package:github_demo/repository/get_users.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserState.initial());
  GetUsersRepository repo = GetUsersRepository();
  @override
  Stream<UserState> mapEventToState(UserEvent event) async* {
    if (event is Fetch) {
      try {
        yield UserState.loading();
        var res = await repo.fetchUser(event.text);
        if (res == null) {
          yield UserState.error();
        } else {
          yield UserState.success(res);
        }
      } catch (e) {
        yield UserState.error();
      }
    }
  }
}
