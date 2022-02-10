import 'package:flutter/material.dart';

class SalonHome extends StatefulWidget {
  const SalonHome({Key? key}) : super(key: key);

  @override
  _SalonHomeState createState() => _SalonHomeState();
}

class _SalonHomeState extends State<SalonHome> {
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
                      child: getSalons(),
                    ),
                  ],
                ),
              ),

          ),
        ],
      ),
    );
  }
    Widget getSalons() {
    return Container(
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
                        SizedBox(height: 20,),
                        Text("Yopougon Maroc",style: TextStyle(color: Colors.grey.shade300)),
                        SizedBox(height: 5,),
                        Text("Telephone:",style: TextStyle(color: Colors.grey.shade300)),
                        SizedBox(height: 5,),
                        Text("0777487828",style: TextStyle(color: Colors.grey.shade300)),
                        SizedBox(height: 5,),
                        Text("Horaires:",style: TextStyle(color: Colors.grey.shade300)),
                        SizedBox(height: 5,),
                        Text("Lundi-Dimanche",style: TextStyle(color: Colors.grey.shade300)),
                          SizedBox(height: 5,),
                        Text("8H30 - 21H00",style: TextStyle(color: Colors.grey.shade300)),
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
                        SizedBox(height: 20,),
                        Text("Yopougon ancien Bel Air",textAlign: TextAlign.center,style: TextStyle(color: Colors.grey.shade300)),
                        SizedBox(height: 5,),
                        Text("Telephone:",style: TextStyle(color: Colors.grey.shade300)),
                        SizedBox(height: 5,),
                        Text("0749503944",style: TextStyle(color: Colors.grey.shade300)),
                        SizedBox(height: 5,),
                        Text("Horaires:",style: TextStyle(color: Colors.grey.shade300)),
                        SizedBox(height: 5,),
                        Text("Lundi-Dimanche",style: TextStyle(color: Colors.grey.shade300)),
                        SizedBox(height: 5,),
                        Text("8H30 - 21H00",style: TextStyle(color: Colors.grey.shade300)),
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
                                aspectRatio: 4,
                                child: Image.asset('assets/logo_kbs.jpeg')),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text("Cocody 2 plateaux Vallons",style: TextStyle(color: Colors.grey.shade300)),
                        SizedBox(height: 5,),
                        Text("Telephone:",style: TextStyle(color: Colors.grey.shade300)),
                        SizedBox(height: 5,),
                        Text("0556467626",style: TextStyle(color: Colors.grey.shade300)),
                        SizedBox(height: 5,),
                        Text("Horaires:",style: TextStyle(color: Colors.grey.shade300)),
                        SizedBox(height: 5,),
                        Text("Lundi-Dimanche",style: TextStyle(color: Colors.grey.shade300)),
                        SizedBox(height: 5,),
                        Text("8H30 - 21H00",style: TextStyle(color: Colors.grey.shade300)),

                      ],
                    ),
                  )
              ),
           /*   Expanded(child:
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
                        SizedBox(height: 20,),
                        Text("Yopougon Niangon",style: TextStyle(color: Colors.grey.shade300)),
                        SizedBox(height: 5,),
                        Text("Telephone:",style: TextStyle(color: Colors.grey.shade300)),
                        SizedBox(height: 5,),
                        Text("xxxxxxxxx:",style: TextStyle(color: Colors.grey.shade300)),
                        SizedBox(height: 5,),
                        Text("Horaires:",style: TextStyle(color: Colors.grey.shade300)),
                        SizedBox(height: 5,),
                        Text("xxxxxxxxxx:",style: TextStyle(color: Colors.grey.shade300)),

                      ],
                    ),
              )
              )*/
            ],
          ),
        ],
      ),
    );
  }
}
