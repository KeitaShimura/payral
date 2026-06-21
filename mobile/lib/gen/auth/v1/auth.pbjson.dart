// This is a generated file - do not edit.
//
// Generated from auth/v1/auth.proto.

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

@$core.Deprecated('Use registerRequestDescriptor instead')
const RegisterRequest$json = {
  '1': 'RegisterRequest',
  '2': [
    {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `RegisterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerRequestDescriptor = $convert.base64Decode(
    'Cg9SZWdpc3RlclJlcXVlc3QSFAoFZW1haWwYASABKAlSBWVtYWlsEhoKCHBhc3N3b3JkGAIgAS'
    'gJUghwYXNzd29yZBISCgRuYW1lGAMgASgJUgRuYW1l');

@$core.Deprecated('Use registerResponseDescriptor instead')
const RegisterResponse$json = {
  '1': 'RegisterResponse',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    {
      '1': 'expires_at',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'expiresAt'
    },
  ],
};

/// Descriptor for `RegisterResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerResponseDescriptor = $convert.base64Decode(
    'ChBSZWdpc3RlclJlc3BvbnNlEhcKB3VzZXJfaWQYASABKAlSBnVzZXJJZBIUCgV0b2tlbhgCIA'
    'EoCVIFdG9rZW4SOQoKZXhwaXJlc19hdBgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3Rh'
    'bXBSCWV4cGlyZXNBdA==');

@$core.Deprecated('Use loginRequestDescriptor instead')
const LoginRequest$json = {
  '1': 'LoginRequest',
  '2': [
    {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `LoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRequestDescriptor = $convert.base64Decode(
    'CgxMb2dpblJlcXVlc3QSFAoFZW1haWwYASABKAlSBWVtYWlsEhoKCHBhc3N3b3JkGAIgASgJUg'
    'hwYXNzd29yZA==');

@$core.Deprecated('Use loginResponseDescriptor instead')
const LoginResponse$json = {
  '1': 'LoginResponse',
  '2': [
    {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    {
      '1': 'expires_at',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'expiresAt'
    },
  ],
};

/// Descriptor for `LoginResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginResponseDescriptor = $convert.base64Decode(
    'Cg1Mb2dpblJlc3BvbnNlEhQKBXRva2VuGAEgASgJUgV0b2tlbhI5CgpleHBpcmVzX2F0GAIgAS'
    'gLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJZXhwaXJlc0F0');

@$core.Deprecated('Use oIDCAuthorizeRequestDescriptor instead')
const OIDCAuthorizeRequest$json = {
  '1': 'OIDCAuthorizeRequest',
  '2': [
    {'1': 'provider', '3': 1, '4': 1, '5': 9, '10': 'provider'},
  ],
};

/// Descriptor for `OIDCAuthorizeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List oIDCAuthorizeRequestDescriptor =
    $convert.base64Decode(
        'ChRPSURDQXV0aG9yaXplUmVxdWVzdBIaCghwcm92aWRlchgBIAEoCVIIcHJvdmlkZXI=');

@$core.Deprecated('Use oIDCAuthorizeResponseDescriptor instead')
const OIDCAuthorizeResponse$json = {
  '1': 'OIDCAuthorizeResponse',
  '2': [
    {'1': 'redirect_url', '3': 1, '4': 1, '5': 9, '10': 'redirectUrl'},
  ],
};

/// Descriptor for `OIDCAuthorizeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List oIDCAuthorizeResponseDescriptor = $convert.base64Decode(
    'ChVPSURDQXV0aG9yaXplUmVzcG9uc2USIQoMcmVkaXJlY3RfdXJsGAEgASgJUgtyZWRpcmVjdF'
    'VybA==');

@$core.Deprecated('Use oIDCCallbackRequestDescriptor instead')
const OIDCCallbackRequest$json = {
  '1': 'OIDCCallbackRequest',
  '2': [
    {'1': 'provider', '3': 1, '4': 1, '5': 9, '10': 'provider'},
    {'1': 'code', '3': 2, '4': 1, '5': 9, '10': 'code'},
    {'1': 'state', '3': 3, '4': 1, '5': 9, '10': 'state'},
  ],
};

/// Descriptor for `OIDCCallbackRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List oIDCCallbackRequestDescriptor = $convert.base64Decode(
    'ChNPSURDQ2FsbGJhY2tSZXF1ZXN0EhoKCHByb3ZpZGVyGAEgASgJUghwcm92aWRlchISCgRjb2'
    'RlGAIgASgJUgRjb2RlEhQKBXN0YXRlGAMgASgJUgVzdGF0ZQ==');

@$core.Deprecated('Use oIDCCallbackResponseDescriptor instead')
const OIDCCallbackResponse$json = {
  '1': 'OIDCCallbackResponse',
  '2': [
    {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    {
      '1': 'expires_at',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'expiresAt'
    },
  ],
};

/// Descriptor for `OIDCCallbackResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List oIDCCallbackResponseDescriptor = $convert.base64Decode(
    'ChRPSURDQ2FsbGJhY2tSZXNwb25zZRIUCgV0b2tlbhgBIAEoCVIFdG9rZW4SOQoKZXhwaXJlc1'
    '9hdBgCIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCWV4cGlyZXNBdA==');

const $core.Map<$core.String, $core.dynamic> AuthServiceBase$json = {
  '1': 'AuthService',
  '2': [
    {
      '1': 'Register',
      '2': '.auth.v1.RegisterRequest',
      '3': '.auth.v1.RegisterResponse'
    },
    {'1': 'Login', '2': '.auth.v1.LoginRequest', '3': '.auth.v1.LoginResponse'},
    {
      '1': 'OIDCAuthorize',
      '2': '.auth.v1.OIDCAuthorizeRequest',
      '3': '.auth.v1.OIDCAuthorizeResponse'
    },
    {
      '1': 'OIDCCallback',
      '2': '.auth.v1.OIDCCallbackRequest',
      '3': '.auth.v1.OIDCCallbackResponse'
    },
  ],
};

@$core.Deprecated('Use authServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>>
    AuthServiceBase$messageJson = {
  '.auth.v1.RegisterRequest': RegisterRequest$json,
  '.auth.v1.RegisterResponse': RegisterResponse$json,
  '.google.protobuf.Timestamp': $0.Timestamp$json,
  '.auth.v1.LoginRequest': LoginRequest$json,
  '.auth.v1.LoginResponse': LoginResponse$json,
  '.auth.v1.OIDCAuthorizeRequest': OIDCAuthorizeRequest$json,
  '.auth.v1.OIDCAuthorizeResponse': OIDCAuthorizeResponse$json,
  '.auth.v1.OIDCCallbackRequest': OIDCCallbackRequest$json,
  '.auth.v1.OIDCCallbackResponse': OIDCCallbackResponse$json,
};

/// Descriptor for `AuthService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List authServiceDescriptor = $convert.base64Decode(
    'CgtBdXRoU2VydmljZRI/CghSZWdpc3RlchIYLmF1dGgudjEuUmVnaXN0ZXJSZXF1ZXN0GhkuYX'
    'V0aC52MS5SZWdpc3RlclJlc3BvbnNlEjYKBUxvZ2luEhUuYXV0aC52MS5Mb2dpblJlcXVlc3Qa'
    'Fi5hdXRoLnYxLkxvZ2luUmVzcG9uc2USTgoNT0lEQ0F1dGhvcml6ZRIdLmF1dGgudjEuT0lEQ0'
    'F1dGhvcml6ZVJlcXVlc3QaHi5hdXRoLnYxLk9JRENBdXRob3JpemVSZXNwb25zZRJLCgxPSURD'
    'Q2FsbGJhY2sSHC5hdXRoLnYxLk9JRENDYWxsYmFja1JlcXVlc3QaHS5hdXRoLnYxLk9JRENDYW'
    'xsYmFja1Jlc3BvbnNl');
