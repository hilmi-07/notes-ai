import '../entities/note.dart';

abstract class NotesRepository {
  List<Note> getNotes();

  void addNote(Note note);
}
