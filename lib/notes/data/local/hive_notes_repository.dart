import 'package:hive_flutter/hive_flutter.dart';

import '../../models/note.dart';
import '../notes_repository.dart';

class HiveNotesRepository implements NotesRepository {
  static const String _boxName = 'notesBox';
  Box<Map<dynamic, dynamic>>? _box;

  Future<Box<Map<dynamic, dynamic>>> _getBox() async {
    _box ??= await Hive.openBox<Map<dynamic, dynamic>>(_boxName);
    return _box!;
  }

  @override
  Future<List<Note>> getNotes() async {
    final box = await _getBox();
    final notes = <Note>[];

    for (var key in box.keys) {
      final noteMap = box.get(key);
      if (noteMap != null) {
        notes.add(_mapToNote(noteMap));
      }
    }

    return notes;
  }

  @override
  Future<void> addNote(Note note) async {
    final box = await _getBox();
    await box.put(note.id, _noteToMap(note));
  }

  @override
  Future<void> deleteNote(String id) async {
    final box = await _getBox();
    await box.delete(id);
  }

  Future<void> toggleDone(String id) async {
    final box = await _getBox();
    final noteMap = box.get(id);
    
    if (noteMap != null) {
      final currentDone = noteMap['done'] as bool? ?? false;
      noteMap['done'] = !currentDone;
      await box.put(id, noteMap);
    }
  }

  Map<String, dynamic> _noteToMap(Note note) {
    return {
      'id': note.id,
      'title': note.title,
      'content': note.content,
      'createdAt': note.createdAt.toIso8601String(),
      'done': false, // Default value for done property
    };
  }

  Note _mapToNote(Map<dynamic, dynamic> map) {
    return Note(
      id: map['id'] as String,
      title: map['title'] as String,
      content: map['content'] as String,
      createdAt: DateTime.parse(map['createdAt'] as String), text: '', done: false,
    );
  }
}

