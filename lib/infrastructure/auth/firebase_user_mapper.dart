import 'package:ddd/domain/core/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../domain/auth/user.dart' as domain;

// 0.18.0^ version of firebase_auth, the class FirebaseUser was changed to User
extension FireBaseUserDomainX on User {
  domain.User? toDomain() {
    return domain.User(uid: UniqueId.fromUniqueString(uid));
  }
}
