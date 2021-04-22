import '../tdapi.dart';

/// Sends a custom request; for bots only
/// Returns [CustomRequestResult]
class SendCustomRequest extends TdFunction {
  SendCustomRequest({required this.method, required this.parameters});

  /// [method] The method name
  final String method;

  /// [parameters] JSON-serialized method parameters
  final String parameters;

  static const String CONSTRUCTOR = 'sendCustomRequest';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'method': this.method,
        'parameters': this.parameters,
        '@type': CONSTRUCTOR
      };
}