import 'package:flutter/material.dart';
import 'package:idelib/components/primary_button.dart';
import 'package:idelib/constants.dart';
import 'package:idelib/screens/choix_abonnement/body.dart';

class ChoixAbonnnemnt extends StatefulWidget {
  const ChoixAbonnnemnt({ Key? key }) : super(key: key);

  @override
  State<ChoixAbonnnemnt> createState() => _ChoixAbonnnemntState();
}

class _ChoixAbonnnemntState extends State<ChoixAbonnnemnt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: <Widget>[
              Spacer(flex: 1),
              Image.asset(
                "assets/icons/Logoidelib.png",
                height: 200,
              ),
              Spacer(),
              Text(
                "Vous êtes",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.grey[400]
                ),
              ),
              PrimaryButton(
                text: "Infirmier Libéral",
                press: () {}
              ),
              SizedBox(height: kDefaultPadding * 0.8),
              PrimaryButton(
                text: "Infirmier remplaçant",
                press: () {}
              ),
              SizedBox(height: kDefaultPadding * 0.8),
              PrimaryButton(
                text: "Patient",
                press: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context){
                        return BodyCaracteristique(); 
                      },
                    ),
                  );
                }
              ), 
              Spacer(flex: 2),                          
            ],
          ),
        ),
      ),
    );
  }
}