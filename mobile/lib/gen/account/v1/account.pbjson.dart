// This is a generated file - do not edit.
//
// Generated from account/v1/account.proto.

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

@$core.Deprecated('Use accountStatusDescriptor instead')
const AccountStatus$json = {
  '1': 'AccountStatus',
  '2': [
    {'1': 'ACCOUNT_STATUS_UNSPECIFIED', '2': 0},
    {'1': 'ACCOUNT_STATUS_ACTIVE', '2': 1},
    {'1': 'ACCOUNT_STATUS_FROZEN', '2': 2},
    {'1': 'ACCOUNT_STATUS_CLOSED', '2': 3},
  ],
};

/// Descriptor for `AccountStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List accountStatusDescriptor = $convert.base64Decode(
    'Cg1BY2NvdW50U3RhdHVzEh4KGkFDQ09VTlRfU1RBVFVTX1VOU1BFQ0lGSUVEEAASGQoVQUNDT1'
    'VOVF9TVEFUVVNfQUNUSVZFEAESGQoVQUNDT1VOVF9TVEFUVVNfRlJPWkVOEAISGQoVQUNDT1VO'
    'VF9TVEFUVVNfQ0xPU0VEEAM=');

@$core.Deprecated('Use accountDescriptor instead')
const Account$json = {
  '1': 'Account',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'user_id', '3': 2, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'balance', '3': 3, '4': 1, '5': 3, '10': 'balance'},
    {'1': 'currency', '3': 4, '4': 1, '5': 9, '10': 'currency'},
    {
      '1': 'status',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.account.v1.AccountStatus',
      '10': 'status'
    },
    {
      '1': 'created_at',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'createdAt'
    },
    {
      '1': 'updated_at',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'updatedAt'
    },
  ],
};

/// Descriptor for `Account`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountDescriptor = $convert.base64Decode(
    'CgdBY2NvdW50Eg4KAmlkGAEgASgJUgJpZBIXCgd1c2VyX2lkGAIgASgJUgZ1c2VySWQSGAoHYm'
    'FsYW5jZRgDIAEoA1IHYmFsYW5jZRIaCghjdXJyZW5jeRgEIAEoCVIIY3VycmVuY3kSMQoGc3Rh'
    'dHVzGAUgASgOMhkuYWNjb3VudC52MS5BY2NvdW50U3RhdHVzUgZzdGF0dXMSOQoKY3JlYXRlZF'
    '9hdBgGIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCWNyZWF0ZWRBdBI5Cgp1cGRh'
    'dGVkX2F0GAcgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJdXBkYXRlZEF0');

@$core.Deprecated('Use createAccountRequestDescriptor instead')
const CreateAccountRequest$json = {
  '1': 'CreateAccountRequest',
  '2': [
    {'1': 'currency', '3': 1, '4': 1, '5': 9, '10': 'currency'},
  ],
};

/// Descriptor for `CreateAccountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createAccountRequestDescriptor =
    $convert.base64Decode(
        'ChRDcmVhdGVBY2NvdW50UmVxdWVzdBIaCghjdXJyZW5jeRgBIAEoCVIIY3VycmVuY3k=');

@$core.Deprecated('Use createAccountResponseDescriptor instead')
const CreateAccountResponse$json = {
  '1': 'CreateAccountResponse',
  '2': [
    {
      '1': 'account',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.account.v1.Account',
      '10': 'account'
    },
  ],
};

/// Descriptor for `CreateAccountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createAccountResponseDescriptor = $convert.base64Decode(
    'ChVDcmVhdGVBY2NvdW50UmVzcG9uc2USLQoHYWNjb3VudBgBIAEoCzITLmFjY291bnQudjEuQW'
    'Njb3VudFIHYWNjb3VudA==');

@$core.Deprecated('Use listAccountsRequestDescriptor instead')
const ListAccountsRequest$json = {
  '1': 'ListAccountsRequest',
};

/// Descriptor for `ListAccountsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAccountsRequestDescriptor =
    $convert.base64Decode('ChNMaXN0QWNjb3VudHNSZXF1ZXN0');

