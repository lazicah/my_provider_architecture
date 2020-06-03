// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NewsData> _$newsDataSerializer = new _$NewsDataSerializer();
Serializer<ComapanyData> _$comapanyDataSerializer =
    new _$ComapanyDataSerializer();
Serializer<CommentsData> _$commentsDataSerializer =
    new _$CommentsDataSerializer();
Serializer<LikesData> _$likesDataSerializer = new _$LikesDataSerializer();

class _$NewsDataSerializer implements StructuredSerializer<NewsData> {
  @override
  final Iterable<Type> types = const [NewsData, _$NewsData];
  @override
  final String wireName = 'NewsData';

  @override
  Iterable<Object> serialize(Serializers serializers, NewsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'NewsID',
      serializers.serialize(object.newsID,
          specifiedType: const FullType(String)),
      'Company',
      serializers.serialize(object.company,
          specifiedType: const FullType(ComapanyData)),
      'Symbol',
      serializers.serialize(object.symbol,
          specifiedType: const FullType(String)),
      'Title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'Type',
      serializers.serialize(object.type, specifiedType: const FullType(int)),
      'Created',
      serializers.serialize(object.created,
          specifiedType: const FullType(String)),
      'URL',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'GeneratedURL',
      serializers.serialize(object.generatedURL,
          specifiedType: const FullType(String)),
      'Duration',
      serializers.serialize(object.duration,
          specifiedType: const FullType(String)),
      'LikesCount',
      serializers.serialize(object.likesCount,
          specifiedType: const FullType(int)),
      'DislikesCount',
      serializers.serialize(object.dislikesCount,
          specifiedType: const FullType(int)),
      'CommentsCount',
      serializers.serialize(object.commentsCount,
          specifiedType: const FullType(int)),
    ];
    if (object.content != null) {
      result
        ..add('Content')
        ..add(serializers.serialize(object.content,
            specifiedType: const FullType(String)));
    }
    if (object.commentsData != null) {
      result
        ..add('Comments')
        ..add(serializers.serialize(object.commentsData,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CommentsData)])));
    }
    if (object.likesData != null) {
      result
        ..add('Likes')
        ..add(serializers.serialize(object.likesData,
            specifiedType:
                const FullType(BuiltList, const [const FullType(LikesData)])));
    }
    return result;
  }

  @override
  NewsData deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NewsDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'NewsID':
          result.newsID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Company':
          result.company.replace(serializers.deserialize(value,
              specifiedType: const FullType(ComapanyData)) as ComapanyData);
          break;
        case 'Symbol':
          result.symbol = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'Created':
          result.created = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'URL':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'GeneratedURL':
          result.generatedURL = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Comments':
          result.commentsData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CommentsData)]))
              as BuiltList<Object>);
          break;
        case 'Likes':
          result.likesData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(LikesData)]))
              as BuiltList<Object>);
          break;
        case 'LikesCount':
          result.likesCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'DislikesCount':
          result.dislikesCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'CommentsCount':
          result.commentsCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ComapanyDataSerializer implements StructuredSerializer<ComapanyData> {
  @override
  final Iterable<Type> types = const [ComapanyData, _$ComapanyData];
  @override
  final String wireName = 'ComapanyData';

  @override
  Iterable<Object> serialize(Serializers serializers, ComapanyData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'ID',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'Symbol',
      serializers.serialize(object.symbol,
          specifiedType: const FullType(String)),
      'Name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'CIK',
      serializers.serialize(object.cik, specifiedType: const FullType(String)),
      'TradeCount',
      serializers.serialize(object.tradeCount,
          specifiedType: const FullType(String)),
      'ViewCount',
      serializers.serialize(object.viewCount,
          specifiedType: const FullType(String)),
      'LogoPath',
      serializers.serialize(object.logoPath,
          specifiedType: const FullType(String)),
    ];
    if (object.isin != null) {
      result
        ..add('ISIN')
        ..add(serializers.serialize(object.isin,
            specifiedType: const FullType(String)));
    }
    if (object.stock != null) {
      result
        ..add('Stock')
        ..add(serializers.serialize(object.stock,
            specifiedType: const FullType(String)));
    }
    if (object.stream != null) {
      result
        ..add('Stream')
        ..add(serializers.serialize(object.stream,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ComapanyData deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ComapanyDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'ID':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'Symbol':
          result.symbol = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ISIN':
          result.isin = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'CIK':
          result.cik = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'TradeCount':
          result.tradeCount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ViewCount':
          result.viewCount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Stock':
          result.stock = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Stream':
          result.stream = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'LogoPath':
          result.logoPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CommentsDataSerializer implements StructuredSerializer<CommentsData> {
  @override
  final Iterable<Type> types = const [CommentsData, _$CommentsData];
  @override
  final String wireName = 'CommentsData';

  @override
  Iterable<Object> serialize(Serializers serializers, CommentsData object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  CommentsData deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new CommentsDataBuilder().build();
  }
}

class _$LikesDataSerializer implements StructuredSerializer<LikesData> {
  @override
  final Iterable<Type> types = const [LikesData, _$LikesData];
  @override
  final String wireName = 'LikesData';

  @override
  Iterable<Object> serialize(Serializers serializers, LikesData object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  LikesData deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new LikesDataBuilder().build();
  }
}

class _$NewsData extends NewsData {
  @override
  final String newsID;
  @override
  final ComapanyData company;
  @override
  final String symbol;
  @override
  final String title;
  @override
  final String content;
  @override
  final int type;
  @override
  final String created;
  @override
  final String url;
  @override
  final String generatedURL;
  @override
  final String duration;
  @override
  final BuiltList<CommentsData> commentsData;
  @override
  final BuiltList<LikesData> likesData;
  @override
  final int likesCount;
  @override
  final int dislikesCount;
  @override
  final int commentsCount;

  factory _$NewsData([void Function(NewsDataBuilder) updates]) =>
      (new NewsDataBuilder()..update(updates)).build();

  _$NewsData._(
      {this.newsID,
      this.company,
      this.symbol,
      this.title,
      this.content,
      this.type,
      this.created,
      this.url,
      this.generatedURL,
      this.duration,
      this.commentsData,
      this.likesData,
      this.likesCount,
      this.dislikesCount,
      this.commentsCount})
      : super._() {
    if (newsID == null) {
      throw new BuiltValueNullFieldError('NewsData', 'newsID');
    }
    if (company == null) {
      throw new BuiltValueNullFieldError('NewsData', 'company');
    }
    if (symbol == null) {
      throw new BuiltValueNullFieldError('NewsData', 'symbol');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('NewsData', 'title');
    }
    if (type == null) {
      throw new BuiltValueNullFieldError('NewsData', 'type');
    }
    if (created == null) {
      throw new BuiltValueNullFieldError('NewsData', 'created');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('NewsData', 'url');
    }
    if (generatedURL == null) {
      throw new BuiltValueNullFieldError('NewsData', 'generatedURL');
    }
    if (duration == null) {
      throw new BuiltValueNullFieldError('NewsData', 'duration');
    }
    if (likesCount == null) {
      throw new BuiltValueNullFieldError('NewsData', 'likesCount');
    }
    if (dislikesCount == null) {
      throw new BuiltValueNullFieldError('NewsData', 'dislikesCount');
    }
    if (commentsCount == null) {
      throw new BuiltValueNullFieldError('NewsData', 'commentsCount');
    }
  }

  @override
  NewsData rebuild(void Function(NewsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewsDataBuilder toBuilder() => new NewsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewsData &&
        newsID == other.newsID &&
        company == other.company &&
        symbol == other.symbol &&
        title == other.title &&
        content == other.content &&
        type == other.type &&
        created == other.created &&
        url == other.url &&
        generatedURL == other.generatedURL &&
        duration == other.duration &&
        commentsData == other.commentsData &&
        likesData == other.likesData &&
        likesCount == other.likesCount &&
        dislikesCount == other.dislikesCount &&
        commentsCount == other.commentsCount;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                0,
                                                                newsID
                                                                    .hashCode),
                                                            company.hashCode),
                                                        symbol.hashCode),
                                                    title.hashCode),
                                                content.hashCode),
                                            type.hashCode),
                                        created.hashCode),
                                    url.hashCode),
                                generatedURL.hashCode),
                            duration.hashCode),
                        commentsData.hashCode),
                    likesData.hashCode),
                likesCount.hashCode),
            dislikesCount.hashCode),
        commentsCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NewsData')
          ..add('newsID', newsID)
          ..add('company', company)
          ..add('symbol', symbol)
          ..add('title', title)
          ..add('content', content)
          ..add('type', type)
          ..add('created', created)
          ..add('url', url)
          ..add('generatedURL', generatedURL)
          ..add('duration', duration)
          ..add('commentsData', commentsData)
          ..add('likesData', likesData)
          ..add('likesCount', likesCount)
          ..add('dislikesCount', dislikesCount)
          ..add('commentsCount', commentsCount))
        .toString();
  }
}

