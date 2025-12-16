import '../entities/note.dart';

abstract class NotesRepository {
  Future<List<Note>> getNotes();

  Future<Note> createNote({
    required String title,
    required String content,
  });

  Future<List<Note>> searchNotes(String query);
}
