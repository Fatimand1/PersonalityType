import 'package:flutter/material.dart';

class StartScreen  extends StatelessWidget {
  final void Function() SwitchPage;
  const StartScreen(this.SwitchPage,{super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [

        SizedBox(
          height: 170,
        ),

        Text(
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ) ,
          'Discover Your '),

          Text(
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ) ,
          ' Personality Type!'),

        SizedBox(
          height: 30,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
               style: TextStyle(
            fontSize: 30,
          ) ,
              '💖'),

              SizedBox(
          width: 20,
        ),

            Text(
               style: TextStyle(
            fontSize: 30,
          ) ,
              '🗺️'),

          ]
        ),

        SizedBox(
          height: 20,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
               style: TextStyle(
            fontSize: 30,
          ) ,
              '📆'),

              SizedBox(
          width: 20,
        ),

            Text(
               style: TextStyle(
            fontSize: 30,
          ) ,
              '🧠'),

          ]
        ),

        SizedBox(
          height: 40,
        ),

        ElevatedButton(
          
          onPressed: SwitchPage, 
          child: Text('Start Text'))

      ],
    );
  }
}