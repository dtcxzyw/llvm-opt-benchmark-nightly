Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-pkcs12?download=true
inline.NumInlined: 30
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0
@hf_pkcs12_crlValue = internal global i32 0, align 4
@.str.75 = private unnamed_addr constant [9 x i8] c"crlValue\00", align 1
@.str.76 = private unnamed_addr constant [24 x i8] c"pkcs12.crlValue_element\00", align 1
@hf_pkcs12_secretTypeId = internal global i32 0, align 4
@.str.77 = private unnamed_addr constant [13 x i8] c"secretTypeId\00", align 1
@.str.78 = private unnamed_addr constant [20 x i8] c"pkcs12.secretTypeId\00", align 1
@hf_pkcs12_secretValue = internal global i32 0, align 4
@.str.79 = private unnamed_addr constant [12 x i8] c"secretValue\00", align 1
@.str.80 = private unnamed_addr constant [27 x i8] c"pkcs12.secretValue_element\00", align 1
@hf_pkcs12_attrId = internal global i32 0, align 4
@.str.81 = private unnamed_addr constant [7 x i8] c"attrId\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"pkcs12.attrId\00", align 1
@hf_pkcs12_attrValues = internal global i32 0, align 4
@.str.83 = private unnamed_addr constant [11 x i8] c"attrValues\00", align 1
@.str.84 = private unnamed_addr constant [18 x i8] c"pkcs12.attrValues\00", align 1
@hf_pkcs12_attrValues_item = internal global i32 0, align 4
@.str.85 = private unnamed_addr constant [16 x i8] c"attrValues item\00", align 1
@.str.86 = private unnamed_addr constant [31 x i8] c"pkcs12.attrValues_item_element\00", align 1
@hf_pkcs12_salt = internal global i32 0, align 4
@.str.87 = private unnamed_addr constant [5 x i8] c"salt\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"pkcs12.salt\00", align 1
@hf_pkcs12_saltChoice = internal global i32 0, align 4
@.str.89 = private unnamed_addr constant [18 x i8] c"pkcs12.saltChoice\00", align 1
@.str.90 = private unnamed_addr constant [13 x i8] c"T_saltChoice\00", align 1
@hf_pkcs12_specified = internal global i32 0, align 4
@.str.91 = private unnamed_addr constant [10 x i8] c"specified\00", align 1
@.str.92 = private unnamed_addr constant [17 x i8] c"pkcs12.specified\00", align 1
@hf_pkcs12_otherSource = internal global i32 0, align 4
@.str.93 = private unnamed_addr constant [12 x i8] c"otherSource\00", align 1
@.str.94 = private unnamed_addr constant [27 x i8] c"pkcs12.otherSource_element\00", align 1
@.str.95 = private unnamed_addr constant [20 x i8] c"AlgorithmIdentifier\00", align 1
@hf_pkcs12_iterationCount = internal global i32 0, align 4
@.str.96 = private unnamed_addr constant [15 x i8] c"iterationCount\00", align 1
@.str.97 = private unnamed_addr constant [22 x i8] c"pkcs12.iterationCount\00", align 1
@hf_pkcs12_keyLength = internal global i32 0, align 4
@.str.98 = private unnamed_addr constant [10 x i8] c"keyLength\00", align 1
@.str.99 = private unnamed_addr constant [17 x i8] c"pkcs12.keyLength\00", align 1
@.str.100 = private unnamed_addr constant [14 x i8] c"INTEGER_1_MAX\00", align 1
@hf_pkcs12_prf = internal global i32 0, align 4
@.str.101 = private unnamed_addr constant [4 x i8] c"prf\00", align 1
@.str.102 = private unnamed_addr constant [19 x i8] c"pkcs12.prf_element\00", align 1
@hf_pkcs12_keyDerivationFunc = internal global i32 0, align 4
@.str.103 = private unnamed_addr constant [18 x i8] c"keyDerivationFunc\00", align 1
@.str.104 = private unnamed_addr constant [33 x i8] c"pkcs12.keyDerivationFunc_element\00", align 1
@hf_pkcs12_encryptionScheme = internal global i32 0, align 4
@.str.105 = private unnamed_addr constant [17 x i8] c"encryptionScheme\00", align 1
@.str.106 = private unnamed_addr constant [32 x i8] c"pkcs12.encryptionScheme_element\00", align 1
@hf_pkcs12_messageAuthScheme = internal global i32 0, align 4
@.str.107 = private unnamed_addr constant [18 x i8] c"messageAuthScheme\00", align 1
@.str.108 = private unnamed_addr constant [33 x i8] c"pkcs12.messageAuthScheme_element\00", align 1
@hf_pkcs12_costParameter = internal global i32 0, align 4
@.str.109 = private unnamed_addr constant [14 x i8] c"costParameter\00", align 1
@.str.110 = private unnamed_addr constant [21 x i8] c"pkcs12.costParameter\00", align 1
@hf_pkcs12_blockSize = internal global i32 0, align 4
@.str.111 = private unnamed_addr constant [10 x i8] c"blockSize\00", align 1
@.str.112 = private unnamed_addr constant [17 x i8] c"pkcs12.blockSize\00", align 1
@hf_pkcs12_parallelizationParameter = internal global i32 0, align 4
@.str.113 = private unnamed_addr constant [25 x i8] c"parallelizationParameter\00", align 1
@.str.114 = private unnamed_addr constant [32 x i8] c"pkcs12.parallelizationParameter\00", align 1
@proto_register_pkcs12.ett = internal global [19 x ptr] [ptr @ett_decrypted_pbe, ptr @ett_pkcs12_PFX, ptr @ett_pkcs12_MacData, ptr @ett_pkcs12_AuthenticatedSafe, ptr @ett_pkcs12_SafeContents, ptr @ett_pkcs12_SafeBag, ptr @ett_pkcs12_SET_OF_PKCS12Attribute, ptr @ett_pkcs12_CertBag, ptr @ett_pkcs12_CRLBag, ptr @ett_pkcs12_SecretBag, ptr @ett_pkcs12_PKCS12Attribute, ptr @ett_pkcs12_T_attrValues, ptr @ett_pkcs12_Pkcs_12PbeParams, ptr @ett_pkcs12_PBKDF2_params, ptr @ett_pkcs12_T_saltChoice, ptr @ett_pkcs12_PBEParameter, ptr @ett_pkcs12_PBES2_params, ptr @ett_pkcs12_PBMAC1_params, ptr @ett_pkcs12_Scrypt_params], align 16
@ett_pkcs12_PFX = internal global i32 0, align 4
@ett_pkcs12_MacData = internal global i32 0, align 4
@ett_pkcs12_AuthenticatedSafe = internal global i32 0, align 4
@ett_pkcs12_SafeContents = internal global i32 0, align 4
@ett_pkcs12_SafeBag = internal global i32 0, align 4
@ett_pkcs12_SET_OF_PKCS12Attribute = internal global i32 0, align 4
@ett_pkcs12_CertBag = internal global i32 0, align 4
@ett_pkcs12_CRLBag = internal global i32 0, align 4
@ett_pkcs12_SecretBag = internal global i32 0, align 4
@ett_pkcs12_PKCS12Attribute = internal global i32 0, align 4
@ett_pkcs12_T_attrValues = internal global i32 0, align 4
@ett_pkcs12_Pkcs_12PbeParams = internal global i32 0, align 4
@ett_pkcs12_PBKDF2_params = internal global i32 0, align 4
@ett_pkcs12_T_saltChoice = internal global i32 0, align 4
@ett_pkcs12_PBEParameter = internal global i32 0, align 4
@ett_pkcs12_PBES2_params = internal global i32 0, align 4
@ett_pkcs12_PBMAC1_params = internal global i32 0, align 4
@ett_pkcs12_Scrypt_params = internal global i32 0, align 4
@proto_register_pkcs12.ei = internal global [1 x { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } }] [{ ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_pkcs12_octet_string_expected, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.115, i32 150994944, i32 6291456, ptr @.str.116, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }], align 16
@ei_pkcs12_octet_string_expected = internal global %struct.expert_field zeroinitializer, align 4
@.str.115 = private unnamed_addr constant [29 x i8] c"pkcs12.octet_string_expected\00", align 1
@.str.116 = private unnamed_addr constant [33 x i8] c"BER Error: OCTET STRING expected\00", align 1
@.str.117 = private unnamed_addr constant [39 x i8] c"PKCS#12: Personal Information Exchange\00", align 1
@.str.118 = private unnamed_addr constant [7 x i8] c"PKCS12\00", align 1
@.str.119 = private unnamed_addr constant [7 x i8] c"pkcs12\00", align 1
@proto_pkcs12 = internal unnamed_addr global i32 0, align 4
@.str.120 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.121 = private unnamed_addr constant [34 x i8] c"Password to decrypt the file with\00", align 1
@.str.122 = private unnamed_addr constant [79 x i8] c"The password to used to decrypt the encrypted elements within the PKCS#12 file\00", align 1
@.str.123 = private unnamed_addr constant [18 x i8] c"try_null_password\00", align 1
@.str.124 = private unnamed_addr constant [37 x i8] c"Try to decrypt with a empty password\00", align 1
@.str.125 = private unnamed_addr constant [86 x i8] c"Whether to try and decrypt the encrypted data within the PKCS#12 with a NULL password\00", align 1
@.str.126 = private unnamed_addr constant [8 x i8] c"PKCS#12\00", align 1
@.str.127 = private unnamed_addr constant [5 x i8] c".p12\00", align 1
@.str.128 = private unnamed_addr constant [5 x i8] c".pfx\00", align 1
@.str.129 = private unnamed_addr constant [27 x i8] c"1.2.840.113549.1.12.10.1.1\00", align 1
@.str.130 = private unnamed_addr constant [7 x i8] c"keyBag\00", align 1
@.str.131 = private unnamed_addr constant [27 x i8] c"1.2.840.113549.1.12.10.1.2\00", align 1
@.str.132 = private unnamed_addr constant [20 x i8] c"pkcs8ShroudedKeyBag\00", align 1
@.str.133 = private unnamed_addr constant [27 x i8] c"1.2.840.113549.1.12.10.1.3\00", align 1
@.str.134 = private unnamed_addr constant [8 x i8] c"certBag\00", align 1
@.str.135 = private unnamed_addr constant [27 x i8] c"1.2.840.113549.1.12.10.1.4\00", align 1
@.str.136 = private unnamed_addr constant [10 x i8] c"secretBag\00", align 1
@.str.137 = private unnamed_addr constant [27 x i8] c"1.2.840.113549.1.12.10.1.5\00", align 1
@.str.138 = private unnamed_addr constant [7 x i8] c"crlBag\00", align 1
@.str.139 = private unnamed_addr constant [27 x i8] c"1.2.840.113549.1.12.10.1.6\00", align 1
@.str.140 = private unnamed_addr constant [16 x i8] c"safeContentsBag\00", align 1
@.str.141 = private unnamed_addr constant [26 x i8] c"2.16.840.1.113730.3.1.216\00", align 1
@.str.142 = private unnamed_addr constant [17 x i8] c"pkcs-9-at-PKCS12\00", align 1
@.str.143 = private unnamed_addr constant [23 x i8] c"pbeWithSHAAnd128BitRC4\00", align 1
@.str.144 = private unnamed_addr constant [24 x i8] c"1.2.840.113549.1.12.1.2\00", align 1
@.str.145 = private unnamed_addr constant [22 x i8] c"pbeWithSHAAnd40BitRC4\00", align 1
@.str.146 = private unnamed_addr constant [32 x i8] c"pbeWithSHAAnd3-KeyTripleDES-CBC\00", align 1
@.str.147 = private unnamed_addr constant [24 x i8] c"1.2.840.113549.1.12.1.4\00", align 1
@.str.148 = private unnamed_addr constant [32 x i8] c"pbeWithSHAAnd2-KeyTripleDES-CBC\00", align 1
@.str.149 = private unnamed_addr constant [24 x i8] c"1.2.840.113549.1.12.1.5\00", align 1
@.str.150 = private unnamed_addr constant [27 x i8] c"pbeWithSHAAnd128BitRC2-CBC\00", align 1
@.str.151 = private unnamed_addr constant [26 x i8] c"pbeWithSHAAnd40BitRC2-CBC\00", align 1
@.str.152 = private unnamed_addr constant [21 x i8] c"1.2.840.113549.1.5.1\00", align 1
@.str.153 = private unnamed_addr constant [21 x i8] c"pbeWithMD2AndDES-CBC\00", align 1
@.str.154 = private unnamed_addr constant [21 x i8] c"1.2.840.113549.1.5.3\00", align 1
@.str.155 = private unnamed_addr constant [21 x i8] c"pbeWithMD5AndDES-CBC\00", align 1
@.str.156 = private unnamed_addr constant [21 x i8] c"1.2.840.113549.1.5.4\00", align 1
@.str.157 = private unnamed_addr constant [21 x i8] c"pbeWithMD2AndRC2-CBC\00", align 1
@.str.158 = private unnamed_addr constant [21 x i8] c"1.2.840.113549.1.5.6\00", align 1
@.str.159 = private unnamed_addr constant [21 x i8] c"pbeWithMD5AndRC2-CBC\00", align 1
@.str.160 = private unnamed_addr constant [22 x i8] c"1.2.840.113549.1.5.10\00", align 1
@.str.161 = private unnamed_addr constant [22 x i8] c"pbeWithSHA1AndDES-CBC\00", align 1
@.str.162 = private unnamed_addr constant [22 x i8] c"1.2.840.113549.1.5.11\00", align 1
@.str.163 = private unnamed_addr constant [22 x i8] c"pbeWithSHA1AndRC2-CBC\00", align 1
@.str.164 = private unnamed_addr constant [22 x i8] c"1.2.840.113549.1.5.12\00", align 1
@.str.165 = private unnamed_addr constant [10 x i8] c"id-PBKDF2\00", align 1
@.str.166 = private unnamed_addr constant [22 x i8] c"1.2.840.113549.1.5.13\00", align 1
@.str.167 = private unnamed_addr constant [9 x i8] c"id-PBES2\00", align 1
@.str.168 = private unnamed_addr constant [22 x i8] c"1.2.840.113549.1.5.14\00", align 1
@.str.169 = private unnamed_addr constant [10 x i8] c"id-PBMAC1\00", align 1
@.str.170 = private unnamed_addr constant [23 x i8] c"1.3.6.1.4.1.11591.4.11\00", align 1
@.str.171 = private unnamed_addr constant [10 x i8] c"id-scrypt\00", align 1
@.str.172 = private unnamed_addr constant [24 x i8] c"1.2.840.113549.1.9.22.1\00", align 1
@.str.173 = private unnamed_addr constant [16 x i8] c"x509Certificate\00", align 1
@.str.174 = private unnamed_addr constant [19 x i8] c"1.2.840.113549.2.7\00", align 1
@.str.175 = private unnamed_addr constant [16 x i8] c"id-hmacWithSHA1\00", align 1
@.str.176 = private unnamed_addr constant [19 x i8] c"1.2.840.113549.2.8\00", align 1
@.str.177 = private unnamed_addr constant [18 x i8] c"id-hmacWithSHA224\00", align 1
@.str.178 = private unnamed_addr constant [19 x i8] c"1.2.840.113549.2.9\00", align 1
@.str.179 = private unnamed_addr constant [18 x i8] c"id-hmacWithSHA256\00", align 1
@.str.180 = private unnamed_addr constant [20 x i8] c"1.2.840.113549.2.10\00", align 1
@.str.181 = private unnamed_addr constant [18 x i8] c"id-hmacWithSHA384\00", align 1
@.str.182 = private unnamed_addr constant [20 x i8] c"1.2.840.113549.2.11\00", align 1
@.str.183 = private unnamed_addr constant [18 x i8] c"id-hmacWithSHA512\00", align 1
@.str.184 = private unnamed_addr constant [20 x i8] c"1.2.840.113549.2.12\00", align 1
@.str.185 = private unnamed_addr constant [22 x i8] c"id-hmacWithSHA512-224\00", align 1
@.str.186 = private unnamed_addr constant [20 x i8] c"1.2.840.113549.2.13\00", align 1
@.str.187 = private unnamed_addr constant [22 x i8] c"id-hmacWithSHA512-256\00", align 1
@.str.188 = private unnamed_addr constant [3 x i8] c"v3\00", align 1
@pkcs12_T_version_vals = internal constant [2 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.188 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@pkcs12_T_saltChoice_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.91 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.93 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.191 = private unnamed_addr constant [8 x i8] c"ber.oid\00", align 1
@.str.192 = private unnamed_addr constant [21 x i8] c"1.2.840.113549.1.7.1\00", align 1
@SafeContents_sequence_of = internal constant [1 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_pkcs12_SafeContents_item, i8 0, [3 x i8] zeroinitializer, i32 16, i32 4, [4 x i8] zeroinitializer, ptr @dissect_pkcs12_SafeBag }], align 16
@SafeBag_sequence = internal constant [4 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_pkcs12_bagId, i8 0, [3 x i8] zeroinitializer, i32 6, i32 4, [4 x i8] zeroinitializer, ptr @dissect_pkcs12_T_bagId }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_pkcs12_bagValue, i8 2, [3 x i8] zeroinitializer, i32 0, i32 0, [4 x i8] zeroinitializer, ptr @dissect_pkcs12_T_bagValue }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_pkcs12_bagAttributes, i8 0, [3 x i8] zeroinitializer, i32 17, i32 5, [4 x i8] zeroinitializer, ptr @dissect_pkcs12_SET_OF_PKCS12Attribute }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@object_identifier_id = internal global ptr null, align 8
@.str.195 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@SET_OF_PKCS12Attribute_set_of = internal constant [1 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_pkcs12_bagAttributes_item, i8 0, [3 x i8] zeroinitializer, i32 16, i32 4, [4 x i8] zeroinitializer, ptr @dissect_pkcs12_PKCS12Attribute }], align 16
@PKCS12Attribute_sequence = internal constant [3 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_pkcs12_attrId, i8 0, [3 x i8] zeroinitializer, i32 6, i32 4, [4 x i8] zeroinitializer, ptr @dissect_pkcs12_T_attrId }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_pkcs12_attrValues, i8 0, [3 x i8] zeroinitializer, i32 17, i32 4, [4 x i8] zeroinitializer, ptr @dissect_pkcs12_T_attrValues }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@T_attrValues_set_of = internal constant [1 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_pkcs12_attrValues_item, i8 99, [3 x i8] zeroinitializer, i32 0, i32 4, [4 x i8] zeroinitializer, ptr @dissect_pkcs12_T_attrValues_item }], align 16
@AuthenticatedSafe_sequence_of = internal constant [1 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_pkcs12_AuthenticatedSafe_item, i8 0, [3 x i8] zeroinitializer, i32 16, i32 4, [4 x i8] zeroinitializer, ptr @dissect_cms_ContentInfo }], align 16
@PFX_sequence = internal constant [4 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_pkcs12_version, i8 0, [3 x i8] zeroinitializer, i32 2, i32 4, [4 x i8] zeroinitializer, ptr @dissect_pkcs12_T_version }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_pkcs12_authSafe, i8 0, [3 x i8] zeroinitializer, i32 16, i32 4, [4 x i8] zeroinitializer, ptr @dissect_cms_ContentInfo }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_pkcs12_macData, i8 0, [3 x i8] zeroinitializer, i32 16, i32 5, [4 x i8] zeroinitializer, ptr @dissect_pkcs12_MacData }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@MacData_sequence = internal constant [4 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_pkcs12_mac, i8 0, [3 x i8] zeroinitializer, i32 16, i32 4, [4 x i8] zeroinitializer, ptr @dissect_cms_DigestInfo }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_pkcs12_macSalt, i8 0, [3 x i8] zeroinitializer, i32 4, i32 4, [4 x i8] zeroinitializer, ptr @dissect_pkcs12_OCTET_STRING }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_pkcs12_iterations, i8 0, [3 x i8] zeroinitializer, i32 2, i32 5, [4 x i8] zeroinitializer, ptr @dissect_pkcs12_INTEGER }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@CertBag_sequence = internal constant [3 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_pkcs12_certId, i8 0, [3 x i8] zeroinitializer, i32 6, i32 4, [4 x i8] zeroinitializer, ptr @dissect_pkcs12_T_certId }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_pkcs12_certValue, i8 2, [3 x i8] zeroinitializer, i32 0, i32 0, [4 x i8] zeroinitializer, ptr @dissect_pkcs12_T_certValue }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@SecretBag_sequence = internal constant [3 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_pkcs12_secretTypeId, i8 0, [3 x i8] zeroinitializer, i32 6, i32 4, [4 x i8] zeroinitializer, ptr @dissect_pkcs12_T_secretTypeId }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_pkcs12_secretValue, i8 2, [3 x i8] zeroinitializer, i32 0, i32 0, [4 x i8] zeroinitializer, ptr @dissect_pkcs12_T_secretValue }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@CRLBag_sequence = internal constant [3 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_pkcs12_crlId, i8 0, [3 x i8] zeroinitializer, i32 6, i32 4, [4 x i8] zeroinitializer, ptr @dissect_pkcs12_T_crlId }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_pkcs12_crlValue, i8 2, [3 x i8] zeroinitializer, i32 0, i32 0, [4 x i8] zeroinitializer, ptr @dissect_pkcs12_T_crlValue }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@Pkcs_12PbeParams_sequence = internal constant [3 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_pkcs12_salt, i8 0, [3 x i8] zeroinitializer, i32 4, i32 4, [4 x i8] zeroinitializer, ptr @dissect_pkcs12_OCTET_STRING }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_pkcs12_iterations, i8 0, [3 x i8] zeroinitializer, i32 2, i32 4, [4 x i8] zeroinitializer, ptr @dissect_pkcs12_INTEGER }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@PBEParameter_sequence = internal constant [3 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_pkcs12_salt, i8 0, [3 x i8] zeroinitializer, i32 4, i32 4, [4 x i8] zeroinitializer, ptr @dissect_pkcs12_OCTET_STRING }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_pkcs12_iterationCount, i8 0, [3 x i8] zeroinitializer, i32 2, i32 4, [4 x i8] zeroinitializer, ptr @dissect_pkcs12_INTEGER }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@PBKDF2_params_sequence = internal constant [5 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_pkcs12_saltChoice, i8 99, [3 x i8] zeroinitializer, i32 -1, i32 12, [4 x i8] zeroinitializer, ptr @dissect_pkcs12_T_saltChoice }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_pkcs12_iterationCount, i8 0, [3 x i8] zeroinitializer, i32 2, i32 4, [4 x i8] zeroinitializer, ptr @dissect_pkcs12_INTEGER }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_pkcs12_keyLength, i8 0, [3 x i8] zeroinitializer, i32 2, i32 5, [4 x i8] zeroinitializer, ptr @dissect_pkcs12_INTEGER_1_MAX }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_pkcs12_prf, i8 0, [3 x i8] zeroinitializer, i32 16, i32 5, [4 x i8] zeroinitializer, ptr @dissect_x509af_AlgorithmIdentifier }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@T_saltChoice_choice = internal constant [3 x { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @hf_pkcs12_specified, i8 0, [3 x i8] zeroinitializer, i32 4, i32 4, [4 x i8] zeroinitializer, ptr @dissect_pkcs12_OCTET_STRING }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @hf_pkcs12_otherSource, i8 0, [3 x i8] zeroinitializer, i32 16, i32 4, [4 x i8] zeroinitializer, ptr @dissect_x509af_AlgorithmIdentifier }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@PBES2_params_sequence = internal constant [3 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_pkcs12_keyDerivationFunc, i8 0, [3 x i8] zeroinitializer, i32 16, i32 4, [4 x i8] zeroinitializer, ptr @dissect_x509af_AlgorithmIdentifier }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_pkcs12_encryptionScheme, i8 0, [3 x i8] zeroinitializer, i32 16, i32 4, [4 x i8] zeroinitializer, ptr @dissect_x509af_AlgorithmIdentifier }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@PBMAC1_params_sequence = internal constant [3 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_pkcs12_keyDerivationFunc, i8 0, [3 x i8] zeroinitializer, i32 16, i32 4, [4 x i8] zeroinitializer, ptr @dissect_x509af_AlgorithmIdentifier }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_pkcs12_messageAuthScheme, i8 0, [3 x i8] zeroinitializer, i32 16, i32 4, [4 x i8] zeroinitializer, ptr @dissect_x509af_AlgorithmIdentifier }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@Scrypt_params_sequence = internal constant [6 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_pkcs12_salt, i8 0, [3 x i8] zeroinitializer, i32 4, i32 4, [4 x i8] zeroinitializer, ptr @dissect_pkcs12_OCTET_STRING }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_pkcs12_costParameter, i8 0, [3 x i8] zeroinitializer, i32 2, i32 4, [4 x i8] zeroinitializer, ptr @dissect_pkcs12_INTEGER_1_MAX }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_pkcs12_blockSize, i8 0, [3 x i8] zeroinitializer, i32 2, i32 4, [4 x i8] zeroinitializer, ptr @dissect_pkcs12_INTEGER_1_MAX }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_pkcs12_parallelizationParameter, i8 0, [3 x i8] zeroinitializer, i32 2, i32 4, [4 x i8] zeroinitializer, ptr @dissect_pkcs12_INTEGER_1_MAX }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_pkcs12_keyLength, i8 0, [3 x i8] zeroinitializer, i32 2, i32 5, [4 x i8] zeroinitializer, ptr @dissect_pkcs12_INTEGER_1_MAX }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @PBE_reset_parameters() local_unnamed_addr #0 {
bb.a:
  store i32 0, ptr @iteration_count, align 4
  store ptr null, ptr @salt, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden range(i32 0, 2) i32 @PBE_decrypt_data(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = load ptr, ptr @password, align 8         ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1
  %i.e = icmp eq i8 %i.d, 0
  %i.f = load i8, ptr @try_null_password, align 1, !range !8
  %i.g = icmp eq i8 %i.f, 0
  %or.cond94 = select i1 %i.e, i1 %i.g, i1 false
  br i1 %or.cond94, label %bb.z, label %bb.d

bb.c:                                             ; preds = %bb.a
  %.old = load i8, ptr @try_null_password, align 1, !range !8, !noundef !9
  %.old93 = icmp eq i8 %.old, 0
  br i1 %.old93, label %bb.z, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = tail call ptr @x509af_get_last_algorithm_id() ; 3 uses
  %i.i = tail call i32 @strcmp(ptr noundef %i.h, ptr noundef nonnull dereferenceable(24) @.str) #9
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @strcmp(ptr noundef %i.h, ptr noundef nonnull dereferenceable(24) @.str.1) #9
  %.not83 = icmp eq i32 %i.j, 0
  br i1 %.not83, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i32 @strcmp(ptr noundef %i.h, ptr noundef nonnull dereferenceable(24) @.str.2) #9
  %.not84 = icmp eq i32 %i.k, 0
  br i1 %.not84, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %5, ptr noundef nonnull @.str.3)
  br label %bb.z

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.078 = phi i32 [ 301, %bb.e ], [ 2, %bb.d ], [ 307, %bb.f ]
  %.077 = phi i32 [ 0, %bb.e ], [ 3, %bb.d ], [ 3, %bb.f ]
  %.not86 = phi i1 [ true, %bb.e ], [ false, %bb.d ], [ false, %bb.f ] ; 2 uses
  %.076 = phi i32 [ 0, %bb.e ], [ 8, %bb.d ], [ 8, %bb.f ] ; 3 uses
  %.075 = phi i32 [ 16, %bb.e ], [ 24, %bb.d ], [ 5, %bb.f ] ; 2 uses
  %i.l = load i32, ptr @iteration_count, align 4  ; 3 uses
  %i.m = icmp eq i32 %i.l, 0
  %i.n = load ptr, ptr @salt, align 8
  %i.o = icmp eq ptr %i.n, null
  %or.cond = select i1 %i.m, i1 true, i1 %i.o
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %5, ptr noundef nonnull @.str.4)
  br label %bb.z

