import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:notes_ai/app/app.dart';
import 'package:notes_ai/notes/data/local/in_memory_notes_repository.dart';
import 'package:notes_ai/notes/providers/notes_provider.dart';

void main() {
  final repository = InMemoryNotesRepository();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => NotesProvider(repository: repository),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
