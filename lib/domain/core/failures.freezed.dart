// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedInput => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedInput, int max) exceedingLength,
    required TResult Function(T failedInput) empty,
    required TResult Function(T failedInput) multiline,
    required TResult Function(T failedInput, int max) listTooLong,
    required TResult Function(T failedInput) invalidEmail,
    required TResult Function(T failedInput) shortPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedInput, int max)? exceedingLength,
    TResult? Function(T failedInput)? empty,
    TResult? Function(T failedInput)? multiline,
    TResult? Function(T failedInput, int max)? listTooLong,
    TResult? Function(T failedInput)? invalidEmail,
    TResult? Function(T failedInput)? shortPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedInput, int max)? exceedingLength,
    TResult Function(T failedInput)? empty,
    TResult Function(T failedInput)? multiline,
    TResult Function(T failedInput, int max)? listTooLong,
    TResult Function(T failedInput)? invalidEmail,
    TResult Function(T failedInput)? shortPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res, ValueFailure<T>>;
  @useResult
  $Res call({T failedInput});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res, $Val extends ValueFailure<T>>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedInput = freezed,
  }) {
    return _then(_value.copyWith(
      failedInput: freezed == failedInput
          ? _value.failedInput
          : failedInput // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExceedingLengthImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ExceedingLengthImplCopyWith(_$ExceedingLengthImpl<T> value,
          $Res Function(_$ExceedingLengthImpl<T>) then) =
      __$$ExceedingLengthImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedInput, int max});
}

/// @nodoc
class __$$ExceedingLengthImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ExceedingLengthImpl<T>>
    implements _$$ExceedingLengthImplCopyWith<T, $Res> {
  __$$ExceedingLengthImplCopyWithImpl(_$ExceedingLengthImpl<T> _value,
      $Res Function(_$ExceedingLengthImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedInput = freezed,
    Object? max = null,
  }) {
    return _then(_$ExceedingLengthImpl<T>(
      failedInput: freezed == failedInput
          ? _value.failedInput
          : failedInput // ignore: cast_nullable_to_non_nullable
              as T,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ExceedingLengthImpl<T> implements ExceedingLength<T> {
  const _$ExceedingLengthImpl({required this.failedInput, required this.max});

  @override
  final T failedInput;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingLength(failedInput: $failedInput, max: $max)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExceedingLengthImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedInput, failedInput) &&
            (identical(other.max, max) || other.max == max));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedInput), max);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExceedingLengthImplCopyWith<T, _$ExceedingLengthImpl<T>> get copyWith =>
      __$$ExceedingLengthImplCopyWithImpl<T, _$ExceedingLengthImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedInput, int max) exceedingLength,
    required TResult Function(T failedInput) empty,
    required TResult Function(T failedInput) multiline,
    required TResult Function(T failedInput, int max) listTooLong,
    required TResult Function(T failedInput) invalidEmail,
    required TResult Function(T failedInput) shortPassword,
  }) {
    return exceedingLength(failedInput, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedInput, int max)? exceedingLength,
    TResult? Function(T failedInput)? empty,
    TResult? Function(T failedInput)? multiline,
    TResult? Function(T failedInput, int max)? listTooLong,
    TResult? Function(T failedInput)? invalidEmail,
    TResult? Function(T failedInput)? shortPassword,
  }) {
    return exceedingLength?.call(failedInput, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedInput, int max)? exceedingLength,
    TResult Function(T failedInput)? empty,
    TResult Function(T failedInput)? multiline,
    TResult Function(T failedInput, int max)? listTooLong,
    TResult Function(T failedInput)? invalidEmail,
    TResult Function(T failedInput)? shortPassword,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(failedInput, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
  }) {
    return exceedingLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements ValueFailure<T> {
  const factory ExceedingLength(
      {required final T failedInput,
      required final int max}) = _$ExceedingLengthImpl<T>;

  @override
  T get failedInput;
  int get max;
  @override
  @JsonKey(ignore: true)
  _$$ExceedingLengthImplCopyWith<T, _$ExceedingLengthImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl<T> value, $Res Function(_$EmptyImpl<T>) then) =
      __$$EmptyImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedInput});
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$EmptyImpl<T>>
    implements _$$EmptyImplCopyWith<T, $Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl<T> _value, $Res Function(_$EmptyImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedInput = freezed,
  }) {
    return _then(_$EmptyImpl<T>(
      failedInput: freezed == failedInput
          ? _value.failedInput
          : failedInput // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$EmptyImpl<T> implements Empty<T> {
  const _$EmptyImpl({required this.failedInput});

  @override
  final T failedInput;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failedInput: $failedInput)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedInput, failedInput));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedInput));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyImplCopyWith<T, _$EmptyImpl<T>> get copyWith =>
      __$$EmptyImplCopyWithImpl<T, _$EmptyImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedInput, int max) exceedingLength,
    required TResult Function(T failedInput) empty,
    required TResult Function(T failedInput) multiline,
    required TResult Function(T failedInput, int max) listTooLong,
    required TResult Function(T failedInput) invalidEmail,
    required TResult Function(T failedInput) shortPassword,
  }) {
    return empty(failedInput);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedInput, int max)? exceedingLength,
    TResult? Function(T failedInput)? empty,
    TResult? Function(T failedInput)? multiline,
    TResult? Function(T failedInput, int max)? listTooLong,
    TResult? Function(T failedInput)? invalidEmail,
    TResult? Function(T failedInput)? shortPassword,
  }) {
    return empty?.call(failedInput);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedInput, int max)? exceedingLength,
    TResult Function(T failedInput)? empty,
    TResult Function(T failedInput)? multiline,
    TResult Function(T failedInput, int max)? listTooLong,
    TResult Function(T failedInput)? invalidEmail,
    TResult Function(T failedInput)? shortPassword,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedInput);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({required final T failedInput}) = _$EmptyImpl<T>;

  @override
  T get failedInput;
  @override
  @JsonKey(ignore: true)
  _$$EmptyImplCopyWith<T, _$EmptyImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MultilineImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$MultilineImplCopyWith(
          _$MultilineImpl<T> value, $Res Function(_$MultilineImpl<T>) then) =
      __$$MultilineImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedInput});
}

