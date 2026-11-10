Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/ts?download=true
inline.NumInlined: 7
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Configuration file\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"section\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Section to use within config file\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"inkey\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"File with private key for reply\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"signer\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Signer certificate file\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"chain\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"File with signer CA chain\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"CAfile\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"File with trusted CA certs\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"CApath\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"Path to trusted CA files\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"CAstore\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"URI to trusted CA store\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"untrusted\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"Extra untrusted certs\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"token_in\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"Input is a PKCS#7 file\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"token_out\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"Output is a PKCS#7 file\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"passin\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"Input file pass phrase source\00", align 1
@.str.27 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"Any supported digest\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"Query options:\0A\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"query\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"Generate a TS query\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"File to hash\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"Digest (as a hex string)\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"queryfile\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"File containing a TS query\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"cert\00", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"Put cert request into query\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"Input file\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"Verify options:\0A\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"Verify a TS response\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"reply\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"Generate a TS reply\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"tspolicy\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"Policy OID to use\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"no_nonce\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"Do not include a nonce\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"Output file\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"Output text (not DER)\00", align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"Random state options:\0A\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"rand\00", align 1
@.str.57 = private unnamed_addr constant [56 x i8] c"Load the given file(s) into the random number generator\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"writerand\00", align 1
@.str.59 = private unnamed_addr constant [40 x i8] c"Write random data to the specified file\00", align 1
@.str.60 = private unnamed_addr constant [21 x i8] c"Validation options:\0A\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"policy\00", align 1
@.str.62 = private unnamed_addr constant [41 x i8] c"adds policy to the acceptable policy set\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"purpose\00", align 1
@.str.64 = private unnamed_addr constant [26 x i8] c"certificate chain purpose\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"verify_name\00", align 1
@.str.66 = private unnamed_addr constant [25 x i8] c"verification policy name\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"verify_depth\00", align 1
@.str.68 = private unnamed_addr constant [18 x i8] c"chain depth limit\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"auth_level\00", align 1
@.str.70 = private unnamed_addr constant [36 x i8] c"chain authentication security level\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"attime\00", align 1
@.str.72 = private unnamed_addr constant [24 x i8] c"verification epoch time\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"verify_hostname\00", align 1
@.str.74 = private unnamed_addr constant [23 x i8] c"expected peer hostname\00", align 1
@.str.75 = private unnamed_addr constant [13 x i8] c"verify_email\00", align 1
@.str.76 = private unnamed_addr constant [20 x i8] c"expected peer email\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"verify_ip\00", align 1
@.str.78 = private unnamed_addr constant [25 x i8] c"expected peer IP address\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"ignore_critical\00", align 1
@.str.80 = private unnamed_addr constant [37 x i8] c"permit unhandled critical extensions\00", align 1
@.str.81 = private unnamed_addr constant [14 x i8] c"issuer_checks\00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c"(deprecated)\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"crl_check\00", align 1
@.str.84 = private unnamed_addr constant [34 x i8] c"check leaf certificate revocation\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"crl_check_all\00", align 1
@.str.86 = private unnamed_addr constant [28 x i8] c"check full chain revocation\00", align 1
@.str.87 = private unnamed_addr constant [13 x i8] c"policy_check\00", align 1
@.str.88 = private unnamed_addr constant [30 x i8] c"perform rfc5280 policy checks\00", align 1
@.str.89 = private unnamed_addr constant [16 x i8] c"explicit_policy\00", align 1
@.str.90 = private unnamed_addr constant [44 x i8] c"set policy variable require-explicit-policy\00", align 1
@.str.91 = private unnamed_addr constant [12 x i8] c"inhibit_any\00", align 1
@.str.92 = private unnamed_addr constant [39 x i8] c"set policy variable inhibit-any-policy\00", align 1
@.str.93 = private unnamed_addr constant [12 x i8] c"inhibit_map\00", align 1
@.str.94 = private unnamed_addr constant [43 x i8] c"set policy variable inhibit-policy-mapping\00", align 1
@.str.95 = private unnamed_addr constant [12 x i8] c"x509_strict\00", align 1
@.str.96 = private unnamed_addr constant [47 x i8] c"disable certificate compatibility work-arounds\00", align 1
@.str.97 = private unnamed_addr constant [13 x i8] c"extended_crl\00", align 1
@.str.98 = private unnamed_addr constant [29 x i8] c"enable extended CRL features\00", align 1
@.str.99 = private unnamed_addr constant [11 x i8] c"use_deltas\00", align 1
@.str.100 = private unnamed_addr constant [15 x i8] c"use delta CRLs\00", align 1
@.str.101 = private unnamed_addr constant [13 x i8] c"policy_print\00", align 1
@.str.102 = private unnamed_addr constant [36 x i8] c"print policy processing diagnostics\00", align 1
@.str.103 = private unnamed_addr constant [13 x i8] c"check_ss_sig\00", align 1
@.str.104 = private unnamed_addr constant [30 x i8] c"check root CA self-signatures\00", align 1
@.str.105 = private unnamed_addr constant [14 x i8] c"trusted_first\00", align 1
@.str.106 = private unnamed_addr constant [35 x i8] c"search trust store first (default)\00", align 1
@.str.107 = private unnamed_addr constant [16 x i8] c"suiteB_128_only\00", align 1
@.str.108 = private unnamed_addr constant [26 x i8] c"Suite B 128-bit-only mode\00", align 1
@.str.109 = private unnamed_addr constant [11 x i8] c"suiteB_128\00", align 1
@.str.110 = private unnamed_addr constant [49 x i8] c"Suite B 128-bit mode allowing 192-bit algorithms\00", align 1
@.str.111 = private unnamed_addr constant [11 x i8] c"suiteB_192\00", align 1
@.str.112 = private unnamed_addr constant [26 x i8] c"Suite B 192-bit-only mode\00", align 1
@.str.113 = private unnamed_addr constant [14 x i8] c"partial_chain\00", align 1
@.str.114 = private unnamed_addr constant [55 x i8] c"accept chains anchored by intermediate trust-store CAs\00", align 1
@.str.115 = private unnamed_addr constant [14 x i8] c"no_alt_chains\00", align 1
@.str.116 = private unnamed_addr constant [14 x i8] c"no_check_time\00", align 1
@.str.117 = private unnamed_addr constant [33 x i8] c"ignore certificate validity time\00", align 1
@.str.118 = private unnamed_addr constant [18 x i8] c"allow_proxy_certs\00", align 1
@.str.119 = private unnamed_addr constant [36 x i8] c"allow the use of proxy certificates\00", align 1
@.str.120 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.121 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.122 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.123 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.124 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.125 = private unnamed_addr constant [10 x i8] c"provparam\00", align 1
@.str.126 = private unnamed_addr constant [35 x i8] c"Set a provider key-value parameter\00", align 1
@.str.127 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.128 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@ts_options = dso_local constant [69 x %struct.options_st] [%struct.options_st { ptr @OPT_SECTION_STR, i32 1, i32 45, ptr @.str }, %struct.options_st { ptr @.str.1, i32 1, i32 45, ptr @.str.2 }, %struct.options_st { ptr @.str.3, i32 2, i32 60, ptr @.str.4 }, %struct.options_st { ptr @.str.5, i32 3, i32 115, ptr @.str.6 }, %struct.options_st { ptr @.str.7, i32 18, i32 115, ptr @.str.8 }, %struct.options_st { ptr @.str.9, i32 19, i32 115, ptr @.str.10 }, %struct.options_st { ptr @.str.11, i32 20, i32 60, ptr @.str.12 }, %struct.options_st { ptr @.str.13, i32 23, i32 60, ptr @.str.14 }, %struct.options_st { ptr @.str.15, i32 22, i32 47, ptr @.str.16 }, %struct.options_st { ptr @.str.17, i32 24, i32 58, ptr @.str.18 }, %struct.options_st { ptr @.str.19, i32 25, i32 60, ptr @.str.20 }, %struct.options_st { ptr @.str.21, i32 11, i32 45, ptr @.str.22 }, %struct.options_st { ptr @.str.23, i32 13, i32 45, ptr @.str.24 }, %struct.options_st { ptr @.str.25, i32 17, i32 115, ptr @.str.26 }, %struct.options_st { ptr @.str.27, i32 26, i32 45, ptr @.str.28 }, %struct.options_st { ptr @OPT_SECTION_STR, i32 1, i32 45, ptr @.str.29 }, %struct.options_st { ptr @.str.30, i32 4, i32 45, ptr @.str.31 }, %struct.options_st { ptr @.str.32, i32 5, i32 60, ptr @.str.33 }, %struct.options_st { ptr @.str.34, i32 6, i32 115, ptr @.str.35 }, %struct.options_st { ptr @.str.36, i32 16, i32 60, ptr @.str.37 }, %struct.options_st { ptr @.str.38, i32 9, i32 45, ptr @.str.39 }, %struct.options_st { ptr @.str.40, i32 10, i32 60, ptr @.str.41 }, %struct.options_st { ptr @OPT_SECTION_STR, i32 1, i32 45, ptr @.str.42 }, %struct.options_st { ptr @.str.43, i32 21, i32 45, ptr @.str.44 }, %struct.options_st { ptr @.str.45, i32 15, i32 45, ptr @.str.46 }, %struct.options_st { ptr @.str.47, i32 7, i32 115, ptr @.str.48 }, %struct.options_st { ptr @.str.49, i32 8, i32 45, ptr @.str.50 }, %struct.options_st { ptr @.str.51, i32 12, i32 62, ptr @.str.52 }, %struct.options_st { ptr @.str.53, i32 14, i32 45, ptr @.str.54 }, %struct.options_st { ptr @OPT_SECTION_STR, i32 1, i32 45, ptr @.str.55 }, %struct.options_st { ptr @.str.56, i32 1501, i32 115, ptr @.str.57 }, %struct.options_st { ptr @.str.58, i32 1502, i32 62, ptr @.str.59 }, %struct.options_st { ptr @OPT_SECTION_STR, i32 1, i32 45, ptr @.str.60 }, %struct.options_st { ptr @.str.61, i32 2001, i32 115, ptr @.str.62 }, %struct.options_st { ptr @.str.63, i32 2002, i32 115, ptr @.str.64 }, %struct.options_st { ptr @.str.65, i32 2003, i32 115, ptr @.str.66 }, %struct.options_st { ptr @.str.67, i32 2004, i32 110, ptr @.str.68 }, %struct.options_st { ptr @.str.69, i32 2029, i32 110, ptr @.str.70 }, %struct.options_st { ptr @.str.71, i32 2005, i32 77, ptr @.str.72 }, %struct.options_st { ptr @.str.73, i32 2006, i32 115, ptr @.str.74 }, %struct.options_st { ptr @.str.75, i32 2007, i32 115, ptr @.str.76 }, %struct.options_st { ptr @.str.77, i32 2008, i32 115, ptr @.str.78 }, %struct.options_st { ptr @.str.79, i32 2009, i32 45, ptr @.str.80 }, %struct.options_st { ptr @.str.81, i32 2010, i32 45, ptr @.str.82 }, %struct.options_st { ptr @.str.83, i32 2011, i32 45, ptr @.str.84 }, %struct.options_st { ptr @.str.85, i32 2012, i32 45, ptr @.str.86 }, %struct.options_st { ptr @.str.87, i32 2013, i32 45, ptr @.str.88 }, %struct.options_st { ptr @.str.89, i32 2014, i32 45, ptr @.str.90 }, %struct.options_st { ptr @.str.91, i32 2015, i32 45, ptr @.str.92 }, %struct.options_st { ptr @.str.93, i32 2016, i32 45, ptr @.str.94 }, %struct.options_st { ptr @.str.95, i32 2017, i32 45, ptr @.str.96 }, %struct.options_st { ptr @.str.97, i32 2018, i32 45, ptr @.str.98 }, %struct.options_st { ptr @.str.99, i32 2019, i32 45, ptr @.str.100 }, %struct.options_st { ptr @.str.101, i32 2020, i32 45, ptr @.str.102 }, %struct.options_st { ptr @.str.103, i32 2021, i32 45, ptr @.str.104 }, %struct.options_st { ptr @.str.105, i32 2022, i32 45, ptr @.str.106 }, %struct.options_st { ptr @.str.107, i32 2023, i32 45, ptr @.str.108 }, %struct.options_st { ptr @.str.109, i32 2024, i32 45, ptr @.str.110 }, %struct.options_st { ptr @.str.111, i32 2025, i32 45, ptr @.str.112 }, %struct.options_st { ptr @.str.113, i32 2026, i32 45, ptr @.str.114 }, %struct.options_st { ptr @.str.115, i32 2027, i32 45, ptr @.str.82 }, %struct.options_st { ptr @.str.116, i32 2028, i32 45, ptr @.str.117 }, %struct.options_st { ptr @.str.118, i32 2030, i32 45, ptr @.str.119 }, %struct.options_st { ptr @OPT_SECTION_STR, i32 1, i32 45, ptr @.str.120 }, %struct.options_st { ptr @.str.121, i32 1602, i32 115, ptr @.str.122 }, %struct.options_st { ptr @.str.123, i32 1601, i32 115, ptr @.str.124 }, %struct.options_st { ptr @.str.125, i32 1604, i32 115, ptr @.str.126 }, %struct.options_st { ptr @.str.127, i32 1603, i32 115, ptr @.str.128 }, %struct.options_st zeroinitializer], align 16
@default_config_file = external local_unnamed_addr global ptr, align 8
@bio_err = external local_unnamed_addr global ptr, align 8
@.str.129 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.130 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.131 = private unnamed_addr constant [54 x i8] c"%s: Must give only one of -query, -reply, or -verify\0A\00", align 1
@.str.132 = private unnamed_addr constant [49 x i8] c"%s: Must give one of -query, -reply, or -verify\0A\00", align 1
@.str.133 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@.str.134 = private unnamed_addr constant [25 x i8] c"Error getting password.\0A\00", align 1
@.str.135 = private unnamed_addr constant [10 x i8] c"apps/ts.c\00", align 1
@.str.136 = private unnamed_addr constant [14 x i8] c"Typical uses:\00", align 1
@.str.137 = private unnamed_addr constant [63 x i8] c" openssl ts -query [-rand file...] [-config file] [-data file]\00", align 1
@.str.138 = private unnamed_addr constant [60 x i8] c"    [-digest hexstring] [-tspolicy oid] [-no_nonce] [-cert]\00", align 1
@.str.139 = private unnamed_addr constant [35 x i8] c"    [-in file] [-out file] [-text]\00", align 1
@.str.140 = private unnamed_addr constant [57 x i8] c" openssl ts -reply [-config file] [-section tsa_section]\00", align 1
@.str.141 = private unnamed_addr constant [41 x i8] c"    [-queryfile file] [-passin password]\00", align 1
@.str.142 = private unnamed_addr constant [52 x i8] c"    [-signer tsa_cert.pem] [-inkey private_key.pem]\00", align 1
@.str.143 = private unnamed_addr constant [44 x i8] c"    [-chain certs_file.pem] [-tspolicy oid]\00", align 1
@.str.144 = private unnamed_addr constant [52 x i8] c"    [-in file] [-token_in] [-out file] [-token_out]\00", align 1
@.str.145 = private unnamed_addr constant [12 x i8] c"    [-text]\00", align 1
@.str.146 = private unnamed_addr constant [67 x i8] c" openssl ts -verify -CApath dir -CAfile root-cert.pem -CAstore uri\00", align 1
@.str.147 = private unnamed_addr constant [63 x i8] c"   -untrusted extra-certs.pem [-data file] [-digest hexstring]\00", align 1
@.str.148 = private unnamed_addr constant [62 x i8] c"    [-queryfile request.tsq] -in response.tsr [-token_in] ...\00", align 1
@.str.149 = private unnamed_addr constant [29 x i8] c"Using configuration from %s\0A\00", align 1
@.str.150 = private unnamed_addr constant [9 x i8] c"oid_file\00", align 1
@.str.151 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.152 = private unnamed_addr constant [24 x i8] c"could not create query\0A\00", align 1
@.str.153 = private unnamed_addr constant [14 x i8] c"digest buffer\00", align 1
@.str.154 = private unnamed_addr constant [40 x i8] c"bad digest, %d bytes must be specified\0A\00", align 1
@.str.155 = private unnamed_addr constant [26 x i8] c"cannot convert %s to OID\0A\00", align 1
@.str.156 = private unnamed_addr constant [24 x i8] c"could not create nonce\0A\00", align 1
@.str.157 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.158 = private unnamed_addr constant [30 x i8] c"Response has been generated.\0A\00", align 1
@.str.159 = private unnamed_addr constant [28 x i8] c"Response is not generated.\0A\00", align 1
@.str.160 = private unnamed_addr constant [39 x i8] c"Error during serial number generation.\00", align 1
@.str.161 = private unnamed_addr constant [69 x i8] c"Warning: could not open file %s for reading, using serial number: 1\0A\00", align 1
@.str.162 = private unnamed_addr constant [31 x i8] c"unable to load number from %s\0A\00", align 1
@.str.163 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.164 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.165 = private unnamed_addr constant [36 x i8] c"could not save serial number to %s\0A\00", align 1
@.str.166 = private unnamed_addr constant [15 x i8] c"Verification: \00", align 1
@.str.169 = private unnamed_addr constant [23 x i8] c"invalid digest string\0A\00", align 1
@.str.170 = private unnamed_addr constant [22 x i8] c"extra untrusted certs\00", align 1
@.str.171 = private unnamed_addr constant [27 x i8] c"memory allocation failure\0A\00", align 1
@.str.172 = private unnamed_addr constant [28 x i8] c"Error loading directory %s\0A\00", align 1
@.str.173 = private unnamed_addr constant [23 x i8] c"Error loading file %s\0A\00", align 1
@.str.174 = private unnamed_addr constant [28 x i8] c"Error loading store URI %s\0A\00", align 1
@str = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1
@str.1 = private unnamed_addr constant [3 x i8] c"OK\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ts_main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = load ptr, ptr @default_config_file, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr null, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store ptr null, ptr %i.b, align 8, !tbaa !17
  %i.d = tail call ptr @X509_VERIFY_PARAM_new() #6 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %load_config_file.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @opt_set_unknown_name(ptr noundef nonnull @.str.34) #6
  %i.f = tail call ptr @opt_init(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @ts_options) #6 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %bb.b
  %.0150 = phi ptr [ null, %bb.b ], [ %.0150.be, %.backedge ] ; 27 uses
  %.0148 = phi ptr [ null, %bb.b ], [ %.0148.be, %.backedge ] ; 27 uses
  %.0146 = phi ptr [ %i.c, %bb.b ], [ %.0146.be, %.backedge ] ; 28 uses
  %.0144 = phi ptr [ null, %bb.b ], [ %.0144.be, %.backedge ] ; 28 uses
  %.0142 = phi ptr [ null, %bb.b ], [ %.0142.be, %.backedge ] ; 28 uses
  %.0139 = phi ptr [ null, %bb.b ], [ %.0139.be, %.backedge ] ; 30 uses
  %.0137 = phi ptr [ null, %bb.b ], [ %.0137.be, %.backedge ] ; 30 uses
  %.0135 = phi ptr [ null, %bb.b ], [ %.0135.be, %.backedge ] ; 29 uses
  %.0133 = phi ptr [ null, %bb.b ], [ %.0133.be, %.backedge ] ; 31 uses
  %.0131 = phi ptr [ null, %bb.b ], [ %.0131.be, %.backedge ] ; 29 uses
  %.0129 = phi ptr [ null, %bb.b ], [ %.0129.be, %.backedge ] ; 31 uses
  %.0127 = phi ptr [ null, %bb.b ], [ %.0127.be, %.backedge ] ; 28 uses
  %.0125 = phi ptr [ null, %bb.b ], [ %.0125.be, %.backedge ] ; 28 uses
  %.0123 = phi ptr [ null, %bb.b ], [ %.0123.be, %.backedge ] ; 28 uses
  %.0121 = phi ptr [ null, %bb.b ], [ %.0121.be, %.backedge ] ; 28 uses
  %.0119 = phi ptr [ null, %bb.b ], [ %.0119.be, %.backedge ] ; 27 uses
  %.0117 = phi ptr [ null, %bb.b ], [ %.0117.be, %.backedge ] ; 27 uses
  %.0115 = phi i32 [ -1, %bb.b ], [ %.0115.be, %.backedge ] ; 31 uses
  %.0112 = phi i32 [ 0, %bb.b ], [ %.0112.be, %.backedge ] ; 27 uses
  %.0110 = phi i32 [ 0, %bb.b ], [ %.0110.be, %.backedge ] ; 27 uses
  %.0108 = phi i32 [ 0, %bb.b ], [ %.0108.be, %.backedge ] ; 29 uses
  %.0106 = phi i32 [ 0, %bb.b ], [ %.0106.be, %.backedge ] ; 30 uses
  %.0104 = phi i32 [ 0, %bb.b ], [ %.0104.be, %.backedge ] ; 29 uses
  %.0 = phi i32 [ 0, %bb.b ], [ %.0.be, %.backedge ] ; 28 uses
  %i.g = tail call i32 @opt_next() #6             ; 5 uses
  switch i32 %i.g, label %.backedge [
    i32 0, label %bb.ae
    i32 2023, label %bb.ac
    i32 -1, label %.loopexit.a
    i32 1, label %load_config_file.exit.loopexit
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 15, label %bb.f
    i32 21, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 2030, label %bb.ac
    i32 2028, label %bb.ac
    i32 1501, label %bb.i
    i32 1502, label %bb.i
    i32 2027, label %bb.ac
    i32 2026, label %bb.ac
    i32 1601, label %bb.j
    i32 1602, label %bb.j
    i32 1604, label %bb.j
    i32 1603, label %bb.j
    i32 7, label %bb.k
    i32 8, label %bb.l
    i32 9, label %bb.m
    i32 10, label %bb.n
    i32 11, label %bb.o
    i32 12, label %bb.p
    i32 13, label %bb.q
    i32 14, label %bb.r
    i32 16, label %bb.s
    i32 17, label %bb.t
    i32 18, label %bb.u
    i32 19, label %bb.v
    i32 20, label %bb.w
    i32 22, label %bb.x
    i32 23, label %bb.y
    i32 24, label %bb.z
    i32 25, label %bb.aa
    i32 26, label %bb.ab
    i32 2025, label %bb.ac
    i32 2024, label %bb.ac
    i32 2001, label %bb.ac
    i32 2002, label %bb.ac
    i32 2003, label %bb.ac
    i32 2004, label %bb.ac
    i32 2029, label %bb.ac
    i32 2005, label %bb.ac
    i32 2006, label %bb.ac
    i32 2007, label %bb.ac
    i32 2008, label %bb.ac
    i32 2009, label %bb.ac
    i32 2010, label %bb.ac
    i32 2011, label %bb.ac
    i32 2012, label %bb.ac
    i32 2013, label %bb.ac
    i32 2014, label %bb.ac
    i32 2015, label %bb.ac
    i32 2016, label %bb.ac
    i32 2017, label %bb.ac
    i32 2018, label %bb.ac
    i32 2019, label %bb.ac
    i32 2020, label %bb.ac
    i32 2021, label %bb.ac
    i32 2022, label %bb.ac
  ]

