import 'package:flutter/material.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({super.key});

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        Container(
          padding: const EdgeInsets.all(18),
          margin:  const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(12)),          
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Pesquise'),
              Icon(Icons.search, color: Colors.black,)
            ],
          ),
          
        ),

       Text('Soluções Estética', style: TextStyle(
        fontWeight: FontWeight.w500, 
        fontSize: 30),
        
        ),


      ],
    );
  }
}