class NewsDataBuilder implements Builder<NewsData, NewsDataBuilder> {
  _$NewsData _$v;

  String _newsID;
  String get newsID => _$this._newsID;
  set newsID(String newsID) => _$this._newsID = newsID;

  ComapanyDataBuilder _company;
  ComapanyDataBuilder get company =>
      _$this._company ??= new ComapanyDataBuilder();
  set company(ComapanyDataBuilder company) => _$this._company = company;

  String _symbol;
  String get symbol => _$this._symbol;
  set symbol(String symbol) => _$this._symbol = symbol;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _content;
  String get content => _$this._content;
  set content(String content) => _$this._content = content;

  int _type;
  int get type => _$this._type;
  set type(int type) => _$this._type = type;

  String _created;
  String get created => _$this._created;
  set created(String created) => _$this._created = created;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _generatedURL;
  String get generatedURL => _$this._generatedURL;
  set generatedURL(String generatedURL) => _$this._generatedURL = generatedURL;

  String _duration;
  String get duration => _$this._duration;
  set duration(String duration) => _$this._duration = duration;

  ListBuilder<CommentsData> _commentsData;
  ListBuilder<CommentsData> get commentsData =>
      _$this._commentsData ??= new ListBuilder<CommentsData>();
  set commentsData(ListBuilder<CommentsData> commentsData) =>
      _$this._commentsData = commentsData;

