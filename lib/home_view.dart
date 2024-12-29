import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workout_app/mode.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<Category> catego = [
    Category(imgURL: "assets/images/abs.jpg", name: "Abs Exercises"),
    Category(imgURL: "assets/images/abs6.jpg", name: "Streching exercises"),
    Category(imgURL: "assets/images/abs3.jpg", name: "Other Exercises"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/abs5.jpg"),
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Padding(
            padding: const EdgeInsets.only(top: 60, left: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Hey ",
                            style: GoogleFonts.bebasNeue(
                              fontSize: 32, // Set your desired font size
                              color:
                                  Colors.white, // Set your desired text color
                              letterSpacing:
                                  1.8, // Set your desired letter spacing
                              // You can add more styling options here
                            ),
                          ),
                          Text(
                            "Zezo",
                            style: GoogleFonts.bebasNeue(
                              fontSize: 32, // Set your desired font size
                              color:
                                  Colors.green, // Set your desired text color
                              letterSpacing:
                                  1.8, // Set your desired letter spacing
                              // You can add more styling options here
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                            color: Colors.amberAccent,
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/workoutimg1.jpg",
                                ),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: Colors.green, width: 2)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(40)),
                        child: Center(
                            child: Icon(
                          Icons.play_arrow,
                          size: 40,
                          color: Colors.white,
                        )),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Find ",
                            style: GoogleFonts.bebasNeue(
                              fontSize: 32, // Set your desired font size
                              color: Colors.green,
                              // Set your desired text color
                              letterSpacing: 1.8,
                              // You can add more styling options here
                            ),
                          ),
                          Text(
                            "Your Workout",
                            style: GoogleFonts.bebasNeue(
                              fontSize: 32, // Set your desired font size
                              color:
                                  Colors.white, // Set your desired text color
                              letterSpacing:
                                  1.8, // Set your desired letter spacing
                              // You can add more styling options here
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.filter_alt_outlined,
                        size: 40,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 46,
                    width: 353,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(221, 43, 36, 61),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Search Workout",
                          hintStyle: TextStyle(color: Colors.white),
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.search,
                            size: 30,
                            color: Colors.white,
                          )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Popular",
                        style: GoogleFonts.lato(
                          fontSize: 16, // Set your desired font size
                          color: Colors.white, // Set your desired text color

                          // Set your desired letter spacing
                          // You can add more styling options here
                        ),
                      ),
                      Text(
                        "Hard workout",
                        style: GoogleFonts.lato(
                          fontSize: 16, // Set your desired font size
                          color: Colors.white, // Set your desired text color
                          // Set your desired letter spacing
                          // You can add more styling options here
                        ),
                      ),
                      Text(
                        "Full body",
                        style: GoogleFonts.lato(
                          fontSize: 16, // Set your desired font size
                          color: Colors.white, // Set your desired text color
                          // Set your desired letter spacing
                          // You can add more styling options here
                        ),
                      ),
                      Text(
                        "Crossfit",
                        style: GoogleFonts.lato(
                          fontSize: 16, // Set your desired font size
                          color: Colors.white, // Set your desired text color
                          // Set your desired letter spacing
                          // You can add more styling options here
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Text("Popular Workout",
                          style: GoogleFonts.lato(
                            fontSize: 32, // Set your desired font size
                            color: Colors.white, // Set your desired text color
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    child: ListView.builder(
                        itemCount: catego.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: ((context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                Container(
                                  height: 172,
                                  width: 142,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage(catego[index].imgURL),
                                          fit: BoxFit.cover)),
                                ),
                                Text(
                                  catego[index].name,
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                )
                              ],
                            ),
                          );
                        })),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
