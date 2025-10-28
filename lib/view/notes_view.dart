import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:notes_app/view/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        // استخدم named parameter
        onPressed: () {},
        child: Icon(FontAwesomeIcons.plus), // حط الـ Icon حول FontAwesomeIcons
      ),
      body: const NotesViewBody(),
    );
  }
}
