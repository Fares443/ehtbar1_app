
import 'package:ehtbar1_app/Myconstaractor.dart';
var _number =0;
class Constrac {
  List<Myconstaractor> _myconstaractor =[
    Myconstaractor(
  Mystring: 'عدد الكواكب فى المجموعه الشمسية هو ثمانية كواكب',
  Myimages: 'images/image-1.jpg',
  Mybool: true),


  Myconstaractor(
  Mystring:' القطط هى حيوانات لاحمه',
  Myimages: 'images/image-2.jpg',
  Mybool: true),


  Myconstaractor(
  Mystring: 'الصين موجودة فى قارة افريقية',
  Myimages: 'images/image-3.jpg',
  Mybool: false),


  Myconstaractor(
  Mystring: 'الارض مسطحه وليست كروية',
  Myimages: 'images/image-4.jpg',
  Mybool: false
  ),


  Myconstaractor(
  Mystring: 'باستطاعة الانسان البقاء على قيد الحياة بدون اكل لحوم',
  Myimages: 'images/image-5.jpg',
  Mybool: true),


  Myconstaractor(
  Mystring: 'الشمس تدور حول الارض والارض تدور حول القمر',
  Myimages: 'images/image-6.jpg',
  Mybool: false),


   Myconstaractor(
   Mystring: 'ما هو الطائر الأسرع في العالم؟ النعامة',
   Myimages: 'images/image-7.jpg',
   Mybool: true),


  ];
  String getString(){
    return _myconstaractor[_number].Mystring;
  }

  String getImage(){
    return _myconstaractor[_number].Myimages;
  }

  bool getBool(){
    return _myconstaractor[_number].Mybool;
  }

  void nextnumber(){
    if(_number<_myconstaractor.length -1) {
      _number++;
    }
  }
  bool isfinsh(){
    if(_number >=_myconstaractor.length -1){
      return true;
    }else{
      return false;
    }
  }

  void resert(){
    _number=0;
  }
}