import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'buttom.dart';
import 'course_info_screen.dart';

  final List<String> imgList = [
    'kignon_barbershop_3.png',
    'kbsyopbelair.png',
    'kbsyopNiangon.png',
    ];

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}
 final CarouselController _controller = CarouselController();

@override
class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {

   return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          //getAppBarUI(),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
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
                    enlargeCenterPage: true,
                    aspectRatio: 2.0,
                    autoPlay: true,
                   enlargeStrategy: CenterPageEnlargeStrategy.height,
                  autoPlayAnimationDuration: Duration(microseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  viewportFraction: 0.8,

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
          child: Container(
            margin: EdgeInsets.all(2.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                        item,
                        fit: BoxFit.cover,
                        width: 1000.0,
                    ),
                  ],
                )),
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

