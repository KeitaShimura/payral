// This is a generated file - do not edit.
//
// Generated from transfer/v1/transfer.proto.

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

import 'transfer.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'transfer.pbenum.dart';

/// 送金リクエスト。
/// Idempotency-Key は Connect の HTTP ヘッダー経由で渡すため、このメッセージには含めない。
/// クライアントは UUID v4 を生成してヘッダーにセットすること。
class TransferRequest extends $pb.GeneratedMessage {
  factory TransferRequest({
    $core.String? fromAccountId,
    $core.String? toAccountId,
    $fixnum.Int64? amount,
    $core.String? currency,
    $core.String? memo,
  }) {
    final result = create();
    if (fromAccountId != null) result.fromAccountId = fromAccountId;
    if (toAccountId != null) result.toAccountId = toAccountId;
    if (amount != null) result.amount = amount;
    if (currency != null) result.currency = currency;
    if (memo != null) result.memo = memo;
    return result;
  }

  TransferRequest._();

  factory TransferRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TransferRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransferRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'transfer.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'fromAccountId')
    ..aOS(2, _omitFieldNames ? '' : 'toAccountId')
    ..aInt64(3, _omitFieldNames ? '' : 'amount')
    ..aOS(4, _omitFieldNames ? '' : 'currency')
    ..aOS(5, _omitFieldNames ? '' : 'memo')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransferRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransferRequest copyWith(void Function(TransferRequest) updates) =>
      super.copyWith((message) => updates(message as TransferRequest))
          as TransferRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransferRequest create() => TransferRequest._();
  @$core.override
  TransferRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TransferRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransferRequest>(create);
  static TransferRequest? _defaultInstance;

  /// 送金元口座 ID。
  @$pb.TagNumber(1)
  $core.String get fromAccountId => $_getSZ(0);
  @$pb.TagNumber(1)
  set fromAccountId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFromAccountId() => $_has(0);
  @$pb.TagNumber(1)
  void clearFromAccountId() => $_clearField(1);

  /// 送金先口座 ID。from_account_id と同じ値は不可。
  @$pb.TagNumber(2)
  $core.String get toAccountId => $_getSZ(1);
  @$pb.TagNumber(2)
  set toAccountId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasToAccountId() => $_has(1);
  @$pb.TagNumber(2)
  void clearToAccountId() => $_clearField(2);

