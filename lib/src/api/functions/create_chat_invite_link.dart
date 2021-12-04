import '../tdapi.dart';

/// Creates a new invite link for a chat. Available for basic groups,
/// supergroups, and channels. Requires administrator privileges and
/// can_invite_users right in the chat
/// Returns [ChatInviteLink]
class CreateChatInviteLink extends TdFunction {
  CreateChatInviteLink(
      {required this.chatId,
      required this.name,
      required this.expireDate,
      required this.memberLimit,
      required this.createsJoinRequest});

  /// [chatId] Chat identifier
  final int chatId;

  /// [name] Invite link name; 0-32 characters
  final String name;

  /// [expireDate] Point in time (Unix timestamp) when the link will expire;
  /// pass 0 if never
  final int expireDate;

  /// [memberLimit] The maximum number of chat members that can join the chat by
  /// the link simultaneously; 0-99999; pass 0 if not limited
  final int memberLimit;

  /// [createsJoinRequest] True, if the link only creates join request. If true,
  /// member_limit must not be specified
  final bool createsJoinRequest;

  static const String CONSTRUCTOR = 'createChatInviteLink';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'name': this.name,
        'expire_date': this.expireDate,
        'member_limit': this.memberLimit,
        'creates_join_request': this.createsJoinRequest,
        '@type': CONSTRUCTOR
      };
}
