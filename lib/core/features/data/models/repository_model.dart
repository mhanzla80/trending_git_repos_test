import 'package:json_annotation/json_annotation.dart';

part 'repository_model.g.dart';

@JsonSerializable()
class RepositoryModel {
  final int id;
  final String name;
  @JsonKey(name: 'full_name')
  final String fullName;
  @JsonKey(name: 'html_url')
  final String htmlUrl;
  final String? description;
  final Owner owner;
  final License? license;
  @JsonKey(name: 'stargazers_count')
  final int stars;
  @JsonKey(name: 'forks_count')
  final int forks;
  @JsonKey(name: 'open_issues_count')
  final int openIssues;
  final String language;

  RepositoryModel({
    required this.id,
    required this.name,
    required this.fullName,
    required this.htmlUrl,
    this.description,
    required this.owner,
    this.license,
    required this.stars,
    required this.forks,
    required this.openIssues,
    required this.language,
  });

  factory RepositoryModel.fromJson(Map<String, dynamic> json) =>
      _$RepositoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$RepositoryModelToJson(this);
}

@JsonSerializable()
class Owner {
  final String login;
  @JsonKey(name: 'avatar_url')
  final String avatarUrl;

  Owner({
    required this.login,
    required this.avatarUrl,
  });

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);

  Map<String, dynamic> toJson() => _$OwnerToJson(this);
}

@JsonSerializable()
class License {
  final String key;
  final String name;

  License({
    required this.key,
    required this.name,
  });

  factory License.fromJson(Map<String, dynamic> json) =>
      _$LicenseFromJson(json);

  Map<String, dynamic> toJson() => _$LicenseToJson(this);
}
