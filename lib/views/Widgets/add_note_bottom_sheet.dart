import 'package:flutter/material.dart';
import 'package:notes/views/Widgets/custom_text_field.dart';
import 'package:notes/views/Widgets/save_note_bottom.dart';

class AddNoteBottomSheet extends StatelessWidget {
 const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children:const [
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              hintText: '  Title',
              maxLines: 1,
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hintText: '  content',
              maxLines: 5,
            ),
            SizedBox(
              height: 50,
            ),
            SaveNoteBottom(),
            SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    ) ;
  }
}