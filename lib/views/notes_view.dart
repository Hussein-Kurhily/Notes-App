import 'package:flutter/material.dart';
import 'Widgets/custom_icon_search.dart';
import 'Widgets/custom_note_item.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
            NoteItem(),

          ],
        ),
      ),
    );
  }
}


