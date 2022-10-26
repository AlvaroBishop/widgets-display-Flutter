import 'dart:ui';
import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Avatars',
        ),
        elevation: 0,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: Colors.green[900],
              child: const Text('AX'),
            ),
          )
        ],
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/AX.jpg'), fit: BoxFit.cover)),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration:
                      BoxDecoration(color: Colors.white.withOpacity((0.0))),
                ),
                const CircleAvatar(
                  maxRadius: 110,
                  backgroundImage: AssetImage('assets/AX.jpg'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
