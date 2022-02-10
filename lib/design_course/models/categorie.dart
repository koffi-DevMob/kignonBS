class Categorie {
  Categorie({
    this.title = '',
    this.imagePath = '',
    this.lessonCount = 0,
    this.money = 0,
    this.rating = 0.0,
  });

  String title;
  int lessonCount;
  int money;
  double rating;
  String imagePath;

  static List<Categorie> categoryList = <Categorie>[
    Categorie(
      imagePath: 'massagerelaxant.jpeg',
      title: 'Massage relaxant(45 minutes)',
      lessonCount: 1,
      money: 15000,
      rating: 4.3,
    ),
    Categorie(
      imagePath: 'degraissage.jpeg',
      title: ' Degraissage',
      lessonCount: 1,
      money: 5000,
      rating: 4.6,
    ),
    Categorie(
      imagePath: 'soinsVisage.jpeg',
      title: 'Soins de visage',
      lessonCount: 1,
      money: 10000,
      rating: 4.3,
    ),
    Categorie(
      imagePath: 'gommageCorps.jpeg',
      title: 'Gommage du corps simple',
      lessonCount: 1,
      money: 15000,
      rating: 4.6,
    ),
    Categorie(
      imagePath: 'gommageCorps.jpeg',
      title: 'Gommage du corps + Masque + Enveloppement',
      lessonCount: 2,
      money: 25000,
      rating: 4.6,
    ),
    Categorie(
      imagePath: 'assets/logo_kbs.jpeg',
      title: 'Manicure',
      lessonCount: 1,
      money: 2000,
      rating: 4.6,
    ),
    Categorie(
      imagePath: 'NetoyagePied.jpeg',
      title: 'Pedicure',
      lessonCount: 1,
      money: 3000,
      rating: 4.6,
    ),
    Categorie(
      imagePath: 'assets/logo_kbs.jpeg',
      title: ' Nettoyage main',
      lessonCount: 1,
      money: 3000,
      rating: 4.6,
    ),
    Categorie(
      imagePath: 'NetoyagePied.jpeg',
      title: ' Nettoyage peids',
      lessonCount: 1,
      money: 3000,
      rating: 4.6,
    ),
  ];

}
