part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesCubitInitial extends NotesState {}

final class NoteSuccess extends NotesState {
  final List<NoteModel> note;

  NoteSuccess({required this.note});
}
