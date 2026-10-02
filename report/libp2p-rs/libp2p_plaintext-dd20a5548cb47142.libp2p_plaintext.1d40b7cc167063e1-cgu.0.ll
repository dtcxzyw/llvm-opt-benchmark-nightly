Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_plaintext-dd20a5548cb47142.libp2p_plaintext.1d40b7cc167063e1-cgu.0?download=true
inline.NumInlined: 17
inline.NumDeleted: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRhNtB6_5Debug3fmtCs2vI8TDSUWPt_16libp2p_plaintext }>, align 8
@_RNvNCNvMs2_Cs2vI8TDSUWPt_16libp2p_plaintextNtB9_6Config9handshake010___CALLSITE = global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNCNvMs2_Cs2vI8TDSUWPt_16libp2p_plaintextNtBb_6Config9handshake010___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNCNvMs2_Cs2vI8TDSUWPt_16libp2p_plaintextNtB9_6Config9handshake0s_10___CALLSITE = global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNCNvMs2_Cs2vI8TDSUWPt_16libp2p_plaintextNtBb_6Config9handshake0s_10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNCNvNtCs2vI8TDSUWPt_16libp2p_plaintext9handshake9handshake010___CALLSITE = global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNCNvNtCs2vI8TDSUWPt_16libp2p_plaintext9handshake9handshake010___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNCNvNtCs2vI8TDSUWPt_16libp2p_plaintext9handshake9handshake0s0_10___CALLSITE = global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNCNvNtCs2vI8TDSUWPt_16libp2p_plaintext9handshake9handshake0s0_10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNCNvNtCs2vI8TDSUWPt_16libp2p_plaintext9handshake9handshake0s1_10___CALLSITE = global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNCNvNtCs2vI8TDSUWPt_16libp2p_plaintext9handshake9handshake0s1_10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNCNvNtCs2vI8TDSUWPt_16libp2p_plaintext9handshake9handshake0s_10___CALLSITE = global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNCNvNtCs2vI8TDSUWPt_16libp2p_plaintext9handshake9handshake0s_10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@1 = private unnamed_addr constant [41 x i8] c"event transports/plaintext/src/lib.rs:104", align 1
@2 = private unnamed_addr constant [16 x i8] c"libp2p_plaintext", align 1
@3 = private unnamed_addr constant [7 x i8] c"message", align 1
@4 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @3, [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite12set_interest, ptr @_RNvXs_NtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata, ptr @_RNvYNtNtCs9Bqz0CSWZZv_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCs2vI8TDSUWPt_16libp2p_plaintext }>, align 8
@6 = private unnamed_addr constant [31 x i8] c"transports/plaintext/src/lib.rs", align 1
@_RNvNvNCNvMs2_Cs2vI8TDSUWPt_16libp2p_plaintextNtBb_6Config9handshake010___CALLSITE4META = constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\01\00\00\00\00\00\00\00\01\00\00\00h\00\00\00", ptr @1, [8 x i8] c")\00\00\00\00\00\00\00", ptr @2, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @4, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNCNvMs2_Cs2vI8TDSUWPt_16libp2p_plaintextNtB9_6Config9handshake010___CALLSITE, ptr @5, ptr @2, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @6, [9 x i8] c"\1F\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@7 = private unnamed_addr constant [41 x i8] c"event transports/plaintext/src/lib.rs:106", align 1
@_RNvNvNCNvMs2_Cs2vI8TDSUWPt_16libp2p_plaintextNtBb_6Config9handshake0s_10___CALLSITE4META = constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\01\00\00\00\00\00\00\00\01\00\00\00j\00\00\00", ptr @7, [8 x i8] c")\00\00\00\00\00\00\00", ptr @2, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @4, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNCNvMs2_Cs2vI8TDSUWPt_16libp2p_plaintextNtB9_6Config9handshake0s_10___CALLSITE, ptr @5, ptr @2, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @6, [9 x i8] c"\1F\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@8 = private unnamed_addr constant [46 x i8] c"event transports/plaintext/src/handshake.rs:41", align 1
@9 = private unnamed_addr constant [27 x i8] c"libp2p_plaintext::handshake", align 1
@10 = private unnamed_addr constant [37 x i8] c"transports/plaintext/src/handshake.rs", align 1
@_RNvNvNCNvNtCs2vI8TDSUWPt_16libp2p_plaintext9handshake9handshake010___CALLSITE4META = constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00)\00\00\00", ptr @8, [8 x i8] c".\00\00\00\00\00\00\00", ptr @9, [8 x i8] c"\1B\00\00\00\00\00\00\00", ptr @4, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNCNvNtCs2vI8TDSUWPt_16libp2p_plaintext9handshake9handshake010___CALLSITE, ptr @5, ptr @9, [8 x i8] c"\1B\00\00\00\00\00\00\00", ptr @10, [9 x i8] c"%\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@11 = private unnamed_addr constant [46 x i8] c"event transports/plaintext/src/handshake.rs:68", align 1
@_RNvNvNCNvNtCs2vI8TDSUWPt_16libp2p_plaintext9handshake9handshake0s0_10___CALLSITE4META = constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\01\00\00\00\00\00\00\00\01\00\00\00D\00\00\00", ptr @11, [8 x i8] c".\00\00\00\00\00\00\00", ptr @9, [8 x i8] c"\1B\00\00\00\00\00\00\00", ptr @4, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNCNvNtCs2vI8TDSUWPt_16libp2p_plaintext9handshake9handshake0s0_10___CALLSITE, ptr @5, ptr @9, [8 x i8] c"\1B\00\00\00\00\00\00\00", ptr @10, [9 x i8] c"%\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@12 = private unnamed_addr constant [46 x i8] c"event transports/plaintext/src/handshake.rs:74", align 1
@13 = private unnamed_addr constant [10 x i8] c"public_key", align 1
@14 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @3, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @13, [8 x i8] c"\0A\00\00\00\00\00\00\00" }>, align 8
@_RNvNvNCNvNtCs2vI8TDSUWPt_16libp2p_plaintext9handshake9handshake0s1_10___CALLSITE4META = constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00J\00\00\00", ptr @12, [8 x i8] c".\00\00\00\00\00\00\00", ptr @9, [8 x i8] c"\1B\00\00\00\00\00\00\00", ptr @14, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @_RNvNCNvNtCs2vI8TDSUWPt_16libp2p_plaintext9handshake9handshake0s1_10___CALLSITE, ptr @5, ptr @9, [8 x i8] c"\1B\00\00\00\00\00\00\00", ptr @10, [9 x i8] c"%\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@15 = private unnamed_addr constant [46 x i8] c"event transports/plaintext/src/handshake.rs:50", align 1
@_RNvNvNCNvNtCs2vI8TDSUWPt_16libp2p_plaintext9handshake9handshake0s_10___CALLSITE4META = constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\002\00\00\00", ptr @15, [8 x i8] c".\00\00\00\00\00\00\00", ptr @9, [8 x i8] c"\1B\00\00\00\00\00\00\00", ptr @4, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNCNvNtCs2vI8TDSUWPt_16libp2p_plaintext9handshake9handshake0s_10___CALLSITE, ptr @5, ptr @9, [8 x i8] c"\1B\00\00\00\00\00\00\00", ptr @10, [9 x i8] c"%\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@16 = private unnamed_addr constant [4 x i8] c"None", align 1
@17 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRRINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_5Debug3fmtCs2vI8TDSUWPt_16libp2p_plaintext }>, align 8
@18 = private unnamed_addr constant [4 x i8] c"Some", align 1
@19 = private unnamed_addr constant [14 x i8] c"\0BI/O error: \C0\00", align 1
@20 = private unnamed_addr constant [25 x i8] c"Failed to decode protobuf", align 1
@21 = private unnamed_addr constant [27 x i8] c"Failed to decode public key", align 1
@22 = private unnamed_addr constant [23 x i8] c"Failed to decode PeerId", align 1
@23 = private unnamed_addr constant [71 x i8] c"The peer id of the exchange isn't consistent with the remote public key", align 1
@24 = private unnamed_addr constant [8 x i8] c"Exchange", align 1
@25 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNvXs5_NtNtCs2vI8TDSUWPt_16libp2p_plaintext5proto7structsNtB8_8ExchangeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmtNtB2_13ScalarWrapperB1a_3fmt }>, align 8
@26 = private unnamed_addr constant [2 x i8] c"id", align 1
@27 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NvXs5_NtNtCs2vI8TDSUWPt_16libp2p_plaintext5proto7structsNtBa_8ExchangeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmtNtB4_s_13ScalarWrapperB1c_3fmt }>, align 8
@28 = private unnamed_addr constant [6 x i8] c"pubkey", align 1
@29 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -7944677318737953096 to ptr), ptr inttoptr (i64 -528938700965152779 to ptr) }>, align 8

