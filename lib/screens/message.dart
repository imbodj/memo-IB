class Message {
  final String text;
  final bool isUser;
  final DateTime timestamp;
  final String id;

  Message({
    required this.text,
    required this.isUser,
    required this.timestamp,
    required this.id,
  });

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'isUser': isUser,
      'timestamp': timestamp.millisecondsSinceEpoch,
      'id': id,
    };
  }

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      text: json['text'],
      isUser: json['isUser'],
      timestamp: DateTime.fromMillisecondsSinceEpoch(json['timestamp']),
      id: json['id'],
    );
  }
}

