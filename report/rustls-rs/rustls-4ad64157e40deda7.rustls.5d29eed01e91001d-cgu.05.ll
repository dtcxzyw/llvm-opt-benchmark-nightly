Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/rustls-4ad64157e40deda7.rustls.5d29eed01e91001d-cgu.05?download=true
inline.NumInlined: 809
inline.NumDeleted: 260
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_RNvNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hmac11HMAC_SHA256 = local_unnamed_addr constant ptr @76, align 8
@_RNvNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hmac11HMAC_SHA384 = local_unnamed_addr constant ptr @78, align 8
@_RNvNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hmac11HMAC_SHA512 = local_unnamed_addr constant ptr @80, align 8
@0 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/aws-lc-rs-1.17.3/src/hkdf.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\C4\01\00\00/\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\C4\01\00\00\16\00\00\00" }>, align 8
@3 = private unnamed_addr constant [6 x i8] c"tls13 ", align 1
@4 = private unnamed_addr constant [18 x i8] c"exporting too much", align 1
@5 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXse_NtCs222MioR9bx1_9aws_lc_rs5errorNtB5_11UnspecifiedNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt }>, align 8
@6 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@7 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls8ticketer13TicketRotatorEBF_, [16 x i8] c"H\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs2_NtCs7ZUl82OSlxp_6rustls8ticketerNtB5_13TicketRotatorNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr @_RNvXs1_NtCs7ZUl82OSlxp_6rustls8ticketerNtB5_13TicketRotatorNtNtNtB7_6server11server_conn15ProducesTickets7enabled, ptr @_RNvXs1_NtCs7ZUl82OSlxp_6rustls8ticketerNtB5_13TicketRotatorNtNtNtB7_6server11server_conn15ProducesTickets8lifetime, ptr @_RNvXs1_NtCs7ZUl82OSlxp_6rustls8ticketerNtB5_13TicketRotatorNtNtNtB7_6server11server_conn15ProducesTickets7encrypt, ptr @_RNvXs1_NtCs7ZUl82OSlxp_6rustls8ticketerNtB5_13TicketRotatorNtNtNtB7_6server11server_conn15ProducesTickets7decrypt }>, align 8
@8 = private unnamed_addr constant [45 x i8] c"assertion failed: data.len() < 2usize.pow(15)", align 1
@9 = private unnamed_addr constant [33 x i8] c"rustls/src/server/server_conn.rs\00", align 1
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c" \00\00\00\00\00\00\00\C2\02\00\00\0D\00\00\00" }>, align 8
@11 = private unnamed_addr constant [11 x i8] c"Unspecified", align 1
@12 = private unnamed_addr constant [33 x i8] c"rustls/src/tls13/key_schedule.rs\00", align 1
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c" \00\00\00\00\00\00\00\FD\00\00\00$\00\00\00" }>, align 8
@14 = private unnamed_addr constant [23 x i8] c"ech accept confirmation", align 1
@15 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsb_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_23InvalidMessageEncrypterNtB5_16MessageEncrypter7encrypt, ptr @_RNvXsb_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_23InvalidMessageEncrypterNtB5_16MessageEncrypter21encrypted_payload_len }>, align 8
@16 = private unnamed_addr constant [37 x i8] c"rustls/src/crypto/aws_lc_rs/tls13.rs\00", align 1
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"$\00\00\00\00\00\00\00\D0\00\00\00\0E\00\00\00" }>, align 8
@18 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls1319GcmMessageDecrypterEBJ_, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs5_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_19GcmMessageDecrypterNtNtB9_6cipher16MessageDecrypter7decrypt }>, align 8
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"$\00\00\00\00\00\00\00\C0\00\00\00\0E\00\00\00" }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls1319GcmMessageEncrypterEBJ_, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs4_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_19GcmMessageEncrypterNtNtB9_6cipher16MessageEncrypter7encrypt, ptr @_RNvXs4_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_19GcmMessageEncrypterNtNtB9_6cipher16MessageEncrypter21encrypted_payload_len }>, align 8
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c" \00\00\00\00\00\00\00I\01\00\00/\00\00\00" }>, align 8
@22 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsc_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_23InvalidMessageDecrypterNtB5_16MessageDecrypter7decrypt }>, align 8
@23 = private unnamed_addr constant [28 x i8] c"rustls/src/crypto/cipher.rs\00", align 1
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @23, [16 x i8] c"\1B\00\00\00\00\00\00\00\BE\00\00\00\0E\00\00\00" }>, align 8
@25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c" \00\00\00\00\00\00\00\CF\01\00\00$\00\00\00" }>, align 8
@_RNvCs4KeUGOPwGKr_3log20MAX_LOG_LEVEL_FILTER = external local_unnamed_addr global { { { i64 } } }
@26 = private unnamed_addr constant [44 x i8] c"resumption not available; not issuing ticket", align 1
@27 = private unnamed_addr constant [27 x i8] c"rustls/src/server/tls13.rs\00", align 1
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @27, [16 x i8] c"\1A\00\00\00\00\00\00\00!\05\00\00\11\00\00\00" }>, align 8
@29 = private unnamed_addr constant [21 x i8] c"rustls::server::tls13", align 1
@30 = private unnamed_addr constant [51 x i8] c"early_data with stateless resumption is not allowed", align 1
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @27, [16 x i8] c"\1A\00\00\00\00\00\00\000\05\00\00\11\00\00\00" }>, align 8
@32 = private unnamed_addr constant [39 x i8] c"\13sending new ticket \C0\0D (stateless: \C0\01)\00", align 1
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @27, [16 x i8] c"\1A\00\00\00\00\00\00\005\05\00\00\09\00\00\00" }>, align 8
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @23, [16 x i8] c"\1B\00\00\00\00\00\00\00\E3\00\00\00\19\00\00\00" }>, align 8
@35 = private unnamed_addr constant [32 x i8] c"Acceptor polled after completion", align 1
@36 = private unnamed_addr constant [48 x i8] c"acceptor cannot read after successful acceptance", align 1
@37 = private unnamed_addr constant [34 x i8] c"assertion failed: len <= self.used", align 1
@38 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @23, [16 x i8] c"\1B\00\00\00\00\00\00\000\01\00\00\09\00\00\00" }>, align 8
@39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @23, [16 x i8] c"\1B\00\00\00\00\00\00\00*\01\00\00\1E\00\00\00" }>, align 8
@40 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @23, [16 x i8] c"\1B\00\00\00\00\00\00\00*\01\00\00\10\00\00\00" }>, align 8
@41 = private unnamed_addr constant [27 x i8] c"CLIENT_EARLY_TRAFFIC_SECRET", align 1
@42 = private unnamed_addr constant [31 x i8] c"CLIENT_HANDSHAKE_TRAFFIC_SECRET", align 1
@43 = private unnamed_addr constant [31 x i8] c"SERVER_HANDSHAKE_TRAFFIC_SECRET", align 1
@44 = private unnamed_addr constant [23 x i8] c"CLIENT_TRAFFIC_SECRET_0", align 1
@45 = private unnamed_addr constant [23 x i8] c"SERVER_TRAFFIC_SECRET_0", align 1
@46 = private unnamed_addr constant [15 x i8] c"EXPORTER_SECRET", align 1
@47 = private unnamed_addr constant [10 x i8] c"res binder", align 1
@48 = private unnamed_addr constant [11 x i8] c"c e traffic", align 1
@49 = private unnamed_addr constant [12 x i8] c"c hs traffic", align 1
@50 = private unnamed_addr constant [12 x i8] c"s hs traffic", align 1
@51 = private unnamed_addr constant [12 x i8] c"c ap traffic", align 1
@52 = private unnamed_addr constant [12 x i8] c"s ap traffic", align 1
@53 = private unnamed_addr constant [10 x i8] c"exp master", align 1
@54 = private unnamed_addr constant [10 x i8] c"res master", align 1
@55 = private unnamed_addr constant [7 x i8] c"derived", align 1
@56 = private unnamed_addr constant [27 x i8] c"hrr ech accept confirmation", align 1
@57 = private unnamed_addr constant [110 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/aws-lc-rs-1.17.3/src/aead/unbound_key.rs\00", align 1
@58 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @57, [16 x i8] c"m\00\00\00\00\00\00\00L\00\00\00\10\00\00\00" }>, align 8
@59 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @57, [16 x i8] c"m\00\00\00\00\00\00\00:\01\00\00\0E\00\00\00" }>, align 8
@60 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @57, [16 x i8] c"m\00\00\00\00\00\00\00;\01\00\00>\00\00\00" }>, align 8
@61 = private unnamed_addr constant <{ [17 x i8], [7 x i8] }> <{ [17 x i8] c" \00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@62 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs5_NtCs222MioR9bx1_9aws_lc_rs4randNtB5_12SystemRandomNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr @_RNvXs3_NtCs222MioR9bx1_9aws_lc_rs4randNtB5_12SystemRandomNtNtB5_6sealed12SecureRandom9fill_impl, ptr @_RNvXNtCs222MioR9bx1_9aws_lc_rs4randNtB2_12SystemRandomNtB2_12SecureRandom4fillCs7ZUl82OSlxp_6rustls }>, align 8
@63 = private unnamed_addr constant <{ ptr, [33 x i8], [7 x i8] }> <{ ptr @_RNvNtNtCs222MioR9bx1_9aws_lc_rs6digest3sha13sha256_digest, [33 x i8] c" \00\00\00\00\00\00\00 \00\00\00\00\00\00\00@\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\02", [7 x i8] undef }>, align 8
@64 = private unnamed_addr constant [11 x i8] c"traffic upd", align 1
@65 = private unnamed_addr constant [8 x i8] c"finished", align 1
@66 = private unnamed_addr constant [10 x i8] c"resumption", align 1
@67 = private unnamed_addr constant [8 x i8] c"exporter", align 1
@68 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/aws-lc-rs-1.17.3/src/hmac.rs\00", align 1
@69 = private unnamed_addr constant [18 x i8] c"HMAC_Update failed", align 1
@70 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @68, [16 x i8] c"a\00\00\00\00\00\00\00\87\01\00\00&\00\00\00" }>, align 8
@71 = private unnamed_addr constant [17 x i8] c"HMAC_Final failed", align 1
@72 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @68, [16 x i8] c"a\00\00\00\00\00\00\00\A9\01\00\00\1E\00\00\00" }>, align 8
@73 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @68, [16 x i8] c"a\00\00\00\00\00\00\00\A9\00\00\00\12\00\00\00" }>, align 8
@74 = private unnamed_addr constant [3 x i8] c"key", align 1
@75 = private unnamed_addr constant [2 x i8] c"iv", align 1
@76 = private unnamed_addr constant ptr @63, align 8
@77 = private unnamed_addr constant <{ ptr, [33 x i8], [7 x i8] }> <{ ptr @_RNvNtNtCs222MioR9bx1_9aws_lc_rs6digest3sha13sha384_digest, [33 x i8] c"0\00\00\00\00\00\00\00@\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\03", [7 x i8] undef }>, align 8
@78 = private unnamed_addr constant ptr @77, align 8
@79 = private unnamed_addr constant <{ ptr, [33 x i8], [7 x i8] }> <{ ptr @_RNvNtNtCs222MioR9bx1_9aws_lc_rs6digest3sha13sha512_digest, [33 x i8] c"@\00\00\00\00\00\00\00@\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\04", [7 x i8] undef }>, align 8
@80 = private unnamed_addr constant ptr @79, align 8
@81 = private unnamed_addr constant <{ ptr, [17 x i8], [7 x i8] }> <{ ptr @_RNvNtNtCs222MioR9bx1_9aws_lc_rs4aead7aes_gcm13init_128_aead, [17 x i8] c"\10\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\00", [7 x i8] undef }>, align 8
@82 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @_RNvMs1_NtNtCs222MioR9bx1_9aws_lc_rs6cipher3keyNtB5_18SymmetricCipherKey6aes128, [9 x i8] c"\10\00\00\00\00\00\00\00\00", [7 x i8] undef }>, align 8
@83 = private unnamed_addr constant <{ ptr, ptr, [16 x i8] }> <{ ptr @81, ptr @82, [16 x i8] c"\00\00\80\00\00\00\00\00\00\00\00\00\00\00\10\00" }>, align 8
@84 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs2_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4quicNtB5_10KeyBuilderNtNtBb_4quic9Algorithm10packet_key, ptr @_RNvXs2_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4quicNtB5_10KeyBuilderNtNtBb_4quic9Algorithm21header_protection_key, ptr @_RNvXs2_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4quicNtB5_10KeyBuilderNtNtBb_4quic9Algorithm12aead_key_len, ptr @_RNvXs2_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4quicNtB5_10KeyBuilderNtNtBb_4quic9Algorithm4fips }>, align 8
@85 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr @63, ptr @63 }>, align 8
@86 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs6_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_9AwsLcHkdfNtNtB9_5tls134Hkdf21extract_from_zero_ikm, ptr @_RNvXs6_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_9AwsLcHkdfNtNtB9_5tls134Hkdf19extract_from_secret, ptr @_RNvYNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls139AwsLcHkdfNtNtB8_5tls134Hkdf29extract_from_kx_shared_secretBa_, ptr @_RNvXs6_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_9AwsLcHkdfNtNtB9_5tls134Hkdf16expander_for_okm, ptr @_RNvXs6_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_9AwsLcHkdfNtNtB9_5tls134Hkdf9hmac_sign, ptr @_RNvXs6_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_9AwsLcHkdfNtNtB9_5tls134Hkdf4fips }>, align 8
@87 = private unnamed_addr constant ptr @81, align 8
@88 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_13Aes128GcmAeadNtNtB9_6cipher18Tls13AeadAlgorithm9encrypter, ptr @_RNvXs0_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_13Aes128GcmAeadNtNtB9_6cipher18Tls13AeadAlgorithm9decrypter, ptr @_RNvXs0_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_13Aes128GcmAeadNtNtB9_6cipher18Tls13AeadAlgorithm7key_len, ptr @_RNvXs0_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_13Aes128GcmAeadNtNtB9_6cipher18Tls13AeadAlgorithm12extract_keys, ptr @_RNvXs0_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_13Aes128GcmAeadNtNtB9_6cipher18Tls13AeadAlgorithm4fips }>, align 8
@_RNvNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hash6SHA256 = external global { ptr, { i8, [1 x i8] }, [6 x i8] }
@89 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hashNtB2_4HashNtNtB6_4hash4Hash5start, ptr @_RNvXNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hashNtB2_4HashNtNtB6_4hash4Hash4hash, ptr @_RNvXNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hashNtB2_4HashNtNtB6_4hash4Hash10output_len, ptr @_RNvXNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hashNtB2_4HashNtNtB6_4hash4Hash9algorithm, ptr @_RNvXNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hashNtB2_4HashNtNtB6_4hash4Hash4fips }>, align 8
@90 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [10 x i8], [6 x i8] }> <{ ptr @83, ptr @84, ptr @85, ptr @86, ptr @87, ptr @88, ptr @_RNvNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hash6SHA256, ptr @89, [10 x i8] c"\00\00\00\01\00\00\00\00\04\00", [6 x i8] undef }>, align 8
@_RNvNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls1324TLS13_AES_128_GCM_SHA256 = local_unnamed_addr constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @90 }>, align 8
@91 = private unnamed_addr constant <{ ptr, [17 x i8], [7 x i8] }> <{ ptr @_RNvNtNtCs222MioR9bx1_9aws_lc_rs4aead7aes_gcm13init_256_aead, [17 x i8] c" \00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\02", [7 x i8] undef }>, align 8
@92 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @_RNvMs1_NtNtCs222MioR9bx1_9aws_lc_rs6cipher3keyNtB5_18SymmetricCipherKey6aes256, [9 x i8] c" \00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@93 = private unnamed_addr constant <{ ptr, ptr, [16 x i8] }> <{ ptr @91, ptr @92, [16 x i8] c"\00\00\80\00\00\00\00\00\00\00\00\00\00\00\10\00" }>, align 8
@94 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr @77, ptr @77 }>, align 8
@95 = private unnamed_addr constant ptr @91, align 8
@96 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB4_13Aes256GcmAeadNtNtB8_6cipher18Tls13AeadAlgorithm9encrypter, ptr @_RNvXs_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB4_13Aes256GcmAeadNtNtB8_6cipher18Tls13AeadAlgorithm9decrypter, ptr @_RNvXs_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB4_13Aes256GcmAeadNtNtB8_6cipher18Tls13AeadAlgorithm7key_len, ptr @_RNvXs_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB4_13Aes256GcmAeadNtNtB8_6cipher18Tls13AeadAlgorithm12extract_keys, ptr @_RNvXs_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB4_13Aes256GcmAeadNtNtB8_6cipher18Tls13AeadAlgorithm4fips }>, align 8
@_RNvNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hash6SHA384 = external global { ptr, { i8, [1 x i8] }, [6 x i8] }
@97 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [10 x i8], [6 x i8] }> <{ ptr @93, ptr @84, ptr @94, ptr @86, ptr @95, ptr @96, ptr @_RNvNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hash6SHA384, ptr @89, [10 x i8] c"\00\00\00\01\00\00\00\00\05\00", [6 x i8] undef }>, align 8
@_RNvNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls1324TLS13_AES_256_GCM_SHA384 = local_unnamed_addr constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @97 }>, align 8
@98 = private unnamed_addr constant <{ ptr, [17 x i8], [7 x i8] }> <{ ptr @_RNvNtNtCs222MioR9bx1_9aws_lc_rs4aead6chacha16init_chacha_aead, [17 x i8] c" \00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\05", [7 x i8] undef }>, align 8
@99 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @_RNvMs1_NtNtCs222MioR9bx1_9aws_lc_rs6cipher3keyNtB5_18SymmetricCipherKey8chacha20, [9 x i8] c" \00\00\00\00\00\00\00\02", [7 x i8] undef }>, align 8
@100 = private unnamed_addr constant <{ ptr, ptr, [16 x i8] }> <{ ptr @98, ptr @99, [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\10\00\00\00" }>, align 8
@101 = private unnamed_addr constant ptr @98, align 8
@102 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB2_20Chacha20Poly1305AeadNtNtB6_6cipher18Tls13AeadAlgorithm9encrypter, ptr @_RNvXNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB2_20Chacha20Poly1305AeadNtNtB6_6cipher18Tls13AeadAlgorithm9decrypter, ptr @_RNvXNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB2_20Chacha20Poly1305AeadNtNtB6_6cipher18Tls13AeadAlgorithm7key_len, ptr @_RNvXNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB2_20Chacha20Poly1305AeadNtNtB6_6cipher18Tls13AeadAlgorithm12extract_keys, ptr @_RNvXNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB2_20Chacha20Poly1305AeadNtNtB6_6cipher18Tls13AeadAlgorithm4fips }>, align 8
@103 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [10 x i8], [6 x i8] }> <{ ptr @100, ptr @84, ptr @85, ptr @86, ptr @101, ptr @102, ptr @_RNvNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hash6SHA256, ptr @89, [10 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\06\00", [6 x i8] undef }>, align 8
@_RNvNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls1330TLS13_CHACHA20_POLY1305_SHA256 = local_unnamed_addr constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @103 }>, align 8
@104 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs8ticketer15Rfc5077TicketerEBJ_, [16 x i8] c"\E0\08\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs8ticketerNtB5_15Rfc5077TicketerNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr @_RNvXs0_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs8ticketerNtB5_15Rfc5077TicketerNtNtNtBb_6server11server_conn15ProducesTickets7enabled, ptr @_RNvXs0_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs8ticketerNtB5_15Rfc5077TicketerNtNtNtBb_6server11server_conn15ProducesTickets8lifetime, ptr @_RNvXs0_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs8ticketerNtB5_15Rfc5077TicketerNtNtNtBb_6server11server_conn15ProducesTickets7encrypt, ptr @_RNvXs0_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs8ticketerNtB5_15Rfc5077TicketerNtNtNtBb_6server11server_conn15ProducesTickets7decrypt }>, align 8
@105 = private unnamed_addr constant [274 x i8] c"ResumptionPskBinderKeyClientEarlyTrafficSecretClientHandshakeTrafficSecretServerHandshakeTrafficSecretClientApplicationTrafficSecretServerApplicationTrafficSecretExporterMasterSecretResumptionMasterSecretDerivedSecretServerEchConfirmationSecretServerEchHrrConfirmationSecret", align 1
@_RNvNvXsg_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB7_10SecretKindNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt7___NAMES = local_unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @105, [8 x i8] c"\12\01\00\00\00\00\00\00" }>, align 8
@_RNvNvXsg_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB7_10SecretKindNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt8___OFFSET = local_unnamed_addr constant [96 x i8] c"\00\00\00\00\00\00\00\00\16\00\00\00\00\00\00\00.\00\00\00\00\00\00\00J\00\00\00\00\00\00\00f\00\00\00\00\00\00\00\84\00\00\00\00\00\00\00\A2\00\00\00\00\00\00\00\B6\00\00\00\00\00\00\00\CC\00\00\00\00\00\00\00\D9\00\00\00\00\00\00\00\F4\00\00\00\00\00\00\00\12\01\00\00\00\00\00\00", align 8
@106 = private unnamed_addr constant [2 x i8] c"b\22", align 1
@107 = private unnamed_addr constant [2 x i8] c"\\n", align 1
@108 = private unnamed_addr constant [2 x i8] c"\\r", align 1
@109 = private unnamed_addr constant [2 x i8] c"\\t", align 1
@110 = private unnamed_addr constant [4 x i8] c"\01\\\C0\00", align 1
@111 = private unnamed_addr constant [2 x i8] c"\\0", align 1
@112 = private unnamed_addr constant [11 x i8] c"\02\\x\C3 \00\00i\02\00\00", align 1
@113 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@114 = private unnamed_addr constant [1 x i8] c"\22", align 1
@115 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1330ExpectAndSkipRejectedEarlyDataEBH_, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB2_30ExpectAndSkipRejectedEarlyDataINtNtB6_12common_state5StateNtNtB4_11server_conn20ServerConnectionDataE6handle, ptr @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1330ExpectAndSkipRejectedEarlyDataINtNtB8_12common_state5StateNtNtB6_11server_conn20ServerConnectionDataE22export_keying_materialB8_, ptr @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1330ExpectAndSkipRejectedEarlyDataINtNtB8_12common_state5StateNtNtB6_11server_conn20ServerConnectionDataE15extract_secretsB8_, ptr @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1330ExpectAndSkipRejectedEarlyDataINtNtB8_12common_state5StateNtNtB6_11server_conn20ServerConnectionDataE23send_key_update_requestB8_, ptr @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1330ExpectAndSkipRejectedEarlyDataINtNtB8_12common_state5StateNtNtB6_11server_conn20ServerConnectionDataE20handle_decrypt_errorB8_, ptr @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1330ExpectAndSkipRejectedEarlyDataINtNtB8_12common_state5StateNtNtB6_11server_conn20ServerConnectionDataE19into_external_stateB8_, ptr @_RNvXNtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB2_30ExpectAndSkipRejectedEarlyDataINtNtB6_12common_state5StateNtNtB4_11server_conn20ServerConnectionDataE10into_owned }>, align 8
@116 = private unnamed_addr constant [28 x i8] c"Unable to create HmacContext", align 1
@117 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @68, [16 x i8] c"a\00\00\00\00\00\00\00*\01\00\00,\00\00\00" }>, align 8
@118 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hmac3KeyEBJ_, [16 x i8] c"\D0\04\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvYNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hmac3KeyNtNtB8_4hmac3Key4signBa_, ptr @_RNvXs_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hmacNtB4_3KeyNtNtB8_4hmac3Key11sign_concat, ptr @_RNvXs_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hmacNtB4_3KeyNtNtB8_4hmac3Key7tag_len }>, align 8
@119 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"$\00\00\00\00\00\00\00c\00\00\00[\00\00\00" }>, align 8
@120 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls1320AeadMessageDecrypterEBJ_, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs3_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_20AeadMessageDecrypterNtNtB9_6cipher16MessageDecrypter7decrypt }>, align 8
@121 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"$\00\00\00\00\00\00\00[\00\00\00[\00\00\00" }>, align 8
@122 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls1320AeadMessageEncrypterEBJ_, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs2_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_20AeadMessageEncrypterNtNtB9_6cipher16MessageEncrypter7encrypt, ptr @_RNvXs2_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_20AeadMessageEncrypterNtNtB9_6cipher16MessageEncrypter21encrypted_payload_len }>, align 8
@123 = private unnamed_addr constant <{ [1 x i8], [1 x i8] }> <{ [1 x i8] c"\08", [1 x i8] undef }>, align 1
@124 = private unnamed_addr constant [59 x i8] c"&Client certificate decompressed using \C0\02 (\C0\0A bytes -> \C0\01)\00", align 1
@125 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @27, [16 x i8] c"\1A\00\00\00\00\00\00\00\F0\03\00\00\09\00\00\00" }>, align 8
@126 = private unnamed_addr constant <{ [1 x i8], [1 x i8] }> <{ [1 x i8] c"\02", [1 x i8] undef }>, align 1
@127 = private unnamed_addr constant <{ [1 x i8], [1 x i8] }> <{ [1 x i8] c"\12", [1 x i8] undef }>, align 1
@128 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtCseO5Jl7W60Eg_16rustls_pki_types3DerNtB6_5Debug3fmtCs7ZUl82OSlxp_6rustls }>, align 8
@129 = private unnamed_addr constant [14 x i8] c"CertificateDer", align 1
@130 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRyNtB6_5Debug3fmtCs7ZUl82OSlxp_6rustls }>, align 8
@131 = private unnamed_addr constant [8 x i8] c"UnixTime", align 1
@132 = private unnamed_addr constant [49 x i8] c"client auth requested but no certificate supplied", align 1
@133 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @27, [16 x i8] c"\1A\00\00\00\00\00\00\00@\04\00\00\11\00\00\00" }>, align 8
@134 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1314ExpectFinishedEBH_, [16 x i8] c"\88\01\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs5_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB5_14ExpectFinishedINtNtB9_12common_state5StateNtNtB7_11server_conn20ServerConnectionDataE6handle, ptr @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1314ExpectFinishedINtNtB8_12common_state5StateNtNtB6_11server_conn20ServerConnectionDataE22export_keying_materialB8_, ptr @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1314ExpectFinishedINtNtB8_12common_state5StateNtNtB6_11server_conn20ServerConnectionDataE15extract_secretsB8_, ptr @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1314ExpectFinishedINtNtB8_12common_state5StateNtNtB6_11server_conn20ServerConnectionDataE23send_key_update_requestB8_, ptr @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1314ExpectFinishedINtNtB8_12common_state5StateNtNtB6_11server_conn20ServerConnectionDataE20handle_decrypt_errorB8_, ptr @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1314ExpectFinishedINtNtB8_12common_state5StateNtNtB6_11server_conn20ServerConnectionDataE19into_external_stateB8_, ptr @_RNvXs5_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB5_14ExpectFinishedINtNtB9_12common_state5StateNtNtB7_11server_conn20ServerConnectionDataE10into_owned }>, align 8
@135 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1323ExpectCertificateVerifyEBH_, [16 x i8] c"\A0\01\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs2_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB5_23ExpectCertificateVerifyINtNtB9_12common_state5StateNtNtB7_11server_conn20ServerConnectionDataE6handle, ptr @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1323ExpectCertificateVerifyINtNtB8_12common_state5StateNtNtB6_11server_conn20ServerConnectionDataE22export_keying_materialB8_, ptr @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1323ExpectCertificateVerifyINtNtB8_12common_state5StateNtNtB6_11server_conn20ServerConnectionDataE15extract_secretsB8_, ptr @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1323ExpectCertificateVerifyINtNtB8_12common_state5StateNtNtB6_11server_conn20ServerConnectionDataE23send_key_update_requestB8_, ptr @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1323ExpectCertificateVerifyINtNtB8_12common_state5StateNtNtB6_11server_conn20ServerConnectionDataE20handle_decrypt_errorB8_, ptr @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1323ExpectCertificateVerifyINtNtB8_12common_state5StateNtNtB6_11server_conn20ServerConnectionDataE19into_external_stateB8_, ptr @_RNvXs2_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB5_23ExpectCertificateVerifyINtNtB9_12common_state5StateNtNtB7_11server_conn20ServerConnectionDataE10into_owned }>, align 8
@136 = private unnamed_addr constant [15 x i8] c"Rfc5077Ticketer", align 1
@137 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXsW_NtNtCsj6eKBz9Db1c_4core3fmt3nummNtB7_5Debug3fmt }>, align 8
@138 = private unnamed_addr constant [8 x i8] c"lifetime", align 1
@139 = private unnamed_addr constant [16 x i8] c"ServerConnection", align 1
@140 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @27, [16 x i8] c"\1A\00\00\00\00\00\00\00\89\04\00\008\00\00\00" }>, align 8
@141 = private unnamed_addr constant [27 x i8] c"client CertificateVerify OK", align 1
@142 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @27, [16 x i8] c"\1A\00\00\00\00\00\00\00\92\04\00\00\09\00\00\00" }>, align 8
@143 = private unnamed_addr constant <{ [1 x i8], [1 x i8] }> <{ [1 x i8] c"\0C", [1 x i8] undef }>, align 1
@144 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1315ExpectEarlyDataEBH_, [16 x i8] c"\88\01\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB5_15ExpectEarlyDataINtNtB9_12common_state5StateNtNtB7_11server_conn20ServerConnectionDataE6handle, ptr @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1315ExpectEarlyDataINtNtB8_12common_state5StateNtNtB6_11server_conn20ServerConnectionDataE22export_keying_materialB8_, ptr @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1315ExpectEarlyDataINtNtB8_12common_state5StateNtNtB6_11server_conn20ServerConnectionDataE15extract_secretsB8_, ptr @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1315ExpectEarlyDataINtNtB8_12common_state5StateNtNtB6_11server_conn20ServerConnectionDataE23send_key_update_requestB8_, ptr @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1315ExpectEarlyDataINtNtB8_12common_state5StateNtNtB6_11server_conn20ServerConnectionDataE20handle_decrypt_errorB8_, ptr @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1315ExpectEarlyDataINtNtB8_12common_state5StateNtNtB6_11server_conn20ServerConnectionDataE19into_external_stateB8_, ptr @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB5_15ExpectEarlyDataINtNtB9_12common_state5StateNtNtB7_11server_conn20ServerConnectionDataE10into_owned }>, align 8
@145 = private unnamed_addr constant <{ [1 x i8], [1 x i8], [1 x i8], [1 x i8] }> <{ [1 x i8] c"\03", [1 x i8] undef, [1 x i8] c"\02", [1 x i8] undef }>, align 1
@146 = private unnamed_addr constant <{ [1 x i8], [1 x i8] }> <{ [1 x i8] c"\05", [1 x i8] undef }>, align 1
@147 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16HandshakePayloadNtB6_5Debug3fmtBC_ }>, align 8
@148 = private unnamed_addr constant [23 x i8] c"HandshakeMessagePayload", align 1
@149 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRuNtB6_5Debug3fmtCs7ZUl82OSlxp_6rustls }>, align 8
@150 = private unnamed_addr constant [12 x i8] c"SystemRandom", align 1
@151 = private unnamed_addr constant <{ [1 x i8], [1 x i8] }> <{ [1 x i8] c"\11", [1 x i8] undef }>, align 1
@152 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1313ExpectTrafficEBH_, [16 x i8] c"\E0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs7_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB5_13ExpectTrafficINtNtB9_12common_state5StateNtNtB7_11server_conn20ServerConnectionDataE6handle, ptr @_RNvXs7_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB5_13ExpectTrafficINtNtB9_12common_state5StateNtNtB7_11server_conn20ServerConnectionDataE22export_keying_material, ptr @_RNvXs7_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB5_13ExpectTrafficINtNtB9_12common_state5StateNtNtB7_11server_conn20ServerConnectionDataE15extract_secrets, ptr @_RNvXs7_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB5_13ExpectTrafficINtNtB9_12common_state5StateNtNtB7_11server_conn20ServerConnectionDataE23send_key_update_request, ptr @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1313ExpectTrafficINtNtB8_12common_state5StateNtNtB6_11server_conn20ServerConnectionDataE20handle_decrypt_errorB8_, ptr @_RNvXs7_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB5_13ExpectTrafficINtNtB9_12common_state5StateNtNtB7_11server_conn20ServerConnectionDataE19into_external_state, ptr @_RNvXs7_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB5_13ExpectTrafficINtNtB9_12common_state5StateNtNtB7_11server_conn20ServerConnectionDataE10into_owned }>, align 8
@153 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1317ExpectQuicTrafficEBH_, [16 x i8] c"\E0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs9_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB5_17ExpectQuicTrafficINtNtB9_12common_state5StateNtNtB7_11server_conn20ServerConnectionDataE6handle, ptr @_RNvXs9_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB5_17ExpectQuicTrafficINtNtB9_12common_state5StateNtNtB7_11server_conn20ServerConnectionDataE22export_keying_material, ptr @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1317ExpectQuicTrafficINtNtB8_12common_state5StateNtNtB6_11server_conn20ServerConnectionDataE15extract_secretsB8_, ptr @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1317ExpectQuicTrafficINtNtB8_12common_state5StateNtNtB6_11server_conn20ServerConnectionDataE23send_key_update_requestB8_, ptr @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1317ExpectQuicTrafficINtNtB8_12common_state5StateNtNtB6_11server_conn20ServerConnectionDataE20handle_decrypt_errorB8_, ptr @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1317ExpectQuicTrafficINtNtB8_12common_state5StateNtNtB6_11server_conn20ServerConnectionDataE19into_external_stateB8_, ptr @_RNvXs9_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB5_17ExpectQuicTrafficINtNtB9_12common_state5StateNtNtB7_11server_conn20ServerConnectionDataE10into_owned }>, align 8
@154 = private unnamed_addr constant <{ [1 x i8], [1 x i8] }> <{ [1 x i8] c"\0E", [1 x i8] undef }>, align 1
@155 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs6_NtNtCs7ZUl82OSlxp_6rustls6server11server_connNtB5_9AcceptingINtNtB9_12common_state5StateNtB5_20ServerConnectionDataE6handle, ptr @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn9AcceptingINtNtB8_12common_state5StateNtB4_20ServerConnectionDataE22export_keying_materialB8_, ptr @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn9AcceptingINtNtB8_12common_state5StateNtB4_20ServerConnectionDataE15extract_secretsB8_, ptr @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn9AcceptingINtNtB8_12common_state5StateNtB4_20ServerConnectionDataE23send_key_update_requestB8_, ptr @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn9AcceptingINtNtB8_12common_state5StateNtB4_20ServerConnectionDataE20handle_decrypt_errorB8_, ptr @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn9AcceptingINtNtB8_12common_state5StateNtB4_20ServerConnectionDataE19into_external_stateB8_, ptr @_RNvXs6_NtNtCs7ZUl82OSlxp_6rustls6server11server_connNtB5_9AcceptingINtNtB9_12common_state5StateNtB5_20ServerConnectionDataE10into_owned }>, align 8
@156 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls1317AwsLcHkdfExpanderEBJ_, [16 x i8] c"`\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs7_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_17AwsLcHkdfExpanderNtNtB9_5tls1312HkdfExpander12expand_slice, ptr @_RNvXs7_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_17AwsLcHkdfExpanderNtNtB9_5tls1312HkdfExpander12expand_block, ptr @_RNvXs7_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_17AwsLcHkdfExpanderNtNtB9_5tls1312HkdfExpander8hash_len }>, align 8
@157 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"$\00\00\00\00\00\00\00o\01\00\00\1C\00\00\00" }>, align 8
@158 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"$\00\00\00\00\00\00\00c\01\00\00\1C\00\00\00" }>, align 8
@159 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"$\00\00\00\00\00\00\00g\01\00\00?\00\00\00" }>, align 8
@160 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1313ExpectTrafficEBH_, [16 x i8] c"\E0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs8_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB5_13ExpectTrafficNtNtNtB9_4conn6kernel11KernelState14update_secrets, ptr @_RNvXs8_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB5_13ExpectTrafficNtNtNtB9_4conn6kernel11KernelState25handle_new_session_ticket }>, align 8
@161 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"$\00\00\00\00\00\00\00\9A\01\00\00\0E\00\00\00" }>, align 8
@162 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"$\00\00\00\00\00\00\00\96\01\00\00\1E\00\00\00" }>, align 8
@163 = private unnamed_addr constant [119 x i8] c"internal error: entered unreachable code: server connections should never have handle_new_session_ticket called on them", align 1
@164 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @27, [16 x i8] c"\1A\00\00\00\00\00\00\00\E4\05\00\00\09\00\00\00" }>, align 8
@165 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @23, [16 x i8] c"\1B\00\00\00\00\00\00\00C\01\00\00\12\00\00\00" }>, align 8
@166 = private unnamed_addr constant [13 x i8] c"AcceptedAlert", align 1
@167 = private unnamed_addr constant [23 x i8] c"operation not supported", align 1
@168 = private unnamed_addr constant <{ [1 x i8], [1 x i8], [1 x i8], [1 x i8] }> <{ [1 x i8] c"\08", [1 x i8] undef, [1 x i8] c"\12", [1 x i8] undef }>, align 1
@169 = private unnamed_addr constant [43 x i8] c"QUIC connections do not support key updates", align 1
@170 = private unnamed_addr constant [116 x i8] c"internal error: entered unreachable code: handle_new_session_ticket should not be called for server-side connections", align 1
@171 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @27, [16 x i8] c"\1A\00\00\00\00\00\00\00\17\06\00\00\09\00\00\00" }>, align 8
@_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS13 = external global { { i16, [1 x i16] } }
@switch.table._RNvMs8_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_11KeySchedule20derive_logged_secret = private unnamed_addr constant [6 x i8] c"\0B\0C\0C\0C\0C\0A", align 8
@switch.table._RNvMs8_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_11KeySchedule20derive_logged_secret.104 = private unnamed_addr constant [6 x ptr] [ptr @48, ptr @49, ptr @50, ptr @51, ptr @52, ptr @53], align 8
@switch.table._RNvMs8_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_11KeySchedule20derive_logged_secret.105 = private unnamed_addr constant [6 x i8] c"\1B\1F\1F\17\17\0F", align 8
@switch.table._RNvMs8_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_11KeySchedule20derive_logged_secret.106 = private unnamed_addr constant [6 x ptr] [ptr @41, ptr @42, ptr @43, ptr @44, ptr @45, ptr @46], align 8
@switch.table._RNvMs8_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_11KeySchedule21derive_for_empty_hash = private unnamed_addr constant [9 x i8] c"\0A\0B\0C\0C\0C\0C\0A\0A\07", align 8
@switch.table._RNvMs8_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_11KeySchedule21derive_for_empty_hash.107 = private unnamed_addr constant [9 x ptr] [ptr @47, ptr @48, ptr @49, ptr @50, ptr @51, ptr @52, ptr @53, ptr @54, ptr @55], align 8

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMs_NtNtCs222MioR9bx1_9aws_lc_rs4aead11unbound_keyNtB5_10UnboundKey24seal_in_place_append_tagNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound15PrefixedPayloadEB1E_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 1 captures(none) dereferenceable(13) %0, ptr %.8.val, ptr nofree readonly captures(none) %.16.val, ptr noalias nofree noundef nonnull align 1 captures(address) dead_on_return dereferenceable(13) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 1                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [28 x i8], align 1                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 1                ; 6 uses
  %i.f = alloca [12 x i8], align 1                ; 7 uses
  %i.g = invoke { ptr, i64 } @_RNvXs4_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayloadINtNtCsj6eKBz9Db1c_4core7convert5AsMutShE6as_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.noexc5, %bb.o, %bb.m, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.m ], [ true, %.noexc5 ], [ true, %bb.a ], [ true, %bb.o ]
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.r, %bb.b
  %.sroa.0.0.lpad-body = phi i1 [ %.sroa.0.0, %bb.b ], [ true, %bb.r ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.am, %bb.r ] ; 2 uses
  %i.i = load i8, ptr %1, align 1, !range !4, !noundef !5
  %i.j = trunc nuw i8 %i.i to i1
  %or.cond = and i1 %.sroa.0.0.lpad-body, %i.j
  br i1 %or.cond, label %bb.u, label %.body.thread

