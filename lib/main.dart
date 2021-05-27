import 'package:flutter/material.dart';

void main() => runApp(VillegasApp());

class VillegasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Interactiva',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: Scaffold(
        appBar: AppBar(
          title: Text('PIZZERIA LOS VILLEGAS'),
          backgroundColor: Colors.red,
        ), //fin de App Bar

        body: Padding(
          padding: const EdgeInsets.all(2), //pading del body espacio blanco

          child: Container(
            //contenedor gris
            color: Colors.pink.shade50,
            width: 360,

            padding: const EdgeInsets.all(10), //pading del body espacio blanco

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 170,
                  width: 572,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),

                    image: DecorationImage(image: NetworkImage('https://raw.githubusercontent.com/CamilaVS/Mis_imagenes/main/pizza.png'), alignment: Alignment.topCenter),
                    border: Border.all(
                      color: Colors.orange,
                      width: 2.0,
                    ), //fin de border
                  ), //fin de el decoration box
                ), //fin de el container foto

                SizedBox(height: 5),
                Container(
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  width: 572,

                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Ingredientes',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.orange,
                          width: 2.0,
                        ), //fin de border side
                      ), //fin de enable border
                      //! Change the Focused Border
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,
                          width: 3.0,
                        ), //fin de bordersize
                      ), //fin de outlineInput border
                    ), //fin de inoutdecoration
                  ), //fin de TextField
                ), //fin de container grupo especialidad

                Container(
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  width: 572,

                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Direccion',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.orange,
                          width: 2.0,
                        ), //fin de border side
                      ), //fin de enable border
                      //! Change the Focused Border
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,
                          width: 3.0,
                        ), //fin de bordersize
                      ), //fin de outlineInput border
                    ), //fin de inoutdecoration
                  ), //fin de TextField
                ), //fin de container grupo especialidad

                SizedBox(height: 10),

                Container(
                  padding: EdgeInsets.only(top: 5, bottom: 5),

                  width: 1000,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Ingredientes Extras',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.orange,
                                width: 2.0,
                              ), //fin de border side
                            ), //fin de enable border
                            //! Change the Focused Border
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red,
                                width: 3.0,
                              ), //fin de bordersize
                            ), //fin de outlineInput border
                          ), //fin de inoutdecoration
                        ), //fin de TextField
                      ),
                      SizedBox(width: 16),
                      new DropdownButton<String>(
                        items: <String>[
                          '     Aderezos     ',
                          '     Salsas     '
                        ].map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        onChanged: (_) {},
                      ), //fin de dropdown
                    ], //fin de widget
                  ), //fin de row
                ), //fin de container colores

                SizedBox(height: 5),

                Container(
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  width: 1000,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Flexible(
                        child: RaisedButton(
                          color: Colors.green,
                          shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                          onPressed: () {
                            ;
                          },
                          child: SizedBox(
                            child: Center(
                              child: Text(
                                "Pedir Orden",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 25, color: Colors.orange),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      new Flexible(
                        child: RaisedButton(
                          color: Colors.green,
                          shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                          onPressed: () {
                            ;
                          },
                          child: SizedBox(
                            child: Center(
                              child: Text(
                                "Cancelar Pedido",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 25, color: Colors.orange),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ], //fin de widget
                  ), //fin de row
                ), //fin de container colores
              ], //fin de widget2[]
            ), //fin de column
          ), //child container
        ), //fin de body padding
      ), //fin de Scaffold
    ); //fin de MaterialApp
  } //fin de widget
} //fin de VillegasApp