.loopexit.sink.split:                             ; preds = %bb.f, %bb.af
  %.str.132.sink = phi ptr [ @.str.132, %bb.af ], [ @.str.131, %bb.f ]
  %i.h = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.i = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.h, ptr noundef nonnull %.str.132.sink, ptr noundef %i.f) #6 ; 0 uses
  br label %.loopexit.a

.loopexit.a:                                      ; preds = %bb.c, %.loopexit.sink.split, %bb.ay, %bb.bb, %bb.aw, %bb.au, %bb.at, %bb.aq, %bb.ap, %bb.ah, %bb.ae
  %.0152 = phi ptr [ null, %bb.ae ], [ null, %bb.ah ], [ %2, %bb.bb ], [ null, %.loopexit.sink.split ], [ %2, %bb.ap ], [ %2, %bb.aq ], [ %2, %bb.at ], [ %2, %bb.au ], [ %2, %bb.aw ], [ %2, %bb.ay ], [ null, %bb.c ]
  %i.j = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.k = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.j, ptr noundef nonnull @.str.129, ptr noundef %i.f) #6 ; 0 uses
  br label %load_config_file.exit

load_config_file.exit.loopexit:                   ; preds = %bb.c
  tail call void @opt_help(ptr noundef nonnull @ts_options) #6
  %i.l = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.m = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.l, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.27) #6 ; 0 uses
  %i.n = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.o = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.n, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.136) #6 ; 0 uses
  %i.p = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.q = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.p, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.137) #6 ; 0 uses
  %i.r = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.s = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.r, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.138) #6 ; 0 uses
  %i.t = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.u = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.t, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.139) #6 ; 0 uses
  %i.v = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.w = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.v, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.27) #6 ; 0 uses
  %i.x = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.y = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.x, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.140) #6 ; 0 uses
  %i.z = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.aa = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.z, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.141) #6 ; 0 uses
  %i.ab = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.ac = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ab, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.142) #6 ; 0 uses
  %i.ad = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.ae = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ad, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.143) #6 ; 0 uses
  %i.af = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.ag = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.af, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.144) #6 ; 0 uses
  %i.ah = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.ai = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ah, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.145) #6 ; 0 uses
  %i.aj = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.ak = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.aj, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.27) #6 ; 0 uses
  %i.al = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.am = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.al, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.146) #6 ; 0 uses
  %i.an = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.ao = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.an, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.147) #6 ; 0 uses
  %i.ap = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.aq = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ap, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.148) #6 ; 0 uses
  br label %load_config_file.exit

bb.d:                                             ; preds = %bb.c
  %i.ar = tail call ptr @opt_arg() #6
  br label %.backedge

bb.e:                                             ; preds = %bb.c
  %i.as = tail call ptr @opt_arg() #6
  br label %.backedge

bb.f:                                             ; preds = %bb.c, %bb.c, %bb.c
  %.not175 = icmp eq i32 %.0115, -1
  br i1 %.not175, label %.backedge, label %.loopexit.sink.split

