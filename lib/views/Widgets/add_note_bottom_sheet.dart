import 'package:flutter/material.dart';
import 'package:notes/views/Widgets/custom_text_field.dart';
import 'package:notes/views/Widgets/save_note_bottom.dart';

class AddNoteBottomSheet extends StatelessWidget {
 const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const  Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    ) ;
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey() ;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled ;
  String? title, subTitle ;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
         const SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value ;
            },
            hintText: 'Title',
            maxLines: 1,
          ),
          const  SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value) {
              subTitle = value ;
            },
            hintText: '  content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 50,
          ),
           SaveNoteBottom(
             onTap: () {
               if(formKey.currentState!.validate())
                {
                  formKey.currentState!.save();
                }else {
                 autovalidateMode = AutovalidateMode.always ;
                 setState(() {

                 });
               }
             },
           ),
          const SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}