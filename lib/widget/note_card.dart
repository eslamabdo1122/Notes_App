import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0,horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'Flutter Tips',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 20),
                child: Text('Learn how to use Flutter with Eslam'),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.delete,
                  size: 35,
                  color: Colors.redAccent,
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(height: 20),
            Text('jonuer 21,2025'),
          ],
        ),
      ),
    );
  }
}
