Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/libsignal_protocol-78e79be79537878f.libsignal_protocol.3431899de14c0db4-cgu.13?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/prost-0.14.4/src/encoding.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\E8\02\00\00\05\00\00\00" }>, align 8
@2 = private unnamed_addr constant [105 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/prost-0.14.4/src/encoding/varint.rs\00", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00S\03\00\00\09\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00[\03\00\00\09\00\00\00" }>, align 8
@5 = private unnamed_addr constant [16 x i8] c"SessionStructure", align 1
@6 = private unnamed_addr constant [15 x i8] c"session_version", align 1
@7 = private unnamed_addr constant [22 x i8] c"remote_identity_public", align 1
@8 = private unnamed_addr constant [8 x i8] c"root_key", align 1
@9 = private unnamed_addr constant [16 x i8] c"previous_counter", align 1
@10 = private unnamed_addr constant [12 x i8] c"sender_chain", align 1
@11 = private unnamed_addr constant [15 x i8] c"receiver_chains", align 1
@12 = private unnamed_addr constant [15 x i8] c"pending_pre_key", align 1
@13 = private unnamed_addr constant [22 x i8] c"remote_registration_id", align 1
@14 = private unnamed_addr constant [21 x i8] c"local_registration_id", align 1
@15 = private unnamed_addr constant [14 x i8] c"alice_base_key", align 1
@16 = private unnamed_addr constant [21 x i8] c"pending_kyber_pre_key", align 1
@17 = private unnamed_addr constant [21 x i8] c"local_identity_public", align 1
@18 = private unnamed_addr constant [16 x i8] c"pq_ratchet_state", align 1
@19 = private unnamed_addr constant [15 x i8] c"RecordStructure", align 1
@20 = private unnamed_addr constant [15 x i8] c"current_session", align 1
@21 = private unnamed_addr constant [17 x i8] c"previous_sessions", align 1
@22 = private unnamed_addr constant [23 x i8] c"SenderKeyStateStructure", align 1
@23 = private unnamed_addr constant [8 x i8] c"chain_id", align 1
@24 = private unnamed_addr constant [18 x i8] c"sender_signing_key", align 1
@25 = private unnamed_addr constant [19 x i8] c"sender_message_keys", align 1
@26 = private unnamed_addr constant [15 x i8] c"message_version", align 1
@27 = private unnamed_addr constant [16 x i8] c"sender_chain_key", align 1
@28 = private unnamed_addr constant [24 x i8] c"SenderKeyRecordStructure", align 1
@29 = private unnamed_addr constant [17 x i8] c"sender_key_states", align 1
@30 = private unnamed_addr constant [86 x i8] c"/rustc/48a229ceaefd4985c50990b14116b6d856af0985/library/core/src/iter/traits/accum.rs\00", align 1
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @30, [16 x i8] c"U\00\00\00\00\00\00\00\CE\00\00\00\01\00\00\00" }>, align 8
@32 = private unnamed_addr constant [21 x i8] c"PreKeyRecordStructure", align 1
@33 = private unnamed_addr constant [2 x i8] c"id", align 1
@34 = private unnamed_addr constant [11 x i8] c"private_key", align 1
@35 = private unnamed_addr constant [10 x i8] c"public_key", align 1
@36 = private unnamed_addr constant [24 x i8] c"IdentityKeyPairStructure", align 1
@37 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"h\00\00\00\00\00\00\00Y\00\00\00\05\00\00\00" }>, align 8
@38 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"h\00\00\00\00\00\00\00_\00\00\00\05\00\00\00" }>, align 8
@39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"h\00\00\00\00\00\00\00e\00\00\00\05\00\00\00" }>, align 8
@40 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"h\00\00\00\00\00\00\00s\00\00\00\05\00\00\00" }>, align 8
@41 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"h\00\00\00\00\00\00\00y\00\00\00\05\00\00\00" }>, align 8
@42 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"h\00\00\00\00\00\00\00\7F\00\00\00\05\00\00\00" }>, align 8
@43 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"h\00\00\00\00\00\00\00\8D\00\00\00\14\00\00\00" }>, align 8
@_RNvNtNtNtCsgxBkk5gSRhY_4core7unicode12unicode_data11white_space14WHITESPACE_MAP = external local_unnamed_addr global [256 x i8]
@44 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRINtNtCs6i54tJFfzR_5alloc3vec3VechENtB6_5Debug3fmtCs4tP8yUXWbFU_18libsignal_protocol }>, align 8
@45 = private unnamed_addr constant [60 x i8] c"internal error: entered unreachable code: invalid Once state", align 1
@46 = private unnamed_addr constant [87 x i8] c"/rustc/48a229ceaefd4985c50990b14116b6d856af0985/library/std/src/sys/sync/once/futex.rs\00", align 1
@47 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @46, [16 x i8] c"V\00\00\00\00\00\00\00`\00\00\00\12\00\00\00" }>, align 8
@48 = private unnamed_addr constant [87 x i8] c"assertion failed: result == Self::PrekeyMessage || message_type as i32 == result as i32", align 1
@49 = private unnamed_addr constant [35 x i8] c"rust/protocol/src/sealed_sender.rs\00", align 1
@50 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @49, [16 x i8] c"\22\00\00\00\00\00\00\00\C6\01\00\00\09\00\00\00" }>, align 8
@51 = private unnamed_addr constant [124 x i8] c"/opt-bench/work/libsignal-rs/libsignal/target/release/build/libsignal-protocol-66ce4c067e80c76f/out/signal.proto.storage.rs\00", align 1
@52 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @51, [16 x i8] c"{\00\00\00\00\00\00\00\02\00\00\00\1C\00\00\00" }>, align 8
@53 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @51, [16 x i8] c"{\00\00\00\00\00\00\00%\00\00\00 \00\00\00" }>, align 8
@54 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRmNtB6_5Debug3fmtCs4tP8yUXWbFU_18libsignal_protocol }>, align 8
@55 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRINtNtB8_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainENtB6_5Debug3fmtB10_ }>, align 8
@56 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainENtB6_5Debug3fmtB1a_ }>, align 8
@57 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRINtNtB8_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure13PendingPreKeyENtB6_5Debug3fmtB10_ }>, align 8
@58 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRINtNtB8_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure18PendingKyberPreKeyENtB6_5Debug3fmtB10_ }>, align 8
@59 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @51, [16 x i8] c"{\00\00\00\00\00\00\00\\\00\00\00\1C\00\00\00" }>, align 8
@60 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRINtNtB8_6option6OptionNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage16SessionStructureENtB6_5Debug3fmtBY_ }>, align 8
@61 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNvXs9_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB8_15RecordStructureNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmtNtB2_13ScalarWrapperB1k_3fmt }>, align 8
@62 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRINtNtB8_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structure14SenderChainKeyENtB6_5Debug3fmtB10_ }>, align 8
@63 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRINtNtB8_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structure16SenderSigningKeyENtB6_5Debug3fmtB10_ }>, align 8
@64 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structure16SenderMessageKeyENtB6_5Debug3fmtB1a_ }>, align 8
@65 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage23SenderKeyStateStructureENtB6_5Debug3fmtB18_ }>, align 8
@66 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @51, [16 x i8] c"{\00\00\00\00\00\00\00d\00\00\00&\00\00\00" }>, align 8
@67 = private unnamed_addr constant [27 x i8] c"SignedPreKeyRecordStructure", align 1
@68 = private unnamed_addr constant [9 x i8] c"signature", align 1
@69 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRyNtB6_5Debug3fmtCs4tP8yUXWbFU_18libsignal_protocol }>, align 8
@70 = private unnamed_addr constant [9 x i8] c"timestamp", align 1
@71 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @51, [16 x i8] c"{\00\00\00\00\00\00\00z\00\00\00&\00\00\00" }>, align 8

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden { ptr, i64 } @_RINvMNtCsgxBkk5gSRhY_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 6 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %_RNvXso_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4tP8yUXWbFU_18libsignal_protocol.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i
  %i.c = phi i64 [ %i.aq, %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %.sroa.4.0, %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i ], [ %0, %bb.a ] ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.d, align 1, !noalias !39, !noundef !4 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4tP8yUXWbFU_18libsignal_protocol.exit12.i.i.i.i.i

_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4tP8yUXWbFU_18libsignal_protocol.exit12.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.a
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !noalias !39, !noundef !4
  %i.n = shl nuw nsw i32 %i.j, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.g, -33
  br i1 %i.r, label %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4tP8yUXWbFU_18libsignal_protocol.exit14.i.i.i.i.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = zext nneg i8 %i.g to i32
  br label %bb.c

_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4tP8yUXWbFU_18libsignal_protocol.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4tP8yUXWbFU_18libsignal_protocol.exit12.i.i.i.i.i
  %i.t = icmp ne ptr %i.l, %i.a
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.l, align 1, !noalias !39, !noundef !4
  %i.w = shl nuw nsw i32 %i.p, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.j, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.g, -17
  br i1 %i.ac, label %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4tP8yUXWbFU_18libsignal_protocol.exit16.i.i.i.i.i, label %bb.c