bb.j:                                             ; preds = %bb.h
  %i.p = icmp ugt i32 %i.l, 10000000
  br i1 %i.p, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %5, ptr noundef nonnull @.str.5, i32 noundef %i.l, i32 noundef 10000000)
  br label %bb.z

bb.l:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %3, i64 416        ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = zext nneg i32 %.075 to i64               ; 2 uses
  %i.t = tail call noalias ptr @wmem_alloc(ptr noundef %i.r, i64 noundef %i.s) #10 ; 2 uses
  %i.u = load ptr, ptr @salt, align 8
  %i.v = load i32, ptr @iteration_count, align 4
  %i.w = load ptr, ptr @password, align 8
  %i.x = tail call fastcc i32 @generate_key_or_iv(ptr noundef %3, i32 noundef 1, ptr noundef %i.u, i32 noundef %i.v, ptr noundef %i.w, i32 noundef %.075, ptr noundef %i.t)
  %.not85 = icmp eq i32 %i.x, 0
  br i1 %.not85, label %bb.z, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %.not86, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = load ptr, ptr %i.q, align 8
  %i.z = zext nneg i32 %.076 to i64
  %i.aa = tail call noalias ptr @wmem_alloc(ptr noundef %i.y, i64 noundef %i.z) #10 ; 2 uses
  %i.ab = load ptr, ptr @salt, align 8
  %i.ac = load i32, ptr @iteration_count, align 4
  %i.ad = load ptr, ptr @password, align 8
  %i.ae = tail call fastcc i32 @generate_key_or_iv(ptr noundef %3, i32 noundef 2, ptr noundef %i.ab, i32 noundef %i.ac, ptr noundef %i.ad, i32 noundef %.076, ptr noundef %i.aa)
  %.not87 = icmp eq i32 %i.ae, 0
  br i1 %.not87, label %bb.z, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.074 = phi ptr [ %i.aa, %bb.n ], [ null, %bb.m ]
  %i.af = call i32 @gcry_cipher_open(ptr noundef nonnull %i.a, i32 noundef %.078, i32 noundef %.077, i32 noundef 0)
  %i.ag = and i32 %i.af, 65535
  %.not88 = icmp eq i32 %i.ag, 0
  br i1 %.not88, label %bb.p, label %bb.z

