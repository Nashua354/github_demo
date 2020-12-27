import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_demo/model/user_data.dart';
part 'user_state.freezed.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState.initial() = _Initial;
  const factory UserState.loading() = _Loading;
  const factory UserState.error() = _Error;
  const factory UserState.success(UserData data) = _Success;
}
