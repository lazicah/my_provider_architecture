import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:my_provider_architecture_template/core/models/serializers.dart';

part 'news.g.dart';
abstract class NewsData implements Built<NewsData, NewsDataBuilder> {
  @BuiltValueField(wireName: 'NewsID')
  String get newsID;

  @BuiltValueField(wireName: 'Company')
  ComapanyData get company;

  @BuiltValueField(wireName: 'Symbol')
  String get symbol;

  @BuiltValueField(wireName: 'Title')
  String get title;

  @BuiltValueField(wireName: 'Content')
  @nullable
  String get content;

  @BuiltValueField(wireName: 'Type')
  int get type;

  @BuiltValueField(wireName: 'Created')
  String get created;

  @BuiltValueField(wireName: 'URL')
  String get url;

  @BuiltValueField(wireName: 'GeneratedURL')
  String get generatedURL;

  @BuiltValueField(wireName: 'Duration')
  String get duration;

  @nullable
  @BuiltValueField(wireName: 'Comments')
  BuiltList<CommentsData> get commentsData;

  @nullable
  @BuiltValueField(wireName: 'Likes')
  BuiltList<LikesData> get likesData;

  @BuiltValueField(wireName: 'LikesCount')
  int get likesCount;

  @BuiltValueField(wireName: 'DislikesCount')
  int get dislikesCount;

  @BuiltValueField(wireName: 'CommentsCount')
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
  @BuiltValueField(wireName: 'ID')
  int get id;

  @BuiltValueField(wireName: 'Symbol')
  String get symbol;

  @BuiltValueField(wireName: 'Name')
  String get name;

  @BuiltValueField(wireName: 'ISIN')
  @nullable
  String get isin;

  @BuiltValueField(wireName: 'CIK')
  String get cik;

  @BuiltValueField(wireName: 'TradeCount')
  String get tradeCount;

  @BuiltValueField(wireName: 'ViewCount')
  String get viewCount;

  @BuiltValueField(wireName: 'Stock')
  @nullable
  String get stock;

  @BuiltValueField(wireName: 'Stream')
  @nullable
  String get stream;

  @BuiltValueField(wireName: 'LogoPath')
  String get logoPath;

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
