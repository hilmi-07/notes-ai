import '../entities/note.dart';
import '../repositories/notes_repository.dart';

class CreateNote {
  final NotesRepository repository;

  CreateNote(this.repository);

  Future<Note> call({
    required String title,
    required String content,
  }) {
    return repository.createNote(
      title: title,
      content: content,
    );
  }
}
