Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/libsignal_protocol-78e79be79537878f.libsignal_protocol.3431899de14c0db4-cgu.12?download=true
inline.NumInlined: 159
inline.NumDeleted: 97
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [80 x i8] c"/rustc/48a229ceaefd4985c50990b14116b6d856af0985/library/std/src/thread/local.rs\00", align 1, !guid !4
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"O\00\00\00\00\00\00\00\AD\01\00\00\19\00\00\00" }>, align 8, !guid !4
@2 = private unnamed_addr constant [73 x i8] c"/rustc/48a229ceaefd4985c50990b14116b6d856af0985/library/alloc/src/str.rs\00", align 1, !guid !4
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"H\00\00\00\00\00\00\00\C8\00\00\00\16\00\00\00" }>, align 8, !guid !4
@4 = private unnamed_addr constant [53 x i8] c"attempt to join into collection with len > usize::MAX", align 1, !guid !4
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"H\00\00\00\00\00\00\00\AF\00\00\00\0A\00\00\00" }>, align 8, !guid !4
@6 = private unnamed_addr constant [5 x i8] c"Chain", align 1, !guid !4
@7 = private unnamed_addr constant [18 x i8] c"sender_ratchet_key", align 1, !guid !4
@8 = private unnamed_addr constant [9 x i8] c"chain_key", align 1, !guid !4
@9 = private unnamed_addr constant [12 x i8] c"message_keys", align 1, !guid !4
@10 = private unnamed_addr constant [26 x i8] c"sender_ratchet_key_private", align 1, !guid !4
@11 = private unnamed_addr constant [14 x i8] c"SenderChainKey", align 1, !guid !4
@12 = private unnamed_addr constant [9 x i8] c"iteration", align 1, !guid !4
@13 = private unnamed_addr constant [4 x i8] c"seed", align 1, !guid !4
@14 = private unnamed_addr constant [13 x i8] c"PendingPreKey", align 1, !guid !4
@15 = private unnamed_addr constant [10 x i8] c"pre_key_id", align 1, !guid !4
@16 = private unnamed_addr constant [17 x i8] c"signed_pre_key_id", align 1, !guid !4
@17 = private unnamed_addr constant [9 x i8] c"timestamp", align 1, !guid !4
@18 = private unnamed_addr constant [8 x i8] c"base_key", align 1, !guid !4
@19 = private unnamed_addr constant [16 x i8] c"SenderMessageKey", align 1, !guid !4
@20 = private unnamed_addr constant [18 x i8] c"PendingKyberPreKey", align 1, !guid !4
@21 = private unnamed_addr constant [10 x i8] c"ciphertext", align 1, !guid !4
@22 = private unnamed_addr constant [16 x i8] c"SenderSigningKey", align 1, !guid !4
@23 = private unnamed_addr constant [6 x i8] c"public", align 1, !guid !4
@24 = private unnamed_addr constant [7 x i8] c"private", align 1, !guid !4
@25 = private unnamed_addr constant [42 x i8] c"failed to decode previous session protobuf", align 1, !guid !4
@26 = private unnamed_addr constant [59 x i8] c"8post-quantum ratchet: error creating initial B2A state: \C0\00", align 1, !guid !4
@27 = private unnamed_addr constant [9 x i8] c"mid > len", align 1, !guid !4
@28 = private unnamed_addr constant [83 x i8] c"\0DMessage from \C0. failed to decrypt; sender ratchet public key \C0\11 message counter \C0\00", align 1, !guid !4
@29 = private unnamed_addr constant [18 x i8] c"No current session", align 1, !guid !4
@30 = private unnamed_addr constant [1 x i8] c"\0A", align 1, !guid !4
@31 = private unnamed_addr constant [45 x i8] c"\12Candidate session \C0\05 had \C0\10 receiver chains\00", align 1, !guid !4
@32 = private unnamed_addr constant [59 x i8] c"\12Candidate session \C0\22: cannot get receiver chain info (\C0\01)\00", align 1, !guid !4
@33 = private unnamed_addr constant [63 x i8] c"\12Candidate session \C0\0E failed with '\C0\07', had \C0\10 receiver chains\00", align 1, !guid !4
@34 = private unnamed_addr constant [76 x i8] c"\12Candidate session \C0\0E failed with '\C0#'; cannot get receiver chain info (\C0\01)\00", align 1, !guid !4
@35 = private unnamed_addr constant [19 x i8] c"missing in protobuf", align 1, !guid !4
@36 = private unnamed_addr constant [68 x i8] c".Receiver chain with sender ratchet public key \C0\11 chain key index \C0\00", align 1, !guid !4
@37 = private unnamed_addr constant [4 x i8] c"None", align 1, !guid !4
@38 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRRmNtB6_5Debug3fmtCs4tP8yUXWbFU_18libsignal_protocol }>, align 8, !guid !4
@39 = private unnamed_addr constant [4 x i8] c"Some", align 1, !guid !4
@40 = private unnamed_addr constant [7 x i8] c"current", align 1, !guid !4
@41 = private unnamed_addr constant [8 x i8] c"previous", align 1, !guid !4
@42 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRINtNtCs6i54tJFfzR_5alloc3vec3VechENtB6_5Debug3fmtCs4tP8yUXWbFU_18libsignal_protocol }>, align 8, !guid !4
@43 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRINtNtB8_6option6OptionNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain8ChainKeyENtB6_5Debug3fmtB12_ }>, align 8, !guid !4
@44 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain10MessageKeyENtB6_5Debug3fmtB1c_ }>, align 8, !guid !4
@45 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRmNtB6_5Debug3fmtCs4tP8yUXWbFU_18libsignal_protocol }>, align 8, !guid !4
@46 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNvXsb_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structureNtB8_13PendingPreKeyNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmtNtB2_13ScalarWrapperB1D_3fmt }>, align 8, !guid !4
@47 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRlNtB6_5Debug3fmtCs4tP8yUXWbFU_18libsignal_protocol }>, align 8, !guid !4
@48 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRyNtB6_5Debug3fmtCs4tP8yUXWbFU_18libsignal_protocol }>, align 8, !guid !4

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvMs2_NtNtCs9k3SxhrAWiO_3std6thread5localINtB6_8LocalKeyINtNtCsgxBkk5gSRhY_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !20 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.a = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) null), !noalias !21, !inline_history !19 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs9k3SxhrAWiO_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !noalias !21, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noalias !21, !noundef !5
  %i.f = add i64 %i.c, 1
  store i64 %i.f, ptr %i.a, align 8, !noalias !21
  %i.g = insertvalue { i64, i64 } poison, i64 %i.c, 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %i.e, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsdbmLU2M1sR8_3log13___private_api3loguNtB2_12GlobalLoggerECs4tP8yUXWbFU_18libsignal_protocol(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef range(i64 1, 6) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !24 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [96 x i8], align 8                ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !25, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !25, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !25, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !25, !noundef !5
  %i.k = load ptr, ptr %3, align 8, !alias.scope !25, !nonnull !5, !noundef !5
  %i.l = load ptr, ptr %i.d, align 8, !noalias !25, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noalias !25, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.p = load i32, ptr %i.o, align 8, !noalias !25, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !25
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %2, ptr %i.q, align 8, !noalias !25
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.k, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !25
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %i.j, ptr %.sroa.523.0..sroa_idx.i, align 8, !noalias !25
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %0, ptr %i.r, align 8, !noalias !25
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %1, ptr %i.s, align 8, !noalias !25
  store i64 0, ptr %i.b, align 8, !noalias !25
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !25
  %.sroa.529.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.f, ptr %.sroa.529.0..sroa_idx.i, align 8, !noalias !25
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.t, align 8, !noalias !25
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.l, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !25
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.n, ptr %.sroa.535.0..sroa_idx.i, align 8, !noalias !25
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %4 = zext i32 %i.p to i64
  %5 = shl nuw i64 %4, 32
  %6 = or disjoint i64 %5, 1
  store i64 %6, ptr %i.u, align 8, !noalias !25
  call void @_RNvXs0_NtCsdbmLU2M1sR8_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b), !noalias !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !25
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure13PendingPreKeyEEB15_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !26 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure13PendingPreKeyEBJ_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure13PendingPreKeyEBJ_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure13PendingPreKeyEBJ_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure18PendingKyberPreKeyEEB15_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !27 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure18PendingKyberPreKeyEBJ_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure18PendingKyberPreKeyEBJ_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure18PendingKyberPreKeyEBJ_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainEEB15_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !32 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainEBJ_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0)
          to label %.body.i unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.g, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.e, %bb.g ], [ %i.c, %bb.d ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #17
          to label %.body5.i unwind label %bb.r

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i: ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body5.i unwind label %bb.j

bb.i:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit7.i unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

.body5.i:                                         ; preds = %bb.k, %bb.h, %.body.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.k, %bb.k ], [ %i.h, %bb.h ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain8ChainKeyEEB17_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.j) #17
          to label %.body8.i unwind label %bb.r

