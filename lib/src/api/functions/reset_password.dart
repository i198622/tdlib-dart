import '../tdapi.dart';

/// Removes 2-step verification password without previous password and access
/// to recovery email address. The password can't be reset immediately and the
/// request needs to be repeated after the specified time
/// Returns [ResetPasswordResult]
class ResetPassword extends TdFunction {
  ResetPassword();

  static const String CONSTRUCTOR = 'resetPassword';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
