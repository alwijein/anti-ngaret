import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:latihan_x0x0x/Screens/Login/login_screen.dart';
import 'package:rive/rive.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  Artboard _riveArtboard;
  RiveAnimationController _controller;
  @override
  void initState() {
    super.initState();
  
    // Load the animation file from the bundle, note that you could also
    // download this. The RiveFile just expects a list of bytes.
    rootBundle.load('assets/animations/space_camp.riv').then(
      (data) async {
        final file = RiveFile();

        // Load the RiveFile from the binary data.
        if (file.import(data)) {
          // The artboard is the root of the animation and gets drawn in the
          // Rive widget.
          final artboard = file.mainArtboard;
          // Add a controller to play back a known animation on the main/default
          // artboard.We store a reference to it so we can toggle playback.
          artboard.addController(_controller = SimpleAnimation('loop'));
          setState(() => _riveArtboard = artboard);
        }
      },
    );
    Future.delayed(Duration(seconds: 3),(){
    Navigator.of(context).push(_createRoute());
  });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _riveArtboard == null
            ? const SizedBox()
            : Rive(artboard: _riveArtboard, fit: BoxFit.cover,),
      ),
    );
  }
  Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => LoginScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
}
