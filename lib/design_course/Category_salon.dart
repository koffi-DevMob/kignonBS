import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'models/CategorieSalon.dart';

class CategorieSalon extends StatefulWidget {
  const CategorieSalon({Key? key, this.callBack}) : super(key: key);

 final Function()? callBack;
  @override
  _CategorieSalonState createState() => _CategorieSalonState();
}

class _CategorieSalonState extends State<CategorieSalon> with TickerProviderStateMixin {
  AnimationController? animationController;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    super.initState();
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 50));
    return true;
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 16),
      child: Container(
        height: 134,
        width: double.infinity,
        child: FutureBuilder<bool>(
          future: getData(),
          builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
            if (!snapshot.hasData) {
              return const SizedBox();
            } else {
              return ListView.builder(
                padding: const EdgeInsets.only(
                    top: 0, bottom: 0, right: 16, left: 16),
                itemCount: CategSalon.categoryList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  final int count = CategSalon.categoryList.length > 10
                      ? 10
                      : CategSalon.categoryList.length;
                  final Animation<double> animation =
                      Tween<double>(begin: 0.0, end: 1.0).animate(
                          CurvedAnimation(
                              parent: animationController!,
                              curve: Interval((1 / count) * index, 1.0,
                                  curve: Curves.fastOutSlowIn)));
                  animationController?.forward();

                  return CategoryViewSalon(
                    categSalon: CategSalon.categoryList[index],
                    animation: animation,
                    animationController: animationController,
                    callback: widget.callBack,
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}

class CategoryViewSalon extends StatelessWidget {
  const CategoryViewSalon(
      {Key? key,
      this.categSalon,
      this.animationController,
      this.animation,
      this.callback,})
      : super(key: key);

  final VoidCallback? callback;
  final CategSalon? categSalon;
  final AnimationController? animationController;
  final Animation<double>? animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController!,
      builder: (BuildContext context, Widget? child) {
        return FadeTransition(
          opacity: animation!,
          child: Transform(
            transform: Matrix4.translationValues(
                100 * (1.0 - animation!.value), 0.0, 0.0),
            child: InkWell(
              splashColor: Colors.transparent,
              onTap: callback,
              child: SizedBox(
                width: 180,
                child: Stack(
                  children: <Widget>[
                    Container(
                     child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(30.0)),
                              child: AspectRatio(
                                  aspectRatio: 1.0,
                                  child: Image.asset(categSalon!.imagePath)),
                     )
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}


