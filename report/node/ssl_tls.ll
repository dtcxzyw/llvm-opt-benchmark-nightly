inline.NumInlined: 174
inline.NumDeleted: 64
begin_hunk_0
@.str.26 = private unnamed_addr constant [15 x i8] c"=> renegotiate\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"mbedtls_ssl_handshake\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"<= renegotiate\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"mbedtls_ssl_start_renegotiation\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"Initial handshake isn't over\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"Handshake isn't completed\00", align 1
@.str.32 = private unnamed_addr constant [35 x i8] c"Serialised structures aren't ready\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"There is pending incoming data\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"There is pending outgoing data\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"Only DTLS is supported\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"Only version 1.2 supported\00", align 1
@.str.37 = private unnamed_addr constant [33 x i8] c"Only AEAD ciphersuites supported\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"Renegotiation must not be enabled\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"saved context\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"=> free\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"<= free\00", align 1
@ssl_preset_suiteb_sig_algs = internal constant [3 x i16] [i16 1027, i16 1283, i16 0], align 2
@ssl_preset_default_sig_algs = internal constant [10 x i16] [i16 1027, i16 1283, i16 1539, i16 2054, i16 2053, i16 2052, i16 1537, i16 1281, i16 1025, i16 0], align 16
@ssl_tls12_preset_suiteb_sig_algs = internal constant [3 x i16] [i16 1027, i16 1283, i16 0], align 2
@ssl_tls12_preset_default_sig_algs = internal constant [10 x i16] [i16 1539, i16 2054, i16 1537, i16 1283, i16 2053, i16 1281, i16 1027, i16 2052, i16 1025, i16 0], align 16
@__const.mbedtls_ssl_config_defaults.dhm_p = private unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\C9\0F\DA\A2!h\C24\C4\C6b\8B\80\DC\1C\D1)\02N\08\8Ag\CCt\02\0B\BE\A6;\13\9B\22QJ\08y\8E4\04\DD\EF\95\19\B3\CD:C\1B0+\0Am\F2_\147O\E15mmQ\C2E\E4\85\B5vb^~\C6\F4LB\E9\A67\EDk\0B\FF\\\B6\F4\06\B7\ED\EE8k\FBZ\89\9F\A5\AE\9F$\11|K\1F\E6I(fQ\EC\E4[=\C2\00|\B8\A1c\BF\05\98\DAH6\1CU\D3\9Ai\16?\A8\FD$\CF_\83e]#\DC\A3\AD\96\1Cb\F3V \85R\BB\9E\D5)\07p\96\96mg\0C5NJ\BC\98\04\F1tl\08\CA\18!|2\90^F.6\CE;\E3\9Ew,\18\0E\86\03\9B'\83\A2\EC\07\A2\8F\B5\C5]\F0oLR\C9\DE+\CB\F6\95X\17\189\95I|\EA\95j\E5\15\D2&\18\98\FA\05\10\15r\8EZ\8A\AC\AAh\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@ssl_preset_suiteb_ciphersuites = internal constant [3 x i32] [i32 49195, i32 49196, i32 0], align 4
@mbedtls_x509_crt_profile_suiteb = external constant %struct.mbedtls_x509_crt_profile, align 4
@ssl_preset_suiteb_groups = internal constant [3 x i16] [i16 23, i16 24, i16 0], align 2
@mbedtls_x509_crt_profile_default = external constant %struct.mbedtls_x509_crt_profile, align 4
@ssl_preset_default_groups = internal constant [14 x i16] [i16 29, i16 23, i16 24, i16 30, i16 25, i16 26, i16 27, i16 28, i16 256, i16 257, i16 258, i16 259, i16 260, i16 0], align 16
@.str.46 = private unnamed_addr constant [25 x i8] c"missing input data in %s\00", align 1
@__func__.mbedtls_ssl_parse_sig_alg_ext = private unnamed_addr constant [30 x i8] c"mbedtls_ssl_parse_sig_alg_ext\00", align 1
@.str.47 = private unnamed_addr constant [38 x i8] c"received signature algorithm: 0x%x %s\00", align 1
@.str.48 = private unnamed_addr constant [30 x i8] c"valid signature algorithm: %s\00", align 1
@.str.49 = private unnamed_addr constant [49 x i8] c"Signature algorithms extension length misaligned\00", align 1
@.str.50 = private unnamed_addr constant [33 x i8] c"no signature algorithm in common\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"=> derive keys\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"ssl_compute_master\00", align 1
@.str.54 = private unnamed_addr constant [29 x i8] c"ssl_tls12_populate_transform\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"<= derive keys\00", align 1
@.str.56 = private unnamed_addr constant [24 x i8] c"mbedtls_dhm_calc_secret\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"DHM: K \00", align 1
@.str.58 = private unnamed_addr constant [25 x i8] c"mbedtls_ecdh_calc_secret\00", align 1
@.str.59 = private unnamed_addr constant [39 x i8] c"no longer retransmitting hello request\00", align 1
@.str.60 = private unnamed_addr constant [21 x i8] c"=> write certificate\00", align 1
@.str.61 = private unnamed_addr constant [26 x i8] c"<= skip write certificate\00", align 1
@.str.62 = private unnamed_addr constant [16 x i8] c"own certificate\00", align 1
@.str.63 = private unnamed_addr constant [33 x i8] c"certificate too large, %zu > %zu\00", align 1
@.str.64 = private unnamed_addr constant [32 x i8] c"mbedtls_ssl_write_handshake_msg\00", align 1
@.str.65 = private unnamed_addr constant [21 x i8] c"<= write certificate\00", align 1
@.str.66 = private unnamed_addr constant [21 x i8] c"=> parse certificate\00", align 1
@.str.67 = private unnamed_addr constant [26 x i8] c"<= skip parse certificate\00", align 1
@.str.68 = private unnamed_addr constant [24 x i8] c"mbedtls_ssl_read_record\00", align 1
@.str.69 = private unnamed_addr constant [21 x i8] c"<= parse certificate\00", align 1
@.str.70 = private unnamed_addr constant [32 x i8] c"=> handshake wrapup: final free\00", align 1
@.str.71 = private unnamed_addr constant [32 x i8] c"<= handshake wrapup: final free\00", align 1
@.str.72 = private unnamed_addr constant [20 x i8] c"=> handshake wrapup\00", align 1
@.str.73 = private unnamed_addr constant [28 x i8] c"cache did not store session\00", align 1
@.str.74 = private unnamed_addr constant [37 x i8] c"skip freeing handshake and transform\00", align 1
@.str.75 = private unnamed_addr constant [20 x i8] c"<= handshake wrapup\00", align 1
@.str.76 = private unnamed_addr constant [18 x i8] c"=> write finished\00", align 1
@.str.77 = private unnamed_addr constant [14 x i8] c"calc_finished\00", align 1
@.str.78 = private unnamed_addr constant [50 x i8] c"switching to new transform spec for outbound data\00", align 1
@.str.79 = private unnamed_addr constant [22 x i8] c"DTLS epoch would wrap\00", align 1
@.str.80 = private unnamed_addr constant [28 x i8] c"mbedtls_ssl_flight_transmit\00", align 1
@.str.81 = private unnamed_addr constant [18 x i8] c"<= write finished\00", align 1
@.str.82 = private unnamed_addr constant [18 x i8] c"=> parse finished\00", align 1
@.str.83 = private unnamed_addr constant [21 x i8] c"bad finished message\00", align 1
@.str.84 = private unnamed_addr constant [18 x i8] c"<= parse finished\00", align 1
@.str.85 = private unnamed_addr constant [65 x i8] c"Perform mbedtls-based computation of digest of ServerKeyExchange\00", align 1
@.str.86 = private unnamed_addr constant [17 x i8] c"mbedtls_md_setup\00", align 1
@.str.87 = private unnamed_addr constant [18 x i8] c"mbedtls_md_starts\00", align 1
@.str.88 = private unnamed_addr constant [18 x i8] c"mbedtls_md_update\00", align 1
@.str.89 = private unnamed_addr constant [18 x i8] c"mbedtls_md_finish\00", align 1
@.str.90 = private unnamed_addr constant [38 x i8] c"adding signature_algorithms extension\00", align 1
@.str.91 = private unnamed_addr constant [29 x i8] c"got signature scheme [%x] %s\00", align 1
@.str.92 = private unnamed_addr constant [30 x i8] c"sent signature scheme [%x] %s\00", align 1
@.str.93 = private unnamed_addr constant [33 x i8] c"No signature algorithms defined.\00", align 1
@.str.94 = private unnamed_addr constant [27 x i8] c"parse ServerName extension\00", align 1
@__func__.mbedtls_ssl_parse_server_name_ext = private unnamed_addr constant [34 x i8] c"mbedtls_ssl_parse_server_name_ext\00", align 1
@.str.95 = private unnamed_addr constant [16 x i8] c"ssl_sni_wrapper\00", align 1
@__func__.mbedtls_ssl_parse_alpn_ext = private unnamed_addr constant [27 x i8] c"mbedtls_ssl_parse_alpn_ext\00", align 1
@.str.96 = private unnamed_addr constant [35 x i8] c"server side, adding alpn extension\00", align 1
@.str.97 = private unnamed_addr constant [9 x i8] c"+\06\01\05\05\07\03\01\00", align 1
@.str.98 = private unnamed_addr constant [9 x i8] c"+\06\01\05\05\07\03\02\00", align 1
@.str.99 = private unnamed_addr constant [43 x i8] c"Use context-specific verification callback\00", align 1
@.str.100 = private unnamed_addr constant [49 x i8] c"Use configuration-specific verification callback\00", align 1
@.str.101 = private unnamed_addr constant [30 x i8] c"get_hostname_for_verification\00", align 1
@.str.102 = private unnamed_addr constant [17 x i8] c"x509_verify_cert\00", align 1
@.str.103 = private unnamed_addr constant [31 x i8] c"bad certificate (EC key curve)\00", align 1
@.str.104 = private unnamed_addr constant [35 x i8] c"bad certificate (usage extensions)\00", align 1
@.str.105 = private unnamed_addr constant [16 x i8] c"got no CA chain\00", align 1
@.str.106 = private unnamed_addr constant [38 x i8] c"! Certificate verification flags %08x\00", align 1
@.str.107 = private unnamed_addr constant [37 x i8] c"Certificate verification flags clear\00", align 1
@.str.108 = private unnamed_addr constant [13 x i8] c"unrecognized\00", align 1
@.str.109 = private unnamed_addr constant [12 x i8] c"server_name\00", align 1
@.str.110 = private unnamed_addr constant [20 x i8] c"max_fragment_length\00", align 1
@.str.111 = private unnamed_addr constant [15 x i8] c"status_request\00", align 1
@.str.112 = private unnamed_addr constant [17 x i8] c"supported_groups\00", align 1
@.str.113 = private unnamed_addr constant [21 x i8] c"signature_algorithms\00", align 1
@.str.114 = private unnamed_addr constant [9 x i8] c"use_srtp\00", align 1
@.str.115 = private unnamed_addr constant [10 x i8] c"heartbeat\00", align 1
@.str.116 = private unnamed_addr constant [39 x i8] c"application_layer_protocol_negotiation\00", align 1
@.str.117 = private unnamed_addr constant [29 x i8] c"signed_certificate_timestamp\00", align 1
@.str.118 = private unnamed_addr constant [24 x i8] c"client_certificate_type\00", align 1
@.str.119 = private unnamed_addr constant [24 x i8] c"server_certificate_type\00", align 1
@.str.120 = private unnamed_addr constant [8 x i8] c"padding\00", align 1
@.str.121 = private unnamed_addr constant [15 x i8] c"pre_shared_key\00", align 1
@.str.122 = private unnamed_addr constant [11 x i8] c"early_data\00", align 1
@.str.123 = private unnamed_addr constant [19 x i8] c"supported_versions\00", align 1
@.str.124 = private unnamed_addr constant [7 x i8] c"cookie\00", align 1
@.str.125 = private unnamed_addr constant [23 x i8] c"psk_key_exchange_modes\00", align 1
@.str.126 = private unnamed_addr constant [24 x i8] c"certificate_authorities\00", align 1
@.str.127 = private unnamed_addr constant [12 x i8] c"oid_filters\00", align 1
@.str.128 = private unnamed_addr constant [20 x i8] c"post_handshake_auth\00", align 1
@.str.129 = private unnamed_addr constant [26 x i8] c"signature_algorithms_cert\00", align 1
@.str.130 = private unnamed_addr constant [10 x i8] c"key_share\00", align 1
@.str.131 = private unnamed_addr constant [15 x i8] c"truncated_hmac\00", align 1
@.str.132 = private unnamed_addr constant [24 x i8] c"supported_point_formats\00", align 1
@.str.133 = private unnamed_addr constant [17 x i8] c"encrypt_then_mac\00", align 1
@.str.134 = private unnamed_addr constant [23 x i8] c"extended_master_secret\00", align 1
@.str.135 = private unnamed_addr constant [15 x i8] c"session_ticket\00", align 1
@.str.136 = private unnamed_addr constant [18 x i8] c"record_size_limit\00", align 1
@.str.137 = private unnamed_addr constant [12 x i8] c"ClientHello\00", align 1
@.str.138 = private unnamed_addr constant [12 x i8] c"ServerHello\00", align 1
@.str.139 = private unnamed_addr constant [18 x i8] c"HelloRetryRequest\00", align 1
@.str.140 = private unnamed_addr constant [17 x i8] c"NewSessionTicket\00", align 1
@.str.141 = private unnamed_addr constant [20 x i8] c"EncryptedExtensions\00", align 1
@.str.142 = private unnamed_addr constant [12 x i8] c"Certificate\00", align 1
@.str.143 = private unnamed_addr constant [19 x i8] c"CertificateRequest\00", align 1
@.str.144 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.145 = private unnamed_addr constant [21 x i8] c"ALLOW_PSK_RESUMPTION\00", align 1
@.str.146 = private unnamed_addr constant [31 x i8] c"ALLOW_PSK_EPHEMERAL_RESUMPTION\00", align 1
@.str.147 = private unnamed_addr constant [17 x i8] c"ALLOW_EARLY_DATA\00", align 1
@.str.148 = private unnamed_addr constant [16 x i8] c"no RNG provided\00", align 1
@.str.149 = private unnamed_addr constant [31 x i8] c"DTLS 1.3 is not yet supported.\00", align 1
@.str.150 = private unnamed_addr constant [37 x i8] c"The SSL configuration is tls13 only.\00", align 1
@.str.151 = private unnamed_addr constant [37 x i8] c"The SSL configuration is tls12 only.\00", align 1
@.str.152 = private unnamed_addr constant [51 x i8] c"DTLS not yet supported in Hybrid TLS 1.3 + TLS 1.2\00", align 1
@.str.153 = private unnamed_addr constant [45 x i8] c"The SSL configuration is TLS 1.3 or TLS 1.2.\00", align 1
@.str.154 = private unnamed_addr constant [34 x i8] c"The SSL configuration is invalid.\00", align 1
@.str.155 = private unnamed_addr constant [35 x i8] c"alloc() of ssl sub-contexts failed\00", align 1
@.str.156 = private unnamed_addr constant [27 x i8] c"mbedtls_ssl_reset_checksum\00", align 1
@.str.157 = private unnamed_addr constant [55 x i8] c"../../deps/LIEF/third-party/mbedtls/library/ssl_misc.h\00", align 1
@.str.158 = private unnamed_addr constant [36 x i8] c"handshake state: %d (%s) -> %d (%s)\00", align 1
@ssl_serialized_session_header = internal constant [5 x i8] c"\03\06\04\00\FF", align 1
@.str.159 = private unnamed_addr constant [23 x i8] c"=> write hello request\00", align 1
@.str.160 = private unnamed_addr constant [23 x i8] c"<= write hello request\00", align 1
@.str.161 = private unnamed_addr constant [16 x i8] c"context to load\00", align 1
@tls_id_match_table = internal unnamed_addr constant [14 x { i16, [2 x i8], i32, i8, i8, i16 }] [{ i16, [2 x i8], i32, i8, i8, i16 } { i16 25, [2 x i8] zeroinitializer, i32 5, i8 18, i8 0, i16 521 }, { i16, [2 x i8], i32, i8, i8, i16 } { i16 28, [2 x i8] zeroinitializer, i32 8, i8 48, i8 0, i16 512 }, { i16, [2 x i8], i32, i8, i8, i16 } { i16 24, [2 x i8] zeroinitializer, i32 4, i8 18, i8 0, i16 384 }, { i16, [2 x i8], i32, i8, i8, i16 } { i16 27, [2 x i8] zeroinitializer, i32 7, i8 48, i8 0, i16 384 }, { i16, [2 x i8], i32, i8, i8, i16 } { i16 23, [2 x i8] zeroinitializer, i32 3, i8 18, i8 0, i16 256 }, { i16, [2 x i8], i32, i8, i8, i16 } { i16 22, [2 x i8] zeroinitializer, i32 12, i8 23, i8 0, i16 256 }, { i16, [2 x i8], i32, i8, i8, i16 } { i16 26, [2 x i8] zeroinitializer, i32 6, i8 48, i8 0, i16 256 }, { i16, [2 x i8], i32, i8, i8, i16 } { i16 21, [2 x i8] zeroinitializer, i32 2, i8 18, i8 0, i16 224 }, { i16, [2 x i8], i32, i8, i8, i16 } { i16 20, [2 x i8] zeroinitializer, i32 11, i8 23, i8 0, i16 224 }, { i16, [2 x i8], i32, i8, i8, i16 } { i16 19, [2 x i8] zeroinitializer, i32 1, i8 18, i8 0, i16 192 }, { i16, [2 x i8], i32, i8, i8, i16 } { i16 18, [2 x i8] zeroinitializer, i32 10, i8 23, i8 0, i16 192 }, { i16, [2 x i8], i32, i8, i8, i16 } { i16 29, [2 x i8] zeroinitializer, i32 9, i8 65, i8 0, i16 255 }, { i16, [2 x i8], i32, i8, i8, i16 } { i16 30, [2 x i8] zeroinitializer, i32 13, i8 65, i8 0, i16 448 }, { i16, [2 x i8], i32, i8, i8, i16 } zeroinitializer], align 16
@.str.164 = private unnamed_addr constant [10 x i8] c"secp521r1\00", align 1
@.str.165 = private unnamed_addr constant [16 x i8] c"brainpoolP512r1\00", align 1
@.str.166 = private unnamed_addr constant [10 x i8] c"secp384r1\00", align 1
@.str.167 = private unnamed_addr constant [16 x i8] c"brainpoolP384r1\00", align 1
@.str.168 = private unnamed_addr constant [10 x i8] c"secp256r1\00", align 1
@.str.169 = private unnamed_addr constant [10 x i8] c"secp256k1\00", align 1
@.str.170 = private unnamed_addr constant [16 x i8] c"brainpoolP256r1\00", align 1
@.str.171 = private unnamed_addr constant [10 x i8] c"secp224r1\00", align 1
@.str.172 = private unnamed_addr constant [10 x i8] c"secp224k1\00", align 1
@.str.173 = private unnamed_addr constant [10 x i8] c"secp192r1\00", align 1
@.str.174 = private unnamed_addr constant [10 x i8] c"secp192k1\00", align 1
@.str.175 = private unnamed_addr constant [7 x i8] c"x25519\00", align 1
@.str.176 = private unnamed_addr constant [5 x i8] c"x448\00", align 1
@tls_id_curve_name_table = internal unnamed_addr constant [14 x { i16, [6 x i8], ptr }] [{ i16, [6 x i8], ptr } { i16 25, [6 x i8] zeroinitializer, ptr @.str.164 }, { i16, [6 x i8], ptr } { i16 28, [6 x i8] zeroinitializer, ptr @.str.165 }, { i16, [6 x i8], ptr } { i16 24, [6 x i8] zeroinitializer, ptr @.str.166 }, { i16, [6 x i8], ptr } { i16 27, [6 x i8] zeroinitializer, ptr @.str.167 }, { i16, [6 x i8], ptr } { i16 23, [6 x i8] zeroinitializer, ptr @.str.168 }, { i16, [6 x i8], ptr } { i16 22, [6 x i8] zeroinitializer, ptr @.str.169 }, { i16, [6 x i8], ptr } { i16 26, [6 x i8] zeroinitializer, ptr @.str.170 }, { i16, [6 x i8], ptr } { i16 21, [6 x i8] zeroinitializer, ptr @.str.171 }, { i16, [6 x i8], ptr } { i16 20, [6 x i8] zeroinitializer, ptr @.str.172 }, { i16, [6 x i8], ptr } { i16 19, [6 x i8] zeroinitializer, ptr @.str.173 }, { i16, [6 x i8], ptr } { i16 18, [6 x i8] zeroinitializer, ptr @.str.174 }, { i16, [6 x i8], ptr } { i16 29, [6 x i8] zeroinitializer, ptr @.str.175 }, { i16, [6 x i8], ptr } { i16 30, [6 x i8] zeroinitializer, ptr @.str.176 }, { i16, [6 x i8], ptr } zeroinitializer], align 16
@.str.178 = private unnamed_addr constant [16 x i8] c"client finished\00", align 1
@.str.179 = private unnamed_addr constant [16 x i8] c"server finished\00", align 1
@.str.180 = private unnamed_addr constant [21 x i8] c"=> calc finished tls\00", align 1
@.str.181 = private unnamed_addr constant [16 x i8] c"finished output\00", align 1
@.str.182 = private unnamed_addr constant [21 x i8] c"calc finished result\00", align 1
@.str.183 = private unnamed_addr constant [17 x i8] c"<= calc finished\00", align 1
@.str.184 = private unnamed_addr constant [14 x i8] c"master secret\00", align 1
@.str.185 = private unnamed_addr constant [31 x i8] c"no premaster (session resumed)\00", align 1
@.str.186 = private unnamed_addr constant [23 x i8] c"extended master secret\00", align 1
@.str.187 = private unnamed_addr constant [12 x i8] c"calc_verify\00", align 1
@.str.188 = private unnamed_addr constant [40 x i8] c"session hash for extended master secret\00", align 1
@.str.189 = private unnamed_addr constant [4 x i8] c"prf\00", align 1
@.str.190 = private unnamed_addr constant [17 x i8] c"premaster secret\00", align 1
@.str.191 = private unnamed_addr constant [15 x i8] c"=> calc verify\00", align 1
@.str.192 = private unnamed_addr constant [25 x i8] c"calculated verify result\00", align 1
@.str.193 = private unnamed_addr constant [15 x i8] c"<= calc verify\00", align 1
@.str.195 = private unnamed_addr constant [24 x i8] c"peer has no certificate\00", align 1
@.str.196 = private unnamed_addr constant [24 x i8] c"bad certificate message\00", align 1
@.str.197 = private unnamed_addr constant [56 x i8] c"Check that peer CRT hasn't changed during renegotiation\00", align 1
@.str.198 = private unnamed_addr constant [37 x i8] c"new server cert during renegotiation\00", align 1
@.str.199 = private unnamed_addr constant [28 x i8] c" mbedtls_x509_crt_parse_der\00", align 1
@.str.200 = private unnamed_addr constant [17 x i8] c"peer certificate\00", align 1
@.str.201 = private unnamed_addr constant [34 x i8] c"ciphersuite info for %d not found\00", align 1
@.str.202 = private unnamed_addr constant [29 x i8] c"cipher info for %u not found\00", align 1
@.str.203 = private unnamed_addr constant [33 x i8] c"mbedtls_md info for %u not found\00", align 1
@.str.204 = private unnamed_addr constant [29 x i8] c"Copy CIDs into SSL transform\00", align 1
@.str.205 = private unnamed_addr constant [13 x i8] c"Incoming CID\00", align 1
@.str.206 = private unnamed_addr constant [13 x i8] c"Outgoing CID\00", align 1
@.str.207 = private unnamed_addr constant [14 x i8] c"key expansion\00", align 1
@.str.208 = private unnamed_addr constant [17 x i8] c"ciphersuite = %s\00", align 1
@.str.209 = private unnamed_addr constant [13 x i8] c"random bytes\00", align 1
@.str.210 = private unnamed_addr constant [10 x i8] c"key block\00", align 1
@.str.211 = private unnamed_addr constant [46 x i8] c"keylen: %u, minlen: %u, ivlen: %u, maclen: %u\00", align 1
@.str.212 = private unnamed_addr constant [21 x i8] c"mbedtls_cipher_setup\00", align 1
@.str.213 = private unnamed_addr constant [22 x i8] c"mbedtls_cipher_setkey\00", align 1
@.str.214 = private unnamed_addr constant [32 x i8] c"mbedtls_cipher_set_padding_mode\00", align 1
@.str.215 = private unnamed_addr constant [53 x i8] c"Certificate verification without having set hostname\00", align 1
@.str.216 = private unnamed_addr constant [49 x i8] c"Certificate verification without CN verification\00", align 1
@switch.table.mbedtls_ssl_get_extension_id = private unnamed_addr constant [52 x i32] [i32 1, i32 2, i32 0, i32 0, i32 23, i32 3, i32 0, i32 0, i32 0, i32 0, i32 4, i32 24, i32 0, i32 5, i32 6, i32 7, i32 8, i32 0, i32 9, i32 10, i32 11, i32 12, i32 25, i32 26, i32 0, i32 0, i32 0, i32 0, i32 28, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 27, i32 0, i32 0, i32 0, i32 0, i32 0, i32 13, i32 14, i32 15, i32 16, i32 17, i32 0, i32 18, i32 19, i32 20, i32 21, i32 22], align 4
@switch.table.mbedtls_ssl_print_extension.22 = private unnamed_addr constant [16 x ptr] [ptr @.str.139, ptr @.str.144, ptr @.str.144, ptr @.str.137, ptr @.str.138, ptr @.str.144, ptr @.str.140, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.141, ptr @.str.144, ptr @.str.144, ptr @.str.142, ptr @.str.144, ptr @.str.143], align 8
@switch.table.mbedtls_ssl_get_input_max_frag_len.24 = private unnamed_addr constant [4 x i64] [i64 512, i64 1024, i64 2048, i64 4096], align 8
@switch.table.mbedtls_ssl_get_max_in_record_payload.34 = private unnamed_addr constant [4 x i32] [i32 512, i32 1024, i32 2048, i32 4096], align 4
@switch.table.mbedtls_ssl_md_alg_from_hash = private unnamed_addr constant [6 x i32] [i32 3, i32 5, i32 8, i32 9, i32 10, i32 11], align 4
@switch.table.mbedtls_ssl_hash_from_md_alg = private unnamed_addr constant [9 x i8] c"\01\00\02\00\00\03\04\05\06", align 1
@switch.table.mbedtls_ssl_get_ecp_group_id_from_tls_id = private unnamed_addr constant [13 x ptr] [ptr getelementptr inbounds nuw (i8, ptr @tls_id_match_table, i64 120), ptr getelementptr inbounds nuw (i8, ptr @tls_id_match_table, i64 108), ptr getelementptr inbounds nuw (i8, ptr @tls_id_match_table, i64 96), ptr getelementptr inbounds nuw (i8, ptr @tls_id_match_table, i64 84), ptr getelementptr inbounds nuw (i8, ptr @tls_id_match_table, i64 60), ptr getelementptr inbounds nuw (i8, ptr @tls_id_match_table, i64 48), ptr getelementptr inbounds nuw (i8, ptr @tls_id_match_table, i64 24), ptr @tls_id_match_table, ptr getelementptr inbounds nuw (i8, ptr @tls_id_match_table, i64 72), ptr getelementptr inbounds nuw (i8, ptr @tls_id_match_table, i64 36), ptr getelementptr inbounds nuw (i8, ptr @tls_id_match_table, i64 12), ptr getelementptr inbounds nuw (i8, ptr @tls_id_match_table, i64 132), ptr getelementptr inbounds nuw (i8, ptr @tls_id_match_table, i64 144)], align 8
@switch.table.mbedtls_ssl_get_curve_name_from_tls_id = private unnamed_addr constant [13 x ptr] [ptr getelementptr inbounds nuw (i8, ptr @tls_id_curve_name_table, i64 160), ptr getelementptr inbounds nuw (i8, ptr @tls_id_curve_name_table, i64 144), ptr getelementptr inbounds nuw (i8, ptr @tls_id_curve_name_table, i64 128), ptr getelementptr inbounds nuw (i8, ptr @tls_id_curve_name_table, i64 112), ptr getelementptr inbounds nuw (i8, ptr @tls_id_curve_name_table, i64 80), ptr getelementptr inbounds nuw (i8, ptr @tls_id_curve_name_table, i64 64), ptr getelementptr inbounds nuw (i8, ptr @tls_id_curve_name_table, i64 32), ptr @tls_id_curve_name_table, ptr getelementptr inbounds nuw (i8, ptr @tls_id_curve_name_table, i64 96), ptr getelementptr inbounds nuw (i8, ptr @tls_id_curve_name_table, i64 48), ptr getelementptr inbounds nuw (i8, ptr @tls_id_curve_name_table, i64 16), ptr getelementptr inbounds nuw (i8, ptr @tls_id_curve_name_table, i64 176), ptr getelementptr inbounds nuw (i8, ptr @tls_id_curve_name_table, i64 192)], align 8
@switch.table.mbedtls_ssl_verify_certificate = private unnamed_addr constant [13 x ptr] [ptr getelementptr inbounds nuw (i8, ptr @tls_id_match_table, i64 108), ptr getelementptr inbounds nuw (i8, ptr @tls_id_match_table, i64 84), ptr getelementptr inbounds nuw (i8, ptr @tls_id_match_table, i64 48), ptr getelementptr inbounds nuw (i8, ptr @tls_id_match_table, i64 24), ptr @tls_id_match_table, ptr getelementptr inbounds nuw (i8, ptr @tls_id_match_table, i64 72), ptr getelementptr inbounds nuw (i8, ptr @tls_id_match_table, i64 36), ptr getelementptr inbounds nuw (i8, ptr @tls_id_match_table, i64 12), ptr getelementptr inbounds nuw (i8, ptr @tls_id_match_table, i64 132), ptr getelementptr inbounds nuw (i8, ptr @tls_id_match_table, i64 120), ptr getelementptr inbounds nuw (i8, ptr @tls_id_match_table, i64 96), ptr getelementptr inbounds nuw (i8, ptr @tls_id_match_table, i64 60), ptr getelementptr inbounds nuw (i8, ptr @tls_id_match_table, i64 144)], align 8
@switch.table.mbedtls_ssl_check_cert_usage = private unnamed_addr constant [10 x i32] [i32 32, i32 128, i32 128, i32 128, i32 0, i32 0, i32 32, i32 0, i32 8, i32 8], align 4
@switch.table.mbedtls_ssl_export_keying_material = private unnamed_addr constant [17 x i64] [i64 16, i64 20, i64 20, i64 0, i64 0, i64 28, i64 32, i64 48, i64 64, i64 28, i64 32, i64 0, i64 0, i64 28, i64 32, i64 48, i64 64], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -28928, 1) i32 @mbedtls_ssl_conf_cid(ptr noundef writeonly captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %1, 32
  %or.cond = icmp ugt i32 %2, 1
  %or.cond9 = or i1 %i.a, %or.cond
  br i1 %or.cond9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = trunc nuw nsw i32 %2 to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %i.b, ptr %i.c, align 2, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %1, ptr %i.d, align 8, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -28928, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -28928, 1) i32 @mbedtls_ssl_set_cid(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.c = load i8, ptr %i.b, align 1, !tbaa !31
  %.not = icmp eq i8 %i.c, 1
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i32 %1 to i8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 537
  store i8 %i.d, ptr %i.e, align 1, !tbaa !32
  %i.f = icmp eq i32 %1, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 113, ptr noundef nonnull @.str.1) #25
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 116, ptr noundef nonnull @.str.2) #25
  tail call void @mbedtls_debug_print_buf(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 117, ptr noundef nonnull @.str.3, ptr noundef %2, i64 noundef %3) #25
  %i.g = load ptr, ptr %0, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %i.i = load i64, ptr %i.h, align 8, !tbaa !24   ; 2 uses
  %.not21 = icmp eq i64 %3, %i.i
  br i1 %.not21, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = trunc i64 %3 to i32
  %i.k = trunc i64 %i.i to i32
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 122, ptr noundef nonnull @.str.4, i32 noundef %i.j, i32 noundef %i.k) #25
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 504
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr align 1 %2, i64 %3, i1 false)
  %i.m = trunc i64 %3 to i8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i8 %i.m, ptr %i.n, align 8, !tbaa !33
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.c
  %.0 = phi i32 [ 0, %bb.f ], [ 0, %bb.c ], [ -28928, %bb.e ], [ -28928, %bb.a ]
  ret i32 %.0
}

