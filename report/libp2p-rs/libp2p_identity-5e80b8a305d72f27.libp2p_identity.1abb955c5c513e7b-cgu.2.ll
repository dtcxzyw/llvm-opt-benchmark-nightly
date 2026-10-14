Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_identity-5e80b8a305d72f27.libp2p_identity.1abb955c5c513e7b-cgu.2?download=true
inline.NumInlined: 86
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRhNtB6_5Debug3fmtCs2iisHxfqoT7_15libp2p_identity }>, align 8
@1 = private unnamed_addr constant [103 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/multihash-0.19.5/src/multihash.rs\00", align 1
@2 = private unnamed_addr constant [94 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/bs58-0.5.1/src/encode.rs\00", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"]\00\00\00\00\00\00\00\D1\01\00\00\10\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"]\00\00\00\00\00\00\00\D0\01\00\00\1B\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"]\00\00\00\00\00\00\00\CC\01\00\00\09\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"]\00\00\00\00\00\00\00\C2\01\00\00\0D\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"]\00\00\00\00\00\00\00\B9\01\00\00 \00\00\00" }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"]\00\00\00\00\00\00\00\93\00\00\00+\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string13FromUtf8ErrorECs2iisHxfqoT7_15libp2p_identity, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1m_NtCsexYYUdYSQU6_5alloc6stringNtB6_13FromUtf8ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@10 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@11 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs9_NtCsk7Z1gFMStHv_4bs586encodeNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"]\00\00\00\00\00\00\00=\01\00\00 \00\00\00" }>, align 8
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"f\00\00\00\00\00\00\00Y\00\00\00\15\00\00\00" }>, align 8
@14 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs2iisHxfqoT7_15libp2p_identity }>, align 8
@15 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3str5error9Utf8ErrorNtB6_5Debug3fmtCs2iisHxfqoT7_15libp2p_identity }>, align 8
@16 = private unnamed_addr constant [13 x i8] c"FromUtf8Error", align 1
@17 = private unnamed_addr constant [5 x i8] c"bytes", align 1
@18 = private unnamed_addr constant [5 x i8] c"error", align 1
@19 = private unnamed_addr constant [79 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/core/src/slice/iter.rs\00", align 1
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"N\00\00\00\00\00\00\00o\07\00\00\11\00\00\00" }>, align 8
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"N\00\00\00\00\00\00\00\0B\08\00\00\11\00\00\00" }>, align 8
@22 = private unnamed_addr constant [78 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/alloc/src/io/impls.rs\00", align 1
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @22, [16 x i8] c"M\00\00\00\00\00\00\00?\01\00\00\11\00\00\00" }>, align 8
@24 = private unnamed_addr constant [27 x i8] c"failed to fill whole buffer", align 1
@25 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @24, [9 x i8] c"\1B\00\00\00\00\00\00\00%", [7 x i8] undef }>, align 8
@26 = private unnamed_addr constant [14 x i8] c"BufferTooSmall", align 1
@27 = private unnamed_addr constant [140 x i8] c"Cannot read beyond end of slice-iterator @/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/asn1_der-0.7.7/src/data.rs:32", align 1

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !13
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvNtCsk7Z1gFMStHv_4bs586encode11encode_intoRShECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull readonly captures(address) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull captures(address) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly captures(none) dereferenceable(186) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswaphECs2iisHxfqoT7_15libp2p_identity.exit, label %.lr.ph65

.loopexit:                                        ; preds = %bb.l, %.preheader47.a
  %.sroa.03.2.lcssa = phi i64 [ %.sroa.03.064, %.preheader47.a ], [ %i.bi, %bb.l ] ; 3 uses
  %i.c = icmp eq ptr %i.d, %i.a
  br i1 %i.c, label %.lr.ph69.preheader, label %.lr.ph65

.lr.ph69.preheader:                               ; preds = %.loopexit
  %umax89 = tail call i64 @llvm.umax.i64(i64 %.sroa.03.2.lcssa, i64 %3) ; 2 uses
  br label %.lr.ph69

