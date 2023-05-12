import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/notes_view.dart';
import 'constant/constans.dart';
import 'cubits/add_note_cubit.dart';

void main() async {
  await Hive.initFlutter() ;

  await Hive.openBox(kNoteBox) ;
  Hive.registerAdapter(NoteModelAdapter()) ;


  runApp(const NotesApp());
}
class NotesApp extends StatelessWidget {
  const NotesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddNoteCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins',
        ),
        home:const NotesView(),
      ),
    );
  }
}
