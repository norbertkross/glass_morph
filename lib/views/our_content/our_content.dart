import "package:flutter/material.dart";
import 'package:glass_morph/views/our_content/visible_cards.dart';

class OurContent extends StatefulWidget {
  const OurContent({Key? key}) : super(key: key);

  @override
  _OurContentState createState() => _OurContentState();
}

class _OurContentState extends State<OurContent> {
  int currentPage = 0;
  switchIndex(int newIndex) {
    setState(() {
      currentPage = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Size vp = MediaQuery.of(context).size;
    // double leadTextSize = 60.0;
    return SizedBox(
      // width: vp.width,
      height: 450,
      child: Center(
        child: viewForMoreCards(
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              // Gallery View Cards
              Column(
                children: [
                  Wrap(
                    children: [
                      for (int y = 0; y < 5; y++)
                        GestureDetector(
                          onTap: () {
                            switchIndex(y);
                          },
                          child: VisibleCards(
                              liveIndex: currentPage, defaultIndex: y),
                        ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget viewForMoreCards({required Widget child}) {

    return ListView(scrollDirection: Axis.horizontal,shrinkWrap: true, children: [child]);
  }
}
