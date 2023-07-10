import 'package:flutter/material.dart';
import 'package:web_waikis/responsive/layout.dart';

class NavBar extends StatelessWidget {

  final navLinks = ["Inicio", "Productos", "Caracteristicas", "Contactos"];

  Iterable<Padding> navItem(){
    return navLinks.map((e) {
      return  Padding(
        padding: const EdgeInsets.only(left: 18),
        child: Text(e,style: const TextStyle(fontFamily: "Montserrat-Bold"),),
      );
    });
  }

   NavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 35),
      child: Row(
        children: [
          Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: const LinearGradient(colors: [
                Color.fromRGBO(185, 134, 87, 1),
                Color.fromARGB(255, 88, 55, 31)
              ], begin: Alignment.bottomRight, end: Alignment.topLeft),
            ),
            child: const FittedBox(
              child: Text(
                'A',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text("ndean Lodges",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
          const Expanded(child: SizedBox()),
          if(!ResponsiveLayout.isSmallScreen(context))
          Row(
            children: [
              ...navItem()
            ]..add(InkWell(
              child: Container(
                margin: const EdgeInsets.only(left: 20),
                width: 120,
                height: 40,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: 
                  [
                     Color.fromRGBO(185, 134, 87, 1),
                  Color.fromARGB(255, 88, 55, 31)
                  ],
                  begin: Alignment.topLeft),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff6078ea).withOpacity(.3),
                      offset: const Offset(0, 3),
                      blurRadius: 8
                    )
                  ]

                ),
                child: const Material(
                  color: Colors.transparent,
                  child: Center(
                    child: Text("Login",style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      letterSpacing: 1
                    ),),
                  ),
                ),
              ),
            )),
          )else const Icon(Icons.menu)
        ],
      ),
    );
  }
}