@$core.Deprecated('Use listAccountsResponseDescriptor instead')
const ListAccountsResponse$json = {
  '1': 'ListAccountsResponse',
  '2': [
    {
      '1': 'accounts',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.account.v1.Account',
      '10': 'accounts'
    },
  ],
};

/// Descriptor for `ListAccountsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAccountsResponseDescriptor = $convert.base64Decode(
    'ChRMaXN0QWNjb3VudHNSZXNwb25zZRIvCghhY2NvdW50cxgBIAMoCzITLmFjY291bnQudjEuQW'
    'Njb3VudFIIYWNjb3VudHM=');

@$core.Deprecated('Use getAccountRequestDescriptor instead')
const GetAccountRequest$json = {
  '1': 'GetAccountRequest',
  '2': [
    {'1': 'account_id', '3': 1, '4': 1, '5': 9, '10': 'accountId'},
  ],
};

/// Descriptor for `GetAccountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccountRequestDescriptor = $convert.base64Decode(
    'ChFHZXRBY2NvdW50UmVxdWVzdBIdCgphY2NvdW50X2lkGAEgASgJUglhY2NvdW50SWQ=');

@$core.Deprecated('Use getAccountResponseDescriptor instead')
const GetAccountResponse$json = {
  '1': 'GetAccountResponse',
  '2': [
    {
      '1': 'account',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.account.v1.Account',
      '10': 'account'
    },
  ],
};

/// Descriptor for `GetAccountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccountResponseDescriptor = $convert.base64Decode(
    'ChJHZXRBY2NvdW50UmVzcG9uc2USLQoHYWNjb3VudBgBIAEoCzITLmFjY291bnQudjEuQWNjb3'
    'VudFIHYWNjb3VudA==');

const $core.Map<$core.String, $core.dynamic> AccountServiceBase$json = {
  '1': 'AccountService',
  '2': [
    {
      '1': 'CreateAccount',
      '2': '.account.v1.CreateAccountRequest',
      '3': '.account.v1.CreateAccountResponse'
    },
    {
      '1': 'ListAccounts',
      '2': '.account.v1.ListAccountsRequest',
      '3': '.account.v1.ListAccountsResponse'
    },
    {
      '1': 'GetAccount',
      '2': '.account.v1.GetAccountRequest',
      '3': '.account.v1.GetAccountResponse'
    },
  ],
};

@$core.Deprecated('Use accountServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>>
    AccountServiceBase$messageJson = {
  '.account.v1.CreateAccountRequest': CreateAccountRequest$json,
  '.account.v1.CreateAccountResponse': CreateAccountResponse$json,
  '.account.v1.Account': Account$json,
  '.google.protobuf.Timestamp': $0.Timestamp$json,
  '.account.v1.ListAccountsRequest': ListAccountsRequest$json,
  '.account.v1.ListAccountsResponse': ListAccountsResponse$json,
  '.account.v1.GetAccountRequest': GetAccountRequest$json,
  '.account.v1.GetAccountResponse': GetAccountResponse$json,
};

/// Descriptor for `AccountService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List accountServiceDescriptor = $convert.base64Decode(
    'Cg5BY2NvdW50U2VydmljZRJUCg1DcmVhdGVBY2NvdW50EiAuYWNjb3VudC52MS5DcmVhdGVBY2'
    'NvdW50UmVxdWVzdBohLmFjY291bnQudjEuQ3JlYXRlQWNjb3VudFJlc3BvbnNlElEKDExpc3RB'
    'Y2NvdW50cxIfLmFjY291bnQudjEuTGlzdEFjY291bnRzUmVxdWVzdBogLmFjY291bnQudjEuTG'
    'lzdEFjY291bnRzUmVzcG9uc2USSwoKR2V0QWNjb3VudBIdLmFjY291bnQudjEuR2V0QWNjb3Vu'
    'dFJlcXVlc3QaHi5hY2NvdW50LnYxLkdldEFjY291bnRSZXNwb25zZQ==');
