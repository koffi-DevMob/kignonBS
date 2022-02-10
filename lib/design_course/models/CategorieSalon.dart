class CategSalon {
  CategSalon({
    this.imagePath = '',
  });

  String imagePath;

  static List<CategSalon> categoryList = <CategSalon>[
    CategSalon(
      imagePath: 'assets/logo_kbs.jpeg',
    ),
    CategSalon(
      imagePath: 'kbsyopNiangon.png',
    ),
    CategSalon(
      imagePath: 'kbsyopbelair.png',
    ),
    CategSalon(
      imagePath: 'kignon_barbershop_3.png',
    ),
  ];

}