bb.p:                                             ; preds = %bb.o
  %i.ah = load ptr, ptr %i.a, align 8
  %i.ai = call i32 @gcry_cipher_setkey(ptr noundef %i.ah, ptr noundef %i.t, i64 noundef %i.s)
  %i.aj = and i32 %i.ai, 65535
  %.not89 = icmp eq i32 %i.aj, 0
  br i1 %.not89, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = load ptr, ptr %i.a, align 8
  call void @gcry_cipher_close(ptr noundef %i.ak)
  br label %bb.z

bb.r:                                             ; preds = %bb.p
  br i1 %.not86, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.al = load ptr, ptr %i.a, align 8
  %i.am = zext nneg i32 %.076 to i64
  %i.an = call i32 @gcry_cipher_setiv(ptr noundef %i.al, ptr noundef %.074, i64 noundef %i.am)
  %i.ao = and i32 %i.an, 65535
  %.not90 = icmp eq i32 %i.ao, 0
  br i1 %.not90, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ap = load ptr, ptr %i.a, align 8
  call void @gcry_cipher_close(ptr noundef %i.ap)
  br label %bb.z

bb.u:                                             ; preds = %bb.s, %bb.r
  %i.aq = call i32 @tvb_captured_length(ptr noundef %2) ; 5 uses
  %i.ar = load ptr, ptr %i.q, align 8
  %i.as = sext i32 %i.aq to i64                   ; 4 uses
  %i.at = call noalias ptr @wmem_alloc(ptr noundef %i.ar, i64 noundef %i.as) #10 ; 5 uses
  %i.au = load ptr, ptr %i.a, align 8
  %i.av = load ptr, ptr %i.q, align 8
  %i.aw = call ptr @tvb_memdup(ptr noundef %i.av, ptr noundef %2, i32 noundef 0, i64 noundef %i.as)
  %i.ax = call i32 @gcry_cipher_decrypt(ptr noundef %i.au, ptr noundef %i.at, i64 noundef %i.as, ptr noundef %i.aw, i64 noundef %i.as)
  %i.ay = and i32 %i.ax, 65535
  %.not91 = icmp eq i32 %i.ay, 0
  br i1 %.not91, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %5, ptr noundef nonnull @.str.6)
  %i.az = load ptr, ptr %i.a, align 8
  call void @gcry_cipher_close(ptr noundef %i.az)
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.ba = load ptr, ptr %i.a, align 8
  call void @gcry_cipher_close(ptr noundef %i.ba)
  %i.bb = add i32 %i.aq, -1
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr i8, ptr %i.at, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1             ; 3 uses
  %i.bf = add i8 %i.be, -9
  %or.cond100 = icmp ult i8 %i.bf, -8
  br i1 %or.cond100, label %.loopexit, label %.lr.ph.preheader.a