bb.c:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, i64 } %i.g, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.16.val) ]
  %i.l = getelementptr inbounds nuw i8, ptr %.16.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !5
  %i.n = icmp ugt i64 %i.k, %i.m
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i8, ptr %1, align 1, !range !4, !noundef !5
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.g, label %bb.o

bb.e:                                             ; preds = %bb.c
  store i8 1, ptr %0, align 1
  %i.q = load i8, ptr %1, align 1, !range !4, !alias.scope !6, !noundef !5
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs222MioR9bx1_9aws_lc_rs4aead5nonce5NonceEECs7ZUl82OSlxp_6rustls.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1
  tail call void @_RNvXs_NtCs222MioR9bx1_9aws_lc_rs2ivINtB4_11FixedLengthKjc_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull dereferenceable(12) %i.s)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs222MioR9bx1_9aws_lc_rs4aead5nonce5NonceEECs7ZUl82OSlxp_6rustls.exit

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.f, ptr noundef nonnull align 1 dereferenceable(12) %i.t, i64 12, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %i.u = invoke { ptr, i64 } @_RNvXs4_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayloadINtNtCsj6eKBz9Db1c_4core7convert5AsMutShE6as_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.i unwind label %bb.h, !noalias !14

bb.h:                                             ; preds = %bb.j, %bb.i, %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs_NtCs222MioR9bx1_9aws_lc_rs2ivINtB4_11FixedLengthKjc_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 1 dereferenceable(12) %i.f)
          to label %.body.thread unwind label %bb.n, !noalias !16

bb.i:                                             ; preds = %bb.g
  %i.w = extractvalue { ptr, i64 } %i.u, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !17
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  invoke void @_RINvXs5_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB6_15PrefixedPayloadINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendRhE6extendINtNtNtB1o_5slice4iter4IterhEEBc_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %i.e, ptr noundef nonnull %i.x)
          to label %bb.j unwind label %bb.h, !noalias !14

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17
  %i.y = invoke { ptr, i64 } @_RNvXs4_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayloadINtNtCsj6eKBz9Db1c_4core7convert5AsMutShE6as_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.k unwind label %bb.h, !noalias !14

bb.k:                                             ; preds = %bb.j
  %i.z = extractvalue { ptr, i64 } %i.y, 0        ; 2 uses
  %i.aa = add i64 %i.w, 16
  %i.ab = call noundef i32 @"\01aws_lc_0_43_0_EVP_AEAD_CTX_seal"(ptr noundef %.8.val, ptr noundef %i.z, ptr noundef nonnull %i.d, i64 noundef %i.aa, ptr noundef nonnull align 1 dereferenceable(12) %i.f, i64 noundef 12, ptr noundef %i.z, i64 noundef %i.w, ptr noundef nonnull readonly %2, i64 noundef 5) #22, !noalias !9
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ad, ptr noundef nonnull align 1 dereferenceable(12) %i.f, i64 12, i1 false), !alias.scope !19, !noalias !20
  store i8 0, ptr %0, align 1, !alias.scope !9, !noalias !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !17
  br label %_RINvMs_NtNtCs222MioR9bx1_9aws_lc_rs4aead11unbound_keyNtB5_10UnboundKey13seal_combinedNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound15PrefixedPayloadEB1t_.exit

bb.m:                                             ; preds = %bb.k
  store i8 1, ptr %0, align 1, !alias.scope !9, !noalias !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !17
  invoke void @_RNvXs_NtCs222MioR9bx1_9aws_lc_rs2ivINtB4_11FixedLengthKjc_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 1 dereferenceable(12) %i.f)
          to label %_RINvMs_NtNtCs222MioR9bx1_9aws_lc_rs4aead11unbound_keyNtB5_10UnboundKey13seal_combinedNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound15PrefixedPayloadEB1t_.exit unwind label %bb.b

bb.n:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !16
  unreachable

bb.o:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.c, i8 0, i64 28, i1 false), !noalias !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !25
  %i.af = invoke { ptr, i64 } @_RNvXs4_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayloadINtNtCsj6eKBz9Db1c_4core7convert5AsMutShE6as_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc5 unwind label %bb.b

.noexc5:                                          ; preds = %bb.o
  %i.ag = invoke { ptr, i64 } @_RNvXs4_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayloadINtNtCsj6eKBz9Db1c_4core7convert5AsMutShE6as_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc6 unwind label %bb.b

.noexc6:                                          ; preds = %.noexc5
  %i.ah = extractvalue { ptr, i64 } %i.af, 1
  %i.ai = extractvalue { ptr, i64 } %i.ag, 0      ; 2 uses
  %i.aj = call noundef i32 @"\01aws_lc_0_43_0_EVP_AEAD_CTX_seal_scatter"(ptr noundef %.8.val, ptr noundef %i.ai, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, i64 noundef 28, ptr noundef null, i64 noundef 0, ptr noundef %i.ai, i64 noundef %i.ah, ptr noundef null, i64 noundef 0, ptr noundef nonnull readonly %2, i64 noundef 5) #22, !noalias !22
  %i.ak = icmp eq i32 %i.aj, 1
  br i1 %i.ak, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.noexc6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !25
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.a, ptr noundef nonnull align 1 dereferenceable(12) %i.al, i64 12, i1 false), !noalias !25
  invoke void @_RINvXs5_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB6_15PrefixedPayloadINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendRhE6extendRShEBc_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 16)
          to label %bb.s unwind label %bb.r, !noalias !22

bb.q:                                             ; preds = %.noexc6
  store i8 1, ptr %0, align 1, !alias.scope !22, !noalias !28
  br label %_RINvMs_NtNtCs222MioR9bx1_9aws_lc_rs4aead11unbound_keyNtB5_10UnboundKey23seal_combined_randnonceNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound15PrefixedPayloadEB1D_.exit

bb.r:                                             ; preds = %bb.p
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs_NtCs222MioR9bx1_9aws_lc_rs2ivINtB4_11FixedLengthKjc_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull dereferenceable(12) %i.a)
          to label %.body unwind label %bb.t, !noalias !22

bb.s:                                             ; preds = %bb.p
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.an, ptr noundef nonnull align 1 dereferenceable(12) %i.a, i64 12, i1 false), !noalias !28
  store i8 0, ptr %0, align 1, !alias.scope !22, !noalias !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25
  br label %_RINvMs_NtNtCs222MioR9bx1_9aws_lc_rs4aead11unbound_keyNtB5_10UnboundKey23seal_combined_randnonceNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound15PrefixedPayloadEB1D_.exit

bb.t:                                             ; preds = %bb.r
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !22
  unreachable

