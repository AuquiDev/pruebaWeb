import 'package:flutter/material.dart';
import 'package:web_waikis/responsive/layout.dart';

class SendBoton extends StatelessWidget {
  const SendBoton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        gradient: const LinearGradient(colors: [
           Color.fromRGBO(185, 134, 87, 1),
                Color.fromARGB(255, 88, 55, 31)
        ],
        begin: Alignment.bottomRight, end: Alignment.topLeft,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow:[
          BoxShadow(
            color: const Color(0xff6078ea).withOpacity(.6),
            offset: const Offset(0, 8),
            blurRadius: 8
          )
        ]
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: (){},
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Enviar",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "MonTserrat.Bold",
                  fontSize: ResponsiveLayout.isSmallScreen(context) ? 12 : 
                  ResponsiveLayout.isMediumScreen(context) ? 12 : 
                  16,
                  letterSpacing: 1
                ),),
                SizedBox(
                  width: ResponsiveLayout.isSmallScreen(context) ? 4 : 
                  ResponsiveLayout.isMediumScreen(context) ? 6 : 8,
                ),
                const Icon(Icons.send_rounded,color: Colors.white,)
              ],
            )
          ),
        ),
      ),
    );
  }
}