class Note {
  final String id;
  final String title;
  final String content;
  final String text;
  final bool done;
  final DateTime createdAt;

  const Note({
    required this.id,
    required this.title,
    required this.content,
    required this.text,
    required this.done,
    required this.createdAt,
  });
}

