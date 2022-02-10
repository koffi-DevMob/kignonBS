import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  final AnimationController animationController;

  const SplashView({Key? key, required this.animationController})
      : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    final _introductionanimation =
        Tween<Offset>(begin: Offset(0, 0), end: Offset(0.0, -1.0))
            .animate(CurvedAnimation(
      parent: widget.animationController,
      curve: Interval(
        0.0,
        0.2,
        curve: Curves.fastOutSlowIn,
      ),
    ));
    return SlideTransition(
      position: _introductionanimation,
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.grey.shade100
                ]
            )
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 100,),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/logo_kbs.jpeg',
                 fit: BoxFit.contain,
                    height: 230,
                    width: 230,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 0.0, bottom: 20.0),
                child: Text(
                  "Kignon Barber Shop",
                  style: TextStyle(
                      fontSize: 65.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Waterfall",
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 64, right: 64),
                child: Text(
                  "",
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 150,
              ),
              Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).padding.bottom + 16),
                child: InkWell(
                  onTap: () {
                    widget.animationController.animateTo(0.2);
                  },
                  child: Container(
                    height: 58,
                    padding: EdgeInsets.only(
                      left: 56.0,
                      right: 56.0,
                      top: 16,
                      bottom: 16,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(38.0),
                      color: Color(0xff132137),
                    ),
                    child: Text(
                      "Suivant",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
               SizedBox(
                  height: 160,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
