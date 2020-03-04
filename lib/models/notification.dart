import 'package:flutter/material.dart';
class NotificationModel {
  String image;
  String name;
  String noti;
  int id;
  Color color;


  NotificationModel({this.image,this.name, this.noti, this.id,this.color});
  
  
}
List<NotificationModel> notificationList = [
  NotificationModel(image:'avatar-3.png',name: 'Maria Winter', noti: 'Happiness is nothing something ready made', id: 165275,color: Colors.pink),
  NotificationModel(image:'avatar.png',name: 'Grant Marshall', noti: 'When I let go what I am, become', id: 165275,color: Colors.pink),
  NotificationModel(image:'avatar-11.png',name: 'Duran Clayton', noti: 'If you are offered a seat on a rocketship', id: 165275,color: Color.fromRGBO(228, 233, 237, 1)),
  NotificationModel(image:'avatar-10.png',name: 'Julia Petersen', noti: 'When I let go what I am, become', id: 165275,color: Color.fromRGBO(228, 233, 237, 1)),
  NotificationModel(image:'avatar-5.png',name: 'Burns Marks', noti: 'Happiness is nothing something ready made', id: 165275,color: Color.fromRGBO(228, 233, 237, 1)),
  NotificationModel(image:'avatar-11.png',name: 'Mehek Ali', noti: 'Happiness is nothing something ready made', id: 165275,color: Color.fromRGBO(228, 233, 237, 1)),
  NotificationModel(image:'avatar-3.png',name: 'Ayesha Baloch', noti: 'Happiness is nothing something ready made', id: 165275,color: Color.fromRGBO(228, 233, 237, 1)),
  NotificationModel(image:'avatar-10.png',name: 'Nazish Khan', noti: 'Happiness is nothing something ready made', id: 165275,color: Color.fromRGBO(228, 233, 237, 1)),
];