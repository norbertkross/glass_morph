import 'package:flutter/material.dart';

class GlassMorph extends StatefulWidget {
  const GlassMorph({Key? key}) : super(key: key);

  @override
  State<GlassMorph> createState() => _GlassMorphState();
}

class _GlassMorphState extends State<GlassMorph> {
  int headerItemIndex = 0;
  List<String> headerItems = ['Payment', 'Download', 'Support'];

  double headBackgroundHeight = .85;

  String patternRoundBubles = "assets/pattern_1.png";
  String p2 = "assets/p2.jpg";
  String h1 = "assets/h1.jpg";

  double mainPillHeight = 700.0;
  double mainPillWidth = 400.0;
  double mainPillBorder = 200.0;

  @override
  Widget build(BuildContext context) {
    Size vp = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: vp.width,
              height: vp.height + (vp.height * (1 - headBackgroundHeight)),
              child: Stack(
                children: [
                  SizedBox(
                    width: vp.width,
                    height: vp.height * headBackgroundHeight,
                    child: Container(
                      height: vp.height,
                      width: vp.width,
                      decoration: const BoxDecoration(
                        // color: Color(0xffED38FF),
                        color: Color(0xff33FFBD),
                        // color: Color(0xff33FF57),
                      ),
                    ),
                  ),
                 
                  Positioned(
                    right: -10,
                    bottom: -20,
                    child: SizedBox(
                      height: 500,
                      width: 500,
                      child: Image.asset(patternRoundBubles),
                    ),
                  ),

                  Positioned(
                    left: -100,
                    bottom: -20,
                    child: SizedBox(
                      height: 200,
                      width: 200,
                      child: Image.asset(patternRoundBubles),
                    ),
                  ),
                  Positioned(
                    bottom: 50,
                    right: 100,
                    child: Card(
                      elevation: 30,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(mainPillBorder),
                              top: Radius.circular(mainPillBorder),),),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: mainPillHeight,
                          width: mainPillWidth,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(mainPillBorder),
                            image: DecorationImage(image: AssetImage(h1),fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: vp.width,
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      alignment: WrapAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SizedBox(
                            height: 50.0,
                            width: 50.0,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: -25,
                                  child: Container(
                                    height: 50.0,
                                    width: 50.0,
                                    decoration: const BoxDecoration(
                                        color: Colors.black,
                                        shape: BoxShape.circle),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            for (int j = 0; j < headerItems.length; j++)
                              Wrap(
                                children: [
                                  MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          headerItemIndex = j;
                                        });
                                      },
                                      child: Column(
                                        children: [
                                          Text(
                                            headerItems[j],
                                            style: TextStyle(
                                              fontWeight: headerItemIndex == j
                                                  ? FontWeight.bold
                                                  : FontWeight.w600,
                                              color: headerItemIndex == j
                                                  ? Theme.of(context)
                                                      .disabledColor
                                                      .withOpacity(.9)
                                                  : Theme.of(context)
                                                      .disabledColor
                                                      .withOpacity(.6),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 4,
                                          ),
                                          Container(
                                            height: 3,
                                            width: 20,
                                            decoration: BoxDecoration(
                                              color: headerItemIndex == j
                                                  ? Theme.of(context)
                                                      .disabledColor
                                                      .withOpacity(.9)
                                                  : Colors.transparent,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  j < headerItems.length - 1
                                      ? const SizedBox(
                                          width: 12,
                                        )
                                      : const SizedBox(),
                                ],
                              ),
                          ],
                        ),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context)
                                      .disabledColor
                                      .withOpacity(.9),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            MaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              color: Theme.of(context)
                                  .disabledColor
                                  .withOpacity(.9),
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 12.0),
                                child: Text(
                                  "Register",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).canvasColor,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
