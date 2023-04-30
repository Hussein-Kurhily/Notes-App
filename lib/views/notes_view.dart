import 'package:flutter/material.dart';
import 'Widgets/add_note_bottom_sheet.dart';
import 'Widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         showModalBottomSheet(
              context: context,
              builder: (context) {
            return const AddNoteBottomSheet() ;
          } );
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}

