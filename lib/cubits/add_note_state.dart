part of 'add_note_cubit.dart';

@immutable
abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteInitial {}

class AddNoteSuccess extends AddNoteInitial {}

class AddNoteFailure extends AddNoteInitial {
  final String errMessage ;
  AddNoteFailure(this.errMessage) ;
}