.backedge:                                        ; preds = %bb.f, %bb.c, %bb.j, %bb.i, %bb.ad, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.h, %bb.g, %bb.e, %bb.d
  %.0150.be = phi ptr [ %.0150, %bb.c ], [ %.0150, %bb.d ], [ %.0150, %bb.e ], [ %.0150, %bb.ad ], [ %.0150, %bb.g ], [ %.0150, %bb.h ], [ %.0150, %bb.i ], [ %.0150, %bb.j ], [ %.0150, %bb.k ], [ %.0150, %bb.l ], [ %.0150, %bb.m ], [ %.0150, %bb.n ], [ %.0150, %bb.o ], [ %.0150, %bb.p ], [ %.0150, %bb.q ], [ %.0150, %bb.r ], [ %.0150, %bb.s ], [ %.0150, %bb.t ], [ %.0150, %bb.u ], [ %.0150, %bb.v ], [ %.0150, %bb.w ], [ %.0150, %bb.x ], [ %i.bg, %bb.y ], [ %.0150, %bb.z ], [ %.0150, %bb.aa ], [ %.0150, %bb.ab ], [ %.0150, %bb.f ]
  %.0148.be = phi ptr [ %.0148, %bb.c ], [ %.0148, %bb.d ], [ %.0148, %bb.e ], [ %.0148, %bb.ad ], [ %.0148, %bb.g ], [ %.0148, %bb.h ], [ %.0148, %bb.i ], [ %.0148, %bb.j ], [ %.0148, %bb.k ], [ %.0148, %bb.l ], [ %.0148, %bb.m ], [ %.0148, %bb.n ], [ %.0148, %bb.o ], [ %.0148, %bb.p ], [ %.0148, %bb.q ], [ %.0148, %bb.r ], [ %.0148, %bb.s ], [ %.0148, %bb.t ], [ %.0148, %bb.u ], [ %.0148, %bb.v ], [ %.0148, %bb.w ], [ %.0148, %bb.x ], [ %.0148, %bb.y ], [ %.0148, %bb.z ], [ %i.bi, %bb.aa ], [ %.0148, %bb.ab ], [ %.0148, %bb.f ]
  %.0146.be = phi ptr [ %.0146, %bb.c ], [ %i.ar, %bb.d ], [ %.0146, %bb.e ], [ %.0146, %bb.ad ], [ %.0146, %bb.g ], [ %.0146, %bb.h ], [ %.0146, %bb.i ], [ %.0146, %bb.j ], [ %.0146, %bb.k ], [ %.0146, %bb.l ], [ %.0146, %bb.m ], [ %.0146, %bb.n ], [ %.0146, %bb.o ], [ %.0146, %bb.p ], [ %.0146, %bb.q ], [ %.0146, %bb.r ], [ %.0146, %bb.s ], [ %.0146, %bb.t ], [ %.0146, %bb.u ], [ %.0146, %bb.v ], [ %.0146, %bb.w ], [ %.0146, %bb.x ], [ %.0146, %bb.y ], [ %.0146, %bb.z ], [ %.0146, %bb.aa ], [ %.0146, %bb.ab ], [ %.0146, %bb.f ]
  %.0144.be = phi ptr [ %.0144, %bb.c ], [ %.0144, %bb.d ], [ %i.as, %bb.e ], [ %.0144, %bb.ad ], [ %.0144, %bb.g ], [ %.0144, %bb.h ], [ %.0144, %bb.i ], [ %.0144, %bb.j ], [ %.0144, %bb.k ], [ %.0144, %bb.l ], [ %.0144, %bb.m ], [ %.0144, %bb.n ], [ %.0144, %bb.o ], [ %.0144, %bb.p ], [ %.0144, %bb.q ], [ %.0144, %bb.r ], [ %.0144, %bb.s ], [ %.0144, %bb.t ], [ %.0144, %bb.u ], [ %.0144, %bb.v ], [ %.0144, %bb.w ], [ %.0144, %bb.x ], [ %.0144, %bb.y ], [ %.0144, %bb.z ], [ %.0144, %bb.aa ], [ %.0144, %bb.ab ], [ %.0144, %bb.f ]
  %.0142.be = phi ptr [ %.0142, %bb.c ], [ %.0142, %bb.d ], [ %.0142, %bb.e ], [ %.0142, %bb.ad ], [ %.0142, %bb.g ], [ %.0142, %bb.h ], [ %.0142, %bb.i ], [ %.0142, %bb.j ], [ %.0142, %bb.k ], [ %.0142, %bb.l ], [ %.0142, %bb.m ], [ %.0142, %bb.n ], [ %.0142, %bb.o ], [ %.0142, %bb.p ], [ %.0142, %bb.q ], [ %.0142, %bb.r ], [ %.0142, %bb.s ], [ %.0142, %bb.t ], [ %.0142, %bb.u ], [ %.0142, %bb.v ], [ %.0142, %bb.w ], [ %.0142, %bb.x ], [ %.0142, %bb.y ], [ %.0142, %bb.z ], [ %.0142, %bb.aa ], [ %i.bj, %bb.ab ], [ %.0142, %bb.f ]
  %.0139.be = phi ptr [ %.0139, %bb.c ], [ %.0139, %bb.d ], [ %.0139, %bb.e ], [ %.0139, %bb.ad ], [ %i.at, %bb.g ], [ %.0139, %bb.h ], [ %.0139, %bb.i ], [ %.0139, %bb.j ], [ %.0139, %bb.k ], [ %.0139, %bb.l ], [ %.0139, %bb.m ], [ %.0139, %bb.n ], [ %.0139, %bb.o ], [ %.0139, %bb.p ], [ %.0139, %bb.q ], [ %.0139, %bb.r ], [ %.0139, %bb.s ], [ %.0139, %bb.t ], [ %.0139, %bb.u ], [ %.0139, %bb.v ], [ %.0139, %bb.w ], [ %.0139, %bb.x ], [ %.0139, %bb.y ], [ %.0139, %bb.z ], [ %.0139, %bb.aa ], [ %.0139, %bb.ab ], [ %.0139, %bb.f ]
  %.0137.be = phi ptr [ %.0137, %bb.c ], [ %.0137, %bb.d ], [ %.0137, %bb.e ], [ %.0137, %bb.ad ], [ %.0137, %bb.g ], [ %i.au, %bb.h ], [ %.0137, %bb.i ], [ %.0137, %bb.j ], [ %.0137, %bb.k ], [ %.0137, %bb.l ], [ %.0137, %bb.m ], [ %.0137, %bb.n ], [ %.0137, %bb.o ], [ %.0137, %bb.p ], [ %.0137, %bb.q ], [ %.0137, %bb.r ], [ %.0137, %bb.s ], [ %.0137, %bb.t ], [ %.0137, %bb.u ], [ %.0137, %bb.v ], [ %.0137, %bb.w ], [ %.0137, %bb.x ], [ %.0137, %bb.y ], [ %.0137, %bb.z ], [ %.0137, %bb.aa ], [ %.0137, %bb.ab ], [ %.0137, %bb.f ]
  %.0135.be = phi ptr [ %.0135, %bb.c ], [ %.0135, %bb.d ], [ %.0135, %bb.e ], [ %.0135, %bb.ad ], [ %.0135, %bb.g ], [ %.0135, %bb.h ], [ %.0135, %bb.i ], [ %.0135, %bb.j ], [ %i.ax, %bb.k ], [ %.0135, %bb.l ], [ %.0135, %bb.m ], [ %.0135, %bb.n ], [ %.0135, %bb.o ], [ %.0135, %bb.p ], [ %.0135, %bb.q ], [ %.0135, %bb.r ], [ %.0135, %bb.s ], [ %.0135, %bb.t ], [ %.0135, %bb.u ], [ %.0135, %bb.v ], [ %.0135, %bb.w ], [ %.0135, %bb.x ], [ %.0135, %bb.y ], [ %.0135, %bb.z ], [ %.0135, %bb.aa ], [ %.0135, %bb.ab ], [ %.0135, %bb.f ]
  %.0133.be = phi ptr [ %.0133, %bb.c ], [ %.0133, %bb.d ], [ %.0133, %bb.e ], [ %.0133, %bb.ad ], [ %.0133, %bb.g ], [ %.0133, %bb.h ], [ %.0133, %bb.i ], [ %.0133, %bb.j ], [ %.0133, %bb.k ], [ %.0133, %bb.l ], [ %.0133, %bb.m ], [ %i.ay, %bb.n ], [ %.0133, %bb.o ], [ %.0133, %bb.p ], [ %.0133, %bb.q ], [ %.0133, %bb.r ], [ %.0133, %bb.s ], [ %.0133, %bb.t ], [ %.0133, %bb.u ], [ %.0133, %bb.v ], [ %.0133, %bb.w ], [ %.0133, %bb.x ], [ %.0133, %bb.y ], [ %.0133, %bb.z ], [ %.0133, %bb.aa ], [ %.0133, %bb.ab ], [ %.0133, %bb.f ]
  %.0131.be = phi ptr [ %.0131, %bb.c ], [ %.0131, %bb.d ], [ %.0131, %bb.e ], [ %.0131, %bb.ad ], [ %.0131, %bb.g ], [ %.0131, %bb.h ], [ %.0131, %bb.i ], [ %.0131, %bb.j ], [ %.0131, %bb.k ], [ %.0131, %bb.l ], [ %.0131, %bb.m ], [ %.0131, %bb.n ], [ %.0131, %bb.o ], [ %i.az, %bb.p ], [ %.0131, %bb.q ], [ %.0131, %bb.r ], [ %.0131, %bb.s ], [ %.0131, %bb.t ], [ %.0131, %bb.u ], [ %.0131, %bb.v ], [ %.0131, %bb.w ], [ %.0131, %bb.x ], [ %.0131, %bb.y ], [ %.0131, %bb.z ], [ %.0131, %bb.aa ], [ %.0131, %bb.ab ], [ %.0131, %bb.f ]
  %.0129.be = phi ptr [ %.0129, %bb.c ], [ %.0129, %bb.d ], [ %.0129, %bb.e ], [ %.0129, %bb.ad ], [ %.0129, %bb.g ], [ %.0129, %bb.h ], [ %.0129, %bb.i ], [ %.0129, %bb.j ], [ %.0129, %bb.k ], [ %.0129, %bb.l ], [ %.0129, %bb.m ], [ %.0129, %bb.n ], [ %.0129, %bb.o ], [ %.0129, %bb.p ], [ %.0129, %bb.q ], [ %.0129, %bb.r ], [ %i.ba, %bb.s ], [ %.0129, %bb.t ], [ %.0129, %bb.u ], [ %.0129, %bb.v ], [ %.0129, %bb.w ], [ %.0129, %bb.x ], [ %.0129, %bb.y ], [ %.0129, %bb.z ], [ %.0129, %bb.aa ], [ %.0129, %bb.ab ], [ %.0129, %bb.f ]
  %.0127.be = phi ptr [ %.0127, %bb.c ], [ %.0127, %bb.d ], [ %.0127, %bb.e ], [ %.0127, %bb.ad ], [ %.0127, %bb.g ], [ %.0127, %bb.h ], [ %.0127, %bb.i ], [ %.0127, %bb.j ], [ %.0127, %bb.k ], [ %.0127, %bb.l ], [ %.0127, %bb.m ], [ %.0127, %bb.n ], [ %.0127, %bb.o ], [ %.0127, %bb.p ], [ %.0127, %bb.q ], [ %.0127, %bb.r ], [ %.0127, %bb.s ], [ %i.bb, %bb.t ], [ %.0127, %bb.u ], [ %.0127, %bb.v ], [ %.0127, %bb.w ], [ %.0127, %bb.x ], [ %.0127, %bb.y ], [ %.0127, %bb.z ], [ %.0127, %bb.aa ], [ %.0127, %bb.ab ], [ %.0127, %bb.f ]
  %.0125.be = phi ptr [ %.0125, %bb.c ], [ %.0125, %bb.d ], [ %.0125, %bb.e ], [ %.0125, %bb.ad ], [ %.0125, %bb.g ], [ %.0125, %bb.h ], [ %.0125, %bb.i ], [ %.0125, %bb.j ], [ %.0125, %bb.k ], [ %.0125, %bb.l ], [ %.0125, %bb.m ], [ %.0125, %bb.n ], [ %.0125, %bb.o ], [ %.0125, %bb.p ], [ %.0125, %bb.q ], [ %.0125, %bb.r ], [ %.0125, %bb.s ], [ %.0125, %bb.t ], [ %i.bc, %bb.u ], [ %.0125, %bb.v ], [ %.0125, %bb.w ], [ %.0125, %bb.x ], [ %.0125, %bb.y ], [ %.0125, %bb.z ], [ %.0125, %bb.aa ], [ %.0125, %bb.ab ], [ %.0125, %bb.f ]
  %.0123.be = phi ptr [ %.0123, %bb.c ], [ %.0123, %bb.d ], [ %.0123, %bb.e ], [ %.0123, %bb.ad ], [ %.0123, %bb.g ], [ %.0123, %bb.h ], [ %.0123, %bb.i ], [ %.0123, %bb.j ], [ %.0123, %bb.k ], [ %.0123, %bb.l ], [ %.0123, %bb.m ], [ %.0123, %bb.n ], [ %.0123, %bb.o ], [ %.0123, %bb.p ], [ %.0123, %bb.q ], [ %.0123, %bb.r ], [ %.0123, %bb.s ], [ %.0123, %bb.t ], [ %.0123, %bb.u ], [ %i.bd, %bb.v ], [ %.0123, %bb.w ], [ %.0123, %bb.x ], [ %.0123, %bb.y ], [ %.0123, %bb.z ], [ %.0123, %bb.aa ], [ %.0123, %bb.ab ], [ %.0123, %bb.f ]
  %.0121.be = phi ptr [ %.0121, %bb.c ], [ %.0121, %bb.d ], [ %.0121, %bb.e ], [ %.0121, %bb.ad ], [ %.0121, %bb.g ], [ %.0121, %bb.h ], [ %.0121, %bb.i ], [ %.0121, %bb.j ], [ %.0121, %bb.k ], [ %.0121, %bb.l ], [ %.0121, %bb.m ], [ %.0121, %bb.n ], [ %.0121, %bb.o ], [ %.0121, %bb.p ], [ %.0121, %bb.q ], [ %.0121, %bb.r ], [ %.0121, %bb.s ], [ %.0121, %bb.t ], [ %.0121, %bb.u ], [ %.0121, %bb.v ], [ %i.be, %bb.w ], [ %.0121, %bb.x ], [ %.0121, %bb.y ], [ %.0121, %bb.z ], [ %.0121, %bb.aa ], [ %.0121, %bb.ab ], [ %.0121, %bb.f ]
  %.0119.be = phi ptr [ %.0119, %bb.c ], [ %.0119, %bb.d ], [ %.0119, %bb.e ], [ %.0119, %bb.ad ], [ %.0119, %bb.g ], [ %.0119, %bb.h ], [ %.0119, %bb.i ], [ %.0119, %bb.j ], [ %.0119, %bb.k ], [ %.0119, %bb.l ], [ %.0119, %bb.m ], [ %.0119, %bb.n ], [ %.0119, %bb.o ], [ %.0119, %bb.p ], [ %.0119, %bb.q ], [ %.0119, %bb.r ], [ %.0119, %bb.s ], [ %.0119, %bb.t ], [ %.0119, %bb.u ], [ %.0119, %bb.v ], [ %.0119, %bb.w ], [ %i.bf, %bb.x ], [ %.0119, %bb.y ], [ %.0119, %bb.z ], [ %.0119, %bb.aa ], [ %.0119, %bb.ab ], [ %.0119, %bb.f ]
  %.0117.be = phi ptr [ %.0117, %bb.c ], [ %.0117, %bb.d ], [ %.0117, %bb.e ], [ %.0117, %bb.ad ], [ %.0117, %bb.g ], [ %.0117, %bb.h ], [ %.0117, %bb.i ], [ %.0117, %bb.j ], [ %.0117, %bb.k ], [ %.0117, %bb.l ], [ %.0117, %bb.m ], [ %.0117, %bb.n ], [ %.0117, %bb.o ], [ %.0117, %bb.p ], [ %.0117, %bb.q ], [ %.0117, %bb.r ], [ %.0117, %bb.s ], [ %.0117, %bb.t ], [ %.0117, %bb.u ], [ %.0117, %bb.v ], [ %.0117, %bb.w ], [ %.0117, %bb.x ], [ %.0117, %bb.y ], [ %i.bh, %bb.z ], [ %.0117, %bb.aa ], [ %.0117, %bb.ab ], [ %.0117, %bb.f ]
  %.0115.be = phi i32 [ %.0115, %bb.c ], [ %.0115, %bb.d ], [ %.0115, %bb.e ], [ %.0115, %bb.ad ], [ %.0115, %bb.g ], [ %.0115, %bb.h ], [ %.0115, %bb.i ], [ %.0115, %bb.j ], [ %.0115, %bb.k ], [ %.0115, %bb.l ], [ %.0115, %bb.m ], [ %.0115, %bb.n ], [ %.0115, %bb.o ], [ %.0115, %bb.p ], [ %.0115, %bb.q ], [ %.0115, %bb.r ], [ %.0115, %bb.s ], [ %.0115, %bb.t ], [ %.0115, %bb.u ], [ %.0115, %bb.v ], [ %.0115, %bb.w ], [ %.0115, %bb.x ], [ %.0115, %bb.y ], [ %.0115, %bb.z ], [ %.0115, %bb.aa ], [ %.0115, %bb.ab ], [ %i.g, %bb.f ]
  %.0112.be = phi i32 [ %.0112, %bb.c ], [ %.0112, %bb.d ], [ %.0112, %bb.e ], [ %.0112, %bb.ad ], [ %.0112, %bb.g ], [ %.0112, %bb.h ], [ %.0112, %bb.i ], [ %.0112, %bb.j ], [ %.0112, %bb.k ], [ 1, %bb.l ], [ %.0112, %bb.m ], [ %.0112, %bb.n ], [ %.0112, %bb.o ], [ %.0112, %bb.p ], [ %.0112, %bb.q ], [ %.0112, %bb.r ], [ %.0112, %bb.s ], [ %.0112, %bb.t ], [ %.0112, %bb.u ], [ %.0112, %bb.v ], [ %.0112, %bb.w ], [ %.0112, %bb.x ], [ %.0112, %bb.y ], [ %.0112, %bb.z ], [ %.0112, %bb.aa ], [ %.0112, %bb.ab ], [ %.0112, %bb.f ]
  %.0110.be = phi i32 [ %.0110, %bb.c ], [ %.0110, %bb.d ], [ %.0110, %bb.e ], [ %.0110, %bb.ad ], [ %.0110, %bb.g ], [ %.0110, %bb.h ], [ %.0110, %bb.i ], [ %.0110, %bb.j ], [ %.0110, %bb.k ], [ %.0110, %bb.l ], [ 1, %bb.m ], [ %.0110, %bb.n ], [ %.0110, %bb.o ], [ %.0110, %bb.p ], [ %.0110, %bb.q ], [ %.0110, %bb.r ], [ %.0110, %bb.s ], [ %.0110, %bb.t ], [ %.0110, %bb.u ], [ %.0110, %bb.v ], [ %.0110, %bb.w ], [ %.0110, %bb.x ], [ %.0110, %bb.y ], [ %.0110, %bb.z ], [ %.0110, %bb.aa ], [ %.0110, %bb.ab ], [ %.0110, %bb.f ]
  %.0108.be = phi i32 [ %.0108, %bb.c ], [ %.0108, %bb.d ], [ %.0108, %bb.e ], [ %.0108, %bb.ad ], [ %.0108, %bb.g ], [ %.0108, %bb.h ], [ %.0108, %bb.i ], [ %.0108, %bb.j ], [ %.0108, %bb.k ], [ %.0108, %bb.l ], [ %.0108, %bb.m ], [ %.0108, %bb.n ], [ %.0108, %bb.o ], [ %.0108, %bb.p ], [ %.0108, %bb.q ], [ 1, %bb.r ], [ %.0108, %bb.s ], [ %.0108, %bb.t ], [ %.0108, %bb.u ], [ %.0108, %bb.v ], [ %.0108, %bb.w ], [ %.0108, %bb.x ], [ %.0108, %bb.y ], [ %.0108, %bb.z ], [ %.0108, %bb.aa ], [ %.0108, %bb.ab ], [ %.0108, %bb.f ]
  %.0106.be = phi i32 [ %.0106, %bb.c ], [ %.0106, %bb.d ], [ %.0106, %bb.e ], [ %i.bl, %bb.ad ], [ %.0106, %bb.g ], [ %.0106, %bb.h ], [ %.0106, %bb.i ], [ %.0106, %bb.j ], [ %.0106, %bb.k ], [ %.0106, %bb.l ], [ %.0106, %bb.m ], [ %.0106, %bb.n ], [ %.0106, %bb.o ], [ %.0106, %bb.p ], [ %.0106, %bb.q ], [ %.0106, %bb.r ], [ %.0106, %bb.s ], [ %.0106, %bb.t ], [ %.0106, %bb.u ], [ %.0106, %bb.v ], [ %.0106, %bb.w ], [ %.0106, %bb.x ], [ %.0106, %bb.y ], [ %.0106, %bb.z ], [ %.0106, %bb.aa ], [ %.0106, %bb.ab ], [ %.0106, %bb.f ]
  %.0104.be = phi i32 [ %.0104, %bb.c ], [ %.0104, %bb.d ], [ %.0104, %bb.e ], [ %.0104, %bb.ad ], [ %.0104, %bb.g ], [ %.0104, %bb.h ], [ %.0104, %bb.i ], [ %.0104, %bb.j ], [ %.0104, %bb.k ], [ %.0104, %bb.l ], [ %.0104, %bb.m ], [ %.0104, %bb.n ], [ 1, %bb.o ], [ %.0104, %bb.p ], [ %.0104, %bb.q ], [ %.0104, %bb.r ], [ %.0104, %bb.s ], [ %.0104, %bb.t ], [ %.0104, %bb.u ], [ %.0104, %bb.v ], [ %.0104, %bb.w ], [ %.0104, %bb.x ], [ %.0104, %bb.y ], [ %.0104, %bb.z ], [ %.0104, %bb.aa ], [ %.0104, %bb.ab ], [ %.0104, %bb.f ]
  %.0.be = phi i32 [ %.0, %bb.c ], [ %.0, %bb.d ], [ %.0, %bb.e ], [ %.0, %bb.ad ], [ %.0, %bb.g ], [ %.0, %bb.h ], [ %.0, %bb.i ], [ %.0, %bb.j ], [ %.0, %bb.k ], [ %.0, %bb.l ], [ %.0, %bb.m ], [ %.0, %bb.n ], [ %.0, %bb.o ], [ %.0, %bb.p ], [ 1, %bb.q ], [ %.0, %bb.r ], [ %.0, %bb.s ], [ %.0, %bb.t ], [ %.0, %bb.u ], [ %.0, %bb.v ], [ %.0, %bb.w ], [ %.0, %bb.x ], [ %.0, %bb.y ], [ %.0, %bb.z ], [ %.0, %bb.aa ], [ %.0, %bb.ab ], [ %.0, %bb.f ]
  br label %bb.c, !llvm.loop !13

