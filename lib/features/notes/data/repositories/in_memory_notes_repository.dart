import '../../domain/entities/note.dart';
import '../../domain/repositories/notes_repository.dart';

class InMemoryNotesRepository implements NotesRepository {
  final List<Note> _notes = [];

  @override
  Future<List<Note>> getNotes() async {
    return List.unmodifiable(_notes);
  }

  @override
  Future<void> addNote(Note note) async {
    _notes.add(note);
  }
}
