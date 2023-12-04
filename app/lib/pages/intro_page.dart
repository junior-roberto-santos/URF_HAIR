import 'package:flutter/material.dart';

import '../components/bottom_nav_bar.dart';
import 'agend_page.dart';
import 'check_page.dart';
import 'service_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const ServicePage(),
    const CheckPage(),
    const AgendPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 211, 235, 224),
        leading: Builder(builder: (context) => IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
            },
          ),
        
        )
      ),

      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 211, 235, 224),
        child: Column(children: [
         DrawerHeader(child: Image.asset('lib/IMG_URF/URFHAIR.jpg.jpeg',)
         
         ),
         
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 20.0),
           child: Divider(color: Colors.grey
           
           ),
         ),
         
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: ListTile(
            leading: Icon(Icons.person_pin_sharp, color: Colors.black,),
            title: Text('Perfil', style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold),),
          ),
        ),

         Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: ListTile(
            leading: Icon(Icons.assignment_add, color: Colors.black,),
            title: Text('Agendamentos', style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold),),
          ),
        ),

         Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: ListTile(
            leading: Icon(Icons.messenger, color: Colors.black,),
            title: Text('Mensagens', style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold),),
          ),
        ),

         Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: ListTile(
            leading: Icon(Icons.settings, color: Colors.black,),
            title: Text('Configuração', style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold),),
          ),
        ),

         Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: ListTile(
            leading: Icon(Icons.book_outlined, color: Colors.black,),
            title: Text('Sobre a URF', style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold),),
          ),
        ),


         Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: ListTile(
            leading: Icon(Icons.privacy_tip_sharp, color: Colors.black,),
            title: Text('Politíca de Privacidade', style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold),),
          ),
        ),

         Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: ListTile(
            leading: Icon(Icons.person_4, color: Colors.black,),
            title: Text('Suporte', style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold),),
          ),
        ),

          Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: ListTile(
            leading: Icon(Icons.logout_sharp, color: Colors.black,),
            title: Text('Sair', style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold),),
          ),
        )

        ],
        
       
      ),
    ),
     

      body: _pages[_selectedIndex],
    );
  }
}
