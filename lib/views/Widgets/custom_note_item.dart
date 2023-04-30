import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Color(0xffFFCC80)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 14,
              bottom: 16,
              left: 16,

            ),
            child: Container(
              child: ListTile(
                title: const Text(
                  'Flutter Tips',
                  style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w500),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 14),
                  child: const Text(
                    'Start your journy whit Hussein Kurhily',
                    style: TextStyle(color: Colors.black54, fontSize: 16),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.trash),
                  iconSize: 26,
                  color: Colors.black,

                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24,bottom: 16),
            child: Text('May 16,2002',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black54,

              ),
            ),
          )
        ],
      ),
    );
  }
}