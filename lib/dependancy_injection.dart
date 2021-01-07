

import 'package:task_github_repo/Model/UserRepos.dart';
import 'package:task_github_repo/Services/user_repos_services.dart';

class DependanceyInjector {

  static final DependanceyInjector _singleton = new DependanceyInjector._internal();

  factory DependanceyInjector() {
    return _singleton;
  }

  DependanceyInjector._internal();

UserRepositry get alluserRepositry {
return new UserRepoService() ;
}


}