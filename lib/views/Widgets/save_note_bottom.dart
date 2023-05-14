import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes/constant/constans.dart';


class SaveNoteBottom extends StatelessWidget {
  const SaveNoteBottom({Key? key, this.onTap, this.isLoading = false}) : super(key: key);
  final void Function()? onTap ;
  final bool isLoading;
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
        child:  Center(
          child: isLoading ? SizedBox(
            height: 24,
            width: 24,
            child: const CircularProgressIndicator(
              backgroundColor: Colors.white,color: kPrimaryColor,
            ),
          ) : const Text('Add', style: TextStyle(color: CupertinoColors.black, fontSize: 20),),
        ),
      ),
    );
  }
}
