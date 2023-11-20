import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
        color: Colors.grey[400],
        activeColor: Colors.black,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Color.fromARGB(255, 190, 239, 215),
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 25,
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Perfil',

                  
          ),

            GButton(
            icon: Icons.home_repair_service_sharp,
            text: 'Serviços', 
                  
          ),
             GButton(
            icon: Icons.shopping_bag_rounded,
            text: 'Revisao', 
                  
          ),
             GButton(
            icon: Icons.assignment_add,
            text: 'Agendamento',  

                  
          ),
         
        ],
      
      ),
    );
  }
}


