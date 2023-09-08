import 'package:flutter/material.dart';
import 'package:info_lugar/info_lugar.dart';
import 'package:info_lugar/item_actividad.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  final List<String> nombres_lugares = [
    'Chichen itza',
    'El coliseo romano',
    'El cristo redentor',
    'La gran muralla china',
    'Machu Picchu',
    'Petra',
    'Taj mahal',
  ];

  final List<String> imagenes_lugares = [
    'assets/chichen_itza.jpg',
    'assets/coliseo_romano.jpg',
    'assets/cristo_redentor.jpg',
    'assets/gran_muralla_china.jpg',
    'assets/machu_picchu.jpg',
    'assets/petra.jpg',
    'assets/taj_mahal.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reserva tu hotel'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            fit: StackFit.expand,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    ),
                  ),

                  child: Image.asset("assets/viaje_background.jpg", fit: BoxFit.cover,),

                ),
              ),
              // para poder poner column o listview en stack hay que encerrarlas en positioned y anclarla a todos lados
              Positioned(
                top: 64,
                bottom: 0,
                left: 0,
                right: 0,
                child: ListView(
                  children: [
                    InfoLugar(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Details"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.grey[200],
                          ),
                        ),
                        Text("Walkthrough Flight Detail"),
                      ],
                    ),
                    Container(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 7,
                        itemBuilder: (BuildContext context, int index) {
                          final nombre_lugar = nombres_lugares[index % nombres_lugares.length];
                          final imagen_lugar = imagenes_lugares[index % imagenes_lugares.length];
                          final dia_cont = index + 1;
                          return ItemActividad(nombre_lugar: nombre_lugar, imagen_lugar: imagen_lugar, dia_cont: dia_cont.toString());
                        },
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                            SnackBar(
                              content: Text("Reservación en progreso"),
                            ),
                          );
                      },
                      child: Text("Start booking", style: TextStyle(color: Colors.white),),
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
