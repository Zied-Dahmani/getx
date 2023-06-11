import 'package:get/get.dart';

class MyLocale implements Translations{
  @override
  Map<String, Map<String, String>> get keys => {
    'fr':{'home':'Accueil'},
    'en':{'home':'Home'},
  };

}