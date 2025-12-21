import '../../domain/entities/note.dart';
import '../../domain/repositories/notes_repository.dart';

class InMemoryNotesRepository implements NotesRepository {
  final List<Note> _notes = [];

  @override
  List<Note> getNotes() {
    return List.unmodifiable(_notes);
  }

  @override
  void addNote(Note note) {
    _notes.add(note);
  }
}