bb.g:                                             ; preds = %bb.c
  %i.at = tail call ptr @opt_arg() #6
  br label %.backedge

bb.h:                                             ; preds = %bb.c
  %i.au = tail call ptr @opt_arg() #6
  br label %.backedge

bb.i:                                             ; preds = %bb.c, %bb.c
  %i.av = tail call i32 @opt_rand(i32 noundef %i.g) #6
  %.not173 = icmp eq i32 %i.av, 0
  br i1 %.not173, label %load_config_file.exit, label %.backedge

bb.j:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.aw = tail call i32 @opt_provider(i32 noundef %i.g) #6
  %.not172 = icmp eq i32 %i.aw, 0
  br i1 %.not172, label %load_config_file.exit, label %.backedge

bb.k:                                             ; preds = %bb.c
  %i.ax = tail call ptr @opt_arg() #6
  br label %.backedge

bb.l:                                             ; preds = %bb.c
  br label %.backedge

bb.m:                                             ; preds = %bb.c
  br label %.backedge

bb.n:                                             ; preds = %bb.c
  %i.ay = tail call ptr @opt_arg() #6
  br label %.backedge

bb.o:                                             ; preds = %bb.c
  br label %.backedge

bb.p:                                             ; preds = %bb.c
  %i.az = tail call ptr @opt_arg() #6
  br label %.backedge

bb.q:                                             ; preds = %bb.c
  br label %.backedge

bb.r:                                             ; preds = %bb.c
  br label %.backedge

bb.s:                                             ; preds = %bb.c
  %i.ba = tail call ptr @opt_arg() #6
  br label %.backedge

bb.t:                                             ; preds = %bb.c
  %i.bb = tail call ptr @opt_arg() #6
  br label %.backedge

bb.u:                                             ; preds = %bb.c
  %i.bc = tail call ptr @opt_arg() #6
  br label %.backedge

bb.v:                                             ; preds = %bb.c
  %i.bd = tail call ptr @opt_arg() #6
  br label %.backedge

bb.w:                                             ; preds = %bb.c
  %i.be = tail call ptr @opt_arg() #6
  br label %.backedge

bb.x:                                             ; preds = %bb.c
  %i.bf = tail call ptr @opt_arg() #6
  br label %.backedge

bb.y:                                             ; preds = %bb.c
  %i.bg = tail call ptr @opt_arg() #6
  br label %.backedge

bb.z:                                             ; preds = %bb.c
  %i.bh = tail call ptr @opt_arg() #6
  br label %.backedge

bb.aa:                                            ; preds = %bb.c
  %i.bi = tail call ptr @opt_arg() #6
  br label %.backedge

bb.ab:                                            ; preds = %bb.c
  %i.bj = tail call ptr @opt_unknown() #6
  br label %.backedge

bb.ac:                                            ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.bk = tail call i32 @opt_verify(i32 noundef %i.g, ptr noundef nonnull %i.d) #6
  %.not174 = icmp eq i32 %i.bk, 0
  br i1 %.not174, label %load_config_file.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bl = add nsw i32 %.0106, 1
  br label %.backedge

bb.ae:                                            ; preds = %bb.c
  %i.bm = tail call i32 @opt_check_rest_arg(ptr noundef null) #6
  %.not160 = icmp eq i32 %i.bm, 0
  br i1 %.not160, label %.loopexit.a, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bn = icmp eq i32 %.0115, -1
  br i1 %i.bn, label %.loopexit.sink.split, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bo = tail call i32 @app_RAND_load() #6
  %.not161 = icmp eq i32 %i.bo, 0
  br i1 %.not161, label %load_config_file.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bp = icmp eq ptr %.0142, null
  %spec.store.select = select i1 %i.bp, ptr @.str.133, ptr %.0142
  %i.bq = call i32 @opt_md(ptr noundef nonnull %spec.store.select, ptr noundef nonnull %i.b) #6
  %.not162 = icmp eq i32 %i.bq, 0
  br i1 %.not162, label %.loopexit.a, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.br = icmp eq i32 %.0115, 15                  ; 2 uses
  %i.bs = icmp ne ptr %.0127, null
  %or.cond = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %or.cond, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.bt = call i32 @app_passwd(ptr noundef nonnull %.0127, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef null) #6
  %.not163 = icmp eq i32 %i.bt, 0
  br i1 %.not163, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.bu = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.bv = call i32 @BIO_puts(ptr noundef %i.bu, ptr noundef nonnull @.str.134) #6 ; 0 uses
  br label %load_config_file.exit

bb.al:                                            ; preds = %bb.aj, %bb.ai
  %2 = call fastcc ptr @load_config_file(ptr noundef %.0146) ; 15 uses
  %.not15.i = icmp eq ptr %2, null
  br i1 %.not15.i, label %load_config_file.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bw = load ptr, ptr @default_config_file, align 8, !tbaa !15
  %.not164 = icmp eq ptr %.0146, %i.bw
  br i1 %.not164, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bx = call i32 @app_load_modules(ptr noundef nonnull %2) #6
  %.not165 = icmp eq i32 %i.bx, 0
  br i1 %.not165, label %load_config_file.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.by = icmp eq i32 %.0115, 4
  br i1 %i.by, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %.not170 = icmp eq i32 %.0106, 0
  br i1 %.not170, label %bb.aq, label %.loopexit.a

bb.aq:                                            ; preds = %bb.ap
  %i.bz = icmp ne ptr %.0139, null
  %i.ca = icmp ne ptr %.0137, null
  %or.cond3 = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %or.cond3, label %.loopexit.a, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cb = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.cc = call fastcc i32 @query_command(ptr noundef %.0139, ptr noundef %.0137, ptr noundef %i.cb, ptr noundef %.0135, i32 noundef %.0112, i32 noundef %.0110, ptr noundef %.0133, ptr noundef %.0131, i32 noundef %.0108)
  %i.cd = xor i32 %i.cc, 1
  br label %load_config_file.exit

bb.as:                                            ; preds = %bb.ao
  br i1 %i.br, label %bb.at, label %bb.ay

bb.at:                                            ; preds = %bb.as
  %.not168 = icmp eq i32 %.0106, 0
  br i1 %.not168, label %bb.au, label %.loopexit.a

bb.au:                                            ; preds = %bb.at
  %i.ce = icmp ne ptr %.0133, null                ; 2 uses
  %i.cf = icmp ne ptr %.0129, null                ; 2 uses
  %or.cond5 = select i1 %i.ce, i1 %i.cf, i1 false
  br i1 %or.cond5, label %.loopexit.a, label %bb.av

bb.av:                                            ; preds = %bb.au
  br i1 %i.ce, label %.split, label %bb.aw

.split:                                           ; preds = %bb.av
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.ch = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.ci = call fastcc i32 @reply_command(ptr noundef %2, ptr noundef %.0144, ptr noundef %.0129, ptr noundef %i.cg, ptr noundef %.0125, ptr noundef %i.ch, ptr noundef %.0123, ptr noundef %.0121, ptr noundef %.0135, ptr noundef nonnull %.0133, i32 noundef %.0104, ptr noundef %.0131, i32 noundef %.0, i32 noundef %.0108)
  br label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.cj = icmp eq i32 %.0104, 0
  %or.cond9.not = select i1 %i.cj, i1 %i.cf, i1 false
  br i1 %or.cond9.not, label %.split154, label %.loopexit.a

.split154:                                        ; preds = %bb.aw
  %i.ck = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.cl = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.cm = call fastcc i32 @reply_command(ptr noundef %2, ptr noundef %.0144, ptr noundef nonnull %.0129, ptr noundef %i.ck, ptr noundef %.0125, ptr noundef %i.cl, ptr noundef %.0123, ptr noundef %.0121, ptr noundef %.0135, ptr noundef null, i32 noundef 0, ptr noundef %.0131, i32 noundef %.0, i32 noundef %.0108)
  br label %bb.ax

bb.ax:                                            ; preds = %.split154, %.split
  %phi.call = phi i32 [ %i.ci, %.split ], [ %i.cm, %.split154 ]
  %i.cn = xor i32 %phi.call, 1
  br label %load_config_file.exit

bb.ay:                                            ; preds = %bb.as
  %i.co = icmp ne i32 %.0115, 21
  %i.cp = icmp eq ptr %.0133, null
  %or.cond23 = select i1 %i.co, i1 true, i1 %i.cp
  br i1 %or.cond23, label %.loopexit.a, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.cq = icmp eq ptr %.0129, null                ; 2 uses
  %i.cr = icmp ne ptr %.0139, null                ; 3 uses
  %or.cond11 = select i1 %i.cq, i1 true, i1 %i.cr
  %i.cs = icmp ne ptr %.0137, null                ; 3 uses
  %or.cond13 = select i1 %or.cond11, i1 true, i1 %i.cs
  br i1 %or.cond13, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %.not = xor i1 %i.cr, true
  %.not372 = xor i1 %i.cq, true                   ; 2 uses
  %or.cond15 = or i1 %.not, %.not372
  %or.cond17 = select i1 %or.cond15, i1 true, i1 %i.cs
  br i1 %or.cond17, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %.not373 = xor i1 %i.cs, true
  %or.cond19 = or i1 %.not373, %.not372
  %or.cond21 = select i1 %or.cond19, i1 true, i1 %i.cr
  br i1 %or.cond21, label %.loopexit.a, label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  %.not166 = icmp eq i32 %.0106, 0
  %i.ct = select i1 %.not166, ptr null, ptr %i.d
  %i.cu = call fastcc i32 @verify_command(ptr noundef %.0139, ptr noundef %.0137, ptr noundef %.0129, ptr noundef %.0133, i32 noundef %.0104, ptr noundef %.0119, ptr noundef %.0150, ptr noundef %.0117, ptr noundef %.0148, ptr noundef %i.ct)
  %.not167 = icmp eq i32 %i.cu, 0
  %i.cv = zext i1 %.not167 to i32
  br label %load_config_file.exit

