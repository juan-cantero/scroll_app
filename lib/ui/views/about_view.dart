import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Text(
          'About',
          style: GoogleFonts.montserratAlternates(
            color: Colors.white,
            fontSize: 80,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