_RINvMs_NtNtCs222MioR9bx1_9aws_lc_rs4aead11unbound_keyNtB5_10UnboundKey23seal_combined_randnonceNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound15PrefixedPayloadEB1D_.exit: ; preds = %bb.q, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !25
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs222MioR9bx1_9aws_lc_rs4aead5nonce5NonceEECs7ZUl82OSlxp_6rustls.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs222MioR9bx1_9aws_lc_rs4aead5nonce5NonceEECs7ZUl82OSlxp_6rustls.exit: ; preds = %bb.f, %bb.e, %_RINvMs_NtNtCs222MioR9bx1_9aws_lc_rs4aead11unbound_keyNtB5_10UnboundKey23seal_combined_randnonceNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound15PrefixedPayloadEB1D_.exit, %_RINvMs_NtNtCs222MioR9bx1_9aws_lc_rs4aead11unbound_keyNtB5_10UnboundKey13seal_combinedNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound15PrefixedPayloadEB1t_.exit
  ret void

_RINvMs_NtNtCs222MioR9bx1_9aws_lc_rs4aead11unbound_keyNtB5_10UnboundKey13seal_combinedNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound15PrefixedPayloadEB1t_.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs222MioR9bx1_9aws_lc_rs4aead5nonce5NonceEECs7ZUl82OSlxp_6rustls.exit

.body.thread:                                     ; preds = %bb.u, %bb.h, %.body
  %eh.lpad-body4 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.v, %bb.h ], [ %eh.lpad-body, %bb.u ]
  resume { ptr, i32 } %eh.lpad-body4

bb.u:                                             ; preds = %.body
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 1
  invoke void @_RNvXs_NtCs222MioR9bx1_9aws_lc_rs2ivINtB4_11FixedLengthKjc_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull dereferenceable(12) %i.ap)
          to label %.body.thread unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCshEiLVZluVSb_7zeroize9ZeroizingNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8EEB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXss_CshEiLVZluVSb_7zeroizeINtB5_9ZeroizingNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8EBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #24
          to label %common.resume unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
end_hunk_0
begin_hunk_1_@_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce8for_path:bb.a
  %scevgep1 = getelementptr i8, ptr %.val.i.i.i, i64 %.val6.i.i
  %scevgep2 = getelementptr nuw i8, ptr %.val1.i.i.i, i64 %.val.i.i
  %scevgep3 = getelementptr i8, ptr %.val1.i.i.i, i64 %.val6.i.i
  %bound0 = icmp ult ptr %scevgep, %scevgep3
  %bound1 = icmp ult ptr %scevgep2, %scevgep1
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check4 = icmp ult i64 %i.k, 32
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.k, 28
  %n.vec = and i64 %i.k, -32                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.n = add i64 %index, %.val.i.i                ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.n ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.n ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <16 x i8>, ptr %i.p, align 1, !alias.scope !685, !noalias !688
  %wide.load5 = load <16 x i8>, ptr %i.q, align 1, !alias.scope !685, !noalias !688
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %wide.load6 = load <16 x i8>, ptr %i.o, align 1, !alias.scope !689, !noalias !695
  %wide.load7 = load <16 x i8>, ptr %i.r, align 1, !alias.scope !689, !noalias !695
  %i.s = xor <16 x i8> %wide.load6, %wide.load
  %i.t = xor <16 x i8> %wide.load7, %wide.load5
  store <16 x i8> %i.s, ptr %i.o, align 1, !alias.scope !689, !noalias !695
  store <16 x i8> %i.t, ptr %i.r, align 1, !alias.scope !689, !noalias !695
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !696

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !699

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %i.k, -4                      ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index9 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next12, %vec.epilog.vector.body ] ; 2 uses
  %i.v = add i64 %index9, %.val.i.i               ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.v
  %wide.load10 = load <4 x i8>, ptr %i.x, align 1, !alias.scope !685, !noalias !688
  %wide.load11 = load <4 x i8>, ptr %i.w, align 1, !alias.scope !689, !noalias !695
  %i.y = xor <4 x i8> %wide.load11, %wide.load10
  store <4 x i8> %i.y, ptr %i.w, align 1, !alias.scope !689, !noalias !695
  %index.next12 = add nuw i64 %index9, 4          ; 2 uses
  %i.z = icmp eq i64 %index.next12, %n.vec8
  br i1 %i.z, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !700

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n13 = icmp eq i64 %i.k, %n.vec8
  br i1 %cmp.n13, label %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec8, %vec.epilog.middle.block ] ; 4 uses
  %i.aa = sub i64 %.val6.i.i, %.val.i.i
  %i.ab = xor i64 %.sroa.0.08.i.i.ph, -1
  %i.ac = add i64 %.val6.i.i, %i.ab
  %xtraiter = and i64 %i.aa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ad = or disjoint i64 %.sroa.0.08.i.i.ph, 1
  %i.ae = add i64 %.sroa.0.08.i.i.ph, %.val.i.i   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.ae
  %.val7.i.i.prol = load i8, ptr %i.ag, align 1, !noalias !688, !noundef !5
  %i.ah = load i8, ptr %i.af, align 1, !alias.scope !701, !noalias !688, !noundef !5
  %i.ai = xor i8 %i.ah, %.val7.i.i.prol
  store i8 %i.ai, ptr %i.af, align 1, !alias.scope !701, !noalias !688
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.0.08.i.i.unr = phi i64 [ %.sroa.0.08.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ad, %vec.epilog.scalar.ph.prol ]
  %i.aj = icmp eq i64 %i.ac, %.val.i.i
  br i1 %i.aj, label %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.sroa.0.08.i.i = phi i64 [ %.sroa.0.08.i.i.unr, %vec.epilog.scalar.ph.preheader.new ], [ %i.ap, %vec.epilog.scalar.ph ] ; 3 uses
  %i.ak = add i64 %.sroa.0.08.i.i, %.val.i.i      ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.ak
  %.val7.i.i = load i8, ptr %i.am, align 1, !noalias !688, !noundef !5
  %i.an = load i8, ptr %i.al, align 1, !alias.scope !701, !noalias !688, !noundef !5
  %i.ao = xor i8 %i.an, %.val7.i.i
  store i8 %i.ao, ptr %i.al, align 1, !alias.scope !701, !noalias !688
  %i.ap = add nuw i64 %.sroa.0.08.i.i, 2          ; 2 uses
  %.reass = add i64 %.sroa.0.08.i.i, %invariant.op ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.reass ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %.reass
  %.val7.i.i.1 = load i8, ptr %i.ar, align 1, !noalias !688, !noundef !5
  %i.as = load i8, ptr %i.aq, align 1, !alias.scope !701, !noalias !688, !noundef !5
  %i.at = xor i8 %i.as, %.val7.i.i.1
  store i8 %i.at, ptr %i.aq, align 1, !alias.scope !701, !noalias !688
  %exitcond.not.i.i.1 = icmp eq i64 %i.ap, %i.k
  br i1 %exitcond.not.i.i.1, label %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit, label %vec.epilog.scalar.ph, !llvm.loop !702

_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !677
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(12) %i.b, i64 12, i1 false), !alias.scope !703, !noalias !704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs6_NtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connectionNtB5_8Acceptor6accept(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1360 x i8]) align 8 captures(none) dereferenceable(1360) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(1168) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [1360 x i8], align 8              ; 4 uses
  %i.c = alloca [1168 x i8], align 8              ; 4 uses
  %i.d = alloca [56 x i8], align 8                ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [120 x i8], align 8               ; 5 uses
  %i.g = alloca [64 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [1168 x i8], align 8              ; 4 uses
  %i.j = alloca [56 x i8], align 8                ; 4 uses
  %i.k = alloca [64 x i8], align 8                ; 4 uses
  %i.l = alloca [120 x i8], align 8               ; 5 uses
  %i.m = alloca [168 x i8], align 8               ; 7 uses
  %i.n = alloca [168 x i8], align 8               ; 8 uses
  %i.o = alloca [1168 x i8], align 8              ; 14 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  store i64 2, ptr %1, align 8
  %.not = icmp eq i64 %.sroa.0.0.copyload, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 %.sroa.0.0.copyload, ptr %i.o, align 8
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1160) %.sroa.6.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(1160) %.sroa.6.0..sroa_idx, i64 1160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvMs0_NtCs7ZUl82OSlxp_6rustls4connINtB5_16ConnectionCommonNtNtNtB7_6server11server_conn20ServerConnectionDataE23first_handshake_messageB7_(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(1168) %i.o)
          to label %bb.d unwind label %.thread33

.thread33:                                        ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 32, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.q = load i64, ptr %i.a, align 8, !range !135, !noundef !5
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !492, !noundef !5 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.r, label %bb.t, label %bb.u, !prof !493

bb.d:                                             ; preds = %bb.b
  %i.v = load i64, ptr %i.m, align 8, !range !705, !noundef !5
  switch i64 %i.v, label %bb.i [
    i64 -3, label %bb.e
    i64 -2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7ZUl82OSlxp_6rustls4conn16ConnectionCommonNtNtNtB12_6server11server_conn20ServerConnectionDataEEEB12_.exit
  ]

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(64) %i.w, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1168) %i.i, ptr noundef nonnull align 8 dereferenceable(1168) %i.o, i64 1168, i1 false)
  invoke void @_RNvXs8_NtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connectionNtB5_13AcceptedAlertINtNtCsj6eKBz9Db1c_4core7convert4FromINtNtBb_4conn16ConnectionCommonNtB7_20ServerConnectionDataEE4from(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1168) %i.i)
          to label %bb.r unwind label %bb.q

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7ZUl82OSlxp_6rustls4conn16ConnectionCommonNtNtNtB12_6server11server_conn20ServerConnectionDataEEEB12_.exit: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1168) %1, ptr noundef nonnull align 8 dereferenceable(1168) %i.o, i64 1168, i1 false)
  store i64 2, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.r, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7ZUl82OSlxp_6rustls4conn16ConnectionCommonNtNtNtB12_6server11server_conn20ServerConnectionDataEEEB12_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit21

bb.g:                                             ; preds = %bb.n, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.n ], [ %i.x, %bb.h ] ; 2 uses
  %.sroa.04.2 = phi i1 [ false, %bb.n ], [ true, %bb.h ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message14MessagePayloadEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.n)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit unwind label %bb.p

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit: ; preds = %bb.g
  br i1 %.sroa.04.2, label %bb.s, label %.thread

bb.h:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.n, ptr noundef nonnull align 8 dereferenceable(168) %i.m, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 840
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 1080
  store ptr %i.o, ptr %i.h, align 8, !alias.scope !706, !noalias !709
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.y, ptr %i.aa, align 8, !alias.scope !706, !noalias !709
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.z, ptr %i.ab, align 8, !alias.scope !706, !noalias !709
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvNtNtCs7ZUl82OSlxp_6rustls6server2hs20process_client_hello(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.n, i1 noundef zeroext false, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  %i.ac = load i8, ptr %i.g, align 8, !range !132, !noundef !5
  %.not14 = icmp eq i8 %i.ac, -1
  br i1 %.not14, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1168) %i.c, ptr noundef nonnull align 8 dereferenceable(1168) %i.o, i64 1168, i1 false)
  invoke void @_RNvXs8_NtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connectionNtB5_13AcceptedAlertINtNtCsj6eKBz9Db1c_4core7convert4FromINtNtBb_4conn16ConnectionCommonNtB7_20ServerConnectionDataEE4from(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1168) %i.c)
          to label %bb.o unwind label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 1168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1168) %i.b, ptr noundef nonnull align 8 dereferenceable(1168) %i.o, i64 1168, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 1192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.af, ptr noundef nonnull align 8 dereferenceable(168) %i.n, i64 168, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1360) %0, ptr noundef nonnull align 8 dereferenceable(1360) %i.b, i64 1360, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.m

bb.m:                                             ; preds = %bb.u, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit21, %bb.l
  ret void

bb.n:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.e) #24
          to label %bb.g unwind label %bb.p

bb.o:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ah, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ai, ptr noundef nonnull align 8 dereferenceable(120) %i.f, i64 120, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message14MessagePayloadEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.n)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit21

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit21: ; preds = %bb.o, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.m

bb.p:                                             ; preds = %bb.g, %bb.s, %bb.q, %bb.n
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.q:                                             ; preds = %bb.e
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.k) #24
          to label %.thread unwind label %bb.p

bb.r:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 8 dereferenceable(64) %i.w, i64 64, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.al, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.am, ptr noundef nonnull align 8 dereferenceable(120) %i.l, i64 120, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.f

.thread:                                          ; preds = %bb.q, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit, %bb.s
  %.pn16.pn = phi { ptr, i32 } [ %.pn1632, %bb.s ], [ %.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit ], [ %i.ak, %bb.q ]
  resume { ptr, i32 } %.pn16.pn

bb.s:                                             ; preds = %.thread33, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit
  %.pn1632 = phi { ptr, i32 } [ %.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit ], [ %i.p, %.thread33 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs7ZUl82OSlxp_6rustls4conn16ConnectionCommonNtNtNtBG_6server11server_conn20ServerConnectionDataEEBG_(ptr noalias nofree noundef align 8 dereferenceable(1168) %i.o) #24
          to label %.thread unwind label %bb.p

bb.t:                                             ; preds = %bb.c
  %i.an = load i64, ptr %i.u, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.an) #27
  unreachable

bb.u:                                             ; preds = %bb.c
  %i.ao = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ap = icmp samesign ugt i64 %i.t, 31
  tail call void @llvm.assume(i1 %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ao, ptr noundef nonnull align 1 dereferenceable(32) @35, i64 32, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx, i8 0, i64 24, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 13, ptr %i.aq, align 8
  %.sroa.026.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.t, ptr %.sroa.026.sroa.5.0..sroa_idx, align 8
  %.sroa.026.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ao, ptr %.sroa.026.sroa.6.0..sroa_idx, align 8
  %.sroa.026.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 32, ptr %.sroa.026.sroa.7.0..sroa_idx, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %.sroa.427.0..sroa_idx, align 8
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %.sroa.629.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.7.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.m
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMs6_NtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connectionNtB5_8Acceptor8read_tls(ptr noalias nofree noundef align 8 dereferenceable(1168) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %2) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !355, !noundef !5
  %.not = icmp eq i64 %i.a, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i64, ptr } @_RNvMs0_NtCs7ZUl82OSlxp_6rustls4connINtB5_16ConnectionCommonNtNtNtB7_6server11server_conn20ServerConnectionDataE8read_tlsB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1168) %0, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newReECsaKJjC64KgbL_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 48) #25
  %i.d = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.c, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.merged = phi { i64, ptr } [ %i.b, %bb.b ], [ %i.d, %bb.c ]
  ret { i64, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs7_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_21KeyScheduleResumption17derive_ticket_psk(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 15 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [2 x i8], align 2                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !134, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !noalias !711, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !noalias !711, !nonnull !5, !align !134, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !5, !noalias !711, !nonnull !5
  %i.l = tail call { ptr, ptr } %i.k(ptr noundef nonnull %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.e) #26, !noalias !716, !inline_history !717 ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0        ; 6 uses
  %i.n = extractvalue { ptr, ptr } %i.l, 1        ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !invariant.load !5, !alias.scope !718, !noalias !721, !nonnull !5
  %i.q = invoke noundef i64 %i.p(ptr noundef nonnull %i.m) #26
          to label %.noexc.i unwind label %bb.b, !noalias !716, !inline_history !634

.noexc.i:                                         ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.val.i.i = load ptr, ptr %i.r, align 8, !alias.scope !718, !noalias !721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !725
  %i.s = trunc i64 %i.q to i16
end_hunk_1
begin_hunk_2_@_RNvMs7_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_21KeyScheduleResumption17derive_ticket_psk:bb.a
          to label %common.resume.i unwind label %bb.i, !noalias !730

bb.c:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !725
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %i.ah = load ptr, ptr %i.n, align 8, !invariant.load !5, !noalias !730 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void %i.ah(ptr noundef nonnull %i.m)
          to label %bb.e unwind label %bb.g, !noalias !730

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !30, !invariant.load !5, !noalias !730 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_RNvMsa_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_16KeyScheduleSuite17derive_ticket_psk.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.am = load i64, ptr %i.al, align 8, !range !31, !invariant.load !5, !noalias !730
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef range(i64 1, 0) %i.aj, i64 noundef range(i64 1, 536870913) %i.am) #22, !noalias !730
  br label %_RNvMsa_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_16KeyScheduleSuite17derive_ticket_psk.exit

bb.g:                                             ; preds = %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !30, !invariant.load !5, !noalias !730 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %common.resume.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !range !31, !invariant.load !5, !noalias !730
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef range(i64 1, 0) %i.ap, i64 noundef range(i64 1, 536870913) %i.as) #22, !noalias !730
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.h, %bb.g, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.an, %bb.g ], [ %i.an, %bb.h ], [ %i.ag, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i

bb.i:                                             ; preds = %bb.b
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !730
  unreachable

_RNvMsa_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_16KeyScheduleSuite17derive_ticket_psk.exit: ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs7_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_7AeadKey3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  store i64 32, ptr %i.c, align 8
  %i.d = icmp samesign ult i64 %2, 33
  br i1 %i.d, label %bb.c, label %bb.b, !prof !508

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %2, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #27
          to label %bb.f unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull %i.b, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !731
  store ptr %i.b, ptr %i.a, align 8, !noalias !731
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.f, align 8, !noalias !731
  invoke void @_RNvXs4_CshEiLVZluVSb_7zeroizeINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMuthENtB5_7Zeroize7zeroizeCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.h unwind label %bb.g

bb.e:                                             ; preds = %bb.c
  store i64 %2, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.f:                                             ; preds = %bb.b
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !731
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMs7_NtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connectionNtB5_13AcceptedAlert5write(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer8write_to(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %2)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvMs7_NtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connectionNtB5_13AcceptedAlert9write_all(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %2) unnamed_addr #1 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.a = tail call { i64, ptr } @_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer8write_to(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %2) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %i.c, null
  br i1 %i.e, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs8_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_11KeySchedule20derive_logged_secret(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr %.0.val, ptr nofree readonly captures(none) %.8.val, i8 noundef range(i8 1, 7) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noundef nonnull %4, ptr nofree readonly captures(none) %.32.val, ptr nofree readonly captures(none) %.40.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
switch.lookup:
  %i.a = alloca [96 x i8], align 8                ; 15 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [2 x i8], align 2                 ; 4 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %switch.tableidx = add nsw i8 %1, -1            ; 2 uses
  %i.f = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs8_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_11KeySchedule20derive_logged_secret, i64 %i.f
  %switch.load = load i8, ptr %switch.gep, align 1 ; 2 uses
  %switch.ext = zext i8 %switch.load to i64
  %i.g = zext nneg i8 %switch.tableidx to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvMs8_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_11KeySchedule20derive_logged_secret.104, i64 %i.g
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !736)
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !5, !alias.scope !736, !noalias !739, !nonnull !5
  %i.j = tail call noundef i64 %i.i(ptr noundef nonnull %.0.val) #26, !noalias !746, !inline_history !747
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %.val.i.i = load ptr, ptr %i.k, align 8, !alias.scope !736, !noalias !739
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !748
  %i.l = trunc i64 %i.j to i16
  %i.m = tail call i16 @llvm.bswap.i16(i16 %i.l)
  store i16 %i.m, ptr %i.d, align 2, !noalias !748
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !748
  %i.n = add nuw nsw i8 %switch.load, 6
  store i8 %i.n, ptr %i.c, align 1, !noalias !748
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !748
  %i.o = trunc i64 %3 to i8
  store i8 %i.o, ptr %i.b, align 1, !noalias !748
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !748
  store ptr %i.d, ptr %i.a, align 8, !noalias !748
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %i.p, align 8, !noalias !748
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.q, align 8, !noalias !748
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %i.r, align 8, !noalias !748
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @3, ptr %i.s, align 8, !noalias !748
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 6, ptr %i.t, align 8, !noalias !748
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %switch.load3, ptr %i.u, align 8, !noalias !748
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %switch.ext, ptr %i.v, align 8, !noalias !748
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.b, ptr %i.w, align 8, !noalias !748
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 1, ptr %i.x, align 8, !noalias !748
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %2, ptr %i.y, align 8, !noalias !748
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 %3, ptr %i.z, align 8, !noalias !748
  call void %.val.i.i(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.e, ptr noundef nonnull %.0.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.a, i64 noundef 6) #26, !noalias !736, !inline_history !753
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !748
  %switch.tableidx4 = add nsw i8 %1, -1           ; 2 uses
  %i.aa = zext nneg i8 %switch.tableidx4 to i64
  %switch.gep6 = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs8_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_11KeySchedule20derive_logged_secret.105, i64 %i.aa
  %switch.load7 = load i8, ptr %switch.gep6, align 1
  %switch.ext8 = zext i8 %switch.load7 to i64     ; 2 uses
  %6 = zext nneg i8 %switch.tableidx4 to i64
  %switch.gep9 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvMs8_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_11KeySchedule20derive_logged_secret.106, i64 %6
  %switch.load10 = load ptr, ptr %switch.gep9, align 8 ; 2 uses
  %i.ab = invoke noundef zeroext i1 %.40.val(ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load10, i64 noundef %switch.ext8)
          to label %bb.b unwind label %bb.a

bb.a:                                             ; preds = %bb.e, %bb.d, %switch.lookup
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6crypto5tls13NtB5_8OkmBlockNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit unwind label %bb.f

bb.b:                                             ; preds = %switch.lookup
  br i1 %i.ab, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.ad = invoke { ptr, i64 } @_RNvXs4_NtNtCs7ZUl82OSlxp_6rustls6crypto5tls13NtB5_8OkmBlockINtNtCsj6eKBz9Db1c_4core7convert5AsRefShE6as_ref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.e)
          to label %bb.e unwind label %bb.a       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.ae = extractvalue { ptr, i64 } %i.ad, 0
  %i.af = extractvalue { ptr, i64 } %i.ad, 1
  invoke void %.32.val(ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load10, i64 noundef %switch.ext8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef 32, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef %i.af)
          to label %bb.c unwind label %bb.a

bb.f:                                             ; preds = %bb.a
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit: ; preds = %bb.a
  resume { ptr, i32 } %i.ac
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs8_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_11KeySchedule21derive_for_empty_hash(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i8 noundef range(i8 0, 9) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 15 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [2 x i8], align 2                 ; 4 uses
  %i.e = alloca [2 x i8], align 1                 ; 5 uses
  %i.f = alloca [80 x i8], align 8                ; 5 uses
  %i.g = alloca [72 x i8], align 8                ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !align !134, !noundef !5 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !align !134, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !invariant.load !5, !nonnull !5
  %i.p = tail call { i8, i8 } %i.o(ptr noundef nonnull %i.k) #26 ; 2 uses
  %i.q = extractvalue { i8, i8 } %i.p, 0
  %i.r = extractvalue { i8, i8 } %i.p, 1
  store i8 %i.q, ptr %i.e, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 %i.r, ptr %i.s, align 1
  call void @_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB2_13HashAlgorithm20hash_for_empty_input(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.e)
  %i.t = load i64, ptr %i.f, align 8, !range !135, !noundef !5
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(72) %i.v, i64 72, i1 false)
  br label %switch.lookup

bb.c:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !5, !nonnull !5
  %i.y = call { ptr, ptr } %i.x(ptr noundef nonnull %i.k) #26 ; 2 uses
  %i.z = extractvalue { ptr, ptr } %i.y, 0        ; 2 uses
  %i.aa = extractvalue { ptr, ptr } %i.y, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !invariant.load !5, !nonnull !5
  call void %i.ac(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.g, ptr noundef nonnull %i.z) #26
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ad = call { ptr, i64 } @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls6crypto4hashNtB4_6OutputINtNtCsj6eKBz9Db1c_4core7convert5AsRefShE6as_ref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.g) ; 2 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.ae, align 8, !nonnull !5, !align !134, !noundef !5 ; 2 uses
  %i.af = zext nneg i8 %2 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs8_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_11KeySchedule21derive_for_empty_hash, i64 %i.af
  %switch.load = load i8, ptr %switch.gep, align 1 ; 2 uses
  %switch.ext = zext i8 %switch.load to i64
  %i.ag = zext nneg i8 %2 to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvMs8_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_11KeySchedule21derive_for_empty_hash.107, i64 %i.ag
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.ah = extractvalue { ptr, i64 } %i.ad, 1      ; 2 uses
  %i.ai = extractvalue { ptr, i64 } %i.ad, 0
  call void @llvm.experimental.noalias.scope.decl(metadata !754)
  %i.aj = getelementptr inbounds nuw i8, ptr %.val1, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !5, !alias.scope !754, !noalias !757, !nonnull !5
  %i.al = call noundef i64 %i.ak(ptr noundef nonnull %.val) #26, !noalias !764, !inline_history !747
  %i.am = getelementptr inbounds nuw i8, ptr %.val1, i64 32
  %.val.i.i = load ptr, ptr %i.am, align 8, !alias.scope !754, !noalias !757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !765
  %i.an = trunc i64 %i.al to i16
  %i.ao = call i16 @llvm.bswap.i16(i16 %i.an)
  store i16 %i.ao, ptr %i.d, align 2, !noalias !765
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !765
  %i.ap = add nuw nsw i8 %switch.load, 6
  store i8 %i.ap, ptr %i.c, align 1, !noalias !765
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !765
  %i.aq = trunc i64 %i.ah to i8
  store i8 %i.aq, ptr %i.b, align 1, !noalias !765
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !765
  store ptr %i.d, ptr %i.a, align 8, !noalias !765
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %i.ar, align 8, !noalias !765
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.as, align 8, !noalias !765
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %i.at, align 8, !noalias !765
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @3, ptr %i.au, align 8, !noalias !765
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 6, ptr %i.av, align 8, !noalias !765
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %switch.load3, ptr %i.aw, align 8, !noalias !765
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %switch.ext, ptr %i.ax, align 8, !noalias !765
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.b, ptr %i.ay, align 8, !noalias !765
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 1, ptr %i.az, align 8, !noalias !765
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.ai, ptr %i.ba, align 8, !noalias !765
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 %i.ah, ptr %i.bb, align 8, !noalias !765
  call void %.val.i.i(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.a, i64 noundef 6) #26, !noalias !754, !inline_history !753
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMs_NtNtCs222MioR9bx1_9aws_lc_rs4aead11unbound_keyNtB4_10UnboundKey11open_within(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 1 captures(address) dead_on_return dereferenceable(12) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, ptr noalias nofree noundef nonnull %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [28 x i8], align 1                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [12 x i8], align 1                ; 5 uses
  %i.d = alloca [12 x i8], align 1                ; 6 uses
  %i.e = icmp samesign ult i64 %4, 16
  br i1 %i.e, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %4, -16                      ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !align !134, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !5
  %i.k = icmp ugt i64 %i.f, %i.j
  br i1 %i.k, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %0, align 8, !range !770, !noundef !5
  %.off = add nsw i64 %i.l, -5
  %switch = icmp ult i64 %.off, 2
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %switch, label %bb.d, label %.split

.split:                                           ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.c, ptr noundef nonnull align 1 dereferenceable(12) %1, i64 12, i1 false)
  %.val = load ptr, ptr %i.m, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !771
  %i.n = call noundef i32 @"\01aws_lc_0_43_0_EVP_AEAD_CTX_open"(ptr noundef %.val, ptr noundef nonnull %3, ptr noundef nonnull %i.b, i64 noundef %i.f, ptr noundef nonnull align 1 dereferenceable(12) %i.c, i64 noundef 12, ptr noundef nonnull %3, i64 noundef range(i64 16, -9223372036854775808) %4, ptr noundef nonnull readonly %2, i64 noundef 5) #22
  %.not = icmp eq i32 %i.n, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !771
  call void @_RNvXs_NtCs222MioR9bx1_9aws_lc_rs2ivINtB4_11FixedLengthKjc_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 1 dereferenceable(12) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %.not, label %bb.i, label %bb.j

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.d, ptr noundef nonnull align 1 dereferenceable(12) %1, i64 12, i1 false)
  %.val21 = load ptr, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !776
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.a, i8 0, i64 28, i1 false), !noalias !776
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 %i.f
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull %i.a, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59)
          to label %bb.f unwind label %bb.e, !noalias !781

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs_NtCs222MioR9bx1_9aws_lc_rs2ivINtB4_11FixedLengthKjc_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 1 dereferenceable(12) %i.d)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs4aead5nonce5NonceECs7ZUl82OSlxp_6rustls.exit.i unwind label %bb.g, !noalias !782

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull %i.q, i64 noundef 12, ptr noalias nofree noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(12) %i.d, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60)
          to label %bb.h unwind label %bb.e, !noalias !782

