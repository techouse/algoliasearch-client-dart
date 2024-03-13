// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element

import 'package:json_annotation/json_annotation.dart';

part 'insights_events.g.dart';

@JsonSerializable()
final class InsightsEvents {
  /// Returns a new [InsightsEvents] instance.
  const InsightsEvents({
    required this.events,
  });

  /// Click and conversion events.  **All** events must be valid, otherwise the API returns an error.
  /// One of types:
  /// - [ViewedObjectIDs]
  /// - [PurchasedObjectIDs]
  /// - [AddedToCartObjectIDs]
  /// - [PurchasedObjectIDsAfterSearch]
  /// - [ClickedObjectIDsAfterSearch]
  /// - [ClickedFilters]
  /// - [ClickedObjectIDs]
  /// - [ConvertedObjectIDs]
  /// - [AddedToCartObjectIDsAfterSearch]
  /// - [ViewedFilters]
  /// - [ConvertedFilters]
  /// - [ConvertedObjectIDsAfterSearch]
  @JsonKey(name: r'events')
  final Iterable<dynamic> events;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InsightsEvents && other.events == events;

  @override
  int get hashCode => events.hashCode;

  factory InsightsEvents.fromJson(Map<String, dynamic> json) =>
      _$InsightsEventsFromJson(json);

  Map<String, dynamic> toJson() => _$InsightsEventsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
