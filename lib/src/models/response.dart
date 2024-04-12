import '/src/enums/status.dart';

class PaymentResponse {
  PaymentResponseStatus? status;
  String? paymentIntentId;
  String? paymentMethodId;
  String? errorMessage;

  PaymentResponse.fromJson(Map json) {
    paymentIntentId = json["paymentIntentId"] as String?;
    paymentMethodId = json["paymentMethodId"] as String?;
    errorMessage = json["errorMessage"] as String?;
    status = _$enumDecodeNullable(_$PaymentResponseStatusEnumMap, json['status']);
  }

  T _$enumDecodeNullable<T>(Map<T, dynamic> enumValues, dynamic source) {
    return _$enumDecode<T>(enumValues, source);
  }

  T _$enumDecode<T>(Map<T, dynamic> enumValues, dynamic source) {
    if (source == null) {
      throw ArgumentError('A value must be provided. Supported values: '
          '${enumValues.values.join(', ')}');
    }
    return enumValues.entries
        .singleWhere((e) => e.value == source,
            orElse: () => throw ArgumentError('`$source` is not one of the supported values: '
                '${enumValues.values.join(', ')}'))
        .key;
  }

  final _$PaymentResponseStatusEnumMap = <PaymentResponseStatus, dynamic>{
    PaymentResponseStatus.succeeded: 'succeeded',
    PaymentResponseStatus.failed: 'failed',
    PaymentResponseStatus.canceled: 'canceled'
  };
}
