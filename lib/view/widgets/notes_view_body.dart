import 'package:flutter/material.dart';
import 'package:notes_app/view/widgets/notes_list_view.dart';

import 'Custom_note_item.dart';
import 'custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const Column(
        children: [
          SizedBox(height: 60),
          CustomAppBar(),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
