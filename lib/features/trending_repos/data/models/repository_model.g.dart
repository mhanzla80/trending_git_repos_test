// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RepositoryModel _$RepositoryModelFromJson(Map<String, dynamic> json) =>
    RepositoryModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      fullName: json['full_name'] as String?,
      htmlUrl: json['html_url'] as String?,
      description: json['description'] as String?,
      owner: json['owner'] == null
          ? null
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
      license: json['license'] == null
          ? null
          : License.fromJson(json['license'] as Map<String, dynamic>),
      stars: (json['stargazers_count'] as num?)?.toInt() ?? 0,
      forks: (json['forks_count'] as num?)?.toInt() ?? 0,
      openIssues: (json['open_issues_count'] as num?)?.toInt() ?? 0,
      language: json['language'] as String?,
    );

Map<String, dynamic> _$RepositoryModelToJson(RepositoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'full_name': instance.fullName,
      'html_url': instance.htmlUrl,
      'description': instance.description,
      'owner': instance.owner,
      'license': instance.license,
      'stargazers_count': instance.stars,
      'forks_count': instance.forks,
      'open_issues_count': instance.openIssues,
      'language': instance.language,
    };

Owner _$OwnerFromJson(Map<String, dynamic> json) => Owner(
      login: json['login'] as String?,
      avatarUrl: json['avatar_url'] as String?,
    );

Map<String, dynamic> _$OwnerToJson(Owner instance) => <String, dynamic>{
      'login': instance.login,
      'avatar_url': instance.avatarUrl,
    };

License _$LicenseFromJson(Map<String, dynamic> json) => License(
      key: json['key'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$LicenseToJson(License instance) => <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
    };