/// @nodoc
class __$$MultilineImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$MultilineImpl<T>>
    implements _$$MultilineImplCopyWith<T, $Res> {
  __$$MultilineImplCopyWithImpl(
      _$MultilineImpl<T> _value, $Res Function(_$MultilineImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedInput = freezed,
  }) {
    return _then(_$MultilineImpl<T>(
      failedInput: freezed == failedInput
          ? _value.failedInput
          : failedInput // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$MultilineImpl<T> implements Multiline<T> {
  const _$MultilineImpl({required this.failedInput});

  @override
  final T failedInput;

  @override
  String toString() {
    return 'ValueFailure<$T>.multiline(failedInput: $failedInput)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultilineImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedInput, failedInput));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedInput));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MultilineImplCopyWith<T, _$MultilineImpl<T>> get copyWith =>
      __$$MultilineImplCopyWithImpl<T, _$MultilineImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedInput, int max) exceedingLength,
    required TResult Function(T failedInput) empty,
    required TResult Function(T failedInput) multiline,
    required TResult Function(T failedInput, int max) listTooLong,
    required TResult Function(T failedInput) invalidEmail,
    required TResult Function(T failedInput) shortPassword,
  }) {
    return multiline(failedInput);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedInput, int max)? exceedingLength,
    TResult? Function(T failedInput)? empty,
    TResult? Function(T failedInput)? multiline,
    TResult? Function(T failedInput, int max)? listTooLong,
    TResult? Function(T failedInput)? invalidEmail,
    TResult? Function(T failedInput)? shortPassword,
  }) {
    return multiline?.call(failedInput);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedInput, int max)? exceedingLength,
    TResult Function(T failedInput)? empty,
    TResult Function(T failedInput)? multiline,
    TResult Function(T failedInput, int max)? listTooLong,
    TResult Function(T failedInput)? invalidEmail,
    TResult Function(T failedInput)? shortPassword,
    required TResult orElse(),
  }) {
    if (multiline != null) {
      return multiline(failedInput);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return multiline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
  }) {
    return multiline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (multiline != null) {
      return multiline(this);
    }
    return orElse();
  }
}

