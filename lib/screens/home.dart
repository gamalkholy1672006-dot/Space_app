import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space_app2/screens/planetScreen.dart';
import 'package:space_app2/utils/app_colors.dart';
import 'package:space_app2/core/models/planet_model.dart';

class homescreen extends StatefulWidget {
  static const String routeName = "home";

  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  int current = 0;
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset("assets/images/halfmoon.png"),
              SafeArea(
                child: Column(
                  children: [
                    Align(
                      alignment: .center,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 26),
                        child: Text(
                          "Explore",
                          style: GoogleFonts.spaceGrotesk(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: AppColor.white,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 90),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Which planet would you like to explore?",
                        style: GoogleFonts.spaceGrotesk(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: AppColor.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 24,),
          SizedBox(
            height: 450,
            child: Stack(
              children: [
                PageView.builder(
                    onPageChanged: (page){
                      setState(() {
                        current = page;
                      });
                    },
                    controller: controller,
                    itemCount: PlanetModel.planets.length,
                    itemBuilder:(context,i){
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: [
                            Expanded(
                              child: Image.asset(
                                  "assets/images/${PlanetModel.planets[i].pngImage}"
                              ),
                            ),
                            Text(
                              PlanetModel.planets[i].planetName,
                              style: GoogleFonts.spaceGrotesk(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: AppColor.white,
                              ),
                            ),
                            SizedBox(height: 30,),
                          ],
                        ),
                      );
                    }
                ),

                Align(
                  alignment: .bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        bottom: 27,
                        left: 18,
                        right: 18
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 56,
                          height: 56,
                          child: ElevatedButton(
                            onPressed: () {
                              controller.previousPage(
                                duration: Duration(milliseconds: 200),
                                curve: Curves.easeInOut,
                              );
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

                        Spacer(),

                        SizedBox(
                          width: 56,
                          height: 56,
                          child: ElevatedButton(
                            onPressed: () {
                              controller.nextPage(
                                duration: Duration(milliseconds:200),
                                curve: Curves.easeInOut,
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColor.red,
                              shape: const CircleBorder(),
                              padding: EdgeInsets.zero,
                            ),
                            child: Icon(
                              Icons.arrow_forward,
                              color: AppColor.white,
                              size: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 38,),

          Padding(
            padding: const EdgeInsets.only(
                right: 16,
                left: 16,
                bottom: 22
            ),
            child: Align(
              alignment: .bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => planetScreen(
                          planetName: PlanetModel.planets[current].planetName,
                          title: PlanetModel.planets[current].title,
                          index: current,
                        ),
                      )
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(56),
                  ),
                  backgroundColor: AppColor.red,
                  minimumSize: Size(56,56),
                ),

                child: Row(
                  children: [
                    Text(
                      "Explore ${PlanetModel.planets[current].planetName}",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward,
                      color: AppColor.white,
                      size: 24,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}