import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';

class PostModel {
  final String id;
  final String uId;
  final String headerText;
  final String titleText;
  final String subtitleText;
  final List<String> mediaUrls;
  final DateTime date;
  final List<String> likeIds;
  final List<String> commentIds;
  final List<String> shareIds;
  final int ranking;
  final int views;
  final bool isStartup;
  final bool isProject;
  final bool isToolsAndResources;
  final double price;
  final double rating;
  PostModel({
    String? id,
    DateTime? date,
    double? price,
    double? rating,
    required this.uId,
    required this.headerText,
    required this.titleText,
    required this.subtitleText,
    required this.mediaUrls,
    required this.likeIds,
    required this.commentIds,
    required this.shareIds,
    required this.ranking,
    required this.views,
    required this.isStartup,
    required this.isProject,
    required this.isToolsAndResources,
  })  : id = id ?? const Uuid().v4(),
        date = date ?? DateTime.now(),
        price = price ?? 0,
        rating = rating ?? 0;

  PostModel copyWith({
    String? id,
    String? uId,
    String? headerText,
    String? titleText,
    String? subtitleText,
    List<String>? mediaUrls,
    DateTime? date,
    List<String>? likeIds,
    List<String>? commentIds,
    List<String>? shareIds,
    int? ranking,
    int? views,
    bool? isStartup,
    bool? isProject,
    bool? isToolsAndResources,
    double? price,
    double? rating,
  }) {
    return PostModel(
      id: id ?? this.id,
      uId: uId ?? this.uId,
      headerText: headerText ?? this.headerText,
      titleText: titleText ?? this.titleText,
      subtitleText: subtitleText ?? this.subtitleText,
      mediaUrls: mediaUrls ?? this.mediaUrls,
      date: date ?? this.date,
      likeIds: likeIds ?? this.likeIds,
      commentIds: commentIds ?? this.commentIds,
      shareIds: shareIds ?? this.shareIds,
      ranking: ranking ?? this.ranking,
      views: views ?? this.views,
      isStartup: isStartup ?? this.isStartup,
      isProject: isProject ?? this.isProject,
      isToolsAndResources: isToolsAndResources ?? this.isToolsAndResources,
      price: price ?? this.price,
      rating: rating ?? this.rating,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'uId': uId});
    result.addAll({'headerText': headerText});
    result.addAll({'titleText': titleText});
    result.addAll({'subtitleText': subtitleText});
    result.addAll({'mediaUrls': mediaUrls});
    result.addAll({'date': date.millisecondsSinceEpoch});
    result.addAll({'likeIds': likeIds});
    result.addAll({'commentIds': commentIds});
    result.addAll({'shareIds': shareIds});
    result.addAll({'ranking': ranking});
    result.addAll({'views': views});
    result.addAll({'isStartup': isStartup});
    result.addAll({'isProject': isProject});
    result.addAll({'isToolsAndResources': isToolsAndResources});
    result.addAll({'price': price});
    result.addAll({'rating': rating});

    return result;
  }

  factory PostModel.fromMap(Map<String, dynamic> map) {
    return PostModel(
      id: map['id'] ?? '',
      uId: map['uId'] ?? '',
      headerText: map['headerText'] ?? '',
      titleText: map['titleText'] ?? '',
      subtitleText: map['subtitleText'] ?? '',
      mediaUrls: List<String>.from(map['mediaUrls']),
      date: DateTime.fromMillisecondsSinceEpoch(map['date']),
      likeIds: List<String>.from(map['likeIds']),
      commentIds: List<String>.from(map['commentIds']),
      shareIds: List<String>.from(map['shareIds']),
      ranking: map['ranking']?.toInt() ?? 0,
      views: map['views']?.toInt() ?? 0,
      isStartup: map['isStartup'] ?? false,
      isProject: map['isProject'] ?? false,
      isToolsAndResources: map['isToolsAndResources'] ?? false,
      price: map['price']?.toDouble() ?? 0.0,
      rating: map['rating']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory PostModel.fromJson(String source) =>
      PostModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PostModel(id: $id, uId: $uId, headerText: $headerText, titleText: $titleText, subtitleText: $subtitleText, mediaUrls: $mediaUrls, date: $date, likeIds: $likeIds, commentIds: $commentIds, shareIds: $shareIds, ranking: $ranking, views: $views, isStartup: $isStartup, isProject: $isProject, isToolsAndResources: $isToolsAndResources, price: $price, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PostModel &&
        other.id == id &&
        other.uId == uId &&
        other.headerText == headerText &&
        other.titleText == titleText &&
        other.subtitleText == subtitleText &&
        listEquals(other.mediaUrls, mediaUrls) &&
        other.date == date &&
        listEquals(other.likeIds, likeIds) &&
        listEquals(other.commentIds, commentIds) &&
        listEquals(other.shareIds, shareIds) &&
        other.ranking == ranking &&
        other.views == views &&
        other.isStartup == isStartup &&
        other.isProject == isProject &&
        other.isToolsAndResources == isToolsAndResources &&
        other.price == price &&
        other.rating == rating;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        uId.hashCode ^
        headerText.hashCode ^
        titleText.hashCode ^
        subtitleText.hashCode ^
        mediaUrls.hashCode ^
        date.hashCode ^
        likeIds.hashCode ^
        commentIds.hashCode ^
        shareIds.hashCode ^
        ranking.hashCode ^
        views.hashCode ^
        isStartup.hashCode ^
        isProject.hashCode ^
        isToolsAndResources.hashCode ^
        price.hashCode ^
        rating.hashCode;
  }
}
