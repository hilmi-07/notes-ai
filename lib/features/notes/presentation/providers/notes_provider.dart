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
  bool _isLoading = false;

  List<Note> get notes => _notes;
  bool get isLoading => _isLoading;

  Future<void> loadNotes() async {
    _isLoading = true;
    notifyListeners();

    _notes = await _getNotesUseCase();

    _isLoading = false;
    notifyListeners();
  }

  Future<void> addNote({
    required String title,
    required String content,
  }) async {
    await _addNoteUseCase(title, content);
    await loadNotes();
  }
}