; Function Attrs: nonlazybind uwtable
define void @_RNvMCs2vI8TDSUWPt_16libp2p_plaintextNtB2_6Config3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([200 x i8]) align 8 captures(none) dereferenceable(200) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMNtCs2iisHxfqoT7_15libp2p_identity7keypairNtB2_7Keypair6public(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCs2vI8TDSUWPt_16libp2p_plaintext5errorNtB2_11DecodeErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs5_Csh4z5MoDg5zc_11prost_codecNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXs5_NtNtCs2vI8TDSUWPt_16libp2p_plaintext5proto7structsNtB8_8ExchangeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmtNtB2_13ScalarWrapperB1a_3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !range !6, !noundef !4
  %.not = icmp eq i64 %i.d, -1                    ; 2 uses
  %. = select i1 %.not, ptr null, ptr %i.c
  store ptr %., ptr %i.b, align 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtCs2vI8TDSUWPt_16libp2p_plaintext5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !7, !noundef !4 ; 3 uses
  %i.d = icmp ne i64 %i.c, -9223372036854775806
  tail call void @llvm.assume(i1 %i.d)
  %i.e = xor i64 %i.c, -9223372036854775808
  %i.f = icmp slt i64 %i.c, 0
  %i.g = select i1 %i.f, i64 %i.e, i64 2
  switch i64 %i.g, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_7Display3fmtCs2vI8TDSUWPt_16libp2p_plaintext, ptr %.sroa.43.0..sroa_idx, align 8
  %i.i = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !align !5, !noundef !4
  %i.l = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noundef nonnull @19, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 25)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 27)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 23)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 71)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g, %bb.f, %bb.e, %bb.d
  %.sroa.0.1.in = phi i1 [ %i.l, %bb.c ], [ %i.m, %bb.d ], [ %i.n, %bb.e ], [ %i.o, %bb.f ], [ %i.p, %bb.g ]
  ret i1 %.sroa.0.1.in
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRRINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_5Debug3fmtCs2vI8TDSUWPt_16libp2p_plaintext(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4
  %.val = load ptr, ptr %i.c, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.d = getelementptr i8, ptr %.val, i64 8
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !24, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr i8, ptr %.val, i64 16
  %.val1.i = load i64, ptr %i.e, align 8, !noalias !24, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !30
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !31
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.val1.i
  %i.g = icmp samesign eq i64 %.val1.i, 0
  br i1 %i.g, label %_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_5Debug3fmtCs2vI8TDSUWPt_16libp2p_plaintext.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i.i ], [ %.val.i, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34
  store ptr %.sroa.0.05.i.i.i.i, ptr %i.a, align 8, !noalias !34, !captures !21
  %i.i = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34
  %i.j = icmp eq ptr %i.h, %i.f
  br i1 %i.j, label %_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_5Debug3fmtCs2vI8TDSUWPt_16libp2p_plaintext.exit, label %.lr.ph.i.i.i.i

_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_5Debug3fmtCs2vI8TDSUWPt_16libp2p_plaintext.exit: ; preds = %.lr.ph.i.i.i.i, %bb.a
  %i.k = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !30
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRhNtB6_5Debug3fmtCs2vI8TDSUWPt_16libp2p_plaintext(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !42, !noalias !44, !noundef !4 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXse_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXNtNtNtCskKLDkoKarTP_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsg_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt.exit

_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_7Display3fmtCs2vI8TDSUWPt_16libp2p_plaintext(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs3_NtNtCs2vI8TDSUWPt_16libp2p_plaintext5proto7structsNtB5_8ExchangeNtNtCsbZN1VVVQjZP_5prost7message7Message5clear(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val10 = load i64, ptr %0, align 8, !range !6, !noundef !4 ; 2 uses
  %i.a = icmp sgt i64 %.val10, 0
  br i1 %i.a, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2vI8TDSUWPt_16libp2p_plaintext.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val11 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11, i64 noundef %.val10, i64 noundef range(i64 1, -9223372036854775807) 1) #7
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2vI8TDSUWPt_16libp2p_plaintext.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2vI8TDSUWPt_16libp2p_plaintext.exit: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %bb.a
  store i64 -1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.val = load i64, ptr %i.c, align 8, !range !6, !noundef !4 ; 2 uses
  %i.d = icmp sgt i64 %.val, 0
  br i1 %i.d, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i14, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2vI8TDSUWPt_16libp2p_plaintext.exit15

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i14: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2vI8TDSUWPt_16libp2p_plaintext.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val9 = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #7
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2vI8TDSUWPt_16libp2p_plaintext.exit15

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2vI8TDSUWPt_16libp2p_plaintext.exit15: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i14, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2vI8TDSUWPt_16libp2p_plaintext.exit
  store i64 -1, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs5_NtNtCs2vI8TDSUWPt_16libp2p_plaintext5proto7structsNtB5_8ExchangeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 2, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @27)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.g
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NvXs5_NtNtCs2vI8TDSUWPt_16libp2p_plaintext5proto7structsNtBa_8ExchangeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmtNtB4_s_13ScalarWrapperB1c_3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !range !6, !noundef !4
  %.not = icmp eq i64 %i.d, -1                    ; 2 uses
  %. = select i1 %.not, ptr null, ptr %i.c
  store ptr %., ptr %i.b, align 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs9Bqz0CSWZZv_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCs2vI8TDSUWPt_16libp2p_plaintext(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @29, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs2iisHxfqoT7_15libp2p_identity7keypairNtB2_7Keypair6public(ptr dead_on_unwind noalias nofree noundef writable sret([200 x i8]) align 8 captures(none) dereferenceable(200), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite12set_interest(ptr noundef nonnull align 8, i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs5_Csh4z5MoDg5zc_11prost_codecNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCskKLDkoKarTP_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{}
!5 = !{i64 8}
!6 = !{i64 -1, i64 -9223372036854775808}
!7 = !{i64 0, i64 -9223372036854775803}
!21 = !{!"address", !"read_provenance"}
!22 = distinct !{!22, i1 false, !"_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_5Debug3fmtCs2vI8TDSUWPt_16libp2p_plaintext"}
!23 = distinct !{!23, !22, !"_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_5Debug3fmtCs2vI8TDSUWPt_16libp2p_plaintext: argument 0"}
!24 = !{!23}
!25 = distinct !{!25, i1 false, !"_RNvXsr_NtCskKLDkoKarTP_4core3fmtShNtB5_5Debug3fmtCs2vI8TDSUWPt_16libp2p_plaintext"}
!26 = distinct !{!26, !25, !"_RNvXsr_NtCskKLDkoKarTP_4core3fmtShNtB5_5Debug3fmtCs2vI8TDSUWPt_16libp2p_plaintext: argument 0"}
!27 = distinct !{!27, !25, !"_RNvXsr_NtCskKLDkoKarTP_4core3fmtShNtB5_5Debug3fmtCs2vI8TDSUWPt_16libp2p_plaintext: argument 1"}
!28 = distinct !{!28, i1 false, !"_RNvXsr_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs2vI8TDSUWPt_16libp2p_plaintext"}
!29 = distinct !{!29, !28, !"_RNvXsr_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs2vI8TDSUWPt_16libp2p_plaintext: argument 0"}
!30 = !{!26, !27, !29, !23}
!31 = !{!26}
!32 = distinct !{!32, i1 false, !"_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECs2vI8TDSUWPt_16libp2p_plaintext"}
!33 = distinct !{!33, !32, !"_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECs2vI8TDSUWPt_16libp2p_plaintext: argument 0"}
!34 = !{!33, !26, !27, !29, !23}
!40 = distinct !{!40, i1 false, !"_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt"}
!41 = distinct !{!41, !40, !"_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt: argument 1"}
!42 = !{!41}
!43 = distinct !{!43, !40, !"_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt: argument 0"}
!44 = !{!43}
end_hunk_0
