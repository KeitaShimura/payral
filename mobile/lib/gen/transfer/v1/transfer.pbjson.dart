// This is a generated file - do not edit.
//
// Generated from transfer/v1/transfer.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

import 'package:protobuf/well_known_types/google/protobuf/timestamp.pbjson.dart'
    as $0;

@$core.Deprecated('Use transactionStatusDescriptor instead')
const TransactionStatus$json = {
  '1': 'TransactionStatus',
  '2': [
    {'1': 'TRANSACTION_STATUS_UNSPECIFIED', '2': 0},
    {'1': 'TRANSACTION_STATUS_PENDING', '2': 1},
    {'1': 'TRANSACTION_STATUS_COMPLETED', '2': 2},
    {'1': 'TRANSACTION_STATUS_FAILED', '2': 3},
  ],
};

/// Descriptor for `TransactionStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List transactionStatusDescriptor = $convert.base64Decode(
    'ChFUcmFuc2FjdGlvblN0YXR1cxIiCh5UUkFOU0FDVElPTl9TVEFUVVNfVU5TUEVDSUZJRUQQAB'
    'IeChpUUkFOU0FDVElPTl9TVEFUVVNfUEVORElORxABEiAKHFRSQU5TQUNUSU9OX1NUQVRVU19D'
    'T01QTEVURUQQAhIdChlUUkFOU0FDVElPTl9TVEFUVVNfRkFJTEVEEAM=');

@$core.Deprecated('Use transferRequestDescriptor instead')
const TransferRequest$json = {
  '1': 'TransferRequest',
  '2': [
    {'1': 'from_account_id', '3': 1, '4': 1, '5': 9, '10': 'fromAccountId'},
    {'1': 'to_account_id', '3': 2, '4': 1, '5': 9, '10': 'toAccountId'},
    {'1': 'amount', '3': 3, '4': 1, '5': 3, '10': 'amount'},
    {'1': 'currency', '3': 4, '4': 1, '5': 9, '10': 'currency'},
    {'1': 'memo', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'memo', '17': true},
  ],
  '8': [
    {'1': '_memo'},
  ],
};

/// Descriptor for `TransferRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transferRequestDescriptor = $convert.base64Decode(
    'Cg9UcmFuc2ZlclJlcXVlc3QSJgoPZnJvbV9hY2NvdW50X2lkGAEgASgJUg1mcm9tQWNjb3VudE'
    'lkEiIKDXRvX2FjY291bnRfaWQYAiABKAlSC3RvQWNjb3VudElkEhYKBmFtb3VudBgDIAEoA1IG'
    'YW1vdW50EhoKCGN1cnJlbmN5GAQgASgJUghjdXJyZW5jeRIXCgRtZW1vGAUgASgJSABSBG1lbW'
    '+IAQFCBwoFX21lbW8=');

@$core.Deprecated('Use transferResponseDescriptor instead')
const TransferResponse$json = {
  '1': 'TransferResponse',
  '2': [
    {
      '1': 'transaction',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.transfer.v1.Transaction',
      '10': 'transaction'
    },
  ],
};

/// Descriptor for `TransferResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transferResponseDescriptor = $convert.base64Decode(
    'ChBUcmFuc2ZlclJlc3BvbnNlEjoKC3RyYW5zYWN0aW9uGAEgASgLMhgudHJhbnNmZXIudjEuVH'
    'JhbnNhY3Rpb25SC3RyYW5zYWN0aW9u');

@$core.Deprecated('Use listTransfersRequestDescriptor instead')
const ListTransfersRequest$json = {
  '1': 'ListTransfersRequest',
  '2': [
    {'1': 'account_id', '3': 1, '4': 1, '5': 9, '10': 'accountId'},
    {'1': 'cursor', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'cursor', '17': true},
    {'1': 'limit', '3': 3, '4': 1, '5': 5, '10': 'limit'},
  ],
  '8': [
    {'1': '_cursor'},
  ],
};

/// Descriptor for `ListTransfersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listTransfersRequestDescriptor = $convert.base64Decode(
    'ChRMaXN0VHJhbnNmZXJzUmVxdWVzdBIdCgphY2NvdW50X2lkGAEgASgJUglhY2NvdW50SWQSGw'
    'oGY3Vyc29yGAIgASgJSABSBmN1cnNvcogBARIUCgVsaW1pdBgDIAEoBVIFbGltaXRCCQoHX2N1'
    'cnNvcg==');

@$core.Deprecated('Use listTransfersResponseDescriptor instead')
const ListTransfersResponse$json = {
  '1': 'ListTransfersResponse',
  '2': [
    {
      '1': 'transactions',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.transfer.v1.Transaction',
      '10': 'transactions'
    },
    {
      '1': 'next_cursor',
      '3': 2,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'nextCursor',
      '17': true
    },
  ],
  '8': [
    {'1': '_next_cursor'},
  ],
};

/// Descriptor for `ListTransfersResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listTransfersResponseDescriptor = $convert.base64Decode(
    'ChVMaXN0VHJhbnNmZXJzUmVzcG9uc2USPAoMdHJhbnNhY3Rpb25zGAEgAygLMhgudHJhbnNmZX'
    'IudjEuVHJhbnNhY3Rpb25SDHRyYW5zYWN0aW9ucxIkCgtuZXh0X2N1cnNvchgCIAEoCUgAUgpu'
    'ZXh0Q3Vyc29yiAEBQg4KDF9uZXh0X2N1cnNvcg==');

