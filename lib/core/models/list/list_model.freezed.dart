// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListModel<T> _$ListModelFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _ListModel<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$ListModel<T> {
  int? get code => throw _privateConstructorUsedError;
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<T>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListModelCopyWith<T, ListModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListModelCopyWith<T, $Res> {
  factory $ListModelCopyWith(
          ListModel<T> value, $Res Function(ListModel<T>) then) =
      _$ListModelCopyWithImpl<T, $Res, ListModel<T>>;
  @useResult
  $Res call({int? code, bool? success, String? message, List<T>? data});
}

/// @nodoc
class _$ListModelCopyWithImpl<T, $Res, $Val extends ListModel<T>>
    implements $ListModelCopyWith<T, $Res> {
  _$ListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListModelCopyWith<T, $Res>
    implements $ListModelCopyWith<T, $Res> {
  factory _$$_ListModelCopyWith(
          _$_ListModel<T> value, $Res Function(_$_ListModel<T>) then) =
      __$$_ListModelCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int? code, bool? success, String? message, List<T>? data});
}

/// @nodoc
class __$$_ListModelCopyWithImpl<T, $Res>
    extends _$ListModelCopyWithImpl<T, $Res, _$_ListModel<T>>
    implements _$$_ListModelCopyWith<T, $Res> {
  __$$_ListModelCopyWithImpl(
      _$_ListModel<T> _value, $Res Function(_$_ListModel<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_ListModel<T>(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$_ListModel<T> implements _ListModel<T> {
  const _$_ListModel(
      {this.code, this.success, this.message, final List<T>? data})
      : _data = data;

  factory _$_ListModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$_ListModelFromJson(json, fromJsonT);

  @override
  final int? code;
  @override
  final bool? success;
  @override
  final String? message;
  final List<T>? _data;
  @override
  List<T>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ListModel<$T>(code: $code, success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListModel<T> &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, success, message,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListModelCopyWith<T, _$_ListModel<T>> get copyWith =>
      __$$_ListModelCopyWithImpl<T, _$_ListModel<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$_ListModelToJson<T>(this, toJsonT);
  }
}

abstract class _ListModel<T> implements ListModel<T> {
  const factory _ListModel(
      {final int? code,
      final bool? success,
      final String? message,
      final List<T>? data}) = _$_ListModel<T>;

  factory _ListModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$_ListModel<T>.fromJson;

  @override
  int? get code;
  @override
  bool? get success;
  @override
  String? get message;
  @override
  List<T>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_ListModelCopyWith<T, _$_ListModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
