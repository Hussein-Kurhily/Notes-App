import 'package:flutter/material.dart';
import 'package:notes/views/Widgets/custom_app_bar.dart';
import 'notes_list_view.dart';
class NotesViewBody extends StatelessWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children:const [
          CustomAppBar(title: 'Notes', iconData: Icons.search),
          Expanded(child: NoteListView()),
        ],
      ),
    );
  }
}
