import 'package:festa/ticket_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  int _selectedIndex = 2;

  static final List<Widget>_widgetOption=<Widget>[
    const Text("Home"),
    const Text("Community"),
    const TicketScreen(),
    const Text("Profile"),
  ];
  void _onItemTapped (int Index){
   setState(() {
     _selectedIndex=Index;
   });
  }

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF263238),




    //  appBar:AppBar(

    //    centerTitle: true,
    //    backgroundColor: Colors.blue,
    //    title:
   //     Text('My Ticket', textAlign: TextAlign.center
     //   ),
     // ),
      body:
      Center(

        child: _widgetOption[_selectedIndex]
      ),

      bottomNavigationBar:



      Container(

        margin: EdgeInsets.all(20),
        height: size.width * .1,
        decoration: BoxDecoration(

          color: Colors.black12,

          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.15),
              blurRadius: 30,
              offset: Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadius.circular(50),
        ),

        child: ListView.builder(

          itemCount: 4,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: size.width * .024),
          itemBuilder: (context, index) =>
              InkWell(

                onTap: () {
                  setState(
                        () {
                      _selectedIndex = index;
                    },
                  );
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AnimatedContainer(
                      duration: Duration(milliseconds: 1000),
                      curve: Curves.fastLinearToSlowEaseIn,

                      margin: EdgeInsets.only(
                        bottom: index == _selectedIndex ? 0 : size.width * .029,
                        right: size.width * .06,
                        left: size.width * .06,
                      ),
                      width: size.width * .09,
                      height: index == _selectedIndex ? size.width * .008: 0,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(10),
                        ),
                      ),
                    ),
                    Icon(
                      listOfIcons[index],
                      size: size.width * .05,
                      color: index == _selectedIndex
                          ? Colors.redAccent
                          : Colors.grey,
                    ),

                    SizedBox(height: size.width * .02)
                    ,
                  ],
                ),
              ),
        ),

      ),

    );
  }
  List<IconData> listOfIcons = [
  FluentSystemIcons.ic_fluent_home_filled,
    FluentSystemIcons.ic_fluent_people_community_filled,
    FluentSystemIcons.ic_fluent_ticket_filled,
  FluentSystemIcons.ic_fluent_person_filled,
  ];


}