declare void @mbedtls_debug_print_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @mbedtls_debug_print_buf(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -28928, 1) i32 @mbedtls_ssl_get_own_cid(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) initializes((0, 4)) %1, ptr noundef writeonly captures(address_is_null) %2, ptr noundef writeonly captures(address_is_null) %3) local_unnamed_addr #4 {
bb.a:
  store i32 0, ptr %1, align 4, !tbaa !4
  %i.a = load ptr, ptr %0, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.c = load i8, ptr %i.b, align 1, !tbaa !31
  %.not = icmp eq i8 %i.c, 1
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.e = load i8, ptr %i.d, align 8, !tbaa !33    ; 2 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 537
  %i.h = load i8, ptr %i.g, align 1, !tbaa !32
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not14 = icmp eq ptr %3, null
  br i1 %.not14, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = zext i8 %i.e to i64                      ; 2 uses
  store i64 %i.j, ptr %3, align 8, !tbaa !34
  %.not15 = icmp eq ptr %2, null
  br i1 %.not15, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 504
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2, ptr nonnull align 8 %i.k, i64 %i.j, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  store i32 1, ptr %1, align 4, !tbaa !4
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.c, %bb.a, %bb.g
  %.0 = phi i32 [ 0, %bb.g ], [ -28928, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -28928, 1) i32 @mbedtls_ssl_get_peer_cid(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) initializes((0, 4)) %1, ptr noundef writeonly captures(address_is_null) %2, ptr noundef writeonly captures(address_is_null) %3) local_unnamed_addr #5 {