load_config_file.exit:                            ; preds = %bb.ac, %bb.j, %bb.i, %load_config_file.exit.loopexit, %bb.ar, %bb.bc, %bb.ax, %bb.an, %bb.al, %bb.ag, %bb.a, %bb.ak, %.loopexit.a
  %.1153 = phi ptr [ null, %bb.a ], [ %.0152, %.loopexit.a ], [ null, %bb.ag ], [ %2, %bb.an ], [ null, %bb.ak ], [ null, %load_config_file.exit.loopexit ], [ null, %bb.al ], [ %2, %bb.ar ], [ %2, %bb.ax ], [ %2, %bb.bc ], [ null, %bb.i ], [ null, %bb.j ], [ null, %bb.ac ]
  %.0114 = phi i32 [ 1, %bb.a ], [ 1, %.loopexit.a ], [ 1, %bb.ag ], [ 1, %bb.an ], [ 1, %bb.ak ], [ 0, %load_config_file.exit.loopexit ], [ 1, %bb.al ], [ %i.cd, %bb.ar ], [ %i.cn, %bb.ax ], [ %i.cv, %bb.bc ], [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.ac ]
  call void @X509_VERIFY_PARAM_free(ptr noundef %i.d) #6
  %i.cw = load ptr, ptr %i.b, align 8, !tbaa !17
  call void @EVP_MD_free(ptr noundef %i.cw) #6
  call void @NCONF_free(ptr noundef %.1153) #6
  %i.cx = load ptr, ptr %i.a, align 8, !tbaa !15
  call void @CRYPTO_free(ptr noundef %i.cx, ptr noundef nonnull @.str.135, i32 noundef 363) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0114
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @X509_VERIFY_PARAM_new() local_unnamed_addr #2

declare void @opt_set_unknown_name(ptr noundef) local_unnamed_addr #2

