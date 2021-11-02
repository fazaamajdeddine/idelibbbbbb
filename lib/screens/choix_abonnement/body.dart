import 'package:flutter/material.dart';
import 'package:idelib/components/bullet_point.dart';
import 'package:idelib/components/secondary_button.dart';

class BodyCaracteristique extends StatefulWidget {
  const BodyCaracteristique({ Key? key }) : super(key: key);

  @override
  State<BodyCaracteristique> createState() => _BodyCaracteristiqueState();
}

class _BodyCaracteristiqueState extends State<BodyCaracteristique> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            children: <Widget>[
              UnorderedList([
                "Gérez votre profile",
                "Postez vos annonces de remplacement",
                "Gérez tout vos soins en lien avec le Covid",
                "Gagnez du temps",
                "Paramétrez un planning commun",
                "Gérez un agenda partagé de vos tournées",
                "Stockez et sécurisez vos données",
                "Optimisez la gestion de votre patientéle",
                "Paramétrez toutes les informations pour la facturation",
                "Dévelopez votre patientéle",
                "Contactez les potentiels remplaçants par messagerie privée",
                "Faites vos reléves grâce au système de messagerie et la prise de notes vocales",
                "Evaluez vos remplaçants au terme de votre collaboration."
              ]),
              SecondaryButton(
                text: "Choisir",
                press: () {},
              ),
            ],
          ),
       ),
      ),
    );
  }
}