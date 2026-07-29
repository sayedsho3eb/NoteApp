part of 'note_cubit_cubit.dart';

@immutable
sealed class NoteCubitState {}

final class NoteCubitInitial extends NoteCubitState {}

final class NoteCubitSuccess extends NoteCubitState {}

final class NoteCubitLoaded extends NoteCubitState {}

final class NoteCubitFailure extends NoteCubitState {
  final String ErrorMessage;

  NoteCubitFailure({required this.ErrorMessage});

}
