// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';



class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      // ignore: prefer_const_constructors
      backgroundColor: Color.fromARGB(255, 239, 238, 238),
      body: Column(
        children: [
           
           Image.asset(
            'lib/IMG_URF/URFHAIR.jpg.jpeg',
            
            
            
            ), 

            const SizedBox(height: 48),
            Text(
              'Soluções para Estética',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
              ),
            
            
            const SizedBox(height: 100),
            Container(               decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(35),
          
              ),
                padding: const EdgeInsets.all(10),
                  width: 350, 
                  height: 65,            
                  child: const Center(
                    child: const Text(
                    'Acesse já', 
                        style: TextStyle(
                        color: Colors.white,
                        
                        
                        
                      ),
                   ),
                 
                ),
            
         )
      ]
      
      ),
    );
  }
}