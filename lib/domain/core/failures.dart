import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  /// Notes Failures
  const factory ValueFailure.exceedingLength({
    required T failedInput,
    required int max,
  }) = ExceedingLength<T>;
  const factory ValueFailure.empty({required T failedInput}) = Empty<T>;
  const factory ValueFailure.multiline({required T failedInput}) = Multiline<T>;
  const factory ValueFailure.listTooLong({
    required T failedInput,
    required int max,
  }) = ListTooLong<T>;

  /// Auth Failures
  const factory ValueFailure.invalidEmail({required T failedInput}) =
      InvalidEmail<T>;
  const factory ValueFailure.shortPassword({required T failedInput}) =
      ShortPassword<T>;
}
