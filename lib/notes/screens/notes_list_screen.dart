import 'package:flutter/material.dart';
import 'package:notes_ai/app/widgets/empty_state.dart';
import 'package:notes_ai/notes/widgets/note_card.dart';

class NotesListScreen extends StatelessWidget {
  const NotesListScreen({super.key});

  final bool hasNotes = false; // TEMP: later from state / storage

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Create new note
        },
        child: const Icon(Icons.add),
      ),
      body: hasNotes
          ? Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.separated(
          itemCount: 5,
          separatorBuilder: (_, __) => const SizedBox(height: 16),
          itemBuilder: (context, index) {
            return NoteCard(
              title: 'Meeting Notes',
              contentPreview:
              'Discussed project roadmap, deadlines, and next sprint goals.',
              date: '12 Dec 2025',
              onTap: () {},
            );
          },
        ),
      )
          : const EmptyState(),
    );
  }
}

