import 'package:flutter/material.dart';
import 'package:library_app/widgets/home/trending_library.dart';
import 'package:library_app/util/home/libraries.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with AutomaticKeepAliveClientMixin<Home> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 20.0),
            //sección inicial
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Bibliotecas Online",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Acercando la lectura a los ciudadanos",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2.8,
              width: MediaQuery.of(context).size.width,
              child: Image.asset("assets/home1.jpg"),
            ),
            Container(
              color: Colors.black12,
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              width: MediaQuery.of(context).size.width / 1.1,
              height: 1.0,
            ),
            //sección catálogo
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Catálogo",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width / 2.0,
                  height: MediaQuery.of(context).size.height / 6.0,
                  margin:
                      const EdgeInsets.only(top: 16.0, right: 10.0, left: 16.0),
                  child: Text(
                    "Revisar los catálogos de cada biblioteca participantes, observando las bibliotecas más cercanas a través de un mapa interactivo",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 3.0,
                  height: MediaQuery.of(context).size.width / 3.0,
                  margin: const EdgeInsets.only(right: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage("assets/home2.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.black12,
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              width: MediaQuery.of(context).size.width / 1.1,
              height: 1.0,
            ),
            //sección disponibilidad
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Disponiblidad de Libros",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width / 3.0,
                  height: MediaQuery.of(context).size.width / 3.0,
                  margin: const EdgeInsets.only(right: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage("assets/home3.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2.0,
                  height: MediaQuery.of(context).size.height / 6.0,
                  margin:
                      const EdgeInsets.only(top: 16.0, right: 10.0, left: 16.0),
                  child: Text(
                    "Actualización en tiempo real de la cantidad de unidades disponibles",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.black12,
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              width: MediaQuery.of(context).size.width / 1.1,
              height: 1.0,
            ),
            //sección reserva y pedido
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Reserva y Pedido",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Próximamente...",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width / 2.0,
                  height: MediaQuery.of(context).size.height / 6.0,
                  margin:
                      const EdgeInsets.only(top: 16.0, right: 10.0, left: 16.0),
                  child: Text(
                    "Podrás reservar en linea para luego retirar presencialmente en la biblioteca solicitada",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 3.0,
                  height: MediaQuery.of(context).size.width / 3.0,
                  margin: const EdgeInsets.only(right: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage("assets/home4.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.black12,
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              width: MediaQuery.of(context).size.width / 1.1,
              height: 1.0,
            ),
            //sección información bibliotecas
            Container(
              height: MediaQuery.of(context).size.height / 1.9,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                primary: false,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: libraries == null ? 0 : 3,
                itemBuilder: (BuildContext context, int index) {
                  Map library = libraries[index];

                  return Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: SlideLibraryTrend(
                      img: library["img"],
                      name: library["name"],
                      description: library["description"],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
