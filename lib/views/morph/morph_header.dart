import 'package:flutter/material.dart';
import 'package:glass_morph/views/footer_view/footer.dart';
import 'package:glass_morph/views/our_content/our_content.dart';
import 'package:glass_morph/views/our_services/our_services.dart';
import 'package:glass_morph/views/our_team/our_team.dart';
import 'package:glass_morph/views/selected_projects/selected_projects.dart';

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
  String h1 = "assets/h2.jpg";
  // String roundPattern = "assets/ptrn1.png";

  double mainPillHeight = 700.0;
  double mainPillWidth = 400.0;
  double mainPillBorder = 200.0;
  double minMidWidth = 750.0;

  bool showPopUp = false;

  showDialog() {
    setState(() {
      showPopUp = !showPopUp;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size vp = MediaQuery.of(context).size;
    return Stack(
      children: [
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight:
                          vp.height + (vp.height * (1 - headBackgroundHeight)),
                    ),
                    child: Stack(
                      children: [
                        SizedBox(
                          width: vp.width,
                          height: vp.height * headBackgroundHeight,
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                              minHeight: vp.height,
                            ),
                            child: Stack(
                              children: [
                                Container(
                                  height: vp.height,
                                  width: vp.width,
                                  decoration: BoxDecoration(
                                    // color: Color(0xffED38FF),
                                    // color: Color(0xff33FFBD),
                                    color: Theme.of(context).primaryColor,
                                    // color: Color(0xff356478),
                                    // color: Color(0xff33FF57),
                                  ),
                                ),
                                Positioned(
                                  left: -10,
                                  child: Container(
                                    height: vp.height,
                                    width: vp.width,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        scale: 1.0,
                                          opacity: vp.width <= 600 ? 0.008: .05,
                                          image:const AssetImage("assets/pattern2.png"),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                              ],
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
                            height: 300,
                            width: 300,
                            child: Image.asset(patternRoundBubles),
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

                              // List in middle of header
                              vp.width <= minMidWidth
                                  ? const SizedBox()
                                  : Wrap(
                                      crossAxisAlignment:
                                          WrapCrossAlignment.center,
                                      children: [
                                        for (int j = 0;
                                            j < headerItems.length;
                                            j++)
                                          Wrap(
                                            children: [
                                              MouseRegion(
                                                cursor:
                                                    SystemMouseCursors.click,
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
                                                          fontWeight:
                                                              headerItemIndex ==
                                                                      j
                                                                  ? FontWeight
                                                                      .bold
                                                                  : FontWeight
                                                                      .w600,
                                                          color: headerItemIndex ==
                                                                  j
                                                              ? Theme.of(
                                                                      context)
                                                                  .disabledColor
                                                                  .withOpacity(
                                                                      .9)
                                                              : Theme.of(
                                                                      context)
                                                                  .disabledColor
                                                                  .withOpacity(
                                                                      .6),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        height: 4,
                                                      ),
                                                      Container(
                                                        height: 3,
                                                        width: 20,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: headerItemIndex ==
                                                                  j
                                                              ? Theme.of(
                                                                      context)
                                                                  .disabledColor
                                                                  .withOpacity(
                                                                      .9)
                                                              : Colors
                                                                  .transparent,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
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

                              // Login Register buttons
                              vp.width <= minMidWidth
                                  ? IconButton(
                                      onPressed: () {
                                        showDialog();
                                      },
                                      icon: const Icon(
                                        Icons.menu,
                                        size: 30,
                                      ),
                                    )
                                  : Wrap(
                                      crossAxisAlignment:
                                          WrapCrossAlignment.center,
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
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                          color: Theme.of(context)
                                              .disabledColor
                                              .withOpacity(.9),
                                          onPressed: () {},
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 16.0,
                                                vertical: 12.0),
                                            child: Text(
                                              "Register",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Theme.of(context)
                                                    .canvasColor,
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

                        Padding(
                          padding: const EdgeInsets.only(top: 60.0),
                          child: Center(
                            child: ConstrainedBox(
                              constraints: BoxConstraints(
                                minHeight: vp.height +
                                    (vp.height * (1 - headBackgroundHeight)),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: vp.width <= minMidWidth
                                    ? MainAxisAlignment.start
                                    : MainAxisAlignment.end,
                                children: [
                                  Wrap(
                                    alignment: WrapAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: vp.width <= minMidWidth
                                            ? vp.width * .85
                                            : vp.width * .6,
                                        child: Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "We Create Projects & Grow Brands",
                                                  style: TextStyle(
                                                    fontSize:
                                                        vp.width <= minMidWidth
                                                            ? vp.width * .1
                                                            : 80,
                                                    fontWeight: FontWeight.bold,
                                                    color: Theme.of(context)
                                                        .canvasColor,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 50,
                                                ),
                                                SizedBox(
                                                  width: vp.width,
                                                  child: Wrap(
                                                    alignment:
                                                        WrapAlignment.start,
                                                    children: [
                                                      MaterialButton(
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(4),
                                                        ),
                                                        color: Theme.of(context)
                                                            .disabledColor
                                                            .withOpacity(.9),
                                                        onPressed: () {},
                                                        child: Padding(
                                                          padding: EdgeInsets.symmetric(
                                                              horizontal: vp
                                                                          .width <=
                                                                      minMidWidth
                                                                  ? 25
                                                                  : 40.0,
                                                              vertical: vp.width <=
                                                                      minMidWidth
                                                                  ? 16
                                                                  : 20.0),
                                                          child: Text(
                                                            "Get Started",
                                                            style: TextStyle(
                                                              fontSize: vp.width <=
                                                                      minMidWidth
                                                                  ? 20
                                                                  : 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: Theme.of(
                                                                      context)
                                                                  .canvasColor,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ]),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: vp.width <= 1000 ? 60 : 0.0),
                                        child: Card(
                                          elevation: 30,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.vertical(
                                              bottom: Radius.circular(
                                                  mainPillBorder),
                                              top: Radius.circular(
                                                  mainPillBorder),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Container(
                                              height: vp.width <= 550
                                                  ? 450
                                                  : mainPillHeight,
                                              width: vp.width <= 550
                                                  ? vp.width * .8
                                                  : mainPillWidth,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        mainPillBorder),
                                                image: DecorationImage(
                                                    image: AssetImage(h1),
                                                    fit: BoxFit.cover),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        //),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: vp.width <= 700 ? 40 : 150,
                ),

                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Watch.",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                              color: Theme.of(context)
                                  .disabledColor
                                  .withOpacity(.85),
                            ),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            "Learn. Grow.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                              color: Theme.of(context)
                                  .disabledColor
                                  .withOpacity(.85),
                            ),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          MaterialButton(
                            onPressed: () {},
                            color: Theme.of(context).primaryColor,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30.0, vertical: 15.0),
                              child: Text(
                                "Learn More",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Theme.of(context).canvasColor,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  width: 30,
                ),
                // Our Content
                const OurContent(),

                const SizedBox(
                  height: 30,
                ),

                // Other Widgets
                const OurServices(),

                SizedBox(
                  height: vp.width <= 750 ? 40 : 200,
                ),

                const OurTeam(),
                SizedBox(
                  height: vp.width <= 750 ? 20 : 200,
                ),
                const SelectedProjects(),

                SizedBox(
                  height: vp.width <= 700 ? 80 : 150,
                ),

                const FooterView(),
              ],
            ),
          ),
        ),
      showPopUp == true?
        Material(
          type: MaterialType.transparency,
          child: Container(
            width: vp.width,
            height: vp.height * .5,
            color: Colors.black.withOpacity(.95),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {
                          showDialog();
                        },
                        icon: Icon(
                          Icons.close,
                          size: 35,
                          color: Theme.of(context).canvasColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Text(
                      "Register",
                      style: TextStyle(
                        color: Theme.of(context).canvasColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Theme.of(context).canvasColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Text(
                      "Download",
                      style: TextStyle(
                        color: Theme.of(context).canvasColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Text(
                      "Payments",
                      style: TextStyle(
                        color: Theme.of(context).canvasColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ) : const SizedBox(),
      ],
    );
  }
}
