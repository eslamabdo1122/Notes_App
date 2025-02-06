import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/widget/button_card.dart';
import 'package:notes_app/widget/custom_app_bar.dart';
import 'package:notes_app/widget/note_card.dart';
import 'package:notes_app/widget/note_listview.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            CustomAppBar(),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: NoteListview(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[900],
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              context: context, builder: (context) => ButtonCard());
        },
        child: FaIcon(
          FontAwesomeIcons.penToSquare,
          size: 38,
        ),
      ),
    );
  }
}
