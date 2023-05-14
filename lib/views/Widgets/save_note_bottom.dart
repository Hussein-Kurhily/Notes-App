import 'package:flutter/cupertino.dart';
import 'package:notes/constant/constans.dart';


class SaveNoteBottom extends StatelessWidget {
  const SaveNoteBottom({Key? key, this.onTap}) : super(key: key);
  final void Function()? onTap ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:  onTap,
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