bb.g:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !782
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs4aead5nonce5NonceECs7ZUl82OSlxp_6rustls.exit.i: ; preds = %bb.e
  resume { ptr, i32 } %i.p

bb.h:                                             ; preds = %bb.f
  %i.s = call noundef i32 @"\01aws_lc_0_43_0_EVP_AEAD_CTX_open_gather"(ptr noundef %.val21, ptr noundef nonnull %3, ptr noundef null, i64 noundef 0, ptr noundef nonnull %3, i64 noundef %i.f, ptr noundef nonnull %i.a, i64 noundef 28, ptr noundef nonnull readonly %2, i64 noundef 5) #22
  %.not22 = icmp eq i32 %i.s, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !776
  call void @_RNvXs_NtCs222MioR9bx1_9aws_lc_rs2ivINtB4_11FixedLengthKjc_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 1 dereferenceable(12) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
end_hunk_2
begin_hunk_3_@_RNvXNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB2_20Chacha20Poly1305AeadNtNtB6_6cipher18Tls13AeadAlgorithm9decrypter:bb.a
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %bb.f, label %bb.g, !prof !493

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #28
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.412.0.copyload = load ptr, ptr %.sroa.412.0..sroa_idx, align 8, !alias.scope !993, !noalias !994 ; 2 uses
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx13, align 8, !alias.scope !993, !noalias !994
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !995
  %i.m = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2273) 40, i64 noundef range(i64 1, 9) 8) #22, !noalias !995 ; 6 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.h, label %bb.j, !prof !490

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #27
          to label %.noexc3 unwind label %bb.i

.noexc3:                                          ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @"\01aws_lc_0_43_0_EVP_AEAD_CTX_free"(ptr noundef %.sroa.412.0.copyload) #22, !noalias !998
  br label %.body

bb.j:                                             ; preds = %bb.g
  store i64 %i.k, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.sroa.412.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(12) %2, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1001
  store ptr %1, ptr %i.b, align 8, !noalias !1001
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.e, ptr %i.p, align 8, !noalias !1001
  call void @_RNvXs4_CshEiLVZluVSb_7zeroizeINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMuthENtB5_7Zeroize7zeroizeCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1001
  %i.q = insertvalue { ptr, ptr } poison, ptr %i.m, 0
  %i.r = insertvalue { ptr, ptr } %i.q, ptr @120, 1
  ret { ptr, ptr } %i.r

bb.k:                                             ; preds = %.body
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.l:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !981
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB2_20Chacha20Poly1305AeadNtNtB6_6cipher18Tls13AeadAlgorithm9encrypter(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(12) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1006, !noundef !5 ; 3 uses
  %i.g = icmp ult i64 %i.f, 33
  br i1 %i.g, label %bb.d, label %bb.b, !prof !508

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.f, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @165) #28
          to label %.noexc1 unwind label %bb.c

.noexc1:                                          ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b, %bb.f, %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.c ], [ %i.o, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1009
  store ptr %1, ptr %i.c, align 8, !noalias !1009
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %i.i, align 8, !noalias !1009
  invoke void @_RNvXs4_CshEiLVZluVSb_7zeroizeINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMuthENtB5_7Zeroize7zeroizeCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.l unwind label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !nonnull !5, !align !134, !noundef !5
  invoke void @_RNvMs_NtNtCs222MioR9bx1_9aws_lc_rs4aead11unbound_keyNtB4_10UnboundKey3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %i.f)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1014)
  %i.k = load i64, ptr %i.d, align 8, !range !517, !alias.scope !1017, !noalias !1019, !noundef !5 ; 2 uses
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %bb.f, label %bb.g, !prof !493

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #28
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.412.0.copyload = load ptr, ptr %.sroa.412.0..sroa_idx, align 8, !alias.scope !1021, !noalias !1022 ; 2 uses
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx13, align 8, !alias.scope !1021, !noalias !1022
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1023
  %i.m = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2273) 40, i64 noundef range(i64 1, 9) 8) #22, !noalias !1023 ; 6 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.h, label %bb.j, !prof !490

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #27
          to label %.noexc3 unwind label %bb.i

.noexc3:                                          ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @"\01aws_lc_0_43_0_EVP_AEAD_CTX_free"(ptr noundef %.sroa.412.0.copyload) #22, !noalias !1026
  br label %.body

bb.j:                                             ; preds = %bb.g
  store i64 %i.k, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.sroa.412.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(12) %2, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1029
  store ptr %1, ptr %i.b, align 8, !noalias !1029
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.e, ptr %i.p, align 8, !noalias !1029
  call void @_RNvXs4_CshEiLVZluVSb_7zeroizeINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMuthENtB5_7Zeroize7zeroizeCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1029
  %i.q = insertvalue { ptr, ptr } poison, ptr %i.m, 0
  %i.r = insertvalue { ptr, ptr } %i.q, ptr @122, 1
  ret { ptr, ptr } %i.r

bb.k:                                             ; preds = %.body
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.l:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1009
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB5_27ExpectCompressedCertificateINtNtB9_12common_state5StateNtNtB7_11server_conn20ServerConnectionDataE6handle(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(168) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [168 x i8], align 8               ; 4 uses
  %i.c = alloca [400 x i8], align 8               ; 9 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [136 x i8], align 8               ; 5 uses
  %i.g = alloca [160 x i8], align 8               ; 4 uses
  %i.h = alloca [168 x i8], align 8               ; 6 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [48 x i8], align 8                ; 9 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [64 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [48 x i8], align 8                ; 5 uses
  %i.o = alloca [64 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 13 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [64 x i8], align 8                ; 4 uses
  %i.s = alloca [64 x i8], align 8                ; 4 uses
  %i.t = alloca [64 x i8], align 8                ; 6 uses
  %i.u = alloca [160 x i8], align 8               ; 6 uses
  %.sroa.67 = alloca [39 x i8], align 1           ; 5 uses
  %.sroa.810 = alloca [24 x i8], align 8          ; 5 uses
  %.sroa.6 = alloca [39 x i8], align 1            ; 5 uses
  %i.v = alloca [32 x i8], align 8                ; 19 uses
  %i.w = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs7ZUl82OSlxp_6rustls7hash_hsNtB4_13HandshakeHash11add_message(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %3)
          to label %bb.c unwind label %.thread128 ; 0 uses

.thread128:                                       ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i.i.i88, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i.i.i, %bb.a
  %.sroa.030.1.ph = phi i8 [ 1, %bb.a ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i.i.i ], [ 1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i.i.i88 ]
  %.sroa.029.1.ph = phi i1 [ true, %bb.a ], [ false, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i.i.i ], [ false, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i.i.i88 ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %bb.be
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread152

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.67)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.810)
  %i.x = load i64, ptr %3, align 8, !range !271, !noundef !5 ; 2 uses
  %i.y = icmp ne i64 %i.x, -9223372036854775807
  tail call void @llvm.assume(i1 %i.y)
  %i.z = icmp sgt i64 %i.x, -9223372036854775804
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %i.ab = load i64, ptr %i.aa, align 8, !range !199, !noundef !5 ; 2 uses
  %i.ac = icmp ne i64 %i.ab, -9223372036854775807
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp eq i64 %i.ab, -9223372036854775802
  br i1 %i.ad, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.u, ptr noundef nonnull align 8 dereferenceable(160) %3, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  invoke void @_RNvNtCs7ZUl82OSlxp_6rustls5check31inappropriate_handshake_message(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @126, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @127, i64 noundef 1)
          to label %bb.be unwind label %bb.bd

bb.f:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.810)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ak, 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  %i.an = icmp eq i64 %i.ak, 0
  br i1 %i.an, label %.loopexit166, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.ao = load i16, ptr %i.am, align 8, !range !1037, !alias.scope !1034, !noalias !1038 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 26
  %i.aq = load i16, ptr %i.ap, align 2, !alias.scope !1034, !noalias !1038
  %i.ar = icmp ne i16 %i.ao, 3
  br label %bb.g

bb.g:                                             ; preds = %_RNCNvXs0_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB7_27ExpectCompressedCertificateINtNtBb_12common_state5StateNtNtB9_11server_conn20ServerConnectionDataE6handle0Bb_.exit.thread5.i, %.lr.ph.i
  %i.as = phi ptr [ %i.ai, %.lr.ph.i ], [ %i.at, %_RNCNvXs0_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB7_27ExpectCompressedCertificateINtNtBb_12common_state5StateNtNtB9_11server_conn20ServerConnectionDataE6handle0Bb_.exit.thread5.i ] ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.au = load ptr, ptr %i.as, align 8, !noalias !1040, !nonnull !5, !noundef !5
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !1040, !nonnull !5, !align !134, !noundef !5
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !invariant.load !5, !noalias !1040, !nonnull !5
  %i.az = invoke { i16, i16 } %i.ay(ptr noundef nonnull %i.au) #26
          to label %.noexc unwind label %.loopexit, !inline_history !1041 ; 2 uses

.noexc:                                           ; preds = %bb.g
  %i.ba = extractvalue { i16, i16 } %i.az, 0
  %i.bb = icmp eq i16 %i.ba, %i.ao
  %i.bc = extractvalue { i16, i16 } %i.az, 1
  %i.bd = icmp eq i16 %i.bc, %i.aq
  %or.cond.i = select i1 %i.ar, i1 true, i1 %i.bd
  %or.cond13.i = select i1 %i.bb, i1 %or.cond.i, i1 false
  br i1 %or.cond13.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXs0_NtNtBW_6server5tls13NtB2E_27ExpectCompressedCertificateINtNtBW_12common_state5StateNtNtB2G_11server_conn20ServerConnectionDataE6handle0EBW_.exit, label %_RNCNvXs0_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB7_27ExpectCompressedCertificateINtNtBb_12common_state5StateNtNtB9_11server_conn20ServerConnectionDataE6handle0Bb_.exit.thread5.i

_RNCNvXs0_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB7_27ExpectCompressedCertificateINtNtBb_12common_state5StateNtNtB9_11server_conn20ServerConnectionDataE6handle0Bb_.exit.thread5.i: ; preds = %.noexc
  %i.be = icmp eq ptr %i.at, %i.al
  br i1 %i.be, label %.loopexit166, label %bb.g

.body73:                                          ; preds = %.loopexit, %.loopexit.split-lp, %bb.ah, %bb.q, %.thread136
  %.pn58 = phi { ptr, i32 } [ %.pn56, %.thread136 ], [ %i.ce, %bb.q ], [ %i.dl, %bb.ah ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.sroa.030.2 = phi i8 [ %.sroa.030.4, %.thread136 ], [ 1, %bb.q ], [ 0, %bb.ah ], [ 1, %.loopexit ], [ %.sroa.030.3.ph, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake28CompressedCertificatePayloadEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.v) #24
          to label %.thread unwind label %bb.at

.loopexit:                                        ; preds = %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body73

.loopexit.split-lp:                               ; preds = %.loopexit166, %bb.j, %bb.h, %bb.i, %bb.r, %bb.ai
  %.sroa.030.3.ph = phi i8 [ 1, %bb.h ], [ 1, %.loopexit166 ], [ 1, %bb.i ], [ 0, %bb.ai ], [ 1, %bb.r ], [ 1, %bb.j ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body73

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXs0_NtNtBW_6server5tls13NtB2E_27ExpectCompressedCertificateINtNtBW_12common_state5StateNtNtB2G_11server_conn20ServerConnectionDataE6handle0EBW_.exit: ; preds = %.noexc
  %i.bf = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.v, i64 28 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !noundef !5 ; 2 uses
  %i.bi = icmp ugt i32 %i.bh, 65536
  br i1 %i.bi, label %bb.j, label %bb.h

.loopexit166:                                     ; preds = %_RNCNvXs0_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB7_27ExpectCompressedCertificateINtNtBb_12common_state5StateNtNtB9_11server_conn20ServerConnectionDataE6handle0Bb_.exit.thread5.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.bj = load ptr, ptr %2, align 8, !nonnull !5, !align !134, !noundef !5
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error14PeerMisbehavedEB5_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.bj, i8 noundef 8, i8 undef, i8 noundef 51)
          to label %bb.bc unwind label %.loopexit.split-lp

bb.h:                                             ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXs0_NtNtBW_6server5tls13NtB2E_27ExpectCompressedCertificateINtNtBW_12common_state5StateNtNtB2G_11server_conn20ServerConnectionDataE6handle0EBW_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.bk = zext nneg i32 %i.bh to i64              ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1042
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 4294967296) %i.bk, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc70 unwind label %.loopexit.split-lp

.noexc70:                                         ; preds = %bb.h
  %i.bl = load i64, ptr %i.a, align 8, !range !135, !noalias !1042, !noundef !5
  %i.bm = trunc nuw i64 %i.bl to i1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !range !492, !noalias !1042, !noundef !5 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.bm, label %bb.i, label %bb.l, !prof !493

bb.i:                                             ; preds = %.noexc70
  %i.bq = load i64, ptr %i.bp, align 8, !noalias !1042
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.bo, i64 %i.bq) #27
          to label %.noexc71 unwind label %.loopexit.split-lp

.noexc71:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXs0_NtNtBW_6server5tls13NtB2E_27ExpectCompressedCertificateINtNtBW_12common_state5StateNtNtB2G_11server_conn20ServerConnectionDataE6handle0EBW_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.br = load ptr, ptr %2, align 8, !nonnull !5, !align !134, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i8 10, ptr %i.q, align 8
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error14InvalidMessageEB5_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.br, i8 noundef 8, i8 undef, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.q)
          to label %bb.ax unwind label %.loopexit.split-lp

.thread136:                                       ; preds = %bb.au, %.body, %.thread144, %bb.av, %bb.k
  %.pn56 = phi { ptr, i32 } [ %i.bs, %bb.k ], [ %lpad.thr_comm.split-lp143, %bb.av ], [ %lpad.thr_comm142, %.thread144 ], [ %i.dk, %.body ], [ %i.di, %bb.au ]
  %.sroa.030.4 = phi i8 [ 1, %bb.k ], [ 1, %bb.av ], [ 1, %.thread144 ], [ 0, %.body ], [ 0, %bb.au ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #24
          to label %.body73 unwind label %bb.at

bb.k:                                             ; preds = %bb.v, %bb.t, %bb.n, %bb.l
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.thread136

bb.l:                                             ; preds = %.noexc70
  %i.bt = load ptr, ptr %i.bp, align 8, !noalias !1042, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1042
  store i64 %i.bo, ptr %i.p, align 8, !alias.scope !1042
  %i.bu = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr %i.bt, ptr %i.bu, align 8, !alias.scope !1042
  %i.bv = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  store i64 %i.bk, ptr %i.bv, align 8, !alias.scope !1042
  %i.bw = load ptr, ptr %i.as, align 8, !nonnull !5, !noundef !5
  %i.bx = load ptr, ptr %i.bf, align 8, !nonnull !5, !align !134, !noundef !5
  %i.by = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.val66 = load ptr, ptr %i.by, align 8, !nonnull !5, !noundef !5
  %i.bz = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.val67 = load i64, ptr %i.bz, align 8, !noundef !5
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !invariant.load !5, !nonnull !5
  %i.cc = invoke noundef zeroext i1 %i.cb(ptr noundef nonnull %i.bw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val66, i64 noundef %.val67, ptr noalias nofree noundef nonnull %i.bt, i64 noundef %i.bk)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  br i1 %i.cc, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cd = load ptr, ptr %2, align 8, !nonnull !5, !align !134, !noundef !5
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error14PeerMisbehavedEB5_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.cd, i8 noundef 8, i8 undef, i8 noundef 24)
          to label %bb.o unwind label %bb.k

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.o, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.p

bb.p:                                             ; preds = %bb.aw, %bb.o
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body73 unwind label %bb.s

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit unwind label %.loopexit.split-lp

bb.s:                                             ; preds = %bb.q
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.t:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.cg = load ptr, ptr %i.bu, align 8, !nonnull !5, !noundef !5
  %i.ch = load i64, ptr %i.bv, align 8, !noundef !5
  store ptr %i.cg, ptr %i.m, align 8, !alias.scope !1045, !noalias !1048
  %i.ci = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.ch, ptr %i.ci, align 8, !alias.scope !1045, !noalias !1048
  %i.cj = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 0, ptr %i.cj, align 8, !alias.scope !1045, !noalias !1048
  invoke void @_RNvXs1g_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_23CertificatePayloadTls13NtNtB8_5codec5Codec4read(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.u unwind label %bb.k

bb.u:                                             ; preds = %bb.t
  %i.ck = load i64, ptr %i.d, align 8, !range !29, !noundef !5
  %i.cl = icmp eq i64 %i.ck, -1
  br i1 %i.cl, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.cn = load ptr, ptr %2, align 8, !nonnull !5, !align !134, !noundef !5
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error14InvalidMessageEB5_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.cn, i8 noundef 8, i8 undef, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cm)
          to label %bb.aw unwind label %bb.k

.thread144:                                       ; preds = %bb.aa, %bb.x
  %lpad.thr_comm142 = landingpad { ptr, i32 }
          cleanup
  br label %.thread136

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.co = load atomic i64, ptr @_RNvCs4KeUGOPwGKr_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.cp = icmp ult i64 %i.co, 6
  call void @llvm.assume(i1 %i.cp)
  %i.cq = icmp samesign ugt i64 %i.co, 4
  br i1 %i.cq, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMs1h_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_23CertificatePayloadTls1310into_owned(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.d)
          to label %bb.aa unwind label %.thread144

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %.val65 = load i64, ptr %i.bz, align 8, !noundef !5
  store i64 %.val65, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.am, ptr %i.j, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1i_NtCs7ZUl82OSlxp_6rustls5enumsNtB6_31CertificateCompressionAlgorithmNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr %.sroa.445.0..sroa_idx, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.k, ptr %i.cr, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.449.0..sroa_idx, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.bg, ptr %i.cs, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr @_RNvXs8_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.453.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @29, ptr %i.i, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 21, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr @29, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 21, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr @125, ptr %i.cw, align 8
  invoke void @_RINvNtCs4KeUGOPwGKr_3log13___private_api3loguNtB2_12GlobalLoggerECs7ZUl82OSlxp_6rustls(ptr noundef nonnull @124, ptr noundef nonnull %i.j, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i)
          to label %bb.z unwind label %bb.av

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.x

