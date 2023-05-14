import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/simple_bloc_observer.dart';
import 'package:notes/views/notes_view.dart';
import 'constant/constans.dart';
import 'cubits/add_note_cubit.dart';

void main() async {
  //Hive
  await Hive.initFlutter() ;

  Bloc.observer = SimpleBlocObserver() ;

  Hive.registerAdapter(NoteModelAdapter()) ;
  await Hive.openBox<NoteModel>(kNoteBox) ;



  runApp(const NotesApp());
}
class NotesApp extends StatelessWidget {
  const NotesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      home:const NotesView(),
    );
  }
}