.lr.ph.preheader.a:                               ; preds = %bb.w
  %6 = zext nneg i8 %i.be to i64
  br label %.lr.ph

bb.x:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %7 = icmp slt i64 %indvars.iv, 2
  br i1 %7, label %.loopexit, label %.lr.ph, !llvm.loop !7

.lr.ph:                                           ; preds = %.lr.ph.preheader.a, %bb.x
  %indvars.iv = phi i64 [ %6, %.lr.ph.preheader.a ], [ %indvars.iv.next, %bb.x ] ; 3 uses
  %8 = trunc nsw i64 %indvars.iv to i32
  %i.bg = sub i32 %i.aq, %8
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr i8, ptr %i.at, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1
  %.not92.a = icmp eq i8 %i.bj, %i.be
  br i1 %.not92.a, label %bb.x, label %.loopexit.thread

.loopexit:                                        ; preds = %bb.x, %bb.w
  %i.bk = load i8, ptr %i.at, align 1
  %i.bl = and i8 %i.bk, -2
  %or.cond4 = icmp eq i8 %i.bl, 48
  br i1 %or.cond4, label %bb.y, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.lr.ph, %.loopexit
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %5, ptr noundef nonnull @.str.7)
  br label %bb.z

bb.y:                                             ; preds = %.loopexit
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %5, ptr noundef nonnull @.str.8)
  %i.bm = load i32, ptr @ett_decrypted_pbe, align 4
  %i.bn = call ptr @proto_item_add_subtree(ptr noundef %5, i32 noundef %i.bm)
  %i.bo = call ptr @tvb_new_child_real_data(ptr noundef %2, ptr noundef %i.at, i32 noundef %i.aq, i32 noundef %i.aq) ; 2 uses
  %i.bp = call ptr @g_string_new(ptr noundef nonnull @.str.9) ; 3 uses
  call void (ptr, ptr, ...) @g_string_printf(ptr noundef %i.bp, ptr noundef nonnull @.str.10, ptr noundef %1)
  %i.bq = getelementptr i8, ptr %4, i64 16        ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = load ptr, ptr %i.bp, align 8
  %i.bt = call ptr @add_new_data_source(ptr noundef %i.br, ptr noundef %i.bo, ptr noundef %i.bs) ; 0 uses
  %i.bu = call ptr @g_string_free(ptr noundef %i.bp, i32 noundef 1) ; 0 uses
  %i.bv = load ptr, ptr %i.bq, align 8
  %i.bw = call i32 %0(ptr noundef %i.bo, ptr noundef %i.bv, ptr noundef %i.bn, ptr noundef null) ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.o, %bb.n, %bb.l, %bb.c, %bb.b, %bb.y, %.loopexit.thread, %bb.v, %bb.t, %bb.q, %bb.k, %bb.i, %bb.g
  %.079 = phi i32 [ 0, %bb.c ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.k ], [ 0, %bb.n ], [ 0, %bb.q ], [ 0, %bb.t ], [ 0, %bb.v ], [ 1, %bb.y ], [ 0, %.loopexit.thread ], [ 0, %bb.l ], [ 0, %bb.b ], [ 0, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.079
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid
declare ptr @x509af_get_last_algorithm_id() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @generate_key_or_iv(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 1, 3) %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i32 noundef range(i32 1, 25) %5, ptr nofree noundef writeonly captures(none) %6) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca [20 x i8], align 16               ; 8 uses
  %i.d = alloca [64 x i8], align 16               ; 5 uses
  %i.e = alloca [128 x i8], align 16              ; 7 uses
  %i.f = alloca i64, align 8                      ; 12 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca ptr, align 8                      ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store ptr null, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  %i.i = tail call i32 @tvb_captured_length(ptr noundef %2) ; 5 uses
  %i.j = getelementptr i8, ptr %0, i64 416
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = sext i32 %i.i to i64
  %i.m = tail call ptr @tvb_memdup(ptr noundef %i.k, ptr noundef %2, i32 noundef 0, i64 noundef %i.l) ; 4 uses
  %i.n = icmp eq ptr %4, null                     ; 3 uses
  br i1 %i.n, label %.preheader74.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #9 ; 2 uses
  %i.p = icmp ugt i64 %i.o, 31
  br i1 %i.p, label %.loopexit71, label %.preheader74.preheader

.preheader74.preheader:                           ; preds = %bb.a, %bb.b
  %.055106 = phi i64 [ %i.o, %bb.b ], [ 0, %bb.a ] ; 31 uses
  br label %.preheader74

.preheader74:                                     ; preds = %.preheader74, %.preheader74.preheader
  %.05377 = phi ptr [ %i.e, %.preheader74.preheader ], [ %i.ao, %.preheader74 ] ; 68 uses
  %i.q = phi i64 [ 0, %.preheader74.preheader ], [ %i.an, %.preheader74 ] ; 5 uses
  %indvars94 = trunc i64 %i.q to i32
  %i.r = urem i32 %indvars94, %i.i
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr i8, ptr %i.m, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1
  %i.v = getelementptr i8, ptr %.05377, i64 1
  store i8 %i.u, ptr %.05377, align 1
  %i.w = trunc i64 %i.q to i32
  %indvars94.1 = or disjoint i32 %i.w, 1
  %i.x = urem i32 %indvars94.1, %i.i
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr i8, ptr %i.m, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = getelementptr i8, ptr %.05377, i64 2
  store i8 %i.aa, ptr %i.v, align 1
  %i.ac = trunc i64 %i.q to i32
  %indvars94.2 = or disjoint i32 %i.ac, 2
  %i.ad = urem i32 %indvars94.2, %i.i
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr i8, ptr %i.m, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = getelementptr i8, ptr %.05377, i64 3
  store i8 %i.ag, ptr %i.ab, align 1
  %i.ai = trunc i64 %i.q to i32
  %indvars94.3 = or disjoint i32 %i.ai, 3
  %i.aj = urem i32 %indvars94.3, %i.i
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr i8, ptr %i.m, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1
  %i.an = add nuw nsw i64 %i.q, 4                 ; 2 uses
  %i.ao = getelementptr i8, ptr %.05377, i64 4    ; 3 uses
  store i8 %i.am, ptr %i.ah, align 1
  %exitcond.not.3 = icmp eq i64 %i.an, 64
  br i1 %exitcond.not.3, label %bb.c, label %.preheader74, !llvm.loop !10