  ListBuilder<LikesData> _likesData;
  ListBuilder<LikesData> get likesData =>
      _$this._likesData ??= new ListBuilder<LikesData>();
  set likesData(ListBuilder<LikesData> likesData) =>
      _$this._likesData = likesData;

  int _likesCount;
  int get likesCount => _$this._likesCount;
  set likesCount(int likesCount) => _$this._likesCount = likesCount;

  int _dislikesCount;
  int get dislikesCount => _$this._dislikesCount;
  set dislikesCount(int dislikesCount) => _$this._dislikesCount = dislikesCount;

  int _commentsCount;
  int get commentsCount => _$this._commentsCount;
  set commentsCount(int commentsCount) => _$this._commentsCount = commentsCount;

  NewsDataBuilder();

  NewsDataBuilder get _$this {
    if (_$v != null) {
      _newsID = _$v.newsID;
      _company = _$v.company?.toBuilder();
      _symbol = _$v.symbol;
      _title = _$v.title;
      _content = _$v.content;
      _type = _$v.type;
      _created = _$v.created;
      _url = _$v.url;
      _generatedURL = _$v.generatedURL;
      _duration = _$v.duration;
      _commentsData = _$v.commentsData?.toBuilder();
      _likesData = _$v.likesData?.toBuilder();
      _likesCount = _$v.likesCount;
      _dislikesCount = _$v.dislikesCount;
      _commentsCount = _$v.commentsCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewsData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NewsData;
  }

  @override
  void update(void Function(NewsDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NewsData build() {
    _$NewsData _$result;
    try {
      _$result = _$v ??
          new _$NewsData._(
              newsID: newsID,
              company: company.build(),
              symbol: symbol,
              title: title,
              content: content,
              type: type,
              created: created,
              url: url,
              generatedURL: generatedURL,
              duration: duration,
              commentsData: _commentsData?.build(),
              likesData: _likesData?.build(),
              likesCount: likesCount,
              dislikesCount: dislikesCount,
              commentsCount: commentsCount);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'company';
        company.build();

        _$failedField = 'commentsData';
        _commentsData?.build();
        _$failedField = 'likesData';
        _likesData?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NewsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ComapanyData extends ComapanyData {
  @override
  final int id;
  @override
  final String symbol;
  @override
  final String name;
  @override
  final String isin;
  @override
  final String cik;
  @override
  final String tradeCount;
  @override
  final String viewCount;
  @override
  final String stock;
  @override
  final String stream;
  @override
  final String logoPath;

  factory _$ComapanyData([void Function(ComapanyDataBuilder) updates]) =>
      (new ComapanyDataBuilder()..update(updates)).build();

  _$ComapanyData._(
      {this.id,
      this.symbol,
      this.name,
      this.isin,
      this.cik,
      this.tradeCount,
      this.viewCount,
      this.stock,
      this.stream,
      this.logoPath})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('ComapanyData', 'id');
    }
    if (symbol == null) {
      throw new BuiltValueNullFieldError('ComapanyData', 'symbol');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('ComapanyData', 'name');
    }
    if (cik == null) {
      throw new BuiltValueNullFieldError('ComapanyData', 'cik');
    }
    if (tradeCount == null) {
      throw new BuiltValueNullFieldError('ComapanyData', 'tradeCount');
    }
    if (viewCount == null) {
      throw new BuiltValueNullFieldError('ComapanyData', 'viewCount');
    }
    if (logoPath == null) {
      throw new BuiltValueNullFieldError('ComapanyData', 'logoPath');
    }
  }

  @override
  ComapanyData rebuild(void Function(ComapanyDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ComapanyDataBuilder toBuilder() => new ComapanyDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComapanyData &&
        id == other.id &&
        symbol == other.symbol &&
        name == other.name &&
        isin == other.isin &&
        cik == other.cik &&
        tradeCount == other.tradeCount &&
        viewCount == other.viewCount &&
        stock == other.stock &&
        stream == other.stream &&
        logoPath == other.logoPath;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc($jc(0, id.hashCode), symbol.hashCode),
                                    name.hashCode),
                                isin.hashCode),
                            cik.hashCode),
                        tradeCount.hashCode),
                    viewCount.hashCode),
                stock.hashCode),
            stream.hashCode),
        logoPath.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ComapanyData')
          ..add('id', id)
          ..add('symbol', symbol)
          ..add('name', name)
          ..add('isin', isin)
          ..add('cik', cik)
          ..add('tradeCount', tradeCount)
          ..add('viewCount', viewCount)
          ..add('stock', stock)
          ..add('stream', stream)
          ..add('logoPath', logoPath))
        .toString();
  }
}

