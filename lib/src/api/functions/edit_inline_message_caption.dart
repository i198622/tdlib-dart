import '../tdapi.dart';

/// Edits the caption of an inline message sent via a bot; for bots only
/// Returns [Ok]
class EditInlineMessageCaption extends TdFunction {
  EditInlineMessageCaption(
      {required this.inlineMessageId, this.replyMarkup, this.caption});

  /// [inlineMessageId] Inline message identifier
  final String inlineMessageId;

  /// [replyMarkup] The new message reply markup; pass null if none
  final ReplyMarkup? replyMarkup;

  /// [caption] New message content caption; pass null to remove caption;
  /// 0-GetOption("message_caption_length_max") characters
  final FormattedText? caption;

  static const String CONSTRUCTOR = 'editInlineMessageCaption';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'inline_message_id': this.inlineMessageId,
        'reply_markup': this.replyMarkup?.toJson(),
        'caption': this.caption?.toJson(),
        '@type': CONSTRUCTOR
      };
}
