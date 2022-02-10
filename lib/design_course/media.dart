import 'package:best_flutter_ui_templates/design_course/popular_course_list_view.dart';
import 'package:flutter/material.dart';

import 'Category_salon.dart';
import 'category_list_view.dart';
import 'course_info_screen.dart';
import 'design_course_app_theme.dart';

class MediaHome extends StatefulWidget {
  const MediaHome({Key? key}) : super(key: key);

  @override
  _MediaHomeState createState() => _MediaHomeState();
}

class _MediaHomeState extends State<MediaHome> {
  @override
  Widget build(BuildContext context) {

   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.black.withOpacity(0.8),
      toolbarHeight: 100,
      title: Padding(
              padding: const EdgeInsets.only(top: 50.0,bottom: 50),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Kignon Barber Shop',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            fontFamily: "Waterfall",
                            letterSpacing: 0.27,
                            color: Colors.grey.shade300
,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.grey.shade300
,),
        onPressed: (){
          setState(() {
            Navigator.pushReplacementNamed(
                context, '/home');
          });
        },
      ),
     ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: <Widget>[
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

  Widget getPopularCourseUI() {
    return Container(
      color: Colors.black.withOpacity(0.8),
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 18, right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Galerie',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
                letterSpacing: 0.27,
                color: Colors.grey.shade300
,
              ),
            ),
            Flexible(
              child: PopularCourseListView(
                callBack: () {
                  moveTo();
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  void moveTo() {
    Navigator.push<dynamic>(
      context,
      MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => CourseInfoScreen(),
      ),
    );
  }



}