_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4tP8yUXWbFU_18libsignal_protocol.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4tP8yUXWbFU_18libsignal_protocol.exit14.i.i.i.i.i
  %i.ad = icmp ne ptr %i.u, %i.a
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.af = load i8, ptr %i.u, align 1, !noalias !39, !noundef !4
  %i.ag = shl nuw nsw i32 %i.j, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4tP8yUXWbFU_18libsignal_protocol.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4tP8yUXWbFU_18libsignal_protocol.exit14.i.i.i.i.i, %bb.b, %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4tP8yUXWbFU_18libsignal_protocol.exit12.i.i.i.i.i
  %.sroa.4.0 = phi ptr [ %i.f, %bb.b ], [ %i.ae, %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4tP8yUXWbFU_18libsignal_protocol.exit16.i.i.i.i.i ], [ %i.u, %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4tP8yUXWbFU_18libsignal_protocol.exit14.i.i.i.i.i ], [ %i.l, %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4tP8yUXWbFU_18libsignal_protocol.exit12.i.i.i.i.i ] ; 6 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.s, %bb.b ], [ %i.am, %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4tP8yUXWbFU_18libsignal_protocol.exit16.i.i.i.i.i ], [ %i.ab, %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4tP8yUXWbFU_18libsignal_protocol.exit14.i.i.i.i.i ], [ %i.q, %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4tP8yUXWbFU_18libsignal_protocol.exit12.i.i.i.i.i ] ; 8 uses
  %i.an = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = ptrtoint ptr %.sroa.4.0 to i64
  %i.ap = sub i64 %i.ao, %i.e
  %i.aq = add i64 %i.ap, %i.c                     ; 4 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %bb.d [
    i32 32, label %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i
    i32 13, label %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i
    i32 12, label %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i
    i32 11, label %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i
    i32 10, label %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i
    i32 9, label %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.ar = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 133
  br i1 %i.ar, label %_RNvXso_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4tP8yUXWbFU_18libsignal_protocol.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = lshr i32 %.sroa.4.0.i.ph.i.i.i.i, 8
  switch i32 %i.as, label %_RNvXso_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4tP8yUXWbFU_18libsignal_protocol.exit [
    i32 0, label %bb.h
    i32 22, label %bb.f
    i32 32, label %bb.i
    i32 48, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.at = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 5760
  %i.au = zext i1 %i.at to i8
  br label %_RNvXs3_NtNtCsgxBkk5gSRhY_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.av = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 12288
  %i.aw = zext i1 %i.av to i8
  br label %_RNvXs3_NtNtCsgxBkk5gSRhY_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.ax = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsgxBkk5gSRhY_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noalias !40, !noundef !4
  br label %_RNvXs3_NtNtCsgxBkk5gSRhY_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i

bb.i:                                             ; preds = %bb.e
  %i.bb = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsgxBkk5gSRhY_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !noalias !40, !noundef !4
  %i.bf = lshr i8 %i.be, 1
  br label %_RNvXs3_NtNtCsgxBkk5gSRhY_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i

_RNvXs3_NtNtCsgxBkk5gSRhY_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.aw, %bb.g ], [ %i.ba, %bb.h ], [ %i.au, %bb.f ], [ %i.bf, %bb.i ]
  %i.bg = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i to i1
  br i1 %i.bg, label %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i, label %_RNvXso_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4tP8yUXWbFU_18libsignal_protocol.exit

_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i: ; preds = %_RNvXs3_NtNtCsgxBkk5gSRhY_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.bh = icmp eq ptr %.sroa.4.0, %i.a
  br i1 %i.bh, label %.loopexit, label %.lr.ph.i.i

_RNvXso_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.e, %_RNvXs3_NtNtCsgxBkk5gSRhY_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i, %bb.d, %bb.a
  %.sroa.4.122 = phi ptr [ %0, %bb.a ], [ %.sroa.4.0, %bb.d ], [ %.sroa.4.0, %_RNvXs3_NtNtCsgxBkk5gSRhY_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i ], [ %.sroa.4.0, %bb.e ] ; 6 uses
  %.sroa.18.020 = phi i64 [ 0, %bb.a ], [ %i.aq, %bb.d ], [ %i.aq, %_RNvXs3_NtNtCsgxBkk5gSRhY_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i ], [ %i.aq, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.c, %bb.d ], [ %i.c, %_RNvXs3_NtNtCsgxBkk5gSRhY_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i ], [ %i.c, %bb.e ] ; 3 uses
  %i.bi = icmp eq ptr %.sroa.4.122, %i.a
  br i1 %i.bi, label %.loopexit, label %.lr.ph.i.i5

.lr.ph.i.i5:                                      ; preds = %_RNvXso_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4tP8yUXWbFU_18libsignal_protocol.exit, %bb.t
  %i.bj = phi ptr [ %i.ct, %bb.t ], [ %i.a, %_RNvXso_NtNtCsgxBkk5gSRhY_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4tP8yUXWbFU_18libsignal_protocol.exit ] ; 5 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -1 ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !41, !noundef !4 ; 3 uses
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %bb.j, label %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4tP8yUXWbFU_18libsignal_protocol.exit17.i.i.i.i.i

_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4tP8yUXWbFU_18libsignal_protocol.exit17.i.i.i.i.i: ; preds = %.lr.ph.i.i5
  %i.bn = icmp ne ptr %.sroa.4.122, %i.bk
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds i8, ptr %i.bj, i64 -2 ; 3 uses
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !41, !noundef !4 ; 3 uses
  %i.bq = and i8 %i.bp, 31
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = icmp slt i8 %i.bp, -64
  br i1 %i.bs, label %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4tP8yUXWbFU_18libsignal_protocol.exit19.i.i.i.i.i, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i5
  %i.bt = zext nneg i8 %i.bl to i32
  br label %bb.m

_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4tP8yUXWbFU_18libsignal_protocol.exit19.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4tP8yUXWbFU_18libsignal_protocol.exit17.i.i.i.i.i
  %i.bu = icmp ne ptr %.sroa.4.122, %i.bo
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = getelementptr inbounds i8, ptr %i.bj, i64 -3 ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !41, !noundef !4 ; 3 uses
  %i.bx = and i8 %i.bw, 15
  %i.by = zext nneg i8 %i.bx to i32
  %i.bz = icmp slt i8 %i.bw, -64
  br i1 %i.bz, label %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4tP8yUXWbFU_18libsignal_protocol.exit21.i.i.i.i.i, label %bb.l

bb.k:                                             ; preds = %bb.l, %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4tP8yUXWbFU_18libsignal_protocol.exit17.i.i.i.i.i
  %i.ca = phi ptr [ %i.co, %bb.l ], [ %i.bo, %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4tP8yUXWbFU_18libsignal_protocol.exit17.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i = phi i32 [ %i.cs, %bb.l ], [ %i.br, %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4tP8yUXWbFU_18libsignal_protocol.exit17.i.i.i.i.i ]
  %i.cb = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i, 6
  %i.cc = and i8 %i.bl, 63
  %i.cd = zext nneg i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.cb, %i.cd
  br label %bb.m

_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4tP8yUXWbFU_18libsignal_protocol.exit21.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4tP8yUXWbFU_18libsignal_protocol.exit19.i.i.i.i.i
  %i.cf = icmp ne ptr %.sroa.4.122, %i.bv
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds i8, ptr %i.bj, i64 -4 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !41, !noundef !4
  %i.ci = and i8 %i.ch, 7
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 6
  %i.cl = and i8 %i.bw, 63
  %i.cm = zext nneg i8 %i.cl to i32
  %i.cn = or disjoint i32 %i.ck, %i.cm
  br label %bb.l

bb.l:                                             ; preds = %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4tP8yUXWbFU_18libsignal_protocol.exit21.i.i.i.i.i, %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4tP8yUXWbFU_18libsignal_protocol.exit19.i.i.i.i.i
  %i.co = phi ptr [ %i.cg, %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4tP8yUXWbFU_18libsignal_protocol.exit21.i.i.i.i.i ], [ %i.bv, %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4tP8yUXWbFU_18libsignal_protocol.exit19.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i = phi i32 [ %i.cn, %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4tP8yUXWbFU_18libsignal_protocol.exit21.i.i.i.i.i ], [ %i.by, %_RNvXs2K_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4tP8yUXWbFU_18libsignal_protocol.exit19.i.i.i.i.i ]
  %i.cp = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i, 6
  %i.cq = and i8 %i.bp, 63
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = or disjoint i32 %i.cp, %i.cr
  br label %bb.k

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ct = phi ptr [ %i.bk, %bb.j ], [ %i.ca, %bb.k ] ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i = phi i32 [ %i.bt, %bb.j ], [ %i.ce, %bb.k ] ; 8 uses
  %i.cu = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 1114112
end_hunk_0
begin_hunk_1_@_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structure16SenderMessageKeyEBJ_:bb.a

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !align !6, !noundef !4 ; 4 uses
  %.val.i = load ptr, ptr %.val, align 8, !nonnull !4, !noundef !4 ; 13 uses
  %i.c = getelementptr i8, ptr %.val, i64 8       ; 3 uses
  %.val1.i = load i64, ptr %i.c, align 8, !noundef !4 ; 14 uses
  %i.d = icmp eq i64 %.val1.i, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 -9223372036854775807, ptr %i.b, align 8
  %i.e = call noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = ptrtoint ptr %i.e to i64
  br label %bb.al

bb.c:                                             ; preds = %bb.a
  %i.g = load i8, ptr %.val.i, align 1, !noundef !4 ; 3 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ugt i64 %.val1.i, 10
  br i1 %i.i, label %.thread, label %bb.ai

_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.c
  %i.j = add i64 %.val1.i, -1
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 1
  store ptr %i.k, ptr %.val, align 8, !alias.scope !80, !captures !7
  store i64 %i.j, ptr %i.c, align 8, !alias.scope !80
  %i.l = zext nneg i8 %i.g to i64
  br label %bb.al

bb.e:                                             ; preds = %bb.ai
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.d
  %i.m = zext i8 %i.g to i32
  %i.n = add nsw i32 %i.m, -128
  %i.o = icmp ne i64 %.val1.i, 1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i, i64 1
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !81, !noalias !82, !noundef !4 ; 2 uses
  %i.r = zext i8 %i.q to i32
  %i.s = shl nuw nsw i32 %i.r, 7
  %i.t = or disjoint i32 %i.s, %i.n               ; 3 uses
  %i.u = icmp sgt i8 %i.q, -1
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.v = icmp samesign ult i32 %i.t, 16384
  br i1 %i.v, label %bb.i, label %bb.h

bb.g:                                             ; preds = %.thread
  %i.w = zext nneg i32 %i.t to i64
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6

bb.h:                                             ; preds = %bb.f
  %i.x = add nsw i32 %i.t, -16384
  %i.y = icmp samesign ugt i64 %.val1.i, 2
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !81, !noalias !82, !noundef !4 ; 2 uses
  %i.ab = zext i8 %i.aa to i32
  %i.ac = shl nuw nsw i32 %i.ab, 14
  %i.ad = or disjoint i32 %i.ac, %i.x             ; 3 uses
  %i.ae = icmp sgt i8 %i.aa, -1
  br i1 %i.ae, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #18, !noalias !83
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.af = icmp samesign ult i32 %i.ad, 2097152
  br i1 %i.af, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.ag = zext nneg i32 %i.ad to i64
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6

bb.l:                                             ; preds = %bb.j
  %i.ah = add nsw i32 %i.ad, -2097152
  %i.ai = icmp samesign ugt i64 %.val1.i, 3
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i, i64 3
  %i.ak = load i8, ptr %i.aj, align 1, !alias.scope !81, !noalias !82, !noundef !4 ; 2 uses
  %i.al = zext i8 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 21
  %i.an = add nuw nsw i32 %i.ah, %i.am            ; 3 uses
  %i.ao = icmp sgt i8 %i.ak, -1
  br i1 %i.ao, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.j
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #18, !noalias !83
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ap = icmp samesign ult i32 %i.an, 268435456
  br i1 %i.ap, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.aq = zext nneg i32 %i.an to i64
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6

bb.p:                                             ; preds = %bb.n
  %i.ar = add nsw i32 %i.an, -268435456
  %i.as = zext nneg i32 %i.ar to i64              ; 5 uses
  %i.at = icmp samesign ugt i64 %.val1.i, 4
  tail call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i, i64 4
  %i.av = load i8, ptr %i.au, align 1, !alias.scope !81, !noalias !82, !noundef !4 ; 3 uses
  %i.aw = icmp sgt i8 %i.av, -1
  br i1 %i.aw, label %bb.ah, label %bb.r

bb.q:                                             ; preds = %bb.n
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #18, !noalias !83
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ax = zext i8 %i.av to i32
  %i.ay = add nsw i32 %i.ax, -128
  %i.az = icmp samesign ugt i64 %.val1.i, 5
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds nuw i8, ptr %.val.i, i64 5
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !81, !noalias !82, !noundef !4 ; 2 uses
  %i.bc = zext i8 %i.bb to i32
  %i.bd = shl nuw nsw i32 %i.bc, 7
  %i.be = or disjoint i32 %i.bd, %i.ay            ; 3 uses
  %i.bf = icmp sgt i8 %i.bb, -1
  br i1 %i.bf, label %bb.ag, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = icmp samesign ult i32 %i.be, 16384
  br i1 %i.bg, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = add nsw i32 %i.be, -16384
  %i.bi = icmp samesign ugt i64 %.val1.i, 6
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.i, i64 6
  %i.bk = load i8, ptr %i.bj, align 1, !alias.scope !81, !noalias !82, !noundef !4 ; 2 uses
  %i.bl = zext i8 %i.bk to i32
  %i.bm = shl nuw nsw i32 %i.bl, 14
  %i.bn = or disjoint i32 %i.bm, %i.bh            ; 3 uses
  %i.bo = icmp sgt i8 %i.bk, -1
  br i1 %i.bo, label %bb.af, label %bb.v

bb.u:                                             ; preds = %bb.s
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #18, !noalias !83
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bp = icmp samesign ult i32 %i.bn, 2097152
  br i1 %i.bp, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = add nsw i32 %i.bn, -2097152
  %i.br = icmp samesign ugt i64 %.val1.i, 7
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = getelementptr inbounds nuw i8, ptr %.val.i, i64 7
  %i.bt = load i8, ptr %i.bs, align 1, !alias.scope !81, !noalias !82, !noundef !4 ; 2 uses
  %i.bu = zext i8 %i.bt to i32
  %i.bv = shl nuw nsw i32 %i.bu, 21
  %i.bw = add nuw nsw i32 %i.bq, %i.bv            ; 3 uses
  %i.bx = icmp sgt i8 %i.bt, -1
  br i1 %i.bx, label %bb.ae, label %bb.y

bb.x:                                             ; preds = %bb.v
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #18, !noalias !83
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.by = icmp samesign ult i32 %i.bw, 268435456
  br i1 %i.by, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bz = add nsw i32 %i.bw, -268435456
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = shl nuw nsw i64 %i.ca, 28
  %i.cc = add nuw nsw i64 %i.cb, %i.as            ; 3 uses
  %i.cd = icmp samesign ugt i64 %.val1.i, 8
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.cf = load i8, ptr %i.ce, align 1, !alias.scope !81, !noalias !82, !noundef !4 ; 3 uses
  %i.cg = icmp sgt i8 %i.cf, -1
  br i1 %i.cg, label %bb.ad, label %bb.ab

bb.aa:                                            ; preds = %bb.y
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #18, !noalias !83
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.ch = icmp samesign ugt i64 %.val1.i, 9
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %.val.i, i64 9
  %i.cj = load i8, ptr %i.ci, align 1, !alias.scope !81, !noalias !82, !noundef !4 ; 2 uses
  %i.ck = icmp ult i8 %i.cj, 2
  br i1 %i.ck, label %bb.ac, label %bb.ak

bb.ac:                                            ; preds = %bb.ab
  %i.cl = zext nneg i8 %i.cj to i64
  %i.cm = and i8 %i.cf, 127
  %i.cn = zext nneg i8 %i.cm to i64
  %1 = shl nuw i64 %i.cl, 63
  %i.co = shl nuw nsw i64 %i.cn, 56
  %i.cp = add nuw nsw i64 %i.co, %i.cc
  %i.cq = or disjoint i64 %1, %i.cp               ; 2 uses
  %2 = icmp ult i64 %i.cq, %i.cc
  br i1 %2, label %3, label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6

3:                                                ; preds = %bb.ac
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #18, !noalias !83
  unreachable

bb.ad:                                            ; preds = %bb.z
  %i.cr = zext nneg i8 %i.cf to i64
  %i.cs = shl nuw nsw i64 %i.cr, 56
  %i.ct = add nuw nsw i64 %i.cs, %i.cc
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6

bb.ae:                                            ; preds = %bb.w
  %i.cu = zext nneg i32 %i.bw to i64
  %i.cv = shl nuw nsw i64 %i.cu, 28
  %i.cw = add nuw nsw i64 %i.cv, %i.as
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6

bb.af:                                            ; preds = %bb.t
  %i.cx = zext nneg i32 %i.bn to i64
  %i.cy = shl nuw nsw i64 %i.cx, 28
  %i.cz = add nuw nsw i64 %i.cy, %i.as
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6

bb.ag:                                            ; preds = %bb.r
  %i.da = zext nneg i32 %i.be to i64
  %i.db = shl nuw nsw i64 %i.da, 28
  %i.dc = add nuw nsw i64 %i.db, %i.as
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6

bb.ah:                                            ; preds = %bb.p
  %i.dd = zext nneg i8 %i.av to i64
  %i.de = shl nuw nsw i64 %i.dd, 28
  %i.df = add nuw nsw i64 %i.de, %i.as
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6

bb.ai:                                            ; preds = %bb.d
  %i.dg = getelementptr i8, ptr %.val.i, i64 %.val1.i
  %i.dh = getelementptr i8, ptr %i.dg, i64 -1
  %i.di = load i8, ptr %i.dh, align 1, !noundef !4
  %i.dj = icmp sgt i8 %i.di, -1
  br i1 %i.dj, label %bb.e, label %bb.aj, !prof !8

bb.aj:                                            ; preds = %bb.ai
  %i.dk = tail call { i64, ptr } @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint18decode_varint_slowQRShECs1YsMTEqGlh_4spqr(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #19 ; 2 uses
  %i.dl = extractvalue { i64, ptr } %i.dk, 0
  %i.dm = extractvalue { i64, ptr } %i.dk, 1
  %i.dn = ptrtoint ptr %i.dm to i64
  br label %bb.al

bb.ak:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !83
  store i64 -9223372036854775807, ptr %i.a, align 8, !noalias !83
  %i.do = call noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a), !noalias !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !83
  %i.dp = ptrtoint ptr %i.do to i64
  br label %bb.al

_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6: ; preds = %bb.ac, %bb.af, %bb.ag, %bb.ah, %bb.ad, %bb.ae, %bb.o, %bb.k, %bb.g
  %.sroa.18.0.ph = phi i64 [ 10, %bb.ac ], [ 9, %bb.ad ], [ 8, %bb.ae ], [ 7, %bb.af ], [ 6, %bb.ag ], [ 5, %bb.ah ], [ 4, %bb.o ], [ 3, %bb.k ], [ 2, %bb.g ] ; 2 uses
  %.sroa.5.0.ph = phi i64 [ %i.cq, %bb.ac ], [ %i.ct, %bb.ad ], [ %i.cw, %bb.ae ], [ %i.cz, %bb.af ], [ %i.dc, %bb.ag ], [ %i.df, %bb.ah ], [ %i.aq, %bb.o ], [ %i.ag, %bb.k ], [ %i.w, %bb.g ]
  %i.dq = sub nuw i64 %.val1.i, %.sroa.18.0.ph
  %i.dr = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.18.0.ph
  store ptr %i.dr, ptr %.val, align 8, !alias.scope !84, !captures !7
  store i64 %i.dq, ptr %i.c, align 8, !alias.scope !84
  br label %bb.al

bb.al:                                            ; preds = %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6, %bb.aj, %bb.b, %bb.ak
  %.sroa.6.0 = phi i64 [ %i.f, %bb.b ], [ %i.l, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit ], [ %i.dp, %bb.ak ], [ %.sroa.5.0.ph, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6 ], [ %i.dn, %bb.aj ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit ], [ 1, %bb.ak ], [ 0, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6 ], [ %i.dl, %bb.aj ]
  %i.ds = inttoptr i64 %.sroa.6.0 to ptr
  %i.dt = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.du = insertvalue { i64, ptr } %i.dt, ptr %i.ds, 1
  ret { i64, ptr } %i.du
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB6_16SessionStructureNtNtCs43OB2dM8s8d_5prost7message7Message10encode_rawINtNtCs6i54tJFfzR_5alloc3vec3VechEEBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(344) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !noundef !4
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6uint326encodeINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(i32 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes6encodeINtNtCs6i54tJFfzR_5alloc3vec3VechEBM_ECs4tP8yUXWbFU_18libsignal_protocol(i32 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !noundef !4
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes6encodeINtNtCs6i54tJFfzR_5alloc3vec3VechEBM_ECs4tP8yUXWbFU_18libsignal_protocol(i32 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes6encodeINtNtCs6i54tJFfzR_5alloc3vec3VechEBM_ECs4tP8yUXWbFU_18libsignal_protocol(i32 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !noundef !4
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6uint326encodeINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(i32 noundef 5, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !range !5, !noundef !4
  %.not = icmp eq i64 %i.s, -1
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding7message6encodeNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainINtNtCs6i54tJFfzR_5alloc3vec3VechEEBW_(i32 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.w = load i64, ptr %i.v, align 8, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.w, 104
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx
  %i.y = icmp eq i64 %i.w, 0
  br i1 %i.y, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m, %.lr.ph
  %.sroa.0.08 = phi ptr [ %i.z, %.lr.ph ], [ %i.u, %bb.m ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.08, i64 104 ; 2 uses
  tail call void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding7message6encodeNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainINtNtCs6i54tJFfzR_5alloc3vec3VechEEBW_(i32 noundef 7, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %.sroa.0.08, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  %i.aa = icmp eq ptr %i.z, %i.x
  br i1 %i.aa, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !range !5, !noundef !4
  %.not6 = icmp eq i64 %i.ac, -1
  br i1 %.not6, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  tail call void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding7message6encodeNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure13PendingPreKeyINtNtCs6i54tJFfzR_5alloc3vec3VechEEBW_(i32 noundef 9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !noundef !4
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6uint326encodeINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(i32 noundef 10, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 340 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !noundef !4
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6uint326encodeINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(i32 noundef 11, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ag, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !4
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes6encodeINtNtCs6i54tJFfzR_5alloc3vec3VechEBM_ECs4tP8yUXWbFU_18libsignal_protocol(i32 noundef 13, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !range !5, !noundef !4
  %.not7 = icmp eq i64 %i.ao, -1
  br i1 %.not7, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding7message6encodeNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure18PendingKyberPreKeyINtNtCs6i54tJFfzR_5alloc3vec3VechEEBW_(i32 noundef 14, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.an, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !4
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes6encodeINtNtCs6i54tJFfzR_5alloc3vec3VechEBM_ECs4tP8yUXWbFU_18libsignal_protocol(i32 noundef 15, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB6_16SessionStructureNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_(ptr noalias nofree noundef align 8 dereferenceable(344) %0, i32 noundef %1, i8 noundef range(i8 0, 6) %2, ptr noalias nofree noundef align 8 dereferenceable(8) %3, i32 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 6 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  switch i32 %1, label %bb.b [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.j
    i32 9, label %bb.k
    i32 10, label %bb.m
    i32 11, label %bb.n
    i32 13, label %bb.o
    i32 14, label %bb.p
    i32 15, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noundef align 8 ptr @_RINvNtCs43OB2dM8s8d_5prost8encoding10skip_fieldQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef %2, i32 noundef %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4)
  br label %bb.v

end_hunk_1
begin_hunk_2_@_RINvYNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage24SenderKeyRecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message6decodeRShEB9_:bb.a
.noexc:                                           ; preds = %bb.b
  br i1 %i.j, label %bb.c, label %bb.r

bb.c:                                             ; preds = %.noexc
  %i.k = invoke fastcc { i64, ptr } @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #20
          to label %.noexc5 unwind label %.body.thread22.loopexit ; 2 uses

.noexc5:                                          ; preds = %bb.c
  %i.l = extractvalue { i64, ptr } %i.k, 0
  %i.m = extractvalue { i64, ptr } %i.k, 1        ; 3 uses
  %i.n = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.o = trunc nuw i64 %i.l to i1
  br i1 %i.o, label %.loopexit13.i, label %bb.d

bb.d:                                             ; preds = %.noexc5
  %i.p = icmp ugt ptr %i.m, inttoptr (i64 4294967295 to ptr)
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = and i64 %i.n, 7                          ; 3 uses
  %switch.i = icmp samesign ult i64 %i.q, 6
  br i1 %switch.i, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !319
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.n, ptr %i.r, align 8, !noalias !319
  store i64 -9223372036854775804, ptr %i.d, align 8, !noalias !319
  %i.s = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.d)
          to label %.noexc6 unwind label %.body.thread22.loopexit.split-lp

.noexc6:                                          ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !319
  br label %.loopexit13.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !319
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.q, ptr %i.t, align 8, !noalias !319
  store i64 -9223372036854775805, ptr %i.b, align 8, !noalias !319
  %i.u = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b)
          to label %.noexc7 unwind label %.body.thread22.loopexit.split-lp

.noexc7:                                          ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !319
  br label %.loopexit13.i

bb.h:                                             ; preds = %bb.e
  %i.v = trunc nuw i64 %i.n to i32
  %i.w = lshr i32 %i.v, 3                         ; 3 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !319
  store i64 -9223372036854775803, ptr %i.c, align 8, !noalias !319
  %i.y = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.c)
          to label %.noexc8 unwind label %.body.thread22.loopexit.split-lp

.noexc8:                                          ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !319
  br label %.loopexit13.i

.loopexit13.i:                                    ; preds = %.noexc5, %.noexc8, %.noexc7, %.noexc6
  %.sroa.11.0.ph.i = phi ptr [ %i.s, %.noexc6 ], [ %i.y, %.noexc8 ], [ %i.u, %.noexc7 ], [ %i.m, %.noexc5 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.ph.i) ]
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %.sroa.11.8.extract.trunc.i = trunc nuw nsw i64 %i.q to i8 ; 2 uses
  %i.z = icmp eq i32 %i.w, 1
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aa = invoke noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding7message14merge_repeatedNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage23SenderKeyStateStructureQRShEB13_(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef 100)
          to label %.noexc9 unwind label %.body.thread22.loopexit ; 2 uses

.noexc9:                                          ; preds = %bb.k
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %_RINvXsH_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB6_24SenderKeyRecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_.exit.i, label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ab = invoke noundef align 8 ptr @_RINvNtCs43OB2dM8s8d_5prost8encoding10skip_fieldQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i, i32 noundef %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef 100)
          to label %_RINvXsH_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB6_24SenderKeyRecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_.exit.i unwind label %.body.thread22.loopexit

bb.m:                                             ; preds = %.noexc9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !320
  store ptr %i.aa, ptr %i.a, align 8, !noalias !321
  invoke void @_RNvMNtCs43OB2dM8s8d_5prost5errorNtB2_11DecodeError4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 24, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 17)
          to label %_RINvXsH_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB6_24SenderKeyRecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_.exit.thread.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %.val.i.i.i = load ptr, ptr %i.a, align 8, !noalias !321, !nonnull !4, !noundef !4
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error11DecodeErrorECs4tP8yUXWbFU_18libsignal_protocol(ptr nonnull %.val.i.i.i) #16
          to label %.body.thread unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvXsH_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB6_24SenderKeyRecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_.exit.thread.i: ; preds = %bb.m
  %i.ae = load ptr, ptr %i.a, align 8, !noalias !321, !nonnull !4, !align !6, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !320
  br label %.loopexit

_RINvXsH_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB6_24SenderKeyRecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_.exit.i: ; preds = %bb.l, %.noexc9
  %.sroa.0.1.i.i = phi ptr [ null, %.noexc9 ], [ %i.ab, %bb.l ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.1.i.i, null
  br i1 %.not.i, label %bb.b, label %.loopexit

.body.thread19:                                   ; preds = %bb.p, %.body.thread
  %eh.lpad-body17 = phi { ptr, i32 } [ %eh.lpad-body18, %.body.thread ], [ %i.ag, %bb.p ]
  resume { ptr, i32 } %eh.lpad-body17

.body.thread22.loopexit:                          ; preds = %bb.k, %bb.c, %bb.b, %bb.l
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread22.loopexit.split-lp:                 ; preds = %bb.i, %bb.g, %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.loopexit:                                        ; preds = %_RINvXsH_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB6_24SenderKeyRecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_.exit.i, %.loopexit13.i, %_RINvXsH_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB6_24SenderKeyRecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_.exit.thread.i
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.11.0.ph.i, %.loopexit13.i ], [ %i.ae, %_RINvXsH_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB6_24SenderKeyRecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_.exit.thread.i ], [ %.sroa.0.1.i.i, %_RINvXsH_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB6_24SenderKeyRecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.ph, ptr %i.af, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage23SenderKeyStateStructureENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage24SenderKeyRecordStructureEBH_.exit.i unwind label %bb.p

bb.p:                                             ; preds = %.loopexit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage23SenderKeyStateStructureENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.thread19 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage24SenderKeyRecordStructureEBH_.exit.i: ; preds = %.loopexit
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage23SenderKeyStateStructureENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCINvYNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage24SenderKeyRecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message6decodeRShE0EBN_.exit

bb.r:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCINvYNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage24SenderKeyRecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message6decodeRShE0EBN_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCINvYNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage24SenderKeyRecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message6decodeRShE0EBN_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage24SenderKeyRecordStructureEBH_.exit.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

.body.thread:                                     ; preds = %.body.thread22.loopexit, %.body.thread22.loopexit.split-lp, %bb.n
  %eh.lpad-body18 = phi { ptr, i32 } [ %i.ac, %bb.n ], [ %lpad.loopexit, %.body.thread22.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread22.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage24SenderKeyRecordStructureEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #16
          to label %.body.thread19 unwind label %bb.s

bb.s:                                             ; preds = %.body.thread
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #15
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXs9_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB8_15RecordStructureNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmtNtB2_13ScalarWrapperB1k_3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.g, 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.j, %.lr.ph ], [ %i.e, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.02, ptr %i.a, align 8, !captures !7
  %i.k = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @44) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = icmp eq ptr %i.j, %i.h
  br i1 %i.l, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.m = call noundef zeroext i1 @_RNvMs5_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCs9k3SxhrAWiO_3std4sync9lazy_lockINtB5_8LazyLockINtNtNtNtB9_11collections4hash3map7HashMapmTNtNtCsbwPL7qM37dJ_14libsignal_core5curve9PublicKeyNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender17ServerCertificateEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropB2v_(ptr noalias nofree noundef align 8 dereferenceable(56) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !noundef !4
  switch i32 %i.b, label %bb.b [
    i32 3, label %bb.d
    i32 2, label %bb.d
    i32 0, label %bb.c
  ], !prof !322

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull @45, ptr noundef nonnull inttoptr (i64 121 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTmTNtNtCsbwPL7qM37dJ_14libsignal_core5curve9PublicKeyNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender17ServerCertificateEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropB1J_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 1, 9) i32 @_RNvXs1_NtCs4tP8yUXWbFU_18libsignal_protocol13sealed_senderNtNtNtNtNtB7_5proto13sealed_sender27unidentified_sender_message7message4TypeINtNtCsgxBkk5gSRhY_4core7convert4FromNtNtB7_8protocol21CiphertextMessageTypeE4from(i8 noundef range(i8 2, 9) %0) unnamed_addr #1 {
bb.a:
  switch i8 %0, label %bb.b [
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 7, label %bb.c
    i8 8, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.sroa.0.0 = phi i32 [ 8, %bb.d ], [ 7, %bb.c ], [ 2, %bb.a ] ; 2 uses
  %i.a = zext nneg i8 %0 to i32
  %i.b = icmp eq i32 %.sroa.0.0, %i.a
  br i1 %i.b, label %bb.f, label %bb.g, !prof !8

bb.f:                                             ; preds = %bb.a, %bb.e
  %.sroa.0.1 = phi i32 [ %.sroa.0.0, %bb.e ], [ 1, %bb.a ]
  ret i32 %.sroa.0.1

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 87, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #18
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i64 @_RNvXs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB5_16SessionStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(344) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = or i32 %i.b, 1
  %i.e = zext i32 %i.d to i64
  %i.f = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = xor i64 %i.f, 63
  %i.h = mul nuw nsw i64 %i.g, 9
  %i.i = add nuw nsw i64 %i.h, 73
  %i.j = lshr i64 %i.i, 6
  %i.k = add nuw nsw i64 %i.j, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !4 ; 4 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = or i64 %i.m, 1
  %i.p = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.q = xor i64 %i.p, 63
  %i.r = mul nuw nsw i64 %i.q, 9
  %i.s = add nuw nsw i64 %i.r, 73
  %i.t = lshr i64 %i.s, 6
  %i.u = icmp sgt i64 %i.m, -1
  tail call void @llvm.assume(i1 %i.u)
  %i.v = add nuw i64 %i.m, 1
  %i.w = add nuw i64 %i.v, %i.t
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.01.0 = phi i64 [ %i.w, %bb.d ], [ 0, %bb.c ]
  %i.x = add nuw i64 %.sroa.01.0, %.sroa.0.0      ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load i64, ptr %i.y, align 8, !noundef !4 ; 4 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = or i64 %i.z, 1
  %i.ac = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ab, i1 true)
  %i.ad = xor i64 %i.ac, 63
  %i.ae = mul nuw nsw i64 %i.ad, 9
  %i.af = add nuw nsw i64 %i.ae, 73
  %i.ag = lshr i64 %i.af, 6
  %i.ah = icmp sgt i64 %i.z, -1
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = add nuw i64 %i.z, 1
  %i.aj = add nuw i64 %i.ai, %i.ag
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.02.0 = phi i64 [ %i.aj, %bb.f ], [ 0, %bb.e ]
  %i.ak = add i64 %.sroa.02.0, %i.x               ; 3 uses
  %i.al = icmp ult i64 %i.ak, %i.x
  br i1 %i.al, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.an = load i64, ptr %i.am, align 8, !noundef !4 ; 4 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #18
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ap = or i64 %i.an, 1
  %i.aq = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ap, i1 true)
  %i.ar = xor i64 %i.aq, 63
  %i.as = mul nuw nsw i64 %i.ar, 9
  %i.at = add nuw nsw i64 %i.as, 73
  %i.au = lshr i64 %i.at, 6
  %i.av = icmp sgt i64 %i.an, -1
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = add nuw i64 %i.an, 1
  %i.ax = add nuw i64 %i.aw, %i.au
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j
  %.sroa.03.0 = phi i64 [ %i.ax, %bb.j ], [ 0, %bb.h ]
  %i.ay = add i64 %.sroa.03.0, %i.ak              ; 3 uses
  %i.az = icmp ult i64 %i.ay, %i.ak
  br i1 %i.az, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.bb = load i32, ptr %i.ba, align 4, !noundef !4 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #18
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bd = or i32 %i.bb, 1
  %i.be = zext i32 %i.bd to i64
  %i.bf = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.be, i1 true)
  %i.bg = xor i64 %i.bf, 63
  %i.bh = mul nuw nsw i64 %i.bg, 9
  %i.bi = add nuw nsw i64 %i.bh, 73
  %i.bj = lshr i64 %i.bi, 6
  %i.bk = add nuw nsw i64 %i.bj, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.n
  %.sroa.04.0 = phi i64 [ %i.bk, %bb.n ], [ 0, %bb.l ]
  %i.bl = add i64 %.sroa.04.0, %i.ay              ; 3 uses
  %i.bm = icmp ult i64 %i.bl, %i.ay
  br i1 %i.bm, label %bb.ag, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bo = load i64, ptr %i.bn, align 8, !range !5, !noundef !4
  %.not = icmp eq i64 %i.bo, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  br i1 %.not, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainE6map_orjNCNvXs1_BN_NtBN_16SessionStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0EBR_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !349, !noundef !4 ; 4 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = or i64 %i.bq, 1
  %i.bt = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bs, i1 true)
  %i.bu = xor i64 %i.bt, 63
  %i.bv = mul nuw nsw i64 %i.bu, 9
  %i.bw = add nuw nsw i64 %i.bv, 73
  %i.bx = lshr i64 %i.bw, 6
  %i.by = icmp sgt i64 %i.bq, -1
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = add nuw i64 %i.bq, 1
  %i.ca = add nuw i64 %i.bz, %i.bx
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.ca, %bb.r ], [ 0, %bb.q ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !349, !noundef !4 ; 4 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ce = or i64 %i.cc, 1
  %i.cf = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.cg = xor i64 %i.cf, 63
  %i.ch = mul nuw nsw i64 %i.cg, 9
  %i.ci = add nuw nsw i64 %i.ch, 73
  %i.cj = lshr i64 %i.ci, 6
  %i.ck = icmp sgt i64 %i.cc, -1
  tail call void @llvm.assume(i1 %i.ck)
  %i.cl = add nuw i64 %i.cc, 1
  %i.cm = add nuw i64 %i.cl, %i.cj
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.cm, %bb.t ], [ 0, %bb.s ]
  %i.cn = add i64 %.sroa.01.0.i.i.i.i, %.sroa.0.0.i.i.i.i ; 3 uses
  %i.co = icmp ult i64 %i.cn, %.sroa.0.0.i.i.i.i
  br i1 %i.co, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.cq = load i64, ptr %i.cp, align 8, !range !5, !alias.scope !349, !noundef !4
  %.not.i.i.i.i = icmp eq i64 %i.cq, -1
  br i1 %.not.i.i.i.i, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain8ChainKeyE6map_orjNCNvXs1_BN_NtBN_5ChainNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0EBT_.exit.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.val.i.i.i.i.i = load i64, ptr %i.cr, align 8, !alias.scope !350 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val5.i.i.i.i.i = load i32, ptr %i.cs, align 8, !alias.scope !350, !noundef !4 ; 2 uses
  %i.ct = icmp eq i32 %.val5.i.i.i.i.i, 0
  br i1 %i.ct, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cu = or i32 %.val5.i.i.i.i.i, 1
  %i.cv = zext i32 %i.cu to i64
  %i.cw = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cv, i1 true)
  %i.cx = xor i64 %i.cw, 63
  %i.cy = mul nuw nsw i64 %i.cx, 9
  %i.cz = add nuw nsw i64 %i.cy, 73
  %i.da = lshr i64 %i.cz, 6
  %i.db = add nuw nsw i64 %i.da, 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i64 [ %i.db, %bb.x ], [ 0, %bb.w ]
  %i.dc = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.dc, label %_RNCNvXs1_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structureNtB7_5ChainNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0Bd_.exit.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dd = or i64 %.val.i.i.i.i.i, 1
  %i.de = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dd, i1 true)
  %i.df = xor i64 %i.de, 63
  %i.dg = mul nuw nsw i64 %i.df, 9
  %i.dh = add nuw nsw i64 %i.dg, 73
  %i.di = lshr i64 %i.dh, 6
  %i.dj = icmp sgt i64 %.val.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.dj)
  %i.dk = add nuw i64 %.val.i.i.i.i.i, 1
  %i.dl = add nuw i64 %i.dk, %i.di
  br label %_RNCNvXs1_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structureNtB7_5ChainNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0Bd_.exit.i.i.i.i.i

_RNCNvXs1_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structureNtB7_5ChainNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0Bd_.exit.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.sroa.01.0.i.i.i.i.i.i.i.i = phi i64 [ %i.dl, %bb.z ], [ 0, %bb.y ]
  %i.dm = add nuw i64 %.sroa.01.0.i.i.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.dn = or i64 %i.dm, 1
  %i.do = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dn, i1 true)
  %i.dp = xor i64 %i.do, 63
  %i.dq = mul nuw nsw i64 %i.dp, 9
  %i.dr = add nuw nsw i64 %i.dq, 73
  %i.ds = lshr i64 %i.dr, 6
  %i.dt = add nuw i64 %i.dm, 1
  %i.du = add nuw i64 %i.dt, %i.ds
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain8ChainKeyE6map_orjNCNvXs1_BN_NtBN_5ChainNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0EBT_.exit.i.i.i.i

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain8ChainKeyE6map_orjNCNvXs1_BN_NtBN_5ChainNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0EBT_.exit.i.i.i.i: ; preds = %_RNCNvXs1_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structureNtB7_5ChainNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0Bd_.exit.i.i.i.i.i, %bb.v
  %.sroa.02.0.i.i.i.i.i = phi i64 [ %i.du, %_RNCNvXs1_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structureNtB7_5ChainNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0Bd_.exit.i.i.i.i.i ], [ 0, %bb.v ]
  %i.dv = add i64 %.sroa.02.0.i.i.i.i.i, %i.cn    ; 3 uses
  %i.dw = icmp ult i64 %i.dv, %i.cn
  br i1 %i.dw, label %bb.ad, label %bb.ab

bb.aa:                                            ; preds = %bb.u
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #18, !noalias !349
  unreachable

bb.ab:                                            ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain8ChainKeyE6map_orjNCNvXs1_BN_NtBN_5ChainNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0EBT_.exit.i.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.dy = load ptr, ptr %i.dx, align 8, !alias.scope !349, !nonnull !4, !noundef !4 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ea = load i64, ptr %i.dz, align 8, !alias.scope !349, !noundef !4 ; 3 uses
  %i.eb = getelementptr inbounds nuw [104 x i8], ptr %i.dy, i64 %i.ea
  %i.ec = tail call noundef i64 @_RINvXs0_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain10MessageKeyENvYB1n_NtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lenENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldjjjNCINvNtNtB36_8encoding7message20encoded_len_repeatedB1n_E0NCINvXsK_NtB3Y_5accumjNtB5X_3Sum3sumIBO_BN_B4S_EE0E0EB1x_(ptr noundef nonnull readonly align 8 %i.dy, ptr noundef nonnull readonly %i.eb, i64 noundef 0), !noalias !349
  %i.ed = add i64 %i.ec, %i.ea                    ; 2 uses
  %i.ee = icmp ult i64 %i.ed, %i.ea
  br i1 %i.ee, label %bb.ac, label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding7message20encoded_len_repeatedNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain10MessageKeyEB1d_.exit.i.i.i.i

bb.ac:                                            ; preds = %bb.ab
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #18, !noalias !349
  unreachable

_RINvNtNtCs43OB2dM8s8d_5prost8encoding7message20encoded_len_repeatedNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain10MessageKeyEB1d_.exit.i.i.i.i: ; preds = %bb.ab
  %i.ef = add i64 %i.ed, %i.dv                    ; 3 uses
  %i.eg = icmp ult i64 %i.ef, %i.dv
  br i1 %i.eg, label %bb.ae, label %_RNvXs1_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structureNtB5_5ChainNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len.exit.i.i.i

bb.ad:                                            ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain8ChainKeyE6map_orjNCNvXs1_BN_NtBN_5ChainNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0EBT_.exit.i.i.i.i
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #18, !noalias !349
  unreachable

bb.ae:                                            ; preds = %_RINvNtNtCs43OB2dM8s8d_5prost8encoding7message20encoded_len_repeatedNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain10MessageKeyEB1d_.exit.i.i.i.i
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #18, !noalias !349
  unreachable

_RNvXs1_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structureNtB5_5ChainNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len.exit.i.i.i: ; preds = %_RINvNtNtCs43OB2dM8s8d_5prost8encoding7message20encoded_len_repeatedNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain10MessageKeyEB1d_.exit.i.i.i.i
  %i.eh = or i64 %i.ef, 1
  %i.ei = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.eh, i1 true)
  %i.ej = xor i64 %i.ei, 63
  %i.ek = mul nuw nsw i64 %i.ej, 9
  %i.el = add nuw nsw i64 %i.ek, 73
  %i.em = lshr i64 %i.el, 6                       ; 2 uses
  %i.en = add i64 %i.ef, 1
  %i.eo = add i64 %i.en, %i.em                    ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.eo, %i.em
  br i1 %.not.i.i.i, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainE6map_orjNCNvXs1_BN_NtBN_16SessionStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0EBR_.exit, label %bb.af

bb.af:                                            ; preds = %_RNvXs1_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structureNtB5_5ChainNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len.exit.i.i.i
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #18, !noalias !351
  unreachable

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainE6map_orjNCNvXs1_BN_NtBN_16SessionStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0EBR_.exit: ; preds = %bb.p, %_RNvXs1_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structureNtB5_5ChainNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len.exit.i.i.i
  %.sroa.02.0.i = phi i64 [ 0, %bb.p ], [ %i.eo, %_RNvXs1_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structureNtB5_5ChainNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len.exit.i.i.i ]
  %i.ep = add i64 %.sroa.02.0.i, %i.bl            ; 3 uses
  %i.eq = icmp ult i64 %i.ep, %i.bl
  br i1 %i.eq, label %bb.aj, label %bb.ah

bb.ag:                                            ; preds = %bb.o
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #18
  unreachable

bb.ah:                                            ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainE6map_orjNCNvXs1_BN_NtBN_16SessionStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0EBR_.exit
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.es = load ptr, ptr %i.er, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.eu = load i64, ptr %i.et, align 8, !noundef !4 ; 3 uses
  %i.ev = getelementptr inbounds nuw [104 x i8], ptr %i.es, i64 %i.eu
  %i.ew = tail call noundef i64 @_RINvXs0_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainENvYB1n_NtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lenENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldjjjNCINvNtNtB2S_8encoding7message20encoded_len_repeatedB1n_E0NCINvXsK_NtB3K_5accumjNtB5J_3Sum3sumIBO_BN_B4E_EE0E0EB1v_(ptr noundef nonnull readonly align 8 %i.es, ptr noundef nonnull readonly %i.ev, i64 noundef 0)
  %i.ex = add i64 %i.ew, %i.eu                    ; 2 uses
  %i.ey = icmp ult i64 %i.ex, %i.eu
  br i1 %i.ey, label %bb.ai, label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding7message20encoded_len_repeatedNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainEB1b_.exit

bb.ai:                                            ; preds = %bb.ah
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #18
  unreachable

_RINvNtNtCs43OB2dM8s8d_5prost8encoding7message20encoded_len_repeatedNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainEB1b_.exit: ; preds = %bb.ah
  %i.ez = add i64 %i.ex, %i.ep                    ; 3 uses
  %i.fa = icmp ult i64 %i.ez, %i.ep
  br i1 %i.fa, label %bb.as, label %bb.ak

bb.aj:                                            ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainE6map_orjNCNvXs1_BN_NtBN_16SessionStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0EBR_.exit
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #18
  unreachable

bb.ak:                                            ; preds = %_RINvNtNtCs43OB2dM8s8d_5prost8encoding7message20encoded_len_repeatedNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainEB1b_.exit
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.fc = load i64, ptr %i.fb, align 8, !range !5, !noundef !4
  %.not28 = icmp eq i64 %i.fc, -1
  br i1 %.not28, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure13PendingPreKeyE6map_orjNCNvXs1_BN_NtBN_16SessionStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens_0EBR_.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.fe = load i32, ptr %i.fd, align 8, !range !9, !alias.scope !352, !noundef !4
  %i.ff = trunc nuw i32 %i.fe to i1
  br i1 %i.ff, label %bb.am, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRmE6map_orjNCNvXs9_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structureNtB11_13PendingPreKeyNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0EB17_.exit.i.i.i.i

bb.am:                                            ; preds = %bb.al
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 276
  %.val.i.i.i.i.i43 = load i32, ptr %i.fg, align 4, !alias.scope !353, !noundef !4
  %i.fh = or i32 %.val.i.i.i.i.i43, 1
  %i.fi = zext i32 %i.fh to i64
  %i.fj = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.fi, i1 true)
  %i.fk = xor i64 %i.fj, 63
  %i.fl = mul nuw nsw i64 %i.fk, 9
  %i.fm = add nuw nsw i64 %i.fl, 73
  %i.fn = lshr i64 %i.fm, 6
  %i.fo = add nuw nsw i64 %i.fn, 1
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRmE6map_orjNCNvXs9_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structureNtB11_13PendingPreKeyNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0EB17_.exit.i.i.i.i

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRmE6map_orjNCNvXs9_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structureNtB11_13PendingPreKeyNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0EB17_.exit.i.i.i.i: ; preds = %bb.am, %bb.al
  %.sroa.02.0.i.i.i.i.i40 = phi i64 [ %i.fo, %bb.am ], [ 0, %bb.al ]
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.fq = load i64, ptr %i.fp, align 8, !alias.scope !352, !noundef !4 ; 4 uses
  %i.fr = icmp eq i64 %i.fq, 0
  br i1 %i.fr, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRmE6map_orjNCNvXs9_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structureNtB11_13PendingPreKeyNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0EB17_.exit.i.i.i.i
  %i.fs = or i64 %i.fq, 1
  %i.ft = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.fs, i1 true)
  %i.fu = xor i64 %i.ft, 63
  %i.fv = mul nuw nsw i64 %i.fu, 9
  %i.fw = add nuw nsw i64 %i.fv, 73
  %i.fx = lshr i64 %i.fw, 6
  %i.fy = icmp sgt i64 %i.fq, -1
  tail call void @llvm.assume(i1 %i.fy)
  %i.fz = add nuw i64 %i.fq, 1
  %i.ga = add nuw i64 %i.fz, %i.fx
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRmE6map_orjNCNvXs9_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structureNtB11_13PendingPreKeyNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0EB17_.exit.i.i.i.i
  %.sroa.01.0.i.i.i.i41 = phi i64 [ %i.ga, %bb.an ], [ 0, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRmE6map_orjNCNvXs9_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structureNtB11_13PendingPreKeyNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0EB17_.exit.i.i.i.i ]
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.gc = load i32, ptr %i.gb, align 8, !alias.scope !352, !noundef !4 ; 2 uses
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ge = or i32 %i.gc, 1
  %i.gf = sext i32 %i.ge to i64
  %i.gg = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.gf, i1 true)
  %i.gh = xor i64 %i.gg, 63
  %i.gi = mul nuw nsw i64 %i.gh, 9
  %i.gj = add nuw nsw i64 %i.gi, 73
  %i.gk = lshr i64 %i.gj, 6
  %i.gl = add nuw nsw i64 %i.gk, 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.sroa.02.0.i.i.i.i = phi i64 [ %i.gl, %bb.ap ], [ 0, %bb.ao ]
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.gn = load i64, ptr %i.gm, align 8, !alias.scope !352, !noundef !4 ; 2 uses
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %_RNCNvXs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB7_16SessionStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens_0Bb_.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gp = or i64 %i.gn, 1
  %i.gq = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.gp, i1 true)
  %i.gr = xor i64 %i.gq, 63
  %i.gs = mul nuw nsw i64 %i.gr, 9
  %i.gt = add nuw nsw i64 %i.gs, 73
  %i.gu = lshr i64 %i.gt, 6
  %i.gv = add nuw nsw i64 %i.gu, 1
  br label %_RNCNvXs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB7_16SessionStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens_0Bb_.exit.i

_RNCNvXs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB7_16SessionStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens_0Bb_.exit.i: ; preds = %bb.ar, %bb.aq
  %.sroa.03.0.i.i.i.i = phi i64 [ %i.gv, %bb.ar ], [ 0, %bb.aq ]
  %i.gw = add nuw i64 %.sroa.01.0.i.i.i.i41, %.sroa.02.0.i.i.i.i.i40
  %i.gx = add nuw i64 %i.gw, %.sroa.02.0.i.i.i.i
  %i.gy = add nuw i64 %i.gx, %.sroa.03.0.i.i.i.i  ; 2 uses
  %i.gz = or i64 %i.gy, 1
  %i.ha = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.gz, i1 true)
  %i.hb = xor i64 %i.ha, 63
  %i.hc = mul nuw nsw i64 %i.hb, 9
  %i.hd = add nuw nsw i64 %i.hc, 73
  %i.he = lshr i64 %i.hd, 6
  %i.hf = add nuw i64 %i.gy, 1
  %i.hg = add nuw i64 %i.hf, %i.he
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure13PendingPreKeyE6map_orjNCNvXs1_BN_NtBN_16SessionStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens_0EBR_.exit

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure13PendingPreKeyE6map_orjNCNvXs1_BN_NtBN_16SessionStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens_0EBR_.exit: ; preds = %bb.ak, %_RNCNvXs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB7_16SessionStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens_0Bb_.exit.i
  %.sroa.02.0.i42 = phi i64 [ %i.hg, %_RNCNvXs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB7_16SessionStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens_0Bb_.exit.i ], [ 0, %bb.ak ]
  %i.hh = add i64 %.sroa.02.0.i42, %i.ez          ; 3 uses
  %i.hi = icmp ult i64 %i.hh, %i.ez
  br i1 %i.hi, label %bb.au, label %bb.at

