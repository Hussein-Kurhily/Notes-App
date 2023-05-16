import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/constant/constants.dart';
import '../models/note_model.dart';
part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());


  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try{
    var notesBox = Hive.box<NoteModel>(kNoteBox) ;
     await notesBox.add(note) ;
     emit(AddNoteSuccess());
    } catch (e) {
     emit( AddNoteFailure(e.toString())) ;
    }
  }
}
