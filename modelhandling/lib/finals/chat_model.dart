class Message {
  final int? id;
  final String username;
  final String message;
  final DateTime? createdAt;

  Message({
    this.id,
    required this.username,
    required this.message,
    this.createdAt,
  });

  factory Message.fromMap(Map<String, dynamic> map) {
    // task 4
    return Message(
      id: map['id'],
      username: map['username'],
      message: map['message'],
      createdAt: map['created_at'] != null ? DateTime.parse(map['created_at']) : null,
    );

}

  Object toMap() {
    return {
      'id': id,
      'username': username,
      'message': message,
      'created_at': createdAt,
    };
  }
}