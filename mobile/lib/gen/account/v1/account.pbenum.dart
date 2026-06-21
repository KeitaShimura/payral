// This is a generated file - do not edit.
//
// Generated from account/v1/account.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// 口座のステータス。
class AccountStatus extends $pb.ProtobufEnum {
  /// 未指定（デフォルト値。使用しない）。
  static const AccountStatus ACCOUNT_STATUS_UNSPECIFIED =
      AccountStatus._(0, _omitEnumNames ? '' : 'ACCOUNT_STATUS_UNSPECIFIED');

  /// 通常状態。送金・入金ともに可能。
  static const AccountStatus ACCOUNT_STATUS_ACTIVE =
      AccountStatus._(1, _omitEnumNames ? '' : 'ACCOUNT_STATUS_ACTIVE');

  /// 凍結中。不正利用疑い等で管理者が一時停止した状態。
  static const AccountStatus ACCOUNT_STATUS_FROZEN =
      AccountStatus._(2, _omitEnumNames ? '' : 'ACCOUNT_STATUS_FROZEN');

  /// 解約済み。残高は 0 であることが前提。
  static const AccountStatus ACCOUNT_STATUS_CLOSED =
      AccountStatus._(3, _omitEnumNames ? '' : 'ACCOUNT_STATUS_CLOSED');

  static const $core.List<AccountStatus> values = <AccountStatus>[
    ACCOUNT_STATUS_UNSPECIFIED,
    ACCOUNT_STATUS_ACTIVE,
    ACCOUNT_STATUS_FROZEN,
    ACCOUNT_STATUS_CLOSED,
  ];

  static final $core.List<AccountStatus?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static AccountStatus? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const AccountStatus._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
