import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActiviteClient extends StatefulWidget {
  const ActiviteClient({Key? key}) : super(key: key);

  @override
  _ActiviteClientState createState() => _ActiviteClientState();
}

class _ActiviteClientState extends State<ActiviteClient> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
child: Column(
  children: [
        Padding(
                    padding: EdgeInsets.only(
                     top:50,

),
                    child: InkWell(
                      onTap: () {
                       _showDialog();
                      },
                      child: Container(
                        height: 80,
                        padding: EdgeInsets.only(
                          left: 50.0,
                          right: 50.0,
                          top: 30,
                          bottom: 10,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(38.0),
                          color: Color(0xff132137),
                        ),
                        child: Text(
                          "Consultation des points",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey.shade300,
                          ),
                        ),
                      ),
                    ),
                  ),
              SizedBox(height: 30,),
              Divider(height: 10,),
              SizedBox(height: 20,),
              Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      right: 20,
                      left: 20
                    ),
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Wrap(
                        children: [
                          ListTile(
                            title: Text('15000 fcfa',
                              textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 46,fontWeight: FontWeight.bold),),
                          ),
                          ListTile(
                            title: Column(
                              children: [
                                Text('Carte active',textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.green)
                                ),
                                Icon(FontAwesomeIcons.checkCircle,color: Colors.green,),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  );
                      },
                      child: Container(
                      height: 80,
                        padding: EdgeInsets.only(
                          left: 40.0,
                          right: 40.0,
                          top: 30,
                          bottom: 10,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(38.0),
                          color: Color(0xff132137),
                        ),
                        child: Text(
                          "Solde de ma carte privillege",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey.shade300,
                          ),
                        ),
                      ),
                    ),
                  ),
  ],
),
    );
  }

  Future<void> _showDialog() async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Kignon Barber Shop',textAlign:TextAlign.center,
          style: TextStyle(fontFamily: "Waterfall",fontSize: 28),),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Yopougon Niangon',textAlign: TextAlign.center,),
              Divider(height: 10,),
              Text('Yopougon Bel-Air',textAlign: TextAlign.center,),
              Divider(height: 10,),
              Text('Cocody 2 Plateaux Vallons',textAlign: TextAlign.center,),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text('Fermer'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

}
