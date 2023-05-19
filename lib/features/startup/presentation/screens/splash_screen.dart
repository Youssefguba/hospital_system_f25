import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double percent = 0.0;
  @override
  void initState() {
    super.initState();
    _addPercent();
  }

  void _addPercent() {
    Future.delayed(Duration(milliseconds: 200), () {
      if (percent > 1) return;
      setState(() {
        percent += 0.1;
      });
      _addPercent();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: null,
        builder: (context, snapshot) {
          switch(snapshot.connectionState) {
            case ConnectionState.none:
              // TODO: Handle this case.
              break;
            case ConnectionState.waiting:
              // TODO: Handle this case.
              break;
            case ConnectionState.active:
              // TODO: Handle this case.
              break;
            case ConnectionState.done:
              // TODO: Handle this case.
              break;
          }


          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://media.istockphoto.com/id/1312665318/vector/medical-logo-design-vector.jpg?s=612x612&w=0&k=20&c=dp5fFItTDGnZy8j1gB0GVjqVyJPG_Xznp_JTRZFXCXs=',
                height: 300,
                width: 300,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: LinearProgressIndicator(
                  value: percent,
                ),
              ),
            ],
          );
        }
      ),
    );
  }
}