bb.c:                                             ; preds = %.preheader74
  br i1 %i.n, label %bb.d, label %.preheader72.preheader

.preheader72.preheader:                           ; preds = %bb.c
  %i.ap = getelementptr i8, ptr %.05377, i64 5
  store i8 0, ptr %i.ao, align 1
  %i.aq = load i8, ptr %4, align 1
  %i.ar = getelementptr i8, ptr %.05377, i64 6
  store i8 %i.aq, ptr %i.ap, align 1
  %i.as = icmp ne i64 %.055106, 0                 ; 2 uses
  %i.at = getelementptr i8, ptr %.05377, i64 7
  store i8 0, ptr %i.ar, align 1
  %i.au = zext i1 %i.as to i64
  %i.av = getelementptr i8, ptr %4, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = getelementptr i8, ptr %.05377, i64 8
  store i8 %i.aw, ptr %i.at, align 1
  %i.ay = select i1 %i.as, i32 2, i32 1           ; 2 uses
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = icmp samesign ult i64 %.055106, %i.az
  %spec.store.select.1 = select i1 %i.ba, i32 0, i32 %i.ay ; 2 uses
  %i.bb = getelementptr i8, ptr %.05377, i64 9
  store i8 0, ptr %i.ax, align 1
  %i.bc = zext nneg i32 %spec.store.select.1 to i64
  %i.bd = getelementptr i8, ptr %4, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = getelementptr i8, ptr %.05377, i64 10
  store i8 %i.be, ptr %i.bb, align 1
  %i.bg = add nuw nsw i32 %spec.store.select.1, 1 ; 2 uses
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = icmp samesign ult i64 %.055106, %i.bh
  %spec.store.select.2 = select i1 %i.bi, i32 0, i32 %i.bg ; 2 uses
  %i.bj = getelementptr i8, ptr %.05377, i64 11
  store i8 0, ptr %i.bf, align 1
  %i.bk = zext nneg i32 %spec.store.select.2 to i64
  %i.bl = getelementptr i8, ptr %4, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = getelementptr i8, ptr %.05377, i64 12
  store i8 %i.bm, ptr %i.bj, align 1
  %i.bo = add nuw nsw i32 %spec.store.select.2, 1 ; 2 uses
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = icmp samesign ult i64 %.055106, %i.bp
  %spec.store.select.3 = select i1 %i.bq, i32 0, i32 %i.bo ; 2 uses
  %i.br = getelementptr i8, ptr %.05377, i64 13
  store i8 0, ptr %i.bn, align 1
  %i.bs = zext nneg i32 %spec.store.select.3 to i64
  %i.bt = getelementptr i8, ptr %4, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = getelementptr i8, ptr %.05377, i64 14
  store i8 %i.bu, ptr %i.br, align 1
  %i.bw = add nuw nsw i32 %spec.store.select.3, 1 ; 2 uses
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = icmp samesign ult i64 %.055106, %i.bx
  %spec.store.select.4 = select i1 %i.by, i32 0, i32 %i.bw ; 2 uses
  %i.bz = getelementptr i8, ptr %.05377, i64 15
  store i8 0, ptr %i.bv, align 1
  %i.ca = zext nneg i32 %spec.store.select.4 to i64
  %i.cb = getelementptr i8, ptr %4, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = getelementptr i8, ptr %.05377, i64 16
  store i8 %i.cc, ptr %i.bz, align 1
  %i.ce = add nuw nsw i32 %spec.store.select.4, 1 ; 2 uses
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = icmp samesign ult i64 %.055106, %i.cf
  %spec.store.select.5 = select i1 %i.cg, i32 0, i32 %i.ce ; 2 uses
  %i.ch = getelementptr i8, ptr %.05377, i64 17
  store i8 0, ptr %i.cd, align 1
  %i.ci = zext nneg i32 %spec.store.select.5 to i64
  %i.cj = getelementptr i8, ptr %4, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = getelementptr i8, ptr %.05377, i64 18
  store i8 %i.ck, ptr %i.ch, align 1
  %i.cm = add nuw nsw i32 %spec.store.select.5, 1 ; 2 uses
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = icmp samesign ult i64 %.055106, %i.cn
  %spec.store.select.6 = select i1 %i.co, i32 0, i32 %i.cm ; 2 uses
  %i.cp = getelementptr i8, ptr %.05377, i64 19
  store i8 0, ptr %i.cl, align 1
  %i.cq = zext nneg i32 %spec.store.select.6 to i64
  %i.cr = getelementptr i8, ptr %4, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = getelementptr i8, ptr %.05377, i64 20
  store i8 %i.cs, ptr %i.cp, align 1
  %i.cu = add nuw nsw i32 %spec.store.select.6, 1 ; 2 uses
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = icmp samesign ult i64 %.055106, %i.cv
  %spec.store.select.7 = select i1 %i.cw, i32 0, i32 %i.cu ; 2 uses
  %i.cx = getelementptr i8, ptr %.05377, i64 21
  store i8 0, ptr %i.ct, align 1
  %i.cy = zext nneg i32 %spec.store.select.7 to i64
  %i.cz = getelementptr i8, ptr %4, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = getelementptr i8, ptr %.05377, i64 22
  store i8 %i.da, ptr %i.cx, align 1
  %i.dc = add nuw nsw i32 %spec.store.select.7, 1 ; 2 uses
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = icmp samesign ult i64 %.055106, %i.dd
  %spec.store.select.8 = select i1 %i.de, i32 0, i32 %i.dc ; 2 uses
  %i.df = getelementptr i8, ptr %.05377, i64 23
  store i8 0, ptr %i.db, align 1
  %i.dg = zext nneg i32 %spec.store.select.8 to i64
  %i.dh = getelementptr i8, ptr %4, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1
  %i.dj = getelementptr i8, ptr %.05377, i64 24
  store i8 %i.di, ptr %i.df, align 1
  %i.dk = add nuw nsw i32 %spec.store.select.8, 1 ; 2 uses
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = icmp samesign ult i64 %.055106, %i.dl
  %spec.store.select.9 = select i1 %i.dm, i32 0, i32 %i.dk ; 2 uses
  %i.dn = getelementptr i8, ptr %.05377, i64 25
  store i8 0, ptr %i.dj, align 1
  %i.do = zext nneg i32 %spec.store.select.9 to i64
  %i.dp = getelementptr i8, ptr %4, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = getelementptr i8, ptr %.05377, i64 26
  store i8 %i.dq, ptr %i.dn, align 1
  %i.ds = add nuw nsw i32 %spec.store.select.9, 1 ; 2 uses
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = icmp samesign ult i64 %.055106, %i.dt
  %spec.store.select.10 = select i1 %i.du, i32 0, i32 %i.ds ; 2 uses
  %i.dv = getelementptr i8, ptr %.05377, i64 27
  store i8 0, ptr %i.dr, align 1
  %i.dw = zext nneg i32 %spec.store.select.10 to i64
  %i.dx = getelementptr i8, ptr %4, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1
  %i.dz = getelementptr i8, ptr %.05377, i64 28
  store i8 %i.dy, ptr %i.dv, align 1
  %i.ea = add nuw nsw i32 %spec.store.select.10, 1 ; 2 uses
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = icmp samesign ult i64 %.055106, %i.eb
  %spec.store.select.11 = select i1 %i.ec, i32 0, i32 %i.ea ; 2 uses
  %i.ed = getelementptr i8, ptr %.05377, i64 29
  store i8 0, ptr %i.dz, align 1
  %i.ee = zext nneg i32 %spec.store.select.11 to i64
  %i.ef = getelementptr i8, ptr %4, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1
  %i.eh = getelementptr i8, ptr %.05377, i64 30
  store i8 %i.eg, ptr %i.ed, align 1
  %i.ei = add nuw nsw i32 %spec.store.select.11, 1 ; 2 uses
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = icmp samesign ult i64 %.055106, %i.ej
  %spec.store.select.12 = select i1 %i.ek, i32 0, i32 %i.ei ; 2 uses
  %i.el = getelementptr i8, ptr %.05377, i64 31
  store i8 0, ptr %i.eh, align 1
  %i.em = zext nneg i32 %spec.store.select.12 to i64
  %i.en = getelementptr i8, ptr %4, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1
  %i.ep = getelementptr i8, ptr %.05377, i64 32
  store i8 %i.eo, ptr %i.el, align 1
  %i.eq = add nuw nsw i32 %spec.store.select.12, 1 ; 2 uses
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = icmp samesign ult i64 %.055106, %i.er
  %spec.store.select.13 = select i1 %i.es, i32 0, i32 %i.eq ; 2 uses
  %i.et = getelementptr i8, ptr %.05377, i64 33
  store i8 0, ptr %i.ep, align 1
  %i.eu = zext nneg i32 %spec.store.select.13 to i64
  %i.ev = getelementptr i8, ptr %4, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1
  %i.ex = getelementptr i8, ptr %.05377, i64 34
  store i8 %i.ew, ptr %i.et, align 1
  %i.ey = add nuw nsw i32 %spec.store.select.13, 1 ; 2 uses
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = icmp samesign ult i64 %.055106, %i.ez
  %spec.store.select.14 = select i1 %i.fa, i32 0, i32 %i.ey ; 2 uses
  %i.fb = getelementptr i8, ptr %.05377, i64 35
  store i8 0, ptr %i.ex, align 1
  %i.fc = zext nneg i32 %spec.store.select.14 to i64
  %i.fd = getelementptr i8, ptr %4, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1
  %i.ff = getelementptr i8, ptr %.05377, i64 36
  store i8 %i.fe, ptr %i.fb, align 1
  %i.fg = add nuw nsw i32 %spec.store.select.14, 1 ; 2 uses
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = icmp samesign ult i64 %.055106, %i.fh
  %spec.store.select.15 = select i1 %i.fi, i32 0, i32 %i.fg ; 2 uses
  %i.fj = getelementptr i8, ptr %.05377, i64 37
  store i8 0, ptr %i.ff, align 1
  %i.fk = zext nneg i32 %spec.store.select.15 to i64
  %i.fl = getelementptr i8, ptr %4, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1
  %i.fn = getelementptr i8, ptr %.05377, i64 38
  store i8 %i.fm, ptr %i.fj, align 1
  %i.fo = add nuw nsw i32 %spec.store.select.15, 1 ; 2 uses
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = icmp samesign ult i64 %.055106, %i.fp
  %spec.store.select.16 = select i1 %i.fq, i32 0, i32 %i.fo ; 2 uses
  %i.fr = getelementptr i8, ptr %.05377, i64 39
  store i8 0, ptr %i.fn, align 1
  %i.fs = zext nneg i32 %spec.store.select.16 to i64
  %i.ft = getelementptr i8, ptr %4, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1
  %i.fv = getelementptr i8, ptr %.05377, i64 40
  store i8 %i.fu, ptr %i.fr, align 1
  %i.fw = add nuw nsw i32 %spec.store.select.16, 1 ; 2 uses
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = icmp samesign ult i64 %.055106, %i.fx
  %spec.store.select.17 = select i1 %i.fy, i32 0, i32 %i.fw ; 2 uses
  %i.fz = getelementptr i8, ptr %.05377, i64 41
  store i8 0, ptr %i.fv, align 1
  %i.ga = zext nneg i32 %spec.store.select.17 to i64
  %i.gb = getelementptr i8, ptr %4, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1
  %i.gd = getelementptr i8, ptr %.05377, i64 42
  store i8 %i.gc, ptr %i.fz, align 1
  %i.ge = add nuw nsw i32 %spec.store.select.17, 1 ; 2 uses
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = icmp samesign ult i64 %.055106, %i.gf
  %spec.store.select.18 = select i1 %i.gg, i32 0, i32 %i.ge ; 2 uses
  %i.gh = getelementptr i8, ptr %.05377, i64 43
  store i8 0, ptr %i.gd, align 1
  %i.gi = zext nneg i32 %spec.store.select.18 to i64
  %i.gj = getelementptr i8, ptr %4, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1
  %i.gl = getelementptr i8, ptr %.05377, i64 44
  store i8 %i.gk, ptr %i.gh, align 1
  %i.gm = add nuw nsw i32 %spec.store.select.18, 1 ; 2 uses
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = icmp samesign ult i64 %.055106, %i.gn
  %spec.store.select.19 = select i1 %i.go, i32 0, i32 %i.gm ; 2 uses
  %i.gp = getelementptr i8, ptr %.05377, i64 45
  store i8 0, ptr %i.gl, align 1
  %i.gq = zext nneg i32 %spec.store.select.19 to i64
  %i.gr = getelementptr i8, ptr %4, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1
  %i.gt = getelementptr i8, ptr %.05377, i64 46
  store i8 %i.gs, ptr %i.gp, align 1
  %i.gu = add nuw nsw i32 %spec.store.select.19, 1 ; 2 uses
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = icmp samesign ult i64 %.055106, %i.gv
  %spec.store.select.20 = select i1 %i.gw, i32 0, i32 %i.gu ; 2 uses
  %i.gx = getelementptr i8, ptr %.05377, i64 47
  store i8 0, ptr %i.gt, align 1
  %i.gy = zext nneg i32 %spec.store.select.20 to i64
  %i.gz = getelementptr i8, ptr %4, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1
  %i.hb = getelementptr i8, ptr %.05377, i64 48
  store i8 %i.ha, ptr %i.gx, align 1
  %i.hc = add nuw nsw i32 %spec.store.select.20, 1 ; 2 uses
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = icmp samesign ult i64 %.055106, %i.hd
  %spec.store.select.21 = select i1 %i.he, i32 0, i32 %i.hc ; 2 uses
  %i.hf = getelementptr i8, ptr %.05377, i64 49
  store i8 0, ptr %i.hb, align 1
  %i.hg = zext nneg i32 %spec.store.select.21 to i64
  %i.hh = getelementptr i8, ptr %4, i64 %i.hg
  %i.hi = load i8, ptr %i.hh, align 1
  %i.hj = getelementptr i8, ptr %.05377, i64 50
  store i8 %i.hi, ptr %i.hf, align 1
  %i.hk = add nuw nsw i32 %spec.store.select.21, 1 ; 2 uses
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = icmp samesign ult i64 %.055106, %i.hl
  %spec.store.select.22 = select i1 %i.hm, i32 0, i32 %i.hk ; 2 uses
  %i.hn = getelementptr i8, ptr %.05377, i64 51
  store i8 0, ptr %i.hj, align 1
  %i.ho = zext nneg i32 %spec.store.select.22 to i64
  %i.hp = getelementptr i8, ptr %4, i64 %i.ho
  %i.hq = load i8, ptr %i.hp, align 1
  %i.hr = getelementptr i8, ptr %.05377, i64 52
  store i8 %i.hq, ptr %i.hn, align 1
  %i.hs = add nuw nsw i32 %spec.store.select.22, 1 ; 2 uses
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = icmp samesign ult i64 %.055106, %i.ht
  %spec.store.select.23 = select i1 %i.hu, i32 0, i32 %i.hs ; 2 uses
  %i.hv = getelementptr i8, ptr %.05377, i64 53
  store i8 0, ptr %i.hr, align 1
  %i.hw = zext nneg i32 %spec.store.select.23 to i64
  %i.hx = getelementptr i8, ptr %4, i64 %i.hw
  %i.hy = load i8, ptr %i.hx, align 1
  %i.hz = getelementptr i8, ptr %.05377, i64 54
  store i8 %i.hy, ptr %i.hv, align 1
  %i.ia = add nuw nsw i32 %spec.store.select.23, 1 ; 2 uses
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = icmp samesign ult i64 %.055106, %i.ib
  %spec.store.select.24 = select i1 %i.ic, i32 0, i32 %i.ia ; 2 uses
  %i.id = getelementptr i8, ptr %.05377, i64 55
  store i8 0, ptr %i.hz, align 1
  %i.ie = zext nneg i32 %spec.store.select.24 to i64
  %i.if = getelementptr i8, ptr %4, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1
  %i.ih = getelementptr i8, ptr %.05377, i64 56
  store i8 %i.ig, ptr %i.id, align 1
  %i.ii = add nuw nsw i32 %spec.store.select.24, 1 ; 2 uses
  %i.ij = zext nneg i32 %i.ii to i64
  %i.ik = icmp samesign ult i64 %.055106, %i.ij
  %spec.store.select.25 = select i1 %i.ik, i32 0, i32 %i.ii ; 2 uses
  %i.il = getelementptr i8, ptr %.05377, i64 57
  store i8 0, ptr %i.ih, align 1
  %i.im = zext nneg i32 %spec.store.select.25 to i64
  %i.in = getelementptr i8, ptr %4, i64 %i.im
  %i.io = load i8, ptr %i.in, align 1
  %i.ip = getelementptr i8, ptr %.05377, i64 58
  store i8 %i.io, ptr %i.il, align 1
  %i.iq = add nuw nsw i32 %spec.store.select.25, 1 ; 2 uses
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = icmp samesign ult i64 %.055106, %i.ir
  %spec.store.select.26 = select i1 %i.is, i32 0, i32 %i.iq ; 2 uses
  %i.it = getelementptr i8, ptr %.05377, i64 59
  store i8 0, ptr %i.ip, align 1
  %i.iu = zext nneg i32 %spec.store.select.26 to i64
  %i.iv = getelementptr i8, ptr %4, i64 %i.iu
  %i.iw = load i8, ptr %i.iv, align 1
  %i.ix = getelementptr i8, ptr %.05377, i64 60
  store i8 %i.iw, ptr %i.it, align 1
  %i.iy = add nuw nsw i32 %spec.store.select.26, 1 ; 2 uses
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = icmp samesign ult i64 %.055106, %i.iz
  %spec.store.select.27 = select i1 %i.ja, i32 0, i32 %i.iy ; 2 uses
  %i.jb = getelementptr i8, ptr %.05377, i64 61
  store i8 0, ptr %i.ix, align 1
  %i.jc = zext nneg i32 %spec.store.select.27 to i64
  %i.jd = getelementptr i8, ptr %4, i64 %i.jc
  %i.je = load i8, ptr %i.jd, align 1
  %i.jf = getelementptr i8, ptr %.05377, i64 62
  store i8 %i.je, ptr %i.jb, align 1
  %i.jg = add nuw nsw i32 %spec.store.select.27, 1 ; 2 uses
  %i.jh = zext nneg i32 %i.jg to i64
  %i.ji = icmp samesign ult i64 %.055106, %i.jh
  %spec.store.select.28 = select i1 %i.ji, i32 0, i32 %i.jg ; 2 uses
  %i.jj = getelementptr i8, ptr %.05377, i64 63
  store i8 0, ptr %i.jf, align 1
  %i.jk = zext nneg i32 %spec.store.select.28 to i64
  %i.jl = getelementptr i8, ptr %4, i64 %i.jk
  %i.jm = load i8, ptr %i.jl, align 1
  %i.jn = getelementptr i8, ptr %.05377, i64 64
  store i8 %i.jm, ptr %i.jj, align 1
  %i.jo = add nuw nsw i32 %spec.store.select.28, 1 ; 2 uses
  %i.jp = zext nneg i32 %i.jo to i64
  %i.jq = icmp samesign ult i64 %.055106, %i.jp
  %spec.store.select.29 = select i1 %i.jq, i32 0, i32 %i.jo ; 2 uses
  %i.jr = getelementptr i8, ptr %.05377, i64 65
  store i8 0, ptr %i.jn, align 1
  %i.js = zext nneg i32 %spec.store.select.29 to i64
  %i.jt = getelementptr i8, ptr %4, i64 %i.js
  %i.ju = load i8, ptr %i.jt, align 1
  %i.jv = getelementptr i8, ptr %.05377, i64 66
  store i8 %i.ju, ptr %i.jr, align 1
  %i.jw = add nuw nsw i32 %spec.store.select.29, 1 ; 2 uses
  %i.jx = zext nneg i32 %i.jw to i64
  %i.jy = icmp samesign ult i64 %.055106, %i.jx
  %i.jz = getelementptr i8, ptr %.05377, i64 67
  store i8 0, ptr %i.jv, align 1
  %i.ka = zext nneg i32 %i.jw to i64
  %i.kb = select i1 %i.jy, i64 0, i64 %i.ka
  %i.kc = getelementptr i8, ptr %4, i64 %i.kb
  %i.kd = load i8, ptr %i.kc, align 1
  store i8 %i.kd, ptr %i.jz, align 1
  br label %.loopexit73

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(64) %i.ao, i8 noundef 0, i64 noundef 64, i1 noundef false) #8
  br label %.loopexit73

