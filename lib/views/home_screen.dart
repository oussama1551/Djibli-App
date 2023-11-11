import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/services.dart' show rootBundle;

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  String? _mapStyle;

  @override
  void initState() {
    super.initState();
    rootBundle.loadString('assets/map_style.txt').then((string) {
      _mapStyle = string;
    });
  }

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(36.730645, 03.084836),
    zoom: 14.4746,
  );
  GoogleMapController? myMapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            top: 150,
            child: GoogleMap(
              onMapCreated: (GoogleMapController controller) {
                myMapController = controller;
                myMapController!.setMapStyle(_mapStyle);
              },
              initialCameraPosition: _kGooglePlex,
            ),
          ),
          buildProfile(),
          buildTextField()
        ],
      ),
    );
  }
}

Widget buildProfile() {
  return Positioned(
      top: 60,
      left: 20,
      right: 20,
      child: Container(
        width: Get.width,
        child: Row(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/me.jpg'), fit: BoxFit.fill),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'Bonjour Mr ',
                      style: TextStyle(color: Colors.black, fontSize: 14)),
                  TextSpan(
                      text: 'Mazi',
                      style: TextStyle(color: Colors.green, fontSize: 14)),
                ])),
                Text('Ou vas tu ?',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black))
              ],
            )
          ],
        ),
      ));
}

Widget buildTextField() {
  return Positioned(
    top: 170,
    left: 20,
    right: 20,
    child: Container(
      padding: EdgeInsets.only(left: 15, top: 3),
      width: Get.width,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.05),
                spreadRadius: 4,
                blurRadius: 10)
          ],
          borderRadius: BorderRadius.circular(8)),
      child: TextFormField(
        style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xffA7A7A7)),
        decoration: const InputDecoration(
          hintText: "Recherche une déstination",
          hintStyle: GoogleFonts.poppins(fontSize: 16),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Icon(
              Icons.search,
            ),
          ),
          border: InputBorder.none,
        ),
      ),
    ),
  );
}
