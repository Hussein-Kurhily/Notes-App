import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import '../constant/constants.dart';
import '../models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes(NoteModel note) {

    try{
      var notesBox = Hive.box<NoteModel>(kNoteBox) ;

      emit((NotesSuccess(notesBox.values.toList())));
    } catch (e) {
      emit( NotesFailure(e.toString())) ;
    }
  }

}
