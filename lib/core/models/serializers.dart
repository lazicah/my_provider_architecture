library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:my_provider_architecture_template/core/models/news/news.dart';


part 'serializers.g.dart';

// List of models that will have a serializer generated for them.
//   - Usually you only add models here that you expect to fetch from some API
@SerializersFor(const[
  NewsData,
])


final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
      ..add(Iso8601DateTimeSerializer()))
    .build();