bb.aa:                                            ; preds = %bb.x
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.416.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 -9223372036854775803, ptr %i.f, align 8
  invoke void @_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB2_14MessagePayload9handshake(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(136) %i.f)
          to label %bb.ab unwind label %.thread144

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  store i16 5, ptr %i.cx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.h, ptr noundef nonnull align 8 dereferenceable(160) %i.g, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.cz, ptr noundef nonnull align 8 dereferenceable(312) %i.cy, i64 312, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.db = load i64, ptr %i.da, align 8, !noundef !5
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.dd = load <2 x ptr>, ptr %i.af, align 8
  store <2 x ptr> %i.dd, ptr %i.dc, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  store i64 %i.db, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  store i8 1, ptr %i.df, align 8
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1050
  %i.dg = call noundef align 8 dereferenceable_or_null(400) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2273) 400, i64 noundef range(i64 1, 9) 8) #22, !noalias !1050 ; 3 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %bb.ac, label %bb.af, !prof !490

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 400) #27
          to label %.noexc76 unwind label %bb.ad

.noexc76:                                         ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1317ExpectCertificateEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(400) %i.c) #24
          to label %bb.au unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

.body:                                            ; preds = %bb.af
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.thread136

bb.af:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.dg, ptr noundef nonnull align 8 dereferenceable(400) %i.c, i64 400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.b, ptr noundef nonnull align 8 dereferenceable(168) %i.h, i64 168, i1 false)
  invoke void @_RNvXs1_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB5_17ExpectCertificateINtNtB9_12common_state5StateNtNtB7_11server_conn20ServerConnectionDataE6handle(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 %i.dg, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.b)
          to label %bb.ag unwind label %.body

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.ai unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body73 unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit82 unwind label %.loopexit.split-lp

bb.aj:                                            ; preds = %bb.ah
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit82: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.dn = load i64, ptr %i.v, align 8, !range !29, !alias.scope !1053, !noundef !5
  %i.do = icmp eq i64 %i.dn, -1
  br i1 %i.do, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake28CompressedCertificatePayloadEBH_.exit, label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit82
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i.i.i unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %.thread unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i.i.i: ; preds = %bb.ak
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake28CompressedCertificatePayloadEBH_.exit unwind label %.thread128

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake28CompressedCertificatePayloadEBH_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit82, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.dr = load i64, ptr %3, align 8, !range !271, !noundef !5 ; 2 uses
  %i.ds = icmp ne i64 %i.dr, -9223372036854775807
  call void @llvm.assume(i1 %i.ds)
  %i.dt = icmp sgt i64 %i.dr, -9223372036854775804
  br i1 %i.dt, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake28CompressedCertificatePayloadEBH_.exit
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message14MessagePayloadEBH_(ptr noalias nofree noundef align 8 dereferenceable(160) %3)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1327ExpectCompressedCertificateEEB1g_.exit unwind label %bb.as

bb.ao:                                            ; preds = %bb.aq, %bb.ap
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %3)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1327ExpectCompressedCertificateEEB1g_.exit unwind label %bb.as

bb.ap:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake28CompressedCertificatePayloadEBH_.exit
  %i.du = load i64, ptr %i.aa, align 8, !range !199, !noundef !5 ; 2 uses
  %i.dv = icmp ne i64 %i.du, -9223372036854775807
  call void @llvm.assume(i1 %i.dv)
  %i.dw = icmp eq i64 %i.du, -9223372036854775802
  br i1 %i.dw, label %bb.ao, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16HandshakePayloadEBH_(ptr noalias nofree noundef align 8 dereferenceable(136) %i.aa)
          to label %bb.ao unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %3) #24
          to label %common.resume unwind label %bb.at

.body96:                                          ; preds = %bb.as, %bb.bu, %bb.bp
  %.pn62 = phi { ptr, i32 } [ %.pn60110, %bb.bu ], [ %.pn60110, %bb.bp ], [ %i.dy, %bb.as ] ; 2 uses
  %.sroa.030.6 = phi i8 [ %.sroa.030.0111, %bb.bu ], [ %.sroa.030.0111, %bb.bp ], [ %.sroa.030.7, %bb.as ]
  %cond = icmp eq i8 %.sroa.030.6, 0
  br i1 %cond, label %common.resume, label %.thread152

bb.as:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i, %bb.bh, %bb.ao, %bb.an
  %.sroa.030.7 = phi i8 [ 1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i ], [ 1, %bb.bh ], [ 0, %bb.ao ], [ 0, %bb.an ]
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %.body96

bb.at:                                            ; preds = %bb.bv, %bb.au, %bb.bw, %.noexc99, %bb.bu, %bb.bt, %bb.bs, %bb.bp, %bb.bo, %bb.bd, %bb.av, %bb.ar, %.thread136, %.body73
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1327ExpectCompressedCertificateEEB1g_.exit: ; preds = %bb.an, %bb.ao, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEBH_.exit
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 392, i64 noundef 8) #22
  ret void

bb.au:                                            ; preds = %bb.ad
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message14MessagePayloadEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.h)
          to label %.thread136 unwind label %bb.at

bb.av:                                            ; preds = %bb.y
  %lpad.thr_comm.split-lp143 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23CertificatePayloadTls13EBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.n) #24
          to label %.thread136 unwind label %bb.at

bb.aw:                                            ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.l, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.p

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ay

bb.ax:                                            ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ay

bb.ay:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit, %bb.ax, %bb.bc
  %i.ea = load i64, ptr %i.v, align 8, !range !29, !alias.scope !1060, !noundef !5
  %i.eb = icmp eq i64 %i.ea, -1
  br i1 %i.eb, label %.critedge, label %bb.az

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i.i.i88 unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %.thread unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i.i.i88: ; preds = %bb.az
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %.critedge unwind label %.thread128

bb.bc:                                            ; preds = %.loopexit166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.s, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.ay

bb.bd:                                            ; preds = %bb.e
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message14MessagePayloadEBH_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.u) #24
          to label %.thread152 unwind label %bb.at

bb.be:                                            ; preds = %bb.e
  %.sroa.05.0.copyload = load i8, ptr %i.t, align 8
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.67, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.67.0..sroa_idx, i64 39, i1 false)
  %.sroa.810.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.810, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.810.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message14MessagePayloadEBH_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.u)
          to label %bb.bf unwind label %bb.b

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.67, i64 39, i1 false)
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.541.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.810, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.810)
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.440.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.6, i64 39, i1 false)
  store i8 %.sroa.05.0.copyload, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEBH_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEBH_.exit: ; preds = %bb.bi, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i, %bb.bf, %bb.bh
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1327ExpectCompressedCertificateEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(392) %1)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1327ExpectCompressedCertificateEEB1g_.exit unwind label %bb.bg

common.resume:                                    ; preds = %.body96, %bb.bw, %bb.ar, %bb.bg
  %common.resume.op = phi { ptr, i32 } [ %i.ef, %bb.bg ], [ %.pn62156, %bb.bw ], [ %.pn62, %.body96 ], [ %i.dx, %bb.ar ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 392, i64 noundef 8) #22
  resume { ptr, i32 } %common.resume.op

bb.bg:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEBH_.exit
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

.critedge:                                        ; preds = %bb.ay, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.eg = load i64, ptr %3, align 8, !range !271, !noundef !5 ; 3 uses
  %i.eh = icmp ne i64 %i.eg, -9223372036854775807
  call void @llvm.assume(i1 %i.eh)
  %i.ei = icmp sgt i64 %i.eg, -9223372036854775804
  br i1 %i.ei, label %bb.bm, label %bb.bh

bb.bh:                                            ; preds = %.critedge
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message14MessagePayloadEBH_(ptr noalias nofree noundef align 8 dereferenceable(160) %3)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEBH_.exit unwind label %bb.as

bb.bi:                                            ; preds = %._crit_edge, %bb.bm
  %i.ej = phi i64 [ %.pre, %._crit_edge ], [ %i.eg, %bb.bm ]
  %i.ek = icmp eq i64 %i.ej, -1
  br i1 %i.ek, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEBH_.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.el = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %.thread152 unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i: ; preds = %bb.bj
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEBH_.exit unwind label %bb.as

bb.bm:                                            ; preds = %.critedge
  %i.en = load i64, ptr %i.aa, align 8, !range !199, !noundef !5 ; 2 uses
  %i.eo = icmp ne i64 %i.en, -9223372036854775807
  call void @llvm.assume(i1 %i.eo)
  %i.ep = icmp eq i64 %i.en, -9223372036854775802
  br i1 %i.ep, label %bb.bi, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16HandshakePayloadEBH_(ptr noalias nofree noundef align 8 dereferenceable(136) %i.aa)
          to label %._crit_edge unwind label %bb.bo

._crit_edge:                                      ; preds = %bb.bn
  %.pre = load i64, ptr %3, align 8, !range !29, !alias.scope !1067
  br label %bb.bi

bb.bo:                                            ; preds = %bb.bn
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %3) #24
          to label %.thread152 unwind label %bb.at

.thread:                                          ; preds = %bb.ba, %bb.al, %.body73, %.thread128
  %.sroa.029.0112 = phi i1 [ false, %bb.al ], [ %.sroa.029.1.ph, %.thread128 ], [ false, %.body73 ], [ false, %bb.ba ]
  %.sroa.030.0111 = phi i8 [ 0, %bb.al ], [ %.sroa.030.1.ph, %.thread128 ], [ %.sroa.030.2, %.body73 ], [ 1, %bb.ba ] ; 2 uses
  %.pn60110 = phi { ptr, i32 } [ %i.dp, %bb.al ], [ %lpad.thr_comm, %.thread128 ], [ %.pn58, %.body73 ], [ %i.ec, %bb.ba ] ; 2 uses
  %i.er = load i64, ptr %3, align 8, !range !271, !noundef !5 ; 2 uses
  %i.es = icmp ne i64 %i.er, -9223372036854775807
  call void @llvm.assume(i1 %i.es)
  %i.et = icmp sgt i64 %i.er, -9223372036854775804
  br i1 %i.et, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %.thread
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message14MessagePayloadEBH_(ptr noalias nofree noundef align 8 dereferenceable(160) %3) #24
          to label %.body96 unwind label %bb.at

bb.bq:                                            ; preds = %.thread
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !range !199, !noundef !5 ; 2 uses
  %i.ew = icmp ne i64 %i.ev, -9223372036854775807
  call void @llvm.assume(i1 %i.ew)
  %i.ex = icmp eq i64 %i.ev, -9223372036854775802
  br i1 %i.ex, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  br i1 %.sroa.029.0112, label %bb.bt, label %bb.bu

bb.bs:                                            ; preds = %bb.bq
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16HandshakePayloadEBH_(ptr noalias nofree noundef align 8 dereferenceable(136) %i.eu) #24
          to label %bb.bu unwind label %bb.at

bb.bt:                                            ; preds = %bb.br
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 32
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake28CompressedCertificatePayloadEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ey) #24
          to label %bb.bu unwind label %bb.at

bb.bu:                                            ; preds = %bb.br, %bb.bs, %bb.bt
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %3) #24
          to label %.body96 unwind label %bb.at

.thread152:                                       ; preds = %bb.bk, %bb.bd, %bb.b, %bb.bo, %.body96
  %.pn62156 = phi { ptr, i32 } [ %.pn62, %.body96 ], [ %i.eq, %bb.bo ], [ %lpad.thr_comm.split-lp, %bb.b ], [ %i.ee, %bb.bd ], [ %i.el, %bb.bk ]
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  call void @llvm.experimental.noalias.scope.decl(metadata !1073)
  %i.fa = load ptr, ptr %i.ez, align 8, !alias.scope !1076, !nonnull !5, !noundef !5
  %i.fb = atomicrmw sub ptr %i.fa, i64 1 release, align 8, !noalias !1076
  %i.fc = icmp eq i64 %i.fb, 1
  br i1 %i.fc, label %bb.bv, label %.noexc99

bb.bv:                                            ; preds = %.thread152
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ez) #25
          to label %.noexc99 unwind label %bb.at

.noexc99:                                         ; preds = %bb.bv, %.thread152
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls7hash_hs13HandshakeHashEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %1) #24
          to label %bb.bw unwind label %bb.at

bb.bw:                                            ; preds = %.noexc99
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule43KeyScheduleTrafficWithClientFinishedPendingEBH_(ptr noalias nofree noundef align 8 dereferenceable(312) %i.fd) #24
          to label %common.resume unwind label %bb.at
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs0_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_13Aes128GcmAeadNtNtB9_6cipher18Tls13AeadAlgorithm12extract_keys(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, ptr noalias nofree readonly align 8 captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(12) %3) unnamed_addr #3 {
bb.a:
  %.sroa.5 = alloca [43 x i8], align 1            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.5.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %.sroa.5.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(12) %3, i64 12, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(43) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(43) %.sroa.5, i64 43, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_13Aes128GcmAeadNtNtB9_6cipher18Tls13AeadAlgorithm4fips(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4fips()
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs0_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_13Aes128GcmAeadNtNtB9_6cipher18Tls13AeadAlgorithm7key_len(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !134, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  ret i64 %i.c
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs0_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_13Aes128GcmAeadNtNtB9_6cipher18Tls13AeadAlgorithm9decrypter(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(12) %2) unnamed_addr #1 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !align !134, !noundef !5
  %i.a = tail call fastcc { ptr, ptr } @_RNvMs1_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_13AeadAlgorithm9decrypter(ptr nonnull %.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %1, ptr noalias nofree noundef readonly align 1 captures(none) dereferenceable(12) %2)
  ret { ptr, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs0_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_13Aes128GcmAeadNtNtB9_6cipher18Tls13AeadAlgorithm9encrypter(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(12) %2) unnamed_addr #1 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !align !134, !noundef !5
  %i.a = tail call fastcc { ptr, ptr } @_RNvMs1_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_13AeadAlgorithm9encrypter(ptr nonnull %.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %1, ptr noalias nofree noundef readonly align 1 captures(none) dereferenceable(12) %2)
  ret { ptr, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs8ticketerNtB5_15Rfc5077TicketerNtNtNtBb_6server11server_conn15ProducesTickets7decrypt(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 captures(address, read_provenance) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [17 x i8], align 1                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [17 x i8], align 1                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 15 uses
  %i.j = alloca [32 x i8], align 8                ; 9 uses
  %i.k = alloca [32 x i8], align 8                ; 8 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1248
  %i.n = load atomic i64, ptr %i.m seq_cst, align 8
  %i.o = icmp ugt i64 %3, %i.n
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvNtCs7ZUl82OSlxp_6rustls8polyfill12try_split_at(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i64 noundef 16)
  %i.p = load ptr, ptr %i.l, align 8, !noundef !5 ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.436.0.copyload = load i64, ptr %.sroa.436.0..sroa_idx, align 8 ; 5 uses
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.537.0.copyload = load ptr, ptr %.sroa.537.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.638.0.copyload = load i64, ptr %.sroa.638.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvNtCs7ZUl82OSlxp_6rustls8polyfill12try_split_at(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.537.0.copyload, i64 noundef %.sroa.638.0.copyload, i64 noundef 16)
  %i.q = load ptr, ptr %i.k, align 8, !noundef !5 ; 3 uses
  %.not63 = icmp eq ptr %i.q, null
  br i1 %.not63, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %bb.l, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit, %bb.h, %bb.au, %bb.e, %bb.c
  ret void

bb.g:                                             ; preds = %bb.d
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.440.0.copyload = load i64, ptr %.sroa.440.0..sroa_idx, align 8 ; 6 uses
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.541.0.copyload = load ptr, ptr %.sroa.541.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %.sroa.642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.642.0.copyload = load i64, ptr %.sroa.642.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !5, !align !134, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.v = icmp ult i64 %.sroa.642.0.copyload, %i.u
  br i1 %i.v, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.w = sub nuw i64 %.sroa.642.0.copyload, %i.u
  call void @_RNvNtCs7ZUl82OSlxp_6rustls8polyfill12try_split_at(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.541.0.copyload, i64 noundef %.sroa.642.0.copyload, i64 noundef %i.w)
  %i.x = load ptr, ptr %i.j, align 8, !noundef !5 ; 3 uses
  %.not64 = icmp eq ptr %i.x, null
  br i1 %.not64, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.f

bb.k:                                             ; preds = %bb.i
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.444.0.copyload = load i64, ptr %.sroa.444.0..sroa_idx, align 8 ; 12 uses
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.545.0.copyload = load ptr, ptr %.sroa.545.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %.sroa.646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.646.0.copyload = load i64, ptr %.sroa.646.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.y = add i64 %.sroa.436.0.copyload, 2
  %i.z = add i64 %i.y, %.sroa.440.0.copyload
  %i.aa = add i64 %i.z, %.sroa.444.0.copyload     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.aa, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.ab = load i64, ptr %i.e, align 8, !range !135, !noundef !5
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !492, !noundef !5 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.ac, label %bb.m, label %bb.n, !prof !493

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.m:                                             ; preds = %bb.k
end_hunk_3
begin_hunk_4_@_RNvXs0_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs8ticketerNtB5_15Rfc5077TicketerNtNtNtBb_6server11server_conn15ProducesTickets7decrypt:bb.a
  %i.cj = load ptr, ptr %i.ch, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ck = icmp ule i64 %i.cb, %i.cg
  call void @llvm.assume(i1 %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not66 = icmp eq i64 %i.cb, 0
  br i1 %.not66, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.at, %bb.ar
  store i64 %i.cg, ptr %0, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cj, ptr %.sroa.432.0..sroa_idx, align 8
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cb, ptr %.sroa.633.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g)
          to label %bb.au unwind label %bb.af

bb.at:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cj, ptr nonnull align 1 %i.ca, i64 %i.cb, i1 false)
  br label %bb.as

bb.au:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.f

bb.av:                                            ; preds = %bb.aq, %bb.ah
  unreachable

bb.aw:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ae, %bb.aw, %bb.ab, %bb.u
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %.thread85, %bb.ay
  %common.resume.op = phi { ptr, i32 } [ %i.cl, %bb.ay ], [ %.pn.pn, %.thread85 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit: ; preds = %bb.ax
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.f

bb.ba:                                            ; preds = %bb.bb, %bb.al, %.thread85
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.bb:                                            ; preds = %bb.ad, %bb.ah
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs_NtCs222MioR9bx1_9aws_lc_rs2ivINtB4_11FixedLengthKj10_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull dereferenceable(16) %i.bm)
          to label %.thread85 unwind label %bb.ba
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs8ticketerNtB5_15Rfc5077TicketerNtNtNtBb_6server11server_conn15ProducesTickets7enabled(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret i1 true
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs8ticketerNtB5_15Rfc5077TicketerNtNtNtBb_6server11server_conn15ProducesTickets7encrypt(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(address, read_provenance) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 11 uses
  %i.h = alloca [72 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 17 uses
  %i.j = alloca [17 x i8], align 1                ; 6 uses
  %i.k = alloca [17 x i8], align 1                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.m = load i64, ptr %i.f, align 8, !range !135, !noundef !5
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !492, !noundef !5 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.n, label %bb.b, label %bb.c, !prof !493

bb.b:                                             ; preds = %bb.a
  %i.r = load i64, ptr %i.q, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.t = icmp samesign ule i64 %3, %i.p
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.p, ptr %i.l, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  store ptr %i.s, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 7 uses
  store i64 0, ptr %i.v, align 8
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1256
  invoke void @_RINvMs_NtNtCs222MioR9bx1_9aws_lc_rs6cipher6paddedNtB5_24PaddedBlockEncryptingKey7encryptINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([17 x i8]) align 1 captures(address) dereferenceable(17) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(504) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.f unwind label %.split.thread

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 1 %2, i64 %3, i1 false)
  store i64 %3, ptr %i.v, align 8
  br label %bb.d

.noexc53:                                         ; preds = %bb.l, %.body
  br i1 %.sroa.014.2, label %bb.ax, label %common.resume

.split.thread:                                    ; preds = %bb.aw, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.f:                                             ; preds = %bb.d
  %i.x = load i8, ptr %i.j, align 1, !range !32, !noundef !5 ; 3 uses
  %i.y = icmp eq i8 %i.x, 2
  br i1 %i.y, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.422.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.416.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i8 %i.x, ptr %i.k, align 1
  %i.z = trunc nuw i8 %i.x to i1
  br i1 %i.z, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs6cipher17DecryptionContextECs7ZUl82OSlxp_6rustls.exit80.sink.split, label %bb.k

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs6cipher17DecryptionContextECs7ZUl82OSlxp_6rustls.exit80.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs6cipher17DecryptionContextECs7ZUl82OSlxp_6rustls.exit80.sink.split: ; preds = %bb.g, %bb.h
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs6cipher17DecryptionContextECs7ZUl82OSlxp_6rustls.exit80

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs6cipher17DecryptionContextECs7ZUl82OSlxp_6rustls.exit80: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs6cipher17DecryptionContextECs7ZUl82OSlxp_6rustls.exit80.sink.split, %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit unwind label %bb.i

bb.i:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs6cipher17DecryptionContextECs7ZUl82OSlxp_6rustls.exit80
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %.noexc53, %bb.ax, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.i ], [ %.pn49, %.noexc53 ], [ %.pn5182, %bb.ax ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs6cipher17DecryptionContextECs7ZUl82OSlxp_6rustls.exit80
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
  br label %bb.as

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ac = load i64, ptr %i.v, align 8, !noundef !5 ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, -1
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add nuw i64 %i.ac, 34                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.ae, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.n unwind label %bb.m

.body:                                            ; preds = %bb.ao, %bb.w, %bb.m, %bb.q
  %.pn49 = phi { ptr, i32 } [ %.pn, %bb.q ], [ %i.bj, %bb.w ], [ %i.ah, %bb.m ], [ %i.di, %bb.ao ] ; 2 uses
  %.sroa.014.2 = phi i1 [ %.sroa.014.4, %bb.q ], [ true, %bb.w ], [ %.sroa.014.3, %bb.m ], [ false, %bb.ao ]
  %i.af = load i8, ptr %i.k, align 1, !range !4, !alias.scope !1091, !noundef !5
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.l, label %.noexc53

bb.l:                                             ; preds = %.body
  invoke void @_RNvXs_NtCs222MioR9bx1_9aws_lc_rs2ivINtB4_11FixedLengthKj10_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull dereferenceable(16) %.sroa.422.0..sroa_idx)
          to label %.noexc53 unwind label %bb.at

bb.m:                                             ; preds = %bb.ap, %bb.x, %bb.o, %bb.k
  %.sroa.014.3 = phi i1 [ true, %bb.o ], [ true, %bb.x ], [ false, %bb.ap ], [ true, %bb.k ]
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.k
  %i.ai = load i64, ptr %i.e, align 8, !range !135, !noundef !5
  %i.aj = trunc nuw i64 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !range !492, !noundef !5 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.aj, label %bb.o, label %bb.p, !prof !493

bb.o:                                             ; preds = %bb.n
  %i.an = load i64, ptr %i.am, align 8
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.al, i64 %i.an) #27
          to label %bb.au unwind label %bb.m

bb.p:                                             ; preds = %bb.n
  %i.ao = load ptr, ptr %i.am, align 8, !nonnull !5, !noundef !5
  %i.ap = icmp ule i64 %i.ae, %i.al
  call void @llvm.assume(i1 %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.al, ptr %i.i, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 5 uses
  store ptr %i.ao, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 10 uses
  store i64 0, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef 16)
          to label %bb.s unwind label %bb.r

bb.q:                                             ; preds = %bb.ai, %bb.r
  %.pn = phi { ptr, i32 } [ %i.at, %bb.r ], [ %i.cl, %bb.ai ]
  %.sroa.014.4 = phi i1 [ true, %bb.r ], [ %.sroa.014.5, %bb.ai ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #24
          to label %.body unwind label %bb.at

bb.r:                                             ; preds = %bb.z, %bb.s, %bb.p, %bb.ag, %bb.ae, %bb.ad, %bb.ab, %bb.u
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.s:                                             ; preds = %bb.p
  %i.au = load i64, ptr %i.ar, align 8, !alias.scope !1094, !noundef !5 ; 2 uses
  %i.av = icmp sgt i64 %i.au, -1
  call void @llvm.assume(i1 %i.av)
  %i.aw = load ptr, ptr %i.aq, align 8, !alias.scope !1094, !nonnull !5, !noundef !5
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ax, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false)
  %.pre.i = load i64, ptr %i.ar, align 8, !alias.scope !1094
  %i.ay = add i64 %.pre.i, 16
  store i64 %i.ay, ptr %i.ar, align 8, !alias.scope !1094
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef 16)
          to label %bb.t unwind label %bb.r

bb.t:                                             ; preds = %bb.s
  %i.az = load i64, ptr %i.ar, align 8, !alias.scope !1097, !noundef !5 ; 2 uses
  %i.ba = icmp sgt i64 %i.az, -1
  call void @llvm.assume(i1 %i.ba)
  %i.bb = load ptr, ptr %i.aq, align 8, !alias.scope !1097, !nonnull !5, !noundef !5
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bc, ptr noundef nonnull readonly align 1 dereferenceable(16) %.sroa.422.0..sroa_idx, i64 16, i1 false)
  %.pre.i55 = load i64, ptr %i.ar, align 8, !alias.scope !1097
  %i.bd = add i64 %.pre.i55, 16
  store i64 %i.bd, ptr %i.ar, align 8, !alias.scope !1097
  %i.be = load i64, ptr %i.v, align 8, !noundef !5 ; 3 uses
  %i.bf = icmp sgt i64 %i.be, -1
  call void @llvm.assume(i1 %i.bf)
  %i.bg = icmp samesign ugt i64 %i.be, 65535
  br i1 %i.bg, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = trunc nuw i64 %i.be to i16
  %i.bi = call i16 @llvm.bswap.i16(i16 %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 2, ptr %.sroa.432.0..sroa_idx, align 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i16 %i.bi, ptr %.sroa.533.0..sroa_idx, align 8
  invoke void @_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterhKj2_EECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.z unwind label %bb.r

bb.v:                                             ; preds = %bb.t
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body unwind label %bb.y

bb.x:                                             ; preds = %bb.v
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.av unwind label %bb.m

bb.y:                                             ; preds = %bb.w
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.z:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bl = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5
  %i.bm = load i64, ptr %i.v, align 8, !noundef !5 ; 4 uses
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.bm)
          to label %.noexc62 unwind label %bb.r

.noexc62:                                         ; preds = %bb.z
  %i.bn = load i64, ptr %i.ar, align 8, !alias.scope !1100, !noundef !5 ; 3 uses
  %i.bo = icmp sgt i64 %i.bn, -1
  call void @llvm.assume(i1 %i.bo)
  %.not.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.noexc62
  %i.bp = load ptr, ptr %i.aq, align 8, !alias.scope !1100, !nonnull !5, !noundef !5
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bn
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr nonnull readonly align 1 %i.bl, i64 %i.bm, i1 false)
  %.pre.i61 = load i64, ptr %i.ar, align 8, !alias.scope !1100
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.noexc62
  %i.br = phi i64 [ %.pre.i61, %bb.aa ], [ %i.bn, %.noexc62 ]
  %i.bs = add i64 %i.br, %i.bm                    ; 2 uses
  store i64 %i.bs, ptr %i.ar, align 8, !alias.scope !1100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.bt = load ptr, ptr %i.aq, align 8, !nonnull !5, !noundef !5
  invoke fastcc void @_RNvNtCs222MioR9bx1_9aws_lc_rs4hmac4sign(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1232) %i.as, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bt, i64 noundef %i.bs)
          to label %bb.ac unwind label %bb.r

