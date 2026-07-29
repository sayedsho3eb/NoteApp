import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/constant.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesCubitInitial());
  List<NoteModel>? notes;
  void fetchNote() {
    var notesBox = Hive.box<NoteModel>(kNotebox);

    notes = notesBox.values.toList();
    emit(NoteSuccess());
  }
}
