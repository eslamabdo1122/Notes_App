import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_app_bar.dart';

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
          ],
        ),
      ),
    );
  }
}
