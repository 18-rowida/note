import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:note/views/notes_view.dart';

void main() {
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        
      ),
      home: const NotesView(),
    );
  }
}
