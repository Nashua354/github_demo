// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserEventTearOff {
  const _$UserEventTearOff();

// ignore: unused_element
  Fetch fetch(String text) {
    return Fetch(
      text,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserEvent = _$UserEventTearOff();

/// @nodoc
mixin _$UserEvent {
  String get text;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetch(String text),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetch(String text),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetch(Fetch value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetch(Fetch value),
    @required TResult orElse(),
  });

  $UserEventCopyWith<UserEvent> get copyWith;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res> implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  final UserEvent _value;
  // ignore: unused_field
  final $Res Function(UserEvent) _then;

  @override
  $Res call({
    Object text = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed ? _value.text : text as String,
    ));
  }
}

/// @nodoc
abstract class $FetchCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory $FetchCopyWith(Fetch value, $Res Function(Fetch) then) =
      _$FetchCopyWithImpl<$Res>;
  @override
  $Res call({String text});
}

/// @nodoc
class _$FetchCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $FetchCopyWith<$Res> {
  _$FetchCopyWithImpl(Fetch _value, $Res Function(Fetch) _then)
      : super(_value, (v) => _then(v as Fetch));

  @override
  Fetch get _value => super._value as Fetch;

  @override
  $Res call({
    Object text = freezed,
  }) {
    return _then(Fetch(
      text == freezed ? _value.text : text as String,
    ));
  }
}

/// @nodoc
class _$Fetch implements Fetch {
  const _$Fetch(this.text) : assert(text != null);

  @override
  final String text;

  @override
  String toString() {
    return 'UserEvent.fetch(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Fetch &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(text);

  @override
  $FetchCopyWith<Fetch> get copyWith =>
      _$FetchCopyWithImpl<Fetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetch(String text),
  }) {
    assert(fetch != null);
    return fetch(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetch(String text),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetch != null) {
      return fetch(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetch(Fetch value),
  }) {
    assert(fetch != null);
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetch(Fetch value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class Fetch implements UserEvent {
  const factory Fetch(String text) = _$Fetch;

  @override
  String get text;
  @override
  $FetchCopyWith<Fetch> get copyWith;
}
