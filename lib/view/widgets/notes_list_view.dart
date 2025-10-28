import 'package:flutter/cupertino.dart';
import 'package:notes_app/view/widgets/Custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  final List dat =const [];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: const NoteItem(),
        );
      },
    );
  }
}
