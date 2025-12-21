import 'package:flutter/foundation.dart';

import '../../domain/entities/note.dart';
import '../../domain/usecases/get_notes_usecase.dart';
import '../../domain/usecases/add_note_usecase.dart';

class NotesProvider extends ChangeNotifier {
  final GetNotesUseCase _getNotesUseCase;
  final AddNoteUseCase _addNoteUseCase;

  NotesProvider({
    required GetNotesUseCase getNotesUseCase,
    required AddNoteUseCase addNoteUseCase,
  })  : _getNotesUseCase = getNotesUseCase,
        _addNoteUseCase = addNoteUseCase;

  List<Note> _notes = [];

  List<Note> get notes => _notes;

  void loadNotes() {
    _notes = _getNotesUseCase();
    notifyListeners();
  }

  void addNote(Note note) {
    _addNoteUseCase(note);
    loadNotes();
  }
}

