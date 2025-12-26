import '../../models/note.dart';
import '../notes_repository.dart';

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

  @override
  Future<void> deleteNote(String id) async {
    _notes.removeWhere((note) => note.id == id);
  }

  @override
  Future<void> toggleDone(String id) {
    // TODO: implement toggleDone
    throw UnimplementedError();
  }
}
