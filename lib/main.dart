import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingPage(),
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Title",
          body: "Text",
          image: const Center(
            child: Text("Image"),
          ),
        ),
        PageViewModel(
          title: "Title",
          body: "Text",
          image: const Center(
            child: Text("Image"),
          ),
        ),
        PageViewModel(
          title: "Title",
          body: "Text",
          image: const Center(
            child: Text("Image"),
          ),
        ),
      ],
      showSkipButton: true,
      skip: const Text("Skip"),
      next: const Text("Next"),
      done: const Text("Done"),
      onDone: () {
        // On button pressed
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Main(),
          ),
        );
      },
    );
  }
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Onboarding"),
      ),
      body: Center(
        child: Text("hello world"),
      ),
    );
  }
}
