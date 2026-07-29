import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/constant.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteCubitState> {
  NoteCubit() : super(NoteCubitInitial());

  void fetchNote() {
    emit(NoteLoaded());
    try {
      var notesBox = Hive.box<NoteModel>(kNotebox);

      emit(NoteSuccess(note: notesBox.values.toList()));
    } catch (e) {
      emit(NoteFailure(ErrorMessage: e.toString()));
    }
  }
}
