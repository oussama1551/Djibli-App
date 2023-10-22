import 'package:Djibli/widgets/greenIntroWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreenUi extends StatefulWidget {
  const LoginScreenUi({super.key});

  @override
  State<LoginScreenUi> createState() => _LoginScreenUiState();
}

class _LoginScreenUiState extends State<LoginScreenUi> {
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
              SizedBox(
                height: 102,
              ),
              Image.asset(
                "assets/Logo1.jpeg",
                width: 250,
                height: 270,
              ),
              greenIntroWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
