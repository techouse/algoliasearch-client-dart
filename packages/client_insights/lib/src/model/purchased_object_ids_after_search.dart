// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element
import 'package:algolia_client_insights/src/model/conversion_event.dart';
import 'package:algolia_client_insights/src/model/object_data_after_search.dart';
import 'package:algolia_client_insights/src/model/purchase_event.dart';

import 'package:json_annotation/json_annotation.dart';

part 'purchased_object_ids_after_search.g.dart';

@JsonSerializable()
final class PurchasedObjectIDsAfterSearch {
  /// Returns a new [PurchasedObjectIDsAfterSearch] instance.
  const PurchasedObjectIDsAfterSearch({
    required this.eventName,
    required this.eventType,
    required this.eventSubtype,
    required this.index,
    required this.objectIDs,
    required this.userToken,
    this.authenticatedUserToken,
    this.currency,
    this.objectData,
    this.timestamp,
    this.value,
  });

  /// Event name, up to 64 ASCII characters.  Consider naming events consistently—for example, by adopting Segment's [object-action](https://segment.com/academy/collecting-data/naming-conventions-for-clean-data/#the-object-action-framework) framework.
  @JsonKey(name: r'eventName')
  final String eventName;

  @JsonKey(name: r'eventType')
  final ConversionEvent eventType;

  @JsonKey(name: r'eventSubtype')
  final PurchaseEvent eventSubtype;

  /// Index name to which the event's items belong.
  @JsonKey(name: r'index')
  final String index;

  /// Object IDs of the records that are part of the event.
  @JsonKey(name: r'objectIDs')
  final List<String> objectIDs;

  /// Anonymous or pseudonymous user identifier.  Don't use personally identifiable information in user tokens. For more information, see [User token](https://www.algolia.com/doc/guides/sending-events/concepts/usertoken/).
  @JsonKey(name: r'userToken')
  final String userToken;

  /// Identifier for authenticated users.  When the user signs in, you can get an identifier from your system and send it as `authenticatedUserToken`. This lets you keep using the `userToken` from before the user signed in, while providing a reliable way to identify users across sessions. Don't use personally identifiable information in user tokens. For more information, see [User token](https://www.algolia.com/doc/guides/sending-events/concepts/usertoken/).
  @JsonKey(name: r'authenticatedUserToken')
  final String? authenticatedUserToken;

  /// Three-letter [currency code](https://www.iso.org/iso-4217-currency-codes.html).
  @JsonKey(name: r'currency')
  final String? currency;

  /// Extra information about the records involved in a purchase or add-to-cart events.  If provided, it must be the same length as `objectIDs`.
  @JsonKey(name: r'objectData')
  final List<ObjectDataAfterSearch>? objectData;

  /// Timestamp of the event in milliseconds in [Unix epoch time](https://wikipedia.org/wiki/Unix_time). By default, the Insights API uses the time it receives an event as its timestamp.
  @JsonKey(name: r'timestamp')
  final int? timestamp;

  /// One of types:
  /// - [double]
  /// - [String]
  @JsonKey(name: r'value')
  final dynamic value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PurchasedObjectIDsAfterSearch &&
          other.eventName == eventName &&
          other.eventType == eventType &&
          other.eventSubtype == eventSubtype &&
          other.index == index &&
          other.objectIDs == objectIDs &&
          other.userToken == userToken &&
          other.authenticatedUserToken == authenticatedUserToken &&
          other.currency == currency &&
          other.objectData == objectData &&
          other.timestamp == timestamp &&
          other.value == value;

  @override
  int get hashCode =>
      eventName.hashCode +
      eventType.hashCode +
      eventSubtype.hashCode +
      index.hashCode +
      objectIDs.hashCode +
      userToken.hashCode +
      authenticatedUserToken.hashCode +
      currency.hashCode +
      objectData.hashCode +
      timestamp.hashCode +
      value.hashCode;

  factory PurchasedObjectIDsAfterSearch.fromJson(Map<String, dynamic> json) =>
      _$PurchasedObjectIDsAfterSearchFromJson(json);

  Map<String, dynamic> toJson() => _$PurchasedObjectIDsAfterSearchToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
