import 'dart:ui';

import 'package:flutter/material.dart';

class VisibleCards extends StatefulWidget {
  final int liveIndex;
  final int defaultIndex;
  const VisibleCards({Key? key, required this.liveIndex, required this.defaultIndex}) : super(key: key);

  @override
  State<VisibleCards> createState() => _VisibleCardsState();
}

class _VisibleCardsState extends State<VisibleCards> {
  String p2 = "assets/p2.jpg";
  String h1 = "assets/h2.jpg";
  @override
  Widget build(BuildContext context) {
    Size vp = MediaQuery.of(context).size;
    // large dimensions
    double cardHeight = 400.0;
    double cardWidth = 300.0;

    // smalldimensions
    double smallCardWidth = 115.0;

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SizedBox(
        height: cardHeight,
          width:widget.defaultIndex == widget.liveIndex? ( vp.width <= 750? 250 : cardWidth) : smallCardWidth,        
        child: Stack(
          children: [
            Card(
              margin: const EdgeInsets.all(0),
              elevation: 30,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: cardHeight,
                width:widget.defaultIndex == widget.liveIndex? cardWidth : smallCardWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Theme.of(context).disabledColor,
                  image: DecorationImage(image: AssetImage(widget.defaultIndex == widget.liveIndex? p2:h1),fit: BoxFit.cover) ,
                ),
              ),
            ),
         
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

             SizedBox(
               child: Stack(
                 children: [
            Container(
                        // height: cardHeight,
                        width:widget.defaultIndex == widget.liveIndex? cardWidth : smallCardWidth,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.black.withOpacity(.3),
                        ),
                      ),                   
                   widget.defaultIndex == widget.liveIndex?
                    SizedBox(
                    width: widget.defaultIndex == widget.liveIndex? cardWidth : smallCardWidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Wrap(
                          alignment: WrapAlignment.spaceAround,
                          children:  [
                            Text("Cooking Course",style:TextStyle(
                              color: Theme.of(context).canvasColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),),
                            Column(
                              children: [
                                Text("100",style:TextStyle(
                                  color: Theme.of(context).canvasColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),),
                                Text("Topics",style:TextStyle(
                                  color: Theme.of(context).canvasColor,
                                  fontSize: 17,
                                ),),
                              ],
                            ),
                            
                          ],
                        ),

                        const SizedBox(height: 30.0,),
                      ],
                    ),)

                    :
                    SizedBox(
                      height: cardHeight ,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom:20.0),
                        child: Stack(
                          children: [

                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                height: 100,
                                width: smallCardWidth - 30.0,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),

                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 25.0,
                                  bottom:40.0,
                                ),
                                child: RotatedBox(quarterTurns: 3,child: Text("Business"
                                ,style:TextStyle(
                                color: Theme.of(context).canvasColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),),),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                 ],
               ),
             )
              ,
            ],),            
          ],
        ),
      ),
    );
  }
}
