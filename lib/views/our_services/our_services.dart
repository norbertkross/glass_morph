import 'package:flutter/material.dart';

class OurServices extends StatefulWidget {
  const OurServices({Key? key}) : super(key: key);

  @override
  _OurServicesState createState() => _OurServicesState();
}

class _OurServicesState extends State<OurServices> {

  String p2 = "assets/p2.jpg";



  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;

  List uiItems = [
    {
      "label":"Harmony",
      "image":p2,
      "description":"lorem ipsium lorem ipsium dor sit dormeh lorem ipsium lorem ipsium dor sit dormeh lorem ipsium lorem ipsium",          
    },
    {
      "label":"Insurer",
      "image":p2,
      "description":"lorem ipsium lorem ipsium dor sit dormeh lorem ipsium lorem ipsium dor sit dormeh lorem ipsium lorem ipsium",           
    },
    {
      "label":"OneBite",
      "image":p2,
      "description":"lorem ipsium lorem ipsium dor sit dormeh lorem ipsium lorem ipsium dor sit dormeh lorem ipsium lorem ipsium",          
    },    

  ];
    return SizedBox(
      //color: Colors.redAccent,
      width: mq.width,
      child: Column(
        children: [

              SizedBox(height: mq.width <= 750? 30: 150,),

              Text("UI Challenges",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).disabledColor.withOpacity(.7),
              ),
              ),
             
           mq.width <=700? const SizedBox() : const SizedBox(height: 45.0,),
            workItem(mq:mq,uiItems: uiItems),
           const SizedBox(height: 20.0,),
            
        ],
      ),
    );
  }


  Widget workItem({required Size mq,required List uiItems}){
    return Stack(
      children: [

        SizedBox(
          width: mq.width * .7,
          child: Wrap(
            alignment: WrapAlignment.spaceAround,
            children: [

              for(int index =0; index <= uiItems.length-1;index++)

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 16.0),
                child: Card(
                  shadowColor:Theme.of(context).primaryColor.withOpacity(.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  elevation: 20.0,
                  child: SizedBox(
                    //color: Colors.green,
                    width: 300.0,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: [                        

                              GestureDetector(
                                onTap: (){},
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: MouseRegion(
                                    cursor: SystemMouseCursors.click ,
                                    child: Container(             
                                      height: 60.0,
                                      width: 60.0,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      //color: Colors.limeAccent,
                                      image: DecorationImage(image: AssetImage("${uiItems[index]["image"]}"),fit: BoxFit.cover),
                                      ),
                                    ),
                                  ),
                                ),
                              ),


                              Padding(
                                padding: const EdgeInsets.symmetric(vertical:8.0),
                                child: Text(uiItems[index]["label"],style: TextStyle(
                                  color: Theme.of(context).disabledColor.withOpacity(.9),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                ),
                               ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical:2.0),
                                child: Text("This is some random description for the description of what this company does. Would be replaced with something reasonable",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Theme.of(context).disabledColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17.0,
                                ),
                               ),
                              ),
                              const SizedBox(height: 20,),
                            ],
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

        const SizedBox(height: 90,),
      ],
    );
  }
}
