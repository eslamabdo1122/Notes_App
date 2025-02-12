import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note){
    emit(AddNoteLoading());
    try {
  var noteBox = Hive.box<NoteModel>('notes_box');
  noteBox.add(note);
  emit(AddNoteSuccess());
} catch (e) {
  emit(AddNoteFailure(errMessage: e.toString()));
}
  }
}
