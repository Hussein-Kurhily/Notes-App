import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes/constant/colors.dart';
import 'package:notes/views/Widgets/edit_note_view.dart';

class SaveNoteBottom extends StatelessWidget {
  const SaveNoteBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteView() ;
        } ));
      } ,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(16)
        ),
        child: const Center(
          child: Text('Add', style: TextStyle(color: CupertinoColors.black, fontSize: 20),),
        ),
      ),
    );
  }
}
