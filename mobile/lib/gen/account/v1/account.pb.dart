// This is a generated file - do not edit.
//
// Generated from account/v1/account.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/timestamp.pb.dart'
    as $0;

import 'account.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'account.pbenum.dart';

/// 口座エンティティ。
class Account extends $pb.GeneratedMessage {
  factory Account({
    $core.String? id,
    $core.String? userId,
    $fixnum.Int64? balance,
    $core.String? currency,
    AccountStatus? status,
    $0.Timestamp? createdAt,
    $0.Timestamp? updatedAt,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (userId != null) result.userId = userId;
    if (balance != null) result.balance = balance;
    if (currency != null) result.currency = currency;
    if (status != null) result.status = status;
    if (createdAt != null) result.createdAt = createdAt;
    if (updatedAt != null) result.updatedAt = updatedAt;
    return result;
  }

  Account._();

  factory Account.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Account.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Account',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'account.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'userId')
    ..aInt64(3, _omitFieldNames ? '' : 'balance')
    ..aOS(4, _omitFieldNames ? '' : 'currency')
    ..aE<AccountStatus>(5, _omitFieldNames ? '' : 'status',
        enumValues: AccountStatus.values)
    ..aOM<$0.Timestamp>(6, _omitFieldNames ? '' : 'createdAt',
        subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(7, _omitFieldNames ? '' : 'updatedAt',
        subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Account clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Account copyWith(void Function(Account) updates) =>
      super.copyWith((message) => updates(message as Account)) as Account;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Account create() => Account._();
  @$core.override
  Account createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Account getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Account>(create);
  static Account? _defaultInstance;

  /// 口座 ID（UUID v4）。
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  /// 所有者のユーザー ID。
  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => $_clearField(2);

  /// 残高（円単位の整数）。float は誤差が出るため使わない。
  @$pb.TagNumber(3)
  $fixnum.Int64 get balance => $_getI64(2);
  @$pb.TagNumber(3)
  set balance($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasBalance() => $_has(2);
  @$pb.TagNumber(3)
  void clearBalance() => $_clearField(3);

  /// 通貨コード。現在は "JPY" のみ。
  @$pb.TagNumber(4)
  $core.String get currency => $_getSZ(3);
  @$pb.TagNumber(4)
  set currency($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCurrency() => $_has(3);
  @$pb.TagNumber(4)
  void clearCurrency() => $_clearField(4);

  @$pb.TagNumber(5)
  AccountStatus get status => $_getN(4);
  @$pb.TagNumber(5)
  set status(AccountStatus value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => $_clearField(5);

  @$pb.TagNumber(6)
  $0.Timestamp get createdAt => $_getN(5);
  @$pb.TagNumber(6)
  set createdAt($0.Timestamp value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasCreatedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearCreatedAt() => $_clearField(6);
  @$pb.TagNumber(6)
  $0.Timestamp ensureCreatedAt() => $_ensure(5);

  @$pb.TagNumber(7)
  $0.Timestamp get updatedAt => $_getN(6);
  @$pb.TagNumber(7)
  set updatedAt($0.Timestamp value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasUpdatedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearUpdatedAt() => $_clearField(7);
  @$pb.TagNumber(7)
  $0.Timestamp ensureUpdatedAt() => $_ensure(6);
}

/// 口座作成リクエスト。
class CreateAccountRequest extends $pb.GeneratedMessage {
  factory CreateAccountRequest({
    $core.String? currency,
  }) {
    final result = create();
    if (currency != null) result.currency = currency;
    return result;
  }

  CreateAccountRequest._();

  factory CreateAccountRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateAccountRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateAccountRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'account.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'currency')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateAccountRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateAccountRequest copyWith(void Function(CreateAccountRequest) updates) =>
      super.copyWith((message) => updates(message as CreateAccountRequest))
          as CreateAccountRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateAccountRequest create() => CreateAccountRequest._();
  @$core.override
  CreateAccountRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CreateAccountRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateAccountRequest>(create);
  static CreateAccountRequest? _defaultInstance;

  /// 通貨コード。例: "JPY"
  @$pb.TagNumber(1)
  $core.String get currency => $_getSZ(0);
  @$pb.TagNumber(1)
  set currency($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCurrency() => $_has(0);
  @$pb.TagNumber(1)
  void clearCurrency() => $_clearField(1);
}

/// 口座作成レスポンス。
class CreateAccountResponse extends $pb.GeneratedMessage {
  factory CreateAccountResponse({
    Account? account,
  }) {
    final result = create();
    if (account != null) result.account = account;
    return result;
  }

  CreateAccountResponse._();

  factory CreateAccountResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateAccountResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateAccountResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'account.v1'),
      createEmptyInstance: create)
    ..aOM<Account>(1, _omitFieldNames ? '' : 'account',
        subBuilder: Account.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateAccountResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateAccountResponse copyWith(
          void Function(CreateAccountResponse) updates) =>
      super.copyWith((message) => updates(message as CreateAccountResponse))
          as CreateAccountResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateAccountResponse create() => CreateAccountResponse._();
  @$core.override
  CreateAccountResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CreateAccountResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateAccountResponse>(create);
  static CreateAccountResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Account get account => $_getN(0);
  @$pb.TagNumber(1)
  set account(Account value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccount() => $_clearField(1);
  @$pb.TagNumber(1)
  Account ensureAccount() => $_ensure(0);
}

/// 口座一覧取得リクエスト。呼び出し元のユーザーに紐づく口座を返す。
class ListAccountsRequest extends $pb.GeneratedMessage {
  factory ListAccountsRequest() => create();

  ListAccountsRequest._();

  factory ListAccountsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListAccountsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListAccountsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'account.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAccountsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAccountsRequest copyWith(void Function(ListAccountsRequest) updates) =>
      super.copyWith((message) => updates(message as ListAccountsRequest))
          as ListAccountsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListAccountsRequest create() => ListAccountsRequest._();
  @$core.override
  ListAccountsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListAccountsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListAccountsRequest>(create);
  static ListAccountsRequest? _defaultInstance;
}

/// 口座一覧取得レスポンス。
class ListAccountsResponse extends $pb.GeneratedMessage {
  factory ListAccountsResponse({
    $core.Iterable<Account>? accounts,
  }) {
    final result = create();
    if (accounts != null) result.accounts.addAll(accounts);
    return result;
  }

  ListAccountsResponse._();

  factory ListAccountsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListAccountsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListAccountsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'account.v1'),
      createEmptyInstance: create)
    ..pPM<Account>(1, _omitFieldNames ? '' : 'accounts',
        subBuilder: Account.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAccountsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAccountsResponse copyWith(void Function(ListAccountsResponse) updates) =>
      super.copyWith((message) => updates(message as ListAccountsResponse))
          as ListAccountsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListAccountsResponse create() => ListAccountsResponse._();
  @$core.override
  ListAccountsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListAccountsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListAccountsResponse>(create);
  static ListAccountsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Account> get accounts => $_getList(0);
}

/// 口座詳細取得リクエスト。
class GetAccountRequest extends $pb.GeneratedMessage {
  factory GetAccountRequest({
    $core.String? accountId,
  }) {
    final result = create();
    if (accountId != null) result.accountId = accountId;
    return result;
  }

  GetAccountRequest._();

  factory GetAccountRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetAccountRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetAccountRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'account.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'accountId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAccountRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAccountRequest copyWith(void Function(GetAccountRequest) updates) =>
      super.copyWith((message) => updates(message as GetAccountRequest))
          as GetAccountRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAccountRequest create() => GetAccountRequest._();
  @$core.override
  GetAccountRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetAccountRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetAccountRequest>(create);
  static GetAccountRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAccountId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountId() => $_clearField(1);
}

/// 口座詳細取得レスポンス。
class GetAccountResponse extends $pb.GeneratedMessage {
  factory GetAccountResponse({
    Account? account,
  }) {
    final result = create();
    if (account != null) result.account = account;
    return result;
  }

  GetAccountResponse._();

  factory GetAccountResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetAccountResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetAccountResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'account.v1'),
      createEmptyInstance: create)
    ..aOM<Account>(1, _omitFieldNames ? '' : 'account',
        subBuilder: Account.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAccountResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAccountResponse copyWith(void Function(GetAccountResponse) updates) =>
      super.copyWith((message) => updates(message as GetAccountResponse))
          as GetAccountResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAccountResponse create() => GetAccountResponse._();
  @$core.override
  GetAccountResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetAccountResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetAccountResponse>(create);
  static GetAccountResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Account get account => $_getN(0);
  @$pb.TagNumber(1)
  set account(Account value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccount() => $_clearField(1);
  @$pb.TagNumber(1)
  Account ensureAccount() => $_ensure(0);
}

/// 口座の作成・一覧取得・詳細取得を提供するサービス。
class AccountServiceApi {
  final $pb.RpcClient _client;

  AccountServiceApi(this._client);

  /// 口座作成。認証済みユーザーに JPY 建て口座を作成する。初期残高は 0 円。
  $async.Future<CreateAccountResponse> createAccount(
          $pb.ClientContext? ctx, CreateAccountRequest request) =>
      _client.invoke<CreateAccountResponse>(ctx, 'AccountService',
          'CreateAccount', request, CreateAccountResponse());

  /// 自分が所有する口座の一覧を取得する。
  $async.Future<ListAccountsResponse> listAccounts(
          $pb.ClientContext? ctx, ListAccountsRequest request) =>
      _client.invoke<ListAccountsResponse>(ctx, 'AccountService',
          'ListAccounts', request, ListAccountsResponse());

  /// 口座 ID を指定して残高・ステータスを取得する。
  $async.Future<GetAccountResponse> getAccount(
          $pb.ClientContext? ctx, GetAccountRequest request) =>
      _client.invoke<GetAccountResponse>(
          ctx, 'AccountService', 'GetAccount', request, GetAccountResponse());
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
