import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './Programbody.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: methodappbar(context),
      body: Programbody(),
    );
  }

  AppBar methodappbar(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
            onPressed: null,
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ))
      ],
      title: Text(
        'مرحبا بكم بمتجر الالكترونيات',
        style: GoogleFonts.getFont('Almarai'),
      ),
      backgroundColor: Theme.of(context).primaryColor,
    );
  }
}
