import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami_app/utils/App_color.dart';
import 'package:islami_app/utils/App_route.dart';
import 'package:islami_app/utils/Appassets.dart';

import 'BuildIntrodicationScreen.dart';

class Introdacctionscreen extends StatefulWidget {
  @override
  State<Introdacctionscreen> createState() => _IntrodacctionscreenState();
}

class _IntrodacctionscreenState extends State<Introdacctionscreen> {
  int currentpage = 0;

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: App_Color.blackcolor,
      pages: [
        PageViewModel(
          titleWidget: Image.asset(Appassets.logobg),
          bodyWidget: Buildintrodicationscreen(
            image: Appassets.introWelcome,
            imageTitleSpace: 0.10,
            tittle: "Welcome To Islmic App",
          ),
        ),
        PageViewModel(
          titleWidget: Image.asset(Appassets.logobg),
          bodyWidget: Buildintrodicationscreen(
            image: Appassets.introCommunity,
            imageTitleSpace: 0.04,
            tittle: "Welcome To Islmi App",
            descrption: "We Are Very Excited To Have You In Our Community",
          ),
        ),
        PageViewModel(
          titleWidget: Image.asset(Appassets.logobg),
          bodyWidget: Buildintrodicationscreen(
            image: Appassets.introQuran,
            imageTitleSpace: 0.04,
            tittle: "Reading the Quran",
            descrption: "Read, and your Lord is the Most Generous",
          ),
        ),
        PageViewModel(
          titleWidget: Image.asset(Appassets.logobg),
          bodyWidget: Buildintrodicationscreen(
            image: Appassets.introSebha,
            imageTitleSpace: 0.04,
            tittle: "Bearish",
            descrption: "Praise the name of your Lord, the Most High",
          ),
        ),
        PageViewModel(
          titleWidget: Image.asset(Appassets.logobg),
          bodyWidget: Buildintrodicationscreen(
            image: Appassets.introRadio,
            imageTitleSpace: 0.04,
            tittle: "Holy Quran Radio",
            descrption:
                "You can listen to the Holy Quran Radio through the application for free and easily",
          ),
        ),
      ],
      onChange: (index) {
        setState(() {
          currentpage = index;
        });
      },
      onDone: () {
        Navigator.of(context).pushNamed(App_route.homescreen);
      },
      showSkipButton: true,
      showNextButton: true,
      showBackButton: currentpage > 0,
      back: Text("Back", style: TextStyle(color: App_Color.primarycolor)),
      skip: Text("Skip", style: TextStyle(color: App_Color.primarycolor)),
      next: Text("Next", style: TextStyle(color: App_Color.primarycolor)),
      done: Text("Done", style: TextStyle(color: App_Color.primarycolor)),
      onSkip: () {
        Navigator.of(context).pushNamed(App_route.homescreen);
      },
      dotsDecorator: DotsDecorator(
        size: const Size.square(10.0),
        activeSize: const Size(30, 10),
        activeColor: App_Color.primarycolor,
        color: App_Color.primarycolor,
        spacing: const EdgeInsets.symmetric(horizontal: 3.0),
        activeShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
