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

    // large dimensions
    double cardHeight = 400.0;
    double cardWidth = 300.0;

    // smalldimensions
    double smallCardWidth = 115.0;

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SizedBox(
        height: cardHeight,
          width:widget.defaultIndex == widget.liveIndex? cardWidth : smallCardWidth,        
        child: Stack(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: cardHeight,
              width:widget.defaultIndex == widget.liveIndex? cardWidth : smallCardWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Theme.of(context).disabledColor,
                image: DecorationImage(image: AssetImage(widget.defaultIndex == widget.liveIndex? p2:h1),fit: BoxFit.cover) ,
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
                    child: Wrap(
                      alignment: WrapAlignment.spaceAround,
                      children: const [
                        Text("data1"),
                        Text("data1"),
                      ],
                    ),)

                    :
                    SizedBox(
                      child: Stack(
                        children: [

                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 100,
                              width: smallCardWidth - 30.0,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),

                          RotatedBox(quarterTurns: 3,child: Text("Hello world gaian here"),),
                        ],
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
