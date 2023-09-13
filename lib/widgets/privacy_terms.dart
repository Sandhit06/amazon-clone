import 'package:flutter/material.dart';
import 'package:whatsapp/common/colors.dart';

class privacy extends StatelessWidget
{
  const privacy({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          text: 'Read our',
          style: TextStyle(
            color: Coloors.greyDark,
            height: 1.5,
          ),
          children: [
            TextSpan(
              text: 'Privacy Policy. ',
              style: TextStyle(
                color: Coloors.blueDark,
              ),
            ),
          ],
        ),
      ),
    );
  }
}