import 'package:flutter/material.dart';

class ExerciseTitle extends StatelessWidget {
  final icon;
  final String exerciseName;
  final int numberOfExercises;
  final color;

  const ExerciseTitle({
    super.key,
    required this.icon,
    required this.exerciseName,
    required this.numberOfExercises,
    required this.color,

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(20)),
                  child: Icon(
                    icon,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // title
                    Text(
                      exerciseName,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 5),

                    //subtitle
                    Text(
                      numberOfExercises.toString() + ' Exercises',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Icon(Icons.more_horiz)
          ],
        ),
      ),
    );
  }
}
