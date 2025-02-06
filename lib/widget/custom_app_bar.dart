import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Notes',
          style: TextStyle(
            fontSize: 45,
          ),
        ),
        Spacer(),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: .3),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: IconButton(
              onPressed: () {},
              icon: FaIcon(
                FontAwesomeIcons.magnifyingGlass,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        )
      ],
    );
  }
}
