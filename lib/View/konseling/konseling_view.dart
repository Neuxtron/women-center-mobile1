import 'package:flutter/material.dart';

import 'konseling_pilihan_konselor_1.dart';
import 'konseling_pilihan_konselor_2.dart';

class KonselingSection extends StatelessWidget {
  final int idPaket;
  const KonselingSection({super.key, required this.idPaket});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        title: Center(
          child: Text(
            "Konseling",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            konseling_pilihan_konselor_1(),
            KonselingPilihanKonselor2(idPaket: idPaket),
          ],
        ),
      ),
    );
  }
}
