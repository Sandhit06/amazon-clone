import 'package:flutter/material.dart';
import 'package:whatsapp/common/colors.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Coloors.backgroundDark,
      appBar: AppBar(
        backgroundColor: Coloors.backgroundDark,
        elevation: 0,
        title: const Text('Enter your phone number'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {},
            splashColor: Colors.transparent,
            icon: Icon(
            Icons.more_vert,
          ),
          ),
        ],
      ),
      body:
    );
  }
}

