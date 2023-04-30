import 'package:flutter/material.dart';

import 'custom_icon_search.dart';
import 'notes_list_view.dart';
class NotesViewBody extends StatelessWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 28,
          ),
          Row(
            children: const [
              Text(
                'Notes',
                style: TextStyle(fontSize: 28),
              ),
              Spacer(),
              CustomSearchIcon(),
            ],
          ),
          const Expanded(child: NoteListView()),

        ],
      ),
    );
  }
}