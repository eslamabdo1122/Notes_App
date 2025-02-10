import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => EditNoteView(),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Flutter Tips',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 37,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 20),
                  child: Text(
                    'Learn how to use Flutter with Eslam',
                    style: TextStyle(fontSize: 20, color: Colors.grey[400]),
                  ),
                ),
                trailing: IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.trash,
                    size: 35,
                    color: Colors.red[800],
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 20),
              Text(
                'jonuer 21,2025',
                style: TextStyle(fontSize: 14, color: Colors.grey[400]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
