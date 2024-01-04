
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_widget/ticket_widget.dart';
import 'constants.dart';


class Ticket extends StatelessWidget {
  const Ticket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        child:  Column(
          children: [
            TicketWidget(
              color: Color(0xFF263238),
                width: 350,
                height: 470,
                isCornerRounded: true,
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 27,

                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:80, top: 20),
                      child: Row(
                        children: [

                             Text("Anuj Jain",
                            style: Styles.headerStyle3,),


                      const Gap(110),

                             Text(
                              "03-04-2023",
                            style: Styles.textStyle1,
                            ),



                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:80, top: 45),
                      child: Row(
                        children: [
                          Text(
                            "India Tour 2023",
                            style: Styles.textStyle1,
                          ),
                          const Gap(44),
                          Text(
                            "11:00 AM - 2:00 PM",
                            style: Styles.textStyle1,
                          ),

                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 80, left: 10),
                      child: Container(
                        margin: const EdgeInsets.only(left: 15),
                        height: 155.0,
                        width: 300.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "assets/images/anuvjain.jpg"
                                )
                            )
                        ),
                      ),
                    ),

                       Container(
                         decoration:const  BoxDecoration(
                           borderRadius: BorderRadius.only(
                               topLeft: Radius.circular(21),
                               topRight: Radius.circular(21),
                             bottomLeft: Radius.circular(21),
                             bottomRight: Radius.circular(21),
                           ),
                           color: Color(0xFF37474F),
                         ),
                         margin: EdgeInsets.only(top: 270),
                         height: 200,
                        width: 370,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Icon(FluentSystemIcons.ic_fluent_location_regular,
                                  color: Colors.white,
                                  size: 17,),
                                  const Gap(10),
                                  Text("Mumbai Stadium, Mumbai, India",
                                  style: Styles.headerStyle4,)
                                ],
                              ),

                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Icon(FluentSystemIcons.ic_fluent_location_regular,
                                    color: Colors.white,
                                    size: 17,),
                                  const Gap(10),
                                  Text("03-04-2023, 11:00am - 2:00pm",
                                    style: Styles.headerStyle4,)
                                ],
                              ),

                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Icon(CupertinoIcons.ticket,
                                  color: Colors.white,
                                  size: 17,),
                                  const Gap(10),
                                  Text("Row:2",style: Styles.headerStyle4,),
                                  const Gap(20),
                                  Text("Seats:09,10", style: Styles.headerStyle4,)
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,top: 5),
                              child: Row(
                                children: [
                                  Icon(CupertinoIcons.ticket,
                                    color: Colors.white,
                                    size: 17,),
                                  const Gap(10),
                                  Text("₹10,000",style: Styles.headerStyle3,),
                                  const Gap(4),
                                  Text("₹1̶5̶0̶0̶0̶", style: Styles.textStyle1,)
                                ],
                              ),
                            ),
                            Container(
                              margin:  EdgeInsets.only(left:5, top: 5),
                              height: 40.0,
                              width: 300.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/images/barcode.jpeg"
                                      )
                                  )
                              ),
                            ),
                          ],
                        )
                      ),
                  ],
                )
            ),
            Container(
              margin: EdgeInsets.only(top: 35),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 150.0,
                    height: 40.0,
                    child: TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ))),
                      onPressed: (){},
                     child: Row(
                       children: [
                         Icon(Icons.download,
                         color: Colors.white),
                         const Gap(15),
                         Text("Download",
                           textAlign: TextAlign.center,
                           style: Styles.headerStyle4,
                         ),
                       ],
                     ),

                    ),
                  ),


                  const Gap(50),
                  Row(

                    children: [
                      SizedBox(
                        width:120.0,
                        height: 40.0,
                        child:TextButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF263238)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ))),
                          onPressed: (){},
                          child: Row(
                            children: [
                              Icon(Icons.share,color: Colors.white,),
                              const Gap(15),
                              Text("Share",
                                textAlign: TextAlign.center,
                                style: Styles.headerStyle4,
                              ),
                            ],
                          )
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}