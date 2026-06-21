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

import 'package:protobuf/protobuf.dart' as $pb;

import 'account.pb.dart' as $1;
import 'account.pbjson.dart';

export 'account.pb.dart';

abstract class AccountServiceBase extends $pb.GeneratedService {
  $async.Future<$1.CreateAccountResponse> createAccount(
      $pb.ServerContext ctx, $1.CreateAccountRequest request);
  $async.Future<$1.ListAccountsResponse> listAccounts(
      $pb.ServerContext ctx, $1.ListAccountsRequest request);
  $async.Future<$1.GetAccountResponse> getAccount(
      $pb.ServerContext ctx, $1.GetAccountRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'CreateAccount':
        return $1.CreateAccountRequest();
      case 'ListAccounts':
        return $1.ListAccountsRequest();
      case 'GetAccount':
        return $1.GetAccountRequest();
      default:
        throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx,
      $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'CreateAccount':
        return createAccount(ctx, request as $1.CreateAccountRequest);
      case 'ListAccounts':
        return listAccounts(ctx, request as $1.ListAccountsRequest);
      case 'GetAccount':
        return getAccount(ctx, request as $1.GetAccountRequest);
      default:
        throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => AccountServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>>
      get $messageJson => AccountServiceBase$messageJson;
}
