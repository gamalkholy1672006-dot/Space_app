import 'package:flutter/material.dart';
import 'package:space_app2/screens/home.dart';
import 'package:space_app2/utils/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class login extends StatelessWidget {
  static const String routeName = " login";

  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset("assets/images/on_boarding.png"),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Align(
                alignment: .centerLeft,
                child: Text(
                  "Explore The Universe",
                  style: GoogleFonts.inter(
                    fontSize: 48,
                    fontWeight: FontWeight.w900,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16, left: 16, bottom: 22),
              child: Align(
                alignment: .bottomCenter,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => homescreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(29),
                    ),
                    backgroundColor: AppColor.red,
                    minimumSize: Size.fromHeight(56),
                  ),

                  child: Row(
                    children: [
                      Text(
                        "Explore",
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
      ),
    );
  }
}