bb.as:                                            ; preds = %_RINvNtNtCs43OB2dM8s8d_5prost8encoding7message20encoded_len_repeatedNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainEB1b_.exit
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #18
  unreachable

bb.at:                                            ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure13PendingPreKeyE6map_orjNCNvXs1_BN_NtBN_16SessionStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens_0EBR_.exit
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.hk = load i32, ptr %i.hj, align 8, !noundef !4 ; 2 uses
  %i.hl = icmp eq i32 %i.hk, 0
  br i1 %i.hl, label %bb.aw, label %bb.av

bb.au:                                            ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure13PendingPreKeyE6map_orjNCNvXs1_BN_NtBN_16SessionStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens_0EBR_.exit
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #18
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.hm = or i32 %i.hk, 1
  %i.hn = zext i32 %i.hm to i64
  %i.ho = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.hn, i1 true)
  %i.hp = xor i64 %i.ho, 63
  %i.hq = mul nuw nsw i64 %i.hp, 9
  %i.hr = add nuw nsw i64 %i.hq, 73
  %i.hs = lshr i64 %i.hr, 6
  %i.ht = add nuw nsw i64 %i.hs, 1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.at, %bb.av
  %.sroa.07.0 = phi i64 [ %i.ht, %bb.av ], [ 0, %bb.at ]
  %i.hu = add i64 %.sroa.07.0, %i.hh              ; 3 uses
  %i.hv = icmp ult i64 %i.hu, %i.hh
  br i1 %i.hv, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.hx = load i32, ptr %i.hw, align 4, !noundef !4 ; 2 uses
  %i.hy = icmp eq i32 %i.hx, 0
  br i1 %i.hy, label %bb.ba, label %bb.az

