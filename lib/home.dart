import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff042442),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Tap to notShazam',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            AvatarGlow(
              endRadius: 200,
              animate: true,
              child: GestureDetector(
                onTap: () => print("Tapped"),
                child: Material(
                  shape: CircleBorder(),
                  elevation: 8,
                  child: Container(
                    padding: EdgeInsets.all(40),
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff089af8),
                    ),
                    child: Image.asset(
                      "assets/images/shazam-logo.png",
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
