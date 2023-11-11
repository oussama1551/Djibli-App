import 'package:Djibli/widgets/TextFieldWidget.dart';
import 'package:Djibli/widgets/greenButtonWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileSettingUi extends StatefulWidget {
  const ProfileSettingUi({super.key});

  @override
  State<ProfileSettingUi> createState() => _ProfileSettingUiState();
}

class _ProfileSettingUiState extends State<ProfileSettingUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: Get.height * 0.3,
          child: Stack(children: [
            Container(
              width: Get.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/mask2.png'), fit: BoxFit.fill)),
              height: Get.height * 0.3,
              child: Container(
                height: Get.height * 0.1,
                width: Get.width,
                margin: EdgeInsets.only(bottom: Get.height * 0.09),
                child: Center(
                  child: Text(
                    "Personal Information",
                    style: GoogleFonts.poppins(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                child: Container(
                  width: 120,
                  height: 130,
                  margin: const EdgeInsets.only(),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xffD6D6D6)),
                  child: const Center(
                    child: Icon(
                      Icons.camera_alt_outlined,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ]),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 23),
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: Form(
            child: Column(
              children: [
                TextFieldWidget(
                  'Nom & Prénom',
                  Icons.person_outlined,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFieldWidget(
                  'Numéro de Téléphone',
                  Icons.phone,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFieldWidget(
                  'Addresse',
                  Icons.home_outlined,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFieldWidget(
                  "Adresse D'affaires",
                  Icons.card_travel,
                ),
                const SizedBox(
                  height: 80,
                ),
                greenButton('Sauvgarder', () => print('')),
              ],
            ),
          ),
        )
      ],
    )));
  }
}
