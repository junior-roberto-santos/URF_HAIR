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
      backgroundColor: Color.fromARGB(255, 233, 242, 238),
      body: Column(
        children: [
        Image.asset(
          'lib/IMG_URF/URFHAIR.jpg.jpeg',
        ),
        const SizedBox(height: 48),
        Text(
          'Soluções Estética',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 30,
          ),
        ),
        const SizedBox(height: 100),
        GestureDetector(
          onTap: () => Navigator.push(
            context, MaterialPageRoute(
              builder: (context) => HomePage(),
          
          ),
          
          ) ,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black,
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
