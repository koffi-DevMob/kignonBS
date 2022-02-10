import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'buttom.dart';
import 'course_info_screen.dart';

  final List<String> imgList = [
    'assets/logo_kbs.jpeg',
    'kignon_barbershop_3.png',
    'kbsyopbelair.png',
    'kbsyopNiangon.png',
    ];

class DesignCourseHomeScreen extends StatefulWidget {
  @override
  _DesignCourseHomeScreenState createState() => _DesignCourseHomeScreenState();
}
final CarouselController _controller = CarouselController();

@override

class _DesignCourseHomeScreenState extends State<DesignCourseHomeScreen> {
  @override
  void initState()
  {
    super.initState();
  }
@override

  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            toolbarHeight: 100,
            backgroundColor: Colors.black.withOpacity(0.8),
            title: Padding(
              padding: const EdgeInsets.only(top: 50.0,bottom: 50),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Center(
                          child: Text(
                            'Kignon Barber Shop',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              fontFamily: "Waterfall",
                              letterSpacing: 0.27,
                              color: Colors.grey.shade300
,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ),
               body: Column(
        children: <Widget>[
          Expanded(
              child: Container(
                color: Colors.black.withOpacity(0.8),
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: <Widget>[
                    //getSearchBarUI(),
                    SizedBox(height: 20,),
                    getCategoryUI(),
                    SizedBox(height: 15,),
                    Flexible(
                      child: getPopularCourseUI(),
                    ),
                  ],
                ),
              ),
          ),
        ],
      ),
    );
  }

  Widget getCategoryUI() {
    return Column(
      children: <Widget>[
         CarouselSlider(
                items: imageSliders,
                options: CarouselOptions(
                  aspectRatio: 16/8,
                  viewportFraction: 0.8,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 3),
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      autoPlayCurve: Curves.fastOutSlowIn,
      enlargeCenterPage: true,
      scrollDirection: Axis.horizontal,
                ),
                carouselController: _controller,
              ),
      ],
    );
  }
  Widget getPopularCourseUI() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 18, right: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(
            child: ButtomTabs(),
            ),
        ],
      ),
    );
  }


  final List<Widget> imageSliders = imgList
    .map((item) => Container(
    color: Colors.transparent,
          child: Container(
             decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.6),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0)),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    offset: Offset(1.1, 1.1),
                                    blurRadius: 10.0),
                              ],
                            ),
            child: Image.asset(item, fit: BoxFit.cover, width: 1000.0),
          ),
        ))
    .toList();

  void moveTo() {
    Navigator.push<dynamic>(
      context,
      MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => CourseInfoScreen(),
      ),
    );
  }
}