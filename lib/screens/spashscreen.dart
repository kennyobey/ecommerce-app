import 'dart:async';
import 'package:flutter/material.dart';
import '../main.dart';
import 'app_pin_code.dart';
import 'app_store_setup.dart';
import 'bottom_nav_bar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 10),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const BottomNavBar())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 79, 6, 206),
      body: Center(
        child: Image.asset(
          'assets/images/VENDBOX-88-WHITE 1.png',
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}
// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:splashscreen/splashscreen.dart';

// class Splash extends StatefulWidget {
//   const Splash({Key? key}) : super(key: key);

//   @override
//   _SplashState createState() => _SplashState();
// }

// class _SplashState extends State<Splash> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(
//         const Duration(seconds: 3),
//         () => Navigator.pushReplacement(context,
//             MaterialPageRoute(builder: (context) => const SecondScreen())));
//   }

//   @override
//   @override
//   Widget build(BuildContext context) {
//     return SplashScreen(
//       seconds: 6,
//       navigateAfterSeconds: const SecondScreen(),
//       title: const Text(
//         'GeeksForGeeks',
//         textScaleFactor: 2,
//       ),
//       image: Image.network(
//           'https://www.geeksforgeeks.org/wp-content/uploads/gfg_200X200.png'),
//       loadingText: const Text("Loading"),
//       photoSize: 100.0,
//       loaderColor: Colors.blue,
//     );
//   }
// }

// class SecondScreen extends StatelessWidget {
//   const SecondScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         color: const Color.fromARGB(255, 168, 16, 199),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               "assets/images/VENDBOX-88-WHITE 1.png",
//               height: 200,
//               width: 200,
//             ),
//             const SizedBox(
//               height: 100,
//             ),
//             Image.asset("assets/images/downlogo.png")
//             //SvgPicture.asset('assets/images/SplashScreen.svg', height: 40),
//             // showGif == true
//             //     ? const Image(
//             //         image: AssetImage('assets/images/logosplash.gif'),
//             //         height: 200)
//             //     : Container()
//           ],
//         ));
//   }
// }

// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({Key? key}) : super(key: key);

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   // final _controller = Get.find<AuthRepository>();
//   Timer? timer;
//   //bool showGif = false;

//   @override
//   void initState() {
//     timer = Timer(const Duration(seconds: 12), () async {
//       // if (_controller.authStatus == AuthStatus.IsFirstTime) {
//       //   Get.offAll(() => const Onboarding());
//       // } else if (_controller.authStatus == AuthStatus.Authenticated) {
//       //   Get.off(() => const DashBoard());
//       // } else {
//       //   Get.off(() => const SignUp());
//       // }
//     });
//     timer = Timer(const Duration(seconds: 2), () {
//       setState(() {
//         //showGif = true;
//       });
//     });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         color: Color.fromARGB(255, 168, 16, 199),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset("assets/images/VENDBOX-88-WHITE 1.png")
//             //SvgPicture.asset('assets/images/pykup.svg', height: 40),
//             // showGif == true
//             //     ? const Image(
//             //         image: AssetImage('assets/images/logosplash.gif'),
//             //         height: 200)
//             //     : Container()
//           ],
//         ));
//   }
// }
