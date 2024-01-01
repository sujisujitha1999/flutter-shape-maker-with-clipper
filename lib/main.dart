import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Center(
            child: ClipPath(
                clipper: BoatBottomClipper(),
                child: Container(
                  decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(30),
                      color: Colors.indigo.shade300),
                  height: width * .8,
                  width: width * .8,
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: ClipPath(
                clipper: Triangle2Clipper(),
                child: Container(
                  decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(30),
                      color: Colors.indigo.shade300),
                  height: width * .8,
                  width: width * .8,
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: ClipPath(
                clipper: TriangleClipper(),
                child: Container(
                  decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(30),
                      color: Colors.indigo.shade300),
                  height: width * .8,
                  width: width * .8,
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: ClipPath(
                clipper: RippenClipper(),
                child: Container(
                  decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(30),
                      color: Colors.indigo.shade300),
                  height: width * .8,
                  width: width * .8,
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: ClipPath(
                clipper: FullTriangleClipper(),
                child: Container(
                  decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(30),
                      color: Colors.indigo.shade300),
                  height: width * .8,
                  width: width * .8,
                )),
          ),
        ],
      ),
    );
  }
}

// class MyClipper extends CustomClipper<Path> {
//   const MyClipper({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

class SimpleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
// path.lineTo(0, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height - 100);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class BoatBottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(100, size.height);
    path.lineTo(size.width - 100, size.height);

    path.lineTo(size.width, 0);
// path.lineTo(x, y)
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class Triangle2Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class FullTriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(0, size.height);

    path.lineTo(size.width, size.height);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class RippenClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width / 2, size.height - (size.height * .3));
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

// class ParapolaClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Path path = Path();
//     path.moveTo(size, y)
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }
