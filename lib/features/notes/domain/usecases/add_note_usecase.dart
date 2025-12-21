import '../entities/note.dart';
import '../repositories/notes_repository.dart';

class AddNoteUseCase {
  final NotesRepository repository;

  AddNoteUseCase(this.repository);

  void call(Note note) {
    repository.addNote(note);
  }
}
