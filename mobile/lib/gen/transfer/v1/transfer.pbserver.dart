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

import 'package:protobuf/protobuf.dart' as $pb;

import 'transfer.pb.dart' as $1;
import 'transfer.pbjson.dart';

export 'transfer.pb.dart';

abstract class TransferServiceBase extends $pb.GeneratedService {
  $async.Future<$1.TransferResponse> transfer(
      $pb.ServerContext ctx, $1.TransferRequest request);
  $async.Future<$1.ListTransfersResponse> listTransfers(
      $pb.ServerContext ctx, $1.ListTransfersRequest request);
  $async.Future<$1.GetTransferResponse> getTransfer(
      $pb.ServerContext ctx, $1.GetTransferRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'Transfer':
        return $1.TransferRequest();
      case 'ListTransfers':
        return $1.ListTransfersRequest();
      case 'GetTransfer':
        return $1.GetTransferRequest();
      default:
        throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx,
      $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'Transfer':
        return transfer(ctx, request as $1.TransferRequest);
      case 'ListTransfers':
        return listTransfers(ctx, request as $1.ListTransfersRequest);
      case 'GetTransfer':
        return getTransfer(ctx, request as $1.GetTransferRequest);
      default:
        throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => TransferServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>>
      get $messageJson => TransferServiceBase$messageJson;
}
