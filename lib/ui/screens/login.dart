import 'package:flutter/material.dart';
import 'package:recipesflutter/ui/widgets/google_sign_in_button.dart';
import 'package:recipesflutter/state_widget.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BoxDecoration _buildBackground(){
      return BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/bg.jpg"),
          fit: BoxFit.cover
        ),
      );
    }
    Text _buildText() {
      return Text(
        'Recipes',
        style: Theme.of(context).textTheme.headline,
        textAlign: TextAlign.center,
      );
    }

    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Container(
        decoration: _buildBackground(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildText(),
              SizedBox(height: 60.0),
              GoogleSignInButton(
                onPressed: () => StateWidget.of(context).signInWithGoogle(),
               // Navigator.of(context).pushReplacementNamed('/'),
              )
            ]
          )
        ),
      )

    );
  }
}