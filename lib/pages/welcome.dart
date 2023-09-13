import 'dart:ui';
import 'package:flutter/material.dart';
import '../common/colors.dart';
import '../widgets/custom_elevated.dart';
import '../widgets/privacy_terms.dart';

class welcome extends StatelessWidget
{
  const welcome({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Coloors.backgroundDark,
      body: Column(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Image.asset(
              'assets/images/circle.png',
              color: Coloors.greenDark,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: Column(
              children: [
                Text(
                  "Welcome To WhatsApp",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),
                //const privacy(),
                CustomeElevated(onPressed: () => Navigator.of(context).pop(),
                    text: 'AGREE AND CONTINUE'),
                Padding(padding: const EdgeInsets.symmetric(
                  horizontal: 0,
                  vertical: 0,
                ),
                ),
                SizedBox(height: 20),
                RichText(
                  textAlign: TextAlign.center,
                    text: const TextSpan(text: 'Read our ',
                      style: TextStyle(
                        color: Coloors.greyDark,
                      ),
                      children: [
                  TextSpan(
                    text: 'Privacy Policy',
                    style: TextStyle(
                      color: Coloors.blueDark,
                    ),
                  ),
                        TextSpan(
                          text: ' Tap Agree and continue to accept the',
                        ),
                        TextSpan(
                          text: 'Terms Of Services',
                          style: TextStyle(
                            color: Coloors.blueDark,
                          ),
                        ),
                ],
                    ),
                ),
                SizedBox(
                    height: 20,
                  width: MediaQuery.of(context).size.width,
                ),
                /*ElevatedButton(onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Coloors.greenDark,
                      foregroundColor: Coloors.backgroundDark,
                      splashFactory: NoSplash.splashFactory,
                      elevation: 0,
                      shadowColor: Colors.transparent,
                    ),
                  child: const Text('AGREE AND CONTINUE'),
                ),*/
                SizedBox(height: 40,),
                Material(
                  color: Color(0xFF182229),
                  borderRadius: BorderRadius.circular(20.0),
                  child: InkWell(
                    onTap: () {} ,
                    borderRadius: BorderRadius.circular(20.0),
                    splashFactory: NoSplash.splashFactory,
                    highlightColor: const Color(0xFF09141A),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.language,
                          color: Coloors.greenDark,
                          ),
                          SizedBox(width: 10),
                          Text('English',
                          style: TextStyle(
                            color: Coloors.greenDark,
                          ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Coloors.greenDark,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


