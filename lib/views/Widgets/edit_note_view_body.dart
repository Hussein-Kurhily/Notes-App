import 'package:flutter/material.dart';
import 'package:notes/views/Widgets/custom_app_bar.dart';
import 'package:notes/views/Widgets/custom_text_field.dart';


class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: const [
            CustomAppBar(title: 'Edit Note', iconData: Icons.check),
            SizedBox(height: 50,),
            CustomTextField(hintText: 'Title', maxLines: 1),
            SizedBox(height: 16,),
            CustomTextField(hintText: 'content', maxLines: 5),
          ],
        ),
      ),
    );
  }
}
