import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  bool isLoading = false;
  addNote(NoteModel note) async {
    isLoading = true;

    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      isLoading = false;
      await notesBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      isLoading = false;

      emit(AddNoteFailure(e.toString()));// TODO
    }
  }
}
