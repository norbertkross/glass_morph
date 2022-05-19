import 'package:flutter/material.dart';

class OurTeam extends StatefulWidget {
  const OurTeam({Key? key}) : super(key: key);

  @override
  State<OurTeam> createState() => _OurTeamState();
}

class _OurTeamState extends State<OurTeam> {
  String p2 = "assets/ptrn3.png";

  String psn = "assets/p1.jpg";
  String psn2 = "assets/p2.jpg";
  String psn3 = "assets/p3.jpg";
  String psn4 = "assets/p4.jpg";

  double padSides = 60.0;
  double teamPicHeight = 400.0;
  double teamPicWidth = 400.0;

  @override
  Widget build(BuildContext context) {
    Size vp = MediaQuery.of(context).size;
    return SizedBox(
      width: vp.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Wrap(
          children: [
            Container(
              decoration: const BoxDecoration(
                  // color: Colors.amber,
                  ),
              width: vp.width <= 760
                  ? (vp.width) - (padSides / 2)
                  : (vp.width / 2) - (padSides / 2),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 70.0,
                    ),
                    Text(
                      "Our Team",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).disabledColor.withOpacity(.7),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      "lorem ipsium lorem ipsium dor sit dormeh lorem ipsium lorem ipsium dor sit dormeh lorem ipsium lorem ipsium lorem ipsium lorem ipsium dor sit dormeh lorem ipsium lorem ipsium dor sit dormeh lorem ipsium lorem ipsium",
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).disabledColor.withOpacity(.4),
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Text(
                          "Learn more",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color:
                                Theme.of(context).disabledColor.withOpacity(.5),
                          ),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Icon(
                          Icons.chevron_right_rounded,
                          color:
                              Theme.of(context).disabledColor.withOpacity(.5),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 70.0,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: vp.width <= 760
                  ? (vp.width) - (padSides / 2)
                  : (vp.width / 2) - (padSides / 2),
              height: teamPicHeight,
              decoration: BoxDecoration(
                // color: Colors.blue,
                image: DecorationImage(
                  image: AssetImage(p2),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: SizedBox(
                  height: teamPicHeight,
                  width: vp.width <= 760 ? vp.width : teamPicWidth,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 5.0,
                        left: vp.width <= 760? 40 : 60,
                        child: cardPill(
                          color: Colors.green,
                          assetName: psn,
                        ),
                      ),
                      Positioned(
                        top: 150.0,
                        right:vp.width <= 760? 130: 170,
                        child: cardPill(
                          width: 45,
                          heigth: 85.0,
                          color: Colors.tealAccent,
                          assetName: psn2,
                        ),
                      ),
                      Positioned(
                        top:vp.width <= 760? 90 : 60.0,
                        left:vp.width <= 760? 8 : 12.0,
                        // bottom: 30,
                        child: cardPill(
                          width: 50.0,
                          color: Colors.pinkAccent,
                          assetName: psn3,
                        ),
                      ),
                      Positioned(
                        top: 30.0,
                        right: 30,
                        child: cardPill(
                          width: 50,
                          heigth: 100.0,
                          color: Colors.black12,
                          assetName: psn4,
                        ),
                      ),
                      Positioned(
                        right: 20.0,
                        bottom:vp.width <= 760? 40 : 20,
                        child: cardPill(
                          assetName: psn2,
                        ),
                      ),
                      Positioned(
                        right: vp.width <= 760? 150 :190.0,
                        top: 4.0,
                        child: cardPill(
                          heigth: 100,
                          width: 50,
                          color: Colors.brown,
                          assetName: psn,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget cardPill(
      {double width = 60.0,
      double heigth = 120.0,
      String? assetName,
      Color? color}) {
    return Column(
      children: [
        Row(
          children: [
            Card(
              elevation: 20.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular((width / 2) + 10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  width: width,
                  height: heigth,
                  decoration: BoxDecoration(
                    color: color ?? Colors.deepPurple,
                    image: DecorationImage(
                      image: AssetImage(assetName ?? p2),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular((width / 2) + 10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
