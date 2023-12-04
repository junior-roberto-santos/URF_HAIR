import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
      MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
        color: Colors.grey[400],
        activeColor: Colors.black,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Color.fromARGB(255, 211, 235, 224),
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 25,
        onTabChange:(value) => onTabChange!(value),
        tabs: [
            GButton(
                 icon: Icons.cut_sharp,
                 text: 'Serviços', 
                  
          ),
             GButton(
                icon: Icons.date_range,
                text: 'Agendamento', 
                  
          ),
             GButton(
            icon: Icons.check_box_rounded,
            text: 'Confirmação',  

                  
          ),

                
        ],
      
      ),
    );
  }
}


