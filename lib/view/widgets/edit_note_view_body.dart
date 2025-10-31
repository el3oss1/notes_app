import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/note_cubit/note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/view/widgets/custom_app_bar.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const SizedBox(height: 50),
          CustomAppBar(
            title: 'Edit Mode',
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = subtitle ?? widget.note.subtitle;
              widget.note.save();
              BlocProvider.of<NoteCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            icon: CupertinoIcons.check_mark,
          ),
          const SizedBox(height: 80),
          CustomTextField(
            onChange: (value) {
              title = value;
            },
            hint: widget.note.title,
          ),
          const SizedBox(height: 20),
          CustomTextField(
            onChange: (value) {
              subtitle = value;
            },
            hint: widget.note.subtitle,
            maxLines: 5,
          ),
          const SizedBox(height: 60),
           CustomButton(
               onTap: () {
                 widget.note.title = title ?? widget.note.title;
                 widget.note.subtitle = subtitle ?? widget.note.subtitle;
                 widget.note.save();
                 BlocProvider.of<NoteCubit>(context).fetchAllNotes();
                 Navigator.pop(context);
               },
               hint: 'Edit'),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
