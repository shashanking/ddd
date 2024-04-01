import 'package:ddd/domain/core/value_objects.dart';

import 'package:dartz/dartz.dart';

import '../core/failures.dart';
import '../core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String value) {
    // assert(value != null);
    return EmailAddress._(validateEmailAddress(value));
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String value) {
    // assert(value != null);
    return Password._(validatePassword(value));
  }

  const Password._(this.value);
}
