import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isIconIndigo1 = false;
  bool isIconIndigo2 = false;
  bool isIconIndigo3 = false;
  bool isIconIndigo4 = false;

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

  void toggleIconColor4() {
    setState(() {
      isIconIndigo4 = !isIconIndigo4;
    });
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

  Color getIconColorButton4() {
    return isIconIndigo4 ? Colors.indigo : Colors.black;
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mc Flutter'),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, border: Border.all(color: Colors.black, width: 2)),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.account_circle, size: 48),
                    Column(
                      children: [
                        Text(
                          "Flutter McFlutter",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 23),
                        ),
                        Text("Experienced App Developer")
                      ],
                    )
                  ],
                ),
                SizedBox(height: 7),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("123 Main Street"),
                    Text("(415) 555 0198"),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MaterialButton(
                      child: Icon(
                        Icons.accessibility_new_sharp,
                        color: getIconColorButton1(),
                      ),
                      minWidth: 20,
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                            SnackBar(
                              content: Text("Presionaste al humano..."),
                            ),
                          );
                        toggleIconColor1();
                      },
                    ),
                    MaterialButton(
                      child: Icon(
                        Icons.timer,
                        color: getIconColorButton2(),
                      ),
                      minWidth: 20,
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                            SnackBar(
                              content: Text("Presionaste al reloj..."),
                            ),
                          );
                        toggleIconColor2();
                      },
                    ),
                    MaterialButton(
                      child: Icon(
                        Icons.phone_android,
                        color: getIconColorButton3(),
                      ),
                      minWidth: 20,
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                            SnackBar(
                              content: Text("Presionaste al android..."),
                            ),
                          );
                        toggleIconColor3();
                      },
                    ),
                    MaterialButton(
                      child: Icon(
                        Icons.phone_iphone,
                        color: getIconColorButton4(),
                      ),
                      minWidth: 20,
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                            SnackBar(
                              content: Text("Presionaste al iphone..."),
                            ),
                          );
                        toggleIconColor4();
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
