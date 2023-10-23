import 'package:adminpanel/constants.dart';
import 'package:adminpanel/models/MyFiles.dart';
import 'package:adminpanel/screens/dashbord/components/card_info_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My Files",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            ElevatedButton.icon(
                style: TextButton.styleFrom(
                    padding: const EdgeInsetsDirectional.symmetric(
                        horizontal: defaultPadding * 1.5,
                        vertical: defaultPadding)),
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text("Add New")),
          ],
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        GridView.builder(
            itemCount: demoMyFiles.length,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: defaultPadding,
                childAspectRatio: 1.4),
            itemBuilder: (context, index) => FileInfoCard(
                  info: demoMyFiles[index],
                ))
      ],
    );
  }
}
