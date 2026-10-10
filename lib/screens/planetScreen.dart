import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:space_app2/core/models/planet_model.dart';
import 'package:space_app2/utils/app_colors.dart';
import 'package:space_app2/screens/planetScreen.dart';

class planetScreen extends StatefulWidget {
  final String planetName;
  final String title;
  final int index;
  // final String model3D;
  static const String routeName = "planetScreen";

  const planetScreen({
    super.key,
    required this.planetName,
    required this.title,
    required this.index,
  });

  @override
  State<planetScreen> createState() => _planetScreenState();
}

class _planetScreenState extends State<planetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      body: Column(
        children: [
          Stack(
            children: [

              Image.asset("assets/images/halfmoon.png"),

              Padding(
                padding: const EdgeInsets.only(top: 26),
                child: SafeArea(
                  child: Align(
                    alignment: .topCenter,
                    child: Text(
                      widget.planetName,
                      style: GoogleFonts.spaceGrotesk(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: AppColor.white,
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 45),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.red,
                    shape: const CircleBorder(),
                    padding: EdgeInsets.zero,
                  ),
                  child: Icon(
                    Icons.arrow_back,
                    color: AppColor.white,
                    size: 24,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 110, left: 18),
                child: SafeArea(
                  child: Text(
                    widget.title,
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: AppColor.white,
                    ),
                  ),
                ),
              ),
            ],
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: ListView(
                children: [
                  Image.asset(
                    "assets/images/${PlanetModel.planets[widget.index].pngImage}",
                  ),

                  Column(
                    crossAxisAlignment: .start,
                    spacing: 8,
                    children: [

                      Text(
                        "About",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffFFFFFF),
                        ),
                      ),

                      Text(
                        PlanetModel.planets[widget.index].about,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Color(0xffFFFFFF),
                        ),
                      ),

                      SizedBox(height: 8,),

                      Text(
                        "Distance from Sun",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffFFFFFF),
                        ),
                      ),

                      Text(
                        PlanetModel.planets[widget.index].distanceFromSun,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Color(0xffFFFFFF),
                        ),
                      ),

                      Text(
                        "Length of Day",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffFFFFFF),
                        ),
                      ),

                      Text(
                        PlanetModel.planets[widget.index].lengthOfDay,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Color(0xffFFFFFF),
                        ),
                      ),

                      Text(
                        "Orbital Period",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffFFFFFF),
                        ),
                      ),

                      Text(
                        PlanetModel.planets[widget.index].orbitalPeriod,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Color(0xffFFFFFF),
                        ),
                      ),

                      Text(
                        "Radius",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffFFFFFF),
                        ),
                      ),

                      Text(
                        PlanetModel.planets[widget.index].radius,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Color(0xffFFFFFF),
                        ),
                      ),

                      Text(
                        "Mass",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffFFFFFF),
                        ),
                      ),

                      Text(
                        PlanetModel.planets[widget.index].mass,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Color(0xffFFFFFF),
                        ),
                      ),

                      Text(
                        "Gravity",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffFFFFFF),
                        ),
                      ),

                      Text(
                        PlanetModel.planets[widget.index].gravity,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Color(0xffFFFFFF),
                        ),
                      ),

                      Text(
                        "Surface Area",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffFFFFFF),
                        ),
                      ),

                      Text(
                        PlanetModel.planets[widget.index].surfaceArea,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Color(0xffFFFFFF),
                        ),
                      ),

                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}