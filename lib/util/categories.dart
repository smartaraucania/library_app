import 'package:flutter/material.dart';

List categories = [
  {
    "name": "Arquitectura, Entorno y Paisaje",
    "color1": Color.fromARGB(100, 0, 0, 0),
    "color2": Color.fromARGB(100, 0, 0, 0),
    "img": "assets/c1.jpeg"
  },
  {
    "name": "Bellas Artes",
    "color1": Color.fromARGB(100, 0, 0, 0),
    "color2": Color.fromARGB(100, 0, 0, 0),
    "img": "assets/c2.jpeg"
  },
  {
    "name": "Autoayuda",
    "color1": Color.fromARGB(100, 0, 0, 0),
    "color2": Color.fromARGB(100, 0, 0, 0),
    "img": "assets/c3.jpeg"
  },
  {
    "name": "Bebidas",
    "color1": Color.fromARGB(100, 0, 0, 0),
    "color2": Color.fromARGB(100, 0, 0, 0),
    "img": "assets/c4.jpeg"
  },
  {
    "name": "Biografias",
    "color1": Color.fromARGB(100, 0, 0, 0),
    "color2": Color.fromARGB(100, 0, 0, 0),
    "img": "assets/c5.jpeg"
  },
  {
    "name": "Ciencias de la Naturaleza",
    "color1": Color.fromARGB(100, 0, 0, 0),
    "color2": Color.fromARGB(100, 0, 0, 0),
    "img": "assets/c6.jpeg"
  },
  {
    "name": "Ciencias Alternativas",
    "color1": Color.fromARGB(100, 0, 0, 0),
    "color2": Color.fromARGB(100, 0, 0, 0),
    "img": "assets/c7.jpeg"
  },
  {
    "name": "Comunicación",
    "color1": Color.fromARGB(100, 0, 0, 0),
    "color2": Color.fromARGB(100, 0, 0, 0),
    "img": "assets/c8.jpeg"
  },
  {
    "name": "Educación",
    "color1": Color.fromARGB(100, 0, 0, 0),
    "color2": Color.fromARGB(100, 0, 0, 0),
    "img": "assets/c9.jpeg"
  },
  {
    "name": "Ciencias Físicas",
    "color1": Color.fromARGB(100, 0, 0, 0),
    "color2": Color.fromARGB(100, 0, 0, 0),
    "img": "assets/c10.jpeg"
  },
  {
    "name": "Ciencias Médicas",
    "color1": Color.fromARGB(100, 0, 0, 0),
    "color2": Color.fromARGB(100, 0, 0, 0),
    "img": "assets/c11.jpeg"
  },
  {
    "name": "Ciencias Sociales",
    "color1": Color.fromARGB(100, 0, 0, 0),
    "color2": Color.fromARGB(100, 0, 0, 0),
    "img": "assets/c12.jpeg"
  },
  {
    "name": "Clásicos y Cuentos",
    "color1": Color.fromARGB(100, 0, 0, 0),
    "color2": Color.fromARGB(100, 0, 0, 0),
    "img": "assets/c13.jpeg"
  },
  {
    "name": "Comida",
    "color1": Color.fromARGB(100, 0, 0, 0),
    "color2": Color.fromARGB(100, 0, 0, 0),
    "img": "assets/food.jpg"
  },
  {
    "name": "Deporte",
    "color1": Color.fromARGB(100, 0, 0, 0),
    "color2": Color.fromARGB(100, 0, 0, 0),
    "img": "assets/c14.jpeg"
  },
  {
    "name": "Derecho",
    "color1": Color.fromARGB(100, 0, 0, 0),
    "color2": Color.fromARGB(100, 0, 0, 0),
    "img": "assets/c15.jpeg"
  },
  {
    "name": "Diccionarios",
    "color1": Color.fromARGB(100, 0, 0, 0),
    "color2": Color.fromARGB(100, 0, 0, 0),
    "img": "assets/c16.jpeg"
  },
  {
    "name": "Diseño",
    "color1": Color.fromARGB(100, 0, 0, 0),
    "color2": Color.fromARGB(100, 0, 0, 0),
    "img": "assets/c17.jpeg"
  },
  {
    "name": "Economía",
    "color1": Color.fromARGB(100, 0, 0, 0),
    "color2": Color.fromARGB(100, 0, 0, 0),
    "img": "assets/c18.jpeg"
  },
  {
    "name": "Empresa",
    "color1": Color.fromARGB(100, 0, 0, 0),
    "color2": Color.fromARGB(100, 0, 0, 0),
    "img": "assets/c19.jpeg"
  },
  {
    "name": "Fotografía",
    "color1": Color.fromARGB(100, 0, 0, 0),
    "color2": Color.fromARGB(100, 0, 0, 0),
    "img": "assets/c20.jpeg"
  },
  {
    "name": "Historía y Geogrfía",
    "color1": Color.fromARGB(100, 0, 0, 0),
    "color2": Color.fromARGB(100, 0, 0, 0),
    "img": "assets/c21.jpeg"
  },
  {
    "name": "Hogar, Jardín y Manualidades",
    "color1": Color.fromARGB(100, 0, 0, 0),
    "color2": Color.fromARGB(100, 0, 0, 0),
    "img": "assets/c22.jpeg"
  },
  {
    "name": "Informática",
    "color1": Color.fromARGB(100, 0, 0, 0),
    "color2": Color.fromARGB(100, 0, 0, 0),
    "img": "assets/c23.jpeg"
  },
  {
    "name": "Ingeniería y Tecnología",
    "color1": Color.fromARGB(100, 0, 0, 0),
    "color2": Color.fromARGB(100, 0, 0, 0),
    "img": "assets/c24.jpeg"
  },
  {
    "name": "Libros Infantiles",
    "color1": Color.fromARGB(100, 0, 0, 0),
    "color2": Color.fromARGB(100, 0, 0, 0),
    "img": "assets/c25.jpeg"
  },
  {
    "name": "Literatura Contemporanea",
    "color1": Color.fromARGB(100, 0, 0, 0),
    "color2": Color.fromARGB(100, 0, 0, 0),
    "img": "assets/c26.jpeg"
  },
  {
    "name": "Literatura Juvenil",
    "color1": Color.fromARGB(100, 0, 0, 0),
    "color2": Color.fromARGB(100, 0, 0, 0),
    "img": "assets/c26.jpeg"
  },
  {
    "name": "Música",
    "color1": Color.fromARGB(100, 0, 0, 0),
    "color2": Color.fromARGB(100, 0, 0, 0),
    "img": "assets/c27.jpeg"
  },
  {
    "name": "Poesía",
    "color1": Color.fromARGB(100, 0, 0, 0),
    "color2": Color.fromARGB(100, 0, 0, 0),
    "img": "assets/c28.jpeg"
  },
  {
    "name": "Psicología",
    "color1": Color.fromARGB(100, 0, 0, 0),
    "color2": Color.fromARGB(100, 0, 0, 0),
    "img": "assets/c29.jpeg"
  },
  {
    "name": "Religión",
    "color1": Color.fromARGB(100, 0, 0, 0),
    "color2": Color.fromARGB(100, 0, 0, 0),
    "img": "assets/c30.jpeg"
  },
];
