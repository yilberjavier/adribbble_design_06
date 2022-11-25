import 'package:adribbble_design_06/pages/exercise_title.dart';
import 'package:adribbble_design_06/util/emoticon_face.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  // greeting row ------------------------------------------------------///
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Hi Jared!
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, Jared!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '22 Jan, 2022',
                            style: TextStyle(
                              color: Colors.blue[200],
                            ),
                          ),
                        ],
                      ),

                      // Notification
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12)),
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 25),

                  // search bar ------------------------------------------------------///
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12)),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(Icons.search, color: Colors.white),
                      ),
                    ),
                  ),

                  SizedBox(height: 25),

                  // how do you feel? ------------------------------------------------------///
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'how do you feel?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),

                  SizedBox(height: 25),

                  // 4 different faces ------------------------------------------------------///
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // bad
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😔',
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Badly',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                      // fine
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😊',
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Fine',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                      // well
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😁',
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Well',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                      // excellent
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😀',
                          ),
                          SizedBox(height: 8),
                          Text(
                            'excellent',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            // Excercises ------------------------------------------------------///
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Column(
                        children: [
                          SizedBox(height: 15),
                          Container(
                            height: 7,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.blue[100],
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),

                          SizedBox(height: 30),

                          // excercises------------------//
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Excercises',
                                style: TextStyle(
                                  color: Colors.blue[900],
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(Icons.more_horiz),
                            ],
                          ),

                          SizedBox(height: 20),

                          // listview of excercises------------------//
                          Expanded(
                            child: ListView(
                              children: [
                                ExerciseTitle(
                                  color: Colors.orange,
                                  icon: Icons.favorite,
                                  exerciseName: 'Speaking Skills',
                                  numberOfExercises: 16,
                                ),
                                ExerciseTitle(
                                  color: Colors.green,
                                  icon: Icons.person,
                                  exerciseName: 'Reading Speed',
                                  numberOfExercises: 9,
                                ),
                                ExerciseTitle(
                                  color: Colors.pink,
                                  icon: Icons.star,
                                  exerciseName: 'Writing Skills',
                                  numberOfExercises: 20,
                                ),
                                // ExerciseTitle(),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
