import 'package:flutter/material.dart';

void main(){
  runApp(TextStyling());
}

class TextStyling extends StatelessWidget {
  const TextStyling({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  MySnakeBar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Text Styling App'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Flutter Text Styling',style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 16,),
            Text('Experiment With text styles'),
            SizedBox(height: 3,),
            TextButton(onPressed: (){
              MySnakeBar('You clicked the button!', context);
            }, child: Text('Click Me',style: TextStyle(fontSize: 12),)),
            RichText(text: TextSpan(
              children: [
                TextSpan(
                  text: 'Welcome to ',
                  style: TextStyle(
                    color: Colors.black,
                  )
                ),
                TextSpan(
                  text: 'Flutter!',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                  )
                )
              ]
            ))
          ],
        ),
      ),
    );
  }
}

