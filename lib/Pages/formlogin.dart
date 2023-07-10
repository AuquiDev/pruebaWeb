import 'package:flutter/material.dart';
import 'package:web_waikis/Pages/send_boton.dart';
import 'package:web_waikis/responsive/layout.dart';


class FormularioLogin extends StatelessWidget {
  const FormularioLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: 4,
          right: ResponsiveLayout.isSmallScreen(context)
              ? 4
              : 74,
          top: 10,
          bottom: 40),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0, 8),
                  blurRadius: 8)
            ]),
        child:  const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Mi correo electrónico"),
                )),
                Expanded(
                  flex: 1,
                  child: SendBoton())
              ]),
        ),
      ),
    );
  }
}