declare ptr @opt_init(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @opt_next() local_unnamed_addr #2

declare i32 @BIO_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @opt_help(ptr noundef) local_unnamed_addr #2

declare ptr @opt_arg() local_unnamed_addr #2

declare i32 @opt_rand(i32 noundef) local_unnamed_addr #2

declare i32 @opt_provider(i32 noundef) local_unnamed_addr #2

declare ptr @opt_unknown() local_unnamed_addr #2

declare i32 @opt_verify(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @opt_check_rest_arg(ptr noundef) local_unnamed_addr #2

declare i32 @app_RAND_load() local_unnamed_addr #2

declare i32 @opt_md(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @app_passwd(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BIO_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @load_config_file(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @app_load_config_internal(ptr noundef %0, i32 noundef 0) #6 ; 4 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %17, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @bio_err, align 8, !tbaa !11
  %5 = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %4, ptr noundef nonnull @.str.149, ptr noundef %0) #6 ; 0 uses
  %6 = tail call ptr @app_conf_try_string(ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @.str.150) #6 ; 2 uses
  %.not13 = icmp eq ptr %6, null
  br i1 %.not13, label %13, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @BIO_new_file(ptr noundef nonnull %6, ptr noundef nonnull @.str.151) #6 ; 3 uses
  %.not14 = icmp eq ptr %8, null
  br i1 %.not14, label %9, label %11

9:                                                ; preds = %7
  %10 = load ptr, ptr @bio_err, align 8, !tbaa !11
  tail call void @ERR_print_errors(ptr noundef %10) #6
  br label %13

11:                                               ; preds = %7
  %12 = tail call i32 @OBJ_create_objects(ptr noundef nonnull %8) #6 ; 0 uses
  tail call void @BIO_free_all(ptr noundef nonnull %8) #6
  br label %13

13:                                               ; preds = %9, %11, %3
  %14 = tail call i32 @add_oid_section(ptr noundef nonnull %2) #6
  %.not15 = icmp eq i32 %14, 0
  br i1 %.not15, label %15, label %17

15:                                               ; preds = %13
  %16 = load ptr, ptr @bio_err, align 8, !tbaa !11
  tail call void @ERR_print_errors(ptr noundef %16) #6
  br label %17

17:                                               ; preds = %13, %15, %1
  ret ptr %2
}

declare i32 @app_load_modules(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @query_command(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef range(i32 0, 2) %4, i32 noundef range(i32 0, 2) %5, ptr noundef %6, ptr noundef %7, i32 noundef range(i32 0, 2) %8) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @bio_open_default(ptr noundef nonnull %6, i8 noundef signext 114, i32 noundef 4) #6 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @d2i_TS_REQ_bio(ptr noundef nonnull %i.a, ptr noundef null) #6
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %bb.e, label %.split

.split:                                           ; preds = %bb.d
  %i.e = tail call fastcc ptr @create_query(ptr noundef null, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5)
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = tail call ptr @bio_open_default(ptr noundef %0, i8 noundef signext 114, i32 noundef 4) #6 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.m, label %.split30

.split30:                                         ; preds = %bb.e
  %i.h = tail call fastcc ptr @create_query(ptr noundef nonnull %i.f, ptr noundef null, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5)
  br label %bb.f

bb.f:                                             ; preds = %.split, %.split30, %bb.c
  %.027 = phi ptr [ %i.c, %bb.c ], [ %i.e, %.split ], [ %i.h, %.split30 ] ; 8 uses
  %.025 = phi ptr [ %i.a, %bb.c ], [ null, %.split ], [ null, %.split30 ] ; 6 uses
  %.124 = phi ptr [ null, %bb.c ], [ null, %.split ], [ %i.f, %.split30 ] ; 6 uses
  %i.i = icmp eq ptr %.027, null
  br i1 %i.i, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not41 = icmp eq i32 %8, 0
  br i1 %.not41, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = tail call ptr @bio_open_default(ptr noundef %7, i8 noundef signext 119, i32 noundef 32769) #6 ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = tail call i32 @TS_REQ_print_bio(ptr noundef nonnull %i.j, ptr noundef nonnull %.027) #6
  %.not43 = icmp eq i32 %i.l, 0
  br i1 %.not43, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.m = tail call ptr @bio_open_default(ptr noundef %7, i8 noundef signext 119, i32 noundef 4) #6 ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = tail call i32 @i2d_TS_REQ_bio(ptr noundef nonnull %i.m, ptr noundef nonnull %.027) #6
  %.not42 = icmp eq i32 %i.o, 0
  br i1 %.not42, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.0 = phi ptr [ %i.j, %bb.i ], [ %i.m, %bb.k ]
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.b, %bb.l
  %.029 = phi i32 [ 0, %bb.b ], [ 0, %bb.f ], [ 0, %bb.h ], [ 1, %bb.l ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.e ]
  %.128 = phi ptr [ null, %bb.b ], [ null, %bb.f ], [ %.027, %bb.h ], [ %.027, %bb.l ], [ %.027, %bb.i ], [ %.027, %bb.j ], [ %.027, %bb.k ], [ null, %bb.e ]
  %.126 = phi ptr [ null, %bb.b ], [ %.025, %bb.f ], [ %.025, %bb.h ], [ %.025, %bb.l ], [ %.025, %bb.i ], [ %.025, %bb.j ], [ %.025, %bb.k ], [ null, %bb.e ]
  %.2 = phi ptr [ null, %bb.b ], [ %.124, %bb.f ], [ %.124, %bb.h ], [ %.124, %bb.l ], [ %.124, %bb.i ], [ %.124, %bb.j ], [ %.124, %bb.k ], [ null, %bb.e ]
  %.1 = phi ptr [ null, %bb.b ], [ null, %bb.f ], [ null, %bb.h ], [ %.0, %bb.l ], [ %i.j, %bb.i ], [ null, %bb.j ], [ %i.m, %bb.k ], [ null, %bb.e ]
  %i.p = load ptr, ptr @bio_err, align 8, !tbaa !11
  tail call void @ERR_print_errors(ptr noundef %i.p) #6
  tail call void @BIO_free_all(ptr noundef %.126) #6
  tail call void @BIO_free_all(ptr noundef %.2) #6
  tail call void @BIO_free_all(ptr noundef %.1) #6
  tail call void @TS_REQ_free(ptr noundef %.128) #6
  ret i32 %.029
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @reply_command(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef range(i32 0, 2) %10, ptr noundef %11, i32 noundef range(i32 0, 2) %12, i32 noundef range(i32 0, 2) %13) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %9, null
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @BIO_new_file(ptr noundef nonnull %9, ptr noundef nonnull @.str.157) #6 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.as, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not58 = icmp eq i32 %10, 0
  br i1 %.not58, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call ptr @d2i_PKCS7_bio(ptr noundef nonnull %i.a, ptr noundef null) #6 ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call ptr @PKCS7_to_TS_TST_INFO(ptr noundef nonnull %i.c) #6 ; 6 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = tail call ptr @TS_RESP_new() #6          ; 7 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = tail call ptr @TS_STATUS_INFO_new() #6   ; 6 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = tail call i32 @TS_STATUS_INFO_set_status(ptr noundef nonnull %i.i, i32 noundef 0) #6
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = tail call i32 @TS_RESP_set_status_info(ptr noundef nonnull %i.g, ptr noundef nonnull %i.i) #6
  %.not25.i = icmp eq i32 %i.l, 0
  br i1 %.not25.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @TS_RESP_set_tst_info(ptr noundef nonnull %i.g, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e) #6
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.not26.i = phi i1 [ true, %bb.d ], [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.g ], [ false, %bb.j ], [ true, %bb.i ], [ true, %bb.h ]
  %.015.i = phi ptr [ null, %bb.d ], [ %i.c, %bb.e ], [ %i.c, %bb.f ], [ %i.c, %bb.g ], [ null, %bb.j ], [ %i.c, %bb.i ], [ %i.c, %bb.h ]
  %.014.i = phi ptr [ null, %bb.d ], [ null, %bb.e ], [ %i.e, %bb.f ], [ %i.e, %bb.g ], [ null, %bb.j ], [ %i.e, %bb.i ], [ %i.e, %bb.h ]
  %.013.i = phi ptr [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.f ], [ %i.g, %bb.g ], [ %i.g, %bb.j ], [ %i.g, %bb.i ], [ %i.g, %bb.h ] ; 2 uses
  %.0.i = phi ptr [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.g ], [ %i.i, %bb.j ], [ %i.i, %bb.i ], [ %i.i, %bb.h ]
  tail call void @PKCS7_free(ptr noundef %.015.i) #6
  tail call void @TS_TST_INFO_free(ptr noundef %.014.i) #6
  br i1 %.not26.i, label %bb.l, label %read_PKCS7.exit

bb.l:                                             ; preds = %bb.k
  tail call void @TS_RESP_free(ptr noundef %.013.i) #6
  br label %read_PKCS7.exit

read_PKCS7.exit:                                  ; preds = %bb.k, %bb.l
  %.1.i = phi ptr [ %.013.i, %bb.k ], [ null, %bb.l ]
  tail call void @TS_STATUS_INFO_free(ptr noundef %.0.i) #6
  br label %bb.ah

bb.m:                                             ; preds = %bb.c
  %i.m = tail call ptr @d2i_TS_RESP_bio(ptr noundef nonnull %i.a, ptr noundef null) #6
  br label %bb.ah

bb.n:                                             ; preds = %bb.a
  %i.n = tail call ptr @BIO_new_file(ptr noundef %2, ptr noundef nonnull @.str.157) #6 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.p = tail call ptr @TS_CONF_get_tsa_section(ptr noundef nonnull %0, ptr noundef %1) #6 ; 15 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.r = tail call ptr @TS_RESP_CTX_new() #6      ; 34 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.t = tail call i32 @TS_CONF_set_serial(ptr noundef nonnull %0, ptr noundef nonnull %i.p, ptr noundef nonnull @serial_cb, ptr noundef nonnull %i.r) #6
  %.not.i67 = icmp eq i32 %i.t, 0
  br i1 %.not.i67, label %.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.u = tail call i32 @TS_CONF_set_signer_cert(ptr noundef nonnull %0, ptr noundef nonnull %i.p, ptr noundef %6, ptr noundef nonnull %i.r) #6
  %.not68.i = icmp eq i32 %i.u, 0
  br i1 %.not68.i, label %.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.v = tail call i32 @TS_CONF_set_certs(ptr noundef nonnull %0, ptr noundef nonnull %i.p, ptr noundef %7, ptr noundef nonnull %i.r) #6
  %.not69.i = icmp eq i32 %i.v, 0
  br i1 %.not69.i, label %.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.w = tail call i32 @TS_CONF_set_signer_key(ptr noundef nonnull %0, ptr noundef nonnull %i.p, ptr noundef %4, ptr noundef %3, ptr noundef nonnull %i.r) #6
  %.not70.i = icmp eq i32 %i.w, 0
  br i1 %.not70.i, label %.thread.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not71.i = icmp eq ptr %5, null
  br i1 %.not71.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.x = tail call i32 @TS_RESP_CTX_set_signer_digest(ptr noundef nonnull %i.r, ptr noundef nonnull %5) #6
  %.not73.i = icmp eq i32 %i.x, 0
  br i1 %.not73.i, label %.thread.i, label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.y = tail call i32 @TS_CONF_set_signer_digest(ptr noundef nonnull %0, ptr noundef nonnull %i.p, ptr noundef null, ptr noundef nonnull %i.r) #6
  %.not72.i = icmp eq i32 %i.y, 0
  br i1 %.not72.i, label %.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.z = tail call i32 @TS_CONF_set_ess_cert_id_digest(ptr noundef nonnull %0, ptr noundef nonnull %i.p, ptr noundef nonnull %i.r) #6
  %.not74.i = icmp eq i32 %i.z, 0
  br i1 %.not74.i, label %.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aa = tail call i32 @TS_CONF_set_def_policy(ptr noundef nonnull %0, ptr noundef nonnull %i.p, ptr noundef %8, ptr noundef nonnull %i.r) #6
  %.not75.i = icmp eq i32 %i.aa, 0
  br i1 %.not75.i, label %.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ab = tail call i32 @TS_CONF_set_policies(ptr noundef nonnull %0, ptr noundef nonnull %i.p, ptr noundef nonnull %i.r) #6
  %.not76.i = icmp eq i32 %i.ab, 0
  br i1 %.not76.i, label %.thread.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ac = tail call i32 @TS_CONF_set_digests(ptr noundef nonnull %0, ptr noundef nonnull %i.p, ptr noundef nonnull %i.r) #6
  %.not77.i = icmp eq i32 %i.ac, 0
  br i1 %.not77.i, label %.thread.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ad = tail call i32 @TS_CONF_set_accuracy(ptr noundef nonnull %0, ptr noundef nonnull %i.p, ptr noundef nonnull %i.r) #6
  %.not78.i = icmp eq i32 %i.ad, 0
  br i1 %.not78.i, label %.thread.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ae = tail call i32 @TS_CONF_set_clock_precision_digits(ptr noundef nonnull %0, ptr noundef nonnull %i.p, ptr noundef nonnull %i.r) #6
  %.not79.i = icmp eq i32 %i.ae, 0
  br i1 %.not79.i, label %.thread.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.af = tail call i32 @TS_CONF_set_ordering(ptr noundef nonnull %0, ptr noundef nonnull %i.p, ptr noundef nonnull %i.r) #6
  %.not80.i = icmp eq i32 %i.af, 0
  br i1 %.not80.i, label %.thread.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ag = tail call i32 @TS_CONF_set_tsa_name(ptr noundef nonnull %0, ptr noundef nonnull %i.p, ptr noundef nonnull %i.r) #6
  %.not81.i = icmp eq i32 %i.ag, 0
  br i1 %.not81.i, label %.thread.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ah = tail call i32 @TS_CONF_set_ess_cert_id_chain(ptr noundef nonnull %0, ptr noundef nonnull %i.p, ptr noundef nonnull %i.r) #6
  %.not82.i = icmp eq i32 %i.ah, 0
  br i1 %.not82.i, label %.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ai = tail call ptr @TS_RESP_create_response(ptr noundef nonnull %i.r, ptr noundef nonnull %i.n) #6 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %.thread.i, label %create_response.exit

.thread.i:                                        ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %.090.i = phi ptr [ %i.r, %bb.ag ], [ %i.r, %bb.r ], [ %i.r, %bb.s ], [ %i.r, %bb.t ], [ %i.r, %bb.w ], [ %i.r, %bb.v ], [ %i.r, %bb.x ], [ %i.r, %bb.y ], [ %i.r, %bb.z ], [ %i.r, %bb.aa ], [ %i.r, %bb.ab ], [ %i.r, %bb.ac ], [ %i.r, %bb.ad ], [ %i.r, %bb.ae ], [ %i.r, %bb.af ], [ %i.r, %bb.q ], [ null, %bb.p ], [ null, %bb.o ], [ null, %bb.n ]
  tail call void @TS_RESP_free(ptr noundef null) #6
  br label %create_response.exit

create_response.exit:                             ; preds = %bb.ag, %.thread.i
  %.089.i = phi ptr [ %i.r, %bb.ag ], [ %.090.i, %.thread.i ]
  %.1.i68 = phi ptr [ %i.ai, %bb.ag ], [ null, %.thread.i ] ; 2 uses
  tail call void @TS_RESP_CTX_free(ptr noundef %.089.i) #6
  tail call void @BIO_free_all(ptr noundef %i.n) #6
  %.not57 = icmp eq ptr %.1.i68, null
  %i.ak = load ptr, ptr @bio_err, align 8, !tbaa !11 ; 2 uses
  br i1 %.not57, label %.thread, label %.thread71

.thread71:                                        ; preds = %create_response.exit
  %i.al = tail call i32 @BIO_puts(ptr noundef %i.ak, ptr noundef nonnull @.str.158) #6 ; 0 uses
  br label %bb.ai

.thread:                                          ; preds = %create_response.exit
  %i.am = tail call i32 @BIO_puts(ptr noundef %i.ak, ptr noundef nonnull @.str.159) #6 ; 0 uses
  br label %bb.as

bb.ah:                                            ; preds = %read_PKCS7.exit, %bb.m
  %.044 = phi ptr [ %.1.i, %read_PKCS7.exit ], [ %i.m, %bb.m ] ; 2 uses
  %i.an = icmp eq ptr %.044, null
  br i1 %i.an, label %bb.as, label %bb.ai

bb.ai:                                            ; preds = %.thread71, %bb.ah
  %.04275 = phi ptr [ null, %.thread71 ], [ %i.a, %bb.ah ] ; 7 uses
  %.04474 = phi ptr [ %.1.i68, %.thread71 ], [ %.044, %bb.ah ] ; 11 uses
  %.not59 = icmp eq i32 %13, 0
  br i1 %.not59, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ao = tail call ptr @bio_open_default(ptr noundef %11, i8 noundef signext 119, i32 noundef 32769) #6 ; 7 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.as, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not63 = icmp eq i32 %12, 0
  br i1 %.not63, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.aq = tail call ptr @TS_RESP_get_tst_info(ptr noundef nonnull %.04474) #6
  %i.ar = tail call i32 @TS_TST_INFO_print_bio(ptr noundef nonnull %i.ao, ptr noundef %i.aq) #6
  %.not65 = icmp eq i32 %i.ar, 0
  br i1 %.not65, label %bb.as, label %bb.ar

bb.am:                                            ; preds = %bb.ak
  %i.as = tail call i32 @TS_RESP_print_bio(ptr noundef nonnull %i.ao, ptr noundef nonnull %.04474) #6
  %.not64 = icmp eq i32 %i.as, 0
  br i1 %.not64, label %bb.as, label %bb.ar

bb.an:                                            ; preds = %bb.ai
  %i.at = tail call ptr @bio_open_default(ptr noundef %11, i8 noundef signext 119, i32 noundef 4) #6 ; 7 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.not60 = icmp eq i32 %12, 0
  br i1 %.not60, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.av = tail call ptr @TS_RESP_get_token(ptr noundef nonnull %.04474) #6
  %i.aw = tail call i32 @i2d_PKCS7_bio(ptr noundef nonnull %i.at, ptr noundef %i.av) #6
  %.not62 = icmp eq i32 %i.aw, 0
  br i1 %.not62, label %bb.as, label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.ax = tail call i32 @i2d_TS_RESP_bio(ptr noundef nonnull %i.at, ptr noundef nonnull %.04474) #6
  %.not61 = icmp eq i32 %i.ax, 0
  br i1 %.not61, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.al, %bb.aq, %bb.am
  %.040 = phi ptr [ %i.ao, %bb.al ], [ %i.ao, %bb.am ], [ %i.at, %bb.ap ], [ %i.at, %bb.aq ]
  br label %bb.as

bb.as:                                            ; preds = %.thread, %bb.ap, %bb.al, %bb.aq, %bb.an, %bb.am, %bb.aj, %bb.ah, %bb.b, %bb.ar
  %.046 = phi i32 [ 0, %bb.b ], [ 0, %bb.ah ], [ 0, %bb.aj ], [ 1, %bb.ar ], [ 0, %bb.al ], [ 0, %bb.am ], [ 0, %bb.an ], [ 0, %bb.ap ], [ 0, %bb.aq ], [ 0, %.thread ]
  %.145 = phi ptr [ null, %bb.b ], [ null, %bb.ah ], [ %.04474, %bb.aj ], [ %.04474, %bb.ar ], [ %.04474, %bb.al ], [ %.04474, %bb.am ], [ %.04474, %bb.an ], [ %.04474, %bb.ap ], [ %.04474, %bb.aq ], [ null, %.thread ]
  %.143 = phi ptr [ null, %bb.b ], [ %i.a, %bb.ah ], [ %.04275, %bb.aj ], [ %.04275, %bb.ar ], [ %.04275, %bb.al ], [ %.04275, %bb.am ], [ %.04275, %bb.an ], [ %.04275, %bb.ap ], [ %.04275, %bb.aq ], [ null, %.thread ]
  %.141 = phi ptr [ null, %bb.b ], [ null, %bb.ah ], [ null, %bb.aj ], [ %.040, %bb.ar ], [ %i.ao, %bb.al ], [ %i.ao, %bb.am ], [ null, %bb.an ], [ %i.at, %bb.ap ], [ %i.at, %bb.aq ], [ null, %.thread ]
  %i.ay = load ptr, ptr @bio_err, align 8, !tbaa !11
  tail call void @ERR_print_errors(ptr noundef %i.ay) #6
  tail call void @BIO_free_all(ptr noundef %.143) #6
  tail call void @BIO_free_all(ptr noundef null) #6
  tail call void @BIO_free_all(ptr noundef null) #6
  tail call void @BIO_free_all(ptr noundef null) #6
  tail call void @BIO_free_all(ptr noundef %.141) #6
  tail call void @TS_RESP_free(ptr noundef %.145) #6
  ret i32 %.046
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @verify_command(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef range(i32 0, 2) %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = tail call ptr @BIO_new_file(ptr noundef nonnull %3, ptr noundef nonnull @.str.157) #6 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %4, 0                       ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @d2i_PKCS7_bio(ptr noundef nonnull %i.b, ptr noundef null) #6 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.thread, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.f = tail call ptr @d2i_TS_RESP_bio(ptr noundef nonnull %i.b, ptr noundef null) #6 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.024 = phi ptr [ %i.d, %bb.c ], [ null, %bb.d ] ; 5 uses
  %.023 = phi ptr [ null, %bb.c ], [ %i.f, %bb.d ] ; 5 uses
  %i.h = icmp ne ptr %0, null                     ; 2 uses
  %i.i = icmp ne ptr %1, null                     ; 2 uses
  %or.cond.i = or i1 %i.h, %i.i
  br i1 %or.cond.i, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @TS_VERIFY_CTX_new() #6    ; 9 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.h, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.l = tail call ptr @BIO_new_file(ptr noundef nonnull %0, ptr noundef nonnull @.str.157) #6 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = tail call i32 @TS_VERIFY_CTX_set0_data(ptr noundef nonnull %i.j, ptr noundef nonnull %i.l) #6
  %.not62.i = icmp eq i32 %i.n, 0
  br i1 %.not62.i, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  tail call void @BIO_free_all(ptr noundef nonnull %i.l) #6
  br label %.thread.i

bb.k:                                             ; preds = %bb.g
  br i1 %i.i, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.o = call ptr @OPENSSL_hexstr2buf(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #6
  %i.p = load i64, ptr %i.a, align 8, !tbaa !19
  %i.q = call i32 @TS_VERIFY_CTX_set0_imprint(ptr noundef nonnull %i.j, ptr noundef %i.o, i64 noundef %i.p) #6
  %.not61.i = icmp eq i32 %i.q, 0
  br i1 %.not61.i, label %bb.m, label %.thread69.i

.thread69.i:                                      ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.r = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.s = call i32 @BIO_puts(ptr noundef %i.r, ptr noundef nonnull @.str.169) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %.thread.i

bb.n:                                             ; preds = %bb.e
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.t = tail call ptr @BIO_new_file(ptr noundef nonnull %2, ptr noundef nonnull @.str.157) #6 ; 5 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.v = tail call ptr @d2i_TS_REQ_bio(ptr noundef nonnull %i.t, ptr noundef null) #6 ; 4 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.x = tail call ptr @TS_REQ_to_TS_VERIFY_CTX(ptr noundef nonnull %i.v, ptr noundef null) #6 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread69.i, %bb.k, %bb.i
  %.044.i = phi ptr [ %i.x, %bb.q ], [ %i.j, %.thread69.i ], [ %i.j, %bb.k ], [ %i.j, %bb.i ] ; 8 uses
  %.042.i = phi ptr [ %i.t, %bb.q ], [ null, %.thread69.i ], [ null, %bb.k ], [ null, %bb.i ] ; 5 uses
  %.040.i = phi ptr [ %i.v, %bb.q ], [ null, %.thread69.i ], [ null, %bb.k ], [ null, %bb.i ] ; 5 uses
  %.038.i = phi i32 [ 1, %bb.q ], [ 75, %.thread69.i ], [ 67, %bb.k ], [ 83, %bb.i ]
  %i.z = call i32 @TS_VERIFY_CTX_add_flags(ptr noundef nonnull %.044.i, i32 noundef %.038.i) #6 ; 0 uses
  %i.aa = call ptr @app_get0_libctx() #6          ; 2 uses
  %i.ab = call ptr @app_get0_propq() #6           ; 2 uses
  %i.ac = call ptr @X509_STORE_new() #6           ; 9 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ae = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.af = call i32 @BIO_puts(ptr noundef %i.ae, ptr noundef nonnull @.str.171) #6 ; 0 uses
  br label %create_cert_store.exit.i

bb.t:                                             ; preds = %bb.r
  call void @X509_STORE_set_verify_cb(ptr noundef nonnull %i.ac, ptr noundef nonnull @verify_cb) #6
  %.not.i.i = icmp eq ptr %5, null
  br i1 %.not.i.i, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ag = call ptr @X509_LOOKUP_hash_dir() #6
  %i.ah = call ptr @X509_STORE_add_lookup(ptr noundef nonnull %i.ac, ptr noundef %i.ag) #6 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.aj = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.ak = call i32 @BIO_puts(ptr noundef %i.aj, ptr noundef nonnull @.str.171) #6 ; 0 uses
  br label %bb.ak

bb.w:                                             ; preds = %bb.u
  %i.al = call i32 @X509_LOOKUP_ctrl(ptr noundef nonnull %i.ah, i32 noundef 2, ptr noundef nonnull %5, i64 noundef 1, ptr noundef null) #6
  %i.am = icmp slt i32 %i.al, 1
  br i1 %i.am, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.an = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.ao = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.an, ptr noundef nonnull @.str.172, ptr noundef nonnull %5) #6 ; 0 uses
  br label %bb.ak

bb.y:                                             ; preds = %bb.w, %bb.t
  %.not38.i.i = icmp eq ptr %6, null
  br i1 %.not38.i.i, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ap = call ptr @X509_LOOKUP_file() #6
  %i.aq = call ptr @X509_STORE_add_lookup(ptr noundef nonnull %i.ac, ptr noundef %i.ap) #6 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.as = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.at = call i32 @BIO_puts(ptr noundef %i.as, ptr noundef nonnull @.str.171) #6 ; 0 uses
  br label %bb.ak

bb.ab:                                            ; preds = %bb.z
  %i.au = call i32 @X509_LOOKUP_ctrl_ex(ptr noundef nonnull %i.aq, i32 noundef 1, ptr noundef nonnull %6, i64 noundef 1, ptr noundef null, ptr noundef %i.aa, ptr noundef %i.ab) #6
  %i.av = icmp slt i32 %i.au, 1
  br i1 %i.av, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.aw = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.ax = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.aw, ptr noundef nonnull @.str.173, ptr noundef nonnull %6) #6 ; 0 uses
  br label %bb.ak

bb.ad:                                            ; preds = %bb.ab, %bb.y
  %.not39.i.i = icmp eq ptr %7, null
  br i1 %.not39.i.i, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ay = call ptr @X509_LOOKUP_store() #6
  %i.az = call ptr @X509_STORE_add_lookup(ptr noundef nonnull %i.ac, ptr noundef %i.ay) #6 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bb = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.bc = call i32 @BIO_puts(ptr noundef %i.bb, ptr noundef nonnull @.str.171) #6 ; 0 uses
  br label %bb.ak

bb.ag:                                            ; preds = %bb.ae
  %i.bd = call i32 @X509_LOOKUP_ctrl_ex(ptr noundef nonnull %i.az, i32 noundef 3, ptr noundef nonnull %7, i64 noundef 0, ptr noundef null, ptr noundef %i.aa, ptr noundef %i.ab) #6
  %i.be = icmp slt i32 %i.bd, 1
  br i1 %i.be, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.bf = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.bg = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.bf, ptr noundef nonnull @.str.174, ptr noundef nonnull %7) #6 ; 0 uses
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag, %bb.ad
  %.not40.i.i = icmp eq ptr %9, null
  br i1 %.not40.i.i, label %create_cert_store.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bh = call i32 @X509_STORE_set1_param(ptr noundef nonnull %i.ac, ptr noundef nonnull %9) #6 ; 0 uses
  br label %create_cert_store.exit.i

bb.ak:                                            ; preds = %bb.ah, %bb.af, %bb.ac, %bb.aa, %bb.x, %bb.v
  call void @X509_STORE_free(ptr noundef nonnull %i.ac) #6
  br label %create_cert_store.exit.i

create_cert_store.exit.i:                         ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.s
  %.0.i.i = phi ptr [ null, %bb.s ], [ null, %bb.ak ], [ %i.ac, %bb.aj ], [ %i.ac, %bb.ai ]
  %i.bi = call i32 @TS_VERIFY_CTX_set0_store(ptr noundef nonnull %.044.i, ptr noundef %.0.i.i) #6
  %.not63.i = icmp eq i32 %i.bi, 0
  br i1 %.not63.i, label %.thread.i, label %bb.al

bb.al:                                            ; preds = %create_cert_store.exit.i
  %.not64.i = icmp eq ptr %8, null
  br i1 %.not64.i, label %create_verify_ctx.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bj = call ptr @load_certs_multifile(ptr noundef nonnull %8, ptr noundef null, ptr noundef nonnull @.str.170, ptr noundef %9) #6 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %.thread.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bl = call i32 @TS_VERIFY_CTX_set0_certs(ptr noundef nonnull %.044.i, ptr noundef nonnull %i.bj) #6
  %.not65.i = icmp eq i32 %i.bl, 0
  br i1 %.not65.i, label %.thread.i, label %create_verify_ctx.exit

.thread.i:                                        ; preds = %bb.an, %bb.am, %create_cert_store.exit.i, %bb.q, %bb.p, %bb.o, %bb.m, %bb.j, %bb.h, %bb.f
  %.145.ph.i = phi ptr [ null, %bb.q ], [ null, %bb.p ], [ null, %bb.o ], [ %i.j, %bb.m ], [ null, %bb.f ], [ %.044.i, %create_cert_store.exit.i ], [ %.044.i, %bb.an ], [ %.044.i, %bb.am ], [ %i.j, %bb.j ], [ %i.j, %bb.h ]
  %.143.ph.i = phi ptr [ %i.t, %bb.q ], [ %i.t, %bb.p ], [ null, %bb.o ], [ null, %bb.m ], [ null, %bb.f ], [ %.042.i, %create_cert_store.exit.i ], [ %.042.i, %bb.an ], [ %.042.i, %bb.am ], [ null, %bb.j ], [ null, %bb.h ]
  %.141.ph.i = phi ptr [ %i.v, %bb.q ], [ null, %bb.p ], [ null, %bb.o ], [ null, %bb.m ], [ null, %bb.f ], [ %.040.i, %create_cert_store.exit.i ], [ %.040.i, %bb.an ], [ %.040.i, %bb.am ], [ null, %bb.j ], [ null, %bb.h ]
  call void @TS_VERIFY_CTX_free(ptr noundef %.145.ph.i) #6
  br label %create_verify_ctx.exit

create_verify_ctx.exit:                           ; preds = %bb.al, %bb.an, %.thread.i
  %.14180.i = phi ptr [ %.141.ph.i, %.thread.i ], [ %.040.i, %bb.al ], [ %.040.i, %bb.an ]
  %.14378.i = phi ptr [ %.143.ph.i, %.thread.i ], [ %.042.i, %bb.al ], [ %.042.i, %bb.an ]
  %.2.i = phi ptr [ null, %.thread.i ], [ %.044.i, %bb.al ], [ %.044.i, %bb.an ] ; 5 uses
  call void @BIO_free_all(ptr noundef %.14378.i) #6
  call void @TS_REQ_free(ptr noundef %.14180.i) #6
  %i.bm = icmp eq ptr %.2.i, null
  br i1 %i.bm, label %.thread, label %bb.ao

bb.ao:                                            ; preds = %create_verify_ctx.exit
  br i1 %.not, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bn = call i32 @TS_RESP_verify_token(ptr noundef nonnull %.2.i, ptr noundef %.024) #6
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.bo = call i32 @TS_RESP_verify_response(ptr noundef nonnull %.2.i, ptr noundef %.023) #6
  br label %bb.ar

.thread:                                          ; preds = %bb.a, %bb.c, %create_verify_ctx.exit, %bb.d, %bb.n
  %.125.ph = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ %.024, %create_verify_ctx.exit ], [ null, %bb.c ], [ %.024, %bb.n ]
  %.1.ph = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ %.023, %create_verify_ctx.exit ], [ null, %bb.c ], [ %.023, %bb.n ]
  %i.bp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.166) ; 0 uses
  br label %bb.at

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %.0 = phi i32 [ %i.bn, %bb.ap ], [ %i.bo, %bb.aq ] ; 2 uses
  %i.bq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.166) ; 0 uses
  %.not33 = icmp eq i32 %.0, 0
  br i1 %.not33, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %puts34 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.au