bb.ay:                                            ; preds = %bb.aw
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #18
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.hz = or i32 %i.hx, 1
  %i.ia = zext i32 %i.hz to i64
  %i.ib = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ia, i1 true)
  %i.ic = xor i64 %i.ib, 63
  %i.id = mul nuw nsw i64 %i.ic, 9
  %i.ie = add nuw nsw i64 %i.id, 73
  %i.if = lshr i64 %i.ie, 6
  %i.ig = add nuw nsw i64 %i.if, 1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ax, %bb.az
  %.sroa.08.0 = phi i64 [ %i.ig, %bb.az ], [ 0, %bb.ax ]
  %i.ih = add i64 %.sroa.08.0, %i.hu              ; 3 uses
  %i.ii = icmp ult i64 %i.ih, %i.hu
  br i1 %i.ii, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ik = load i64, ptr %i.ij, align 8, !noundef !4 ; 4 uses
  %i.il = icmp eq i64 %i.ik, 0
  br i1 %i.il, label %bb.be, label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #18
  unreachable

bb.bd:                                            ; preds = %bb.bb
  %i.im = or i64 %i.ik, 1
  %i.in = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.im, i1 true)
  %i.io = xor i64 %i.in, 63
  %i.ip = mul nuw nsw i64 %i.io, 9
  %i.iq = add nuw nsw i64 %i.ip, 73
  %i.ir = lshr i64 %i.iq, 6
  %i.is = icmp sgt i64 %i.ik, -1
  tail call void @llvm.assume(i1 %i.is)
  %i.it = add nuw i64 %i.ik, 1
  %i.iu = add nuw i64 %i.it, %i.ir
  br label %bb.be

