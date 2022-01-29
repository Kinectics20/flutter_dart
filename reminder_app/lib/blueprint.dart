
class Transaction {
  // creating the blueprint of a transaction
  final String
      id; //A fieid or variable inside my class that holds the property or attribute of what define a class
  final String title; //
  final double worth; //
  final DateTime date; //
  Transaction(
      //constructors that is instantallized my class it allow me to use the property anywhere
      {required this.id,//a constuctor shows that all my field are attributed fo my transaction
      required this.title,
      required this.worth,
      required this.date});
}
