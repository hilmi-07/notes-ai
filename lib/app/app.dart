import 'package:flutter/material.dart';
import 'package:notes_ai/app/theme/app_theme.dart';
import 'package:notes_ai/notes/screens/notes_list_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const NotesListScreen(),
    );
  }
}

