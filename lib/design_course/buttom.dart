import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtomTabs extends StatefulWidget {
  const ButtomTabs({Key? key}) : super(key: key);

  @override
  _ButtomTabsState createState() => _ButtomTabsState();
}

class _ButtomTabsState extends State<ButtomTabs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(
          color: Colors.black.withOpacity(0.8),
          child: Column(
            children: <Widget>[
              Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(top:50,bottom: 50),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child:SizedBox.fromSize(
                          size: Size(100, 100), // button width and height
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.6),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(0.0),
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topRight: Radius.circular(0.0)),
                              boxShadow: <BoxShadow>[/*BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    offset: Offset(1.1, 1.1),
                                    blurRadius: 10.0)*/],
                            ),
                            child: ClipOval(
                              child: Material(
                                color: Colors.transparent, // button color
                                child: InkWell(
                                  splashColor: Colors.grey.withOpacity(0.1), // splash color
                                  onTap: () {
                                    Navigator.pushReplacementNamed(
                                        context, '/salons');
                                  }, // button pressed
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(FontAwesomeIcons.home,size: 30,color: Colors.grey.shade300
,),
                                      SizedBox(height: 8,),// icon
                                      Text('Salons', style: TextStyle(
                                          color: Colors.grey.shade300
,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "Worksans"
                                      ),),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                            ),
                            SizedBox(width: 20,),
                            Expanded(
                                child:SizedBox.fromSize(
                          size: Size(100, 100), // button width and height
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.6),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(0.0),
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topRight: Radius.circular(0.0)),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    offset: Offset(1.1, 1.1),
                                    blurRadius: 10.0),
                              ],
                            ),
                            child: ClipOval(
                              child: Material(
                                color: Colors.transparent, // button color
                                child: InkWell(
                                  splashColor: Colors.grey.withOpacity(0.1), // splash color
                                  onTap: () {
                                    Navigator.pushReplacementNamed(
                                        context, '/services');
                                  }, // button pressed
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(FontAwesomeIcons.projectDiagram,size: 30,color: Colors.grey.shade300
,), // icon
                                      SizedBox(height: 8,),
                                      Text('Services', style: TextStyle(
                                          color: Colors.grey.shade300
,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "Worksans"
                                      ),),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                            ),
                            SizedBox(width: 20,),
                            Expanded(
                                child:SizedBox.fromSize(
                          size: Size(100, 100), // button width and height
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.6),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(0.0),
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topRight: Radius.circular(0.0)),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    offset: Offset(1.1, 1.1),
                                    blurRadius: 10.0),
                              ],
                            ),
                            child: ClipOval(
                              child: Material(
                                color: Colors.transparent, // button color
                                child: InkWell(
                                  splashColor: Colors.grey.withOpacity(0.1), // splash color
                                  onTap: () {
                                    Navigator.pushReplacementNamed(
                                        context, '/tarifs');
                                  }, // button pressed
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(FontAwesomeIcons.dollarSign,size: 30,color: Colors.grey.shade300
,), // icon
                                      SizedBox(height: 8,),
                                      Text('Tarifs', style: TextStyle(
                                          color: Colors.grey.shade300
,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "Worksans"
                                      ),),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                            )
                          ],
                        ),
                        SizedBox(height: 40,),
                        Row(
                          children: [
                            Expanded(
                                child:SizedBox.fromSize(
                          size: Size(100, 100), // button width and height
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.6),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(0.0),
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topRight: Radius.circular(0.0)),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    offset: Offset(1.1, 1.1),
                                    blurRadius: 10.0),
                              ],
                            ),
                            child: ClipOval(
                              child: Material(
                                color: Colors.transparent, // button color
                                child: InkWell(
                                  splashColor: Colors.grey.withOpacity(0.1), // splash color
                                  onTap: () {
                                    Navigator.pushReplacementNamed(
                                        context, '/media');
                                  }, // button pressed
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(FontAwesomeIcons.playCircle,size: 30,color: Colors.grey.shade300
,), // icon
                                      SizedBox(height: 8,),
                                      Text('Media', style: TextStyle(
                                          color: Colors.grey.shade300
,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "Worksans"
                                      ),),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                            ),
                            SizedBox(width: 20,),
                            Expanded(
                                child:SizedBox.fromSize(
                          size: Size(100, 100), // button width and height
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.6),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(0.0),
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topRight: Radius.circular(0.0)),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    offset: Offset(1.1, 1.1),
                                    blurRadius: 10.0),
                              ],
                            ),
                            child: ClipOval(
                              child: Material(
                                color: Colors.transparent, // button color
                                child: InkWell(
                                  splashColor: Colors.grey.withOpacity(0.1), // splash color
                                  onTap: () {
                                    Navigator.pushReplacementNamed(
                                        context, '/espaces');
                                  }, // button pressed
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(FontAwesomeIcons.users,size: 30,color: Colors.grey.shade300
,), // icon

                                      SizedBox(height: 8,),
                                      Text('Espace', style: TextStyle(
                                          color: Colors.grey.shade300
,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "Worksans"
                                      ),),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                            ),
                            SizedBox(width: 20,),
                            Expanded(
                                child:SizedBox.fromSize(
                          size: Size(100, 100), // button width and height
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.6),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(0.0),
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topRight: Radius.circular(0.0)),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    offset: Offset(1.1, 1.1),
                                    blurRadius: 10.0),
                              ],
                            ),
                            child: ClipOval(
                              child: Material(
                                color: Colors.transparent, // button color
                                child: InkWell(
                                  splashColor: Colors.grey.withOpacity(0.1), // splash color
                                  onTap: () {
                                    Navigator.pushReplacementNamed(
                                        context, '/contacts');
                                  }, // button pressed
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(FontAwesomeIcons.addressBook,size: 30,color: Colors.grey.shade300
,), // icon

                                      SizedBox(height: 8,),
                                      Text('Contacts', style: TextStyle(
                                          color: Colors.grey.shade300
,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "Worksans"
                                      ),),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).padding.bottom,
              )
            ],
          ),
        ),
    );
  }
}