.lr.ph65:                                         ; preds = %bb.a, %.loopexit
  %.sroa.03.064 = phi i64 [ %.sroa.03.2.lcssa, %.loopexit ], [ 0, %bb.a ] ; 8 uses
  %.sroa.034.063 = phi ptr [ %i.d, %.loopexit ], [ %0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.034.063, i64 1 ; 2 uses
  %.not31 = icmp ugt i64 %.sroa.03.064, %3
  br i1 %.not31, label %bb.j, label %bb.k, !prof !22

.lr.ph69:                                         ; preds = %.lr.ph69.preheader, %bb.h
  %.sroa.03.168 = phi i64 [ %i.an, %bb.h ], [ %.sroa.03.2.lcssa, %.lr.ph69.preheader ] ; 5 uses
  %.sroa.037.067 = phi ptr [ %i.e, %bb.h ], [ %0, %.lr.ph69.preheader ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.037.067, i64 1 ; 2 uses
  %i.f = load i8, ptr %.sroa.037.067, align 1, !noalias !23, !noundef !4
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtNtBb_5slice4iter4IterhENCINvNtCsk7Z1gFMStHv_4bs586encode11encode_intoRShE0ENtNtNtB9_6traits8iterator8Iterator4nextCs2iisHxfqoT7_15libp2p_identity.exit, label %._crit_edge

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtNtBb_5slice4iter4IterhENCINvNtCsk7Z1gFMStHv_4bs586encode11encode_intoRShE0ENtNtNtB9_6traits8iterator8Iterator4nextCs2iisHxfqoT7_15libp2p_identity.exit: ; preds = %.lr.ph69
  %i.h = icmp eq i64 %.sroa.03.168, %3
  br i1 %i.h, label %_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswaphECs2iisHxfqoT7_15libp2p_identity.exit, label %bb.g

._crit_edge:                                      ; preds = %bb.h, %.lr.ph69
  %.sroa.03.1.lcssa = phi i64 [ %.sroa.03.168, %.lr.ph69 ], [ %i.an, %bb.h ] ; 12 uses
  %.not30 = icmp ugt i64 %.sroa.03.1.lcssa, %3
  br i1 %.not30, label %bb.b, label %bb.c, !prof !24

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.03.1.lcssa, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #17
  unreachable

bb.c:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.03.1.lcssa ; 4 uses
  %i.j = icmp samesign eq i64 %.sroa.03.1.lcssa, 0
  br i1 %i.j, label %_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswaphECs2iisHxfqoT7_15libp2p_identity.exit, label %.lr.ph75

.lr.ph75:                                         ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 128
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph75, %bb.e
  %.sroa.023.073 = phi ptr [ %2, %.lr.ph75 ], [ %i.o, %bb.e ] ; 3 uses
  %i.l = load i8, ptr %.sroa.023.073, align 1, !noundef !4 ; 2 uses
  %i.m = zext i8 %i.l to i64                      ; 2 uses
  %i.n = icmp ult i8 %i.l, 58
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.023.073, i64 1 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  %i.q = load i8, ptr %i.p, align 1, !noundef !4
  store i8 %i.q, ptr %.sroa.023.073, align 1
  %i.r = icmp eq ptr %i.o, %i.i
  br i1 %i.r, label %._crit_edge76, label %bb.d

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef 58, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #17
  unreachable

._crit_edge76:                                    ; preds = %bb.e
  %i.s = lshr i64 %.sroa.03.1.lcssa, 1            ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswaphECs2iisHxfqoT7_15libp2p_identity.exit, label %iter.check

iter.check:                                       ; preds = %._crit_edge76
  %min.iters.check = icmp ult i64 %.sroa.03.1.lcssa, 8
  br i1 %min.iters.check, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCs2iisHxfqoT7_15libp2p_identity.exit11.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check124 = icmp ult i64 %.sroa.03.1.lcssa, 32
  br i1 %min.iters.check124, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.s, 9223372036854775792      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = xor i64 %index, -1
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.v = getelementptr i8, ptr %i.i, i64 %i.t
  %wide.load = load <16 x i8>, ptr %i.u, align 1, !alias.scope !25, !noalias !26
  %i.w = getelementptr i8, ptr %i.v, i64 -15      ; 2 uses
  %wide.load125 = load <16 x i8>, ptr %i.w, align 1, !alias.scope !26, !noalias !25
  %reverse = shufflevector <16 x i8> %wide.load125, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %i.u, align 1, !alias.scope !25, !noalias !26
  %reverse126 = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse126, ptr %i.w, align 1, !alias.scope !26, !noalias !25
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswaphECs2iisHxfqoT7_15libp2p_identity.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.y = and i64 %.sroa.03.1.lcssa, 24
  %min.epilog.iters.check = icmp eq i64 %i.y, 0
  br i1 %min.epilog.iters.check, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCs2iisHxfqoT7_15libp2p_identity.exit11.i.preheader, label %vec.epilog.ph, !prof !27

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec127 = and i64 %i.s, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index128 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next133, %vec.epilog.vector.body ] ; 3 uses
  %i.z = xor i64 %index128, -1
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %index128 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.i, i64 %i.z
  %wide.load129 = load <4 x i8>, ptr %i.aa, align 1, !alias.scope !25, !noalias !26
  %i.ac = getelementptr i8, ptr %i.ab, i64 -3     ; 2 uses
  %wide.load130 = load <4 x i8>, ptr %i.ac, align 1, !alias.scope !26, !noalias !25
  %reverse131 = shufflevector <4 x i8> %wide.load130, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %reverse131, ptr %i.aa, align 1, !alias.scope !25, !noalias !26
  %reverse132 = shufflevector <4 x i8> %wide.load129, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %reverse132, ptr %i.ac, align 1, !alias.scope !26, !noalias !25
  %index.next133 = add nuw i64 %index128, 4       ; 2 uses
  %i.ad = icmp eq i64 %index.next133, %n.vec127
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !20

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n134 = icmp eq i64 %i.s, %n.vec127
  br i1 %cmp.n134, label %_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswaphECs2iisHxfqoT7_15libp2p_identity.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCs2iisHxfqoT7_15libp2p_identity.exit11.i.preheader

_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCs2iisHxfqoT7_15libp2p_identity.exit11.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.016.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec127, %vec.epilog.middle.block ]
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCs2iisHxfqoT7_15libp2p_identity.exit11.i

