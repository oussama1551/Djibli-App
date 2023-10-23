import 'package:Djibli/widgets/pinput_widget.dart';
import 'package:Djibli/widgets/text_widget.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Container(
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
                        height: Get.height * 0.65,
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  textWidget(
                                      text: "Vérification par téléphone",
                                      fontSize: 14),
                                  textWidget(
                                      text: "Entrez votre code OTP ",
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold),
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  Container(child: RoundedWithShadow()),
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: RichText(
                                        textAlign: TextAlign.center,
                                        text: TextSpan(
                                            style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontSize: 12),
                                            children: [
                                              TextSpan(
                                                  text:
                                                      "Renvoyer le code dans "),
                                              TextSpan(
                                                text: "30 secondes ",
                                                style: GoogleFonts.poppins(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
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
              Positioned(
                top: 60,
                left: 30,
                child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.green),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
