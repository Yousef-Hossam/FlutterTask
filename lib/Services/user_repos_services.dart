
import 'package:flutter/cupertino.dart';
import 'package:http/src/client.dart';
import 'package:task_github_repo/Model/UserRepos.dart';
import 'file:///F:/YousF74/YoYo%20stuDy/task_github_repo/lib/Utilities/constant.dart';
import 'package:task_github_repo/network/api_client.dart';

class UserRepoService extends UserRepositry {
  @override
  Future<List<UserRepos>> getRepos(BuildContext context, int perPage, int pageNum, Client client) async{
    return await getCallService(
      Constants(context).userRepo+'/repos?per_page=$perPage&page=$pageNum', RequestType.GETREPO);
    // TODO: implement getRepos
    throw UnimplementedError();
  } // Api request to get data

}