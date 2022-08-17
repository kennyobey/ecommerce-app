import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;

import 'screens/spashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: const [Text("Hello")],
        ),
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

//   final GoogleSignIn _googleSignIn = GoogleSignIn(
//     scopes: ['email'],
//   );

//   void initState() {
//     super.initState();
//     _googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount? account) {
//       print(account);
//     });
//     //_googleSignIn.signInSilently();
//   }

//   Future<void> _handleSignIn() async {
//     try {
//       final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
//       final GoogleSignInAuthentication googleAuth =
//           await googleUser!.authentication;

//       // TODO - null accessToken show error
//       // Login Fails what to do
//       if (googleAuth.accessToken != '') {
//         var accessToken = googleAuth.accessToken;
//         Uri yourAuthServerUrl =
//             'https://pykup-backend-dev.herokuapp.com/auth/social-auth'
//                 as Uri; // https endpoint
//         var response = await http.post(yourAuthServerUrl,
//             body: {'access_token': accessToken, 'email': googleUser.email});

//         final responseData = json.decode(response.body);
//         var welcomeText = (responseData['error'])
//             ? "Google Login Failed"
//             : "Welcome ${googleUser.displayName}";

//         _scaffoldKey.currentState?.showSnackBar(
//           SnackBar(
//             content: Text(welcomeText),
//           ),
//         );
//       }
//     } catch (error) {
//       print(error);
//       // TODO - Error what to do now
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             RaisedButton(
//               color: Colors.blueAccent,
//               onPressed: _handleSignIn,
//               child: const Text(
//                 'Google Login',
//                 style: TextStyle(
//                   color: Colors.white,
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
