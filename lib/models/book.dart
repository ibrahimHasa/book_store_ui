class Book {
  String type;
  String name;
  String publisher;
  DateTime date;
  String imgUrl;
  num score;
  num ratings;
  String review;
  double height;
  Book(
    this.type,
    this.name,
    this.publisher,
    this.date,
    this.imgUrl,
    this.score,
    this.ratings,
    this.review,
    this.height,
  );
  static List<Book> generateBooks() {
    return [
      Book(
          'hostor',
          'Always forgve your enemies no thing annoies',
          'istudio',
          DateTime(2021, 3, 3),
          'assets/images/book1.jpeg',
          4.7,
          888,
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',
          200),
      Book(
          'hostor',
          'this is the way to loooooooooooo',
          'istudio',
          DateTime(2021, 3, 3),
          'assets/images/book2.jpeg',
          4.7,
          888,
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. sunt in culpa qui officia deserunt mollit anim id est laboru',
          260),
      Book(
          'hostor',
          'thdfdsfdsfdssdgvsd\is is the way',
          'istudio',
          DateTime(2021, 3, 3),
          'assets/images/book3.jpeg',
          4.7,
          888,
          'sherepo shereposhereposhereposhereposhereposhereposhereposhereposhereposhereposhereposhereposhereposhereposhereposhereposhereposhereposhereposhereposhereposhereposhereposhereposhereposhereposhereposhereposhereposhereposhereposhereposhereposhereposhereposhereposhereposhereposhereposhereposhereposherepo shereposherepo sherepo',
          220),
      Book(
          'hostor',
          'this is the way',
          'istudio',
          DateTime(2021, 3, 3),
          'assets/images/book4.jpeg',
          4.7,
          888,
          'Ut enim ad minim veniam, quis nostrud exercitat pariatur. Excepteur sint occaecat cupidatat non proident, shereposhe',
          220),
      Book(
          'hostor',
          'this is the way',
          'istudio',
          DateTime(2021, 3, 3),
          'assets/images/book5.jpeg',
          4.7,
          888,
          'sherepo shereposherepoUt enim ad minim veniam, quis nostrud exerci. Excepteur sint occaecat cupidatat non proident, shereposherepo sherepo',
          220),
      Book(
          'hostor',
          'this is the way',
          'istudio',
          DateTime(2021, 3, 3),
          'assets/images/book6.jpeg',
          4.7,
          888,
          'sherepo shereposherepo shereposherepo sherepo',
          220),
    ];
  }
}
