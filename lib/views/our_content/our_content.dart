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
    Size vp = MediaQuery.of(context).size;
    double leadTextSize = 60.0;
    return Container(
      color: Colors.amber,
      width: vp.width,
      height: 450,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Text(
                          "Watch.",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: leadTextSize,
                            color: Theme.of(context).disabledColor.withOpacity(.85),
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          "Learn.",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: leadTextSize,
                            color: Theme.of(context).disabledColor.withOpacity(.85),
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          "Grow.",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: leadTextSize,
                            color: Theme.of(context).disabledColor.withOpacity(.85),
                          ),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor.withOpacity(.1),
                          ),
                          width: 200,
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(width: 30,),

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
                                liveIndex: currentPage, defaultIndex: y)),
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
