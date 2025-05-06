import 'package:flutter/material.dart';

class info22 extends StatelessWidget {
  const info22({super.key});

  @override
  Widget build(BuildContext context) {
    var fontColor = Colors.white;

    return Scaffold(
        appBar: AppBar(
          title: Text("INFO22 é o melhor",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: Center(
          child: Container(
            height: 180,
            width: 330,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.black,
                    Colors.pink[300]!,
                    Colors.black,
                    Colors.pink[300]!,
                    Colors.black,
                    Colors.pink[300]!,
                    Colors.black,
                  ],
                  stops: [
                    0.06,
                    0.38,
                    0.78,
                    0.38,
                    0.78,
                    0.38,
                    0.06,
                  ]),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: <Widget>[
                Positioned(
                  right: 5,
                  top: 10,
                  child: ClipOval(
                    child: SizedBox(
                      width: 90,
                      height: 130,
                      child: Image.asset(' 0assets/images/corinthians.png'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Lucas Dias",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: fontColor),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Capitão",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: fontColor),
                      ),
                      Text("Ala-Direito",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: fontColor,
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.phone_callback,
                            color: fontColor,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            "+55 41 98491-7522",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: fontColor),
                          ),
                          const SizedBox(width: 5),
                          Icon(Icons.email, color: fontColor),
                          Text(
                            "fulanofulano@gmail.com",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: fontColor),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
