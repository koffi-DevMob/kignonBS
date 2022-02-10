import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';

class ServicesHome extends StatefulWidget {
  const ServicesHome({Key? key}) : super(key: key);

  @override
  _ServicesHomeState createState() => _ServicesHomeState();
}

class _ServicesHomeState extends State<ServicesHome> {
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
      body: ContainedTabBarView(
        tabs: [
          Text('Coiffures', style: TextStyle(color: Colors.black)),
          Text('Soins Esthetiques', style: TextStyle(color: Colors.black))
        ],
        views: [
          getServices(),
          getServices1(),
        ],
        onChange: (index) => print(index),
    ));
  }
  // services coiffures
  Widget getServices() {
    return SingleChildScrollView(
      child: Container(
        color: Colors.black.withOpacity(0.8),
        child: Column(
          children: [
            SizedBox(height: 30,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius:
                              const BorderRadius.all(Radius.circular(100.0)),
                              child: AspectRatio(
                                  aspectRatio: 2,
                                  child: Image.asset('assets/logo_kbs.jpeg')),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text("Coupe",
                              style: TextStyle(
                                  color: Colors.grey.shade300,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 40,
                                fontFamily: 'Waterfall'
                              )),
                        ],
                      ),
                    )
                ),
                Expanded(child:
                Container(
                  child: Column(
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius:
                              const BorderRadius.all(Radius.circular(100.0)),
                              child: AspectRatio(
                                  aspectRatio: 2,
                                  child: Image.asset('assets/logo_kbs.jpeg')),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text("Teinture",
                              style: TextStyle(
                                  color: Colors.grey.shade300,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 40,
                                fontFamily: 'Waterfall'
                              )),
                        ],
                      ),
                )
                )
              ],
            ),
            SizedBox(height: 50,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius:
                              const BorderRadius.all(Radius.circular(100.0)),
                              child: AspectRatio(
                                  aspectRatio: 2,
                                  child: Image.asset('assets/logo_kbs.jpeg')),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text("Limitation",
                              style: TextStyle(
                                  color: Colors.grey.shade300,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 40,
                                fontFamily: 'Waterfall'
                              )),
                        ],
                      ),
                    )
                ),
               Expanded(child:
                Container(
                  child: Column(
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius:
                              const BorderRadius.all(Radius.circular(100.0)),
                              child: AspectRatio(
                                  aspectRatio: 2,
                                  child: Image.asset('assets/logo_kbs.jpeg')),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text("Locks",
                              style: TextStyle(
                                  color: Colors.grey.shade300,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 40,
                                fontFamily: 'Waterfall'
                              )),
                        ],
                      ),
                )
                )
              ],
            ),
            SizedBox(height: 50,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius:
                              const BorderRadius.all(Radius.circular(100.0)),
                              child: AspectRatio(
                                  aspectRatio: 2,
                                  child: Image.asset('assets/logo_kbs.jpeg')),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text("Coiffures Personnalisee",textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.grey.shade300,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 40,
                                fontFamily: 'Waterfall'
                              )),
                        ],
                      ),
                    )
                ),
               Expanded(child:
                Container(
                  child: Column(
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius:
                              const BorderRadius.all(Radius.circular(100.0)),
                              child: AspectRatio(
                                  aspectRatio: 2,
                                  child: Image.asset('assets/logo_kbs.jpeg')),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text("Dread",
                              style: TextStyle(
                                  color: Colors.grey.shade300,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 40,
                                fontFamily: 'Waterfall'
                              )),
                        ],
                      ),
                )
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  // services esthetiques
Widget getServices1() {
    return SingleChildScrollView(
      child: Container(
        color: Colors.black.withOpacity(0.8),
        child: Column(
          children: [
            SizedBox(height: 30,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius:
                              const BorderRadius.all(Radius.circular(100.0)),
                              child: AspectRatio(
                                  aspectRatio: 2,
                                  child: Image.asset('assets/logo_kbs.jpeg')),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text("Soins du corps",
                              style: TextStyle(
                                  color: Colors.grey.shade300,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 40,
                                fontFamily: 'Waterfall'
                              )),
                          SizedBox(height: 10,),
                          Text("Homme",style: TextStyle(color: Colors.grey.shade300)),
                          SizedBox(height: 5,),
                          Text("Dame",style: TextStyle(color: Colors.grey.shade300)),
                        ],
                      ),
                    )
                ),
                Expanded(child:
                Container(
                  child: Column(
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius:
                              const BorderRadius.all(Radius.circular(100.0)),
                              child: AspectRatio(
                                  aspectRatio: 2,
                                  child: Image.asset('assets/logo_kbs.jpeg')),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text("Massage",
                              style: TextStyle(
                                  color: Colors.grey.shade300,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 40,
                                fontFamily: 'Waterfall'
                              )),
                          SizedBox(height: 10,),
                          Text("Homme",style: TextStyle(color: Colors.grey.shade300)),
                          SizedBox(height: 5,),
                          Text("Dame",style: TextStyle(color: Colors.grey.shade300)),
                        ],
                      ),
                )
                )
              ],
            ),
            SizedBox(height: 50,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius:
                              const BorderRadius.all(Radius.circular(100.0)),
                              child: AspectRatio(
                                  aspectRatio: 2,
                                  child: Image.asset('assets/logo_kbs.jpeg')),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text("Manicure",
                              style: TextStyle(
                                  color: Colors.grey.shade300,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 40,
                                fontFamily: 'Waterfall'
                              )),
                          SizedBox(height: 10,),
                          Text("Homme",style: TextStyle(color: Colors.grey.shade300)),
                          SizedBox(height: 5,),
                          Text("Dame",style: TextStyle(color: Colors.grey.shade300)),

                        ],
                      ),
                    )
                ),
               Expanded(child:
                Container(
                  child: Column(
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius:
                              const BorderRadius.all(Radius.circular(100.0)),
                              child: AspectRatio(
                                  aspectRatio: 2,
                                  child: Image.asset('assets/logo_kbs.jpeg')),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text("Soins de visage",
                              style: TextStyle(
                                  color: Colors.grey.shade300,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 40,
                                fontFamily: 'Waterfall'
                              )),
                          SizedBox(height: 10,),
                          Text("Homme",style: TextStyle(color: Colors.grey.shade300)),
                          SizedBox(height: 5,),
                          Text("Dame",style: TextStyle(color: Colors.grey.shade300)),
                        ],
                      ),
                )
                )
              ],
            ),
            SizedBox(height: 50,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius:
                              const BorderRadius.all(Radius.circular(100.0)),
                              child: AspectRatio(
                                  aspectRatio: 2,
                                  child: Image.asset('assets/logo_kbs.jpeg')),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text("Pedicure",
                              style: TextStyle(
                                  color: Colors.grey.shade300,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 40,
                                fontFamily: 'Waterfall'
                              )),
                          SizedBox(height: 10,),
                          Text("Homme",style: TextStyle(color: Colors.grey.shade300)),
                          SizedBox(height: 5,),
                          Text("Dame",style: TextStyle(color: Colors.grey.shade300)),

                        ],
                      ),
                    )
                ),
               Expanded(child:
                Container(
                  child: Column(
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius:
                              const BorderRadius.all(Radius.circular(100.0)),
                              child: AspectRatio(
                                  aspectRatio: 2,
                                  child: Image.asset('assets/logo_kbs.jpeg')),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text("Soins des pieds",
                              style: TextStyle(
                                  color: Colors.grey.shade300,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 40,
                                fontFamily: 'Waterfall'
                              )),
                          SizedBox(height: 10,),
                          Text("Homme",style: TextStyle(color: Colors.grey.shade300)),
                          SizedBox(height: 5,),
                          Text("Dame",style: TextStyle(color: Colors.grey.shade300)),
                        ],
                      ),
                )
                )
              ],
            ),
            SizedBox(height: 50,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius:
                              const BorderRadius.all(Radius.circular(100.0)),
                              child: AspectRatio(
                                  aspectRatio: 2,
                                  child: Image.asset('assets/logo_kbs.jpeg')),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text("Soins des mains",
                              style: TextStyle(
                                  color: Colors.grey.shade300,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 40,
                                fontFamily: 'Waterfall'
                              )),
                          SizedBox(height: 10,),
                          Text("Homme",style: TextStyle(color: Colors.grey.shade300)),
                          SizedBox(height: 5,),
                          Text("Dame",style: TextStyle(color: Colors.grey.shade300)),

                        ],
                      ),
                    )
                ),
               Expanded(child:
                Container(
                  child: Column(
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius:
                              const BorderRadius.all(Radius.circular(100.0)),
                              child: AspectRatio(
                                  aspectRatio: 2,
                                  child: Image.asset('assets/logo_kbs.jpeg')),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text("Degraissage",
                              style: TextStyle(
                                  color: Colors.grey.shade300,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 40,
                                fontFamily: 'Waterfall'
                              )),
                          SizedBox(height: 10,),
                          Text("Homme",style: TextStyle(color: Colors.grey.shade300)),
                          SizedBox(height: 5,),
                          Text("Dame",style: TextStyle(color: Colors.grey.shade300)),
                        ],
                      ),
                )
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
