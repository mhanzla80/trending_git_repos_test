import 'package:json_annotation/json_annotation.dart';

part 'repository_model.g.dart';

@JsonSerializable()
class RepositoryModel {
  final int? id;
  final String? name;
  @JsonKey(name: 'full_name')
  final String? fullName;
  @JsonKey(name: 'html_url')
  final String? htmlUrl;
  final String? description;
  final Owner? owner;
  final License? license;
  @JsonKey(name: 'stargazers_count', defaultValue: 0)
  final int stars;
  @JsonKey(name: 'forks_count', defaultValue: 0)
  final int forks;
  @JsonKey(name: 'open_issues_count', defaultValue: 0)
  final int openIssues;
  final String? language;

  const RepositoryModel({
    this.id,
    this.name,
    this.fullName,
    this.htmlUrl,
    this.description,
    this.owner,
    this.license,
    this.stars = 0,
    this.forks = 0,
    this.openIssues = 0,
    this.language,
  });

  factory RepositoryModel.fromJson(Map<String, dynamic> json) =>
      _$RepositoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$RepositoryModelToJson(this);
}

@JsonSerializable()
class Owner {
  final String? login;
  @JsonKey(name: 'avatar_url')
  final String? avatarUrl;

  const Owner({
    this.login,
    this.avatarUrl,
  });

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);

  Map<String, dynamic> toJson() => _$OwnerToJson(this);
}

@JsonSerializable()
class License {
  final String? key;
  final String? name;

  const License({
    this.key,
    this.name,
  });

  factory License.fromJson(Map<String, dynamic> json) =>
      _$LicenseFromJson(json);

  Map<String, dynamic> toJson() => _$LicenseToJson(this);
}
