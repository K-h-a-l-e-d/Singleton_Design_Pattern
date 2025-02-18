class Database {
  //private constructor to restrict direct instantiation of this class outside this file
  //and instead use the singleton way
  Database._();

  static Database? _singleton;

  //returns _singleton instance if its not null, or instantiates new one assigns it to _singleton
  //then returning it
  factory Database.getInstance() => _singleton ??= Database._();
}

void main() {
  Database db = Database.getInstance();

  Database db2 = Database.getInstance();

  //comparing the two instances to check if they are using the same instance,
  //if the output is true then the Class Database applies singleton pattern
  print(db == db2);
  db == db2
      ? print('db is a singleton Pattern')
      : print('db is not a singleton Pattern');
}