bb.ac:                                            ; preds = %bb.ab
  %i.bu = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !5 ; 7 uses
  %i.bw = icmp ult i64 %i.bv, 65
  br i1 %i.bw, label %bb.ae, label %bb.ad, !prof !508

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bv, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #27
          to label %bb.au unwind label %bb.r

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bx = load i64, ptr %i.v, align 8, !noundef !5 ; 2 uses
  %i.by = icmp sgt i64 %i.bx, -1
  call void @llvm.assume(i1 %i.by)
  %i.bz = add nuw nsw i64 %i.bv, 32
  %i.ca = add nuw i64 %i.bz, %i.bx                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.ca, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.af unwind label %bb.r

bb.af:                                            ; preds = %bb.ae
  %i.cb = load i64, ptr %i.c, align 8, !range !135, !noundef !5
  %i.cc = trunc nuw i64 %i.cb to i1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !range !492, !noundef !5 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.cc, label %bb.ag, label %bb.ah, !prof !493

bb.ag:                                            ; preds = %bb.af
  %i.cg = load i64, ptr %i.cf, align 8
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ce, i64 %i.cg) #27
          to label %bb.au unwind label %bb.r

bb.ah:                                            ; preds = %bb.af
  %i.ch = load ptr, ptr %i.cf, align 8, !nonnull !5, !noundef !5
  %i.ci = icmp ule i64 %i.ca, %i.ce
  call void @llvm.assume(i1 %i.ci)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.ce, ptr %i.g, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %i.ch, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 7 uses
  store i64 0, ptr %i.ck, align 8
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.543.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  store i64 0, ptr %i.b, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 16, ptr %.sroa.442.0..sroa_idx, align 8
  invoke void @_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterhKj10_EECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.aj unwind label %bb.ai

bb.ai:                                            ; preds = %bb.al, %bb.aj, %bb.ak, %bb.ah
  %.sroa.014.5 = phi i1 [ false, %bb.al ], [ false, %bb.ak ], [ true, %bb.aj ], [ true, %bb.ah ]
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #24
          to label %bb.q unwind label %bb.at

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 16)
          to label %bb.ak unwind label %bb.ai

bb.ak:                                            ; preds = %bb.aj
  %i.cm = load i64, ptr %i.ck, align 8, !alias.scope !1103, !noundef !5 ; 2 uses
  %i.cn = icmp sgt i64 %i.cm, -1
  call void @llvm.assume(i1 %i.cn)
  %i.co = load ptr, ptr %i.cj, align 8, !alias.scope !1103, !nonnull !5, !noundef !5
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cp, ptr noundef nonnull readonly align 1 dereferenceable(16) %.sroa.422.0..sroa_idx, i64 16, i1 false)
  %.pre.i64 = load i64, ptr %i.ck, align 8, !alias.scope !1103
  %i.cq = add i64 %.pre.i64, 16
  store i64 %i.cq, ptr %i.ck, align 8, !alias.scope !1103
  %i.cr = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.cs = load i64, ptr %i.l, align 8, !range !30, !noundef !5
  %i.ct = load i64, ptr %i.v, align 8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cu = icmp sgt i64 %i.ct, -1
  call void @llvm.assume(i1 %i.cu)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.ct
  store ptr %i.cr, ptr %i.a, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.cs, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.cr, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.cv, ptr %i.cy, align 8
  invoke void @_RNvXs0_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.al unwind label %bb.ai

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.bv)
          to label %.noexc69 unwind label %bb.ai

.noexc69:                                         ; preds = %bb.al
  %i.cz = load i64, ptr %i.ck, align 8, !alias.scope !1106, !noundef !5 ; 3 uses
  %i.da = icmp sgt i64 %i.cz, -1
end_hunk_4
begin_hunk_5_@_RNvXs5_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB5_14ExpectFinishedINtNtB9_12common_state5StateNtNtB7_11server_conn20ServerConnectionDataE6handle:bb.a
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body105

.loopexit.split-lp:                               ; preds = %_RNvMs5_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_43KeyScheduleTrafficWithClientFinishedPending18sign_client_finish.exit, %bb.m, %bb.p, %bb.q, %bb.k, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7ZUl82OSlxp_6rustls.exit.thread.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit3.i
  %.sroa.019.1.ph = phi i1 [ true, %_RNvMs5_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_43KeyScheduleTrafficWithClientFinishedPending18sign_client_finish.exit ], [ true, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7ZUl82OSlxp_6rustls.exit.thread.i ], [ true, %bb.m ], [ true, %bb.k ], [ true, %bb.p ], [ true, %bb.q ], [ false, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit3.i ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body105

bb.j:                                             ; preds = %_RNvMs5_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_43KeyScheduleTrafficWithClientFinishedPending18sign_client_finish.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.val = load ptr, ptr %i.bq, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.val65 = load i64, ptr %i.br, align 8, !noundef !5 ; 3 uses
  %i.bs = extractvalue { ptr, i64 } %i.bp, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %.not.i = icmp eq i64 %i.bs, %.val65
  br i1 %.not.i, label %bb.k, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7ZUl82OSlxp_6rustls.exit.thread.i

bb.k:                                             ; preds = %bb.j
  %i.bt = extractvalue { ptr, i64 } %i.bp, 0      ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.val65
  %i.bv = getelementptr inbounds nuw i8, ptr %.val, i64 %.val65
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ab, ptr noundef nonnull readonly %i.bt, ptr noundef nonnull readonly %i.bu, ptr noundef nonnull readonly %.val, ptr noundef nonnull readonly %i.bv)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.k
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ab, align 8, !noalias !1296 ; 2 uses
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.411.0.copyload.i = load ptr, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !1296 ; 2 uses
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.sroa.512.0.copyload.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !noalias !1296 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !1296 ; 2 uses
  %i.bw = icmp ult i64 %.sroa.512.0.copyload.i, %.sroa.7.0.copyload.i
  br i1 %i.bw, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7ZUl82OSlxp_6rustls.exit.lr.ph.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7ZUl82OSlxp_6rustls.exit.thread.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7ZUl82OSlxp_6rustls.exit.lr.ph.i: ; preds = %.noexc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.411.0.copyload.i) ]
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7ZUl82OSlxp_6rustls.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7ZUl82OSlxp_6rustls.exit.i: ; preds = %.noexc76, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7ZUl82OSlxp_6rustls.exit.lr.ph.i
  %.sroa.01.018.i = phi i8 [ 1, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7ZUl82OSlxp_6rustls.exit.lr.ph.i ], [ %i.cd, %.noexc76 ]
  %.sroa.512.017.i = phi i64 [ %.sroa.512.0.copyload.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7ZUl82OSlxp_6rustls.exit.lr.ph.i ], [ %i.cc, %.noexc76 ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %.sroa.512.017.i
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.411.0.copyload.i, i64 %.sroa.512.017.i
  %.val.i = load i8, ptr %i.bx, align 1, !noundef !5
  %.val10.i = load i8, ptr %i.by, align 1, !noundef !5
  %i.bz = icmp eq i8 %.val.i, %.val10.i
  %i.ca = zext i1 %i.bz to i8
  %i.cb = invoke noundef i8 @_RINvCs1MQORtdlxCK_6subtle9black_boxhECs7ZUl82OSlxp_6rustls(i8 noundef %i.ca) #25
          to label %.noexc76 unwind label %.loopexit177

.noexc76:                                         ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7ZUl82OSlxp_6rustls.exit.i
  %i.cc = add i64 %.sroa.512.017.i, 1             ; 2 uses
  %i.cd = and i8 %i.cb, %.sroa.01.018.i           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cc, %.sroa.7.0.copyload.i
  br i1 %exitcond.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7ZUl82OSlxp_6rustls.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7ZUl82OSlxp_6rustls.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7ZUl82OSlxp_6rustls.exit.thread.i: ; preds = %.noexc76, %.noexc, %bb.j
  %.sroa.01.0.lcssa.sink.i = phi i8 [ 0, %bb.j ], [ 1, %.noexc ], [ %i.cd, %.noexc76 ]
  %i.ce = invoke noundef i8 @_RINvCs1MQORtdlxCK_6subtle9black_boxhECs7ZUl82OSlxp_6rustls(i8 noundef %.sroa.01.0.lcssa.sink.i) #25
          to label %bb.l unwind label %.loopexit.split-lp

bb.l:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7ZUl82OSlxp_6rustls.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %.not = icmp eq i8 %i.ce, 0
  br i1 %.not, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.cf = load ptr, ptr %2, align 8, !nonnull !5, !align !134, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store i8 6, ptr %i.an, align 8
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error5ErrorEB5_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ao, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.cf, i8 noundef 17, i8 undef, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.an)
          to label %bb.n unwind label %.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.ao, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %bb.o

bb.o:                                             ; preds = %bb.s, %bb.n
  invoke void @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls6crypto4hmacNtB4_3TagNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ar)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_.exit79 unwind label %.split161

bb.p:                                             ; preds = %bb.l
  %i.cg = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs7ZUl82OSlxp_6rustls7hash_hsNtB4_13HandshakeHash11add_message(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %3)
          to label %bb.q unwind label %.loopexit.split-lp ; 0 uses

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.ch = load ptr, ptr %2, align 8, !nonnull !5, !align !134, !noundef !5
  invoke void @_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState23check_aligned_handshake(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.am, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.ch)
          to label %bb.r unwind label %.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.ci = load i8, ptr %i.am, align 8, !range !132, !noundef !5
  %.not42 = icmp eq i8 %i.ci, -1
  br i1 %.not42, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.am, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %bb.o

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.ai, ptr noundef nonnull align 8 dereferenceable(240) %i.as, i64 240, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  invoke void @_RNvMs_NtCs7ZUl82OSlxp_6rustls7hash_hsNtB4_13HandshakeHash12current_hash(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
          to label %bb.v unwind label %bb.dy

bb.u:                                             ; preds = %bb.v
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body105

bb.v:                                             ; preds = %bb.t
  invoke fastcc void @_RNvMs3_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_25KeyScheduleBeforeFinished12into_traffic(ptr noalias nofree noundef align 8 captures(none) dereferenceable(304) %i.aj, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(240) %i.ai, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(72) %i.ah)
          to label %bb.x unwind label %bb.u

.body98:                                          ; preds = %bb.de, %bb.db, %bb.dq, %.body, %bb.w, %.body.thread
  %.sroa.025.0 = phi i1 [ true, %.body ], [ true, %.body.thread ], [ true, %bb.dq ], [ true, %bb.w ], [ false, %bb.db ], [ false, %bb.de ]
  %.pn45 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.body ], [ %eh.lpad-body151, %.body.thread ], [ %i.il, %bb.dq ], [ %i.cl, %bb.w ], [ %i.hq, %bb.db ], [ %i.ht, %bb.de ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  invoke void @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6crypto5tls13NtB5_8OkmBlockNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ck)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule21KeyScheduleResumptionEBH_.exit unwind label %bb.do

bb.w:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i97
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body98

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.al, ptr noundef nonnull align 8 dereferenceable(224) %i.aj, i64 224, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aj, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ak, ptr noundef nonnull align 8 dereferenceable(80) %i.cm, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %1, ptr %i.cn, align 8, !alias.scope !1300, !noalias !1303
  store i64 0, ptr %i.ag, align 8, !alias.scope !1300, !noalias !1303
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1300, !noalias !1303
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1300, !noalias !1303
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.cp = load i64, ptr %i.co, align 8, !noundef !5 ; 2 uses
  %.not184 = icmp eq i64 %i.cp, 0
  br i1 %.not184, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %.sroa.529.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %.sroa.630.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.cz = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.dc = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %i.dd = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.dg = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.442.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.di = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.dl = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  br label %bb.y

._crit_edge:                                      ; preds = %bb.ds, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false)
  %i.dm = load ptr, ptr %2, align 8, !nonnull !5, !align !134, !noundef !5
  invoke void @_RNvMs6_NtCs7ZUl82OSlxp_6rustls12common_stateINtB5_15HandshakeFlightKb1_E6finishB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.dm)
          to label %bb.cy unwind label %.body

bb.y:                                             ; preds = %.lr.ph, %bb.ds
  %.sroa.039.0183 = phi i64 [ 0, %.lr.ph ], [ %i.dn, %bb.ds ]
  %i.dn = add nuw i64 %.sroa.039.0183, 1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  %i.do = load ptr, ptr %i.cq, align 8, !nonnull !5, !align !134, !noundef !5 ; 2 uses
  %i.dp = load ptr, ptr %i.cr, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = getelementptr i8, ptr %i.do, i64 72
  %.val69 = load i16, ptr %i.dr, align 8
  %i.ds = getelementptr i8, ptr %i.do, i64 74
  %.val70 = load i16, ptr %i.ds, align 2
  %.val71 = load ptr, ptr %2, align 8             ; 3 uses
  %.val72 = load ptr, ptr %i.cs, align 8          ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 104
  %i.du = load ptr, ptr %i.dt, align 8, !alias.scope !1305, !noalias !1308, !nonnull !5, !noundef !5 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 96
  %i.dw = load ptr, ptr %i.dv, align 8, !noalias !1312, !nonnull !5, !noundef !5 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 104
  %i.dy = load ptr, ptr %i.dx, align 8, !noalias !1312, !nonnull !5, !align !134, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1312
  invoke void @_RNvNtCs7ZUl82OSlxp_6rustls4rand10random_vec(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.z, ptr noundef nonnull %i.dw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dy, i64 noundef 32)
          to label %.noexc83 unwind label %.body.thread158

.noexc83:                                         ; preds = %bb.y
  %i.dz = load i64, ptr %i.z, align 8, !range !29, !noalias !1312, !noundef !5
  %i.ea = icmp eq i64 %i.dz, -1
  br i1 %i.ea, label %.thread171, label %bb.z

.thread171:                                       ; preds = %.noexc83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %.loopexit

bb.z:                                             ; preds = %.noexc83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !1312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1312
  %i.eb = invoke { i32, i32 } @_RNvNtCs7ZUl82OSlxp_6rustls4rand10random_u32(ptr noundef nonnull %i.dw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dy)
          to label %bb.ab unwind label %.body.thread15.i, !noalias !1313 ; 2 uses

bb.aa:                                            ; preds = %.thread18.i, %.thread24.i
  %.sroa.022.0.i = phi i1 [ %.sroa.022.2.i, %.thread24.i ], [ %.sroa.022.222.i, %.thread18.i ]
  %.pn48.i = phi { ptr, i32 } [ %.pn.pn.i, %.thread24.i ], [ %.pn.pn23.i, %.thread18.i ] ; 2 uses
  br i1 %.sroa.022.0.i, label %.thread.i, label %.body.thread

.body.thread15.i:                                 ; preds = %bb.bw, %bb.au, %bb.af, %bb.ac, %bb.z
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.ab:                                            ; preds = %bb.z
  %i.ec = extractvalue { i32, i32 } %i.eb, 0
  %i.ed = extractvalue { i32, i32 } %i.eb, 1      ; 2 uses
  %i.ee = trunc i32 %i.ec to i1
  br i1 %i.ee, label %bb.cv, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1312
  invoke void @_RNvMs_NtNtCs7ZUl82OSlxp_6rustls6server11server_connNtB4_12ServerConfig12current_time(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.dq)
          to label %bb.ad unwind label %.body.thread15.i, !noalias !1313

bb.ad:                                            ; preds = %bb.ac
  %i.ef = load i8, ptr %i.y, align 8, !range !132, !noalias !1312, !noundef !5 ; 2 uses
  %.not.i81 = icmp eq i8 %i.ef, -1
  br i1 %.not.i81, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.428.0..sroa_idx.i, i64 7, i1 false), !noalias !1314
  %.sroa.529.0.copyload.i = load i64, ptr %.sroa.529.0..sroa_idx.i, align 8, !noalias !1312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.630.0..sroa_idx.i, i64 48, i1 false), !noalias !1314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1312
  br label %bb.cv

bb.af:                                            ; preds = %bb.ad
  %i.eg = load i64, ptr %.sroa.529.0..sroa_idx.i, align 8, !noalias !1312, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1312
  %i.eh = load ptr, ptr %i.ct, align 8, !noalias !1312, !nonnull !5, !noundef !5
  %i.ei = load i64, ptr %i.cu, align 8, !noalias !1312, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1315
  invoke void @_RNvMs7_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_21KeyScheduleResumption17derive_ticket_psk(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eh, i64 noundef range(i64 0, -9223372036854775808) %i.ei)
          to label %.noexc.i82 unwind label %.body.thread15.i, !noalias !1313

.noexc.i82:                                       ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val72) ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.val72, i64 112 ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8, !range !33, !noalias !1315, !noundef !5
  %.not.i.i = icmp eq i64 %i.ek, -2
  %..i.i = select i1 %.not.i.i, ptr null, ptr %i.ej
  %i.el = invoke { ptr, i64 } @_RNvXs4_NtNtCs7ZUl82OSlxp_6rustls6crypto5tls13NtB5_8OkmBlockINtNtCsj6eKBz9Db1c_4core7convert5AsRefShE6as_ref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.f)
          to label %bb.ai unwind label %bb.ah, !noalias !1320 ; 2 uses

bb.ag:                                            ; preds = %bb.ax, %bb.as, %bb.ah
  %.pn.pn.i.i = phi { ptr, i32 } [ %.pn.ph.i.i, %bb.ax ], [ %i.em, %bb.ah ], [ %i.ev, %bb.as ]
  invoke void @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6crypto5tls13NtB5_8OkmBlockNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %.thread.i unwind label %bb.aw, !noalias !1320

bb.ah:                                            ; preds = %bb.aj, %.noexc.i82
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ai:                                            ; preds = %.noexc.i82
  %i.en = extractvalue { ptr, i64 } %i.el, 0
  %i.eo = extractvalue { ptr, i64 } %i.el, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1315
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val71) ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.val71, i64 752 ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8, !range !29, !noalias !1315, !noundef !5
  %.not4.i.i = icmp eq i64 %i.eq, -1
  br i1 %.not4.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1315
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ep)
          to label %bb.am unwind label %bb.ah, !noalias !1320

bb.ak:                                            ; preds = %bb.ai
  store i64 -1, ptr %i.e, align 8, !noalias !1315
  br label %bb.al

bb.al:                                            ; preds = %bb.am, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1315
  %i.er = getelementptr inbounds nuw i8, ptr %.val71, i64 728 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !range !29, !noalias !1315, !noundef !5
  %.not5.i.i = icmp eq i64 %i.es, -1
  br i1 %.not5.i.i, label %bb.ao, label %bb.an

bb.am:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1315
  br label %bb.al

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1315
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.er)
          to label %bb.ar unwind label %bb.aq, !noalias !1320

bb.ao:                                            ; preds = %bb.al
  store i64 -1, ptr %i.d, align 8, !noalias !1315
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ar, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1315
  %i.et = getelementptr inbounds nuw i8, ptr %.val72, i64 64
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.et)
          to label %bb.at unwind label %bb.av, !noalias !1320

bb.aq:                                            ; preds = %bb.an
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ar:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1315
  br label %bb.ap

bb.as:                                            ; preds = %bb.at
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.at:                                            ; preds = %bb.ap
  invoke void @_RNvMs8_NtNtCs7ZUl82OSlxp_6rustls4msgs7persistNtB5_18ServerSessionValue3new(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i.i, i16 noundef 5, i16 undef, i16 noundef %.val69, i16 %.val70, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.en, i64 noundef %i.eo, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %i.eg, i32 noundef %i.ed)
          to label %bb.au unwind label %bb.as, !noalias !1313

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1315
  invoke void @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6crypto5tls13NtB5_8OkmBlockNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %bb.ay unwind label %.body.thread15.i, !noalias !1313

bb.av:                                            ; preds = %bb.ap
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameEEB13_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #24
          to label %bb.ax unwind label %bb.aw, !noalias !1320

