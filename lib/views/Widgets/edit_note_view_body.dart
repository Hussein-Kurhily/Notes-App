import 'package:flutter/material.dart';
import 'package:notes/views/Widgets/custom_app_bar.dart';


class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          CustomAppBar(title: 'Edit Note', iconData: Icons.edit),
        ],
      ),
    );
  }
}
