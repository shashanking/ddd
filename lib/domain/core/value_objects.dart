import 'package:dartz/dartz.dart';
import 'package:ddd/domain/core/errors.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import 'failures.dart';

@immutable
abstract class ValueObject<T> {
  Either<ValueFailure<T>, T> get value;

  const ValueObject();

  /// throws [UnexpectedErrorValue] on [ValueFailuree]
  // id = identity i.e. same as (r)=>r
  T get getORCrash {
    return value.fold((l) => throw UnexpectedValueError(err: l), id);
  }

  @override
  bool operator ==(covariant ValueObject<T> other) {
    if (identical(this, other)) return true;

    return other.value == value;
  }

  Either<ValueFailure<dynamic>, dynamic> get failureOrUnit =>
      value.fold((l) => left(l), (r) => right(unit));

  bool isValid() => value.isRight();

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value(value: $value)';
}

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueId() {
    return UniqueId._(right(const Uuid().v1()));
  }

  factory UniqueId.fromUniqueString(String uniqueId) {
    return UniqueId._(
      right(uniqueId),
    );
  }
  const UniqueId._(this.value);
}
