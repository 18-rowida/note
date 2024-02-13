import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note/cubits/notes_cubit/notes_cubit.dart';
import 'package:note/views/widgets/custom_app_bar.dart';
import 'package:note/views/widgets/custom_note_item.dart';
import 'package:note/views/widgets/notes_list_view.dart';

class NoteViewBody extends StatefulWidget {
  const NoteViewBody({super.key});

  @override
  State<NoteViewBody> createState() => _NoteViewBodyState();
}

class _NoteViewBodyState extends State<NoteViewBody> {
  @override
  void iniState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNote();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Note',
            icon: Icons.search,
          ),
          Expanded(
            child: NoteListView(),
          ),
        ],
      ),
    );
  }
}