  /// 送金額（円単位）。1 以上の整数。
  @$pb.TagNumber(3)
  $fixnum.Int64 get amount => $_getI64(2);
  @$pb.TagNumber(3)
  set amount($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmount() => $_clearField(3);

  /// 通貨コード。現在は "JPY" のみ。
  @$pb.TagNumber(4)
  $core.String get currency => $_getSZ(3);
  @$pb.TagNumber(4)
  set currency($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCurrency() => $_has(3);
  @$pb.TagNumber(4)
  void clearCurrency() => $_clearField(4);

  /// 送金メモ。例: "夕食代"。省略可。
  @$pb.TagNumber(5)
  $core.String get memo => $_getSZ(4);
  @$pb.TagNumber(5)
  set memo($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasMemo() => $_has(4);
  @$pb.TagNumber(5)
  void clearMemo() => $_clearField(5);
}

/// 送金レスポンス。
class TransferResponse extends $pb.GeneratedMessage {
  factory TransferResponse({
    Transaction? transaction,
  }) {
    final result = create();
    if (transaction != null) result.transaction = transaction;
    return result;
  }

  TransferResponse._();

  factory TransferResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TransferResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransferResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'transfer.v1'),
      createEmptyInstance: create)
    ..aOM<Transaction>(1, _omitFieldNames ? '' : 'transaction',
        subBuilder: Transaction.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransferResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransferResponse copyWith(void Function(TransferResponse) updates) =>
      super.copyWith((message) => updates(message as TransferResponse))
          as TransferResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransferResponse create() => TransferResponse._();
  @$core.override
  TransferResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TransferResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransferResponse>(create);
  static TransferResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Transaction get transaction => $_getN(0);
  @$pb.TagNumber(1)
  set transaction(Transaction value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTransaction() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransaction() => $_clearField(1);
  @$pb.TagNumber(1)
  Transaction ensureTransaction() => $_ensure(0);
}

/// 取引履歴取得リクエスト。
class ListTransfersRequest extends $pb.GeneratedMessage {
  factory ListTransfersRequest({
    $core.String? accountId,
    $core.String? cursor,
    $core.int? limit,
  }) {
    final result = create();
    if (accountId != null) result.accountId = accountId;
    if (cursor != null) result.cursor = cursor;
    if (limit != null) result.limit = limit;
    return result;
  }

  ListTransfersRequest._();

  factory ListTransfersRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListTransfersRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListTransfersRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'transfer.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'accountId')
    ..aOS(2, _omitFieldNames ? '' : 'cursor')
    ..aI(3, _omitFieldNames ? '' : 'limit')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListTransfersRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListTransfersRequest copyWith(void Function(ListTransfersRequest) updates) =>
      super.copyWith((message) => updates(message as ListTransfersRequest))
          as ListTransfersRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListTransfersRequest create() => ListTransfersRequest._();
  @$core.override
  ListTransfersRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListTransfersRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListTransfersRequest>(create);
  static ListTransfersRequest? _defaultInstance;

  /// 絞り込む口座 ID（送金元・送金先どちらも対象）。
  @$pb.TagNumber(1)
  $core.String get accountId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAccountId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountId() => $_clearField(1);

  /// ページネーションカーソル。前のレスポンスの next_cursor を渡す。初回は省略。
  @$pb.TagNumber(2)
  $core.String get cursor => $_getSZ(1);
  @$pb.TagNumber(2)
  set cursor($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCursor() => $_has(1);
  @$pb.TagNumber(2)
  void clearCursor() => $_clearField(2);

  /// 1ページあたりの取得件数。0 の場合はサーバーのデフォルト値を使用。
  @$pb.TagNumber(3)
  $core.int get limit => $_getIZ(2);
  @$pb.TagNumber(3)
  set limit($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLimit() => $_has(2);
  @$pb.TagNumber(3)
  void clearLimit() => $_clearField(3);
}

/// 取引履歴取得レスポンス。
class ListTransfersResponse extends $pb.GeneratedMessage {
  factory ListTransfersResponse({
    $core.Iterable<Transaction>? transactions,
    $core.String? nextCursor,
  }) {
    final result = create();
    if (transactions != null) result.transactions.addAll(transactions);
    if (nextCursor != null) result.nextCursor = nextCursor;
    return result;
  }

  ListTransfersResponse._();

  factory ListTransfersResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListTransfersResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListTransfersResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'transfer.v1'),
      createEmptyInstance: create)
    ..pPM<Transaction>(1, _omitFieldNames ? '' : 'transactions',
        subBuilder: Transaction.create)
    ..aOS(2, _omitFieldNames ? '' : 'nextCursor')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListTransfersResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListTransfersResponse copyWith(
          void Function(ListTransfersResponse) updates) =>
      super.copyWith((message) => updates(message as ListTransfersResponse))
          as ListTransfersResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListTransfersResponse create() => ListTransfersResponse._();
  @$core.override
  ListTransfersResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListTransfersResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListTransfersResponse>(create);
  static ListTransfersResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Transaction> get transactions => $_getList(0);

  /// 次ページのカーソル。これ以上データがない場合は省略される。
  @$pb.TagNumber(2)
  $core.String get nextCursor => $_getSZ(1);
  @$pb.TagNumber(2)
  set nextCursor($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNextCursor() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextCursor() => $_clearField(2);
}

/// 取引詳細取得リクエスト。
class GetTransferRequest extends $pb.GeneratedMessage {
  factory GetTransferRequest({
    $core.String? transferId,
  }) {
    final result = create();
    if (transferId != null) result.transferId = transferId;
    return result;
  }

  GetTransferRequest._();

  factory GetTransferRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetTransferRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetTransferRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'transfer.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'transferId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTransferRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTransferRequest copyWith(void Function(GetTransferRequest) updates) =>
      super.copyWith((message) => updates(message as GetTransferRequest))
          as GetTransferRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTransferRequest create() => GetTransferRequest._();
  @$core.override
  GetTransferRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetTransferRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetTransferRequest>(create);
  static GetTransferRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get transferId => $_getSZ(0);
  @$pb.TagNumber(1)
  set transferId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTransferId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransferId() => $_clearField(1);
}

/// 取引詳細取得レスポンス。
class GetTransferResponse extends $pb.GeneratedMessage {
  factory GetTransferResponse({
    Transaction? transaction,
  }) {
    final result = create();
    if (transaction != null) result.transaction = transaction;
    return result;
  }

  GetTransferResponse._();

  factory GetTransferResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetTransferResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetTransferResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'transfer.v1'),
      createEmptyInstance: create)
    ..aOM<Transaction>(1, _omitFieldNames ? '' : 'transaction',
        subBuilder: Transaction.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTransferResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTransferResponse copyWith(void Function(GetTransferResponse) updates) =>
      super.copyWith((message) => updates(message as GetTransferResponse))
          as GetTransferResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTransferResponse create() => GetTransferResponse._();
  @$core.override
  GetTransferResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetTransferResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetTransferResponse>(create);
  static GetTransferResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Transaction get transaction => $_getN(0);
  @$pb.TagNumber(1)
  set transaction(Transaction value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTransaction() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransaction() => $_clearField(1);
  @$pb.TagNumber(1)
  Transaction ensureTransaction() => $_ensure(0);
}

/// 取引エンティティ。一度作成したら変更しない不変レコード。
class Transaction extends $pb.GeneratedMessage {
  factory Transaction({
    $core.String? id,
    $core.String? fromAccountId,
    $core.String? toAccountId,
    $fixnum.Int64? amount,
    $core.String? currency,
    TransactionStatus? status,
    $core.String? memo,
    $0.Timestamp? createdAt,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (fromAccountId != null) result.fromAccountId = fromAccountId;
    if (toAccountId != null) result.toAccountId = toAccountId;
    if (amount != null) result.amount = amount;
    if (currency != null) result.currency = currency;
    if (status != null) result.status = status;
    if (memo != null) result.memo = memo;
    if (createdAt != null) result.createdAt = createdAt;
    return result;
  }

  Transaction._();

  factory Transaction.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Transaction.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Transaction',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'transfer.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'fromAccountId')
    ..aOS(3, _omitFieldNames ? '' : 'toAccountId')
    ..aInt64(4, _omitFieldNames ? '' : 'amount')
    ..aOS(5, _omitFieldNames ? '' : 'currency')
    ..aE<TransactionStatus>(6, _omitFieldNames ? '' : 'status',
        enumValues: TransactionStatus.values)
    ..aOS(7, _omitFieldNames ? '' : 'memo')
    ..aOM<$0.Timestamp>(8, _omitFieldNames ? '' : 'createdAt',
        subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Transaction clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Transaction copyWith(void Function(Transaction) updates) =>
      super.copyWith((message) => updates(message as Transaction))
          as Transaction;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Transaction create() => Transaction._();
  @$core.override
  Transaction createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Transaction getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Transaction>(create);
  static Transaction? _defaultInstance;

  /// 取引 ID（UUID v4）。
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get fromAccountId => $_getSZ(1);
  @$pb.TagNumber(2)
  set fromAccountId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFromAccountId() => $_has(1);
  @$pb.TagNumber(2)
  void clearFromAccountId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get toAccountId => $_getSZ(2);
  @$pb.TagNumber(3)
  set toAccountId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasToAccountId() => $_has(2);
  @$pb.TagNumber(3)
  void clearToAccountId() => $_clearField(3);

  /// 送金額（円単位）。
  @$pb.TagNumber(4)
  $fixnum.Int64 get amount => $_getI64(3);
  @$pb.TagNumber(4)
  set amount($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAmount() => $_has(3);
  @$pb.TagNumber(4)
  void clearAmount() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get currency => $_getSZ(4);
  @$pb.TagNumber(5)
  set currency($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCurrency() => $_has(4);
  @$pb.TagNumber(5)
  void clearCurrency() => $_clearField(5);

  @$pb.TagNumber(6)
  TransactionStatus get status => $_getN(5);
  @$pb.TagNumber(6)
  set status(TransactionStatus value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasStatus() => $_has(5);
  @$pb.TagNumber(6)
  void clearStatus() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get memo => $_getSZ(6);
  @$pb.TagNumber(7)
  set memo($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasMemo() => $_has(6);
  @$pb.TagNumber(7)
  void clearMemo() => $_clearField(7);

  /// 送金実行日時。この値は変更しない。
  @$pb.TagNumber(8)
  $0.Timestamp get createdAt => $_getN(7);
  @$pb.TagNumber(8)
  set createdAt($0.Timestamp value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasCreatedAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearCreatedAt() => $_clearField(8);
  @$pb.TagNumber(8)
  $0.Timestamp ensureCreatedAt() => $_ensure(7);
}

/// 送金の実行と取引履歴の参照を提供するサービス。
class TransferServiceApi {
  final $pb.RpcClient _client;

  TransferServiceApi(this._client);

  /// 送金実行。冪等キーを Connect の HTTP ヘッダー（Idempotency-Key）で受け取る。
  $async.Future<TransferResponse> transfer(
          $pb.ClientContext? ctx, TransferRequest request) =>
      _client.invoke<TransferResponse>(
          ctx, 'TransferService', 'Transfer', request, TransferResponse());

  /// 取引履歴取得。カーソルページネーションで一覧を返す。
  $async.Future<ListTransfersResponse> listTransfers(
          $pb.ClientContext? ctx, ListTransfersRequest request) =>
      _client.invoke<ListTransfersResponse>(ctx, 'TransferService',
          'ListTransfers', request, ListTransfersResponse());

  /// 取引 ID を指定して1件の詳細を取得する。
  $async.Future<GetTransferResponse> getTransfer(
          $pb.ClientContext? ctx, GetTransferRequest request) =>
      _client.invoke<GetTransferResponse>(ctx, 'TransferService', 'GetTransfer',
          request, GetTransferResponse());
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
