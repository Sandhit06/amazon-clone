import 'package:flutter/material.dart';

import '../common/colors.dart';

class CustomeElevated extends StatelessWidget
{
  final double? button;
  final VoidCallback onPressed;
  final String text;
  const CustomeElevated({super.key, this.button, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: 42,
      width: button?? MediaQuery.of(context).size.width-100,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Coloors.greenDark,
          foregroundColor: Coloors.backgroundDark,
          splashFactory: NoSplash.splashFactory,
          elevation: 0,
          shadowColor: Colors.transparent,
        ),
        child:  Text(text),
      ),
    );
  }
}