import 'package:dietechtic_v01/src/pages/enviar_info_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CenaHipoYAn extends StatelessWidget {
  final List<String> imgList = [
    'assets/img/cenaHipo_1.png',
    'assets/img/cenaHipo_2.png',
    'assets/img/cenaHipo_3.png',
    'assets/img/cenaAn_1.png',
    'assets/img/cenaAn_2.png',
    'assets/img/cenaAn_3.png'
  ];
    
  
  @override
  Widget build(BuildContext context) {
    final _pageController = new PageController(
        initialPage: (imgList.length / 2).floor(), viewportFraction: 0.6);
    
    return ChangeNotifierProvider(
      create: (_) => _CarrousePhotoModel(),
      child: Container(
        height: 280,
        width: double.infinity,
        child: Builder(builder: (BuildContext context) {
          return PageView.builder(
            pageSnapping: true,
            controller: _pageController,
            itemCount: imgList.length,
            itemBuilder: (BuildContext context, int index) {
              return _Image(
                imgPath: imgList[index],
                index: index,
              );
            },
            onPageChanged: (value) {
              Provider.of<_CarrousePhotoModel>(context, listen: false)
                  .pageSelected = value;
            },
          );
        }),
      ),
    );
  }

  
  
}

class _Image extends StatelessWidget {
  _Image({this.imgPath, this.index});

  final String imgPath;
  final int index;

  @override
  Widget build(BuildContext context) {
    final photoModel = Provider.of<_CarrousePhotoModel>(context);
    return InkWell(
      onTap: () {

        if(index == 0){
          Navigator.pushNamed(context, '/cenaHipotiroidismo-1');
        }
        else if(index == 1){
          Navigator.pushNamed(context, '/cenaHipotiroidismo-2');
        }
        else if(index == 2){
          Navigator.pushNamed(context, '/cenaHipotiroidismo-3');
        }
        else if(index == 3){
          Navigator.pushNamed(context, '/cenaAnemia-1');
        }
        else if(index == 4){
          Navigator.pushNamed(context, '/cenaAnemia-2');
        }
        else if(index == 5){
          Navigator.pushNamed(context, '/cenaAnemia-3');
        }
        
        
      },
      child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          padding: EdgeInsets.all(photoModel.pageSelected == index ? 0 : 20),
          height: 100,
          child: Container(
            padding: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      offset: Offset(0, 5),
                      color: Colors.black26,
                      blurRadius: 5,
                      spreadRadius: 3)
                ],
                image: DecorationImage(
                    image: AssetImage(imgPath), fit: BoxFit.cover)),
          )),
    );
  }
}

class _CarrousePhotoModel with ChangeNotifier {
  int _pageSelected = 1;

  int get pageSelected => this._pageSelected;

  set pageSelected(int index) {
    this._pageSelected = index;
    notifyListeners();
  }
}