bb.be:                                            ; preds = %bb.bb, %bb.bd
  %.sroa.09.0 = phi i64 [ %i.iu, %bb.bd ], [ 0, %bb.bb ]
  %i.iv = add i64 %.sroa.09.0, %i.ih              ; 3 uses
  %i.iw = icmp ult i64 %i.iv, %i.ih
  br i1 %i.iw, label %bb.bk, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.iy = load i64, ptr %i.ix, align 8, !range !5, !noundef !4
  %.not29 = icmp eq i64 %i.iy, -1
  br i1 %.not29, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure18PendingKyberPreKeyE6map_orjNCNvXs1_BN_NtBN_16SessionStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens0_0EBR_.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.val.i = load i64, ptr %i.iz, align 8, !alias.scope !354 ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.val5.i = load i32, ptr %i.ja, align 8, !alias.scope !354, !noundef !4 ; 2 uses
  %i.jb = icmp eq i32 %.val5.i, 0
  br i1 %i.jb, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jc = or i32 %.val5.i, 1
  %i.jd = zext i32 %i.jc to i64
  %i.je = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.jd, i1 true)
  %i.jf = xor i64 %i.je, 63
  %i.jg = mul nuw nsw i64 %i.jf, 9
  %i.jh = add nuw nsw i64 %i.jg, 73
  %i.ji = lshr i64 %i.jh, 6
  %i.jj = add nuw nsw i64 %i.ji, 1
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.sroa.0.0.i.i.i.i44 = phi i64 [ %i.jj, %bb.bh ], [ 0, %bb.bg ]
  %i.jk = icmp eq i64 %.val.i, 0
  br i1 %i.jk, label %_RNCNvXs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB7_16SessionStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens0_0Bb_.exit.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jl = or i64 %.val.i, 1
  %i.jm = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.jl, i1 true)
  %i.jn = xor i64 %i.jm, 63
  %i.jo = mul nuw nsw i64 %i.jn, 9
  %i.jp = add nuw nsw i64 %i.jo, 73
  %i.jq = lshr i64 %i.jp, 6
  %i.jr = icmp sgt i64 %.val.i, -1
  tail call void @llvm.assume(i1 %i.jr)
  %i.js = add nuw i64 %.val.i, 1
  %i.jt = add nuw i64 %i.js, %i.jq
  br label %_RNCNvXs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB7_16SessionStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens0_0Bb_.exit.i

_RNCNvXs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB7_16SessionStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens0_0Bb_.exit.i: ; preds = %bb.bj, %bb.bi
  %.sroa.01.0.i.i.i.i45 = phi i64 [ %i.jt, %bb.bj ], [ 0, %bb.bi ]
  %i.ju = add nuw i64 %.sroa.01.0.i.i.i.i45, %.sroa.0.0.i.i.i.i44 ; 2 uses
  %i.jv = or i64 %i.ju, 1
  %i.jw = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.jv, i1 true)
  %i.jx = xor i64 %i.jw, 63
  %i.jy = mul nuw nsw i64 %i.jx, 9
  %i.jz = add nuw nsw i64 %i.jy, 73
  %i.ka = lshr i64 %i.jz, 6
  %i.kb = add nuw i64 %i.ju, 1
  %i.kc = add nuw i64 %i.kb, %i.ka
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure18PendingKyberPreKeyE6map_orjNCNvXs1_BN_NtBN_16SessionStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens0_0EBR_.exit

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure18PendingKyberPreKeyE6map_orjNCNvXs1_BN_NtBN_16SessionStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens0_0EBR_.exit: ; preds = %bb.bf, %_RNCNvXs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB7_16SessionStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens0_0Bb_.exit.i
  %.sroa.02.0.i46 = phi i64 [ %i.kc, %_RNCNvXs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB7_16SessionStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens0_0Bb_.exit.i ], [ 0, %bb.bf ]
  %i.kd = add i64 %.sroa.02.0.i46, %i.iv          ; 3 uses
  %i.ke = icmp ult i64 %i.kd, %i.iv
  br i1 %i.ke, label %bb.bm, label %bb.bl

bb.bk:                                            ; preds = %bb.be
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #18
  unreachable

