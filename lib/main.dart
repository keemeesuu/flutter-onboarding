import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences prefs;

void main() async {
  // main() 함수에서 async를 쓰려면 필요.
  WidgetsFlutterBinding.ensureInitialized();

  prefs = await SharedPreferences.getInstance();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Try reading data from the 'onboarding' key. If it doesn't exist, returns null.
    // isOnboarded 값이 null을 반환하는경우 false 할당
    bool isOnboarded = prefs.getBool('isOnboarded') ?? false;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: isOnboarded ? HomePage() : OnBoardingPage(),
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
      onDone: () async {
        // Save an boolean value to 'onboarding' key.
        // onboarding 비활성화 : true
        await prefs.setBool('isOnboarded', true);

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
        );
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: Center(
        child: Text("Hello World"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          // Save an boolean value to 'onboarding' key.
          // onboarding 비활성화 : false
          await prefs.setBool("isOnboarded", false);

          // 아래와 같이 SharedPreferences에 저장된 모든 데이터를 삭제할 수 있다.
          // prefs.clear();
        },
        backgroundColor: Colors.green,
        label: Text("Onboarding 활성화 하기"),
        icon: Icon(Icons.restore_rounded),
      ),
    );
  }
}
