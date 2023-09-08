import 'package:flutter/material.dart';

class ItemActividad extends StatelessWidget {

  final String nombre_lugar;
  final String imagen_lugar;
  final String dia_cont;

  ItemActividad({
    required this.nombre_lugar,
    required this.imagen_lugar,
    required this.dia_cont,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 120,
            width: 120,
            child: Image.asset(imagen_lugar),
          ),
          Text("Dia ${dia_cont}"),
          Container(
            width: 120,
            child: Wrap(
              alignment: WrapAlignment.center,
              children: [
                Text(nombre_lugar, style: TextStyle(fontSize: 13), textAlign: TextAlign.center),
              ],
            ),
          )
        ],
      ),
    );
  }
}