bb.at:                                            ; preds = %.thread, %bb.ar
  %.02246 = phi ptr [ null, %.thread ], [ %.2.i, %bb.ar ]
  %.144 = phi ptr [ %.1.ph, %.thread ], [ %.023, %bb.ar ]
  %.12542 = phi ptr [ %.125.ph, %.thread ], [ %.024, %bb.ar ]
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.br = load ptr, ptr @bio_err, align 8, !tbaa !11
  call void @ERR_print_errors(ptr noundef %i.br) #6
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.047 = phi i32 [ 0, %bb.at ], [ %.0, %bb.as ]
  %.02245 = phi ptr [ %.02246, %bb.at ], [ %.2.i, %bb.as ]
  %.143 = phi ptr [ %.144, %bb.at ], [ %.023, %bb.as ]
  %.12541 = phi ptr [ %.12542, %bb.at ], [ %.024, %bb.as ]
  call void @BIO_free_all(ptr noundef %i.b) #6
  call void @PKCS7_free(ptr noundef %.12541) #6
  call void @TS_RESP_free(ptr noundef %.143) #6
  call void @TS_VERIFY_CTX_free(ptr noundef %.02245) #6
  ret i32 %.047
}

declare void @X509_VERIFY_PARAM_free(ptr noundef) local_unnamed_addr #2

declare void @EVP_MD_free(ptr noundef) local_unnamed_addr #2