bb.bl:                                            ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure18PendingKyberPreKeyE6map_orjNCNvXs1_BN_NtBN_16SessionStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens0_0EBR_.exit
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.kg = load i64, ptr %i.kf, align 8, !noundef !4 ; 4 uses
  %i.kh = icmp eq i64 %i.kg, 0
  br i1 %i.kh, label %bb.bo, label %bb.bn

bb.bm:                                            ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure18PendingKyberPreKeyE6map_orjNCNvXs1_BN_NtBN_16SessionStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens0_0EBR_.exit
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #18
  unreachable

bb.bn:                                            ; preds = %bb.bl
  %i.ki = or i64 %i.kg, 1
  %i.kj = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ki, i1 true)
  %i.kk = xor i64 %i.kj, 63
  %i.kl = mul nuw nsw i64 %i.kk, 9
  %i.km = add nuw nsw i64 %i.kl, 73
  %i.kn = lshr i64 %i.km, 6
  %i.ko = icmp sgt i64 %i.kg, -1
  tail call void @llvm.assume(i1 %i.ko)
  %i.kp = add nuw i64 %i.kg, 1
  %i.kq = add nuw i64 %i.kp, %i.kn
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bl, %bb.bn
  %.sroa.011.0 = phi i64 [ %i.kq, %bb.bn ], [ 0, %bb.bl ]
  %i.kr = add i64 %.sroa.011.0, %i.kd             ; 2 uses
  %i.ks = icmp ult i64 %i.kr, %i.kd
  br i1 %i.ks, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  ret i64 %i.kr

bb.bq:                                            ; preds = %bb.bo
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB5_16SessionStructureNtNtCs43OB2dM8s8d_5prost7message7Message5clear(ptr noalias nofree noundef align 8 dereferenceable(344) initializes((16, 24), (40, 48), (64, 72), (328, 336)) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 332
  store i32 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !range !5, !alias.scope !361, !noundef !4
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainEEB15_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.f)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainEEB15_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  store i64 -1, ptr %i.f, align 8
  br label %common.resume

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainEEB15_.exit: ; preds = %bb.a, %bb.b
  store i64 -1, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !noundef !4 ; 4 uses
  store i64 0, ptr %i.l, align 8
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainEBK_.exit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.o = icmp eq i64 %i.q, %i.m
  br i1 %i.o, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainEBK_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainEEB15_.exit, %bb.d
  %.sroa.0.0.i18 = phi i64 [ %i.q, %bb.d ], [ 0, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainEEB15_.exit ] ; 2 uses
  %i.p = getelementptr inbounds nuw [104 x i8], ptr %i.k, i64 %.sroa.0.0.i18
  %i.q = add nuw nsw i64 %.sroa.0.0.i18, 1        ; 4 uses
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainEBJ_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.p)
          to label %bb.d unwind label %bb.f

bb.e:                                             ; preds = %.lr.ph20
  %i.r = add i64 %.sroa.0.1.i19, 1                ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.m
  br i1 %i.s, label %common.resume, label %.lr.ph20

bb.f:                                             ; preds = %.lr.ph
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = icmp eq i64 %i.q, %i.m
  br i1 %i.u, label %common.resume, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.f, %bb.e
  %.sroa.0.1.i19 = phi i64 [ %i.r, %bb.e ], [ %i.q, %bb.f ] ; 2 uses
  %i.v = getelementptr inbounds nuw [104 x i8], ptr %i.k, i64 %.sroa.0.1.i19
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainEBJ_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.v) #16
          to label %bb.e unwind label %bb.g

common.resume:                                    ; preds = %bb.e, %bb.f, %bb.c, %.body, %.body15
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.c ], [ %eh.lpad-body16, %.body15 ], [ %eh.lpad-body, %.body ], [ %i.t, %bb.f ], [ %i.t, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %.lr.ph20
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainEBK_.exit: ; preds = %bb.d, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainEEB15_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 6 uses
  %i.y = load i64, ptr %i.x, align 8, !range !5, !alias.scope !362, !noundef !4
  %i.z = icmp eq i64 %i.y, -1
  br i1 %i.z, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure13PendingPreKeyEEB15_.exit, label %bb.h

bb.h:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainEBK_.exit
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.x)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure13PendingPreKeyEBJ_.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.x)
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure13PendingPreKeyEBJ_.exit.i: ; preds = %bb.h
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.x)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure13PendingPreKeyEEB15_.exit unwind label %bb.k

bb.k:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure13PendingPreKeyEBJ_.exit.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.ac, %bb.k ], [ %i.aa, %bb.i ]
  store i64 -1, ptr %i.x, align 8
  br label %common.resume

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure13PendingPreKeyEEB15_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainEBK_.exit, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure13PendingPreKeyEBJ_.exit.i
  store i64 -1, ptr %i.x, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i32 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 340
  store i32 0, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 6 uses
  %i.ah = load i64, ptr %i.ag, align 8, !range !5, !alias.scope !363, !noundef !4
  %i.ai = icmp eq i64 %i.ah, -1
  br i1 %i.ai, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure18PendingKyberPreKeyEEB15_.exit, label %bb.l

bb.l:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure13PendingPreKeyEEB15_.exit
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ag)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure18PendingKyberPreKeyEBJ_.exit.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ag)
          to label %.body15 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure18PendingKyberPreKeyEBJ_.exit.i: ; preds = %bb.l
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ag)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure18PendingKyberPreKeyEEB15_.exit unwind label %bb.o

bb.o:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure18PendingKyberPreKeyEBJ_.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body15

.body15:                                          ; preds = %bb.m, %bb.o
  %eh.lpad-body16 = phi { ptr, i32 } [ %i.al, %bb.o ], [ %i.aj, %bb.m ]
  store i64 -1, ptr %i.ag, align 8
  br label %common.resume

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure18PendingKyberPreKeyEEB15_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure13PendingPreKeyEEB15_.exit, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure18PendingKyberPreKeyEBJ_.exit.i
  store i64 -1, ptr %i.ag, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 0, ptr %i.am, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage16SessionStructureNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !6, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB5_16SessionStructureNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(344) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage23SenderKeyStateStructureNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !6, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXsD_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB5_23SenderKeyStateStructureNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB5_16SessionStructureNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(344) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 16)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr %i.o, ptr %i.m, align 8, !captures !7
  %i.p = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 15, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @54)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %0, ptr %i.l, align 8, !captures !7
  %i.q = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 21, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @44)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.r, ptr %i.k, align 8, !captures !7
  %i.s = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 22, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @44)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.t, ptr %i.j, align 8, !captures !7
  %i.u = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 8, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @44)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 332
  store ptr %i.v, ptr %i.i, align 8, !captures !7
  %i.w = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 16, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @54)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.x, ptr %i.h, align 8
  %i.y = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 12, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @55)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.z, ptr %i.g, align 8
  %i.aa = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 15, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @56)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %i.ab, ptr %i.f, align 8
  %i.ac = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 15, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @57)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr %i.ad, ptr %i.e, align 8
  %i.ae = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 21, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr %i.af, ptr %i.d, align 8, !captures !7
  %i.ag = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 22, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @54)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 340
  store ptr %i.ah, ptr %i.c, align 8, !captures !7
  %i.ai = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 21, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @54)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.aj, ptr %i.b, align 8, !captures !7
  %i.ak = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 14, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @44)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.al, ptr %i.a, align 8, !captures !7
  %i.am = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 16, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @44)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.an = call noundef zeroext i1 @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret i1 %i.an
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtNtNtB9_5proto7storage16SessionStructureINtNtCsgxBkk5gSRhY_4core7convert4FromRNtB5_12SessionStateE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([344 x i8]) align 8 captures(none) dereferenceable(344) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(344) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [104 x i8], align 8               ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [48 x i8], align 8                ; 10 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [104 x i8], align 8               ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.s = load i32, ptr %i.r, align 8, !alias.scope !373, !noalias !372, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !374
  call void @_RNvXsa_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(344) %1), !noalias !372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !374
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RNvXsa_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t)
          to label %bb.d unwind label %bb.c, !noalias !372

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.i, %bb.e ], [ %i.u, %bb.c ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #16
          to label %bb.as unwind label %bb.ar, !noalias !372

bb.c:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !374
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_RNvXsa_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v)
          to label %bb.g unwind label %bb.f, !noalias !372

bb.e:                                             ; preds = %.body.i, %bb.f
  %.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i, %.body.i ], [ %i.w, %bb.f ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #16
          to label %bb.b unwind label %bb.ar, !noalias !372

bb.f:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 332
  %i.y = load i32, ptr %i.x, align 4, !alias.scope !373, !noalias !372, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !374
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !range !5, !alias.scope !373, !noalias !372, !noundef !4
  %.not.i = icmp eq i64 %i.aa, -1
  br i1 %.not.i, label %bb.t, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !375)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !376
  invoke void @_RNvXsa_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.z)
          to label %.noexc.i unwind label %bb.v, !noalias !372

.noexc.i:                                         ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !376
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 168
  invoke void @_RNvXsa_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab)
          to label %bb.k unwind label %bb.j, !noalias !377

bb.i:                                             ; preds = %bb.o, %bb.j
  %.pn.pn.i.i = phi { ptr, i32 } [ %.pn.i.i, %bb.o ], [ %i.ac, %bb.j ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #16
          to label %.body.i unwind label %bb.s, !noalias !377

bb.j:                                             ; preds = %.noexc.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !376
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !range !5, !alias.scope !378, !noalias !377, !noundef !4
  %.not.i.i = icmp eq i64 %i.ae, -1
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ag = load i32, ptr %i.af, align 8, !alias.scope !378, !noalias !377, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !376
  invoke void @_RNvXsa_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad)
          to label %bb.q unwind label %bb.p, !noalias !377

bb.m:                                             ; preds = %bb.k
  store i64 -1, ptr %i.c, align 8, !noalias !376
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !376
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 192
  invoke void @_RNvXsa_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain10MessageKeyENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneBO_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah)
          to label %bb.w unwind label %bb.r, !noalias !377

bb.o:                                             ; preds = %bb.r, %bb.p
  %.pn.i.i = phi { ptr, i32 } [ %i.aj, %bb.r ], [ %i.ai, %bb.p ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #16
          to label %bb.i unwind label %bb.s, !noalias !377

bb.p:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !376
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %i.ag, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !376
  br label %bb.n

bb.r:                                             ; preds = %bb.n
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain8ChainKeyEEB17_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #16
          to label %bb.o unwind label %bb.s, !noalias !377

bb.s:                                             ; preds = %bb.r, %bb.o, %bb.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #15, !noalias !377
  unreachable

bb.t:                                             ; preds = %bb.g
  store i64 -1, ptr %i.n, align 8, !noalias !374
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !374
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke void @_RNvXsa_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneBM_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al)
          to label %bb.aa unwind label %bb.z, !noalias !372

.body.i:                                          ; preds = %bb.y, %bb.x, %bb.v, %bb.i
  %.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i.i, %bb.i ], [ %i.am, %bb.v ], [ %.pn.pn.pn.pn.i, %bb.y ], [ %.pn.pn.pn.pn.i, %bb.x ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #16
          to label %bb.e unwind label %bb.ar, !noalias !372

bb.v:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.w:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !379
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !379
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !379
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.n, ptr noundef nonnull align 8 dereferenceable(104) %i.h, i64 104, i1 false), !noalias !374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.u

bb.x:                                             ; preds = %bb.ae, %bb.z
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.i, %bb.ae ], [ %i.as, %bb.z ] ; 2 uses
  %i.aq = load i64, ptr %i.n, align 8, !range !5, !alias.scope !380, !noalias !374, !noundef !4
  %i.ar = icmp eq i64 %i.aq, -1
  br i1 %i.ar, label %.body.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.n)
          to label %.body.i unwind label %bb.ar, !noalias !372

bb.z:                                             ; preds = %bb.u
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.aa:                                            ; preds = %bb.u
end_hunk_2
begin_hunk_3_@_RNvXs4_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtNtNtB9_5proto7storage16SessionStructureINtNtCsgxBkk5gSRhY_4core7convert4FromRNtB5_12SessionStateE4from:bb.a
          cleanup
  br label %bb.ak

bb.am:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !374
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i32 %i.bi, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !374
  br label %bb.aj

bb.an:                                            ; preds = %bb.aq, %bb.ao
  %.pn.i = phi { ptr, i32 } [ %i.bp, %bb.aq ], [ %i.bn, %bb.ao ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure18PendingKyberPreKeyEEB15_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k) #16
          to label %bb.ak unwind label %bb.ar, !noalias !372

bb.ao:                                            ; preds = %bb.aj
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ap:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !374
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke void @_RNvXsa_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bo)
          to label %_RNvXNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB2_16SessionStructureNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone.exit unwind label %bb.aq, !noalias !372

bb.aq:                                            ; preds = %bb.ap
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #16
          to label %bb.an unwind label %bb.ar, !noalias !372

bb.ar:                                            ; preds = %bb.aq, %bb.an, %bb.ak, %bb.ae, %bb.y, %.body.i, %bb.e, %bb.b
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #15, !noalias !372
  unreachable

bb.as:                                            ; preds = %bb.b
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.i

_RNvXNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB2_16SessionStructureNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone.exit: ; preds = %bb.ap
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i32 %i.s, ptr %i.br, align 8, !alias.scope !372, !noalias !373
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !373
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !373
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !373
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 332
  store i32 %i.y, ptr %i.bu, align 4, !alias.scope !372, !noalias !373
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bv, ptr noundef nonnull align 8 dereferenceable(104) %i.n, i64 104, i1 false), !noalias !373
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !373
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bx, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false), !noalias !373
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !373
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 336
  store <2 x i32> %i.bk, ptr %i.bz, align 8, !alias.scope !372, !noalias !373
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !373
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !374
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 329406144173384851) i64 @_RNvXs4_NtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits10exact_size17ExactSizeIterator3lenB1b_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !385, !nonnull !4, !noundef !4
  %i.c = load ptr, ptr %0, align 8, !alias.scope !385, !nonnull !4, !noundef !4
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 112
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !386, !nonnull !4, !noundef !4
  %i.k = load ptr, ptr %i.h, align 8, !alias.scope !386, !nonnull !4, !noundef !4
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 112
  %i.p = add nuw nsw i64 %i.o, %i.g
  ret i64 %i.p
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB5_15RecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message5clear(ptr noalias nofree noundef align 8 dereferenceable(368) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !range !5, !alias.scope !389, !noundef !4
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage16SessionStructureEEB13_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage16SessionStructureEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(344) %i.a)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage16SessionStructureEEB13_.exit unwind label %bb.c