.loopexit73:                                      ; preds = %.preheader72.preheader, %bb.d
  %i.ke = call i32 @gcry_md_open(ptr noundef nonnull %i.a, i32 noundef 2, i32 noundef 0)
  %i.kf = and i32 %i.ke, 65535
  %.not6589 = icmp eq i32 %i.kf, 0
  br i1 %.not6589, label %.preheader70.lr.ph, label %.loopexit71

.preheader70.lr.ph:                               ; preds = %.loopexit73
  %i.kg = trunc nuw nsw i32 %1 to i8
  %i.kh = select i1 %i.n, i64 64, i64 128
  %i.ki = icmp ugt i32 %3, 1
  %i.kj = zext nneg i32 %5 to i64                 ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  br label %.preheader70

.preheader70:                                     ; preds = %.preheader70.lr.ph, %.critedge.1
  %.05290 = phi i64 [ 0, %.preheader70.lr.ph ], [ %.1.lcssa, %.critedge.1 ] ; 5 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader70, %bb.e
  %.281 = phi i32 [ 0, %.preheader70 ], [ %i.km, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  store i8 %i.kg, ptr %i.g, align 1
  %i.kl = load ptr, ptr %i.a, align 8
  call void @gcry_md_write(ptr noundef %i.kl, ptr noundef nonnull %i.g, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  %i.km = add nuw nsw i32 %.281, 1                ; 2 uses
  %exitcond95.not = icmp eq i32 %i.km, 64
  br i1 %exitcond95.not, label %bb.f, label %bb.e, !llvm.loop !11

bb.f:                                             ; preds = %bb.e
  %i.kn = load ptr, ptr %i.a, align 8
  call void @gcry_md_write(ptr noundef %i.kn, ptr noundef nonnull %i.e, i64 noundef %i.kh)
  %i.ko = load ptr, ptr %i.a, align 8
  %i.kp = call i32 @gcry_md_ctl(ptr noundef %i.ko, i32 noundef 5, ptr noundef null, i64 noundef 0) ; 0 uses
  %i.kq = load ptr, ptr %i.a, align 8
  %i.kr = call ptr @gcry_md_read(ptr noundef %i.kq, i32 noundef 0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.c, ptr noundef align 1 dereferenceable(20) %i.kr, i64 noundef 20, i1 noundef false) #8
  %i.ks = load ptr, ptr %i.a, align 8
  call void @gcry_md_close(ptr noundef %i.ks)
  br i1 %i.ki, label %.lr.ph, label %.preheader69

.preheader69:                                     ; preds = %.lr.ph, %bb.f
  %i.kt = icmp ult i64 %.05290, %i.kj
  br i1 %i.kt, label %.lr.ph85.preheader, label %._crit_edge

.lr.ph85.preheader:                               ; preds = %.preheader69
  %scevgep = getelementptr i8, ptr %6, i64 %.05290
  %i.ku = xor i64 %.05290, -1
  %i.kv = add i64 %i.ku, %i.kj
  %umin = call i64 @llvm.umin.i64(i64 %i.kv, i64 19) ; 2 uses
  %i.kw = add nuw nsw i64 %umin, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %scevgep, ptr noundef nonnull align 16 dereferenceable(1) %i.c, i64 %i.kw, i1 false)
  %i.kx = add nuw nsw i64 %.05290, 1
  %i.ky = add nuw nsw i64 %i.kx, %umin
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.382 = phi i32 [ %i.kz, %.lr.ph ], [ 1, %bb.f ]
  call void @gcry_md_hash_buffer(i32 noundef 2, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c, i64 noundef 20)
  %i.kz = add nuw i32 %.382, 1                    ; 2 uses
  %exitcond96.not = icmp eq i32 %i.kz, %3
  br i1 %exitcond96.not, label %.preheader69, label %.lr.ph, !llvm.loop !12

._crit_edge:                                      ; preds = %.lr.ph85.preheader, %.preheader69
  %.1.lcssa = phi i64 [ %.05290, %.preheader69 ], [ %i.ky, %.lr.ph85.preheader ] ; 2 uses
  %i.la = icmp eq i64 %.1.lcssa, %i.kj
  br i1 %i.la, label %bb.g, label %.preheader

bb.g:                                             ; preds = %._crit_edge
  %i.lb = load ptr, ptr %i.b, align 8
  call void @gcry_mpi_release(ptr noundef %i.lb)
  br label %.loopexit71

.preheader:                                       ; preds = %._crit_edge, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader ], [ 0, %._crit_edge ] ; 4 uses
  %.lhs.trunc = trunc i64 %indvars.iv to i8
  %i.lc = urem i8 %.lhs.trunc, 20
  %i.ld = zext nneg i8 %i.lc to i64
  %i.le = getelementptr i8, ptr %i.c, i64 %i.ld
  %i.lf = load i8, ptr %i.le, align 2
  %i.lg = getelementptr i8, ptr %i.d, i64 %indvars.iv
  store i8 %i.lf, ptr %i.lg, align 2
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %.lhs.trunc.1 = trunc i64 %indvars.iv.next to i8
  %i.lh = urem i8 %.lhs.trunc.1, 20
  %i.li = zext nneg i8 %i.lh to i64
  %i.lj = getelementptr i8, ptr %i.c, i64 %i.li
  %i.lk = load i8, ptr %i.lj, align 1
  %i.ll = getelementptr i8, ptr %i.d, i64 %indvars.iv.next
  store i8 %i.lk, ptr %i.ll, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond100.not.1 = icmp eq i64 %indvars.iv.next.1, 64
  br i1 %exitcond100.not.1, label %bb.h, label %.preheader, !llvm.loop !13

