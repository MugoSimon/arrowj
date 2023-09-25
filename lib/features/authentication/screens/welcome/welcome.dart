import 'package:arrowj/constants/image_strings.dart';
import 'package:arrowj/constants/text_strings.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image(image: AssetImage(tWelcomeScreenImage)),
            Text(tWelcomeTitle),
            Text(tWelcomeSubTitle),
            Row(
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Text(tLogin,
                      style: Theme.of(context).textTheme.bodyLarge),
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(tSignUp,
                        style: Theme.of(context).textTheme.bodyLarge))
              ],
            )
          ],
        ),
      ),
    );
  }
}
