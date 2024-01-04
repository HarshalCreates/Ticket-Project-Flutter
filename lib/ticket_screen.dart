import 'package:festa/ticket.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'constants.dart';



class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40 ),
            child:  Column(

              children: [
                const Gap(35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Your tickets",
                      style: Styles.headerStyle,
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 75.0,
                        height: 30.0,
                        child: TextButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ))),
                          onPressed: (){},
                          child: Text("Upcoming",
                            textAlign: TextAlign.center,
                            style: Styles.headerStyle2,
                            ),
                          ),
                      ),


                     const Gap(7),
                     Row(

                       children: [
                         SizedBox(
                           width: 75.0,
                           height: 30.0,
                           child:TextButton(
                             style: ButtonStyle(
                                 backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF263238)),
                                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                     RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(8.0),
                                     ))),
                             onPressed: (){},
                             child: Text("History",
                               style: Styles.headerStyle2
                             ),
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
          const Gap(20),
          Ticket(),
        ],
      )
    );
  }
}
