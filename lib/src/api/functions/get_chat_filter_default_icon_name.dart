import '../tdapi.dart';

/// Returns default icon name for a filter. Can be called synchronously
/// Returns [Text]
class GetChatFilterDefaultIconName extends TdFunction {
  GetChatFilterDefaultIconName({required this.filter});

  /// [filter] Chat filter
  final ChatFilter filter;

  static const String CONSTRUCTOR = 'getChatFilterDefaultIconName';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'filter': this.filter.toJson(), '@type': CONSTRUCTOR};
}