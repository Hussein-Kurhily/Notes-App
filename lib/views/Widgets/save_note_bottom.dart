import 'package:flutter/cupertino.dart';
import 'package:notes/constant/colors.dart';

class SaveNoteBottom extends StatelessWidget {
  const SaveNoteBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(16)
      ),
      child: const Center(
        child: Text('Add', style: TextStyle(color: CupertinoColors.black, fontSize: 20),),
      ),
    );
  }
}
