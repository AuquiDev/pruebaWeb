import 'package:flutter/material.dart';
import 'package:web_waikis/Pages/formlogin.dart';
import 'package:web_waikis/Pages/navbar.dart';
import 'package:web_waikis/responsive/layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        margin: const EdgeInsets.all(10),
        width: size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          gradient: const LinearGradient(
              colors: [Color(0xfff8fbff), Color(0xfffcfdfd)],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft),
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [NavBar(), const Body()],
          ),
        ));
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
        largeScreen: LargeChild(), smallScreen: SmallChild());
  }
}

class LargeChild extends StatelessWidget {
  const LargeChild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 600,
        child: Stack(fit: StackFit.expand, children: [
          FractionallySizedBox(
            alignment: Alignment.centerRight,
            widthFactor: .6,
            child: Image.network(
              "images/02.png",
              scale: .85,
            ),
          ),
          FractionallySizedBox(
              alignment: Alignment.centerLeft,
              widthFactor: .6,
              child: Padding(
                  padding: const EdgeInsets.only(left: 48),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Bienvenido',
                        style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Montserrat-Regular",
                            color: Color(0xff8591b0)),
                      ),
                      RichText(
                          text: const TextSpan(
                              text: 'Logística de ',
                              style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff8591b0),
                              ),
                              children: [
                            TextSpan(
                                text: "Almacén",
                                style: TextStyle(
                                    fontSize: 60,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87))
                          ])),
                      const Padding(
                        padding: EdgeInsets.only(left: 12.0, top: 20),
                        child: Text(
                          "Control de Inventarios y Flujo de Stock",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const FormularioLogin(),
                      //  FormularioLogin(),
                    ], //\n
                  )))
        ]));
  }
}

class SmallChild extends StatelessWidget {
  const SmallChild({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20,vertical: 10),
        child: Column(
          children: [
                Image.network(
              "images/02.png",
              height: 80,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Bienvenido',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Montserrat-Regular",
                      color: Color(0xff8591b0)),
                ),
                RichText(
                    text: const TextSpan(
                        text: 'Logística de ',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff8591b0),
                        ),
                        children: [
                      TextSpan(
                          text: "Almacén",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87))
                    ])),
                const Padding(
                  padding: EdgeInsets.only(left: .0, top: 10),
                  child: Text(
                    "Control de Inventarios y Flujo de Stock",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                
              ],
            ),
            const FormularioLogin(),
            // FormularioLogin()
          ],
        ),
      ),
    );
  }
}
