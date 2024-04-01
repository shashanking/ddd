import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/value_objects.dart';
part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  factory User({
    required UniqueId uid,
  }) = _User;
}
