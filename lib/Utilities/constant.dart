class Constants {
  String baseUrl;
  String userRepo;
  static int per_Page = 15  ; // every call get only 15 index
 static int page =1 ;  // every time to load more data increase number of page




  Constants(context) {
    baseUrl = 'https://api.github.com/';
    userRepo = baseUrl+'users/john';

  }
}
