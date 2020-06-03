import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

abstract class NewsData implements Built<NewsData, NewsDataBuilder> {
  String get newsID;

  BuiltList<ComapanyData> get companyData;

  String get symbol;

  String get title;

  @nullable
  String get content;

  String get type;

  String get created;
  String get url;
  String get generatedURL;

  String get duration;

  BuiltList<CommentsData> get commentsData;

  BuiltList<LikesData> get likesData;

  int get likesCount;

  int get getDislikesCount;
  int get commentsCount;

  NewsData._();
  factory NewsData([void Function(NewsDataBuilder) updates]) = _$NewsData;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(NewsData.serializer, this);
  }

  static NewsData fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(NewsData.serializer, json);
  }

  static Serializer<NewsData> get serializer => _$newsDataSerializer;
}

abstract class ComapanyData
    implements Built<ComapanyData, ComapanyDataBuilder> {
  ComapanyData._();
  factory ComapanyData([void Function(ComapanyDataBuilder) updates]) =
      _$ComapanyData;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(ComapanyData.serializer, this);
  }

  static ComapanyData fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(ComapanyData.serializer, json);
  }

  static Serializer<ComapanyData> get serializer => _$comapanyDataSerializer;
}

abstract class CommentsData
    implements Built<CommentsData, CommentsDataBuilder> {
  CommentsData._();
  factory CommentsData([void Function(CommentsDataBuilder) updates]) =
      _$CommentsData;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(CommentsData.serializer, this);
  }

  static CommentsData fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(CommentsData.serializer, json);
  }

  static Serializer<CommentsData> get serializer => _$commentsDataSerializer;
}

abstract class LikesData implements Built<LikesData, LikesDataBuilder> {
  LikesData._();
  factory LikesData([void Function(LikesDataBuilder) updates]) = _$LikesData;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(LikesData.serializer, this);
  }

  static LikesData fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(LikesData.serializer, json);
  }

  static Serializer<LikesData> get serializer => _$likesDataSerializer;
}