class ComapanyDataBuilder
    implements Builder<ComapanyData, ComapanyDataBuilder> {
  _$ComapanyData _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _symbol;
  String get symbol => _$this._symbol;
  set symbol(String symbol) => _$this._symbol = symbol;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _isin;
  String get isin => _$this._isin;
  set isin(String isin) => _$this._isin = isin;

  String _cik;
  String get cik => _$this._cik;
  set cik(String cik) => _$this._cik = cik;

  String _tradeCount;
  String get tradeCount => _$this._tradeCount;
  set tradeCount(String tradeCount) => _$this._tradeCount = tradeCount;

  String _viewCount;
  String get viewCount => _$this._viewCount;
  set viewCount(String viewCount) => _$this._viewCount = viewCount;

  String _stock;
  String get stock => _$this._stock;
  set stock(String stock) => _$this._stock = stock;

  String _stream;
  String get stream => _$this._stream;
  set stream(String stream) => _$this._stream = stream;

  String _logoPath;
  String get logoPath => _$this._logoPath;
  set logoPath(String logoPath) => _$this._logoPath = logoPath;

  ComapanyDataBuilder();

  ComapanyDataBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _symbol = _$v.symbol;
      _name = _$v.name;
      _isin = _$v.isin;
      _cik = _$v.cik;
      _tradeCount = _$v.tradeCount;
      _viewCount = _$v.viewCount;
      _stock = _$v.stock;
      _stream = _$v.stream;
      _logoPath = _$v.logoPath;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ComapanyData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ComapanyData;
  }

  @override
  void update(void Function(ComapanyDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ComapanyData build() {
    final _$result = _$v ??
        new _$ComapanyData._(
            id: id,
            symbol: symbol,
            name: name,
            isin: isin,
            cik: cik,
            tradeCount: tradeCount,
            viewCount: viewCount,
            stock: stock,
            stream: stream,
            logoPath: logoPath);
    replace(_$result);
    return _$result;
  }
}

class _$CommentsData extends CommentsData {
  factory _$CommentsData([void Function(CommentsDataBuilder) updates]) =>
      (new CommentsDataBuilder()..update(updates)).build();

  _$CommentsData._() : super._();

  @override
  CommentsData rebuild(void Function(CommentsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentsDataBuilder toBuilder() => new CommentsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommentsData;
  }

  @override
  int get hashCode {
    return 264720921;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('CommentsData').toString();
  }
}

class CommentsDataBuilder
    implements Builder<CommentsData, CommentsDataBuilder> {
  _$CommentsData _$v;

  CommentsDataBuilder();

  @override
  void replace(CommentsData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CommentsData;
  }

  @override
  void update(void Function(CommentsDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CommentsData build() {
    final _$result = _$v ?? new _$CommentsData._();
    replace(_$result);
    return _$result;
  }
}

class _$LikesData extends LikesData {
  factory _$LikesData([void Function(LikesDataBuilder) updates]) =>
      (new LikesDataBuilder()..update(updates)).build();

  _$LikesData._() : super._();

  @override
  LikesData rebuild(void Function(LikesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LikesDataBuilder toBuilder() => new LikesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LikesData;
  }

  @override
  int get hashCode {
    return 233629142;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('LikesData').toString();
  }
}

class LikesDataBuilder implements Builder<LikesData, LikesDataBuilder> {
  _$LikesData _$v;

  LikesDataBuilder();

  @override
  void replace(LikesData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LikesData;
  }

  @override
  void update(void Function(LikesDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LikesData build() {
    final _$result = _$v ?? new _$LikesData._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
