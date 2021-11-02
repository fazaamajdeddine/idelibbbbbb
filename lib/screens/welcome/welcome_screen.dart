import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:idelib/components/primary_button.dart';
import 'package:idelib/constants.dart';
import 'package:idelib/screens/choix_abonnement/choix_abonnement.dart';

class  WelcomeScreen extends StatefulWidget {

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              Spacer(flex: 1),
              Image.asset(
                "assets/icons/Logoidelib.png",
                height: 200,
              ),
              Spacer(),
              Text(
                "Bienvenue",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: Colors.grey[600]
                ),
              ),
              Spacer(flex: 2),
              PrimaryButton(
                text: "Connexion",
                press: () {}
              ),
              SizedBox(height: kDefaultPadding * 0.8),
              PrimaryButton(
                text: "Inscription",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context){
                        return ChoixAbonnnemnt();
                      }
                    )
                  );
                },
              ),
              Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}