bb.k:                                             ; preds = %bb.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body5.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit7.i: ; preds = %bb.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !range !7, !alias.scope !33, !noundef !5
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain8ChainKeyEEB17_.exit.i, label %bb.l

bb.l:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit7.i
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain8ChainKeyEBL_.exit.i.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %.body8.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain8ChainKeyEBL_.exit.i.i: ; preds = %bb.l
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain8ChainKeyEEB17_.exit.i unwind label %bb.o

.body8.i:                                         ; preds = %bb.o, %bb.m, %.body5.i
  %.pn2.i = phi { ptr, i32 } [ %.pn.i, %.body5.i ], [ %i.r, %bb.o ], [ %i.o, %bb.m ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain10MessageKeyEEB1h_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #17
          to label %common.resume.i unwind label %bb.r

bb.o:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain8ChainKeyEBL_.exit.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body8.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain8ChainKeyEEB17_.exit.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain8ChainKeyEBL_.exit.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit7.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain10MessageKeyENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainEBJ_.exit unwind label %bb.p

bb.p:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain8ChainKeyEEB17_.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain10MessageKeyENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %common.resume.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

end_hunk_0
begin_hunk_1_@_RINvXs3_Csfpj6k10bgkT_7polyvalNtB6_7PolyvalNtCskpD4dsn4k38_14universal_hash13UniversalHash19update_with_backendINtNvBF_6update3CtxINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB25_IB25_IB25_IB25_NtB27_5UTermNtNtB29_3bit2B1ENtB3d_2B0EB3r_EB3r_EB3r_EEECs4tP8yUXWbFU_18libsignal_protocol:bb.a
.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.03.0.i1 = phi ptr [ %i.f, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i1, i64 64 ; 2 uses
  tail call void @_RNvXs4_Csfpj6k10bgkT_7polyvalNtB5_7PolyvalNtCskpD4dsn4k38_14universal_hash10UhfBackend15proc_par_blocks(ptr noalias nofree noundef nonnull align 16 dereferenceable(144) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(64) %.sroa.03.0.i1)
  %i.g = icmp eq ptr %i.f, %i.d
  br i1 %i.g, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.idx5 = and i64 %i.c, 48                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx5
  %i.i = icmp samesign eq i64 %.idx5, 0
  br i1 %i.i, label %_RINvXs_NvNtCskpD4dsn4k38_14universal_hash13UniversalHash6updateINtB5_3CtxINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1a_IB1a_IB1a_IB1a_NtB1c_5UTermNtNtB1e_3bit2B1ENtB2i_2B0EB2w_EB2w_EB2w_EENtB9_10UhfClosure4callNtCsfpj6k10bgkT_7polyval7PolyvalECs4tP8yUXWbFU_18libsignal_protocol.exit, label %.lr.ph4

.lr.ph4:                                          ; preds = %._crit_edge, %.lr.ph4
  %.sroa.06.0.i2 = phi ptr [ %i.j, %.lr.ph4 ], [ %i.b, %._crit_edge ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i2, i64 16 ; 2 uses
  tail call void @_RNvXs4_Csfpj6k10bgkT_7polyvalNtB5_7PolyvalNtCskpD4dsn4k38_14universal_hash10UhfBackend10proc_block(ptr noalias nofree noundef nonnull align 16 dereferenceable(144) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %.sroa.06.0.i2)
  %i.k = icmp eq ptr %i.j, %i.h
  br i1 %i.k, label %_RINvXs_NvNtCskpD4dsn4k38_14universal_hash13UniversalHash6updateINtB5_3CtxINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1a_IB1a_IB1a_IB1a_NtB1c_5UTermNtNtB1e_3bit2B1ENtB2i_2B0EB2w_EB2w_EB2w_EENtB9_10UhfClosure4callNtCsfpj6k10bgkT_7polyval7PolyvalECs4tP8yUXWbFU_18libsignal_protocol.exit, label %.lr.ph4

_RINvXs_NvNtCskpD4dsn4k38_14universal_hash13UniversalHash6updateINtB5_3CtxINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1a_IB1a_IB1a_IB1a_NtB1c_5UTermNtNtB1e_3bit2B1ENtB2i_2B0EB2w_EB2w_EB2w_EENtB9_10UhfClosure4callNtCsfpj6k10bgkT_7polyval7PolyvalECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %.lr.ph4, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structureNtB6_14SenderChainKeyNtNtCs43OB2dM8s8d_5prost7message7Message10encode_rawINtNtCs6i54tJFfzR_5alloc3vec3VechEEBc_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !82 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !noundef !5
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6uint326encodeINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(i32 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !5
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes6encodeINtNtCs6i54tJFfzR_5alloc3vec3VechEBM_ECs4tP8yUXWbFU_18libsignal_protocol(i32 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structureNtB6_14SenderChainKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBc_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i32 noundef %1, i8 noundef range(i8 0, 6) %2, ptr noalias nofree noundef align 8 dereferenceable(8) %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !guid !87 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  switch i32 %1, label %bb.b [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef align 8 ptr @_RINvNtCs43OB2dM8s8d_5prost8encoding10skip_fieldQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef %2, i32 noundef %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = tail call noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6uint325mergeQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef %2, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) ; 2 uses
  %.not5 = icmp eq ptr %i.e, null
  br i1 %.not5, label %bb.h, label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.f = tail call noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes5mergeINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.h, label %bb.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8, !noalias !88
  invoke void @_RNvMNtCs43OB2dM8s8d_5prost5errorNtB2_11DecodeError4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 14, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 9)
          to label %_RNCINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structureNtB8_14SenderChainKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShE0Be_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.b, align 8, !noalias !88, !nonnull !5, !noundef !5
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error11DecodeErrorECs4tP8yUXWbFU_18libsignal_protocol(ptr nonnull %.val.i) #17
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.f ], [ %i.j, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_RNCINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structureNtB8_14SenderChainKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShE0Be_.exit: ; preds = %bb.e
  %i.i = load ptr, ptr %i.b, align 8, !noalias !88, !nonnull !5, !align !6, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.h:                                             ; preds = %_RNCINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structureNtB8_14SenderChainKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs_0Be_.exit, %bb.d, %_RNCINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structureNtB8_14SenderChainKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShE0Be_.exit, %bb.c, %bb.b
  %.sroa.0.1 = phi ptr [ %i.c, %bb.b ], [ null, %bb.c ], [ %i.i, %_RNCINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structureNtB8_14SenderChainKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShE0Be_.exit ], [ %i.l, %_RNCINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structureNtB8_14SenderChainKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs_0Be_.exit ], [ null, %bb.d ]
  ret ptr %.sroa.0.1

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8, !noalias !89
  invoke void @_RNvMNtCs43OB2dM8s8d_5prost5errorNtB2_11DecodeError4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 14, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 4)
          to label %_RNCINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structureNtB8_14SenderChainKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs_0Be_.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  %.val.i6 = load ptr, ptr %i.a, align 8, !noalias !89, !nonnull !5, !noundef !5
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error11DecodeErrorECs4tP8yUXWbFU_18libsignal_protocol(ptr nonnull %.val.i6) #17
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RNCINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structureNtB8_14SenderChainKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs_0Be_.exit: ; preds = %bb.i
  %i.l = load ptr, ptr %i.a, align 8, !noalias !89, !nonnull !5, !align !6, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structureNtB6_13PendingPreKeyNtNtCs43OB2dM8s8d_5prost7message7Message10encode_rawINtNtCs6i54tJFfzR_5alloc3vec3VechEEBc_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !90 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !range !8, !noundef !5
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  tail call void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6uint326encodeINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(i32 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !5
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes6encodeINtNtCs6i54tJFfzR_5alloc3vec3VechEBM_ECs4tP8yUXWbFU_18libsignal_protocol(i32 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !noundef !5
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5int326encodeINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(i32 noundef 3, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !5
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6uint646encodeINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(i32 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs9_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structureNtB6_13PendingPreKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBc_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i32 noundef %1, i8 noundef range(i8 0, 6) %2, ptr noalias nofree noundef align 8 dereferenceable(8) %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !guid !101 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  switch i32 %1, label %bb.b [
    i32 1, label %bb.c
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef align 8 ptr @_RINvNtCs43OB2dM8s8d_5prost8encoding10skip_fieldQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef %2, i32 noundef %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !range !8, !alias.scope !102, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = trunc nuw i32 %i.g to i1
  br i1 %i.i, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionmE18get_or_insert_withNvYmNtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 1, ptr %i.f, align 8, !alias.scope !102
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionmE18get_or_insert_withNvYmNtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionmE18get_or_insert_withNvYmNtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.c, %bb.d
  %i.j = tail call noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6uint325mergeQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef %2, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) ; 2 uses
  %.not11 = icmp eq ptr %i.j, null
  br i1 %.not11, label %bb.k, label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.k = tail call noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes5mergeINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) ; 2 uses
  %.not10 = icmp eq ptr %i.k, null
  br i1 %.not10, label %bb.k, label %bb.l

bb.f:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = tail call noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5int325mergeQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef %2, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) ; 2 uses
  %.not9 = icmp eq ptr %i.m, null
  br i1 %.not9, label %bb.k, label %bb.o

bb.g:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = tail call noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6uint645mergeQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.k, label %bb.r

bb.h:                                             ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionmE18get_or_insert_withNvYmNtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.j, ptr %i.d, align 8, !noalias !103
  invoke void @_RNvMNtCs43OB2dM8s8d_5prost5errorNtB2_11DecodeError4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 10)
          to label %_RNCINvXs9_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structureNtB8_13PendingPreKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShE0Be_.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !103, !nonnull !5, !noundef !5
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error11DecodeErrorECs4tP8yUXWbFU_18libsignal_protocol(ptr nonnull %.val.i) #17
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume:                                    ; preds = %bb.s, %bb.p, %bb.m, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.p ], [ %i.p, %bb.i ], [ %i.s, %bb.m ], [ %i.y, %bb.s ]
  resume { ptr, i32 } %common.resume.op

_RNCINvXs9_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structureNtB8_13PendingPreKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShE0Be_.exit: ; preds = %bb.h
  %i.r = load ptr, ptr %i.d, align 8, !noalias !103, !nonnull !5, !align !6, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.k

bb.k:                                             ; preds = %_RNCINvXs9_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structureNtB8_13PendingPreKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs1_0Be_.exit, %bb.g, %_RNCINvXs9_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structureNtB8_13PendingPreKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs0_0Be_.exit, %bb.f, %_RNCINvXs9_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structureNtB8_13PendingPreKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs_0Be_.exit, %bb.e, %_RNCINvXs9_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structureNtB8_13PendingPreKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShE0Be_.exit, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionmE18get_or_insert_withNvYmNtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit, %bb.b
  %.sroa.0.1 = phi ptr [ %i.e, %bb.b ], [ null, %bb.f ], [ null, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionmE18get_or_insert_withNvYmNtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit ], [ null, %bb.e ], [ %i.r, %_RNCINvXs9_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structureNtB8_13PendingPreKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShE0Be_.exit ], [ %i.u, %_RNCINvXs9_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structureNtB8_13PendingPreKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs_0Be_.exit ], [ %i.x, %_RNCINvXs9_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structureNtB8_13PendingPreKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs0_0Be_.exit ], [ %i.aa, %_RNCINvXs9_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structureNtB8_13PendingPreKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs1_0Be_.exit ], [ null, %bb.g ]
  ret ptr %.sroa.0.1

bb.l:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.k, ptr %i.c, align 8, !noalias !104
  invoke void @_RNvMNtCs43OB2dM8s8d_5prost5errorNtB2_11DecodeError4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 8)
          to label %_RNCINvXs9_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structureNtB8_13PendingPreKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs_0Be_.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = landingpad { ptr, i32 }
          cleanup
  %.val.i12 = load ptr, ptr %i.c, align 8, !noalias !104, !nonnull !5, !noundef !5
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error11DecodeErrorECs4tP8yUXWbFU_18libsignal_protocol(ptr nonnull %.val.i12) #17
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RNCINvXs9_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structureNtB8_13PendingPreKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs_0Be_.exit: ; preds = %bb.l
  %i.u = load ptr, ptr %i.c, align 8, !noalias !104, !nonnull !5, !align !6, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

bb.o:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.m, ptr %i.b, align 8, !noalias !105
  invoke void @_RNvMNtCs43OB2dM8s8d_5prost5errorNtB2_11DecodeError4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 17)
          to label %_RNCINvXs9_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structureNtB8_13PendingPreKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs0_0Be_.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.v = landingpad { ptr, i32 }
          cleanup
  %.val.i13 = load ptr, ptr %i.b, align 8, !noalias !105, !nonnull !5, !noundef !5
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error11DecodeErrorECs4tP8yUXWbFU_18libsignal_protocol(ptr nonnull %.val.i13) #17
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RNCINvXs9_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structureNtB8_13PendingPreKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs0_0Be_.exit: ; preds = %bb.o
  %i.x = load ptr, ptr %i.b, align 8, !noalias !105, !nonnull !5, !align !6, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.r:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.o, ptr %i.a, align 8, !noalias !106
  invoke void @_RNvMNtCs43OB2dM8s8d_5prost5errorNtB2_11DecodeError4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 9)
          to label %_RNCINvXs9_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structureNtB8_13PendingPreKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs1_0Be_.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.y = landingpad { ptr, i32 }
          cleanup
  %.val.i14 = load ptr, ptr %i.a, align 8, !noalias !106, !nonnull !5, !noundef !5
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error11DecodeErrorECs4tP8yUXWbFU_18libsignal_protocol(ptr nonnull %.val.i14) #17
          to label %common.resume unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RNCINvXs9_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structureNtB8_13PendingPreKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs1_0Be_.exit: ; preds = %bb.r
  %i.aa = load ptr, ptr %i.a, align 8, !noalias !106, !nonnull !5, !align !6, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsb_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structureNtB6_16SenderMessageKeyNtNtCs43OB2dM8s8d_5prost7message7Message10encode_rawINtNtCs6i54tJFfzR_5alloc3vec3VechEEBc_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !107 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !noundef !5
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6uint326encodeINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(i32 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !5
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes6encodeINtNtCs6i54tJFfzR_5alloc3vec3VechEBM_ECs4tP8yUXWbFU_18libsignal_protocol(i32 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXsb_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structureNtB6_16SenderMessageKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBc_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i32 noundef %1, i8 noundef range(i8 0, 6) %2, ptr noalias nofree noundef align 8 dereferenceable(8) %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !guid !112 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  switch i32 %1, label %bb.b [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef align 8 ptr @_RINvNtCs43OB2dM8s8d_5prost8encoding10skip_fieldQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef %2, i32 noundef %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = tail call noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6uint325mergeQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef %2, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) ; 2 uses
  %.not5 = icmp eq ptr %i.e, null
  br i1 %.not5, label %bb.h, label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.f = tail call noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes5mergeINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.h, label %bb.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8, !noalias !113
  invoke void @_RNvMNtCs43OB2dM8s8d_5prost5errorNtB2_11DecodeError4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 9)
          to label %_RNCINvXsb_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structureNtB8_16SenderMessageKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShE0Be_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.b, align 8, !noalias !113, !nonnull !5, !noundef !5
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error11DecodeErrorECs4tP8yUXWbFU_18libsignal_protocol(ptr nonnull %.val.i) #17
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.f
end_hunk_1
begin_hunk_2_@_RNvNtCs4tP8yUXWbFU_18libsignal_protocol18session_management29format_decryption_failure_log:bb.a
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !173

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4tP8yUXWbFU_18libsignal_protocol.exit.i: ; preds = %.noexc45
  %i.cp = load ptr, ptr %i.cl, align 8, !noalias !173, !nonnull !5, !noundef !5
  %i.cq = icmp ule i64 %.sroa.01.0.i.i.lcssa, %i.ck
  call void @llvm.assume(i1 %i.cq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !173
  store i64 %i.ck, ptr %i.b, align 8, !noalias !173
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.cp, ptr %i.cr, align 8, !noalias !173
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.cs, align 8, !noalias !173
  %i.ct = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.val77.i
  invoke void @_RNvXs2_NtNtCs6i54tJFfzR_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsgxBkk5gSRhY_4core5slice4iter4IterhEE11spec_extendCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %.val.i, ptr noundef nonnull %i.ct)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !173

_RINvYINtNtNtCsgxBkk5gSRhY_4core5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBN_3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2U_ECs4tP8yUXWbFU_18libsignal_protocol.exit.i: ; preds = %.lr.ph112, %bb.y
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #15
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !173

.noexc47:                                         ; preds = %_RINvYINtNtNtCsgxBkk5gSRhY_4core5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBN_3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2U_ECs4tP8yUXWbFU_18libsignal_protocol.exit.i
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.af, %bb.ad, %.invoke.i, %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4tP8yUXWbFU_18libsignal_protocol.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #17
          to label %.body unwind label %bb.ag, !noalias !173

bb.aa:                                            ; preds = %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4tP8yUXWbFU_18libsignal_protocol.exit.i
  %i.cu = load i64, ptr %i.cs, align 8, !noalias !173, !noundef !5 ; 3 uses
  %i.cv = icmp sgt i64 %i.cu, -1
  call void @llvm.assume(i1 %i.cv)
  %i.cw = sub i64 %.sroa.01.0.i.i.lcssa, %i.cu    ; 2 uses
  %i.cx = icmp eq i64 %i.br, 1
  br i1 %i.cx, label %._crit_edge118, label %.lr.ph117

.lr.ph117:                                        ; preds = %bb.aa
  %i.cy = load ptr, ptr %i.cr, align 8, !noalias !173, !nonnull !5, !noundef !5
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cu
  br label %bb.ac

bb.ab:                                            ; preds = %bb.af
  %i.da = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.sroa.012.1.val76.i
  %i.db = sub nuw nsw i64 %i.di, %.sroa.012.1.val76.i ; 2 uses
  %i.dc = icmp eq ptr %i.de, %i.bs
  br i1 %i.dc, label %._crit_edge118, label %bb.ac

._crit_edge118:                                   ; preds = %bb.ab, %bb.aa
  %.sroa.26.2.i.lcssa = phi i64 [ %i.cw, %bb.aa ], [ %i.db, %bb.ab ]
  %i.dd = sub i64 %.sroa.01.0.i.i.lcssa, %.sroa.26.2.i.lcssa
  %.sroa.063.0.copyload64 = load i64, ptr %i.b, align 8, !noalias !171
  %.sroa.565.0.copyload67 = load ptr, ptr %i.cr, align 8, !noalias !171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !173
  br label %_RINvNtCs6i54tJFfzR_5alloc3str17join_generic_copyehNtNtB4_6string6StringECs4tP8yUXWbFU_18libsignal_protocol.exit

bb.ac:                                            ; preds = %.lr.ph117, %bb.ab
  %.sroa.012.1.i115 = phi ptr [ %i.bu, %.lr.ph117 ], [ %i.de, %bb.ab ] ; 3 uses
  %.sroa.035.2.i114 = phi ptr [ %i.cz, %.lr.ph117 ], [ %i.da, %bb.ab ] ; 2 uses
  %.sroa.26.2.i113 = phi i64 [ %i.cw, %.lr.ph117 ], [ %i.db, %bb.ab ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i115, i64 24 ; 2 uses
  %i.df = getelementptr i8, ptr %.sroa.012.1.i115, i64 8
  %.sroa.012.1.val.i = load ptr, ptr %i.df, align 8, !alias.scope !171, !nonnull !5, !noundef !5
  %i.dg = getelementptr i8, ptr %.sroa.012.1.i115, i64 16
  %.sroa.012.1.val76.i = load i64, ptr %i.dg, align 8, !alias.scope !171, !noundef !5 ; 5 uses
  %.not.i.i = icmp eq i64 %.sroa.26.2.i113, 0
  br i1 %.not.i.i, label %.invoke.i, label %bb.ad, !prof !12

bb.ad:                                            ; preds = %bb.ac
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.035.2.i114, i64 1 ; 2 uses
  %i.di = add nsw i64 %.sroa.26.2.i113, -1        ; 2 uses
  invoke void @_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull %.sroa.035.2.i114, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !173

bb.ae:                                            ; preds = %bb.ad
  %.not.i78.i = icmp ugt i64 %.sroa.012.1.val76.i, %i.di
  br i1 %.not.i78.i, label %.invoke.i, label %bb.af, !prof !12

.invoke.i:                                        ; preds = %bb.ae, %bb.ac
  invoke void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull @27, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #15
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !174

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.af:                                            ; preds = %bb.ae
  invoke void @_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull %i.dh, i64 noundef %.sroa.012.1.val76.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.012.1.val.i, i64 noundef %.sroa.012.1.val76.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !173

bb.ag:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !noalias !173
  unreachable

_RINvNtCs6i54tJFfzR_5alloc3str17join_generic_copyehNtNtB4_6string6StringECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %._crit_edge118, %._crit_edge
  %.sroa.063.0 = phi i64 [ %.sroa.063.0.copyload64, %._crit_edge118 ], [ 0, %._crit_edge ]
  %.sroa.565.0 = phi ptr [ %.sroa.565.0.copyload67, %._crit_edge118 ], [ inttoptr (i64 1 to ptr), %._crit_edge ]
  %.sroa.668.0 = phi i64 [ %i.dd, %._crit_edge118 ], [ 0, %._crit_edge ]
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.063.0, ptr %i.dk, align 8
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.565.0, ptr %.sroa.472.0..sroa_idx, align 8
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.668.0, ptr %.sroa.573.0..sroa_idx, align 8
  store i64 -2, ptr %0, align 8
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtBG_6string6StringEECs4tP8yUXWbFU_18libsignal_protocol.exit unwind label %bb.ah

bb.ah:                                            ; preds = %_RINvNtCs6i54tJFfzR_5alloc3str17join_generic_copyehNtNtB4_6string6StringECs4tP8yUXWbFU_18libsignal_protocol.exit
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %common.resume unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume:                                    ; preds = %.body, %bb.ah
  %common.resume.op = phi { ptr, i32 } [ %i.dl, %bb.ah ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtBG_6string6StringEECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %_RINvNtCs6i54tJFfzR_5alloc3str17join_generic_copyehNtNtB4_6string6StringECs4tP8yUXWbFU_18libsignal_protocol.exit
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

bb.aj:                                            ; preds = %bb.x
  %i.dn = load ptr, ptr %.sroa.9.8..sroa_idx61, align 8, !nonnull !5, !noundef !5
  %i.do = load i64, ptr %i.bf, align 8, !noundef !5
  store ptr %i.dn, ptr %i.e, align 8
  store i64 %i.do, ptr %i.be, align 8
  br label %bb.al

bb.ak:                                            ; preds = %bb.x
  store ptr %i.f, ptr %i.be, align 8
  store ptr null, ptr %i.e, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  invoke fastcc void @_RNvNvNtCs4tP8yUXWbFU_18libsignal_protocol18session_management29format_decryption_failure_log22append_session_summary(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m, i64 noundef %i.bp, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) %i.bo)
          to label %bb.an unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dq = load i64, ptr %i.f, align 8, !range !7, !noundef !5
  %i.dr = icmp eq i64 %i.dq, -1
  br i1 %i.dr, label %.body, label %bb.aq

bb.an:                                            ; preds = %bb.al
  %i.ds = load i64, ptr %i.f, align 8, !range !7, !noundef !5
  %i.dt = icmp eq i64 %i.ds, -1
  br i1 %i.dt, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.ap, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i)
  %i.du = icmp eq ptr %i.bg, %i.ba
  br i1 %i.du, label %._crit_edge, label %bb.u

bb.ap:                                            ; preds = %bb.an
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session12SessionStateNtBZ_19InvalidSessionErrorEEB13_(ptr noalias nofree noundef align 8 dereferenceable(344) %i.f)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aq:                                            ; preds = %bb.am
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session12SessionStateNtBZ_19InvalidSessionErrorEEB13_(ptr noalias nofree noundef align 8 dereferenceable(344) %i.f) #17
          to label %.body unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.b, %.body
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i32, i32 } @_RNvNtCs4tP8yUXWbFU_18libsignal_protocol7ratchet17spqr_chain_params(i1 noundef zeroext %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !175 {
bb.a:
  %spec.select = select i1 %0, i32 -1, i32 25000
  %i.a = insertvalue { i32, i32 } poison, i32 %spec.select, 0
  %i.b = insertvalue { i32, i32 } %i.a, i32 2000, 1
  ret { i32, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs4tP8yUXWbFU_18libsignal_protocol7ratchet22initialize_bob_session(ptr dead_on_unwind noalias nofree noundef writable sret([344 x i8]) align 8 captures(none) dereferenceable(344) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(304) %1, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(64) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !186 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [344 x i8], align 8               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 9 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 1                ; 2 uses
  %i.i = alloca [36 x i8], align 4                ; 2 uses
  %i.j = alloca [32 x i8], align 1                ; 2 uses
  %i.k = alloca [104 x i8], align 8               ; 6 uses
  call void @_RNvXNtCs4tP8yUXWbFU_18libsignal_protocol5pqxdhNtB2_5PqxdhNtNtB4_9handshake9Handshake6accept(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(304) %1)
  %i.l = load i32, ptr %i.k, align 8, !range !8, !noundef !5
  %i.m = trunc nuw i32 %i.l to i1
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.j, ptr noundef nonnull align 4 dereferenceable(32) %i.p, i64 32, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.i, ptr noundef nonnull align 4 dereferenceable(36) %i.q, i64 36, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.h, ptr noundef nonnull align 4 dereferenceable(32) %i.r, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !187)
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !189
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 297
  %i.u = load i8, ptr %i.t, align 1, !range !13, !alias.scope !188, !noundef !5
  %i.v = trunc nuw i8 %i.u to i1
  %spec.select.i.i = select i1 %i.v, i32 -1, i32 25000
  %3 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 4294967297, ptr %3, align 8, !noalias !189
  %4 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i32 1, ptr %4, align 8, !noalias !189
  store ptr %i.h, ptr %i.f, align 8, !noalias !189
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 32, ptr %i.w, align 8, !noalias !189
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 %spec.select.i.i, ptr %i.x, align 8, !noalias !189
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i32 2000, ptr %i.y, align 4, !noalias !189
  call void @_RNvCs1YsMTEqGlh_4spqr13initial_state(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.f), !noalias !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !189
  %i.z = load i64, ptr %i.g, align 8, !range !10, !noalias !189, !noundef !5
  %i.aa = trunc nuw i64 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !191
  store ptr %i.c, ptr %i.a, align 8, !noalias !191
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsc_Cs1YsMTEqGlh_4spqrNtB5_5ErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !191
  call void @_RNvNvNtCs6i54tJFfzR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noundef nonnull @26, ptr noundef nonnull %i.a), !noalias !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !189
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.418.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !192
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.ad, align 8, !alias.scope !187
  %.sroa.519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.519.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !noalias !192
  store i64 -1, ptr %0, align 8, !alias.scope !187
  br label %_RNvNtCs4tP8yUXWbFU_18libsignal_protocol7ratchet28initialize_recipient_session.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !189
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 160
  call void @_RNvMs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB5_12SessionState3new(ptr noalias nofree noundef nonnull sret([344 x i8]) align 8 captures(none) dereferenceable(344) %i.d, i8 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(304) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ae, ptr noalias nofree noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.af, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !193
  call void @_RNvMs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB5_12SessionState17with_sender_chain(ptr noalias nofree noundef nonnull sret([344 x i8]) align 8 captures(none) dereferenceable(344) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(344) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(64) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(36) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !189
  br label %_RNvNtCs4tP8yUXWbFU_18libsignal_protocol7ratchet28initialize_recipient_session.exit

_RNvNtCs4tP8yUXWbFU_18libsignal_protocol7ratchet28initialize_recipient_session.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.f

bb.f:                                             ; preds = %_RNvNtCs4tP8yUXWbFU_18libsignal_protocol7ratchet28initialize_recipient_session.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs4tP8yUXWbFU_18libsignal_protocol7ratchet29initialize_bob_session_record(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([368 x i8]) align 8 captures(none) dereferenceable(368) initializes((0, 56)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(304) %1, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(64) %2) unnamed_addr #0 !guid !194 {
bb.a:
  %i.a = alloca [344 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [48 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtCs4tP8yUXWbFU_18libsignal_protocol7ratchet22initialize_bob_session(ptr noalias nofree noundef nonnull sret([344 x i8]) align 8 captures(address) dereferenceable(344) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(304) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(64) %2)
  %i.b = load i64, ptr %i.a, align 8, !range !7, !noundef !5 ; 2 uses
  %i.c = icmp eq i64 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.5.0..sroa_idx, i64 288, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.611.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  %.sroa.09.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.09.sroa.5.0..sroa_idx, align 8
  %.sroa.09.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.09.sroa.6.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %.sroa.510.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ -1, %bb.b ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNvNtCs4tP8yUXWbFU_18libsignal_protocol18session_management29format_decryption_failure_log22append_session_summary(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(16) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !214 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [10 x i8], align 1                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 3 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [32 x i8], align 8                ; 8 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 3 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 3 uses
  %i.r = alloca [48 x i8], align 8                ; 9 uses
  %i.s = alloca [24 x i8], align 8                ; 3 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [48 x i8], align 8                ; 9 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 3 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 16 uses
  %i.aa = alloca [8 x i8], align 8                ; 5 uses
  store i64 %1, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.ab = load ptr, ptr %2, align 8, !noundef !5  ; 2 uses
  %.not = icmp eq ptr %i.ab, null
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ab, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %i.ad, ptr %i.af, align 8
  store i64 -1, ptr %i.z, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %i.ac, align 8, !nonnull !5, !align !6, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB5_12SessionState31all_receiver_chain_logging_info(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(344) %i.ag)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not72 = icmp eq ptr %3, null
  %i.ah = load i64, ptr %i.z, align 8, !range !7, !noundef !5
  %i.ai = icmp eq i64 %i.ah, -1                   ; 2 uses
  br i1 %.not72, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.ai, label %bb.r, label %bb.s

bb.f:                                             ; preds = %bb.d
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.aj, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.aa, ptr %i.l, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXsi_NtNtNtCsgxBkk5gSRhY_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.n, ptr %i.ak, align 8
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session19InvalidSessionErrorNtB6_7Display3fmtBC_, ptr %.sroa.452.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6i54tJFfzR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull @32, ptr noundef nonnull %i.l)
          to label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6i54tJFfzR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs4tP8yUXWbFU_18libsignal_protocol.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.am = load i64, ptr %i.al, align 8, !noundef !5 ; 2 uses
  store i64 %i.am, ptr %i.p, align 8
  %i.an = icmp ult i64 %i.am, 288230376151711744
  tail call void @llvm.assume(i1 %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.aa, ptr %i.o, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXsi_NtNtNtCsgxBkk5gSRhY_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.442.0..sroa_idx, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.p, ptr %i.ao, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @_RNvXsi_NtNtNtCsgxBkk5gSRhY_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.446.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6i54tJFfzR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noundef nonnull @31, ptr noundef nonnull %i.o)
          to label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6i54tJFfzR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs4tP8yUXWbFU_18libsignal_protocol.exit89 unwind label %bb.i

.body90:                                          ; preds = %bb.y, %bb.u, %bb.o, %bb.k, %bb.i
  %.sroa.06.1.lpad-body = phi i1 [ true, %bb.u ], [ true, %bb.k ], [ true, %bb.o ], [ %.sroa.06.1, %bb.i ], [ true, %bb.y ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.ca, %bb.u ], [ %i.aw, %bb.k ], [ %i.bi, %bb.o ], [ %i.ar, %bb.i ], [ %i.ck, %bb.y ] ; 2 uses
  %i.ap = load i64, ptr %i.z, align 8, !range !7, !noundef !5
  %i.aq = icmp ne i64 %i.ap, -1
  %or.cond = and i1 %.sroa.06.1.lpad-body, %i.aq
  br i1 %or.cond, label %bb.bd, label %.thread

bb.i:                                             ; preds = %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterTINtB7_3VechEINtNtCsgxBkk5gSRhY_4core6option6OptionmEEENtNtNtNtB1d_4iter6traits8iterator8Iterator4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.thread, %bb.s, %bb.r, %bb.h, %bb.g
  %.sroa.06.1 = phi i1 [ false, %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterTINtB7_3VechEINtNtCsgxBkk5gSRhY_4core6option6OptionmEEENtNtNtNtB1d_4iter6traits8iterator8Iterator4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.thread ], [ true, %bb.h ], [ true, %bb.r ], [ true, %bb.g ], [ true, %bb.s ]
end_hunk_2