common.resume:                                    ; preds = %bb.g, %.body.i, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.c ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  store i64 -1, ptr %i.a, align 8
  br label %common.resume

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage16SessionStructureEEB13_.exit: ; preds = %bb.a, %bb.b
  store i64 -1, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 4 uses
  store i64 0, ptr %i.g, align 8
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit, label %.lr.ph

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i: ; preds = %bb.e
  %i.j = icmp eq i64 %i.l, %i.h
  br i1 %i.j, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage16SessionStructureEEB13_.exit, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i
  %.sroa.0.0.i16 = phi i64 [ %i.l, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i ], [ 0, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage16SessionStructureEEB13_.exit ] ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.0.0.i16 ; 3 uses
  %i.l = add nuw nsw i64 %.sroa.0.0.i16, 1        ; 4 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body.i unwind label %bb.f

bb.e:                                             ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.g:                                             ; preds = %.lr.ph18
  %i.o = add i64 %.sroa.0.1.i17, 1                ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.h
  br i1 %i.p, label %common.resume, label %.lr.ph18

bb.h:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.h, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.q, %bb.h ], [ %i.m, %bb.d ] ; 2 uses
  %i.r = icmp eq i64 %i.l, %i.h
  br i1 %i.r, label %common.resume, label %.lr.ph18

.lr.ph18:                                         ; preds = %.body.i, %bb.g
  %.sroa.0.1.i17 = phi i64 [ %i.o, %bb.g ], [ %i.l, %.body.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.0.1.i17
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #16
          to label %bb.g unwind label %bb.i

bb.i:                                             ; preds = %.lr.ph18
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage16SessionStructureEEB13_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs9_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB5_15RecordStructureNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(368) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 15)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %i.b, align 8
  %i.e = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 15, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @60)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.f = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 17, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = call noundef zeroext i1 @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsB_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB5_23SenderKeyStateStructureNtNtCs43OB2dM8s8d_5prost7message7Message5clear(ptr noalias nofree noundef align 8 dereferenceable(112) initializes((108, 112)) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !range !5, !alias.scope !392, !noundef !4
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structure14SenderChainKeyEEB15_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structure14SenderChainKeyEBJ_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structure14SenderChainKeyEBJ_.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structure14SenderChainKeyEEB15_.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structure14SenderChainKeyEBJ_.exit.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.e, %bb.c ]
  store i64 -1, ptr %i.b, align 8
  br label %common.resume

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structure14SenderChainKeyEEB15_.exit: ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structure14SenderChainKeyEBJ_.exit.i
  store i64 -1, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structure16SenderSigningKeyEEB15_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.h)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structure14SenderChainKeyEEB15_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  store i64 -1, ptr %i.h, align 8
  br label %common.resume

bb.g:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structure14SenderChainKeyEEB15_.exit
  store i64 -1, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !noundef !4 ; 4 uses
  store i64 0, ptr %i.l, align 8
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structure16SenderMessageKeyEBK_.exit, label %.lr.ph

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structure16SenderMessageKeyEBJ_.exit.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i
  %i.o = icmp eq i64 %i.q, %i.m
  br i1 %i.o, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structure16SenderMessageKeyEBK_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structure16SenderMessageKeyEBJ_.exit.i
  %.sroa.0.0.i21 = phi i64 [ %i.q, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structure16SenderMessageKeyEBJ_.exit.i ], [ 0, %bb.g ] ; 2 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %.sroa.0.0.i21 ; 3 uses
  %i.q = add nuw nsw i64 %.sroa.0.0.i21, 1        ; 4 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i unwind label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %.body.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i: ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structure16SenderMessageKeyEBJ_.exit.i unwind label %bb.k

bb.j:                                             ; preds = %.lr.ph23
  %i.t = add i64 %.sroa.0.1.i22, 1                ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.m
  br i1 %i.u, label %common.resume, label %.lr.ph23

bb.k:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %bb.h
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.v, %bb.k ], [ %i.r, %bb.h ] ; 2 uses
  %i.w = icmp eq i64 %i.q, %i.m
  br i1 %i.w, label %common.resume, label %.lr.ph23

.lr.ph23:                                         ; preds = %.body.i, %bb.j
  %.sroa.0.1.i22 = phi i64 [ %i.t, %bb.j ], [ %i.q, %.body.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %.sroa.0.1.i22
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structure16SenderMessageKeyEBJ_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.x) #16
          to label %bb.j unwind label %bb.l

common.resume:                                    ; preds = %bb.j, %.body.i, %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.i, %bb.f ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %.lr.ph23
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structure16SenderMessageKeyEBK_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structure16SenderMessageKeyEBJ_.exit.i, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 0, ptr %i.z, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsD_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB5_23SenderKeyStateStructureNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 23)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.g, ptr %i.e, align 8, !captures !7
  %i.h = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 15, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @54)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 108
  store ptr %i.i, ptr %i.d, align 8, !captures !7
  %i.j = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 8, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @54)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.k, ptr %i.c, align 8
  %i.l = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 16, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @62)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.m, ptr %i.b, align 8
  %i.n = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 18, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @63)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.o = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 19, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = call noundef zeroext i1 @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret i1 %i.p
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsH_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB5_24SenderKeyRecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message5clear(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  store i64 0, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage23SenderKeyStateStructureEBI_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage23SenderKeyStateStructureEBI_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [112 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage23SenderKeyStateStructureEBH_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.g)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [112 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage23SenderKeyStateStructureEBH_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.m) #16
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage23SenderKeyStateStructureEBI_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsJ_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB5_24SenderKeyRecordStructureNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 24)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 17, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @65)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = call noundef zeroext i1 @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsh_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB5_21PreKeyRecordStructureNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 21)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.e, ptr %i.c, align 8, !captures !7
  %i.f = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 2, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @54)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8, !captures !7
  %i.g = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 10, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @44)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.h, ptr %i.a, align 8, !captures !7
  %i.i = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @44)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = call noundef zeroext i1 @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %i.j
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsp_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB5_27SignedPreKeyRecordStructureNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 27)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.g, ptr %i.e, align 8, !captures !7
  %i.h = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 2, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @54)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8, !captures !7
  %i.i = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 10, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @44)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.j, ptr %i.c, align 8, !captures !7
  %i.k = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 11, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @44)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.l, ptr %i.b, align 8, !captures !7
  %i.m = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 9, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @44)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.n, ptr %i.a, align 8, !captures !7
  %i.o = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @69)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = call noundef zeroext i1 @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret i1 %i.p
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsgxBkk5gSRhY_4core3fmtSNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage23SenderKeyStateStructureNtB5_5Debug3fmtBB_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 82351536043346213) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [112 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage23SenderKeyStateStructureINtNtNtBa_5slice4iter4IterB14_EEB1a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs5_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsx_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB5_24IdentityKeyPairStructureNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 24)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8, !captures !7
  %i.d = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 10, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @44)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %i.a, align 8, !captures !7
  %i.f = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @44)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = call noundef zeroext i1 @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage15RecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message13encode_to_vecB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(368) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !range !5, !alias.scope !403, !noundef !4
  %.not.i = icmp eq i64 %i.d, -1                  ; 2 uses
  br i1 %.not.i, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage16SessionStructureE6map_orjNCNvXs7_BL_NtBL_15RecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0EBP_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef i64 @_RNvXs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB5_16SessionStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(344) dereferenceable_or_null(344) %i.c) #20 ; 2 uses
  %i.f = or i64 %i.e, 1
  %i.g = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = xor i64 %i.g, 63
  %i.i = mul nuw nsw i64 %i.h, 9
  %i.j = add nuw nsw i64 %i.i, 73
  %i.k = lshr i64 %i.j, 6                         ; 2 uses
  %i.l = add i64 %i.e, 1
  %i.m = add i64 %i.l, %i.k                       ; 2 uses
  %.not.i.i.i.i = icmp ugt i64 %i.m, %i.k
  br i1 %.not.i.i.i.i, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage16SessionStructureE6map_orjNCNvXs7_BL_NtBL_15RecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0EBP_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #18, !noalias !404
  unreachable

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage16SessionStructureE6map_orjNCNvXs7_BL_NtBL_15RecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0EBP_.exit.i: ; preds = %bb.b, %bb.a
  %.sroa.02.0.i.i = phi i64 [ 0, %bb.a ], [ %i.m, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !403, !nonnull !4, !noundef !4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !403, !noundef !4 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_RINvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB7_4IterINtNtCs6i54tJFfzR_5alloc3vec3VechEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1v_8adapters3map8map_foldRBQ_jjNCINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes20encoded_len_repeatedBQ_E0NCINvXsK_NtB1t_5accumjNtB47_3Sum3sumINtB2f_3MapBF_B2P_EE0E0ECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage16SessionStructureE6map_orjNCNvXs7_BL_NtBL_15RecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0EBP_.exit.i, %_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map8map_foldRINtNtCs6i54tJFfzR_5alloc3vec3VechEjjNCINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB2N_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1v_EE0E0Cs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i
  %.sroa.04.0.i.i.i = phi i64 [ %i.ae, %_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map8map_foldRINtNtCs6i54tJFfzR_5alloc3vec3VechEjjNCINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB2N_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1v_EE0E0Cs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i ], [ 0, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage16SessionStructureE6map_orjNCNvXs7_BL_NtBL_15RecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0EBP_.exit.i ] ; 2 uses
  %.sroa.02.0.i.i.i = phi i64 [ %i.ac, %_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map8map_foldRINtNtCs6i54tJFfzR_5alloc3vec3VechEjjNCINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB2N_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1v_EE0E0Cs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i ], [ 0, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage16SessionStructureE6map_orjNCNvXs7_BL_NtBL_15RecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0EBP_.exit.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.04.0.i.i.i
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %.val.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !405, !noalias !403, !noundef !4 ; 3 uses
  %i.u = or i64 %.val.i.i.i, 1
  %i.v = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.u, i1 true)
  %i.w = xor i64 %i.v, 63
  %i.x = mul nuw nsw i64 %i.w, 9
  %i.y = add nuw nsw i64 %i.x, 73
  %i.z = lshr i64 %i.y, 6
  %i.aa = icmp sgt i64 %.val.i.i.i, -1
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add i64 %.val.i.i.i, %.sroa.02.0.i.i.i
  %i.ac = add i64 %i.ab, %i.z                     ; 3 uses
  %i.ad = icmp ult i64 %i.ac, %.sroa.02.0.i.i.i
  br i1 %i.ad, label %bb.d, label %_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map8map_foldRINtNtCs6i54tJFfzR_5alloc3vec3VechEjjNCINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB2N_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1v_EE0E0Cs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i

bb.d:                                             ; preds = %.preheader.i.i
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #18, !noalias !406
  unreachable

_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map8map_foldRINtNtCs6i54tJFfzR_5alloc3vec3VechEjjNCINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB2N_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1v_EE0E0Cs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i: ; preds = %.preheader.i.i
  %i.ae = add nuw nsw i64 %.sroa.04.0.i.i.i, 1    ; 2 uses
  %i.af = icmp eq i64 %i.ae, %i.q
  br i1 %i.af, label %_RINvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB7_4IterINtNtCs6i54tJFfzR_5alloc3vec3VechEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1v_8adapters3map8map_foldRBQ_jjNCINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes20encoded_len_repeatedBQ_E0NCINvXsK_NtB1t_5accumjNtB47_3Sum3sumINtB2f_3MapBF_B2P_EE0E0ECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i, label %.preheader.i.i

_RINvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB7_4IterINtNtCs6i54tJFfzR_5alloc3vec3VechEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1v_8adapters3map8map_foldRBQ_jjNCINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes20encoded_len_repeatedBQ_E0NCINvXsK_NtB1t_5accumjNtB47_3Sum3sumINtB2f_3MapBF_B2P_EE0E0ECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i: ; preds = %_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map8map_foldRINtNtCs6i54tJFfzR_5alloc3vec3VechEjjNCINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB2N_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1v_EE0E0Cs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage16SessionStructureE6map_orjNCNvXs7_BL_NtBL_15RecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0EBP_.exit.i
  %.sroa.0.0.i.i.i = phi i64 [ 0, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage16SessionStructureE6map_orjNCNvXs7_BL_NtBL_15RecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0EBP_.exit.i ], [ %i.ac, %_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map8map_foldRINtNtCs6i54tJFfzR_5alloc3vec3VechEjjNCINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB2N_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1v_EE0E0Cs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i ]
  %i.ag = add i64 %.sroa.0.0.i.i.i, %i.q          ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.q
  br i1 %i.ah, label %bb.e, label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes20encoded_len_repeatedINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i

bb.e:                                             ; preds = %_RINvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB7_4IterINtNtCs6i54tJFfzR_5alloc3vec3VechEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1v_8adapters3map8map_foldRBQ_jjNCINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes20encoded_len_repeatedBQ_E0NCINvXsK_NtB1t_5accumjNtB47_3Sum3sumINtB2f_3MapBF_B2P_EE0E0ECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #18, !noalias !406
  unreachable

_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes20encoded_len_repeatedINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i: ; preds = %_RINvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB7_4IterINtNtCs6i54tJFfzR_5alloc3vec3VechEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1v_8adapters3map8map_foldRBQ_jjNCINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes20encoded_len_repeatedBQ_E0NCINvXsK_NtB1t_5accumjNtB47_3Sum3sumINtB2f_3MapBF_B2P_EE0E0ECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i
  %i.ai = add i64 %i.ag, %.sroa.02.0.i.i          ; 3 uses
  %i.aj = icmp ult i64 %i.ai, %.sroa.02.0.i.i
  br i1 %i.aj, label %bb.f, label %_RNvXs7_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB5_15RecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len.exit

bb.f:                                             ; preds = %_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes20encoded_len_repeatedINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #18, !noalias !403
  unreachable

_RNvXs7_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB5_15RecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len.exit: ; preds = %_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes20encoded_len_repeatedINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.ai, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.ak = load i64, ptr %i.a, align 8, !range !10, !noundef !4
  %i.al = trunc nuw i64 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !11, !noundef !4 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.al, label %bb.g, label %bb.h, !prof !12

bb.g:                                             ; preds = %_RNvXs7_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB5_15RecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len.exit
  %i.ap = load i64, ptr %i.ao, align 8
  tail call void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.an, i64 %i.ap) #21
  unreachable

