class Category {
  Category({
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

  static List<Category> categoryList = <Category>[
    Category(
      imagePath: 'assets/coiffureEnfant.jpeg',
      title: 'Coiffure enfants',
      lessonCount: 1,
      money: 1000,
      rating: 5,
    ),
    Category(
      imagePath: 'assets/coiffureHomme.jpeg',
      title: 'Coiffure homme',
      lessonCount: 1,
      money: 1500,
      rating: 5,
    ),
    Category(
      imagePath: 'coupeDame.jpeg',
      title: 'Coupe dame',
      lessonCount: 1,
      money: 2000,
      rating: 5,
    ),
    Category(
      imagePath: 'CoiffurePersonnalise.jpeg',
      title: 'Coiffure personalisee',
      lessonCount: 1,
      money: 2000,
      rating: 4.6,
    ),
    Category(
      imagePath: 'retoucheDame.jpeg',
      title: 'Retouche dame',
      lessonCount: 2,
      money: 1000,
      rating: 4.6,
    ),
    Category(
      imagePath: 'teintureNoire.jpeg',
      title: 'Teinture noire',
      lessonCount: 2,
      money: 2000,
      rating: 4,
    ),
    Category(
      imagePath: 'teintureJaune.jpeg',
      title: 'Teinture jaune',
      lessonCount: 2,
      money: 4000,
      rating: 4.6,
    ),
    Category(
      imagePath: 'teintureCouleur.jpeg',
      title: 'Teinture de couleur',
      lessonCount: 2,
      money: 10000,
      rating: 4.6,
    ),
    Category(
      imagePath: 'Locks.jpeg',
      title: 'Locks',
      lessonCount: 2,
      money: 5000,
      rating: 4.6,
    ),
    Category(
      imagePath: 'limitation.jpeg',
      title: 'Limitation',
      lessonCount:0,
      money: 500,
      rating: 4.6,
    ),
  ];

  static List<Category> popularCourseList = <Category>[
    Category(
      imagePath: 'limitation.jpeg',
      title: 'App Design Course',
      lessonCount: 12,
      money: 25,
      rating: 4.8,
    ),
    Category(
      imagePath: 'teintureCouleur.jpeg',
      title: 'Web Design Course',
      lessonCount: 28,
      money: 208,
      rating: 4.9,
    ),
    Category(
      imagePath: 'CoiffurePersonnalise.jpeg',
      title: 'App Design Course',
      lessonCount: 12,
      money: 25,
      rating: 4.8,
    ),
    Category(
      imagePath: 'retoucheDame.jpeg',
      title: 'Web Design Course',
      lessonCount: 28,
      money: 208,
      rating: 4.9,
    ),
     Category(
      imagePath: 'Locks.jpeg',
      title: 'App Design Course',
      lessonCount: 12,
      money: 25,
      rating: 4.8,
    ),
    Category(
      imagePath: 'teintureJaune.jpeg',
      title: 'Web Design Course',
      lessonCount: 28,
      money: 208,
      rating: 4.9,
    ),
    Category(
      imagePath: 'teintureNoire.jpeg',
      title: 'App Design Course',
      lessonCount: 12,
      money: 25,
      rating: 4.8,
    ),
    Category(
      imagePath: 'teintureCouleur.jpeg',
      title: 'Web Design Course',
      lessonCount: 28,
      money: 208,
      rating: 4.9,
    ),
     Category(
      imagePath: 'assets/coiffureEnfant.jpeg',
      title: 'App Design Course',
      lessonCount: 12,
      money: 25,
      rating: 4.8,
    ),
    Category(
      imagePath: 'coupeDame.jpeg',
      title: 'Web Design Course',
      lessonCount: 28,
      money: 208,
      rating: 4.9,
    ),
     Category(
      imagePath: 'NetoyagePied.jpeg',
      title: 'App Design Course',
      lessonCount: 12,
      money: 25,
      rating: 4.8,
    ),
    Category(
      imagePath: 'gommageCorps.jpeg',
      title: 'Web Design Course',
      lessonCount: 28,
      money: 208,
      rating: 4.9,
    ),
    Category(
      imagePath: 'soinsVisage.jpeg',
      title: 'Web Design Course',
      lessonCount: 28,
      money: 208,
      rating: 4.9,
    ),
    Category(
      imagePath: 'massagerelaxant.jpeg',
      title: 'Web Design Course',
      lessonCount: 28,
      money: 208,
      rating: 4.9,
    ),
    Category(
      imagePath: 'soinsVisage.jpeg',
      title: 'Web Design Course',
      lessonCount: 28,
      money: 208,
      rating: 4.9,
    ),
    Category(
      imagePath: 'massagerelaxant.jpeg',
      title: 'Web Design Course',
      lessonCount: 28,
      money: 208,
      rating: 4.9,
    ),
    Category(
      imagePath: 'soinsVisage.jpeg',
      title: 'Web Design Course',
      lessonCount: 28,
      money: 208,
      rating: 4.9,
    ),
    Category(
      imagePath: 'massagerelaxant.jpeg',
      title: 'Web Design Course',
      lessonCount: 28,
      money: 208,
      rating: 4.9,
    ),
  ];
}
