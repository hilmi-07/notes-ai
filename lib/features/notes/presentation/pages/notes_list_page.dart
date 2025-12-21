import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/notes_provider.dart';
import 'create_note_page.dart';

class NotesListPage extends StatefulWidget {
  const NotesListPage({super.key});

  @override
  State<NotesListPage> createState() => _NotesListPageState();
}

class _NotesListPageState extends State<NotesListPage> {
  @override
  void initState() {
    super.initState();
    context.read<NotesProvider>().loadNotes();
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<NotesProvider>();

    return Scaffold(
      appBar: AppBar(title: const Text('Notes')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const CreateNotePage()),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: provider.isLoading
          ? const Center(child: CircularProgressIndicator())
          : provider.notes.isEmpty
          ? const Center(child: Text('No notes yet'))
          : ListView.builder(
        itemCount: provider.notes.length,
        itemBuilder: (context, index) {
          final note = provider.notes[index];
          return ListTile(
            title: Text(note.title),
            subtitle: Text(
              note.content,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          );
        },
      ),
    );
  }
}
