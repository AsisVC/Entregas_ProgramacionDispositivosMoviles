import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 9998;

  bool clicLike = false;
  bool isIconIndigo1 = false;
  bool isIconIndigo2 = false;
  bool isIconIndigo3 = false;

  void toggleIconColorLike(){
    setState(() {
      clicLike = !clicLike;
    });
  }

  void toggleIconColor1() {
    setState(() {
      isIconIndigo1 = !isIconIndigo1;
    });
  }

  void toggleIconColor2() {
    setState(() {
      isIconIndigo2 = !isIconIndigo2;
    });
  }

  void toggleIconColor3() {
    setState(() {
      isIconIndigo3 = !isIconIndigo3;
    });
  }

  Color getIconColorLike() {
    return clicLike ? Colors.blue : Colors.black;
  }

  Color getIconColorButton1() {
    return isIconIndigo1 ? Colors.indigo : Colors.black;
  }

  Color getIconColorButton2() {
    return isIconIndigo2 ? Colors.indigo : Colors.black;
  }

  Color getIconColorButton3() {
    return isIconIndigo3 ? Colors.indigo : Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App ITESO"),
        ),

        body: Padding(
          padding: EdgeInsets.all(1.0),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.network("https://cruce.iteso.mx/wp-content/uploads/sites/123/2018/04/Portada-2-e1525031912445.jpg"),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "El ITESO, Universidad Jesuita de Guadalajara", 
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)
                        ),
                        Text("San Pedro Tlaquepaque, Jal"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MaterialButton(
                        child: Icon(
                          Icons.thumb_up,
                          color: getIconColorLike(),
                          size: 25,
                        ),
                        minWidth: 15,
                        onPressed: () {
                          toggleIconColorLike();
                          _counter++;
                          setState(() {});
                          print("Like_counter: $_counter");
                        }
                    ),
                    // Aqui va el numero de likes
                    Text(
                      '$_counter',
                      style: TextStyle(fontSize: 12),
                    )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 45),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      child: Icon(
                        Icons.mail,
                        size: 50,
                        color: getIconColorButton1(),
                      ),
                      minWidth: 50,
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                            SnackBar(
                              content: Text("Puedes encontrar comida en sus cafeterías"),
                            ),
                          );
                        toggleIconColor1();
                      },
                    ),

                    MaterialButton(
                      child: Icon(
                        Icons.call,
                        size: 50,
                        color: getIconColorButton2(),
                      ),
                      minWidth: 50,
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                            SnackBar(
                              content: Text("Puedes pedir información en rectoría"),
                            ),
                          );
                        toggleIconColor2();
                      },
                    ),

                    MaterialButton(
                      child: Icon(
                        Icons.directions,
                        size: 50,
                        color: getIconColorButton3(),
                      ),
                      minWidth: 50,
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                            SnackBar(
                              content: Text("Se encuentra ubicado en Periférico Sur 8585"),
                            ),
                          );
                        toggleIconColor3();
                      },
                    ),
                  ],
                ),
                SizedBox(height: 45),
                Text(
                      '''El ITESO, Universidad Jesuita de Guadalajara (Instituto Tecnológico y de Estudios Superiores de Occidente) es una universidad privada ubicada en la Zona Metropolitana de Guadalajara, Jalisco, México, fundada en el año 1957. La institución forma parte del Sistema Universitario Jesuita (SUJ) que integra a ocho universidades en México. La universidad es nombrada como la Universidad Jesuita de Guadalajara.'''
                    )
              ],
            ),
          ),
          ),
      ),
    );
  }
}