_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCs2iisHxfqoT7_15libp2p_identity.exit11.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCs2iisHxfqoT7_15libp2p_identity.exit11.i.preheader, %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCs2iisHxfqoT7_15libp2p_identity.exit11.i
  %.sroa.0.016.i = phi i64 [ %i.aj, %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCs2iisHxfqoT7_15libp2p_identity.exit11.i ], [ %.sroa.0.016.i.ph, %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCs2iisHxfqoT7_15libp2p_identity.exit11.i.preheader ] ; 3 uses
  %i.ae = xor i64 %.sroa.0.016.i, -1
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.016.i ; 2 uses
  %i.ag = getelementptr i8, ptr %i.i, i64 %i.ae   ; 2 uses
  %i.ah = load i8, ptr %i.af, align 1, !alias.scope !25, !noalias !26, !noundef !4
  %i.ai = load i8, ptr %i.ag, align 1, !alias.scope !26, !noalias !25
  store i8 %i.ai, ptr %i.af, align 1, !alias.scope !25, !noalias !26
  store i8 %i.ah, ptr %i.ag, align 1, !alias.scope !26, !noalias !25
  %i.aj = add nuw nsw i64 %.sroa.0.016.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aj, %i.s
  br i1 %exitcond.not.i, label %_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswaphECs2iisHxfqoT7_15libp2p_identity.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCs2iisHxfqoT7_15libp2p_identity.exit11.i, !llvm.loop !21

_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswaphECs2iisHxfqoT7_15libp2p_identity.exit: ; preds = %.lr.ph61.preheader, %.lr.ph61, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtNtBb_5slice4iter4IterhENCINvNtCsk7Z1gFMStHv_4bs586encode11encode_intoRShE0ENtNtNtB9_6traits8iterator8Iterator4nextCs2iisHxfqoT7_15libp2p_identity.exit, %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCs2iisHxfqoT7_15libp2p_identity.exit11.i, %middle.block, %vec.epilog.middle.block, %bb.a, %bb.c, %._crit_edge76
  %.sroa.4.0 = phi i64 [ undef, %.lr.ph61 ], [ %.sroa.03.1.lcssa, %middle.block ], [ %.sroa.03.1.lcssa, %._crit_edge76 ], [ 0, %bb.a ], [ 0, %bb.c ], [ undef, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtNtBb_5slice4iter4IterhENCINvNtCsk7Z1gFMStHv_4bs586encode11encode_intoRShE0ENtNtNtB9_6traits8iterator8Iterator4nextCs2iisHxfqoT7_15libp2p_identity.exit ], [ %.sroa.03.1.lcssa, %vec.epilog.middle.block ], [ %.sroa.03.1.lcssa, %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCs2iisHxfqoT7_15libp2p_identity.exit11.i ], [ undef, %.lr.ph61.preheader ]
  %.sroa.0.0 = phi i64 [ 1, %.lr.ph61 ], [ 0, %middle.block ], [ 0, %._crit_edge76 ], [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtNtBb_5slice4iter4IterhENCINvNtCsk7Z1gFMStHv_4bs586encode11encode_intoRShE0ENtNtNtB9_6traits8iterator8Iterator4nextCs2iisHxfqoT7_15libp2p_identity.exit ], [ 0, %vec.epilog.middle.block ], [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCs2iisHxfqoT7_15libp2p_identity.exit11.i ], [ 1, %.lr.ph61.preheader ]
  %i.ak = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.al = insertvalue { i64, i64 } %i.ak, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.al

