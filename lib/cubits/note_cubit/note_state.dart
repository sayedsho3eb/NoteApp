part of 'note_cubit.dart';

@immutable
sealed class NoteCubitState {}

final class NoteCubitInitial extends NoteCubitState {}

final class NoteSuccess extends NoteCubitState {
   final List<NoteModel> note;

  NoteSuccess({required this.note});
}

final class NoteLoaded extends NoteCubitState {}

final class NoteFailure extends NoteCubitState {
  final String ErrorMessage;

  NoteFailure({required this.ErrorMessage});
}