bb.h:                                             ; preds = %_RNvXs7_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB5_15RecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len.exit
  %i.aq = load ptr, ptr %i.ao, align 8, !nonnull !4, !noundef !4
  %i.ar = icmp ule i64 %i.ai, %i.an
  tail call void @llvm.assume(i1 %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.an, ptr %i.b, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.aq, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.at, align 8
  br i1 %.not.i, label %.noexc, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding7message6encodeNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage16SessionStructureINtNtCs6i54tJFfzR_5alloc3vec3VechEEBU_(i32 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(344) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i, %bb.h
  invoke void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes15encode_repeatedINtNtCs6i54tJFfzR_5alloc3vec3VechEBW_ECs4tP8yUXWbFU_18libsignal_protocol(i32 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.o, i64 noundef %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvXs7_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB6_15RecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message10encode_rawINtNtCs6i54tJFfzR_5alloc3vec3VechEEBa_.exit unwind label %bb.j

bb.j:                                             ; preds = %.noexc, %bb.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #16
          to label %bb.l unwind label %bb.k

_RINvXs7_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB6_15RecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message10encode_rawINtNtCs6i54tJFfzR_5alloc3vec3VechEEBa_.exit: ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.k:                                             ; preds = %bb.j
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.l:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.au
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage16SessionStructureNtNtCs43OB2dM8s8d_5prost7message7Message13encode_to_vecB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(344) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call fastcc noundef i64 @_RNvXs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB5_16SessionStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(344) %1) #20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.c, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.d = load i64, ptr %i.a, align 8, !range !10, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !11, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8
  tail call void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.k = icmp ule i64 %i.c, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.g, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.m, align 8
  invoke void @_RINvXs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB6_16SessionStructureNtNtCs43OB2dM8s8d_5prost7message7Message10encode_rawINtNtCs6i54tJFfzR_5alloc3vec3VechEEBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(344) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #16
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.f:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage21PreKeyRecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message13encode_to_vecB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !alias.scope !409, !noundef !4 ; 2 uses
  %i.e = icmp eq i32 %i.d, 0                      ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = or i32 %i.d, 1
  %i.g = zext i32 %i.f to i64
  %i.h = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = xor i64 %i.h, 63
  %i.j = mul nuw nsw i64 %i.i, 9
  %i.k = add nuw nsw i64 %i.j, 73
  %i.l = lshr i64 %i.k, 6
  %i.m = add nuw nsw i64 %i.l, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ %i.m, %bb.b ], [ 0, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !409, !noundef !4 ; 4 uses
  %i.p = icmp eq i64 %i.o, 0                      ; 2 uses
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = or i64 %i.o, 1
  %i.r = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.q, i1 true)
  %i.s = xor i64 %i.r, 63
  %i.t = mul nuw nsw i64 %i.s, 9
  %i.u = add nuw nsw i64 %i.t, 73
  %i.v = lshr i64 %i.u, 6
  %i.w = icmp sgt i64 %i.o, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nuw i64 %i.o, 1
  %i.y = add nuw i64 %i.x, %i.v
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0.i = phi i64 [ %i.y, %bb.d ], [ 0, %bb.c ]
  %i.z = add nuw i64 %.sroa.01.0.i, %.sroa.0.0.i  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !409, !noundef !4 ; 4 uses
  %i.ac = icmp eq i64 %i.ab, 0                    ; 2 uses
  br i1 %i.ac, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = or i64 %i.ab, 1
  %i.ae = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ad, i1 true)
  %i.af = xor i64 %i.ae, 63
  %i.ag = mul nuw nsw i64 %i.af, 9
  %i.ah = add nuw nsw i64 %i.ag, 73
  %i.ai = lshr i64 %i.ah, 6
  %i.aj = icmp sgt i64 %i.ab, -1
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw i64 %i.ab, 1
  %i.al = add nuw i64 %i.ak, %i.ai
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.02.0.i = phi i64 [ %i.al, %bb.f ], [ 0, %bb.e ]
  %i.am = add i64 %.sroa.02.0.i, %i.z             ; 3 uses
  %i.an = icmp ult i64 %i.am, %i.z
  br i1 %i.an, label %bb.h, label %_RNvXsf_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB5_21PreKeyRecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #18, !noalias !409
  unreachable

_RNvXsf_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB5_21PreKeyRecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.am, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.ao = load i64, ptr %i.a, align 8, !range !10, !noundef !4
  %i.ap = trunc nuw i64 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !range !11, !noundef !4 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ap, label %bb.i, label %bb.j, !prof !12

bb.i:                                             ; preds = %_RNvXsf_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB5_21PreKeyRecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len.exit
  %i.at = load i64, ptr %i.as, align 8
  tail call void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.ar, i64 %i.at) #21
  unreachable

bb.j:                                             ; preds = %_RNvXsf_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB5_21PreKeyRecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len.exit
  %i.au = load ptr, ptr %i.as, align 8, !nonnull !4, !noundef !4
  %i.av = icmp ule i64 %i.am, %i.ar
  tail call void @llvm.assume(i1 %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.ar, ptr %i.b, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.au, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.ax, align 8
  br i1 %i.e, label %.noexc, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6uint326encodeINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(i32 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.k, %bb.j
  br i1 %i.p, label %.noexc1, label %bb.l

bb.l:                                             ; preds = %.noexc
  invoke void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes6encodeINtNtCs6i54tJFfzR_5alloc3vec3VechEBM_ECs4tP8yUXWbFU_18libsignal_protocol(i32 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc1 unwind label %bb.n

.noexc1:                                          ; preds = %bb.l, %.noexc
  br i1 %i.ac, label %_RINvXsf_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB6_21PreKeyRecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message10encode_rawINtNtCs6i54tJFfzR_5alloc3vec3VechEEBa_.exit, label %bb.m

bb.m:                                             ; preds = %.noexc1
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes6encodeINtNtCs6i54tJFfzR_5alloc3vec3VechEBM_ECs4tP8yUXWbFU_18libsignal_protocol(i32 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ay, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvXsf_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB6_21PreKeyRecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message10encode_rawINtNtCs6i54tJFfzR_5alloc3vec3VechEEBa_.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #16
          to label %bb.p unwind label %bb.o

_RINvXsf_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB6_21PreKeyRecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message10encode_rawINtNtCs6i54tJFfzR_5alloc3vec3VechEEBa_.exit: ; preds = %.noexc1, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.o:                                             ; preds = %bb.n
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.p:                                             ; preds = %bb.n
  resume { ptr, i32 } %i.az
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage24IdentityKeyPairStructureNtNtCs43OB2dM8s8d_5prost7message7Message13encode_to_vecB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val1 = load i64, ptr %i.d, align 8            ; 4 uses
  %i.e = icmp eq i64 %.val, 0                     ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = or i64 %.val, 1
  %i.g = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = xor i64 %i.g, 63
  %i.i = mul nuw nsw i64 %i.h, 9
  %i.j = add nuw nsw i64 %i.i, 73
  %i.k = lshr i64 %i.j, 6
  %i.l = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = add nuw i64 %.val, 1
  %i.n = add nuw i64 %i.m, %i.k
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ %i.n, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.o = icmp eq i64 %.val1, 0                    ; 2 uses
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = or i64 %.val1, 1
  %i.q = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.r = xor i64 %i.q, 63
  %i.s = mul nuw nsw i64 %i.r, 9
  %i.t = add nuw nsw i64 %i.s, 73
  %i.u = lshr i64 %i.t, 6
  %i.v = icmp sgt i64 %.val1, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = add nuw i64 %.val1, 1
  %i.x = add nuw i64 %i.w, %i.u
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0.i = phi i64 [ %i.x, %bb.d ], [ 0, %bb.c ]
  %i.y = add i64 %.sroa.01.0.i, %.sroa.0.0.i      ; 3 uses
  %i.z = icmp ult i64 %i.y, %.sroa.0.0.i
  br i1 %i.z, label %bb.f, label %_RNvXsv_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB5_24IdentityKeyPairStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #18
  unreachable

_RNvXsv_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB5_24IdentityKeyPairStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.y, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.aa = load i64, ptr %i.a, align 8, !range !10, !noundef !4
  %i.ab = trunc nuw i64 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !11, !noundef !4 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ab, label %bb.g, label %bb.h, !prof !12

bb.g:                                             ; preds = %_RNvXsv_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB5_24IdentityKeyPairStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len.exit
  %i.af = load i64, ptr %i.ae, align 8
  tail call void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.ad, i64 %i.af) #21
  unreachable

bb.h:                                             ; preds = %_RNvXsv_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB5_24IdentityKeyPairStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len.exit
  %i.ag = load ptr, ptr %i.ae, align 8, !nonnull !4, !noundef !4
  %i.ah = icmp ule i64 %i.y, %i.ad
  tail call void @llvm.assume(i1 %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.ad, ptr %i.b, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ag, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.aj, align 8
  br i1 %i.e, label %.noexc, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes6encodeINtNtCs6i54tJFfzR_5alloc3vec3VechEBM_ECs4tP8yUXWbFU_18libsignal_protocol(i32 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.i, %bb.h
  br i1 %i.o, label %_RINvXsv_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB6_24IdentityKeyPairStructureNtNtCs43OB2dM8s8d_5prost7message7Message10encode_rawINtNtCs6i54tJFfzR_5alloc3vec3VechEEBa_.exit, label %bb.j

bb.j:                                             ; preds = %.noexc
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes6encodeINtNtCs6i54tJFfzR_5alloc3vec3VechEBM_ECs4tP8yUXWbFU_18libsignal_protocol(i32 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvXsv_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB6_24IdentityKeyPairStructureNtNtCs43OB2dM8s8d_5prost7message7Message10encode_rawINtNtCs6i54tJFfzR_5alloc3vec3VechEEBa_.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #16
          to label %bb.m unwind label %bb.l

_RINvXsv_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB6_24IdentityKeyPairStructureNtNtCs43OB2dM8s8d_5prost7message7Message10encode_rawINtNtCs6i54tJFfzR_5alloc3vec3VechEEBa_.exit: ; preds = %.noexc, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.l:                                             ; preds = %bb.k
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.m:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.al
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage24SenderKeyRecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message13encode_to_vecB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i64, ptr %i.d, align 8, !noundef !4 ; 5 uses
  %i.e = getelementptr inbounds nuw [112 x i8], ptr %.val, i64 %.val1
  %i.f = tail call noundef i64 @_RINvXs0_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage23SenderKeyStateStructureENvYB1n_NtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lenENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldjjjNCINvNtNtB2Q_8encoding7message20encoded_len_repeatedB1n_E0NCINvXsK_NtB3I_5accumjNtB5H_3Sum3sumIBO_BN_B4C_EE0E0EB1t_(ptr noundef nonnull readonly align 8 %.val, ptr noundef nonnull readonly %i.e, i64 noundef 0)
  %i.g = add i64 %i.f, %.val1                     ; 3 uses
  %i.h = icmp ult i64 %i.g, %.val1
  br i1 %i.h, label %bb.b, label %_RNvXsH_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB5_24SenderKeyRecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #18
  unreachable

_RNvXsH_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB5_24SenderKeyRecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.i = load i64, ptr %i.a, align 8, !range !10, !noundef !4
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !11, !noundef !4 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d, !prof !12

bb.c:                                             ; preds = %_RNvXsH_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB5_24SenderKeyRecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len.exit
  %i.n = load i64, ptr %i.m, align 8
  tail call void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #21
  unreachable

bb.d:                                             ; preds = %_RNvXsH_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB5_24SenderKeyRecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len.exit
  %i.o = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  %i.p = icmp ule i64 %i.g, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.l, ptr %i.b, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.o, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.r, align 8
  %.idx.i = mul nuw nsw i64 %.val1, 112
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i
  %i.t = icmp eq i64 %.val1, 0
  br i1 %i.t, label %_RINvXsH_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB6_24SenderKeyRecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message10encode_rawINtNtCs6i54tJFfzR_5alloc3vec3VechEEBa_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.noexc
  %.sroa.0.01.i = phi ptr [ %i.u, %.noexc ], [ %.val, %bb.d ] ; 2 uses
  invoke void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding7message6encodeNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage23SenderKeyStateStructureINtNtCs6i54tJFfzR_5alloc3vec3VechEEBU_(i32 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %.sroa.0.01.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i, i64 112 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.s
  br i1 %i.v, label %_RINvXsH_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB6_24SenderKeyRecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message10encode_rawINtNtCs6i54tJFfzR_5alloc3vec3VechEEBa_.exit, label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #16
          to label %bb.g unwind label %bb.f

_RINvXsH_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB6_24SenderKeyRecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message10encode_rawINtNtCs6i54tJFfzR_5alloc3vec3VechEEBa_.exit: ; preds = %.noexc, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.w
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecIBv_hEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage23SenderKeyStateStructureENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structure16SenderMessageKeyENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain10MessageKeyENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTReBF_EENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage23SenderKeyStateStructureENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structure16SenderMessageKeyENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain10MessageKeyENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

end_hunk_3