@$core.Deprecated('Use getTransferRequestDescriptor instead')
const GetTransferRequest$json = {
  '1': 'GetTransferRequest',
  '2': [
    {'1': 'transfer_id', '3': 1, '4': 1, '5': 9, '10': 'transferId'},
  ],
};

/// Descriptor for `GetTransferRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTransferRequestDescriptor = $convert.base64Decode(
    'ChJHZXRUcmFuc2ZlclJlcXVlc3QSHwoLdHJhbnNmZXJfaWQYASABKAlSCnRyYW5zZmVySWQ=');

@$core.Deprecated('Use getTransferResponseDescriptor instead')
const GetTransferResponse$json = {
  '1': 'GetTransferResponse',
  '2': [
    {
      '1': 'transaction',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.transfer.v1.Transaction',
      '10': 'transaction'
    },
  ],
};

/// Descriptor for `GetTransferResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTransferResponseDescriptor = $convert.base64Decode(
    'ChNHZXRUcmFuc2ZlclJlc3BvbnNlEjoKC3RyYW5zYWN0aW9uGAEgASgLMhgudHJhbnNmZXIudj'
    'EuVHJhbnNhY3Rpb25SC3RyYW5zYWN0aW9u');

@$core.Deprecated('Use transactionDescriptor instead')
const Transaction$json = {
  '1': 'Transaction',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'from_account_id', '3': 2, '4': 1, '5': 9, '10': 'fromAccountId'},
    {'1': 'to_account_id', '3': 3, '4': 1, '5': 9, '10': 'toAccountId'},
    {'1': 'amount', '3': 4, '4': 1, '5': 3, '10': 'amount'},
    {'1': 'currency', '3': 5, '4': 1, '5': 9, '10': 'currency'},
    {
      '1': 'status',
      '3': 6,
      '4': 1,
      '5': 14,
      '6': '.transfer.v1.TransactionStatus',
      '10': 'status'
    },
    {'1': 'memo', '3': 7, '4': 1, '5': 9, '9': 0, '10': 'memo', '17': true},
    {
      '1': 'created_at',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'createdAt'
    },
  ],
  '8': [
    {'1': '_memo'},
  ],
};

/// Descriptor for `Transaction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionDescriptor = $convert.base64Decode(
    'CgtUcmFuc2FjdGlvbhIOCgJpZBgBIAEoCVICaWQSJgoPZnJvbV9hY2NvdW50X2lkGAIgASgJUg'
    '1mcm9tQWNjb3VudElkEiIKDXRvX2FjY291bnRfaWQYAyABKAlSC3RvQWNjb3VudElkEhYKBmFt'
    'b3VudBgEIAEoA1IGYW1vdW50EhoKCGN1cnJlbmN5GAUgASgJUghjdXJyZW5jeRI2CgZzdGF0dX'
    'MYBiABKA4yHi50cmFuc2Zlci52MS5UcmFuc2FjdGlvblN0YXR1c1IGc3RhdHVzEhcKBG1lbW8Y'
    'ByABKAlIAFIEbWVtb4gBARI5CgpjcmVhdGVkX2F0GAggASgLMhouZ29vZ2xlLnByb3RvYnVmLl'
    'RpbWVzdGFtcFIJY3JlYXRlZEF0QgcKBV9tZW1v');

const $core.Map<$core.String, $core.dynamic> TransferServiceBase$json = {
  '1': 'TransferService',
  '2': [
    {
      '1': 'Transfer',
      '2': '.transfer.v1.TransferRequest',
      '3': '.transfer.v1.TransferResponse'
    },
    {
      '1': 'ListTransfers',
      '2': '.transfer.v1.ListTransfersRequest',
      '3': '.transfer.v1.ListTransfersResponse'
    },
    {
      '1': 'GetTransfer',
      '2': '.transfer.v1.GetTransferRequest',
      '3': '.transfer.v1.GetTransferResponse'
    },
  ],
};

@$core.Deprecated('Use transferServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>>
    TransferServiceBase$messageJson = {
  '.transfer.v1.TransferRequest': TransferRequest$json,
  '.transfer.v1.TransferResponse': TransferResponse$json,
  '.transfer.v1.Transaction': Transaction$json,
  '.google.protobuf.Timestamp': $0.Timestamp$json,
  '.transfer.v1.ListTransfersRequest': ListTransfersRequest$json,
  '.transfer.v1.ListTransfersResponse': ListTransfersResponse$json,
  '.transfer.v1.GetTransferRequest': GetTransferRequest$json,
  '.transfer.v1.GetTransferResponse': GetTransferResponse$json,
};

/// Descriptor for `TransferService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List transferServiceDescriptor = $convert.base64Decode(
    'Cg9UcmFuc2ZlclNlcnZpY2USRwoIVHJhbnNmZXISHC50cmFuc2Zlci52MS5UcmFuc2ZlclJlcX'
    'Vlc3QaHS50cmFuc2Zlci52MS5UcmFuc2ZlclJlc3BvbnNlElYKDUxpc3RUcmFuc2ZlcnMSIS50'
    'cmFuc2Zlci52MS5MaXN0VHJhbnNmZXJzUmVxdWVzdBoiLnRyYW5zZmVyLnYxLkxpc3RUcmFuc2'
    'ZlcnNSZXNwb25zZRJQCgtHZXRUcmFuc2ZlchIfLnRyYW5zZmVyLnYxLkdldFRyYW5zZmVyUmVx'
    'dWVzdBogLnRyYW5zZmVyLnYxLkdldFRyYW5zZmVyUmVzcG9uc2U=');