declare void @NCONF_free(ptr noundef) local_unnamed_addr #2

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @app_load_config_internal(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @app_conf_try_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BIO_new_file(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_print_errors(ptr noundef) local_unnamed_addr #2

declare i32 @OBJ_create_objects(ptr noundef) local_unnamed_addr #2

declare void @BIO_free_all(ptr noundef) local_unnamed_addr #2

declare i32 @add_oid_section(ptr noundef) local_unnamed_addr #2

declare ptr @bio_open_default(ptr noundef, i8 noundef signext, i32 noundef) local_unnamed_addr #2

declare ptr @d2i_TS_REQ_bio(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @create_query(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef range(i32 0, 2) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = tail call ptr @TS_REQ_new() #6           ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.thread81, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @TS_REQ_set_version(ptr noundef nonnull %i.c, i64 noundef 1) #6
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.thread81, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @TS_MSG_IMPRINT_new() #6   ; 19 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.thread81, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @X509_ALGOR_new() #6       ; 18 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.thread81, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @EVP_MD_get_type(ptr noundef %2) #6
  %i.k = tail call ptr @OBJ_nid2obj(i32 noundef %i.j) #6 ; 2 uses
  store ptr %i.k, ptr %i.h, align 8, !tbaa !24
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.thread81, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @ASN1_TYPE_new() #6        ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !25
  %i.o = icmp eq ptr %i.m, null
  br i1 %i.o, label %.thread81, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 5, ptr %i.m, align 8, !tbaa !27
  %i.p = tail call i32 @TS_MSG_IMPRINT_set_algo(ptr noundef nonnull %i.f, ptr noundef nonnull %i.h) #6
  %.not49 = icmp eq i32 %i.p, 0
  br i1 %.not49, label %.thread81, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = tail call i32 @EVP_MD_get_size(ptr noundef %2) #6 ; 5 uses
  %i.r = icmp slt i32 %i.q, 1
  br i1 %i.r, label %.thread81, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.s = tail call ptr @EVP_MD_CTX_new() #6       ; 7 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.thread46.i, label %bb.k

.thread46.i:                                      ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %.thread81

bb.k:                                             ; preds = %bb.j
  %i.u = zext nneg i32 %i.q to i64
  %i.v = tail call ptr @app_malloc(i64 noundef %i.u, ptr noundef nonnull @.str.153) #6 ; 4 uses
  %i.w = tail call i32 @EVP_DigestInit(ptr noundef nonnull %i.s, ptr noundef %2) #6
  %.not40.i = icmp eq i32 %i.w, 0
  br i1 %.not40.i, label %.thread.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.k, %bb.l
  %i.x = call i32 @BIO_read(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 4096) #6 ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.preheader.i
  %i.z = zext nneg i32 %i.x to i64
  %i.aa = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.s, ptr noundef nonnull %i.a, i64 noundef %i.z) #6
  %.not42.i = icmp eq i32 %i.aa, 0
  br i1 %.not42.i, label %.thread.i, label %.preheader.i, !llvm.loop !20

bb.m:                                             ; preds = %.preheader.i
  %i.ab = call i32 @EVP_DigestFinal(ptr noundef nonnull %i.s, ptr noundef %i.v, ptr noundef null) #6
  %.not41.i = icmp eq i32 %i.ab, 0
  br i1 %.not41.i, label %.thread.i, label %bb.p

.thread.i:                                        ; preds = %bb.l, %bb.m, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %create_digest.exit

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.ac = call ptr @OPENSSL_hexstr2buf(ptr noundef %1, ptr noundef nonnull %i.b) #6 ; 3 uses
  %i.ad = icmp ne ptr %i.ac, null
  %i.ae = zext nneg i32 %i.q to i64
  %i.af = load i64, ptr %i.b, align 8
  %.not39.i = icmp eq i64 %i.af, %i.ae
  %or.cond.i = select i1 %i.ad, i1 %.not39.i, i1 false
  br i1 %or.cond.i, label %.thread57.i, label %bb.o

.thread57.i:                                      ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ag = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.ah = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ag, ptr noundef nonnull @.str.154, i32 noundef %i.q) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %create_digest.exit

bb.p:                                             ; preds = %bb.m
  %i.ai = call i32 @EVP_MD_get_size(ptr noundef %2) #6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.aj = icmp slt i32 %i.ai, 1
  br i1 %i.aj, label %create_digest.exit, label %bb.q

create_digest.exit:                               ; preds = %.thread.i, %bb.o, %bb.p
  %.2 = phi ptr [ %i.ac, %bb.o ], [ %i.v, %.thread.i ], [ %i.v, %bb.p ]
  %.12856.i = phi ptr [ null, %bb.o ], [ %i.s, %.thread.i ], [ %i.s, %bb.p ]
  call void @CRYPTO_free(ptr noundef %.2, ptr noundef nonnull @.str.135, i32 noundef 559) #6
  call void @EVP_MD_CTX_free(ptr noundef %.12856.i) #6
  br label %.thread81

bb.q:                                             ; preds = %bb.p, %.thread57.i
  %.164.ph = phi ptr [ %i.v, %bb.p ], [ %i.ac, %.thread57.i ] ; 9 uses
  %.12855.i.ph = phi ptr [ %i.s, %bb.p ], [ null, %.thread57.i ]
  %.130.i.ph = phi i32 [ %i.ai, %bb.p ], [ %i.q, %.thread57.i ]
  call void @EVP_MD_CTX_free(ptr noundef %.12855.i.ph) #6
  %i.ak = call i32 @TS_MSG_IMPRINT_set_msg(ptr noundef nonnull %i.f, ptr noundef %.164.ph, i32 noundef %.130.i.ph) #6
  %.not50 = icmp eq i32 %i.ak, 0
  br i1 %.not50, label %.thread81, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.al = call i32 @TS_REQ_set_msg_imprint(ptr noundef nonnull %i.c, ptr noundef nonnull %i.f) #6
  %.not51 = icmp eq i32 %i.al, 0
  br i1 %.not51, label %.thread81, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not52 = icmp eq ptr %3, null
  br i1 %.not52, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.am = call fastcc ptr @txt2obj(ptr noundef %3) ; 4 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %.thread81, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ao = call i32 @TS_REQ_set_policy_id(ptr noundef nonnull %i.c, ptr noundef nonnull %i.am) #6
  %.not54 = icmp eq i32 %i.ao, 0
  br i1 %.not54, label %.thread81, label %.thread

.thread:                                          ; preds = %bb.s, %bb.u
  %.03176 = phi ptr [ %i.am, %bb.u ], [ null, %bb.s ] ; 4 uses
  %.not55 = icmp eq i32 %4, 0
  br i1 %.not55, label %bb.v, label %.thread77

bb.v:                                             ; preds = %.thread
  %i.ap = call fastcc ptr @create_nonce()         ; 4 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %.thread81, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = call i32 @TS_REQ_set_nonce(ptr noundef nonnull %i.c, ptr noundef nonnull %i.ap) #6
  %.not57 = icmp eq i32 %i.ar, 0
  br i1 %.not57, label %.thread81, label %.thread77

.thread77:                                        ; preds = %.thread, %bb.w
  %.080 = phi ptr [ %i.ap, %bb.w ], [ null, %.thread ] ; 2 uses
  %i.as = call i32 @TS_REQ_set_cert_req(ptr noundef nonnull %i.c, i32 noundef %5) #6
  %.not58 = icmp eq i32 %i.as, 0
  br i1 %.not58, label %.thread81, label %bb.x

.thread81:                                        ; preds = %.thread46.i, %bb.h, %bb.g, %bb.q, %bb.r, %bb.u, %bb.v, %bb.w, %bb.b, %bb.t, %create_digest.exit, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a, %.thread77
  %.197 = phi ptr [ %.080, %.thread77 ], [ null, %bb.a ], [ null, %bb.g ], [ null, %bb.q ], [ null, %bb.r ], [ null, %bb.u ], [ null, %bb.v ], [ %i.ap, %bb.w ], [ null, %bb.b ], [ null, %bb.t ], [ null, %create_digest.exit ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.h ], [ null, %.thread46.i ]
  %.13295 = phi ptr [ %.03176, %.thread77 ], [ null, %bb.a ], [ null, %bb.g ], [ null, %bb.q ], [ null, %bb.r ], [ %i.am, %bb.u ], [ %.03176, %bb.v ], [ %.03176, %bb.w ], [ null, %bb.b ], [ null, %bb.t ], [ null, %create_digest.exit ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.h ], [ null, %.thread46.i ]
  %.03393 = phi ptr [ %i.h, %.thread77 ], [ null, %bb.a ], [ %i.h, %bb.g ], [ %i.h, %bb.q ], [ %i.h, %bb.r ], [ %i.h, %bb.u ], [ %i.h, %bb.v ], [ %i.h, %bb.w ], [ null, %bb.b ], [ %i.h, %bb.t ], [ %i.h, %create_digest.exit ], [ %i.h, %bb.f ], [ %i.h, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ %i.h, %bb.h ], [ %i.h, %.thread46.i ]
  %.03491 = phi ptr [ %i.f, %.thread77 ], [ null, %bb.a ], [ %i.f, %bb.g ], [ %i.f, %bb.q ], [ %i.f, %bb.r ], [ %i.f, %bb.u ], [ %i.f, %bb.v ], [ %i.f, %bb.w ], [ null, %bb.b ], [ %i.f, %bb.t ], [ %i.f, %create_digest.exit ], [ %i.f, %bb.f ], [ %i.f, %bb.e ], [ %i.f, %bb.d ], [ null, %bb.c ], [ %i.f, %bb.h ], [ %i.f, %.thread46.i ]
  %.06389 = phi ptr [ %.164.ph, %.thread77 ], [ null, %bb.a ], [ null, %bb.g ], [ %.164.ph, %bb.q ], [ %.164.ph, %bb.r ], [ %.164.ph, %bb.u ], [ %.164.ph, %bb.v ], [ %.164.ph, %bb.w ], [ null, %bb.b ], [ %.164.ph, %bb.t ], [ null, %create_digest.exit ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.h ], [ null, %.thread46.i ]
  call void @TS_REQ_free(ptr noundef %i.c) #6
  %i.at = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.au = call i32 @BIO_puts(ptr noundef %i.at, ptr noundef nonnull @.str.152) #6 ; 0 uses
  %i.av = load ptr, ptr @bio_err, align 8, !tbaa !11
  call void @ERR_print_errors(ptr noundef %i.av) #6
  br label %bb.x

bb.x:                                             ; preds = %.thread81, %.thread77
  %.196 = phi ptr [ %.080, %.thread77 ], [ %.197, %.thread81 ]
  %.13294 = phi ptr [ %.03176, %.thread77 ], [ %.13295, %.thread81 ]
  %.03392 = phi ptr [ %i.h, %.thread77 ], [ %.03393, %.thread81 ]
  %.03490 = phi ptr [ %i.f, %.thread77 ], [ %.03491, %.thread81 ]
  %.06388 = phi ptr [ %.164.ph, %.thread77 ], [ %.06389, %.thread81 ]
  %.035 = phi ptr [ %i.c, %.thread77 ], [ null, %.thread81 ]
  call void @TS_MSG_IMPRINT_free(ptr noundef %.03490) #6
  call void @X509_ALGOR_free(ptr noundef %.03392) #6
  call void @CRYPTO_free(ptr noundef %.06388, ptr noundef nonnull @.str.135, i32 noundef 511) #6
  call void @ASN1_OBJECT_free(ptr noundef %.13294) #6
  call void @ASN1_INTEGER_free(ptr noundef %.196) #6
  ret ptr %.035
}

declare i32 @TS_REQ_print_bio(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @i2d_TS_REQ_bio(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @TS_REQ_free(ptr noundef) local_unnamed_addr #2

declare ptr @TS_REQ_new() local_unnamed_addr #2

declare i32 @TS_REQ_set_version(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @TS_MSG_IMPRINT_new() local_unnamed_addr #2

declare ptr @X509_ALGOR_new() local_unnamed_addr #2

declare ptr @OBJ_nid2obj(i32 noundef) local_unnamed_addr #2

declare i32 @EVP_MD_get_type(ptr noundef) local_unnamed_addr #2

declare ptr @ASN1_TYPE_new() local_unnamed_addr #2

declare i32 @TS_MSG_IMPRINT_set_algo(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @TS_MSG_IMPRINT_set_msg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @TS_REQ_set_msg_imprint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @txt2obj(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @OBJ_txt2obj(ptr noundef nonnull %0, i32 noundef 0) #6 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.d = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.c, ptr noundef nonnull @.str.155, ptr noundef nonnull %0) #6 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

declare i32 @TS_REQ_set_policy_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @create_nonce() unnamed_addr #0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %i.b = call i32 @RAND_bytes(ptr noundef nonnull %i.a, i32 noundef 8) #6
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr %i.a, align 16, !tbaa !29
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.d, !llvm.loop !28

bb.d:                                             ; preds = %bb.c
  %i.e = call ptr @ASN1_INTEGER_new() #6          ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = call i32 @ASN1_STRING_set(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, i32 noundef 8) #6
  %.not10 = icmp eq i32 %i.g, 0
  br i1 %.not10, label %select.unfold, label %bb.f

select.unfold:                                    ; preds = %bb.b, %bb.e, %bb.d
  %.0.ph = phi ptr [ %i.e, %bb.e ], [ null, %bb.d ], [ null, %bb.b ]
  %i.h = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.i = call i32 @BIO_puts(ptr noundef %i.h, ptr noundef nonnull @.str.156) #6 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %select.unfold
  %.016 = phi ptr [ %.0.ph, %select.unfold ], [ null, %bb.e ]
  %.0814 = phi ptr [ null, %select.unfold ], [ %i.e, %bb.e ]
  call void @ASN1_INTEGER_free(ptr noundef %.016) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.0814
}

declare i32 @TS_REQ_set_nonce(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @TS_REQ_set_cert_req(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @TS_MSG_IMPRINT_free(ptr noundef) local_unnamed_addr #2

declare void @X509_ALGOR_free(ptr noundef) local_unnamed_addr #2

declare void @ASN1_OBJECT_free(ptr noundef) local_unnamed_addr #2

declare void @ASN1_INTEGER_free(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_MD_get_size(ptr noundef) local_unnamed_addr #2

declare ptr @EVP_MD_CTX_new() local_unnamed_addr #2

declare ptr @app_malloc(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_DigestInit(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BIO_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestUpdate(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestFinal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_hexstr2buf(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @EVP_MD_CTX_free(ptr noundef) local_unnamed_addr #2

declare ptr @OBJ_txt2obj(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @RAND_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ASN1_INTEGER_new() local_unnamed_addr #2

declare i32 @ASN1_STRING_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @d2i_TS_RESP_bio(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @TS_RESP_get_tst_info(ptr noundef) local_unnamed_addr #2

declare i32 @TS_TST_INFO_print_bio(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @TS_RESP_print_bio(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @TS_RESP_get_token(ptr noundef) local_unnamed_addr #2

declare i32 @i2d_PKCS7_bio(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @i2d_TS_RESP_bio(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @TS_RESP_free(ptr noundef) local_unnamed_addr #2

declare ptr @d2i_PKCS7_bio(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PKCS7_to_TS_TST_INFO(ptr noundef) local_unnamed_addr #2

declare ptr @TS_RESP_new() local_unnamed_addr #2

declare ptr @TS_STATUS_INFO_new() local_unnamed_addr #2

declare i32 @TS_STATUS_INFO_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @TS_RESP_set_status_info(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @TS_RESP_set_tst_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @PKCS7_free(ptr noundef) local_unnamed_addr #2

declare void @TS_TST_INFO_free(ptr noundef) local_unnamed_addr #2

declare void @TS_STATUS_INFO_free(ptr noundef) local_unnamed_addr #2

declare ptr @TS_CONF_get_tsa_section(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @TS_RESP_CTX_new() local_unnamed_addr #2

declare i32 @TS_CONF_set_serial(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @serial_cb(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %i.b = tail call ptr @ASN1_INTEGER_new() #6     ; 9 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @BIO_new_file(ptr noundef %1, ptr noundef nonnull @.str.151) #6 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_clear_error() #6
  %i.f = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.g = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.f, ptr noundef nonnull @.str.161, ptr noundef %1) #6 ; 0 uses
  %i.h = tail call i32 @ASN1_INTEGER_set(ptr noundef nonnull %i.b, i64 noundef 1) #6
  %.not32.i = icmp eq i32 %i.h, 0
  br i1 %.not32.i, label %bb.j, label %next_serial.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.i = call i32 @a2i_ASN1_INTEGER(ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef 1024) #6
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.k = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.j, ptr noundef nonnull @.str.162, ptr noundef %1) #6 ; 0 uses
  br label %.thread.i

bb.f:                                             ; preds = %bb.d
  %i.l = call ptr @ASN1_INTEGER_to_BN(ptr noundef nonnull %i.b, ptr noundef null) #6 ; 6 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @ASN1_INTEGER_free(ptr noundef nonnull %i.b) #6
  %i.n = call i32 @BN_add_word(ptr noundef nonnull %i.l, i64 noundef 1) #6
  %.not31.i = icmp eq i32 %i.n, 0
  br i1 %.not31.i, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = call ptr @BN_to_ASN1_INTEGER(ptr noundef nonnull %i.l, ptr noundef null) #6 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.thread.i, label %bb.i

.thread.i:                                        ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.017.ph.i = phi ptr [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ null, %bb.g ], [ null, %bb.h ]
  %.016.ph.i = phi ptr [ null, %bb.e ], [ null, %bb.f ], [ %i.l, %bb.g ], [ %i.l, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %next_serial.exit

bb.j:                                             ; preds = %.thread.i, %bb.c, %bb.a
  %.020.ph.i = phi ptr [ null, %bb.c ], [ %i.d, %.thread.i ], [ null, %bb.a ]
  %.219.ph.i = phi ptr [ %i.b, %bb.c ], [ %.017.ph.i, %.thread.i ], [ null, %bb.a ]
  %.2.ph.i = phi ptr [ null, %bb.c ], [ %.016.ph.i, %.thread.i ], [ null, %bb.a ]
  call void @ASN1_INTEGER_free(ptr noundef %.219.ph.i) #6
  br label %next_serial.exit

next_serial.exit:                                 ; preds = %bb.c, %bb.i, %bb.j
  %.247.i = phi ptr [ %.2.ph.i, %bb.j ], [ %i.l, %bb.i ], [ null, %bb.c ]
  %.02044.i = phi ptr [ %.020.ph.i, %bb.j ], [ %i.d, %bb.i ], [ null, %bb.c ]
  %.3.i = phi ptr [ null, %bb.j ], [ %i.o, %bb.i ], [ %i.b, %bb.c ] ; 3 uses
  call void @BIO_free_all(ptr noundef %.02044.i) #6
  call void @BN_free(ptr noundef %.247.i) #6
  %i.q = icmp eq ptr %.3.i, null
  br i1 %i.q, label %bb.k, label %bb.l

bb.k:                                             ; preds = %next_serial.exit
  %i.r = call i32 @TS_RESP_CTX_set_status_info(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.160) #6 ; 0 uses
  %i.s = call i32 @TS_RESP_CTX_add_failure_info(ptr noundef %0, i32 noundef 17) #6 ; 0 uses
  br label %bb.o

bb.l:                                             ; preds = %next_serial.exit
  %i.t = call ptr @BIO_new_file(ptr noundef %1, ptr noundef nonnull @.str.163) #6 ; 4 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.thread.i8, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = call i32 @i2a_ASN1_INTEGER(ptr noundef nonnull %i.t, ptr noundef nonnull %.3.i) #6
  %i.w = icmp slt i32 %i.v, 1
  br i1 %i.w, label %.thread.i8, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = call i32 @BIO_puts(ptr noundef nonnull %i.t, ptr noundef nonnull @.str.164) #6
  %i.y = icmp slt i32 %i.x, 1
  br i1 %i.y, label %.thread.i8, label %save_ts_serial.exit

.thread.i8:                                       ; preds = %bb.n, %bb.m, %bb.l
  %i.z = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.aa = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.z, ptr noundef nonnull @.str.165, ptr noundef %1) #6 ; 0 uses
  br label %save_ts_serial.exit

save_ts_serial.exit:                              ; preds = %bb.n, %.thread.i8
  call void @BIO_free_all(ptr noundef %i.t) #6
  br label %bb.o

bb.o:                                             ; preds = %save_ts_serial.exit, %bb.k
  ret ptr %.3.i
}

declare i32 @TS_CONF_set_signer_cert(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @TS_CONF_set_certs(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @TS_CONF_set_signer_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @TS_RESP_CTX_set_signer_digest(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @TS_CONF_set_signer_digest(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @TS_CONF_set_ess_cert_id_digest(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @TS_CONF_set_def_policy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @TS_CONF_set_policies(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @TS_CONF_set_digests(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @TS_CONF_set_accuracy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @TS_CONF_set_clock_precision_digits(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @TS_CONF_set_ordering(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @TS_CONF_set_tsa_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @TS_CONF_set_ess_cert_id_chain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @TS_RESP_create_response(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @TS_RESP_CTX_free(ptr noundef) local_unnamed_addr #2

declare i32 @TS_RESP_CTX_set_status_info(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @TS_RESP_CTX_add_failure_info(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_clear_error() local_unnamed_addr #2

declare i32 @ASN1_INTEGER_set(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @a2i_ASN1_INTEGER(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ASN1_INTEGER_to_BN(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BN_add_word(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @BN_to_ASN1_INTEGER(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BN_free(ptr noundef) local_unnamed_addr #2

declare i32 @i2a_ASN1_INTEGER(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @TS_RESP_verify_token(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @TS_RESP_verify_response(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare void @TS_VERIFY_CTX_free(ptr noundef) local_unnamed_addr #2

declare ptr @TS_VERIFY_CTX_new() local_unnamed_addr #2

declare i32 @TS_VERIFY_CTX_set0_data(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @TS_VERIFY_CTX_set0_imprint(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @TS_REQ_to_TS_VERIFY_CTX(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @TS_VERIFY_CTX_add_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @TS_VERIFY_CTX_set0_store(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @load_certs_multifile(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @TS_VERIFY_CTX_set0_certs(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @app_get0_libctx() local_unnamed_addr #2

declare ptr @app_get0_propq() local_unnamed_addr #2

declare ptr @X509_STORE_new() local_unnamed_addr #2

declare void @X509_STORE_set_verify_cb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @verify_cb(i32 noundef returned %0, ptr nofree readnone captures(none) %1) #4 {
bb.a:
  ret i32 %0
}

declare ptr @X509_STORE_add_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @X509_LOOKUP_hash_dir() local_unnamed_addr #2

declare i32 @X509_LOOKUP_ctrl(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @X509_LOOKUP_file() local_unnamed_addr #2

declare i32 @X509_LOOKUP_ctrl_ex(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @X509_LOOKUP_store() local_unnamed_addr #2

declare i32 @X509_STORE_set1_param(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @X509_STORE_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS6bio_st", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"p1 _ZTS9evp_md_st", !9, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"long", !5, i64 0}
!19 = !{!18, !18, i64 0}
!20 = distinct !{!20, !12}
!21 = !{!"p1 _ZTS14asn1_object_st", !9, i64 0}
!22 = !{!"p1 _ZTS12asn1_type_st", !9, i64 0}
!23 = !{!"X509_algor_st", !21, i64 0, !22, i64 8}
!24 = !{!23, !21, i64 0}
!25 = !{!23, !22, i64 8}
!26 = !{!"asn1_type_st", !6, i64 0, !5, i64 8}
!27 = !{!26, !6, i64 0}
!28 = distinct !{!28, !12}
!29 = !{!5, !5, i64 0}
end_hunk_0
