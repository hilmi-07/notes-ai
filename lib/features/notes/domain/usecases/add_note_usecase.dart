import 'dart:math';
import '../entities/note.dart';
import '../repositories/notes_repository.dart';

class AddNoteUseCase {
  final NotesRepository repository;

  AddNoteUseCase(this.repository);

  Future<void> call(String title, String content) {
    final note = Note(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      title: title,
      content: content,
      createdAt: DateTime.now(),
    );

    return repository.addNote(note);
  }
}
