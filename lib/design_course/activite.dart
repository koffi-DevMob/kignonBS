import 'package:best_flutter_ui_templates/design_course/popular_course_list_view.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import 'Category_list_Esthetique.dart';
import 'category_list_view.dart';
import 'course_info_screen.dart';
import 'design_course_app_theme.dart';
import 'home_design_course.dart';

class ActivitePage extends StatefulWidget {
  const ActivitePage({Key? key}) : super(key: key);

  @override
  _ActivitePageState createState() => _ActivitePageState();
}

class _ActivitePageState extends State<ActivitePage> {
  CategoryType categoryType = CategoryType.ui;
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

          //getAppBarUI(),
          Expanded(
              child: Container(
                color: Colors.black.withOpacity(0.7),
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: <Widget>[
                    //getSearchBarUI(),
                    SizedBox(height: 35,),
                    getCategoryCoiffure(),
                    SizedBox(height: 30,),
                    Divider(height: 10,),
                    SizedBox(height: 30,),
                    getCategoryEsthetique(),
                  ],
                ),
              ),
          ),
        ],
      ),
    );
  }

  Widget getCategoryCoiffure() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
         Text(
            'Coiffure',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22,
              letterSpacing: 0.27,
              color: Colors.grey.shade300
,
            ),
          ),
        CategoryListViewCoiffure(
          callBack: () {
            //moveTo();
          },
        ),
      ],
    );
  }
   Widget getCategoryEsthetique() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
         Text(
            'Esthetique',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22,
              letterSpacing: 0.27,
              color: Colors.grey.shade300
,
            ),
          ),
        CategoryListViewEsthetique(
          callBack: () {
           // moveTo();
          },
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
          Text(
            'Galerie',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22,
              letterSpacing: 0.27,
              color: DesignCourseAppTheme.darkerText,
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


  Widget getAppBarUI() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 18, right: 18),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Bienvenue chez',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    letterSpacing: 0.2,
                    color: DesignCourseAppTheme.grey,
                  ),
                ),
                Text(
                  'Kignon Barber Shop',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    fontFamily: "Waterfall",
                    letterSpacing: 0.27,
                    color: DesignCourseAppTheme.darkerText,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100 )
          ),
            child: Image.asset('assets/logo_new_kbs.png'),
          )
        ],
      ),
    );
  }
}
enum CategoryType {
  ui,
  coding,
  basic,
}