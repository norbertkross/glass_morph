import 'package:flutter/material.dart';
import 'package:glass_morph/views/selected_projects/project_item.dart';

class SelectedProjects extends StatefulWidget {
  const SelectedProjects({Key? key}) : super(key: key);

  @override
  State<SelectedProjects> createState() => _SelectedProjectsState();
}

class _SelectedProjectsState extends State<SelectedProjects> {
  // String p2 = "assets/ptrn1.png";
  // String p2 = "assets/ptrn2.png";

  String students = "assets/students.png";
  String chips = "assets/chips.png";
  String cpu = "assets/cpu.png";
  String sales = "assets/sales.png";

  @override
  Widget build(BuildContext context) {
    List<Color> projectColors = [
      const Color(0xff38FFC9),
      const Color(0xffED38FF),
      Theme.of(context).primaryColor,
      Colors.deepOrange,
    ];

    List<String> images = [students,chips,cpu,sales];

    Size vp = MediaQuery.of(context).size;
    return Column(
      children: [
        const SizedBox(
          height: 80,
        ),
        Text(
          "Selected Projects",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).disabledColor.withOpacity(.7),
          ),
        ),
        const SizedBox(
          height: 80.0,
        ),
        SizedBox(
          // decoration: BoxDecoration(
          // image: DecorationImage(
          //     image: AssetImage(p2), fit: BoxFit.cover, opacity: .7),
          // ),
          child: Stack(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: 500.0,
                  maxWidth: vp.width,
                ),
                // child: Container(
                //   decoration: BoxDecoration(
                //     image: DecorationImage(
                //         image: AssetImage(p2), fit: BoxFit.cover, opacity: .5),
                //   ),
                // ),
              ),
              Column(
                children: [
                  for (int k = 0; k < 4; k++)
                    SizedBox(
                        width: vp.width,
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          children: [
                            ProjectItem(
                              color: projectColors[k],
                              assetName: images[k],
                            ),
                          ],
                        ))
                ],
              ),
              const SizedBox(
                height: 80.0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
