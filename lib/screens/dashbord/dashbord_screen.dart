import "package:adminpanel/constants.dart";
import "package:adminpanel/screens/dashbord/components/header.dart";
import "package:adminpanel/screens/dashbord/components/my_files.dart";
import "package:adminpanel/screens/dashbord/components/storge_details.dart";
import "package:flutter/material.dart";

class DaxhboradScreen extends StatelessWidget {
  const DaxhboradScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              const Header(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 5,
                      child: MyFiles()),
                   SizedBox(
                    width: defaultPadding,
                  ),
                   Expanded(  
                   flex: 2,
                   child: StarageDetails())
                ],
              ),
            ],
          )),
    );
  }
}