bb.h:                                             ; preds = %.preheader
  store i64 64, ptr %i.f, align 8
  %i.lm = call i32 @gcry_mpi_scan(ptr noundef nonnull %i.b, i32 noundef 5, ptr noundef nonnull %i.d, i64 noundef 64, ptr noundef nonnull %i.f)
  %.not66 = icmp eq i32 %i.lm, 0
  br i1 %.not66, label %bb.i, label %.loopexit71

bb.i:                                             ; preds = %bb.h
  %i.ln = load ptr, ptr %i.b, align 8             ; 2 uses
  call void @gcry_mpi_add_ui(ptr noundef %i.ln, ptr noundef %i.ln, i64 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  store i64 64, ptr %i.f, align 8
  %i.lo = call i32 @gcry_mpi_scan(ptr noundef nonnull %i.h, i32 noundef 5, ptr noundef nonnull %i.e, i64 noundef 64, ptr noundef nonnull %i.f)
  %.not67 = icmp eq i32 %i.lo, 0
  br i1 %.not67, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.lp = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.lq = load ptr, ptr %i.b, align 8
  call void @gcry_mpi_add(ptr noundef %i.lp, ptr noundef %i.lp, ptr noundef %i.lq)
  %i.lr = load ptr, ptr %i.h, align 8
  call void @gcry_mpi_clear_highbit(ptr noundef %i.lr, i32 noundef 512)
  store i64 64, ptr %i.f, align 8
  %i.ls = load ptr, ptr %i.h, align 8
  %i.lt = call i32 @gcry_mpi_print(i32 noundef 5, ptr noundef nonnull %i.e, i64 noundef 64, ptr noundef nonnull %i.f, ptr noundef %i.ls)
  %.not68 = icmp eq i32 %i.lt, 0
  br i1 %.not68, label %.critedge, label %bb.l

.critedge:                                        ; preds = %bb.j
  %i.lu = load ptr, ptr %i.h, align 8
  call void @gcry_mpi_release(ptr noundef %i.lu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  store i64 64, ptr %i.f, align 8
  %i.lv = call i32 @gcry_mpi_scan(ptr noundef nonnull %i.h, i32 noundef 5, ptr noundef nonnull %i.kk, i64 noundef 64, ptr noundef nonnull %i.f)
  %.not67.1 = icmp eq i32 %i.lv, 0
  br i1 %.not67.1, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.critedge
  %i.lw = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.lx = load ptr, ptr %i.b, align 8
  call void @gcry_mpi_add(ptr noundef %i.lw, ptr noundef %i.lw, ptr noundef %i.lx)
  %i.ly = load ptr, ptr %i.h, align 8
  call void @gcry_mpi_clear_highbit(ptr noundef %i.ly, i32 noundef 512)
  store i64 64, ptr %i.f, align 8
  %i.lz = load ptr, ptr %i.h, align 8
  %i.ma = call i32 @gcry_mpi_print(i32 noundef 5, ptr noundef nonnull %i.kk, i64 noundef 64, ptr noundef nonnull %i.f, ptr noundef %i.lz)
  %.not68.1 = icmp eq i32 %i.ma, 0
  br i1 %.not68.1, label %.critedge.1, label %bb.l

.critedge.1:                                      ; preds = %bb.k
  %i.mb = load ptr, ptr %i.h, align 8
  call void @gcry_mpi_release(ptr noundef %i.mb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  %i.mc = call i32 @gcry_md_open(ptr noundef nonnull %i.a, i32 noundef 2, i32 noundef 0)
  %i.md = and i32 %i.mc, 65535
  %.not65 = icmp eq i32 %i.md, 0
  br i1 %.not65, label %.preheader70, label %.loopexit71

bb.l:                                             ; preds = %bb.k, %.critedge, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  br label %.loopexit71

.loopexit71:                                      ; preds = %.critedge.1, %bb.h, %.loopexit73, %bb.l, %bb.b, %bb.g
  %.362 = phi i32 [ 0, %bb.l ], [ 0, %bb.b ], [ 1, %bb.g ], [ 0, %.loopexit73 ], [ 0, %bb.h ], [ 0, %.critedge.1 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.362
}

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_open(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_setkey(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @gcry_cipher_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_setiv(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_decrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_memdup(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_child_real_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @g_string_new(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @g_string_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @add_new_data_source(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @g_string_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_pkcs12() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.119) ; 2 uses
  store i32 %i.a, ptr @proto_pkcs12, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef nonnull @proto_register_pkcs12.hf, i32 noundef 49)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_pkcs12.ett, i32 noundef 19)
  %i.b = load i32, ptr @proto_pkcs12, align 4
  %i.c = tail call ptr @expert_register_protocol(i32 noundef %i.b)
  tail call void @expert_register_field_array(ptr noundef %i.c, ptr noundef nonnull @proto_register_pkcs12.ei, i32 noundef 1)
  %i.d = load i32, ptr @proto_pkcs12, align 4
  %i.e = tail call ptr @prefs_register_protocol(i32 noundef %i.d, ptr noundef null) ; 2 uses
  tail call void @prefs_register_string_preference(ptr noundef %i.e, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.122, ptr noundef nonnull @password)
  tail call void @prefs_register_bool_preference(ptr noundef %i.e, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.125, ptr noundef nonnull @try_null_password)
  %i.f = load i32, ptr @proto_pkcs12, align 4
  tail call void @register_ber_syntax_dissector(ptr noundef nonnull @.str.126, i32 noundef %i.f, ptr noundef nonnull @dissect_PFX_PDU)
  tail call void @register_ber_oid_syntax(ptr noundef nonnull @.str.127, ptr noundef null, ptr noundef nonnull @.str.126)
  tail call void @register_ber_oid_syntax(ptr noundef nonnull @.str.128, ptr noundef null, ptr noundef nonnull @.str.126)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @prefs_register_protocol(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_string_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_bool_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @register_ber_syntax_dissector(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_PFX_PDU(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #1 {
bb.a:
  %4 = alloca %struct._asn1_ctx_t, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @asn1_ctx_init(ptr noundef nonnull %4, i32 noundef 0, i1 noundef zeroext true, ptr noundef %1)
  %i.a = load i32, ptr @hf_pkcs12_PFX_PDU, align 4
  %i.b = load i32, ptr @proto_pkcs12, align 4
  %i.c = call ptr @create_dissector_handle(ptr noundef nonnull @dissect_AuthenticatedSafe_OCTETSTRING_PDU, i32 noundef %i.b)
  call void @dissector_change_string(ptr noundef nonnull @.str.191, ptr noundef nonnull @.str.192, ptr noundef %i.c)
  %i.d = load i32, ptr @ett_pkcs12_PFX, align 4
  %i.e = call i32 @dissect_ber_sequence(i1 noundef zeroext false, ptr noundef nonnull %4, ptr noundef %2, ptr noundef %0, i32 noundef 0, ptr noundef nonnull @PFX_sequence, i32 noundef %i.a, i32 noundef %i.d)
  call void @dissector_reset_string(ptr noundef nonnull @.str.191, ptr noundef nonnull @.str.192)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret i32 %i.e
}

; Function Attrs: null_pointer_is_valid
declare void @register_ber_oid_syntax(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_pkcs12() local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr @proto_pkcs12, align 4
  tail call void @register_ber_oid_dissector(ptr noundef nonnull @.str.129, ptr noundef nonnull @dissect_KeyBag_PDU, i32 noundef %i.a, ptr noundef nonnull @.str.130)
  %i.b = load i32, ptr @proto_pkcs12, align 4
  tail call void @register_ber_oid_dissector(ptr noundef nonnull @.str.131, ptr noundef nonnull @dissect_PKCS8ShroudedKeyBag_PDU, i32 noundef %i.b, ptr noundef nonnull @.str.132)
  %i.c = load i32, ptr @proto_pkcs12, align 4
  tail call void @register_ber_oid_dissector(ptr noundef nonnull @.str.133, ptr noundef nonnull @dissect_CertBag_PDU, i32 noundef %i.c, ptr noundef nonnull @.str.134)
  %i.d = load i32, ptr @proto_pkcs12, align 4
  tail call void @register_ber_oid_dissector(ptr noundef nonnull @.str.135, ptr noundef nonnull @dissect_SecretBag_PDU, i32 noundef %i.d, ptr noundef nonnull @.str.136)
  %i.e = load i32, ptr @proto_pkcs12, align 4
  tail call void @register_ber_oid_dissector(ptr noundef nonnull @.str.137, ptr noundef nonnull @dissect_CRLBag_PDU, i32 noundef %i.e, ptr noundef nonnull @.str.138)
  %i.f = load i32, ptr @proto_pkcs12, align 4
  tail call void @register_ber_oid_dissector(ptr noundef nonnull @.str.139, ptr noundef nonnull @dissect_SafeContents_PDU, i32 noundef %i.f, ptr noundef nonnull @.str.140)
  %i.g = load i32, ptr @proto_pkcs12, align 4
end_hunk_0
begin_hunk_1_@dissect_pkcs12_MacData:bb.a
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_ber_constrained_integer(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_cms_DigestInfo(i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_pkcs12_OCTET_STRING(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = load i32, ptr @hf_pkcs12_salt, align 4
  %i.b = icmp eq i32 %5, %i.a
  %i.c = select i1 %i.b, ptr @salt, ptr null
  %i.d = tail call i32 @dissect_ber_octet_string(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, ptr noundef %i.c)
  ret i32 %i.d
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_pkcs12_INTEGER(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = load i32, ptr @hf_pkcs12_iterations, align 4
  %i.b = icmp eq i32 %5, %i.a
  %i.c = select i1 %i.b, ptr @iteration_count, ptr null
  %i.d = tail call i32 @dissect_ber_integer(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, ptr noundef %i.c)
  ret i32 %i.d
}

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_ber_octet_string(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_ber_integer(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_akp_PrivateKeyInfo(i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_akp_EncryptedPrivateKeyInfo(i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_pkcs12_T_certId(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = tail call i32 @dissect_ber_object_identifier_str(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, ptr noundef nonnull @object_identifier_id)
  %i.b = getelementptr i8, ptr %3, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 416
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr @object_identifier_id, align 8 ; 2 uses
  %i.g = tail call ptr @oid_resolved_from_string(ptr noundef %i.e, ptr noundef %i.f) ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  %i.h = select i1 %.not.i, ptr %i.f, ptr %i.g
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %4, ptr noundef nonnull @.str.195, ptr noundef %i.h)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_pkcs12_T_certValue(i1 zeroext %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i32 %5) #1 {
bb.a:
  %i.a = load ptr, ptr @object_identifier_id, align 8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 @call_ber_oid_callback(ptr noundef nonnull %i.a, ptr noundef %1, i32 noundef %2, ptr noundef %i.c, ptr noundef %4, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.d, %bb.b ], [ %2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_pkcs12_T_secretTypeId(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = tail call i32 @dissect_ber_object_identifier_str(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, ptr noundef nonnull @object_identifier_id)
  %i.b = getelementptr i8, ptr %3, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 416
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr @object_identifier_id, align 8 ; 2 uses
  %i.g = tail call ptr @oid_resolved_from_string(ptr noundef %i.e, ptr noundef %i.f) ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  %i.h = select i1 %.not.i, ptr %i.f, ptr %i.g
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %4, ptr noundef nonnull @.str.195, ptr noundef %i.h)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_pkcs12_T_secretValue(i1 zeroext %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i32 %5) #1 {
bb.a:
  %i.a = load ptr, ptr @object_identifier_id, align 8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 @call_ber_oid_callback(ptr noundef nonnull %i.a, ptr noundef %1, i32 noundef %2, ptr noundef %i.c, ptr noundef %4, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.d, %bb.b ], [ %2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_pkcs12_T_crlId(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = tail call i32 @dissect_ber_object_identifier_str(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, ptr noundef nonnull @object_identifier_id)
  %i.b = getelementptr i8, ptr %3, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 416
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr @object_identifier_id, align 8 ; 2 uses
  %i.g = tail call ptr @oid_resolved_from_string(ptr noundef %i.e, ptr noundef %i.f) ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  %i.h = select i1 %.not.i, ptr %i.f, ptr %i.g
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %4, ptr noundef nonnull @.str.195, ptr noundef %i.h)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_pkcs12_T_crlValue(i1 zeroext %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i32 %5) #1 {
bb.a:
  %i.a = load ptr, ptr @object_identifier_id, align 8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 @call_ber_oid_callback(ptr noundef nonnull %i.a, ptr noundef %1, i32 noundef %2, ptr noundef %i.c, ptr noundef %4, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.d, %bb.b ], [ %2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_pkcs12_T_saltChoice(i1 zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = load i32, ptr @ett_pkcs12_T_saltChoice, align 4
  %i.b = tail call i32 @dissect_ber_choice(ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @T_saltChoice_choice, i32 noundef %5, i32 noundef %i.a, ptr noundef null)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_pkcs12_INTEGER_1_MAX(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = tail call i32 @dissect_ber_constrained_integer64(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i64 noundef 1, i64 noundef -1, i32 noundef %5, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_x509af_AlgorithmIdentifier(i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_ber_choice(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_ber_constrained_integer64(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_x509af_Certificate(i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
end_hunk_1