abstract class Multiline<T> implements ValueFailure<T> {
  const factory Multiline({required final T failedInput}) = _$MultilineImpl<T>;

  @override
  T get failedInput;
  @override
  @JsonKey(ignore: true)
  _$$MultilineImplCopyWith<T, _$MultilineImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListTooLongImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ListTooLongImplCopyWith(_$ListTooLongImpl<T> value,
          $Res Function(_$ListTooLongImpl<T>) then) =
      __$$ListTooLongImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedInput, int max});
}

/// @nodoc
class __$$ListTooLongImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ListTooLongImpl<T>>
    implements _$$ListTooLongImplCopyWith<T, $Res> {
  __$$ListTooLongImplCopyWithImpl(
      _$ListTooLongImpl<T> _value, $Res Function(_$ListTooLongImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedInput = freezed,
    Object? max = null,
  }) {
    return _then(_$ListTooLongImpl<T>(
      failedInput: freezed == failedInput
          ? _value.failedInput
          : failedInput // ignore: cast_nullable_to_non_nullable
              as T,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ListTooLongImpl<T> implements ListTooLong<T> {
  const _$ListTooLongImpl({required this.failedInput, required this.max});

  @override
  final T failedInput;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.listTooLong(failedInput: $failedInput, max: $max)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListTooLongImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedInput, failedInput) &&
            (identical(other.max, max) || other.max == max));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedInput), max);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListTooLongImplCopyWith<T, _$ListTooLongImpl<T>> get copyWith =>
      __$$ListTooLongImplCopyWithImpl<T, _$ListTooLongImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedInput, int max) exceedingLength,
    required TResult Function(T failedInput) empty,
    required TResult Function(T failedInput) multiline,
    required TResult Function(T failedInput, int max) listTooLong,
    required TResult Function(T failedInput) invalidEmail,
    required TResult Function(T failedInput) shortPassword,
  }) {
    return listTooLong(failedInput, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedInput, int max)? exceedingLength,
    TResult? Function(T failedInput)? empty,
    TResult? Function(T failedInput)? multiline,
    TResult? Function(T failedInput, int max)? listTooLong,
    TResult? Function(T failedInput)? invalidEmail,
    TResult? Function(T failedInput)? shortPassword,
  }) {
    return listTooLong?.call(failedInput, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedInput, int max)? exceedingLength,
    TResult Function(T failedInput)? empty,
    TResult Function(T failedInput)? multiline,
    TResult Function(T failedInput, int max)? listTooLong,
    TResult Function(T failedInput)? invalidEmail,
    TResult Function(T failedInput)? shortPassword,
    required TResult orElse(),
  }) {
    if (listTooLong != null) {
      return listTooLong(failedInput, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return listTooLong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
  }) {
    return listTooLong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (listTooLong != null) {
      return listTooLong(this);
    }
    return orElse();
  }
}

abstract class ListTooLong<T> implements ValueFailure<T> {
  const factory ListTooLong(
      {required final T failedInput,
      required final int max}) = _$ListTooLongImpl<T>;

  @override
  T get failedInput;
  int get max;
  @override
  @JsonKey(ignore: true)
  _$$ListTooLongImplCopyWith<T, _$ListTooLongImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidEmailImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidEmailImplCopyWith(_$InvalidEmailImpl<T> value,
          $Res Function(_$InvalidEmailImpl<T>) then) =
      __$$InvalidEmailImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedInput});
}

