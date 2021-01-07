
import 'package:flutter/cupertino.dart';
import 'package:task_github_repo/Model/UserRepos.dart';
import 'package:task_github_repo/dependancy_injection.dart';
import 'package:http/http.dart' as http;

abstract class UserRepoContract{  // view Contract class
  void onGetRepoSuccess(List<UserRepos> r);
  void onGetRepoFaild(onError);
}

class UserReposPresenter {
  UserRepoContract _userRepoContract ;
  UserRepositry _userReposPresenter ;

  UserReposPresenter(this._userRepoContract){
    _userReposPresenter = DependanceyInjector().alluserRepositry;
  }

  getAllRepos(BuildContext context,int perPage , int pageNum){
    _userReposPresenter.getRepos(context,perPage,pageNum ,http.Client())
        .then((m) => _userRepoContract.onGetRepoSuccess(m))
        .catchError((onError) =>_userRepoContract.onGetRepoFaild(onError));
  }
}