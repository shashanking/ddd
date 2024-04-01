// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ddd/domain/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure err;
  UnexpectedValueError({
    required this.err,
  });

  @override
  String toString() {
    const explaination =
        'Encountered a Value Failure at unrecoverable point, Terminating.';
    return '$explaination Failure was : $ValueFailure ';
  }
}
