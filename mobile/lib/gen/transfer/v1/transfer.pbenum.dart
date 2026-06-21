// This is a generated file - do not edit.
//
// Generated from transfer/v1/transfer.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// 取引のステータス。
class TransactionStatus extends $pb.ProtobufEnum {
  /// 未指定（デフォルト値。使用しない）。
  static const TransactionStatus TRANSACTION_STATUS_UNSPECIFIED =
      TransactionStatus._(
          0, _omitEnumNames ? '' : 'TRANSACTION_STATUS_UNSPECIFIED');

  /// 処理中。DBトランザクション開始〜COMMIT 前の状態。
  static const TransactionStatus TRANSACTION_STATUS_PENDING =
      TransactionStatus._(
          1, _omitEnumNames ? '' : 'TRANSACTION_STATUS_PENDING');

  /// 完了。残高更新と取引レコードの INSERT が成功した状態。
  static const TransactionStatus TRANSACTION_STATUS_COMPLETED =
      TransactionStatus._(
          2, _omitEnumNames ? '' : 'TRANSACTION_STATUS_COMPLETED');

  /// 失敗。残高不足・バリデーションエラーなどでロールバックされた状態。
  static const TransactionStatus TRANSACTION_STATUS_FAILED =
      TransactionStatus._(3, _omitEnumNames ? '' : 'TRANSACTION_STATUS_FAILED');

  static const $core.List<TransactionStatus> values = <TransactionStatus>[
    TRANSACTION_STATUS_UNSPECIFIED,
    TRANSACTION_STATUS_PENDING,
    TRANSACTION_STATUS_COMPLETED,
    TRANSACTION_STATUS_FAILED,
  ];

  static final $core.List<TransactionStatus?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static TransactionStatus? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const TransactionStatus._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
