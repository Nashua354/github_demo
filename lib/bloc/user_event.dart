import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_event.freezed.dart';

@freezed
abstract class UserEvent with _$UserEvent {
  const factory UserEvent.fetch(String text) = Fetch;
}
