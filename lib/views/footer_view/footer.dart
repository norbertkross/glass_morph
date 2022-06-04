import 'package:flutter/material.dart';

class FooterView extends StatefulWidget {
  const FooterView({Key? key}) : super(key: key);

  @override
  State<FooterView> createState() => _FooterViewState();
}

class _FooterViewState extends State<FooterView> {
  @override
  Widget build(BuildContext context) {
    Size vp = MediaQuery.of(context).size;
    return Container(
      width: vp.width,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          SizedBox(
            width: vp.width,
            child: Wrap(
              alignment: WrapAlignment.spaceAround,
              children: [
                SizedBox(
                  width:vp.width <= 760? vp.width*.9 : vp.width * .5,
                  child: SizedBox(
                    width: vp.width * .5,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Wrap(
                        alignment: WrapAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                  "Contact",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).canvasColor,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                  "+233(0) 557 340 556",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Theme.of(context).canvasColor,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                  "norbertaberor@gmail.com",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Theme.of(context).canvasColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                  "Discover",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).canvasColor,
                                  ),
                                ),
                              ),
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Text(
                                      "Links",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Theme.of(context).canvasColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Text(
                                      "Other",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Theme.of(context).canvasColor,
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
                Padding(
                  padding:  EdgeInsets.only(top: vp.width <= 760? 30.0 : 0.0),
                  child: SizedBox(                    
                    width:vp.width <= 760? vp.width*.9 : vp.width * .5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          // padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Let's Talk",
                                style: TextStyle(
                                  fontSize: 34,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).canvasColor,
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Text(
                                    "Connect",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.orange,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  Transform.rotate(
                                    angle: -.7,
                                    child: const Icon(
                                      Icons.arrow_forward_rounded,
                                      color: Colors.orange,
                                      size: 17,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 60.0,
          ),
          Text(
            "© ${DateTime.now().year} norbertaberor",
            style: TextStyle(
              color: Theme.of(context).canvasColor.withOpacity(.5),
              // fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
