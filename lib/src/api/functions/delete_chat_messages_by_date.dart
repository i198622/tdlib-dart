import '../tdapi.dart';

/// Deletes all messages between the specified dates in a chat. Supported only
/// for private chats and basic groups. Messages sent in the last 30 seconds
/// will not be deleted
/// Returns [Ok]
class DeleteChatMessagesByDate extends TdFunction {
  DeleteChatMessagesByDate(
      {required this.chatId,
      required this.minDate,
      required this.maxDate,
      required this.revoke});

  /// [chatId] Chat identifier
  final int chatId;

  /// [minDate] The minimum date of the messages to delete
  final int minDate;

  /// [maxDate] The maximum date of the messages to delete
  final int maxDate;

  /// [revoke] Pass true to try to delete chat messages for all users; private
  /// chats only
  final bool revoke;

  static const String CONSTRUCTOR = 'deleteChatMessagesByDate';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'min_date': this.minDate,
        'max_date': this.maxDate,
        'revoke': this.revoke,
        '@type': CONSTRUCTOR
      };
}
