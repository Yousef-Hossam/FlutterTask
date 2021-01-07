import 'package:flutter/material.dart';
import 'package:task_github_repo/Model/UserRepos.dart';
import '../Utilities/utility_methods.dart';
import 'file:///F:/YousF74/YoYo%20stuDy/task_github_repo/lib/Utilities/constant.dart';
import 'package:task_github_repo/presnter/user_repo_presenter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> implements UserRepoContract {
  UserReposPresenter _userReposPresenter;
  List<UserRepos> _userRepos = [];
  bool isLoading = false;
  ScrollController _scrollController = ScrollController();
  bool _isGrid = false;

  _HomeScreenState() {
    _userReposPresenter = UserReposPresenter(this);
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (!isLoading) {
      _loadData();
    }
    //  _loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GitHub Repo'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.format_list_bulleted),
            onPressed: () {
              setState(() {
                _isGrid = false;
              });
            },
          ),
          IconButton(
            icon: Icon(Icons.grid_on),
            onPressed: () {
              setState(() {
                _isGrid = true;
              });
            },
          ),
        ],
      ),
      body:SingleChildScrollView(
     child: Column(
       mainAxisAlignment: MainAxisAlignment.start,
       crossAxisAlignment: CrossAxisAlignment.stretch,
       children: [
       SizedBox(
       height:8,
     ),
        Row(children: [
          Padding(padding: EdgeInsets.only(left:12.0),
              child: Text('Hi John',style:titlesStyle,)
          ),
        ],
        ),
        SizedBox(
          height:4,
        ),
        !isLoading
            ? Center(
                child: CircularProgressIndicator(
                backgroundColor: Colors.black,
                valueColor: new AlwaysStoppedAnimation<Color>(Colors.cyan),
              ))
            : _userRepos.length == 0
                ? Center(
                    child: Text(
                      'No Data to show!!',
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                : _isGrid == true
                    ? buildgridView(context)
                    : buildlistHorontalView(),
        ],
     ),
    ),
    );
  }

  Widget buildlistHorontalView() {
    return Container(
      height: getScreenHeight(context)*0.8,
      child: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: ListView.builder(
                controller: _scrollController,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: _userRepos.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    //  child: Container(
                    height: 75,
                    //width: MediaQuery.of(context).size.width * 0.40,
                    child: Card(
                      child: Container(
                        color: Colors.cyanAccent,
                        child: ListTile(
                          title: Text(
                            _userRepos[index].name,
                            style: titlesStyle,
                          ),
                        ),
                      ),
                      elevation: 3,
                    ),
                  );
                })),
      ),
    );
  }  //method to Display list in list view builder

  Widget buildgridView(BuildContext context) {
    return Container(
      height: getScreenHeight(context) * 0.8,
      width: getScreenWidth(context),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: GridView.builder(
            controller: _scrollController,
            shrinkWrap: false,
            scrollDirection: Axis.vertical,
            itemCount: _userRepos.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5.0,
              crossAxisSpacing: 1.0,
              childAspectRatio: 1,
            ),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
//                setState(() {
//                  selectedColor = index;
//                });
                },
                child: Card(
                  color: Colors.greenAccent,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white70, width: 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
//                  child: Container(
//                    color: Colors.lightBlueAccent[100],
                  child: GestureDetector(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            _userRepos[index].name,
                            style: titlesStyle,
                          ),
                        ],
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
//                ),
              );
            }),
      ),
    );
  } //method to Display list in Grid view builder
  _loadData() async {
    await _userReposPresenter.getAllRepos(
        context, Constants.per_Page, Constants.page);
  }  // Method to Call Api
  @override
  void onGetRepoFaild(onError) {
    setState(() {
      isLoading = true;
    });
    // TODO: implement onGetRepoFaild
  }  //request failld

  @override
  void onGetRepoSuccess(List<UserRepos> r) {
    setState(() {
      _userRepos = r;
      print('ResponseSuccess' + _userRepos.length.toString());
      isLoading = true;
    });
    // TODO: implement onGetRepoSuccess
  }  // request Success
}
