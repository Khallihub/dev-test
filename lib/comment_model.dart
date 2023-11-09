class Comment {
  final String author;
  final String userName;
  final String date;
  final String comment;
  final String avatarUrl;
  final List<Comment> replies;
  final String repliesCount;
  final String likes;
  final String flags;

  Comment({
    required this.author,
    required this.userName,
    required this.date,
    required this.comment,
    required this.avatarUrl,
    required this.replies,
    required this.likes,
    required this.flags,
    required this.repliesCount,
  });
}