/// @nodoc
class __$$InvalidEmailImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidEmailImpl<T>>
    implements _$$InvalidEmailImplCopyWith<T, $Res> {
  __$$InvalidEmailImplCopyWithImpl(
      _$InvalidEmailImpl<T> _value, $Res Function(_$InvalidEmailImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedInput = freezed,
  }) {
    return _then(_$InvalidEmailImpl<T>(
      failedInput: freezed == failedInput
          ? _value.failedInput
          : failedInput // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidEmailImpl<T> implements InvalidEmail<T> {
  const _$InvalidEmailImpl({required this.failedInput});

  @override
  final T failedInput;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedInput: $failedInput)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmailImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedInput, failedInput));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedInput));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidEmailImplCopyWith<T, _$InvalidEmailImpl<T>> get copyWith =>
      __$$InvalidEmailImplCopyWithImpl<T, _$InvalidEmailImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedInput, int max) exceedingLength,
    required TResult Function(T failedInput) empty,
    required TResult Function(T failedInput) multiline,
    required TResult Function(T failedInput, int max) listTooLong,
    required TResult Function(T failedInput) invalidEmail,
    required TResult Function(T failedInput) shortPassword,
  }) {
    return invalidEmail(failedInput);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedInput, int max)? exceedingLength,
    TResult? Function(T failedInput)? empty,
    TResult? Function(T failedInput)? multiline,
    TResult? Function(T failedInput, int max)? listTooLong,
    TResult? Function(T failedInput)? invalidEmail,
    TResult? Function(T failedInput)? shortPassword,
  }) {
    return invalidEmail?.call(failedInput);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedInput, int max)? exceedingLength,
    TResult Function(T failedInput)? empty,
    TResult Function(T failedInput)? multiline,
    TResult Function(T failedInput, int max)? listTooLong,
    TResult Function(T failedInput)? invalidEmail,
    TResult Function(T failedInput)? shortPassword,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedInput);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({required final T failedInput}) =
      _$InvalidEmailImpl<T>;

  @override
  T get failedInput;
  @override
  @JsonKey(ignore: true)
  _$$InvalidEmailImplCopyWith<T, _$InvalidEmailImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShortPasswordImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ShortPasswordImplCopyWith(_$ShortPasswordImpl<T> value,
          $Res Function(_$ShortPasswordImpl<T>) then) =
      __$$ShortPasswordImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedInput});
}

/// @nodoc
class __$$ShortPasswordImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ShortPasswordImpl<T>>
    implements _$$ShortPasswordImplCopyWith<T, $Res> {
  __$$ShortPasswordImplCopyWithImpl(_$ShortPasswordImpl<T> _value,
      $Res Function(_$ShortPasswordImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedInput = freezed,
  }) {
    return _then(_$ShortPasswordImpl<T>(
      failedInput: freezed == failedInput
          ? _value.failedInput
          : failedInput // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ShortPasswordImpl<T> implements ShortPassword<T> {
  const _$ShortPasswordImpl({required this.failedInput});

  @override
  final T failedInput;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortPassword(failedInput: $failedInput)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortPasswordImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedInput, failedInput));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedInput));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShortPasswordImplCopyWith<T, _$ShortPasswordImpl<T>> get copyWith =>
      __$$ShortPasswordImplCopyWithImpl<T, _$ShortPasswordImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedInput, int max) exceedingLength,
    required TResult Function(T failedInput) empty,
    required TResult Function(T failedInput) multiline,
    required TResult Function(T failedInput, int max) listTooLong,
    required TResult Function(T failedInput) invalidEmail,
    required TResult Function(T failedInput) shortPassword,
  }) {
    return shortPassword(failedInput);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedInput, int max)? exceedingLength,
    TResult? Function(T failedInput)? empty,
    TResult? Function(T failedInput)? multiline,
    TResult? Function(T failedInput, int max)? listTooLong,
    TResult? Function(T failedInput)? invalidEmail,
    TResult? Function(T failedInput)? shortPassword,
  }) {
    return shortPassword?.call(failedInput);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedInput, int max)? exceedingLength,
    TResult Function(T failedInput)? empty,
    TResult Function(T failedInput)? multiline,
    TResult Function(T failedInput, int max)? listTooLong,
    TResult Function(T failedInput)? invalidEmail,
    TResult Function(T failedInput)? shortPassword,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(failedInput);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
  }) {
    return shortPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword({required final T failedInput}) =
      _$ShortPasswordImpl<T>;

  @override
  T get failedInput;
  @override
  @JsonKey(ignore: true)
  _$$ShortPasswordImplCopyWith<T, _$ShortPasswordImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
