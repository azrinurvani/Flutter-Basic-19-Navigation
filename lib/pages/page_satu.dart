import 'package:flutter/material.dart';
import 'package:flutter_basic_19_navigation/pages/page_dua.dart';

class PageSatu extends StatelessWidget {
  const PageSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Satu"),
      ),
      body: const Center(
        child: Text(
          "INI PAGE 1",
          style: TextStyle(
            fontSize: 45,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            //push bisa diganti dengan pushReplacement()
            //dengan artian page ini akan ditimpan oleh page selanjutnya, sehingga tidak bisa menggunakan method pop pada page 2
            MaterialPageRoute(
              builder: (context) {
                return const PageDua();
              },
            ),
          );
        },
        child: const Icon(Icons.keyboard_arrow_right),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
