class AttandanceModel {
  String name;
  int id;
  int presents;
  int absents;

  AttandanceModel({this.name,this.id,this.presents,this.absents});



}


List<AttandanceModel> attandanceLIst = [
  AttandanceModel(name: 'Fareeha',id: 123,presents: 50,absents: 50),
  AttandanceModel(name: 'Kainat',id: 345,presents: 80,absents: 20),
  AttandanceModel(name: 'Hania',id: 367,presents: 90,absents: 10),
  AttandanceModel(name: 'Afia',id: 897,presents: 100,absents: 0),
  AttandanceModel(name: 'Fizza',id: 124,presents: 70,absents: 30),
  AttandanceModel(name: 'Zarghona',id: 346,presents: 80,absents: 20),
  AttandanceModel(name: 'Sana',id: 592,presents: 90,absents: 10),
];