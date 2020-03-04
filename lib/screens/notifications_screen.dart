import 'package:flutter/material.dart';
import '../values/values.dart';
import '../models/notification.dart';

class NotificationsScreen extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notification'),backgroundColor: AppColors.secondaryBackground,centerTitle: true,),
      body:
          ListView.builder(itemCount:notificationList.length,itemBuilder: (ctx,index){
            return Container(

              color: Color.fromRGBO(228, 233, 237, 1),
              child: Column(
                
                children: <Widget>[
                  ListTile(

                      leading: Container(
                          width: 63,
                          height: 103,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              topRight:Radius.circular(10),
                            ),
                            child: Image.asset("assets/images/${notificationList[index].image}"),
                          ),
                        ),
                    title:Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding:EdgeInsets.only(bottom: 10),
                          child: Text(
                                notificationList[index].name,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: AppColors.secondaryBackground,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  letterSpacing: -0.32,
                                ),
                              ),

                        ),
                        Container(

                          margin: EdgeInsets.only(bottom: 16),

                          child: CircleAvatar(
                            backgroundColor: notificationList[index].color,
                            radius: 4,



                          ),
                        ),
//                        CircleAvatar(backgroundColor: notificationList[index].color,)
//                      Container(child: BoxDecoration(borderRadius: ),)
                      ],
                    ),

                    subtitle:  Text(
                              notificationList[index].noti,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: AppColors.secondaryBackground,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                letterSpacing: -0.2,
                              ),),
//trailing: CircleAvatar(backgroundColor: notificationList[index].color,),
                  ),

              Container(

                      padding: EdgeInsets.symmetric(horizontal: 30),
                      width: 450,
                      height: 3,
                      margin: EdgeInsets.only(left: 1, top: 20,bottom: 20),
                      child: Image.asset(
                        "assets/images/line-1.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                ],
              ),
            );

          }

        ),



    );
  }
}
