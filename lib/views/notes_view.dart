import 'package:flutter/material.dart';
import 'package:note/views/widgets/add_note.dart';
import 'package:note/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              });
        },
        child: Icon(
          Icons.add,
        ),
      ),
      body: const NoteViewBody(),
    );
  }
}