bb.g:                                             ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtNtBb_5slice4iter4IterhENCINvNtCsk7Z1gFMStHv_4bs586encode11encode_intoRShE0ENtNtNtB9_6traits8iterator8Iterator4nextCs2iisHxfqoT7_15libp2p_identity.exit
  %exitcond90.not = icmp eq i64 %.sroa.03.168, %umax89
  br i1 %exitcond90.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.03.168
  store i8 0, ptr %i.am, align 1
  %i.an = add i64 %.sroa.03.168, 1                ; 2 uses
  %i.ao = icmp eq ptr %i.e, %i.a
  br i1 %i.ao, label %._crit_edge, label %.lr.ph69

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax89, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #17
  unreachable

bb.j:                                             ; preds = %.lr.ph65
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.03.064, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #17
  unreachable

bb.k:                                             ; preds = %.lr.ph65
  %i.ap = load i8, ptr %.sroa.034.063, align 1, !noundef !4
  %i.aq = zext i8 %i.ap to i64                    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.03.064
  %i.as = icmp samesign eq i64 %.sroa.03.064, 0
  br i1 %i.as, label %.preheader47.a, label %.lr.ph

.preheader47.a:                                   ; preds = %.lr.ph, %bb.k
  %.sroa.015.0.lcssa.a = phi i64 [ %i.aq, %bb.k ], [ %i.bb, %.lr.ph ] ; 2 uses
  %.not3258.a = icmp eq i64 %.sroa.015.0.lcssa.a, 0
  br i1 %.not3258.a, label %.loopexit, label %.lr.ph61.preheader

