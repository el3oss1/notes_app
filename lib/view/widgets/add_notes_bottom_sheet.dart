import 'package:flutter/cupertino.dart';

import 'custom_text_field.dart';

class AddNotesBottomSheet extends StatelessWidget {
  const AddNotesBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const SizedBox(height: 32),
          CustomTextField(hint: 'title'),
          SizedBox(height: 20),
          CustomTextField(hint: 'content', maxLines: 5),
        ],
      ),
    );
  }
}