bb.aw:                                            ; preds = %bb.ax, %bb.av, %bb.ag
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !1320
  unreachable

bb.ax:                                            ; preds = %bb.av, %bb.aq
  %.pn.ph.i.i = phi { ptr, i32 } [ %i.eu, %bb.aq ], [ %i.ew, %bb.av ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainEEB13_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #24
          to label %bb.ag unwind label %bb.aw, !noalias !1320

bb.ay:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1315
  invoke void @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueNtNtB6_5codec5Codec12get_encodingB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.w)
          to label %bb.ba unwind label %bb.az, !noalias !1313

bb.az:                                            ; preds = %bb.ay
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueEBH_(ptr noalias nofree noundef align 8 dereferenceable(144) %i.w) #24
          to label %.thread.i unwind label %bb.bs, !noalias !1313

bb.ba:                                            ; preds = %bb.ay
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueEBH_(ptr noalias nofree noundef align 8 dereferenceable(144) %i.w)
          to label %bb.bc unwind label %bb.bb, !noalias !1313

.thread24.i:                                      ; preds = %bb.cu, %bb.ct, %bb.cj, %bb.bi, %bb.bb
  %.sroa.018.0.i = phi i8 [ %.sroa.018.3.i, %bb.cu ], [ %.sroa.018.2.i, %bb.bi ], [ %.sroa.018.1.i, %bb.bb ], [ %.sroa.018.3.i, %bb.cj ], [ %.sroa.018.3.i, %bb.ct ]
  %.sroa.022.2.i = phi i1 [ false, %bb.cu ], [ true, %bb.bi ], [ %.sroa.022.3.i, %bb.bb ], [ false, %bb.cj ], [ false, %bb.ct ] ; 2 uses
  %.pn.pn.i = phi { ptr, i32 } [ %i.hh, %bb.cu ], [ %i.fz, %bb.bi ], [ %i.fa, %bb.bb ], [ %i.gz, %bb.cj ], [ %i.hg, %bb.ct ] ; 2 uses
  %i.ez = trunc nuw i8 %.sroa.018.0.i to i1
  br i1 %i.ez, label %.thread18.i, label %bb.aa

bb.bb:                                            ; preds = %bb.br, %bb.bo, %bb.bf, %bb.be, %bb.bc, %bb.ba
  %.sroa.018.1.i = phi i8 [ %.sroa.018.3.i, %bb.br ], [ 1, %bb.bf ], [ 1, %bb.ba ], [ 0, %bb.bo ], [ 1, %bb.be ], [ 1, %bb.bc ]
  %.sroa.022.3.i = phi i1 [ false, %bb.br ], [ true, %bb.bf ], [ true, %bb.ba ], [ true, %bb.bo ], [ true, %bb.be ], [ true, %bb.bc ]
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %.thread24.i

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1312
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dp, i64 128
  %i.fc = load ptr, ptr %i.fb, align 8, !alias.scope !1305, !noalias !1308, !nonnull !5, !noundef !5
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dp, i64 136
  %i.fe = load ptr, ptr %i.fd, align 8, !alias.scope !1305, !noalias !1308, !nonnull !5, !align !134, !noundef !5 ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load i64, ptr %i.ff, align 8, !range !31, !invariant.load !5, !noalias !1313
  %i.fh = add nsw i64 %i.fg, -1
  %i.fi = and i64 %i.fh, -16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  %i.fm = load ptr, ptr %i.fl, align 8, !invariant.load !5, !noalias !1313, !nonnull !5
  %i.fn = invoke noundef zeroext i1 %i.fm(ptr noundef nonnull %i.fk)
          to label %bb.bd unwind label %bb.bb, !noalias !1313 ; 3 uses

bb.bd:                                            ; preds = %bb.bc
  %i.fo = zext i1 %i.fn to i8
  store i8 %i.fo, ptr %i.v, align 1, !noalias !1312
  br i1 %i.fn, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1312
  invoke void @_RNvNtCs7ZUl82OSlxp_6rustls4rand10random_vec(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noundef nonnull %i.dw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dy, i64 noundef 32)
          to label %bb.bg unwind label %bb.bb, !noalias !1313

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1312
  %i.fp = load ptr, ptr %i.cz, align 8, !noalias !1312, !nonnull !5, !noundef !5
  %i.fq = load i64, ptr %i.da, align 8, !noalias !1312, !noundef !5
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fe, i64 48
  %i.fs = load ptr, ptr %i.fr, align 8, !invariant.load !5, !noalias !1313, !nonnull !5
  invoke void %i.fs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noundef nonnull %i.fk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fp, i64 noundef %i.fq)
          to label %bb.by unwind label %bb.bb, !noalias !1313

bb.bg:                                            ; preds = %bb.be
  %i.ft = load i64, ptr %i.r, align 8, !range !29, !noalias !1312, !noundef !5
  %i.fu = icmp eq i64 %i.ft, -1
  br i1 %i.fu, label %bb.bt, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !1312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1312
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dp, i64 112
  %i.fw = load ptr, ptr %i.fv, align 8, !alias.scope !1305, !noalias !1308, !nonnull !5, !noundef !5
  %i.fx = getelementptr inbounds nuw i8, ptr %i.dp, i64 120
  %i.fy = load ptr, ptr %i.fx, align 8, !alias.scope !1305, !noalias !1308, !nonnull !5, !align !134, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1312
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s)
          to label %bb.bj unwind label %bb.bi, !noalias !1313

bb.bi:                                            ; preds = %bb.bn, %bb.bj, %bb.bh
  %.sroa.018.2.i = phi i8 [ 0, %bb.bn ], [ 1, %bb.bh ], [ 0, %bb.bj ]
  %i.fz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #24
          to label %.thread24.i unwind label %bb.bs, !noalias !1313

bb.bj:                                            ; preds = %bb.bh
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.gb = load i64, ptr %i.ga, align 8, !range !31, !invariant.load !5, !noalias !1313
  %i.gc = add nsw i64 %i.gb, -1
  %i.gd = and i64 %i.gc, -16
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !1312
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  %i.gh = load ptr, ptr %i.gg, align 8, !invariant.load !5, !noalias !1313, !nonnull !5
  %i.gi = invoke noundef zeroext i1 %i.gh(ptr noundef nonnull %i.gf, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.p)
          to label %bb.bk unwind label %bb.bi, !noalias !1313

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1312
  br i1 %i.gi, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !1312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1312
  br label %bb.br

bb.bm:                                            ; preds = %bb.bk
  %i.gj = load atomic i64, ptr @_RNvCs4KeUGOPwGKr_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !1312 ; 2 uses
  %i.gk = icmp ult i64 %i.gj, 6
  call void @llvm.assume(i1 %i.gk)
  %i.gl = icmp samesign ugt i64 %i.gj, 4
  br i1 %i.gl, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1312
  store ptr @29, ptr %i.o, align 8, !noalias !1312
  store i64 21, ptr %i.cv, align 8, !noalias !1312
  store ptr @29, ptr %i.cw, align 8, !noalias !1312
  store i64 21, ptr %i.cx, align 8, !noalias !1312
  store ptr @28, ptr %i.cy, align 8, !noalias !1312
  invoke void @_RINvNtCs4KeUGOPwGKr_3log13___private_api3loguNtB2_12GlobalLoggerECs7ZUl82OSlxp_6rustls(ptr noundef nonnull @26, ptr noundef nonnull inttoptr (i64 89 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.o)
          to label %bb.bp unwind label %bb.bi, !noalias !1313

bb.bo:                                            ; preds = %bb.bp, %bb.bm
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s)
          to label %bb.bq unwind label %bb.bb, !noalias !1313

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1312
  br label %bb.bo

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1312
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i: ; preds = %bb.bw, %bb.bq
  %.sroa.0128.1 = phi i8 [ %.sroa.0128.2, %bb.bw ], [ -1, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1312
  br label %bb.cv

bb.br:                                            ; preds = %bb.cc, %bb.bl
  %.sroa.018.3.i = phi i8 [ 1, %bb.cc ], [ 0, %bb.bl ] ; 5 uses
  %.sroa.014.0.i = phi i32 [ %i.gs, %bb.cc ], [ 86400, %bb.bl ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !1312
  invoke void @_RNvMs1G_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_28NewSessionTicketPayloadTls133new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.m, i32 noundef %.sroa.014.0.i, i32 noundef %i.ed, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n)
          to label %bb.cd unwind label %bb.bb, !noalias !1313

bb.bs:                                            ; preds = %.thread.i, %.thread18.i, %bb.cu, %bb.ct, %bb.cb, %bb.bi, %bb.az
  %i.gm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !1321
  unreachable

bb.bt:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1312
  br label %bb.bu

bb.bu:                                            ; preds = %bb.ca, %bb.bt
  %.sroa.0128.2 = phi i8 [ -1, %bb.ca ], [ 15, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1312
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.bw unwind label %bb.bv, !noalias !1313

bb.bv:                                            ; preds = %bb.bu
  %i.gn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.thread.i unwind label %bb.bx, !noalias !1313

bb.bw:                                            ; preds = %bb.bu
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i unwind label %.body.thread15.i, !noalias !1313

bb.bx:                                            ; preds = %bb.bv
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !1313
  unreachable

bb.by:                                            ; preds = %bb.bf
  %i.gp = load i64, ptr %i.u, align 8, !range !29, !noalias !1312, !noundef !5
  %.not44.i = icmp eq i64 %i.gp, -1
  br i1 %.not44.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !1312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1312
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fe, i64 40
  %i.gr = load ptr, ptr %i.gq, align 8, !invariant.load !5, !noalias !1313, !nonnull !5
  %i.gs = invoke noundef i32 %i.gr(ptr noundef nonnull %i.fk)
          to label %bb.cc unwind label %bb.cb, !noalias !1313

bb.ca:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1312
  br label %bb.bu

bb.cb:                                            ; preds = %bb.bz
  %i.gt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #24
          to label %.thread18.i unwind label %bb.bs, !noalias !1313

bb.cc:                                            ; preds = %bb.bz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !1312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1312
  br label %bb.br

bb.cd:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1312
  %i.gu = getelementptr inbounds nuw i8, ptr %i.dp, i64 248
  %i.gv = load i32, ptr %i.gu, align 8, !alias.scope !1305, !noalias !1308, !noundef !5 ; 2 uses
  %.not45.i = icmp eq i32 %i.gv, 0
  br i1 %.not45.i, label %bb.ck, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  br i1 %i.fn, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  store i32 1, ptr %i.db, align 8, !noalias !1312
  store i32 %i.gv, ptr %i.dc, align 4, !noalias !1312
  br label %bb.ck

bb.cg:                                            ; preds = %bb.ce
  %i.gw = load atomic i64, ptr @_RNvCs4KeUGOPwGKr_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !1312 ; 2 uses
  %i.gx = icmp ult i64 %i.gw, 6
  call void @llvm.assume(i1 %i.gx)
  %i.gy = icmp samesign ugt i64 %i.gw, 1
  br i1 %i.gy, label %bb.ch, label %bb.ck

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1312
  store ptr @29, ptr %i.k, align 8, !noalias !1312
  store i64 21, ptr %i.dd, align 8, !noalias !1312
  store ptr @29, ptr %i.de, align 8, !noalias !1312
  store i64 21, ptr %i.df, align 8, !noalias !1312
  store ptr @31, ptr %i.dg, align 8, !noalias !1312
  invoke void @_RINvNtCs4KeUGOPwGKr_3log13___private_api3loguNtB2_12GlobalLoggerECs7ZUl82OSlxp_6rustls(ptr noundef nonnull @30, ptr noundef nonnull inttoptr (i64 103 to ptr), i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.k)
          to label %bb.ci unwind label %bb.cu, !noalias !1313

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1312
  br label %bb.ck

bb.cj:                                            ; preds = %bb.cm
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %.thread24.i

bb.ck:                                            ; preds = %bb.ci, %bb.cg, %bb.cf, %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.416.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !noalias !1312
  store i64 -9223372036854775793, ptr %i.j, align 8, !noalias !1312
  %i.ha = load atomic i64, ptr @_RNvCs4KeUGOPwGKr_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !1312 ; 2 uses
  %i.hb = icmp ult i64 %i.ha, 6
  call void @llvm.assume(i1 %i.hb)
  %i.hc = icmp samesign ugt i64 %i.ha, 4
  br i1 %i.hc, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1312
  store ptr %i.j, ptr %i.i, align 8, !noalias !1312
  store ptr @_RNvXs4i_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_23HandshakeMessagePayloadNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr %.sroa.438.0..sroa_idx.i, align 8, !noalias !1312
  store ptr %i.v, ptr %i.dh, align 8, !noalias !1312
  store ptr @_RNvXsg_NtCsj6eKBz9Db1c_4core3fmtbNtB5_7Display3fmt, ptr %.sroa.442.0..sroa_idx.i, align 8, !noalias !1312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1312
  store ptr @29, ptr %i.h, align 8, !noalias !1312
  store i64 21, ptr %i.di, align 8, !noalias !1312
  store ptr @29, ptr %i.dj, align 8, !noalias !1312
  store i64 21, ptr %i.dk, align 8, !noalias !1312
  store ptr @33, ptr %i.dl, align 8, !noalias !1312
  invoke void @_RINvNtCs4KeUGOPwGKr_3log13___private_api3loguNtB2_12GlobalLoggerECs7ZUl82OSlxp_6rustls(ptr noundef nonnull @32, ptr noundef nonnull %i.i, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h)
          to label %bb.cn unwind label %bb.ct, !noalias !1313

bb.cm:                                            ; preds = %bb.cn, %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.g, ptr noundef nonnull align 8 dereferenceable(136) %i.j, i64 136, i1 false), !noalias !1312
  invoke void @_RNvMs6_NtCs7ZUl82OSlxp_6rustls12common_stateINtB5_15HandshakeFlightKb1_E3addB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(136) %i.g)
          to label %bb.co unwind label %bb.cj, !noalias !1321

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1312
  br label %bb.cm

bb.co:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1312
  %i.hd = trunc nuw i8 %.sroa.018.3.i to i1
  br i1 %i.hd, label %bb.cp, label %.thread167

.thread167:                                       ; preds = %bb.co, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ds

bb.cp:                                            ; preds = %bb.co
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.cr unwind label %bb.cq, !noalias !1321

bb.cq:                                            ; preds = %bb.cp
  %i.he = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body.thread unwind label %bb.cs, !noalias !1321

bb.cr:                                            ; preds = %bb.cp
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.thread167 unwind label %.body.thread158

bb.cs:                                            ; preds = %bb.cq
  %i.hf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !1321
  unreachable

bb.ct:                                            ; preds = %bb.cl
  %i.hg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16HandshakePayloadEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.j)
          to label %.thread24.i unwind label %bb.bs, !noalias !1313

bb.cu:                                            ; preds = %bb.ch
  %i.hh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake28NewSessionTicketPayloadTls13EBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.m) #24
          to label %.thread24.i unwind label %bb.bs, !noalias !1313

.thread18.i:                                      ; preds = %bb.cb, %.thread24.i
  %.pn.pn23.i = phi { ptr, i32 } [ %.pn.pn.i, %.thread24.i ], [ %i.gt, %bb.cb ]
  %.sroa.022.222.i = phi i1 [ %.sroa.022.2.i, %.thread24.i ], [ true, %bb.cb ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #24
          to label %bb.aa unwind label %bb.bs, !noalias !1321

bb.cv:                                            ; preds = %bb.ab, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i, %bb.ae
  %.sroa.13.0 = phi i64 [ %.sroa.529.0.copyload.i, %bb.ae ], [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i ], [ undef, %bb.ab ]
  %.sroa.0128.0 = phi i8 [ %i.ef, %bb.ae ], [ %.sroa.0128.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i ], [ 15, %bb.ab ] ; 2 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit66.i unwind label %bb.cw, !noalias !1313

bb.cw:                                            ; preds = %bb.cv
  %i.hi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.body.thread unwind label %bb.cx, !noalias !1313

bb.cx:                                            ; preds = %bb.cw
  %i.hj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !1313
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit66.i: ; preds = %bb.cv
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.dp unwind label %.body.thread158

.thread.i:                                        ; preds = %bb.bv, %bb.az, %bb.ag, %.body.thread15.i, %bb.aa
  %.pn488.i = phi { ptr, i32 } [ %i.ey, %bb.az ], [ %.pn48.i, %bb.aa ], [ %lpad.thr_comm.i, %.body.thread15.i ], [ %.pn.pn.i.i, %bb.ag ], [ %i.gn, %bb.bv ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa) #24
          to label %.body.thread unwind label %bb.bs, !noalias !1321

.body.thread158:                                  ; preds = %bb.y, %bb.cr, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit66.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body:                                            ; preds = %._crit_edge, %bb.cy
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body98

bb.cy:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.hk = load ptr, ptr %2, align 8, !nonnull !5, !align !134, !noundef !5
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 16
  invoke void @_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState13start_traffic(ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.hk, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.hl)
          to label %bb.cz unwind label %.body

bb.cz:                                            ; preds = %bb.cy
  %i.hm = load ptr, ptr %2, align 8, !nonnull !5, !align !134, !noundef !5
  %i.hn = getelementptr i8, ptr %i.hm, i64 829
  %.val73 = load i8, ptr %i.hn, align 1, !range !4, !noundef !5
  %i.ho = trunc nuw i8 %.val73 to i1
  br i1 %i.ho, label %bb.dd, label %bb.da

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.ad, ptr noundef nonnull align 8 dereferenceable(224) %i.al, i64 224, i1 false)
  %i.hp = invoke fastcc noundef ptr @_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 224)
          to label %bb.dg unwind label %bb.db, !noalias !1322 ; 2 uses

bb.db:                                            ; preds = %bb.da
  %i.hq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1313ExpectTrafficEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.ad) #24
          to label %.body98 unwind label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.hr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.dd:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 8 dereferenceable(224) %i.al, i64 224, i1 false)
  %i.hs = invoke fastcc noundef ptr @_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 224)
          to label %bb.di unwind label %bb.de, !noalias !1325 ; 2 uses

bb.de:                                            ; preds = %bb.dd
  %i.ht = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1317ExpectQuicTrafficEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.ae) #24
          to label %.body98 unwind label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.hu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.dg:                                            ; preds = %bb.da
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.hp, ptr noundef nonnull align 8 dereferenceable(224) %i.ad, i64 224, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.dh

bb.dh:                                            ; preds = %bb.di, %bb.dg
  %.sroa.3.0 = phi ptr [ @153, %bb.di ], [ @152, %bb.dg ]
  %.sroa.018.0 = phi ptr [ %i.hs, %bb.di ], [ %i.hp, %bb.dg ]
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.018.0, ptr %i.hv, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.3.0, ptr %i.hw, align 8
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  invoke void @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6crypto5tls13NtB5_8OkmBlockNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.hx)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule21KeyScheduleResumptionEBH_.exit89 unwind label %.split

bb.di:                                            ; preds = %bb.dd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.hs, ptr noundef nonnull align 8 dereferenceable(224) %i.ae, i64 224, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.dh

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule21KeyScheduleResumptionEBH_.exit: ; preds = %.body98
  br i1 %.sroa.025.0, label %bb.dx, label %.body105

.split:                                           ; preds = %bb.dh
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %.body105

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule21KeyScheduleResumptionEBH_.exit89: ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  invoke void @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls6crypto4hmacNtB4_3TagNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ar)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_.exit91 unwind label %.split161.thread

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_.exit: ; preds = %.body105
  br i1 %.sroa.019.0, label %bb.ea, label %.body74

.split161.thread:                                 ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule18KeyScheduleTrafficEBH_.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule21KeyScheduleResumptionEBH_.exit89
  %lpad.thr_comm163 = landingpad { ptr, i32 }
          cleanup
  br label %.body74

.split161:                                        ; preds = %bb.o
  %lpad.thr_comm.split-lp164 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_.exit91: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule21KeyScheduleResumptionEBH_.exit89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message14MessagePayloadEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %3)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit93 unwind label %bb.dk

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit: ; preds = %.body74, %bb.dk
  %.sroa.021.2 = phi i8 [ %.sroa.021.3, %bb.dk ], [ %.sroa.021.0, %.body74 ]
  %.pn55 = phi { ptr, i32 } [ %i.id, %bb.dk ], [ %.pn53, %.body74 ] ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  call void @llvm.experimental.noalias.scope.decl(metadata !1331)
  %i.ia = load ptr, ptr %i.hz, align 8, !alias.scope !1334, !nonnull !5, !noundef !5
  %i.ib = atomicrmw sub ptr %i.ia, i64 1 release, align 8, !noalias !1334
  %i.ic = icmp eq i64 %i.ib, 1
  br i1 %i.ic, label %bb.dj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigEEB1f_.exit

bb.dj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.hz) #25
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigEEB1f_.exit unwind label %bb.do

bb.dk:                                            ; preds = %bb.dz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_.exit91
  %.sroa.021.3 = phi i8 [ %.sroa.021.4, %bb.dz ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_.exit91 ]
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit93: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_.exit91
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  %i.if = load ptr, ptr %i.ie, align 8, !alias.scope !1341, !nonnull !5, !noundef !5
  %i.ig = atomicrmw sub ptr %i.if, i64 1 release, align 8, !noalias !1341
  %i.ih = icmp eq i64 %i.ig, 1
  br i1 %i.ih, label %bb.dl, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigEEB1f_.exit96

bb.dl:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit93
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ie) #25
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigEEB1f_.exit96 unwind label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ii = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls7hash_hs13HandshakeHashEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %1) #24
          to label %.body115 unwind label %bb.do

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigEEB1f_.exit96: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit93, %bb.dl
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls7hash_hs13HandshakeHashEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %1)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule43KeyScheduleTrafficWithClientFinishedPendingEBH_.exit unwind label %bb.dn

bb.dn:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigEEB1f_.exit96
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %.body115

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule43KeyScheduleTrafficWithClientFinishedPendingEBH_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigEEB1f_.exit96, %bb.eg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit.i113
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 392, i64 noundef 8) #22
  ret void

bb.do:                                            ; preds = %bb.dj, %.body98, %.body105, %.body74, %bb.en, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigEEB1f_.exit, %bb.el, %bb.ed, %bb.ea, %bb.dy, %bb.dx, %.body.thread, %bb.dm
  %i.ik = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

.body115:                                         ; preds = %bb.dm, %bb.dn, %bb.em, %bb.en, %bb.ee, %bb.el, %bb.ei, %bb.ek
  %.pn59.pn = phi { ptr, i32 } [ %.pn55, %bb.em ], [ %i.ji, %bb.ei ], [ %.pn57, %bb.ee ], [ %.pn57, %bb.el ], [ %i.jk, %bb.ek ], [ %.pn55, %bb.en ], [ %i.ij, %bb.dn ], [ %i.ii, %bb.dm ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 392, i64 noundef 8) #22
  resume { ptr, i32 } %.pn59.pn

bb.dp:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit66.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.not44 = icmp eq i8 %.sroa.0128.0, -1
  br i1 %.not44, label %bb.ds, label %.loopexit

.loopexit:                                        ; preds = %bb.dp, %.thread171
  %.sroa.0128.3176 = phi i8 [ 15, %.thread171 ], [ %.sroa.0128.0, %bb.dp ]
  %.sroa.13.1175 = phi i64 [ undef, %.thread171 ], [ %.sroa.13.0, %bb.dp ]
  %.sroa.4144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4144.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12, i64 7, i1 false)
  %.sroa.6146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6146.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.14, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  store i8 %.sroa.0128.3176, ptr %0, align 8
  %.sroa.5145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.13.1175, ptr %.sroa.5145.0..sroa_idx, align 8
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ag)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i97 unwind label %bb.dq

