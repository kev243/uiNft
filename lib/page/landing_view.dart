import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uinft/page/home_view.dart';
import 'package:uinft/utils/app_colors.dart';

class LandingView extends StatelessWidget {
  const LandingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: h * 0.55,
                width: w,
                child: Image.asset(
                  'assets/images/nft1.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: (h * 0.55) + 3,
                width: w,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: const [
                        0.7,
                        0.95
                      ],
                      colors: [
                        Colors.transparent,
                        Theme.of(context).scaffoldBackgroundColor
                      ]),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
            child: Text(
              'Créez votre propre galerie de drames NFT',
              style: Theme.of(context).textTheme.headline2!.copyWith(
                  fontFamily: GoogleFonts.chakraPetch().fontFamily,
                  fontWeight: FontWeight.bold,
                  fontSize: 52),
            ),
          ),
          const Spacer(),
          Padding(
            padding:
                const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 50),
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeView()),
                        );
                      },
                      child: Text("S'inscrire")),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.socialMediaColor,
                    ),
                    onPressed: () {},
                    child: const Icon(FontAwesomeIcons.apple),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.socialMediaColor,
                    ),
                    onPressed: () {},
                    child: const Icon(FontAwesomeIcons.google),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
