import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:notes_ai/app/app.dart';
import 'package:notes_ai/notes/data/local/hive_notes_repository.dart';
import 'package:notes_ai/notes/providers/notes_provider.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  final repository = HiveNotesRepository();

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

