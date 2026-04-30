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
            topspace: 10,
            image: Appassets.image1,
            imagetotittle: 100,
            tittle: "Welcome To Islmi App",
            tittletodesc: 1,
            descrption: "",
            imageheight: MediaQuery.of(context).size.height * 0.35,
            textcolor: App_Color.primarycolor,
          ),
        ),
        PageViewModel(
          titleWidget: Image.asset(Appassets.logobg),
          bodyWidget: Buildintrodicationscreen(
            topspace: 15,
            image: Appassets.image2,
            imagetotittle: 30,
            tittle: "Welcome To Islmi App",
            tittletodesc: 25,
            descrption: "We Are Very Excited To Have You In Our Community",
            imageheight: MediaQuery.of(context).size.height * 0.35,
            textcolor: App_Color.primarycolor,
          ),
        ),
        PageViewModel(
          titleWidget: Image.asset(Appassets.logobg),
          bodyWidget: Buildintrodicationscreen(
            topspace: 15,
            image: Appassets.image3,
            imagetotittle: 30,
            tittle: "Reading the Quran",
            tittletodesc: 25,
            descrption: "Read, and your Lord is the Most Generous",
            imageheight: MediaQuery.of(context).size.height * 0.35,
            textcolor: App_Color.primarycolor,
          ),
        ),
        PageViewModel(
          titleWidget: Image.asset(Appassets.logobg),
          bodyWidget: Buildintrodicationscreen(
            topspace: 15,
            image: Appassets.img,
            imagetotittle: 30,
            tittle: "Bearish",
            tittletodesc: 25,
            descrption: "Praise the name of your Lord, the Most High",
            imageheight: MediaQuery.of(context).size.height * 0.35,
            textcolor: App_Color.primarycolor,
          ),
        ),
        PageViewModel(
          titleWidget: Image.asset(Appassets.logobg),
          bodyWidget: Buildintrodicationscreen(
            topspace: 15,
            image: Appassets.image4,
            imagetotittle: 28,
            tittle: "Holy Quran Radio",
            tittletodesc: 19,
            descrption:
                "You can listen to the Holy Quran Radio through the application for free and easily",
            imageheight: MediaQuery.of(context).size.height * 0.35,
            textcolor: App_Color.primarycolor,
          ),
        ),
      ],
      onChange: (pageIndex) {
        setState(() {
          currentpage = pageIndex;
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
