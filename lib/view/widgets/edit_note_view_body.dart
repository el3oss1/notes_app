import 'package:flutter/cupertino.dart';
import 'package:notes_app/view/widgets/custom_app_bar.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: const Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(title: 'Edit Mode', icon: CupertinoIcons.check_mark),
          SizedBox(height: 80),
          CustomTextField(hint: 'title'),
          SizedBox(height: 20),
          CustomTextField(hint: 'content', maxLines: 5),
          SizedBox(height: 60),
          CustomButton(hint: 'Edit'),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
