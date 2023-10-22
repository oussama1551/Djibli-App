import 'package:Djibli/widgets/text_widget.dart';
import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Otp_Verefication_ui extends StatefulWidget {
  const Otp_Verefication_ui({super.key});

  @override
  State<Otp_Verefication_ui> createState() => _Otp_Verefication_uiState();
}

class _Otp_Verefication_uiState extends State<Otp_Verefication_ui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: Get.width,
        height: Get.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(
                height: 102,
              ),
              Image.asset(
                "assets/Logo1.jpeg",
                width: 250,
                height: 270,
              ),
              Container(
                width: Get.width,
                height: Get.height * 0.6,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/mask.png'),
                        fit: BoxFit.cover)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 220,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          textWidget(
                              text:
                                  "Bienvenu , nous sommes heureux de vous avoir",
                              fontSize: 14),
                          textWidget(
                              text: "Commencer avec Djibli ",
                              fontSize: 26,
                              fontWeight: FontWeight.bold),
                          const SizedBox(
                            height: 40,
                          ),
                          Container(
                            width: double.infinity,
                            height: 55,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.05),
                                      spreadRadius: 3,
                                      blurRadius: 3)
                                ],
                                borderRadius: BorderRadius.circular(8)),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: () {},
                                    child: Container(
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              child:
                                                  CountryFlag.fromCountryCode(
                                                'DZ',
                                                height: 22,
                                                width: 20,
                                                borderRadius: 8,
                                              ),
                                            ),
                                          ),
                                          textWidget(
                                              text: '+213',
                                              color: Colors.black),
                                          const SizedBox(
                                            width: 10,
                                          )
                                          //Icon(Icons.keyboard_arrow_down_rounded)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 1,
                                  height: 55,
                                  color: Colors.orange.withOpacity(0.2),
                                ),
                                Expanded(
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: TextField(
                                        onTap: () {
                                          Get.to(() => Otp_Verefication_ui());
                                        },
                                        decoration: InputDecoration(
                                            hintStyle: GoogleFonts.poppins(
                                                fontSize: 12,
                                                fontWeight: FontWeight.normal),
                                            hintText:
                                                "Entrez votre numéro de mobile svp",
                                            border: InputBorder.none),
                                      ),
                                    ))
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                    style: GoogleFonts.poppins(
                                        color: Colors.white, fontSize: 12),
                                    children: [
                                      TextSpan(
                                          text:
                                              "En créant un compte, vous acceptez nos "),
                                      TextSpan(
                                        text: "Conditions d'utilisation ",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(text: " et "),
                                      TextSpan(
                                          text: "politique de confidentialité ",
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.bold))
                                    ])),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
