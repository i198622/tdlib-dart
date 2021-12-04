import '../tdapi.dart';

/// The link is a link to app settings
class InternalLinkTypeSettings extends InternalLinkType {
  const InternalLinkTypeSettings();

  static const String CONSTRUCTOR = 'internalLinkTypeSettings';

  static InternalLinkTypeSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InternalLinkTypeSettings();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
