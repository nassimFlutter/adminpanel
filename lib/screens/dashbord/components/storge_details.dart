import 'package:adminpanel/constants.dart';
import 'package:adminpanel/screens/dashbord/components/chart.dart';
import 'package:adminpanel/screens/dashbord/components/storge_info_card.dart';
import 'package:flutter/material.dart';

class StarageDetails extends StatelessWidget {
  const StarageDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Container(
          padding: const EdgeInsets.all(defaultPadding),
          decoration: const BoxDecoration(
              color: secondaryColor,
              borderRadius:
                  BorderRadius.all(Radius.circular(10))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Storge Details',
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: defaultPadding),
              Chart(),
              StorageInfoCard(
                title: "Documents Files",
                svgSrc: "assets/images/Documents.svg",
                amountOfFiles: "1.23GB",
                numOfFiles: 1328,
              ),
              StorageInfoCard(
                svgSrc: "assets/images/media.svg",
                title: "Media Files",
                amountOfFiles: "15.3GB",
                numOfFiles: 1328,
              ),
              StorageInfoCard(
                svgSrc: "assets/images/folder.svg",
                title: "Other Files",
                amountOfFiles: "1.3GB",
                numOfFiles: 1328,
              ),
              StorageInfoCard(
                svgSrc: "assets/images/unknown.svg",
                title: "Unknown",
                amountOfFiles: "1.3GB",
                numOfFiles: 140,
              ),
            ],
          ),
        ));
  }
}
