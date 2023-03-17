class SingletonData {
  SingletonData.internal();
  static final _singleton = SingletonData.internal();

  List listObjects = [];
  void resetData(){
    listObjects.clear();
  }

  factory SingletonData(){
    return _singleton; 
  }

}