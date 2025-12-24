import 'package:flutter/foundation.dart';

import '../models/note.dart';
import '../data/notes_repository.dart';

class NotesProvider extends ChangeNotifier {
  final NotesRepository _repository;

  NotesProvider({required NotesRepository repository})
    : _repository = repository;

  List<Note> _notes = [];
  bool _isLoading = false;

  List<Note> get notes => _notes;
  bool get isLoading => _isLoading;

  Future<void> loadNotes() async {
    _isLoading = true;
    notifyListeners();

    _notes = await _repository.getNotes();

    _isLoading = false;
    notifyListeners();
  }

  Future<void> addNote(String text) async {
    // Boş text kontrolü
    if (text.trim().isEmpty) {
      return;
    }

    // Note oluşturma
    final note = Note(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      title: text.trim(),
      content: text.trim(),
      createdAt: DateTime.now(),
    );

    // Ekleme
    await _repository.addNote(note);
    await loadNotes();
  }

  Future<void> deleteNote(String id) async {
    await _repository.deleteNote(id);
    await loadNotes();
  }
}
