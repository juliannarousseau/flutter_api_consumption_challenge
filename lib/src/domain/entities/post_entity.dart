// ignore_for_file: public_member_api_docs, sort_constructors_first
class PostEntity {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostEntity({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  PostEntity copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) {
    return PostEntity(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }
}
