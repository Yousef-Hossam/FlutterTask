class Constants {
  String baseUrl;
  String userRepo;
  static int per_Page = 15  ;
 static int page =1 ;




  Constants(context) {
    baseUrl = 'https://api.github.com/';
    userRepo = baseUrl+'users/john';

  }
}
