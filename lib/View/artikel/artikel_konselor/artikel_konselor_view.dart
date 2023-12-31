//create artikel konselor

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:women_center_mobile/View/artikel/artikel_konselor/artikel_konselor_widget.dart';
// import 'package:women_center_mobile/View/bottomnavigationbar/bottom_navigation_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';

import 'package:women_center_mobile/ViewModel/artikel_konselor_model/artikel_konselor_get.dart';

// import 'package:women_center_mobile/ViewModel/artikel_konselor_model/1.dart';

void main(List<String> args) {
  runApp(const artikelKonselor());
}

class artikelKonselor extends StatefulWidget {
  const artikelKonselor({super.key});

  @override
  State<artikelKonselor> createState() => _artikelKonselorState();
}

class _artikelKonselorState extends State<artikelKonselor> {
  @override
  void initState() {
    super.initState();
    // Panggil fetchArticles di initState untuk mengambil data saat halaman dimuat
    Provider.of<ArtikelKonselorProvider>(context, listen: false)
        .fetchArticles();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink[100],
          elevation: 0,
          title: Center(
              child: Text(
            'Artikel',
            style: GoogleFonts.roboto(
              color: Color(0xFF0B0B0B),
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          )),
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 17,
                ),
                Search(),
                SizedBox(
                  height: 20,
                ),
                Kotak(),
                SizedBox(
                  height: 25,
                ),
                CustomButton(),
                SizedBox(
                  height: 21.8,
                ),
                ArtikelCardScrollable(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
