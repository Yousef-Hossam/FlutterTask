
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';


List<UserRepos> userRepoFromJson(String str) => List<UserRepos>.from(json.decode(str).map((x) => UserRepos.fromJson(x)));
String userRepoToJson(List<UserRepos> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserRepos {
  UserRepos({
    this.id,
    this.nodeId,
    this.name,
    this.fullName,
    this.private,
    this.owner,
    this.htmlUrl,
    this.description,
    this.fork,
    this.url,
    this.forksUrl,
    this.keysUrl,
    this.collaboratorsUrl,
    this.teamsUrl,
    this.hooksUrl,
    this.issueEventsUrl,
    this.eventsUrl,
    this.assigneesUrl,
    this.branchesUrl,
    this.tagsUrl,
    this.blobsUrl,
    this.gitTagsUrl,
    this.gitRefsUrl,
    this.treesUrl,
    this.statusesUrl,
    this.languagesUrl,
    this.stargazersUrl,
    this.contributorsUrl,
    this.subscribersUrl,
    this.subscriptionUrl,
    this.commitsUrl,
    this.gitCommitsUrl,
    this.commentsUrl,
    this.issueCommentUrl,
    this.contentsUrl,
    this.compareUrl,
    this.mergesUrl,
    this.archiveUrl,
    this.downloadsUrl,
    this.issuesUrl,
    this.pullsUrl,
    this.milestonesUrl,
    this.notificationsUrl,
    this.labelsUrl,
    this.releasesUrl,
    this.deploymentsUrl,
    this.createdAt,
    this.updatedAt,
    this.pushedAt,
    this.gitUrl,
    this.sshUrl,
    this.cloneUrl,
    this.svnUrl,
    this.homepage,
    this.size,
    this.stargazersCount,
    this.watchersCount,
    this.language,
    this.hasIssues,
    this.hasProjects,
    this.hasDownloads,
    this.hasWiki,
    this.hasPages,
    this.forksCount,
    this.mirrorUrl,
    this.archived,
    this.disabled,
    this.openIssuesCount,
    this.license,
    this.forks,
    this.openIssues,
    this.watchers,
    this.defaultBranch,
  });

  int id;
  String nodeId;
  String name;
  String fullName;
  bool private;
  Owner owner;
  String htmlUrl;
  String description;
  bool fork;
  String url;
  String forksUrl;
  String keysUrl;
  String collaboratorsUrl;
  String teamsUrl;
  String hooksUrl;
  String issueEventsUrl;
  String eventsUrl;
  String assigneesUrl;
  String branchesUrl;
  String tagsUrl;
  String blobsUrl;
  String gitTagsUrl;
  String gitRefsUrl;
  String treesUrl;
  String statusesUrl;
  String languagesUrl;
  String stargazersUrl;
  String contributorsUrl;
  String subscribersUrl;
  String subscriptionUrl;
  String commitsUrl;
  String gitCommitsUrl;
  String commentsUrl;
  String issueCommentUrl;
  String contentsUrl;
  String compareUrl;
  String mergesUrl;
  String archiveUrl;
  String downloadsUrl;
  String issuesUrl;
  String pullsUrl;
  String milestonesUrl;
  String notificationsUrl;
  String labelsUrl;
  String releasesUrl;
  String deploymentsUrl;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime pushedAt;
  String gitUrl;
  String sshUrl;
  String cloneUrl;
  String svnUrl;
  String homepage;
  int size;
  int stargazersCount;
  int watchersCount;
  Language language;
  bool hasIssues;
  bool hasProjects;
  bool hasDownloads;
  bool hasWiki;
  bool hasPages;
  int forksCount;
  dynamic mirrorUrl;
  bool archived;
  bool disabled;
  int openIssuesCount;
  License license;
  int forks;
  int openIssues;
  int watchers;
  DefaultBranch defaultBranch;

  factory UserRepos.fromRawJson(String str) => UserRepos.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserRepos.fromJson(Map<String, dynamic> json) => UserRepos(
    id: json["id"] == null ? null : json["id"],
    nodeId: json["node_id"] == null ? null : json["node_id"],
    name: json["name"] == null ? null : json["name"],
    fullName: json["full_name"] == null ? null : json["full_name"],
    private: json["private"] == null ? null : json["private"],
    owner: json["owner"] == null ? null : Owner.fromJson(json["owner"]),
    htmlUrl: json["html_url"] == null ? null : json["html_url"],
    description: json["description"] == null ? null : json["description"],
    fork: json["fork"] == null ? null : json["fork"],
    url: json["url"] == null ? null : json["url"],
    forksUrl: json["forks_url"] == null ? null : json["forks_url"],
    keysUrl: json["keys_url"] == null ? null : json["keys_url"],
    collaboratorsUrl: json["collaborators_url"] == null ? null : json["collaborators_url"],
    teamsUrl: json["teams_url"] == null ? null : json["teams_url"],
    hooksUrl: json["hooks_url"] == null ? null : json["hooks_url"],
    issueEventsUrl: json["issue_events_url"] == null ? null : json["issue_events_url"],
    eventsUrl: json["events_url"] == null ? null : json["events_url"],
    assigneesUrl: json["assignees_url"] == null ? null : json["assignees_url"],
    branchesUrl: json["branches_url"] == null ? null : json["branches_url"],
    tagsUrl: json["tags_url"] == null ? null : json["tags_url"],
    blobsUrl: json["blobs_url"] == null ? null : json["blobs_url"],
    gitTagsUrl: json["git_tags_url"] == null ? null : json["git_tags_url"],
    gitRefsUrl: json["git_refs_url"] == null ? null : json["git_refs_url"],
    treesUrl: json["trees_url"] == null ? null : json["trees_url"],
    statusesUrl: json["statuses_url"] == null ? null : json["statuses_url"],
    languagesUrl: json["languages_url"] == null ? null : json["languages_url"],
    stargazersUrl: json["stargazers_url"] == null ? null : json["stargazers_url"],
    contributorsUrl: json["contributors_url"] == null ? null : json["contributors_url"],
    subscribersUrl: json["subscribers_url"] == null ? null : json["subscribers_url"],
    subscriptionUrl: json["subscription_url"] == null ? null : json["subscription_url"],
    commitsUrl: json["commits_url"] == null ? null : json["commits_url"],
    gitCommitsUrl: json["git_commits_url"] == null ? null : json["git_commits_url"],
    commentsUrl: json["comments_url"] == null ? null : json["comments_url"],
    issueCommentUrl: json["issue_comment_url"] == null ? null : json["issue_comment_url"],
    contentsUrl: json["contents_url"] == null ? null : json["contents_url"],
    compareUrl: json["compare_url"] == null ? null : json["compare_url"],
    mergesUrl: json["merges_url"] == null ? null : json["merges_url"],
    archiveUrl: json["archive_url"] == null ? null : json["archive_url"],
    downloadsUrl: json["downloads_url"] == null ? null : json["downloads_url"],
    issuesUrl: json["issues_url"] == null ? null : json["issues_url"],
    pullsUrl: json["pulls_url"] == null ? null : json["pulls_url"],
    milestonesUrl: json["milestones_url"] == null ? null : json["milestones_url"],
    notificationsUrl: json["notifications_url"] == null ? null : json["notifications_url"],
    labelsUrl: json["labels_url"] == null ? null : json["labels_url"],
    releasesUrl: json["releases_url"] == null ? null : json["releases_url"],
    deploymentsUrl: json["deployments_url"] == null ? null : json["deployments_url"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    pushedAt: json["pushed_at"] == null ? null : DateTime.parse(json["pushed_at"]),
    gitUrl: json["git_url"] == null ? null : json["git_url"],
    sshUrl: json["ssh_url"] == null ? null : json["ssh_url"],
    cloneUrl: json["clone_url"] == null ? null : json["clone_url"],
    svnUrl: json["svn_url"] == null ? null : json["svn_url"],
    homepage: json["homepage"] == null ? null : json["homepage"],
    size: json["size"] == null ? null : json["size"],
    stargazersCount: json["stargazers_count"] == null ? null : json["stargazers_count"],
    watchersCount: json["watchers_count"] == null ? null : json["watchers_count"],
    language: json["language"] == null ? null : languageValues.map[json["language"]],
    hasIssues: json["has_issues"] == null ? null : json["has_issues"],
    hasProjects: json["has_projects"] == null ? null : json["has_projects"],
    hasDownloads: json["has_downloads"] == null ? null : json["has_downloads"],
    hasWiki: json["has_wiki"] == null ? null : json["has_wiki"],
    hasPages: json["has_pages"] == null ? null : json["has_pages"],
    forksCount: json["forks_count"] == null ? null : json["forks_count"],
    mirrorUrl: json["mirror_url"],
    archived: json["archived"] == null ? null : json["archived"],
    disabled: json["disabled"] == null ? null : json["disabled"],
    openIssuesCount: json["open_issues_count"] == null ? null : json["open_issues_count"],
    license: json["license"] == null ? null : License.fromJson(json["license"]),
    forks: json["forks"] == null ? null : json["forks"],
    openIssues: json["open_issues"] == null ? null : json["open_issues"],
    watchers: json["watchers"] == null ? null : json["watchers"],
    defaultBranch: json["default_branch"] == null ? null : defaultBranchValues.map[json["default_branch"]],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "node_id": nodeId == null ? null : nodeId,
    "name": name == null ? null : name,
    "full_name": fullName == null ? null : fullName,
    "private": private == null ? null : private,
    "owner": owner == null ? null : owner.toJson(),
    "html_url": htmlUrl == null ? null : htmlUrl,
    "description": description == null ? null : description,
    "fork": fork == null ? null : fork,
    "url": url == null ? null : url,
    "forks_url": forksUrl == null ? null : forksUrl,
    "keys_url": keysUrl == null ? null : keysUrl,
    "collaborators_url": collaboratorsUrl == null ? null : collaboratorsUrl,
    "teams_url": teamsUrl == null ? null : teamsUrl,
    "hooks_url": hooksUrl == null ? null : hooksUrl,
    "issue_events_url": issueEventsUrl == null ? null : issueEventsUrl,
    "events_url": eventsUrl == null ? null : eventsUrl,
    "assignees_url": assigneesUrl == null ? null : assigneesUrl,
    "branches_url": branchesUrl == null ? null : branchesUrl,
    "tags_url": tagsUrl == null ? null : tagsUrl,
    "blobs_url": blobsUrl == null ? null : blobsUrl,
    "git_tags_url": gitTagsUrl == null ? null : gitTagsUrl,
    "git_refs_url": gitRefsUrl == null ? null : gitRefsUrl,
    "trees_url": treesUrl == null ? null : treesUrl,
    "statuses_url": statusesUrl == null ? null : statusesUrl,
    "languages_url": languagesUrl == null ? null : languagesUrl,
    "stargazers_url": stargazersUrl == null ? null : stargazersUrl,
    "contributors_url": contributorsUrl == null ? null : contributorsUrl,
    "subscribers_url": subscribersUrl == null ? null : subscribersUrl,
    "subscription_url": subscriptionUrl == null ? null : subscriptionUrl,
    "commits_url": commitsUrl == null ? null : commitsUrl,
    "git_commits_url": gitCommitsUrl == null ? null : gitCommitsUrl,
    "comments_url": commentsUrl == null ? null : commentsUrl,
    "issue_comment_url": issueCommentUrl == null ? null : issueCommentUrl,
    "contents_url": contentsUrl == null ? null : contentsUrl,
    "compare_url": compareUrl == null ? null : compareUrl,
    "merges_url": mergesUrl == null ? null : mergesUrl,
    "archive_url": archiveUrl == null ? null : archiveUrl,
    "downloads_url": downloadsUrl == null ? null : downloadsUrl,
    "issues_url": issuesUrl == null ? null : issuesUrl,
    "pulls_url": pullsUrl == null ? null : pullsUrl,
    "milestones_url": milestonesUrl == null ? null : milestonesUrl,
    "notifications_url": notificationsUrl == null ? null : notificationsUrl,
    "labels_url": labelsUrl == null ? null : labelsUrl,
    "releases_url": releasesUrl == null ? null : releasesUrl,
    "deployments_url": deploymentsUrl == null ? null : deploymentsUrl,
    "created_at": createdAt == null ? null : createdAt.toIso8601String(),
    "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
    "pushed_at": pushedAt == null ? null : pushedAt.toIso8601String(),
    "git_url": gitUrl == null ? null : gitUrl,
    "ssh_url": sshUrl == null ? null : sshUrl,
    "clone_url": cloneUrl == null ? null : cloneUrl,
    "svn_url": svnUrl == null ? null : svnUrl,
    "homepage": homepage == null ? null : homepage,
    "size": size == null ? null : size,
    "stargazers_count": stargazersCount == null ? null : stargazersCount,
    "watchers_count": watchersCount == null ? null : watchersCount,
    "language": language == null ? null : languageValues.reverse[language],
    "has_issues": hasIssues == null ? null : hasIssues,
    "has_projects": hasProjects == null ? null : hasProjects,
    "has_downloads": hasDownloads == null ? null : hasDownloads,
    "has_wiki": hasWiki == null ? null : hasWiki,
    "has_pages": hasPages == null ? null : hasPages,
    "forks_count": forksCount == null ? null : forksCount,
    "mirror_url": mirrorUrl,
    "archived": archived == null ? null : archived,
    "disabled": disabled == null ? null : disabled,
    "open_issues_count": openIssuesCount == null ? null : openIssuesCount,
    "license": license == null ? null : license.toJson(),
    "forks": forks == null ? null : forks,
    "open_issues": openIssues == null ? null : openIssues,
    "watchers": watchers == null ? null : watchers,
    "default_branch": defaultBranch == null ? null : defaultBranchValues.reverse[defaultBranch],
  };
}

enum DefaultBranch { MASTER }

final defaultBranchValues = EnumValues({
  "master": DefaultBranch.MASTER
});

enum Language { RUBY, JAVA_SCRIPT, PYTHON, GO }

final languageValues = EnumValues({
  "Go": Language.GO,
  "JavaScript": Language.JAVA_SCRIPT,
  "Python": Language.PYTHON,
  "Ruby": Language.RUBY
});

class License {
  License({
    this.key,
    this.name,
    this.spdxId,
    this.url,
    this.nodeId,
  });

  Key key;
  Name name;
  SpdxId spdxId;
  String url;
  LicenseNodeId nodeId;

  factory License.fromRawJson(String str) => License.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory License.fromJson(Map<String, dynamic> json) => License(
    key: json["key"] == null ? null : keyValues.map[json["key"]],
    name: json["name"] == null ? null : nameValues.map[json["name"]],
    spdxId: json["spdx_id"] == null ? null : spdxIdValues.map[json["spdx_id"]],
    url: json["url"] == null ? null : json["url"],
    nodeId: json["node_id"] == null ? null : licenseNodeIdValues.map[json["node_id"]],
  );

  Map<String, dynamic> toJson() => {
    "key": key == null ? null : keyValues.reverse[key],
    "name": name == null ? null : nameValues.reverse[name],
    "spdx_id": spdxId == null ? null : spdxIdValues.reverse[spdxId],
    "url": url == null ? null : url,
    "node_id": nodeId == null ? null : licenseNodeIdValues.reverse[nodeId],
  };
}

enum Key { OTHER, MIT, APACHE_20 }

final keyValues = EnumValues({
  "apache-2.0": Key.APACHE_20,
  "mit": Key.MIT,
  "other": Key.OTHER
});

enum Name { OTHER, MIT_LICENSE, APACHE_LICENSE_20 }

final nameValues = EnumValues({
  "Apache License 2.0": Name.APACHE_LICENSE_20,
  "MIT License": Name.MIT_LICENSE,
  "Other": Name.OTHER
});

enum LicenseNodeId { M_DC6_T_GLJ_ZW5_Z_ZTA, M_DC6_T_GLJ_ZW5_Z_ZT_EZ, M_DC6_T_GLJ_ZW5_Z_ZTI }

final licenseNodeIdValues = EnumValues({
  "MDc6TGljZW5zZTA=": LicenseNodeId.M_DC6_T_GLJ_ZW5_Z_ZTA,
  "MDc6TGljZW5zZTI=": LicenseNodeId.M_DC6_T_GLJ_ZW5_Z_ZTI,
  "MDc6TGljZW5zZTEz": LicenseNodeId.M_DC6_T_GLJ_ZW5_Z_ZT_EZ
});

enum SpdxId { NOASSERTION, MIT, APACHE_20 }

final spdxIdValues = EnumValues({
  "Apache-2.0": SpdxId.APACHE_20,
  "MIT": SpdxId.MIT,
  "NOASSERTION": SpdxId.NOASSERTION
});

class Owner {
  Owner({
    this.login,
    this.id,
    this.nodeId,
    this.avatarUrl,
    this.gravatarId,
    this.url,
    this.htmlUrl,
    this.followersUrl,
    this.followingUrl,
    this.gistsUrl,
    this.starredUrl,
    this.subscriptionsUrl,
    this.organizationsUrl,
    this.reposUrl,
    this.eventsUrl,
    this.receivedEventsUrl,
    this.type,
    this.siteAdmin,
  });

  Login login;
  int id;
  OwnerNodeId nodeId;
  String avatarUrl;
  String gravatarId;
  String url;
  String htmlUrl;
  String followersUrl;
  FollowingUrl followingUrl;
  GistsUrl gistsUrl;
  StarredUrl starredUrl;
  String subscriptionsUrl;
  String organizationsUrl;
  String reposUrl;
  EventsUrl eventsUrl;
  String receivedEventsUrl;
  Type type;
  bool siteAdmin;

  factory Owner.fromRawJson(String str) => Owner.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Owner.fromJson(Map<String, dynamic> json) => Owner(
    login: json["login"] == null ? null : loginValues.map[json["login"]],
    id: json["id"] == null ? null : json["id"],
    nodeId: json["node_id"] == null ? null : ownerNodeIdValues.map[json["node_id"]],
    avatarUrl: json["avatar_url"] == null ? null : json["avatar_url"],
    gravatarId: json["gravatar_id"] == null ? null : json["gravatar_id"],
    url: json["url"] == null ? null : json["url"],
    htmlUrl: json["html_url"] == null ? null : json["html_url"],
    followersUrl: json["followers_url"] == null ? null : json["followers_url"],
    followingUrl: json["following_url"] == null ? null : followingUrlValues.map[json["following_url"]],
    gistsUrl: json["gists_url"] == null ? null : gistsUrlValues.map[json["gists_url"]],
    starredUrl: json["starred_url"] == null ? null : starredUrlValues.map[json["starred_url"]],
    subscriptionsUrl: json["subscriptions_url"] == null ? null : json["subscriptions_url"],
    organizationsUrl: json["organizations_url"] == null ? null : json["organizations_url"],
    reposUrl: json["repos_url"] == null ? null : json["repos_url"],
    eventsUrl: json["events_url"] == null ? null : eventsUrlValues.map[json["events_url"]],
    receivedEventsUrl: json["received_events_url"] == null ? null : json["received_events_url"],
    type: json["type"] == null ? null : typeValues.map[json["type"]],
    siteAdmin: json["site_admin"] == null ? null : json["site_admin"],
  );

  Map<String, dynamic> toJson() => {
    "login": login == null ? null : loginValues.reverse[login],
    "id": id == null ? null : id,
    "node_id": nodeId == null ? null : ownerNodeIdValues.reverse[nodeId],
    "avatar_url": avatarUrl == null ? null : avatarUrl,
    "gravatar_id": gravatarId == null ? null : gravatarId,
    "url": url == null ? null : url,
    "html_url": htmlUrl == null ? null : htmlUrl,
    "followers_url": followersUrl == null ? null : followersUrl,
    "following_url": followingUrl == null ? null : followingUrlValues.reverse[followingUrl],
    "gists_url": gistsUrl == null ? null : gistsUrlValues.reverse[gistsUrl],
    "starred_url": starredUrl == null ? null : starredUrlValues.reverse[starredUrl],
    "subscriptions_url": subscriptionsUrl == null ? null : subscriptionsUrl,
    "organizations_url": organizationsUrl == null ? null : organizationsUrl,
    "repos_url": reposUrl == null ? null : reposUrl,
    "events_url": eventsUrl == null ? null : eventsUrlValues.reverse[eventsUrl],
    "received_events_url": receivedEventsUrl == null ? null : receivedEventsUrl,
    "type": type == null ? null : typeValues.reverse[type],
    "site_admin": siteAdmin == null ? null : siteAdmin,
  };
}

enum EventsUrl { HTTPS_API_GITHUB_COM_USERS_JOHN_EVENTS_PRIVACY }

final eventsUrlValues = EnumValues({
  "https://api.github.com/users/john/events{/privacy}": EventsUrl.HTTPS_API_GITHUB_COM_USERS_JOHN_EVENTS_PRIVACY
});

enum FollowingUrl { HTTPS_API_GITHUB_COM_USERS_JOHN_FOLLOWING_OTHER_USER }

final followingUrlValues = EnumValues({
  "https://api.github.com/users/john/following{/other_user}": FollowingUrl.HTTPS_API_GITHUB_COM_USERS_JOHN_FOLLOWING_OTHER_USER
});

enum GistsUrl { HTTPS_API_GITHUB_COM_USERS_JOHN_GISTS_GIST_ID }

final gistsUrlValues = EnumValues({
  "https://api.github.com/users/john/gists{/gist_id}": GistsUrl.HTTPS_API_GITHUB_COM_USERS_JOHN_GISTS_GIST_ID
});

enum Login { JOHN }

final loginValues = EnumValues({
  "john": Login.JOHN
});

enum OwnerNodeId { MDQ6_VX_NLCJ_E2_NJG }

final ownerNodeIdValues = EnumValues({
  "MDQ6VXNlcjE2Njg=": OwnerNodeId.MDQ6_VX_NLCJ_E2_NJG
});

enum StarredUrl { HTTPS_API_GITHUB_COM_USERS_JOHN_STARRED_OWNER_REPO }

final starredUrlValues = EnumValues({
  "https://api.github.com/users/john/starred{/owner}{/repo}": StarredUrl.HTTPS_API_GITHUB_COM_USERS_JOHN_STARRED_OWNER_REPO
});

enum Type { USER }

final typeValues = EnumValues({
  "User": Type.USER
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
List<UserRepos> sucssessResponseGetRepos(String data) {

  return userRepoFromJson(data);
}

abstract class UserRepositry{
 Future <List<UserRepos>> getRepos(BuildContext context ,int perPage,int pageNum,
     http.Client client);
}
