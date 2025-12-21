import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'features/notes/data/repositories/in_memory_notes_repository.dart';
import 'features/notes/domain/usecases/add_note_usecase.dart';
import 'features/notes/domain/usecases/get_notes_usecase.dart';
import 'features/notes/presentation/providers/notes_provider.dart';
import 'features/notes/presentation/pages/notes_list_page.dart';

void main() {
  final repository = InMemoryNotesRepository();
  final getNotesUseCase = GetNotesUseCase(repository);
  final addNoteUseCase = AddNoteUseCase(repository);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => NotesProvider(
            getNotesUseCase: getNotesUseCase,
            addNoteUseCase: addNoteUseCase,
          ),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NotesListPage(),
    );
  }
}