.lr.ph61.preheader:                               ; preds = %.preheader47.a
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.03.064, i64 %3) ; 2 uses
  %i.at = icmp eq i64 %.sroa.03.064, %3
  br i1 %i.at, label %_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswaphECs2iisHxfqoT7_15libp2p_identity.exit, label %.lr.ph123

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %.sroa.015.057 = phi i64 [ %i.bb, %.lr.ph ], [ %i.aq, %bb.k ]
  %.sroa.021.056 = phi ptr [ %i.au, %.lr.ph ], [ %2, %bb.k ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.021.056, i64 1 ; 2 uses
  %i.av = load i8, ptr %.sroa.021.056, align 1, !noundef !4
  %i.aw = zext i8 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 8
  %i.ay = add nuw nsw i64 %i.ax, %.sroa.015.057   ; 2 uses
  %i.az = urem i64 %i.ay, 58
  %i.ba = trunc nuw nsw i64 %i.az to i8
  store i8 %i.ba, ptr %.sroa.021.056, align 1
  %i.bb = udiv i64 %i.ay, 58                      ; 2 uses
  %i.bc = icmp eq ptr %i.au, %i.ar
  br i1 %i.bc, label %.preheader47.a, label %.lr.ph

.lr.ph61:                                         ; preds = %bb.l
  %i.bd = icmp eq i64 %i.bi, %3
  br i1 %i.bd, label %_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswaphECs2iisHxfqoT7_15libp2p_identity.exit, label %.lr.ph123

.lr.ph123:                                        ; preds = %.lr.ph61.preheader, %.lr.ph61
  %.sroa.015.159122 = phi i64 [ %i.bf, %.lr.ph61 ], [ %.sroa.015.0.lcssa.a, %.lr.ph61.preheader ] ; 3 uses
  %.sroa.03.260121 = phi i64 [ %i.bi, %.lr.ph61 ], [ %.sroa.03.064, %.lr.ph61.preheader ] ; 3 uses
  %exitcond.not = icmp eq i64 %.sroa.03.260121, %umax
  br i1 %exitcond.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph123
  %i.be = urem i64 %.sroa.015.159122, 58
  %i.bf = udiv i64 %.sroa.015.159122, 58
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.03.260121
  %i.bh = trunc nuw nsw i64 %i.be to i8
  store i8 %i.bh, ptr %i.bg, align 1
  %i.bi = add i64 %.sroa.03.260121, 1             ; 3 uses
  %.not32 = icmp samesign ult i64 %.sroa.015.159122, 58
  br i1 %.not32, label %.loopexit, label %.lr.ph61

bb.m:                                             ; preds = %.lr.ph123
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2iisHxfqoT7_15libp2p_identity.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2iisHxfqoT7_15libp2p_identity.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsk7Z1gFMStHv_4bs586encode13EncodeBuilderINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2iisHxfqoT7_15libp2p_identity.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2iisHxfqoT7_15libp2p_identity.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string13FromUtf8ErrorECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2iisHxfqoT7_15libp2p_identity.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2iisHxfqoT7_15libp2p_identity.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2iisHxfqoT7_15libp2p_identity.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2iisHxfqoT7_15libp2p_identity.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB5_6ClonedINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterhEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1O_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB31_3VechE14extend_trustedBP_E0E0ECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.04.0.copyload = load ptr, ptr %0, align 8, !alias.scope !47 ; 4 uses
  %.sroa.04.0.copyload12 = ptrtoaddr ptr %.sroa.04.0.copyload to i64 ; 2 uses
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.45.0.copyload = load ptr, ptr %.sroa.45.0..sroa_idx, align 8, !alias.scope !47 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !47 ; 5 uses
  %.sroa.08.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.49.0.copyload = load i64, ptr %.sroa.49.0..sroa_idx, align 8 ; 9 uses
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.510.0.copyload = load ptr, ptr %.sroa.510.0..sroa_idx, align 8 ; 4 uses
  %.sroa.510.0.copyload11 = ptrtoaddr ptr %.sroa.510.0.copyload to i64
  %.not.i = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %.not.i, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a, %bb.b
  %i.a = phi ptr [ %i.ah, %bb.b ], [ %.sroa.04.0.copyload, %bb.a ] ; 5 uses
  %i.b = icmp eq ptr %i.a, %.sroa.45.0.copyload
  br i1 %i.b, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRhhuNvYhNtNtBb_5clone5Clone5cloneNCINvNvB1r_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3y_3VechE14extend_trustedINtNtB7_6cloned6ClonedBN_EE0E0E0ECs2iisHxfqoT7_15libp2p_identity.exit, label %iter.check

iter.check:                                       ; preds = %._crit_edge.i
  %i.c = ptrtoint ptr %.sroa.45.0.copyload to i64 ; 2 uses
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = add i64 %.sroa.5.0.copyload, %.sroa.04.0.copyload12
  %i.g = sub i64 %i.c, %i.f                       ; 7 uses
  %min.iters.check = icmp ult i64 %i.g, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.h = add i64 %.sroa.49.0.copyload, %.sroa.510.0.copyload11
  %i.i = add i64 %.sroa.5.0.copyload, %.sroa.04.0.copyload12
  %i.j = sub i64 %i.i, %i.h
  %diff.check = icmp ugt i64 %i.j, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check13 = icmp ult i64 %i.g, 32
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %i.g, 28
  %n.vec = and i64 %i.g, -32                      ; 5 uses
  %i.l = add i64 %.sroa.49.0.copyload, %n.vec     ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.510.0.copyload, i64 %.sroa.49.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <16 x i8>, ptr %i.n, align 1, !alias.scope !48, !noalias !49
  %wide.load14 = load <16 x i8>, ptr %i.o, align 1, !alias.scope !48, !noalias !49
  %i.p = getelementptr i8, ptr %i.m, i64 %index   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <16 x i8> %wide.load, ptr %i.p, align 1, !noalias !50
  store <16 x i8> %wide.load14, ptr %i.q, align 1, !noalias !50
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRhhuNvYhNtNtBb_5clone5Clone5cloneNCINvNvB1r_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3y_3VechE14extend_trustedINtNtB7_6cloned6ClonedBN_EE0E0E0ECs2iisHxfqoT7_15libp2p_identity.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !51

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %i.g, -4                     ; 4 uses
  %i.s = add i64 %.sroa.49.0.copyload, %n.vec15   ; 2 uses
  %i.t = getelementptr i8, ptr %.sroa.510.0.copyload, i64 %.sroa.49.0.copyload
end_hunk_0