bb.dq:                                            ; preds = %.loopexit
  %i.il = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ag)
          to label %.body98 unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.im = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i97: ; preds = %.loopexit
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ag)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs7ZUl82OSlxp_6rustls12common_state15HandshakeFlightKb1_EEBG_.exit unwind label %bb.w

bb.ds:                                            ; preds = %.thread167, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %exitcond.not = icmp eq i64 %i.dn, %i.cp
  br i1 %exitcond.not, label %._crit_edge, label %bb.y

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs7ZUl82OSlxp_6rustls12common_state15HandshakeFlightKb1_EEBG_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.in = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  invoke void @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6crypto5tls13NtB5_8OkmBlockNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.in)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule21KeyScheduleResumptionEBH_.exit102 unwind label %.split.thread

.split.thread:                                    ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs7ZUl82OSlxp_6rustls12common_state15HandshakeFlightKb1_EEBG_.exit
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule21KeyScheduleResumptionEBH_.exit102: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs7ZUl82OSlxp_6rustls12common_state15HandshakeFlightKb1_EEBG_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.ip = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  invoke void @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6crypto5tls13NtB5_8OkmBlockNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ip)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit.i unwind label %bb.dt

bb.dt:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule21KeyScheduleResumptionEBH_.exit102
  %i.iq = landingpad { ptr, i32 }
          cleanup
  %i.ir = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  invoke void @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6crypto5tls13NtB5_8OkmBlockNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ir)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit2.i unwind label %bb.dv

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule21KeyScheduleResumptionEBH_.exit102
  %i.is = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  invoke void @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6crypto5tls13NtB5_8OkmBlockNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.is)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit3.i unwind label %bb.du

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit2.i: ; preds = %bb.du, %bb.dt
  %.pn.i103 = phi { ptr, i32 } [ %i.iu, %bb.du ], [ %i.iq, %bb.dt ]
  %i.it = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  invoke void @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6crypto5tls13NtB5_8OkmBlockNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.it)
          to label %.body105 unwind label %bb.dv

bb.du:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit.i
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit2.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit3.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit.i
  %i.iv = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  invoke void @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6crypto5tls13NtB5_8OkmBlockNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.iv)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule18KeyScheduleTrafficEBH_.exit unwind label %.loopexit.split-lp

bb.dv:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit2.i, %bb.dt
  %i.iw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule18KeyScheduleTrafficEBH_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  invoke void @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls6crypto4hmacNtB4_3TagNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ar)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_.exit108 unwind label %.split161.thread

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_.exit108: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule18KeyScheduleTrafficEBH_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %bb.dw

bb.dw:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_.exit108, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_.exit79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %bb.dz

.body.thread:                                     ; preds = %.thread.i, %bb.cw, %bb.cq, %bb.aa, %.body.thread158
  %eh.lpad-body151 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread158 ], [ %i.he, %bb.cq ], [ %.pn48.i, %bb.aa ], [ %.pn488.i, %.thread.i ], [ %i.hi, %bb.cw ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs7ZUl82OSlxp_6rustls12common_state15HandshakeFlightKb1_EEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ag) #24
          to label %.body98 unwind label %bb.do

bb.dx:                                            ; preds = %.split.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule21KeyScheduleResumptionEBH_.exit
  %.pn47160 = phi { ptr, i32 } [ %i.io, %.split.thread ], [ %.pn45, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule21KeyScheduleResumptionEBH_.exit ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule18KeyScheduleTrafficEBH_(ptr noalias nofree noundef align 8 dereferenceable(224) %i.al) #24
          to label %.body105 unwind label %bb.do

bb.dy:                                            ; preds = %bb.t
  %i.ix = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule25KeyScheduleBeforeFinishedEBH_(ptr noalias nofree noundef align 8 dereferenceable(240) %i.ai) #24
          to label %.body105 unwind label %bb.do

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_.exit79: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule25KeyScheduleBeforeFinishedEBH_(ptr noalias nofree noundef align 8 dereferenceable(240) %i.as)
          to label %bb.dw unwind label %bb.e

bb.dz:                                            ; preds = %bb.eb, %bb.dw
  %.sroa.021.4 = phi i8 [ 0, %bb.dw ], [ 1, %bb.eb ] ; 3 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message14MessagePayloadEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %3)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit110 unwind label %bb.dk

bb.ea:                                            ; preds = %.split161, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_.exit
  %.pn51162 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp164, %.split161 ], [ %.pn49, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto4hmac3TagEBH_.exit ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule25KeyScheduleBeforeFinishedEBH_(ptr noalias nofree noundef align 8 dereferenceable(240) %i.as) #24
          to label %.body74 unwind label %bb.do

bb.eb:                                            ; preds = %bb.c
  %.sroa.07.0.copyload = load i8, ptr %i.au, align 8
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.436.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.69.0..sroa_idx, i64 7, i1 false)
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.611.0.copyload = load ptr, ptr %.sroa.611.0..sroa_idx, align 8
  %.sroa.814.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.638.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.814.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  store i8 %.sroa.07.0.copyload, ptr %0, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.611.0.copyload, ptr %.sroa.537.0..sroa_idx, align 8
  br label %bb.dz

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit110: ; preds = %bb.dz
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1342)
  call void @llvm.experimental.noalias.scope.decl(metadata !1345)
  %i.iz = load ptr, ptr %i.iy, align 8, !alias.scope !1348, !nonnull !5, !noundef !5
  %i.ja = atomicrmw sub ptr %i.iz, i64 1 release, align 8, !noalias !1348
  %i.jb = icmp eq i64 %i.ja, 1
  br i1 %i.jb, label %bb.ec, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigEEB1f_.exit112

bb.ec:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit110
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.iy) #25
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigEEB1f_.exit112 unwind label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.jc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls7hash_hs13HandshakeHashEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %1) #24
          to label %bb.ee unwind label %bb.do

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigEEB1f_.exit112: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit110, %bb.ec
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls7hash_hs13HandshakeHashEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %1)
          to label %bb.eg unwind label %bb.ef

bb.ee:                                            ; preds = %bb.ef, %bb.ed
  %.pn57 = phi { ptr, i32 } [ %i.je, %bb.ef ], [ %i.jc, %bb.ed ] ; 2 uses
  %i.jd = trunc nuw i8 %.sroa.021.4 to i1
  br i1 %i.jd, label %bb.el, label %.body115

bb.ef:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigEEB1f_.exit112
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.eg:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigEEB1f_.exit112
  %i.jf = trunc nuw i8 %.sroa.021.4 to i1
  br i1 %i.jf, label %bb.eh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule43KeyScheduleTrafficWithClientFinishedPendingEBH_.exit

bb.eh:                                            ; preds = %bb.eg
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 312
  invoke void @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6crypto5tls13NtB5_8OkmBlockNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.jh)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit.i113 unwind label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.ji = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule25KeyScheduleBeforeFinishedEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(312) %i.jg) #24
          to label %.body115 unwind label %bb.ej

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit.i113: ; preds = %bb.eh
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule25KeyScheduleBeforeFinishedEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(312) %i.jg)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule43KeyScheduleTrafficWithClientFinishedPendingEBH_.exit unwind label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.jj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.ek:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockEBH_.exit.i113
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %.body115

bb.el:                                            ; preds = %bb.ee
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule43KeyScheduleTrafficWithClientFinishedPendingEBH_(ptr noalias nofree noundef align 8 dereferenceable(312) %i.jl) #24
          to label %.body115 unwind label %bb.do

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigEEB1f_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageEBH_.exit, %bb.dj
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls7hash_hs13HandshakeHashEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %1) #24
          to label %bb.em unwind label %bb.do

bb.em:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigEEB1f_.exit
  %i.jm = trunc nuw i8 %.sroa.021.2 to i1
  br i1 %i.jm, label %bb.en, label %.body115

bb.en:                                            ; preds = %bb.em
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5tls1312key_schedule43KeyScheduleTrafficWithClientFinishedPendingEBH_(ptr noalias nofree noundef align 8 dereferenceable(312) %i.jn) #24
          to label %.body115 unwind label %bb.do
}
end_hunk_5
begin_hunk_6_@_RNvXs5_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_19GcmMessageDecrypterNtNtB9_6cipher16MessageDecrypter7decrypt:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.ap
  %.val7.i.i = load i8, ptr %i.ar, align 1, !noalias !1364, !noundef !5
  %i.as = load i8, ptr %i.aq, align 1, !alias.scope !1374, !noalias !1364, !noundef !5
  %i.at = xor i8 %i.as, %.val7.i.i
  store i8 %i.at, ptr %i.aq, align 1, !alias.scope !1374, !noalias !1364
  %i.au = add nuw i64 %.sroa.0.08.i.i, 2          ; 2 uses
  %.reass = add i64 %.sroa.0.08.i.i, %invariant.op ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.reass ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %.reass
  %.val7.i.i.1 = load i8, ptr %i.aw, align 1, !noalias !1364, !noundef !5
  %i.ax = load i8, ptr %i.av, align 1, !alias.scope !1374, !noalias !1364, !noundef !5
  %i.ay = xor i8 %i.ax, %.val7.i.i.1
  store i8 %i.ay, ptr %i.av, align 1, !alias.scope !1374, !noalias !1364
  %exitcond.not.i.i.1 = icmp eq i64 %i.au, %i.p
  br i1 %exitcond.not.i.i.1, label %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit, label %vec.epilog.scalar.ph, !llvm.loop !1375

_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.a, ptr noundef nonnull align 1 dereferenceable(12) %i.d, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.az = load ptr, ptr %2, align 8, !nonnull !5, !noundef !5
  %i.ba = trunc i64 %i.h to i40                   ; 2 uses
  %i.bb = shl i40 %i.ba, 16
  %.sroa.061.3.insert.shift = and i40 %i.bb, 4278190080
  %.sroa.061.4.insert.ext = shl i40 %i.ba, 32
  %.sroa.061.3.insert.insert = or disjoint i40 %.sroa.061.3.insert.shift, %.sroa.061.4.insert.ext
  %.sroa.061.4.insert.insert = or disjoint i40 %.sroa.061.3.insert.insert, 197399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i40 %.sroa.061.4.insert.insert, ptr %i.b, align 8, !noalias !1376
  %i.bc = call fastcc { ptr, i64 } @_RNvMs_NtNtCs222MioR9bx1_9aws_lc_rs4aead11unbound_keyNtB4_10UnboundKey11open_within(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef align 1 captures(address) dereferenceable(12) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, ptr noalias nofree noundef nonnull %i.az, i64 noundef range(i64 0, -9223372036854775808) %i.h) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bd = extractvalue { ptr, i64 } %i.bc, 0
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i8 6, ptr %0, align 8
  br label %bb.f

bb.d:                                             ; preds = %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit
  store i8 6, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_5Nonce12new_from_seq.exit
  %i.bf = extractvalue { ptr, i64 } %i.bc, 1
  call void @_RNvMs1_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inboundNtB5_15BorrowedPayload8truncate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @_RNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inboundNtB2_20InboundOpaqueMessage27into_tls13_unpadded_message(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connectionNtB5_8AcceptorNtNtCsj6eKBz9Db1c_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1168 x i8]) align 8 captures(none) dereferenceable(1168) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [840 x i8], align 8               ; 4 uses
  %i.b = alloca [136 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i64 -2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i64 -1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 0, ptr %i.e, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 2, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState3new(ptr noalias nofree noundef nonnull sret([840 x i8]) align 8 captures(none) dereferenceable(840) %i.a, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE3newB7_(ptr noalias nofree noundef nonnull sret([1080 x i8]) align 8 captures(none) dereferenceable(1080) %0, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @155, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(840) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.012.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store i64 1, ptr %.sroa.012.sroa.4.0..sroa_idx, align 8
  %.sroa.012.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1088
  store i64 65536, ptr %.sroa.012.sroa.5.0..sroa_idx, align 8
  %.sroa.012.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1096
  store i64 0, ptr %.sroa.012.sroa.6.0..sroa_idx, align 8
  %.sroa.012.sroa.6.sroa.4.0..sroa.012.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.012.sroa.6.sroa.4.0..sroa.012.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.012.sroa.6.sroa.5.0..sroa.012.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %.sroa.012.sroa.8.sroa.4.0..sroa.012.sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.012.sroa.6.sroa.5.0..sroa.012.sroa.6.0..sroa_idx.sroa_idx, i8 0, i64 32, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.012.sroa.8.sroa.4.0..sroa.012.sroa.8.0..sroa_idx.sroa_idx, align 8
  %.sroa.012.sroa.8.sroa.5.0..sroa.012.sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.012.sroa.8.sroa.5.0..sroa.012.sroa.8.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn20ServerConnectionDataEBH_(ptr noalias nofree noundef align 8 dereferenceable(136) %i.b) #24
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

.critedge:                                        ; preds = %bb.e
  resume { ptr, i32 } %i.f

bb.e:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1g_6server11server_conn20ServerConnectionDataEEL_EEB1g_(ptr nonnull inttoptr (i64 1 to ptr), ptr nonnull @155) #24
          to label %.critedge unwind label %bb.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs6_NtNtCs7ZUl82OSlxp_6rustls6server11server_connNtB5_9AcceptingINtNtB9_12common_state5StateNtB5_20ServerConnectionDataE10into_owned(ptr noalias noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @155, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs6_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_9AwsLcHkdfNtNtB9_5tls134Hkdf16expander_for_okm(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !134, !noundef !5 ; 2 uses
  %i.c = tail call { ptr, i64 } @_RNvXs4_NtNtCs7ZUl82OSlxp_6rustls6crypto5tls13NtB5_8OkmBlockINtNtCsj6eKBz9Db1c_4core7convert5AsRefShE6as_ref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  call void @_RNvMsa_NtCs222MioR9bx1_9aws_lc_rs4hkdfNtB5_3Prk13new_less_safe(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.b, ptr %i.f, align 8
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1381
  %i.g = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2273) 96, i64 noundef range(i64 1, 9) 8) #22, !noalias !1381 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls1317AwsLcHkdfExpanderE3newBM_.exit, !prof !490

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #27
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls1317AwsLcHkdfExpanderEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #24
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.i

_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls1317AwsLcHkdfExpanderE3newBM_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.g, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = insertvalue { ptr, ptr } poison, ptr %i.g, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr @156, 1
  ret { ptr, ptr } %i.l
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs6_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_9AwsLcHkdfNtNtB9_5tls134Hkdf19extract_from_secret(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) %1, i64 %2, ptr noalias nofree noundef nonnull readonly captures(none) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [88 x i8], align 8                ; 4 uses
  %i.c = alloca [96 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.d, i8 0, i64 64, i1 false)
  %.not = icmp eq ptr %1, null
  %.pre = load ptr, ptr %0, align 8               ; 3 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 3 uses
  %i.g = icmp ult i64 %i.f, 65
  br i1 %i.g, label %bb.d, label %bb.c, !prof !508

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.f, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #28
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.34.0 = phi i64 [ %2, %bb.a ], [ %i.f, %bb.b ]
  %.sroa.03.0 = phi ptr [ %1, %bb.a ], [ %i.d, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs1_NtCs222MioR9bx1_9aws_lc_rs4hkdfNtB5_4Salt3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.pre, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.03.0, i64 noundef %.sroa.34.0)
  invoke fastcc void @_RNvMs1_NtCs222MioR9bx1_9aws_lc_rs4hkdfNtB5_4Salt7extract(ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.p, %bb.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1384)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1393, !nonnull !5, !noundef !5
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !1393
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs4hkdf4SaltECs7ZUl82OSlxp_6rustls.exit

bb.f:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcShE9drop_slowCs222MioR9bx1_9aws_lc_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i) #25
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs4hkdf4SaltECs7ZUl82OSlxp_6rustls.exit unwind label %bb.m

bb.g:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store ptr %.pre, ptr %i.m, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1394
  %i.n = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2273) 96, i64 noundef range(i64 1, 9) 8) #22, !noalias !1394 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.h, label %bb.k, !prof !490

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #27
          to label %.noexc6 unwind label %bb.i

.noexc6:                                          ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls1317AwsLcHkdfExpanderEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c) #24
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.n, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !1397)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1400)
  call void @llvm.experimental.noalias.scope.decl(metadata !1403)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !1406, !nonnull !5, !noundef !5
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !1406
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.l, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs4hkdf4SaltECs7ZUl82OSlxp_6rustls.exit7

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcShE9drop_slowCs222MioR9bx1_9aws_lc_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.r) #25
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs4hkdf4SaltECs7ZUl82OSlxp_6rustls.exit7

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs4hkdf4SaltECs7ZUl82OSlxp_6rustls.exit7: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.v = insertvalue { ptr, ptr } poison, ptr %i.n, 0
  %i.w = insertvalue { ptr, ptr } %i.v, ptr @156, 1
  ret { ptr, ptr } %i.w

bb.m:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs4hkdf4SaltECs7ZUl82OSlxp_6rustls.exit: ; preds = %.body, %bb.f
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs6_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_9AwsLcHkdfNtNtB9_5tls134Hkdf21extract_from_zero_ikm(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [88 x i8], align 8                ; 4 uses
  %i.c = alloca [96 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.d, i8 0, i64 64, i1 false)
  %.not = icmp eq ptr %1, null
  %.pre = load ptr, ptr %0, align 8               ; 4 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 3 uses
  %i.g = icmp ult i64 %i.f, 65
  br i1 %i.g, label %bb.d, label %bb.c, !prof !508

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.f, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #28
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.35.0 = phi i64 [ %2, %bb.a ], [ %i.f, %bb.b ]
  %.sroa.04.0 = phi ptr [ %1, %bb.a ], [ %i.d, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs1_NtCs222MioR9bx1_9aws_lc_rs4hkdfNtB5_4Salt3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.pre, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.04.0, i64 noundef %.sroa.35.0)
  %i.h = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !5 ; 3 uses
  %i.j = icmp ult i64 %i.i, 65
  br i1 %i.j, label %bb.f, label %bb.e, !prof !508

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.i, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @159) #27
          to label %bb.o unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RNvMs1_NtCs222MioR9bx1_9aws_lc_rs4hkdfNtB5_4Salt7extract(ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.i)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.g ], [ %i.s, %bb.k ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1407)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1410)
  call void @llvm.experimental.noalias.scope.decl(metadata !1413)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1416, !nonnull !5, !noundef !5
  %i.n = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !1416
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.h, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs4hkdf4SaltECs7ZUl82OSlxp_6rustls.exit

bb.h:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcShE9drop_slowCs222MioR9bx1_9aws_lc_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l) #25
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs4hkdf4SaltECs7ZUl82OSlxp_6rustls.exit unwind label %bb.p

bb.i:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store ptr %.pre, ptr %i.p, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1417
  %i.q = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2273) 96, i64 noundef range(i64 1, 9) 8) #22, !noalias !1417 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.j, label %bb.m, !prof !490

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #27
          to label %.noexc9 unwind label %bb.k

.noexc9:                                          ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls1317AwsLcHkdfExpanderEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c) #24
          to label %.body unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.m:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.q, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !1420)
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1423)
  call void @llvm.experimental.noalias.scope.decl(metadata !1426)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !1429, !nonnull !5, !noundef !5
  %i.w = atomicrmw sub ptr %i.v, i64 1 release, align 8, !noalias !1429
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.n, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs4hkdf4SaltECs7ZUl82OSlxp_6rustls.exit10

bb.n:                                             ; preds = %bb.m
  fence acquire
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcShE9drop_slowCs222MioR9bx1_9aws_lc_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.u) #25
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs4hkdf4SaltECs7ZUl82OSlxp_6rustls.exit10

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs4hkdf4SaltECs7ZUl82OSlxp_6rustls.exit10: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.y = insertvalue { ptr, ptr } poison, ptr %i.q, 0
  %i.z = insertvalue { ptr, ptr } %i.y, ptr @156, 1
  ret { ptr, ptr } %i.z

bb.o:                                             ; preds = %bb.e
  unreachable

bb.p:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs4hkdf4SaltECs7ZUl82OSlxp_6rustls.exit: ; preds = %.body, %bb.h
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs6_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_9AwsLcHkdfNtNtB9_5tls134Hkdf4fips(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4fips()
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls13NtB5_9AwsLcHkdfNtNtB9_5tls134Hkdf9hmac_sign(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [1232 x i8], align 8              ; 5 uses
  %i.c = alloca [1232 x i8], align 8              ; 6 uses
  %i.d = alloca [72 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !align !134, !noundef !5
  %i.g = tail call { ptr, i64 } @_RNvXs4_NtNtCs7ZUl82OSlxp_6rustls6crypto5tls13NtB5_8OkmBlockINtNtCsj6eKBz9Db1c_4core7convert5AsRefShE6as_ref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %2) ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs7_NtCs222MioR9bx1_9aws_lc_rs4hmacNtB5_3Key7try_new(ptr noalias nofree noundef nonnull sret([1232 x i8]) align 8 captures(none) dereferenceable(1232) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  %i.j = load ptr, ptr %i.b, align 8, !alias.scope !1433, !noalias !1430, !noundef !5
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtCs222MioR9bx1_9aws_lc_rs4hmac3KeyNtNtBL_5error11UnspecifiedE6expectCs7ZUl82OSlxp_6rustls.exit, !prof !493

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @116, i64 noundef 28, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #28, !noalias !1435
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtCs222MioR9bx1_9aws_lc_rs4hmac3KeyNtNtBL_5error11UnspecifiedE6expectCs7ZUl82OSlxp_6rustls.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1232) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(1232) %i.b, i64 1232, i1 false), !alias.scope !1435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_RNvNtCs222MioR9bx1_9aws_lc_rs4hmac4sign(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1232) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.e, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtCs222MioR9bx1_9aws_lc_rs4hmac3KeyNtNtBL_5error11UnspecifiedE6expectCs7ZUl82OSlxp_6rustls.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_RNvXs2_NtCs222MioR9bx1_9aws_lc_rs4hmacNtB5_9LcHmacCtxNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(1224) %i.m)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs4hmac3KeyECs7ZUl82OSlxp_6rustls.exit unwind label %bb.i

bb.d:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtCs222MioR9bx1_9aws_lc_rs4hmac3KeyNtNtBL_5error11UnspecifiedE6expectCs7ZUl82OSlxp_6rustls.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.o = load i64, ptr %i.n, align 8, !noundef !5 ; 3 uses
  %i.p = icmp ult i64 %i.o, 65
  br i1 %i.p, label %bb.f, label %bb.e, !prof !508

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.o, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #27
          to label %bb.h unwind label %bb.c

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvMNtNtCs7ZUl82OSlxp_6rustls6crypto4hmacNtB2_3Tag3new(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.o)
          to label %bb.g unwind label %bb.c

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @_RNvXs2_NtCs222MioR9bx1_9aws_lc_rs4hmacNtB5_9LcHmacCtxNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(1224) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.h:                                             ; preds = %bb.e
  unreachable

bb.i:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs4hmac3KeyECs7ZUl82OSlxp_6rustls.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs7_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB5_13ExpectTrafficINtNtB9_12common_state5StateNtNtB7_11server_conn20ServerConnectionDataE10into_owned(ptr noalias noundef nonnull align 8 %0) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @152, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB5_13ExpectTrafficINtNtB9_12common_state5StateNtNtB7_11server_conn20ServerConnectionDataE15extract_secrets(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(224) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_18KeyScheduleTraffic15extract_secrets(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %1, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
end_hunk_6
