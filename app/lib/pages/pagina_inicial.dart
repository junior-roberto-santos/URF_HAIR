// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:urf_hair/pages/intro_page.dart';

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      // ignore: prefer_const_constructors
      backgroundColor: Color.fromARGB(255, 232, 250, 242),
      body: Column(children: [
        Image.asset(
          'lib/IMG_URF/URFHAIR2.png',
        ),
        const SizedBox(height: 48),
        Text(
          '"Sejam bem vindos!"',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 25,
          ),
        ),
        const SizedBox(height: 100),
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 31, 31, 31),
              borderRadius: BorderRadius.circular(25),
            ),
            padding: const EdgeInsets.all(10),
            width: 250,
            height: 60,
            child: const Center(
              child: const Text(
                'Acesse já!',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
