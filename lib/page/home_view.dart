import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {},
        child: const Icon(
          FontAwesomeIcons.plus,
          color: Colors.white,
          size: 25,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Stack(
        children: [
          Positioned.fill(
            bottom: 0,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(),
              ),
            ),
          ),
          BottomAppBar(
              notchMargin: 0,
              shape: const CircularNotchedRectangle(),
              child: SizedBox(
                height: h * 0.08,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Icon(FontAwesomeIcons.house),
                                Icon(FontAwesomeIcons.wallet),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: w * 0.2,
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Icon(FontAwesomeIcons.heart),
                                Icon(FontAwesomeIcons.user),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
      appBar: AppBar(
        leadingWidth: 0,
        leading: SizedBox.shrink(),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.bell),
          ),
        ],
        title: Text(
          'NFT',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(FontAwesomeIcons.magnifyingGlass),
                  hintText: 'Collection, item or user',
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: AppColors.textFieldColor),
                      borderRadius: BorderRadius.circular(8)),
                  border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: AppColors.textFieldColor),
                      borderRadius: BorderRadius.circular(8)),
                  fillColor: AppColors.textFieldColor,
                  filled: true),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'heading',
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontFamily: GoogleFonts.chakraPetch().fontFamily,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.5),
                  ),
                  const Icon(
                    FontAwesomeIcons.bell,
                    size: 30,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Stack(
                children: [
                  Container(
                    width: w,
                    height: h * 0.3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/nft1.jpeg'))),
                  ),
                  Positioned.fill(
                    top: 16,
                    left: 16,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Theme.of(context).bottomAppBarTheme.color,
                            borderRadius: BorderRadius.circular(8)),
                        child: const Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            '11h: 21m : 57s',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'description',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Row(
                    children: [
                      const Icon(
                        FontAwesomeIcons.ethereum,
                        color: AppColors.primaryColor,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        'ETH',
                        style: Theme.of(context).textTheme.titleLarge,
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'mooi',
                style: TextStyle(color: Colors.grey.shade400),
              ),
            )
          ]),

   const SizedBox(
            height: 20,
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'heading',
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontFamily: GoogleFonts.chakraPetch().fontFamily,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.5),
                  ),
                  const Icon(
                    FontAwesomeIcons.bell,
                    size: 30,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Stack(
                children: [
                  Container(
                    width: w,
                    height: h * 0.3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/nft1.jpeg'))),
                  ),
                  Positioned.fill(
                    top: 16,
                    left: 16,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Theme.of(context).bottomAppBarTheme.color,
                            borderRadius: BorderRadius.circular(8)),
                        child: const Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            '11h: 21m : 57s',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'description',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Row(
                    children: [
                      const Icon(
                        FontAwesomeIcons.ethereum,
                        color: AppColors.primaryColor,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        'ETH',
                        style: Theme.of(context).textTheme.titleLarge,
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'mooi',
                style: TextStyle(color: Colors.grey.shade400),
              ),
            )
          ]),

             const SizedBox(
            height: 20,
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'heading',
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontFamily: GoogleFonts.chakraPetch().fontFamily,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.5),
                  ),
                  const Icon(
                    FontAwesomeIcons.bell,
                    size: 30,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Stack(
                children: [
                  Container(
                    width: w,
                    height: h * 0.3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/nft1.jpeg'))),
                  ),
                  Positioned.fill(
                    top: 16,
                    left: 16,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Theme.of(context).bottomAppBarTheme.color,
                            borderRadius: BorderRadius.circular(8)),
                        child: const Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            '11h: 21m : 57s',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'description',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Row(
                    children: [
                      const Icon(
                        FontAwesomeIcons.ethereum,
                        color: AppColors.primaryColor,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        'ETH',
                        style: Theme.of(context).textTheme.titleLarge,
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'mooi',
                style: TextStyle(color: Colors.grey.shade400),
              ),
            )
          ]),

SizedBox(height: 200)
        ]),
      ),
    );
  }
}