bb.a:
  store i32 0, ptr %1, align 4, !tbaa !4
  %i.a = load ptr, ptr %0, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.c = load i8, ptr %i.b, align 1, !tbaa !31
  %.not = icmp eq i8 %i.c, 1
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val = load i32, ptr %i.d, align 8, !tbaa !35
  %i.e = icmp slt i32 %.val, 27
  br i1 %i.e, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !36   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.i = load i8, ptr %i.h, align 8, !tbaa !37
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 321
  %i.l = load i8, ptr %i.k, align 1, !tbaa !44
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not15 = icmp eq ptr %3, null
  br i1 %.not15, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 321
  %i.o = load i8, ptr %i.n, align 1, !tbaa !44
  %i.p = zext i8 %i.o to i64                      ; 2 uses
  store i64 %i.p, ptr %3, align 8, !tbaa !34
  %.not16 = icmp eq ptr %2, null
  br i1 %.not16, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 354
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2, ptr nonnull align 2 %i.q, i64 %i.p, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  store i32 1, ptr %1, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.a, %bb.b, %bb.h
  %.0 = phi i32 [ 0, %bb.h ], [ -28928, %bb.a ], [ -28928, %bb.b ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_ssl_session_copy(ptr noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %mbedtls_ssl_session_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45   ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %ssl_clear_peer_cert.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @mbedtls_x509_crt_free(ptr noundef nonnull %i.c) #25
end_hunk_0
begin_hunk_1_@mbedtls_ssl_conf_renegotiation_period
define void @mbedtls_ssl_conf_renegotiation_period(ptr noundef writeonly captures(none) initializes((352, 360)) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.b = load i64, ptr %1, align 1
  store i64 %i.b, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @mbedtls_ssl_conf_session_tickets(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !201
  %i.c = and i8 %i.b, -2
  %i.d = icmp ne i32 %1, 0
  %i.e = zext i1 %i.d to i8
  %i.f = or disjoint i8 %i.c, %i.e
  store i8 %i.f, ptr %i.a, align 1, !tbaa !201
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @mbedtls_ssl_conf_tls13_enable_signal_new_session_tickets(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !201
  %i.c = and i8 %i.b, -3
  %.not = icmp eq i32 %1, 0
  %i.d = select i1 %.not, i8 0, i8 2
  %i.e = or disjoint i8 %i.c, %i.d
  store i8 %i.e, ptr %i.a, align 1, !tbaa !201
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @mbedtls_ssl_conf_new_session_tickets(ptr noundef writeonly captures(none) initializes((18, 20)) %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %1, ptr %i.a, align 2, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @mbedtls_ssl_conf_session_tickets_cb(ptr noundef writeonly captures(none) initializes((168, 192)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %1, ptr %i.a, align 8, !tbaa !202
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %2, ptr %i.b, align 8, !tbaa !203
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %3, ptr %i.c, align 8, !tbaa !204
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @mbedtls_ssl_set_export_keys_cb(ptr noundef writeonly captures(none) initializes((544, 560)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 544
  store ptr %1, ptr %i.a, align 8, !tbaa !205
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 552
  store ptr %2, ptr %i.b, align 8, !tbaa !206
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @mbedtls_ssl_get_verify_result(ptr noundef readonly captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !125  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !89   ; 2 uses
  %.not6 = icmp eq ptr %i.d, null
  br i1 %.not6, label %bb.c, label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.a
  %.sink9 = phi ptr [ %i.b, %bb.a ], [ %i.d, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.sink9, i64 120
  %i.f = load i32, ptr %i.e, align 8, !tbaa !207
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ %i.f, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @mbedtls_ssl_get_ciphersuite_id_from_ssl(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !125  ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !153
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.f, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define ptr @mbedtls_ssl_get_ciphersuite(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !125  ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !153
  %i.g = tail call ptr @mbedtls_ssl_get_ciphersuite_name(i32 noundef %i.f) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.g, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare ptr @mbedtls_ssl_get_ciphersuite_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define nonnull ptr @mbedtls_ssl_get_version(ptr noundef readonly captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.c = load i8, ptr %i.b, align 1, !tbaa !31
  %i.d = icmp eq i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !85   ; 3 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %cond = icmp eq i32 %i.f, 771
  %.str.16..str.17 = select i1 %cond, ptr @.str.16, ptr @.str.17
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %switch.selectcmp = icmp eq i32 %i.f, 772
  %switch.select = select i1 %switch.selectcmp, ptr @.str.19, ptr @.str.20
  %switch.selectcmp4 = icmp eq i32 %i.f, 771
  %switch.select5 = select i1 %switch.selectcmp4, ptr @.str.18, ptr %switch.select
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %.str.16..str.17, %bb.b ], [ %switch.select5, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i64 512, 16385) i64 @mbedtls_ssl_get_input_max_frag_len(ptr noundef readonly captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !95
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !35
  %i.g = icmp sgt i32 %i.f, 5
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.i = load i8, ptr %i.h, align 4, !tbaa !197
  %switch.tableidx = add i8 %i.i, -1              ; 2 uses
  %i.j = icmp ult i8 %switch.tableidx, 4
  br i1 %i.j, label %switch.lookup, label %ssl_mfl_code_to_length.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !208  ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %ssl_mfl_code_to_length.exit22, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i8, ptr %i.l, align 8, !tbaa !209
  %switch.tableidx29 = add i8 %i.m, -1            ; 2 uses
  %i.n = icmp ult i8 %switch.tableidx29, 4
  br i1 %i.n, label %switch.lookup30, label %ssl_mfl_code_to_length.exit22

switch.lookup30:                                  ; preds = %bb.e
  %i.o = zext nneg i8 %switch.tableidx29 to i64
  %switch.gep31 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.mbedtls_ssl_get_input_max_frag_len.24, i64 %i.o
  %switch.load32 = load i64, ptr %switch.gep31, align 8
  br label %ssl_mfl_code_to_length.exit22

ssl_mfl_code_to_length.exit22:                    ; preds = %switch.lookup30, %bb.e, %bb.d
  %.0 = phi i64 [ 16384, %bb.d ], [ 16384, %bb.e ], [ %switch.load32, %switch.lookup30 ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !89   ; 2 uses
  %.not19 = icmp eq ptr %i.q, null
  br i1 %.not19, label %ssl_mfl_code_to_length.exit, label %bb.f

bb.f:                                             ; preds = %ssl_mfl_code_to_length.exit22
  %i.r = load i8, ptr %i.q, align 8, !tbaa !209
  %switch.tableidx33 = add i8 %i.r, -1            ; 2 uses
  %i.s = icmp ult i8 %switch.tableidx33, 4
  br i1 %i.s, label %switch.lookup34, label %ssl_mfl_code_to_length.exit24

switch.lookup34:                                  ; preds = %bb.f
  %i.t = zext nneg i8 %switch.tableidx33 to i64
  %switch.gep35 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.mbedtls_ssl_get_input_max_frag_len.24, i64 %i.t
  %switch.load36 = load i64, ptr %switch.gep35, align 8
  br label %ssl_mfl_code_to_length.exit24

ssl_mfl_code_to_length.exit24:                    ; preds = %bb.f, %switch.lookup34
  %.0.i23 = phi i64 [ %switch.load36, %switch.lookup34 ], [ 16384, %bb.f ]
  %spec.select20 = tail call i64 @llvm.umin.i64(i64 %.0, i64 %.0.i23)
  br label %ssl_mfl_code_to_length.exit

switch.lookup:                                    ; preds = %bb.c
  %i.u = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.mbedtls_ssl_get_input_max_frag_len.24, i64 %i.u
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %ssl_mfl_code_to_length.exit

ssl_mfl_code_to_length.exit:                      ; preds = %bb.c, %switch.lookup, %ssl_mfl_code_to_length.exit24, %ssl_mfl_code_to_length.exit22
  %.014 = phi i64 [ %spec.select20, %ssl_mfl_code_to_length.exit24 ], [ %.0, %ssl_mfl_code_to_length.exit22 ], [ %switch.load, %switch.lookup ], [ 16384, %bb.c ]
  ret i64 %.014
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i64 512, 16385) i64 @mbedtls_ssl_get_output_max_frag_len(ptr noundef readonly captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.c = load i8, ptr %i.b, align 4, !tbaa !197
  %switch.tableidx = add i8 %i.c, -1              ; 2 uses
  %i.d = icmp ult i8 %switch.tableidx, 4
  br i1 %i.d, label %switch.lookup, label %ssl_mfl_code_to_length.exit

switch.lookup:                                    ; preds = %bb.a
  %i.e = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.mbedtls_ssl_get_max_in_record_payload.34, i64 %i.e
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %ssl_mfl_code_to_length.exit

ssl_mfl_code_to_length.exit:                      ; preds = %bb.a, %switch.lookup
  %.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 16384, %bb.a ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !208  ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %ssl_mfl_code_to_length.exit16, label %bb.b

bb.b:                                             ; preds = %ssl_mfl_code_to_length.exit
  %i.h = load i8, ptr %i.g, align 8, !tbaa !209   ; 2 uses
  %switch.tableidx25 = add i8 %i.h, -1            ; 2 uses
  %i.i = icmp ult i8 %switch.tableidx25, 4
  br i1 %i.i, label %switch.lookup26, label %ssl_mfl_code_to_length.exit16

switch.lookup26:                                  ; preds = %bb.b
  %i.j = zext nneg i8 %switch.tableidx25 to i64
  %switch.gep27 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.mbedtls_ssl_get_max_in_record_payload.34, i64 %i.j
  %switch.load28 = load i32, ptr %switch.gep27, align 4
  %i.k = icmp samesign ult i32 %switch.load28, %.0.i
  br i1 %i.k, label %switch.lookup30, label %ssl_mfl_code_to_length.exit16

switch.lookup30:                                  ; preds = %switch.lookup26
  %i.l = zext nneg i8 %i.h to i64
  %i.m = getelementptr [4 x i8], ptr @switch.table.mbedtls_ssl_get_max_in_record_payload.34, i64 %i.l
  %switch.gep31 = getelementptr i8, ptr %i.m, i64 -4
  %switch.load32 = load i32, ptr %switch.gep31, align 4
  br label %ssl_mfl_code_to_length.exit16

ssl_mfl_code_to_length.exit16:                    ; preds = %switch.lookup30, %bb.b, %switch.lookup26, %ssl_mfl_code_to_length.exit
  %.0.in = phi i32 [ %switch.load32, %switch.lookup30 ], [ %.0.i, %switch.lookup26 ], [ %.0.i, %ssl_mfl_code_to_length.exit ], [ %.0.i, %bb.b ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !89   ; 2 uses
  %.not12 = icmp eq ptr %i.o, null
  br i1 %.not12, label %ssl_mfl_code_to_length.exit20, label %bb.c

bb.c:                                             ; preds = %ssl_mfl_code_to_length.exit16
  %i.p = load i8, ptr %i.o, align 8, !tbaa !209   ; 2 uses
  %switch.tableidx33 = add i8 %i.p, -1            ; 2 uses
  %i.q = icmp ult i8 %switch.tableidx33, 4
  br i1 %i.q, label %switch.lookup34, label %ssl_mfl_code_to_length.exit20

switch.lookup34:                                  ; preds = %bb.c
  %i.r = zext nneg i8 %switch.tableidx33 to i64
  %switch.gep35 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.mbedtls_ssl_get_max_in_record_payload.34, i64 %i.r
  %switch.load36 = load i32, ptr %switch.gep35, align 4
  %i.s = icmp samesign ult i32 %switch.load36, %.0.in
  br i1 %i.s, label %switch.lookup38, label %ssl_mfl_code_to_length.exit20

switch.lookup38:                                  ; preds = %switch.lookup34
  %i.t = zext nneg i8 %i.p to i64
  %i.u = getelementptr [4 x i8], ptr @switch.table.mbedtls_ssl_get_max_in_record_payload.34, i64 %i.t
  %switch.gep39 = getelementptr i8, ptr %i.u, i64 -4
  %switch.load40 = load i32, ptr %switch.gep39, align 4
  br label %ssl_mfl_code_to_length.exit20

ssl_mfl_code_to_length.exit20:                    ; preds = %switch.lookup38, %bb.c, %switch.lookup34, %ssl_mfl_code_to_length.exit16
  %.1.in = phi i32 [ %switch.load40, %switch.lookup38 ], [ %.0.in, %switch.lookup34 ], [ %.0.in, %ssl_mfl_code_to_length.exit16 ], [ %.0.in, %bb.c ]
  %.1 = zext nneg i32 %.1.in to i64
  ret i64 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i64 0, 65536) i64 @mbedtls_ssl_get_current_mtu(ptr noundef readonly captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !95
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !35
  %.off = add i32 %i.f, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1978
  %i.k = load i16, ptr %i.j, align 2, !tbaa !210  ; 3 uses
  %i.l = icmp eq i16 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.n = load i16, ptr %i.m, align 8, !tbaa !143
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.p = load i16, ptr %i.o, align 8, !tbaa !143  ; 2 uses
  %i.q = icmp eq i16 %i.p, 0
  br i1 %i.q, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %. = tail call i16 @llvm.umin.i16(i16 %i.p, i16 %i.k)
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.f, %bb.g, %bb.e
  %.0.shrunk = phi i16 [ %., %bb.g ], [ %i.n, %bb.e ], [ %i.k, %bb.f ], [ 0, %bb.b ]
  %.0 = zext i16 %.0.shrunk to i64
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 16385) i32 @mbedtls_ssl_get_max_out_record_payload(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.c = load i8, ptr %i.b, align 4, !tbaa !197
  %switch.tableidx = add i8 %i.c, -1              ; 2 uses
  %i.d = icmp ult i8 %switch.tableidx, 4
  br i1 %i.d, label %switch.lookup, label %ssl_mfl_code_to_length.exit.i

switch.lookup:                                    ; preds = %bb.a
  %i.e = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.mbedtls_ssl_get_max_in_record_payload.34, i64 %i.e
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %ssl_mfl_code_to_length.exit.i

ssl_mfl_code_to_length.exit.i:                    ; preds = %bb.a, %switch.lookup
  %.0.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 16384, %bb.a ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !208  ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %ssl_mfl_code_to_length.exit16.i, label %bb.b

bb.b:                                             ; preds = %ssl_mfl_code_to_length.exit.i
  %i.h = load i8, ptr %i.g, align 8, !tbaa !209   ; 2 uses
  %switch.tableidx55 = add i8 %i.h, -1            ; 2 uses
  %i.i = icmp ult i8 %switch.tableidx55, 4
  br i1 %i.i, label %switch.lookup56, label %ssl_mfl_code_to_length.exit16.i

switch.lookup56:                                  ; preds = %bb.b
  %i.j = zext nneg i8 %switch.tableidx55 to i64
  %switch.gep57 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.mbedtls_ssl_get_max_in_record_payload.34, i64 %i.j
  %switch.load58 = load i32, ptr %switch.gep57, align 4
  %i.k = icmp samesign ult i32 %switch.load58, %.0.i.i
  br i1 %i.k, label %switch.lookup60, label %ssl_mfl_code_to_length.exit16.i

switch.lookup60:                                  ; preds = %switch.lookup56
  %i.l = zext nneg i8 %i.h to i64
  %i.m = getelementptr [4 x i8], ptr @switch.table.mbedtls_ssl_get_max_in_record_payload.34, i64 %i.l
  %switch.gep61 = getelementptr i8, ptr %i.m, i64 -4
  %switch.load62 = load i32, ptr %switch.gep61, align 4
  br label %ssl_mfl_code_to_length.exit16.i

ssl_mfl_code_to_length.exit16.i:                  ; preds = %switch.lookup60, %bb.b, %switch.lookup56, %ssl_mfl_code_to_length.exit.i
  %.0.in.i = phi i32 [ %switch.load62, %switch.lookup60 ], [ %.0.i.i, %switch.lookup56 ], [ %.0.i.i, %ssl_mfl_code_to_length.exit.i ], [ %.0.i.i, %bb.b ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !89   ; 2 uses
  %.not12.i = icmp eq ptr %i.o, null
  br i1 %.not12.i, label %mbedtls_ssl_get_output_max_frag_len.exit, label %bb.c

bb.c:                                             ; preds = %ssl_mfl_code_to_length.exit16.i
  %i.p = load i8, ptr %i.o, align 8, !tbaa !209   ; 2 uses
  %switch.tableidx63 = add i8 %i.p, -1            ; 2 uses
  %i.q = icmp ult i8 %switch.tableidx63, 4
  br i1 %i.q, label %switch.lookup64, label %mbedtls_ssl_get_output_max_frag_len.exit

switch.lookup64:                                  ; preds = %bb.c
  %i.r = zext nneg i8 %switch.tableidx63 to i64
  %switch.gep65 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.mbedtls_ssl_get_max_in_record_payload.34, i64 %i.r
  %switch.load66 = load i32, ptr %switch.gep65, align 4
  %i.s = icmp samesign ult i32 %switch.load66, %.0.in.i
  br i1 %i.s, label %switch.lookup68, label %mbedtls_ssl_get_output_max_frag_len.exit

switch.lookup68:                                  ; preds = %switch.lookup64
  %i.t = zext nneg i8 %i.p to i64
  %i.u = getelementptr [4 x i8], ptr @switch.table.mbedtls_ssl_get_max_in_record_payload.34, i64 %i.t
  %switch.gep69 = getelementptr i8, ptr %i.u, i64 -4
  %switch.load70 = load i32, ptr %switch.gep69, align 4
  br label %mbedtls_ssl_get_output_max_frag_len.exit

mbedtls_ssl_get_output_max_frag_len.exit:         ; preds = %switch.lookup68, %bb.c, %ssl_mfl_code_to_length.exit16.i, %switch.lookup64
  %.1.in.i = phi i32 [ %switch.load70, %switch.lookup68 ], [ %.0.in.i, %switch.lookup64 ], [ %.0.in.i, %ssl_mfl_code_to_length.exit16.i ], [ %.0.in.i, %bb.c ]
  %spec.select = zext nneg i32 %.1.in.i to i64    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !93   ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %mbedtls_ssl_get_output_max_frag_len.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 124
  %i.y = load i32, ptr %i.x, align 4, !tbaa !211
  %i.z = icmp eq i32 %i.y, 772
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = and i64 %spec.select, 32752
  %i.ab = add nsw i64 %i.aa, -1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %mbedtls_ssl_get_output_max_frag_len.exit
  %.125 = phi i64 [ %i.ab, %bb.e ], [ %spec.select, %bb.d ], [ %spec.select, %mbedtls_ssl_get_output_max_frag_len.exit ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !95
  %i.ae = icmp eq i8 %i.ad, 0                     ; 2 uses
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !35
  %.off.i = add i32 %i.ag, -1
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %mbedtls_ssl_get_current_mtu.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !70 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  br i1 %i.aj, label %mbedtls_ssl_get_current_mtu.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 1978
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !210
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %mbedtls_ssl_get_current_mtu.exit, label %.critedge

mbedtls_ssl_get_current_mtu.exit:                 ; preds = %bb.i, %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ao = load i16, ptr %i.an, align 8, !tbaa !143
  %i.ap = icmp eq i16 %i.ao, 0
  br i1 %i.ap, label %mbedtls_ssl_get_current_mtu.exit.thread, label %.critedge

.critedge:                                        ; preds = %bb.i, %mbedtls_ssl_get_current_mtu.exit
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !35
  %.off.i38 = add i32 %i.ar, -1
  %switch.i39 = icmp ult i32 %.off.i38, 2
  br i1 %switch.i39, label %mbedtls_ssl_get_current_mtu.exit40, label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge
  br i1 %i.aj, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 1978
  %i.at = load i16, ptr %i.as, align 2, !tbaa !210 ; 3 uses
  %i.au = icmp eq i16 %i.at, 0
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.aw = load i16, ptr %i.av, align 8, !tbaa !143
  br label %mbedtls_ssl_get_current_mtu.exit40

bb.n:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ay = load i16, ptr %i.ax, align 8, !tbaa !143 ; 2 uses
  %i.az = icmp eq i16 %i.ay, 0
  br i1 %i.az, label %mbedtls_ssl_get_current_mtu.exit40, label %bb.o

bb.o:                                             ; preds = %bb.n
  %..i35 = tail call i16 @llvm.umin.i16(i16 %i.ay, i16 %i.at)
  br label %mbedtls_ssl_get_current_mtu.exit40

mbedtls_ssl_get_current_mtu.exit40:               ; preds = %bb.j, %bb.m, %bb.n, %bb.o
  %.0.shrunk.i36 = phi i16 [ %..i35, %bb.o ], [ %i.aw, %bb.m ], [ %i.at, %bb.n ], [ 0, %bb.j ]
  %.0.i37 = zext i16 %.0.shrunk.i36 to i64        ; 2 uses
  %i.ba = tail call i32 @mbedtls_ssl_get_record_expansion(ptr noundef nonnull %0) #25 ; 3 uses
  %i.bb = sext i32 %i.ba to i64                   ; 2 uses
  %i.bc = icmp slt i32 %i.ba, 0
  br i1 %i.bc, label %.thread, label %bb.p

bb.p:                                             ; preds = %mbedtls_ssl_get_current_mtu.exit40
  %.not33 = icmp samesign ugt i64 %.0.i37, %i.bb
  br i1 %.not33, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 3354, ptr noundef nonnull @.str.21) #25
  br label %.thread

bb.r:                                             ; preds = %bb.p
  %i.bd = sub nuw nsw i64 %.0.i37, %i.bb
  %spec.select34 = tail call i64 @llvm.umin.i64(i64 %.125, i64 %i.bd)
  br label %mbedtls_ssl_get_current_mtu.exit.thread

mbedtls_ssl_get_current_mtu.exit.thread:          ; preds = %bb.g, %bb.r, %mbedtls_ssl_get_current_mtu.exit
  %.4 = phi i64 [ %spec.select34, %bb.r ], [ %.125, %mbedtls_ssl_get_current_mtu.exit ], [ %.125, %bb.g ]
  %i.be = trunc nuw nsw i64 %.4 to i32
  br label %.thread

.thread:                                          ; preds = %mbedtls_ssl_get_current_mtu.exit40, %bb.q, %mbedtls_ssl_get_current_mtu.exit.thread
  %.1 = phi i32 [ %i.be, %mbedtls_ssl_get_current_mtu.exit.thread ], [ %i.ba, %mbedtls_ssl_get_current_mtu.exit40 ], [ -28800, %bb.q ]
  ret i32 %.1
}

declare i32 @mbedtls_ssl_get_record_expansion(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 512, 16385) i32 @mbedtls_ssl_get_max_in_record_payload(ptr noundef readonly captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !95
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !35
  %i.g = icmp sgt i32 %i.f, 5
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.i = load i8, ptr %i.h, align 4, !tbaa !197
  %switch.tableidx = add i8 %i.i, -1              ; 2 uses
  %i.j = icmp ult i8 %switch.tableidx, 4
  br i1 %i.j, label %switch.lookup, label %mbedtls_ssl_get_input_max_frag_len.exit.thread7

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !208  ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %ssl_mfl_code_to_length.exit22.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i8, ptr %i.l, align 8, !tbaa !209
  %switch.tableidx12 = add i8 %i.m, -1            ; 2 uses
  %i.n = icmp ult i8 %switch.tableidx12, 4
  br i1 %i.n, label %switch.lookup13, label %ssl_mfl_code_to_length.exit22.i

switch.lookup13:                                  ; preds = %bb.e
  %i.o = zext nneg i8 %switch.tableidx12 to i64
  %switch.gep14 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.mbedtls_ssl_get_max_in_record_payload.34, i64 %i.o
  %switch.load15 = load i32, ptr %switch.gep14, align 4
  br label %ssl_mfl_code_to_length.exit22.i

ssl_mfl_code_to_length.exit22.i:                  ; preds = %switch.lookup13, %bb.e, %bb.d
  %.0.i = phi i32 [ 16384, %bb.d ], [ 16384, %bb.e ], [ %switch.load15, %switch.lookup13 ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !89   ; 2 uses
  %.not19.i = icmp eq ptr %i.q, null
  br i1 %.not19.i, label %mbedtls_ssl_get_input_max_frag_len.exit.thread7, label %bb.f

bb.f:                                             ; preds = %ssl_mfl_code_to_length.exit22.i
  %i.r = load i8, ptr %i.q, align 8, !tbaa !209
  %switch.tableidx16 = add i8 %i.r, -1            ; 2 uses
  %i.s = icmp ult i8 %switch.tableidx16, 4
  br i1 %i.s, label %switch.lookup17, label %mbedtls_ssl_get_input_max_frag_len.exit

switch.lookup17:                                  ; preds = %bb.f
  %i.t = zext nneg i8 %switch.tableidx16 to i64
  %switch.gep18 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.mbedtls_ssl_get_max_in_record_payload.34, i64 %i.t
  %switch.load19 = load i32, ptr %switch.gep18, align 4
  br label %mbedtls_ssl_get_input_max_frag_len.exit

mbedtls_ssl_get_input_max_frag_len.exit:          ; preds = %bb.f, %switch.lookup17
  %.0.i23.i = phi i32 [ %switch.load19, %switch.lookup17 ], [ 16384, %bb.f ]
  %spec.select20.i = tail call i32 @llvm.umin.i32(i32 %.0.i, i32 %.0.i23.i)
  br label %mbedtls_ssl_get_input_max_frag_len.exit.thread7

switch.lookup:                                    ; preds = %bb.c
  %i.u = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.mbedtls_ssl_get_max_in_record_payload.34, i64 %i.u
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %mbedtls_ssl_get_input_max_frag_len.exit.thread7

mbedtls_ssl_get_input_max_frag_len.exit.thread7:  ; preds = %switch.lookup, %bb.c, %mbedtls_ssl_get_input_max_frag_len.exit, %ssl_mfl_code_to_length.exit22.i
  %1 = phi i32 [ 16384, %bb.c ], [ %spec.select20.i, %mbedtls_ssl_get_input_max_frag_len.exit ], [ %switch.load, %switch.lookup ], [ %.0.i, %ssl_mfl_code_to_length.exit22.i ]
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @mbedtls_ssl_get_peer_cert(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !125  ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_ssl_get_session(ptr noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !125  ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i8, ptr %i.g, align 8, !tbaa !95
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !212
  %i.k = icmp eq i8 %i.j, 1
  br i1 %i.k, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call i32 @mbedtls_ssl_session_copy(ptr noundef nonnull %1, ptr noundef nonnull %i.d) ; 2 uses
  %.not15 = icmp eq i32 %i.l, 0
  br i1 %.not15, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !125
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store i8 1, ptr %i.n, align 1, !tbaa !212
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.a, %bb.b, %bb.c, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ -28928, %bb.a ], [ -28800, %bb.d ], [ -28928, %bb.c ], [ -28928, %bb.b ], [ %i.l, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -28928, 1) i32 @mbedtls_ssl_session_save(ptr noundef readonly captures(address_is_null) %0, ptr noundef writeonly captures(none) %1, i64 noundef %2, ptr noundef writeonly captures(none) %3) local_unnamed_addr #18 {
bb.a:
  %i.a = tail call fastcc i32 @ssl_session_save(ptr noundef %0, i8 noundef zeroext 0, ptr noundef %1, i64 noundef %2, ptr noundef %3)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -28928, 1) i32 @ssl_session_save(ptr noundef readonly captures(address_is_null) %0, i8 noundef zeroext range(i8 0, 2) %1, ptr noundef writeonly captures(none) %2, i64 noundef %3, ptr noundef writeonly captures(none) %4) unnamed_addr #18 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ssl_tls13_session_save.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i8 %1, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ugt i64 %3, 4
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %2, ptr noundef nonnull align 1 dereferenceable(5) @ssl_serialized_session_header, i64 5, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 5
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.040 = phi ptr [ %2, %bb.b ], [ %i.c, %bb.d ], [ %2, %bb.c ] ; 5 uses
  %.039 = phi i64 [ 4, %bb.b ], [ 9, %bb.d ], [ 9, %bb.c ] ; 3 uses
  %.not44 = icmp ugt i64 %.039, %3
  br i1 %.not44, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !152
  %i.f = trunc i32 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %.040, i64 1
  store i8 %i.f, ptr %.040, align 1, !tbaa !80
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.i = load i8, ptr %i.h, align 2, !tbaa !63
  %i.j = getelementptr inbounds nuw i8, ptr %.040, i64 2
  store i8 %i.i, ptr %i.g, align 1, !tbaa !80
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !153
  %i.m = trunc i32 %i.l to i16
  %i.n = tail call i16 @llvm.bswap.i16(i16 %i.m)
  store i16 %i.n, ptr %i.j, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %.040, i64 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.141 = phi ptr [ %i.o, %bb.f ], [ %.040, %bb.e ] ; 11 uses
  %i.p = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %.039) ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !152
  switch i32 %i.r, label %ssl_tls13_session_save.exit [
    i32 771, label %bb.h
    i32 772, label %bb.y
  ]

bb.h:                                             ; preds = %bb.g
  %i.s = icmp ugt i64 %i.p, 7
  br i1 %i.s, label %bb.i, label %.thread.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !213
  %i.v = tail call i64 @llvm.bswap.i64(i64 %i.u)
  store i64 %i.v, ptr %.141, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %.141, i64 8 ; 2 uses
  %i.x = icmp ugt i64 %i.p, 92
  br i1 %i.x, label %bb.j, label %.thread.i

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !214
  %i.aa = trunc i64 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %.141, i64 9
  store i8 %i.aa, ptr %i.w, align 1, !tbaa !80
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ab, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ac, i64 32, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.141, i64 41
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.ad, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ae, i64 48, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.141, i64 89
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !207
  %i.ai = tail call i32 @llvm.bswap.i32(i32 %i.ah)
  store i32 %i.ai, ptr %i.af, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.141, i64 93
  br label %.thread.i

.thread.i:                                        ; preds = %bb.j, %bb.i, %bb.h
  %.1.i = phi ptr [ %i.aj, %bb.j ], [ %i.w, %bb.i ], [ %.141, %bb.h ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !45 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.thread.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !61
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread.i
  %.0.i = phi i64 [ %i.ao, %bb.k ], [ 0, %.thread.i ] ; 7 uses
  %i.ap = add i64 %.0.i, 96                       ; 2 uses
  %.not.i = icmp ugt i64 %i.ap, %i.p
  br i1 %.not.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = lshr i64 %.0.i, 16
  %i.ar = trunc i64 %i.aq to i8
  %i.as = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  store i8 %i.ar, ptr %.1.i, align 1, !tbaa !80
  %i.at = lshr i64 %.0.i, 8
  %i.au = trunc i64 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %.1.i, i64 2
  store i8 %i.au, ptr %i.as, align 1, !tbaa !80
  %i.aw = trunc i64 %.0.i to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %.1.i, i64 3 ; 3 uses
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !80
  %i.ay = load ptr, ptr %i.ak, align 8, !tbaa !45 ; 2 uses
  %.not87.i = icmp eq ptr %i.ay, null
  br i1 %.not87.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !50
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr align 1 %i.ba, i64 %.0.i, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.0.i
  br label %bb.o
end_hunk_1
begin_hunk_2_@tls_prf_generic:bb.a

bb.k:                                             ; preds = %bb.j
  %i.v = call i32 @mbedtls_md_hmac_finish(ptr noundef nonnull %9, ptr noundef nonnull %i.h) #25 ; 2 uses
  %.not90 = icmp eq i32 %i.v, 0
  br i1 %.not90, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.w = add i64 %.06498, %i.e                    ; 3 uses
  %i.x = icmp ugt i64 %i.w, %8
  br i1 %i.x, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.y = urem i64 %8, %i.e
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.z = phi i64 [ %i.y, %bb.m ], [ %i.e, %bb.l ] ; 2 uses
  %.not103 = icmp eq i64 %i.z, 0
  br i1 %.not103, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep, ptr nonnull align 16 %i.a, i64 %i.z, i1 false), !tbaa !80
  br label %.loopexit

.thread:                                          ; preds = %.loopexit, %.lr.ph99, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %.preheader, %bb.c, %bb.d, %bb.e, %bb.f
  %.193 = phi i32 [ 0, %.preheader ], [ %i.l, %bb.c ], [ %i.o, %bb.f ], [ %i.n, %bb.e ], [ %i.m, %bb.d ], [ %i.v, %bb.k ], [ %i.r, %bb.g ], [ %i.s, %bb.h ], [ %i.t, %bb.i ], [ %i.u, %bb.j ], [ 0, %.loopexit ], [ %i.q, %.lr.ph99 ]
  call void @mbedtls_md_free(ptr noundef nonnull %9) #25
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.h, i64 noundef %i.g) #25
  br label %bb.o

bb.o:                                             ; preds = %.thread95, %.thread
  %.194 = phi i32 [ %.193, %.thread ], [ -32512, %.thread95 ]
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.a, i64 noundef 64) #25
  call void @free(ptr noundef %i.h) #25
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.o
  %.063 = phi i32 [ %.194, %bb.o ], [ -27648, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i32 %.063
}

declare i32 @mbedtls_md_hmac_starts(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @mbedtls_md_hmac_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @mbedtls_md_hmac_finish(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @mbedtls_md_hmac_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @ssl_calc_finished_tls_sha384(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2008
  %i.e = call fastcc i32 @ssl_calc_finished_tls_generic(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef %i.a, i64 noundef 48, ptr noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define internal i32 @ssl_calc_finished_tls_sha256(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1984
  %i.e = call fastcc i32 @ssl_calc_finished_tls_generic(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef %i.a, i64 noundef 32, ptr noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ssl_calc_finished_tls_generic(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef range(i64 32, 49) %3, ptr noundef %4, i32 noundef %5) unnamed_addr #1 {
bb.a:
  %6 = alloca %struct.mbedtls_md_context_t, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @mbedtls_md_init(ptr noundef nonnull %6) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !125
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.b, %bb.a ], [ %i.d, %bb.b ]
  %i.e = icmp eq i32 %5, 0
  %i.f = select i1 %i.e, ptr @.str.178, ptr @.str.179
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 8200, ptr noundef nonnull @.str.180) #25
  %i.g = call ptr @mbedtls_md_info_from_ctx(ptr noundef %1) #25
  %i.h = call i32 @mbedtls_md_setup(ptr noundef nonnull %6, ptr noundef %i.g, i32 noundef 0) #25 ; 2 uses
  %.not33 = icmp eq i32 %i.h, 0
  br i1 %.not33, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = call i32 @mbedtls_md_clone(ptr noundef nonnull %6, ptr noundef %1) #25 ; 2 uses
  %.not34 = icmp eq i32 %i.i, 0
  br i1 %.not34, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.j = call i32 @mbedtls_md_finish(ptr noundef nonnull %6, ptr noundef nonnull %2) #25 ; 2 uses
  %.not35 = icmp eq i32 %i.j, 0
  br i1 %.not35, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @mbedtls_debug_print_buf(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef 8217, ptr noundef nonnull @.str.181, ptr noundef nonnull %2, i64 noundef %3) #25
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !70
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !254
  %i.o = getelementptr inbounds nuw i8, ptr %.0, i64 64
  %i.p = call i32 %i.n(ptr noundef nonnull %i.o, i64 noundef 48, ptr noundef nonnull %i.f, ptr noundef nonnull %2, i64 noundef %3, ptr noundef %4, i64 noundef 12) #25 ; 0 uses
  call void @mbedtls_debug_print_buf(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 8227, ptr noundef nonnull @.str.182, ptr noundef %4, i64 noundef 12) #25
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %2, i64 noundef %3) #25
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 8231, ptr noundef nonnull @.str.183) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.f
  %.028 = phi i32 [ %i.h, %bb.c ], [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ 0, %bb.f ]
  call void @mbedtls_md_free(ptr noundef nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret i32 %.028
}

declare ptr @mbedtls_md_info_from_ctx(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ssl_calc_verify_tls_legacy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef writeonly captures(none) %3) unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.mbedtls_md_context_t, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @mbedtls_md_init(ptr noundef nonnull %4) #25
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 7354, ptr noundef nonnull @.str.191) #25
  %i.a = call ptr @mbedtls_md_info_from_ctx(ptr noundef %1) #25
  %i.b = call i32 @mbedtls_md_setup(ptr noundef nonnull %4, ptr noundef %i.a, i32 noundef 0) #25 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 @mbedtls_md_clone(ptr noundef nonnull %4, ptr noundef %1) #25 ; 2 uses
  %.not16 = icmp eq i32 %i.c, 0
  br i1 %.not16, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = call i32 @mbedtls_md_finish(ptr noundef nonnull %4, ptr noundef %2) #25 ; 2 uses
  %.not17 = icmp eq i32 %i.d, 0
  br i1 %.not17, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = call ptr @mbedtls_md_info_from_ctx(ptr noundef %1) #25
  %i.f = call zeroext i8 @mbedtls_md_get_size(ptr noundef %i.e) #25
  %i.g = zext i8 %i.f to i64                      ; 2 uses
  store i64 %i.g, ptr %3, align 8, !tbaa !34
  call void @mbedtls_debug_print_buf(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 7372, ptr noundef nonnull @.str.192, ptr noundef %2, i64 noundef %i.g) #25
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 7373, ptr noundef nonnull @.str.193) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ %i.b, %bb.a ], [ %i.c, %bb.b ], [ %i.d, %bb.c ], [ 0, %bb.d ]
  call void @mbedtls_md_free(ptr noundef nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret i32 %.0
}

declare i32 @mbedtls_ssl_write_handshake_msg_ext(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @mbedtls_cipher_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @mbedtls_cipher_setkey(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @mbedtls_cipher_set_padding_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @mbedtls_pk_get_type(ptr noundef) local_unnamed_addr #2

declare i32 @mbedtls_ssl_tls13_exporter(i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #19

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr captures(none)) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #24

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { inlinehint nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nounwind }
attributes #26 = { nounwind allocsize(0,1) }
attributes #27 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !6, i64 22}
!9 = !{!"mbedtls_ssl_config", !5, i64 0, !5, i64 4, !6, i64 8, !6, i64 9, !6, i64 10, !6, i64 11, !6, i64 12, !6, i64 13, !6, i64 14, !6, i64 15, !6, i64 16, !6, i64 17, !10, i64 18, !6, i64 20, !6, i64 21, !6, i64 22, !11, i64 24, !5, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !13, i64 192, !14, i64 200, !15, i64 208, !16, i64 216, !17, i64 224, !11, i64 232, !18, i64 240, !12, i64 248, !18, i64 256, !19, i64 264, !19, i64 280, !21, i64 296, !13, i64 304, !21, i64 312, !13, i64 320, !22, i64 328, !5, i64 336, !5, i64 340, !5, i64 344, !5, i64 348, !6, i64 352, !5, i64 360, !5, i64 364, !6, i64 368, !12, i64 376, !16, i64 384}
!10 = !{!"short", !6, i64 0}
!11 = !{!"p1 int", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"p1 _ZTS24mbedtls_x509_crt_profile", !12, i64 0}
!15 = !{!"p1 _ZTS20mbedtls_ssl_key_cert", !12, i64 0}
!16 = !{!"p1 _ZTS16mbedtls_x509_crt", !12, i64 0}
!17 = !{!"p1 _ZTS16mbedtls_x509_crl", !12, i64 0}
!18 = !{!"p1 short", !12, i64 0}
!19 = !{!"mbedtls_mpi", !20, i64 0, !10, i64 8, !10, i64 10}
!20 = !{!"p1 long", !12, i64 0}
!21 = !{!"p1 omnipotent char", !12, i64 0}
!22 = !{!"p2 omnipotent char", !23, i64 0}
!23 = !{!"any p2 pointer", !12, i64 0}
!24 = !{!9, !13, i64 192}
!25 = !{!26, !27, i64 0}
!26 = !{!"mbedtls_ssl_context", !27, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !28, i64 80, !28, i64 88, !28, i64 96, !28, i64 104, !29, i64 112, !30, i64 120, !30, i64 128, !30, i64 136, !30, i64 144, !30, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !21, i64 184, !21, i64 192, !21, i64 200, !21, i64 208, !21, i64 216, !21, i64 224, !21, i64 232, !21, i64 240, !5, i64 248, !13, i64 256, !13, i64 264, !10, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !5, i64 312, !5, i64 316, !6, i64 320, !6, i64 321, !5, i64 324, !6, i64 328, !21, i64 336, !21, i64 344, !21, i64 352, !21, i64 360, !21, i64 368, !21, i64 376, !21, i64 384, !5, i64 392, !13, i64 400, !13, i64 408, !6, i64 416, !10, i64 424, !21, i64 432, !21, i64 440, !21, i64 448, !13, i64 456, !5, i64 464, !13, i64 472, !6, i64 480, !6, i64 492, !6, i64 504, !6, i64 536, !6, i64 537, !12, i64 544, !12, i64 552, !6, i64 560}
!27 = !{!"p1 _ZTS18mbedtls_ssl_config", !12, i64 0}
!28 = !{!"p1 _ZTS19mbedtls_ssl_session", !12, i64 0}
!29 = !{!"p1 _ZTS28mbedtls_ssl_handshake_params", !12, i64 0}
!30 = !{!"p1 _ZTS21mbedtls_ssl_transform", !12, i64 0}
!31 = !{!9, !6, i64 9}
!32 = !{!26, !6, i64 537}
!33 = !{!26, !6, i64 536}
!34 = !{!13, !13, i64 0}
!35 = !{!26, !5, i64 8}
!36 = !{!26, !30, i64 120}
!37 = !{!38, !6, i64 320}
!38 = !{!"mbedtls_ssl_transform", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !6, i64 40, !6, i64 56, !39, i64 72, !39, i64 96, !5, i64 120, !5, i64 124, !41, i64 128, !41, i64 224, !6, i64 320, !6, i64 321, !6, i64 322, !6, i64 354, !6, i64 386}
!39 = !{!"mbedtls_md_context_t", !40, i64 0, !12, i64 8, !12, i64 16}
!40 = !{!"p1 _ZTS17mbedtls_md_info_t", !12, i64 0}
!41 = !{!"mbedtls_cipher_context_t", !42, i64 0, !5, i64 8, !5, i64 12, !12, i64 16, !12, i64 24, !6, i64 32, !13, i64 48, !6, i64 56, !13, i64 72, !12, i64 80, !43, i64 88}
!42 = !{!"p1 _ZTS21mbedtls_cipher_info_t", !12, i64 0}
!43 = !{!"p1 _ZTS22mbedtls_cmac_context_t", !12, i64 0}
!44 = !{!38, !6, i64 321}
!45 = !{!46, !16, i64 112}
!46 = !{!"mbedtls_ssl_session", !6, i64 0, !6, i64 1, !6, i64 2, !5, i64 4, !13, i64 8, !5, i64 16, !13, i64 24, !6, i64 32, !6, i64 64, !16, i64 112, !5, i64 120, !21, i64 128, !13, i64 136, !5, i64 144, !13, i64 152, !5, i64 160, !6, i64 164, !6, i64 165, !6, i64 166, !21, i64 216, !13, i64 224, !5, i64 232, !47, i64 236}
!47 = !{!"", !6, i64 0, !6, i64 64, !6, i64 128, !6, i64 192}
!48 = !{!46, !21, i64 216}
!49 = !{!46, !21, i64 128}
!50 = !{!51, !21, i64 24}
!51 = !{!"mbedtls_x509_crt", !5, i64 0, !52, i64 8, !52, i64 32, !5, i64 56, !52, i64 64, !52, i64 88, !52, i64 112, !52, i64 136, !53, i64 160, !53, i64 224, !55, i64 288, !55, i64 312, !52, i64 336, !56, i64 360, !52, i64 376, !52, i64 400, !52, i64 424, !58, i64 448, !52, i64 480, !60, i64 504, !58, i64 608, !5, i64 640, !5, i64 644, !5, i64 648, !5, i64 652, !58, i64 656, !6, i64 688, !52, i64 696, !5, i64 720, !5, i64 724, !12, i64 728, !16, i64 736}
!52 = !{!"mbedtls_asn1_buf", !5, i64 0, !13, i64 8, !21, i64 16}
!53 = !{!"mbedtls_asn1_named_data", !52, i64 0, !52, i64 24, !54, i64 48, !6, i64 56}
!54 = !{!"p1 _ZTS23mbedtls_asn1_named_data", !12, i64 0}
!55 = !{!"mbedtls_x509_time", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20}
!56 = !{!"mbedtls_pk_context", !57, i64 0, !12, i64 8}
!57 = !{!"p1 _ZTS17mbedtls_pk_info_t", !12, i64 0}
!58 = !{!"mbedtls_asn1_sequence", !52, i64 0, !59, i64 24}
!59 = !{!"p1 _ZTS21mbedtls_asn1_sequence", !12, i64 0}
!60 = !{!"mbedtls_x509_authority", !52, i64 0, !58, i64 24, !52, i64 56, !52, i64 80}
!61 = !{!51, !13, i64 16}
!62 = !{!46, !13, i64 136}
!63 = !{!46, !6, i64 2}
!64 = !{ptr @tls_prf_sha256, ptr @tls_prf_sha384}
!65 = !{!21, !21, i64 0}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.mustprogress"}
!68 = !{!69, !6, i64 17}
!69 = !{!"mbedtls_ssl_ciphersuite_t", !5, i64 0, !21, i64 8, !6, i64 16, !6, i64 17, !6, i64 18, !6, i64 19, !10, i64 20, !10, i64 22}
!70 = !{!26, !29, i64 112}
!71 = !{!72, !12, i64 24}
!72 = !{!"mbedtls_ssl_handshake_params", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !6, i64 4, !5, i64 8, !6, i64 12, !6, i64 13, !6, i64 14, !6, i64 15, !73, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !6, i64 56, !6, i64 57, !6, i64 58, !6, i64 59, !10, i64 60, !10, i64 62, !6, i64 64, !18, i64 104, !18, i64 112, !74, i64 120, !75, i64 280, !10, i64 616, !13, i64 624, !5, i64 632, !6, i64 636, !6, i64 637, !13, i64 1664, !18, i64 1672, !21, i64 1680, !13, i64 1688, !10, i64 1696, !15, i64 1704, !15, i64 1712, !16, i64 1720, !17, i64 1728, !76, i64 1736, !21, i64 1872, !10, i64 1880, !6, i64 1882, !5, i64 1884, !5, i64 1888, !5, i64 1892, !78, i64 1896, !78, i64 1904, !21, i64 1912, !5, i64 1920, !30, i64 1928, !6, i64 1936, !6, i64 1944, !6, i64 1945, !6, i64 1977, !10, i64 1978, !39, i64 1984, !39, i64 2008, !10, i64 2032, !6, i64 2034, !6, i64 2040, !6, i64 2120, !6, i64 2184, !13, i64 3264, !5, i64 3272, !5, i64 3276, !6, i64 3280, !21, i64 3288, !30, i64 3296, !6, i64 3304, !79, i64 3368, !21, i64 3496, !13, i64 3504, !16, i64 3512}
!73 = !{!"p1 _ZTS25mbedtls_ssl_ciphersuite_t", !12, i64 0}
!74 = !{!"mbedtls_dhm_context", !19, i64 0, !19, i64 16, !19, i64 32, !19, i64 48, !19, i64 64, !19, i64 80, !19, i64 96, !19, i64 112, !19, i64 128, !19, i64 144}
!75 = !{!"mbedtls_ecdh_context", !6, i64 0, !5, i64 4, !5, i64 8, !6, i64 16}
!76 = !{!"", !13, i64 0, !6, i64 8, !6, i64 16, !77, i64 112}
!77 = !{!"", !21, i64 0, !13, i64 8, !5, i64 16}
!78 = !{!"p1 _ZTS23mbedtls_ssl_flight_item", !12, i64 0}
!79 = !{!"", !6, i64 0, !6, i64 64}
!80 = !{!6, !6, i64 0}
!81 = !{ptr @mbedtls_ssl_add_hs_hdr_to_checksum}
!82 = !{!9, !5, i64 4}
!83 = !{!9, !5, i64 0}
!84 = !{!9, !12, i64 56}
!85 = !{!26, !5, i64 20}
!86 = !{!26, !21, i64 336}
!87 = !{!26, !21, i64 184}
!88 = !{!26, !30, i64 144}
!89 = !{!26, !28, i64 104}
!90 = !{!72, !6, i64 2}
!91 = !{!9, !10, i64 18}
!92 = !{!72, !10, i64 62}
!93 = !{!26, !30, i64 128}
!94 = !{!72, !30, i64 1928}
!95 = !{!9, !6, i64 8}
!96 = !{!72, !6, i64 13}
!97 = !{!9, !12, i64 248}
!98 = !{!99, !10, i64 0}
!99 = !{!"", !10, i64 0, !5, i64 4, !6, i64 8, !10, i64 10}
!100 = !{!10, !10, i64 0}
!101 = distinct !{!101, !67}
!102 = !{!9, !18, i64 256}
!103 = !{!72, !18, i64 104}
!104 = !{!72, !6, i64 14}
!105 = !{!9, !11, i64 232}
!106 = distinct !{!106, !67}
!107 = !{!72, !18, i64 112}
!108 = distinct !{!108, !67}
!109 = !{!72, !6, i64 15}
!110 = !{!26, !21, i64 240}
!111 = !{!26, !5, i64 248}
!112 = !{!26, !13, i64 256}
!113 = !{!26, !13, i64 280}
!114 = !{!26, !10, i64 272}
!115 = !{!26, !5, i64 24}
!116 = !{!26, !13, i64 264}
!117 = !{!26, !6, i64 320}
!118 = !{!26, !5, i64 392}
!119 = !{!26, !30, i64 136}
!120 = !{!26, !30, i64 152}
!121 = !{!72, !30, i64 3296}
!122 = !{!26, !5, i64 12}
!123 = !{!26, !5, i64 16}
!124 = !{!26, !5, i64 464}
!125 = !{!26, !28, i64 96}
!126 = !{!26, !21, i64 440}
!127 = !{!26, !21, i64 448}
!128 = !{!9, !6, i64 15}
!129 = !{!9, !5, i64 360}
!130 = !{!26, !6, i64 328}
!131 = !{!9, !5, i64 340}
!132 = !{!9, !5, i64 344}
!133 = !{!9, !6, i64 10}
!134 = !{!9, !12, i64 112}
!135 = !{!9, !12, i64 120}
!136 = !{!9, !12, i64 64}
!137 = !{!9, !12, i64 40}
!138 = !{!9, !12, i64 48}
!139 = !{!26, !12, i64 72}
!140 = !{!26, !12, i64 48}
!141 = !{!26, !12, i64 56}
!142 = !{!26, !12, i64 64}
!143 = !{!26, !10, i64 424}
!144 = !{!9, !5, i64 336}
!145 = !{!26, !12, i64 160}
!146 = !{!26, !12, i64 168}
!147 = !{!26, !12, i64 176}
!148 = !{!9, !12, i64 88}
!149 = !{!9, !12, i64 72}
!150 = !{!9, !12, i64 80}
!151 = !{!72, !6, i64 0}
!152 = !{!46, !5, i64 4}
!153 = !{!46, !5, i64 16}
!154 = !{!69, !10, i64 20}
!155 = !{!69, !10, i64 22}
!156 = !{!9, !21, i64 312}
!157 = !{!9, !13, i64 320}
!158 = !{!9, !21, i64 296}
!159 = !{!9, !13, i64 304}
!160 = !{!9, !11, i64 24}
!161 = !{!9, !5, i64 32}
!162 = !{!9, !14, i64 200}
!163 = !{!15, !15, i64 0}
end_hunk_2
