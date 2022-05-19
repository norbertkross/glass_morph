import 'dart:ui';

import 'package:flutter/material.dart';

class ProjectItem extends StatefulWidget {
  final Color color;
  const ProjectItem({Key? key, required this.color}) : super(key: key);

  @override
  State<ProjectItem> createState() => _ProjectItemState();
}

class _ProjectItemState extends State<ProjectItem> {
  double descriptionCardRadius = 10.0;
  double projectTileHeight = 250.0;
  @override
  Widget build(BuildContext context) {
    Size vp = MediaQuery.of(context).size;
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 12.0),
        child: Card(
          elevation: 30,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(descriptionCardRadius),
          ),
          child: vp.width <= 630
              ? Wrap(
                  children: [
                    frostedSideItem(),
                    colorDeepSide(),
                  ],
                )
              : Wrap(
                  children: [
                    colorDeepSide(),
                    frostedSideItem(),
                  ],
                ),
        ),
      ),
    );
  }

  Widget colorDeepSide() {
    Size vp = MediaQuery.of(context).size;
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 300.0,
        minHeight: projectTileHeight,
      ),
      child: Container(
        // height: projectTileHeight,
        decoration: BoxDecoration(
          borderRadius: vp.width <= 630
              ? BorderRadius.vertical(
                  bottom: Radius.circular(descriptionCardRadius),
                )
              : BorderRadius.horizontal(
                  left: Radius.circular(descriptionCardRadius),
                ),
          color: widget.color,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: vp.width,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 1.0, color: Theme.of(context).canvasColor),
                  borderRadius: BorderRadius.circular(3.0),
                  color: Theme.of(context).canvasColor.withOpacity(.2),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 4.0),
                  child: Text(
                    "About",
                    style: TextStyle(
                      color: Theme.of(context).canvasColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Text(
                "Job Platform",
                style: TextStyle(
                  color: Theme.of(context).canvasColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "This is some random description for the description of what this company does. Would be replaced with something reasonable",
                style: TextStyle(
                  color: Theme.of(context).canvasColor.withOpacity(.85),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Text(
                    "View more",
                    style: TextStyle(
                      color: Theme.of(context).canvasColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 4.0,
                  ),
                  Icon(
                    Icons.chevron_right_rounded,
                    color: Theme.of(context).canvasColor,
                    size: 25,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget frostedSideItem() {
    Size vp = MediaQuery.of(context).size;
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 300.0,
      ),
      child: Stack(
        children: [
          Container(
            height: projectTileHeight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(
                right: Radius.circular(descriptionCardRadius),
              ),
              color: widget.color.withOpacity(.4),
            ),
          ),
          ClipRRect( 
            borderRadius: vp.width <= 630
                ? BorderRadius.vertical( 
                    top: Radius.circular(descriptionCardRadius),
                  )
                : BorderRadius.horizontal(
                    right: Radius.circular(descriptionCardRadius),
                  ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxHeight: 300.0,
                ),
                child: Container(
                  height: projectTileHeight,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200.withOpacity(0.5),
                    borderRadius: vp.width <= 630
                        ? BorderRadius.vertical(
                            top: Radius.circular(descriptionCardRadius),
                          )
                        : BorderRadius.horizontal(
                            right: Radius.circular(descriptionCardRadius),
                          ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
