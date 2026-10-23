Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_identity-5e80b8a305d72f27.libp2p_identity.1abb955c5c513e7b-cgu.2?download=true
inline.NumInlined: 86
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
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
  br i1 %i.b, label %_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswaphECs2iisHxfqoT7_15libp2p_identity.exit, label %.lr.ph65.preheader

.lr.ph65.preheader:                               ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 1
  br label %.lr.ph65

.loopexit:                                        ; preds = %bb.l, %.preheader47
  %.sroa.03.2.lcssa = phi i64 [ %.sroa.03.064, %.preheader47 ], [ %i.by, %bb.l ] ; 3 uses
  %i.d = icmp eq ptr %i.e, %i.a
  br i1 %i.d, label %.lr.ph69.preheader, label %.lr.ph65

.lr.ph69.preheader:                               ; preds = %.loopexit
  %umax89 = tail call i64 @llvm.umax.i64(i64 %.sroa.03.2.lcssa, i64 %3) ; 2 uses
  br label %.lr.ph69

.lr.ph65:                                         ; preds = %.lr.ph65.preheader, %.loopexit
  %.sroa.03.064 = phi i64 [ %.sroa.03.2.lcssa, %.loopexit ], [ 0, %.lr.ph65.preheader ] ; 10 uses
  %.sroa.034.063 = phi ptr [ %i.e, %.loopexit ], [ %0, %.lr.ph65.preheader ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.034.063, i64 1 ; 2 uses
  %.not31 = icmp ugt i64 %.sroa.03.064, %3
  br i1 %.not31, label %bb.j, label %bb.k, !prof !22

.lr.ph69:                                         ; preds = %.lr.ph69.preheader, %bb.h
  %.sroa.03.168 = phi i64 [ %i.ao, %bb.h ], [ %.sroa.03.2.lcssa, %.lr.ph69.preheader ] ; 5 uses
  %.sroa.037.067 = phi ptr [ %i.f, %bb.h ], [ %0, %.lr.ph69.preheader ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.037.067, i64 1 ; 2 uses
  %i.g = load i8, ptr %.sroa.037.067, align 1, !noalias !23, !noundef !4
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtNtBb_5slice4iter4IterhENCINvNtCsk7Z1gFMStHv_4bs586encode11encode_intoRShE0ENtNtNtB9_6traits8iterator8Iterator4nextCs2iisHxfqoT7_15libp2p_identity.exit, label %._crit_edge

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtNtBb_5slice4iter4IterhENCINvNtCsk7Z1gFMStHv_4bs586encode11encode_intoRShE0ENtNtNtB9_6traits8iterator8Iterator4nextCs2iisHxfqoT7_15libp2p_identity.exit: ; preds = %.lr.ph69
  %i.i = icmp eq i64 %.sroa.03.168, %3
  br i1 %i.i, label %_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswaphECs2iisHxfqoT7_15libp2p_identity.exit, label %bb.g

._crit_edge:                                      ; preds = %bb.h, %.lr.ph69
  %.sroa.03.1.lcssa = phi i64 [ %.sroa.03.168, %.lr.ph69 ], [ %i.ao, %bb.h ] ; 12 uses
  %.not30 = icmp ugt i64 %.sroa.03.1.lcssa, %3
  br i1 %.not30, label %bb.b, label %bb.c, !prof !24

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.03.1.lcssa, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #17
  unreachable

bb.c:                                             ; preds = %._crit_edge
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.03.1.lcssa ; 4 uses
  %i.k = icmp samesign eq i64 %.sroa.03.1.lcssa, 0
  br i1 %i.k, label %_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswaphECs2iisHxfqoT7_15libp2p_identity.exit, label %.lr.ph75

.lr.ph75:                                         ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 128
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph75, %bb.e
  %.sroa.023.073 = phi ptr [ %2, %.lr.ph75 ], [ %i.p, %bb.e ] ; 3 uses
  %i.m = load i8, ptr %.sroa.023.073, align 1, !noundef !4 ; 2 uses
  %i.n = zext i8 %i.m to i64                      ; 2 uses
  %i.o = icmp ult i8 %i.m, 58
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.023.073, i64 1 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.n
  %i.r = load i8, ptr %i.q, align 1, !noundef !4
  store i8 %i.r, ptr %.sroa.023.073, align 1
  %i.s = icmp eq ptr %i.p, %i.j
  br i1 %i.s, label %._crit_edge76, label %bb.d

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef 58, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #17
  unreachable

._crit_edge76:                                    ; preds = %bb.e
  %i.t = lshr i64 %.sroa.03.1.lcssa, 1            ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswaphECs2iisHxfqoT7_15libp2p_identity.exit, label %iter.check

iter.check:                                       ; preds = %._crit_edge76
  %min.iters.check = icmp ult i64 %.sroa.03.1.lcssa, 8
  br i1 %min.iters.check, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCs2iisHxfqoT7_15libp2p_identity.exit11.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check124 = icmp ult i64 %.sroa.03.1.lcssa, 32
  br i1 %min.iters.check124, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.t, 9223372036854775792      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.u = xor i64 %index, -1
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.w = getelementptr i8, ptr %i.j, i64 %i.u
  %wide.load = load <16 x i8>, ptr %i.v, align 1, !alias.scope !25
  %i.x = getelementptr i8, ptr %i.w, i64 -15      ; 2 uses
  %wide.load125 = load <16 x i8>, ptr %i.x, align 1, !alias.scope !26
  %reverse = shufflevector <16 x i8> %wide.load125, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %i.v, align 1, !alias.scope !25
  %reverse126.a = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse126.a, ptr %i.x, align 1, !alias.scope !26
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswaphECs2iisHxfqoT7_15libp2p_identity.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.z = and i64 %.sroa.03.1.lcssa, 24
  %min.epilog.iters.check = icmp eq i64 %i.z, 0
  br i1 %min.epilog.iters.check, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCs2iisHxfqoT7_15libp2p_identity.exit11.i.preheader, label %vec.epilog.ph, !prof !27

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec127 = and i64 %i.t, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index128 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next133, %vec.epilog.vector.body ] ; 3 uses
  %i.aa = xor i64 %index128, -1
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %index128 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.j, i64 %i.aa
  %wide.load129 = load <4 x i8>, ptr %i.ab, align 1, !alias.scope !25
  %i.ad = getelementptr i8, ptr %i.ac, i64 -3     ; 2 uses
  %wide.load130 = load <4 x i8>, ptr %i.ad, align 1, !alias.scope !26
  %reverse131 = shufflevector <4 x i8> %wide.load130, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %reverse131, ptr %i.ab, align 1, !alias.scope !25
  %reverse132 = shufflevector <4 x i8> %wide.load129, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %reverse132, ptr %i.ad, align 1, !alias.scope !26
  %index.next133 = add nuw i64 %index128, 4       ; 2 uses
  %i.ae = icmp eq i64 %index.next133, %n.vec127
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !20

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n134 = icmp eq i64 %i.t, %n.vec127
  br i1 %cmp.n134, label %_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswaphECs2iisHxfqoT7_15libp2p_identity.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCs2iisHxfqoT7_15libp2p_identity.exit11.i.preheader

_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCs2iisHxfqoT7_15libp2p_identity.exit11.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.016.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec127, %vec.epilog.middle.block ]
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCs2iisHxfqoT7_15libp2p_identity.exit11.i

_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCs2iisHxfqoT7_15libp2p_identity.exit11.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCs2iisHxfqoT7_15libp2p_identity.exit11.i.preheader, %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCs2iisHxfqoT7_15libp2p_identity.exit11.i
  %.sroa.0.016.i = phi i64 [ %i.ak, %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCs2iisHxfqoT7_15libp2p_identity.exit11.i ], [ %.sroa.0.016.i.ph, %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCs2iisHxfqoT7_15libp2p_identity.exit11.i.preheader ] ; 3 uses
  %i.af = xor i64 %.sroa.0.016.i, -1
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.016.i ; 2 uses
  %i.ah = getelementptr i8, ptr %i.j, i64 %i.af   ; 2 uses
  %i.ai = load i8, ptr %i.ag, align 1, !alias.scope !25, !noundef !4
  %i.aj = load i8, ptr %i.ah, align 1, !alias.scope !26
  store i8 %i.aj, ptr %i.ag, align 1, !alias.scope !25
  store i8 %i.ai, ptr %i.ah, align 1, !alias.scope !26
  %i.ak = add nuw nsw i64 %.sroa.0.016.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ak, %i.t
  br i1 %exitcond.not.i, label %_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswaphECs2iisHxfqoT7_15libp2p_identity.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCs2iisHxfqoT7_15libp2p_identity.exit11.i, !llvm.loop !21

_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswaphECs2iisHxfqoT7_15libp2p_identity.exit: ; preds = %.lr.ph61.preheader, %.lr.ph61, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtNtBb_5slice4iter4IterhENCINvNtCsk7Z1gFMStHv_4bs586encode11encode_intoRShE0ENtNtNtB9_6traits8iterator8Iterator4nextCs2iisHxfqoT7_15libp2p_identity.exit, %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCs2iisHxfqoT7_15libp2p_identity.exit11.i, %middle.block, %vec.epilog.middle.block, %bb.a, %bb.c, %._crit_edge76
  %.sroa.4.0 = phi i64 [ undef, %.lr.ph61 ], [ %.sroa.03.1.lcssa, %middle.block ], [ %.sroa.03.1.lcssa, %._crit_edge76 ], [ 0, %bb.a ], [ 0, %bb.c ], [ undef, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtNtBb_5slice4iter4IterhENCINvNtCsk7Z1gFMStHv_4bs586encode11encode_intoRShE0ENtNtNtB9_6traits8iterator8Iterator4nextCs2iisHxfqoT7_15libp2p_identity.exit ], [ %.sroa.03.1.lcssa, %vec.epilog.middle.block ], [ %.sroa.03.1.lcssa, %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCs2iisHxfqoT7_15libp2p_identity.exit11.i ], [ undef, %.lr.ph61.preheader ]
  %.sroa.0.0 = phi i64 [ 1, %.lr.ph61 ], [ 0, %middle.block ], [ 0, %._crit_edge76 ], [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtNtBb_5slice4iter4IterhENCINvNtCsk7Z1gFMStHv_4bs586encode11encode_intoRShE0ENtNtNtB9_6traits8iterator8Iterator4nextCs2iisHxfqoT7_15libp2p_identity.exit ], [ 0, %vec.epilog.middle.block ], [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCs2iisHxfqoT7_15libp2p_identity.exit11.i ], [ 1, %.lr.ph61.preheader ]
  %i.al = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.am = insertvalue { i64, i64 } %i.al, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.am

bb.g:                                             ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtNtBb_5slice4iter4IterhENCINvNtCsk7Z1gFMStHv_4bs586encode11encode_intoRShE0ENtNtNtB9_6traits8iterator8Iterator4nextCs2iisHxfqoT7_15libp2p_identity.exit
  %exitcond90.not = icmp eq i64 %.sroa.03.168, %umax89
  br i1 %exitcond90.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.03.168
  store i8 0, ptr %i.an, align 1
  %i.ao = add i64 %.sroa.03.168, 1                ; 2 uses
  %i.ap = icmp eq ptr %i.f, %i.a
  br i1 %i.ap, label %._crit_edge, label %.lr.ph69

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax89, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #17
  unreachable

bb.j:                                             ; preds = %.lr.ph65
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.03.064, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #17
  unreachable

bb.k:                                             ; preds = %.lr.ph65
  %i.aq = load i8, ptr %.sroa.034.063, align 1, !noundef !4
  %i.ar = zext i8 %i.aq to i64                    ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.03.064
  %i.at = icmp samesign eq i64 %.sroa.03.064, 0
  br i1 %i.at, label %.preheader47, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.k
  %xtraiter = and i64 %.sroa.03.064, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.au = load i8, ptr %2, align 1, !noundef !4
  %i.av = zext i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 8
  %i.ax = or disjoint i64 %i.aw, %i.ar            ; 2 uses
  %i.ay = urem i64 %i.ax, 58
  %i.az = trunc nuw nsw i64 %i.ay to i8
  store i8 %i.az, ptr %2, align 1
  %i.ba = udiv i64 %i.ax, 58                      ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa139.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.ba, %.lr.ph.prol ]
  %.sroa.015.057.unr = phi i64 [ %i.ar, %.lr.ph.preheader ], [ %i.ba, %.lr.ph.prol ]
  %.sroa.021.056.unr = phi ptr [ %2, %.lr.ph.preheader ], [ %i.c, %.lr.ph.prol ]
  %i.bb = icmp eq i64 %.sroa.03.064, 1
  br i1 %i.bb, label %.preheader47, label %.lr.ph

.preheader47:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.k
  %.sroa.015.0.lcssa = phi i64 [ %i.ar, %bb.k ], [ %.lcssa139.unr, %.lr.ph.prol.loopexit ], [ %i.bs, %.lr.ph ] ; 2 uses
  %.not3258 = icmp eq i64 %.sroa.015.0.lcssa, 0
  br i1 %.not3258, label %.loopexit, label %.lr.ph61.preheader

.lr.ph61.preheader:                               ; preds = %.preheader47
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.03.064, i64 %3) ; 2 uses
  %i.bc = icmp eq i64 %.sroa.03.064, %3
  br i1 %i.bc, label %_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswaphECs2iisHxfqoT7_15libp2p_identity.exit, label %.lr.ph123

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.015.057 = phi i64 [ %i.bs, %.lr.ph ], [ %.sroa.015.057.unr, %.lr.ph.prol.loopexit ]
  %.sroa.021.056 = phi ptr [ %i.bl, %.lr.ph ], [ %.sroa.021.056.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.021.056, i64 1 ; 2 uses
  %i.be = load i8, ptr %.sroa.021.056, align 1, !noundef !4
  %i.bf = zext i8 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 8
  %i.bh = add nuw nsw i64 %i.bg, %.sroa.015.057   ; 2 uses
  %i.bi = urem i64 %i.bh, 58
  %i.bj = trunc nuw nsw i64 %i.bi to i8
  store i8 %i.bj, ptr %.sroa.021.056, align 1
  %i.bk = udiv i64 %i.bh, 58
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.021.056, i64 2 ; 2 uses
  %i.bm = load i8, ptr %i.bd, align 1, !noundef !4
  %i.bn = zext i8 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, 8
  %i.bp = add nuw nsw i64 %i.bo, %i.bk            ; 2 uses
  %i.bq = urem i64 %i.bp, 58
  %i.br = trunc nuw nsw i64 %i.bq to i8
  store i8 %i.br, ptr %i.bd, align 1
  %i.bs = udiv i64 %i.bp, 58                      ; 2 uses
  %i.bt = icmp eq ptr %i.bl, %i.as
  br i1 %i.bt, label %.preheader47, label %.lr.ph

.lr.ph61:                                         ; preds = %bb.l
  %5 = icmp eq i64 %i.by, %3
  br i1 %5, label %_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswaphECs2iisHxfqoT7_15libp2p_identity.exit, label %.lr.ph123

.lr.ph123:                                        ; preds = %.lr.ph61.preheader, %.lr.ph61
  %.sroa.015.159122 = phi i64 [ %i.bv, %.lr.ph61 ], [ %.sroa.015.0.lcssa, %.lr.ph61.preheader ] ; 3 uses
  %.sroa.03.260121 = phi i64 [ %i.by, %.lr.ph61 ], [ %.sroa.03.064, %.lr.ph61.preheader ] ; 3 uses
  %exitcond.not = icmp eq i64 %.sroa.03.260121, %umax
  br i1 %exitcond.not, label %6, label %bb.l

bb.l:                                             ; preds = %.lr.ph123
  %i.bu = urem i64 %.sroa.015.159122, 58
  %i.bv = udiv i64 %.sroa.015.159122, 58
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.03.260121
  %i.bx = trunc nuw nsw i64 %i.bu to i8
  store i8 %i.bx, ptr %i.bw, align 1
  %i.by = add i64 %.sroa.03.260121, 1             ; 3 uses
  %.not32 = icmp samesign ult i64 %.sroa.015.159122, 58
  br i1 %.not32, label %.loopexit, label %.lr.ph61

6:                                                ; preds = %.lr.ph123
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
  %.sroa.04.0.copyload13 = ptrtoaddr ptr %.sroa.04.0.copyload to i64 ; 2 uses
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.45.0.copyload = load ptr, ptr %.sroa.45.0..sroa_idx, align 8, !alias.scope !47 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !47 ; 5 uses
  %.sroa.08.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.49.0.copyload = load i64, ptr %.sroa.49.0..sroa_idx, align 8 ; 9 uses
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.510.0.copyload = load ptr, ptr %.sroa.510.0..sroa_idx, align 8 ; 4 uses
  %.sroa.510.0.copyload14 = ptrtoaddr ptr %.sroa.510.0.copyload to i64
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
  %i.f = add i64 %.sroa.5.0.copyload, %.sroa.04.0.copyload13
  %i.g = sub i64 %i.c, %i.f                       ; 7 uses
  %min.iters.check = icmp ult i64 %i.g, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.h = add i64 %.sroa.5.0.copyload, %.sroa.04.0.copyload13
  %i.i = add i64 %.sroa.49.0.copyload, %.sroa.510.0.copyload14
  %i.j = sub i64 %i.h, %i.i
  %diff.check = icmp ugt i64 %i.j, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check15 = icmp ult i64 %i.g, 32
  br i1 %min.iters.check15, label %vec.epilog.ph, label %vector.ph

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
  %wide.load16 = load <16 x i8>, ptr %i.o, align 1, !alias.scope !48, !noalias !49
  %i.p = getelementptr i8, ptr %i.m, i64 %index   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <16 x i8> %wide.load, ptr %i.p, align 1, !noalias !50
  store <16 x i8> %wide.load16, ptr %i.q, align 1, !noalias !50
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
  %n.vec17 = and i64 %i.g, -4                     ; 4 uses
  %i.s = add i64 %.sroa.49.0.copyload, %n.vec17   ; 2 uses
  %i.t = getelementptr i8, ptr %.sroa.510.0.copyload, i64 %.sroa.49.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next20, %vec.epilog.vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %index18
  %wide.load19 = load <4 x i8>, ptr %i.u, align 1, !alias.scope !48, !noalias !49
  %i.v = getelementptr i8, ptr %i.t, i64 %index18
  store <4 x i8> %wide.load19, ptr %i.v, align 1, !noalias !50
  %index.next20 = add nuw i64 %index18, 4         ; 2 uses
  %i.w = icmp eq i64 %index.next20, %n.vec17
  br i1 %i.w, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !45

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n21 = icmp eq i64 %i.g, %n.vec17
  br i1 %cmp.n21, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRhhuNvYhNtNtBb_5clone5Clone5cloneNCINvNvB1r_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3y_3VechE14extend_trustedINtNtB7_6cloned6ClonedBN_EE0E0E0ECs2iisHxfqoT7_15libp2p_identity.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.49.0.copyload, %iter.check ], [ %.sroa.49.0.copyload, %vector.memcheck ], [ %i.l, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ]
  %.sroa.01.0.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec17, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.x = phi i64 [ %i.aa, %vec.epilog.scalar.ph ], [ %.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i = phi i64 [ %i.ab, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.i
  %.val15.i.i = load i8, ptr %i.y, align 1, !alias.scope !48, !noalias !49, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.510.0.copyload, i64 %i.x
  store i8 %.val15.i.i, ptr %i.z, align 1, !noalias !50
  %i.aa = add i64 %i.x, 1                         ; 2 uses
  %i.ab = add nuw i64 %.sroa.01.0.i.i, 1          ; 2 uses
  %i.ac = icmp eq i64 %i.ab, %i.e
  br i1 %i.ac, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRhhuNvYhNtNtBb_5clone5Clone5cloneNCINvNvB1r_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3y_3VechE14extend_trustedINtNtB7_6cloned6ClonedBN_EE0E0E0ECs2iisHxfqoT7_15libp2p_identity.exit, label %vec.epilog.scalar.ph, !llvm.loop !46

bb.b:                                             ; preds = %bb.a
  %i.ad = add i64 %.sroa.5.0.copyload, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.45.0.copyload) ]
  %i.ae = ptrtoint ptr %.sroa.45.0.copyload to i64
  %i.af = ptrtoint ptr %.sroa.04.0.copyload to i64
  %i.ag = sub nuw i64 %i.ae, %i.af
  %.not.i.not.i = icmp ult i64 %i.ad, %i.ag
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload, i64 %.sroa.5.0.copyload
  br i1 %.not.i.not.i, label %._crit_edge.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRhhuNvYhNtNtBb_5clone5Clone5cloneNCINvNvB1r_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3y_3VechE14extend_trustedINtNtB7_6cloned6ClonedBN_EE0E0E0ECs2iisHxfqoT7_15libp2p_identity.exit

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRhhuNvYhNtNtBb_5clone5Clone5cloneNCINvNvB1r_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3y_3VechE14extend_trustedINtNtB7_6cloned6ClonedBN_EE0E0E0ECs2iisHxfqoT7_15libp2p_identity.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.b, %._crit_edge.i
  %.sroa.49.0.copyload.sink = phi i64 [ %.sroa.49.0.copyload, %bb.b ], [ %.sroa.49.0.copyload, %._crit_edge.i ], [ %i.s, %vec.epilog.middle.block ], [ %i.l, %middle.block ], [ %i.aa, %vec.epilog.scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.copyload) ]
  store i64 %.sroa.49.0.copyload.sink, ptr %.sroa.08.0.copyload, align 8, !noalias !52
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs2_NtCs5wSrZkEBHYe_4ring9signatureINtB5_17UnparsedPublicKeyRINtNtCsexYYUdYSQU6_5alloc3vec3VechEE6verifyCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 {
bb.a:
  tail call void @_RNvNtNtNtCs5wSrZkEBHYe_4ring3cpu5intel12featureflags11get_or_init()
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !align !7, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.d, align 8, !nonnull !4, !align !7, !noundef !4 ; 2 uses
  %i.e = getelementptr i8, ptr %.val, i64 8
  %.val.i = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr i8, ptr %.val, i64 16
  %.val1.i = load i64, ptr %i.f, align 8, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !4, !nonnull !4
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) #19
  ret i1 %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtCsk7Z1gFMStHv_4bs586encodeINtB5_13EncodeBuilderINtNtCsexYYUdYSQU6_5alloc3vec3VechEE11into_stringCs2iisHxfqoT7_15libp2p_identity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.6.sroa.0.i.i.i = alloca [16 x i8], align 8 ; 6 uses
  %.sroa.0.i.i.i = alloca [16 x i8], align 8      ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !71
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.h, align 8, !alias.scope !69, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load i64, ptr %i.i, align 8, !alias.scope !69, !noundef !4 ; 3 uses
  store ptr %.val.i, ptr %i.f, align 8, !noalias !71
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.val1.i, ptr %i.j, align 8, !noalias !71
  %i.k = add i64 %.val1.i, 1
  %i.l = lshr i64 %i.k, 1
  %i.m = add i64 %i.l, %.val1.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !69, !nonnull !4, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !74
  store i64 0, ptr %i.g, align 8, !alias.scope !75, !noalias !76
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !75, !noalias !76
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !75, !noalias !76
  %i.p = invoke { i64, i64 } @_RINvXs_NtCsk7Z1gFMStHv_4bs586encodeINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_12EncodeTarget11encode_withNCINvMs3_B5_INtB5_13EncodeBuilderBx_E4ontoQNtNtBC_6string6StringE0ECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(186) %i.o)
          to label %bb.c unwind label %bb.t, !noalias !77

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.t, %.thread.i.i.i, %bb.m, %bb.h, %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.q, %bb.b ], [ %i.t, %bb.e ], [ %eh.lpad-body17.i.i.i, %.thread.i.i.i ], [ %i.al, %bb.t ], [ %i.z, %bb.h ], [ %i.ag, %bb.m ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsk7Z1gFMStHv_4bs586encode13EncodeBuilderINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #20
          to label %.body unwind label %bb.y

bb.c:                                             ; preds = %bb.a
  %i.r = extractvalue { i64, i64 } %i.p, 0
  %i.s = trunc nuw i64 %i.r to i1                 ; 2 uses
  br i1 %i.s, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i.i.i unwind label %bb.e, !noalias !77

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body.i unwind label %bb.f, !noalias !77

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !77
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i.i.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.v unwind label %bb.b, !noalias !71

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.0.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !73
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !80
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !79, !noalias !73, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !79, !noalias !73, !noundef !4 ; 2 uses
  invoke void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %i.y)
          to label %bb.i unwind label %bb.h, !noalias !81

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #20
          to label %.body.i unwind label %bb.j, !noalias !82

bb.i:                                             ; preds = %bb.g
  %i.aa = load i64, ptr %i.b, align 8, !range !8, !noalias !80, !noundef !4
  %i.ab = trunc nuw i64 %i.aa to i1
  br i1 %i.ab, label %bb.k, label %.thread35.i.i.i

.thread35.i.i.i:                                  ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !alias.scope !83, !noalias !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !73
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !82
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ae = load <2 x i64>, ptr %i.ad, align 8, !noalias !80
  %i.af = load i64, ptr %i.ad, align 8, !noalias !80
  %.sroa.022.0.copyload.i.i.i = load i64, ptr %i.d, align 8, !noalias !84 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !noalias !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !73
  call void @llvm.experimental.noalias.scope.decl(metadata !85)
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %.not.i.i.i.i = icmp eq i64 %.sroa.022.0.copyload.i.i.i, -1
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.l, !prof !87

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !88
  store i64 %.sroa.022.0.copyload.i.i.i, ptr %i.c, align 8, !noalias !89
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0.i.i.i, i64 16, i1 false), !noalias !89
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store <2 x i64> %i.ae, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !89
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #21
          to label %bb.n unwind label %bb.m, !noalias !90

bb.m:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string13FromUtf8ErrorECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c) #20
          to label %.body.i unwind label %bb.o, !noalias !90

bb.n:                                             ; preds = %bb.l
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !90
  unreachable

bb.p:                                             ; preds = %bb.k, %.thread35.i.i.i
  %.sroa.6.sroa.6.0.i.i.i = phi i64 [ %i.af, %bb.k ], [ %i.y, %.thread35.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0.i.i.i, i64 16, i1 false), !alias.scope !91, !noalias !73
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0.i.i.i)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i.i.i.i unwind label %bb.q, !noalias !69

bb.q:                                             ; preds = %bb.p
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.thread.i.i.i unwind label %bb.r, !noalias !69

bb.r:                                             ; preds = %bb.q
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !69
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i.i.i.i: ; preds = %bb.p
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2iisHxfqoT7_15libp2p_identity.exit.i.i.i unwind label %bb.s, !noalias !69

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i.i.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.s, %bb.q
  %eh.lpad-body17.i.i.i = phi { ptr, i32 } [ %i.ak, %bb.s ], [ %i.ai, %bb.q ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !noalias !74
  store i64 %.sroa.6.sroa.6.0.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !75, !noalias !76
  br label %.body.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2iisHxfqoT7_15libp2p_identity.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !noalias !74
  store i64 %.sroa.6.sroa.6.0.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !75, !noalias !76
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  br label %bb.v

bb.t:                                             ; preds = %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #20
          to label %.body.i unwind label %bb.u, !noalias !77

bb.u:                                             ; preds = %bb.t
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !77
  unreachable

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2iisHxfqoT7_15libp2p_identity.exit.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !71
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsk7Z1gFMStHv_4bs586encode13EncodeBuilderINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2iisHxfqoT7_15libp2p_identity.exit.i unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %.body unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsk7Z1gFMStHv_4bs586encode13EncodeBuilderINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2iisHxfqoT7_15libp2p_identity.exit.i: ; preds = %bb.v
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvMs3_NtCsk7Z1gFMStHv_4bs586encodeINtB6_13EncodeBuilderINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4ontoQNtNtBY_6string6StringECs2iisHxfqoT7_15libp2p_identity.exit unwind label %bb.z

bb.y:                                             ; preds = %.body.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.z:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsk7Z1gFMStHv_4bs586encode13EncodeBuilderINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2iisHxfqoT7_15libp2p_identity.exit.i, %bb.aa
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.w, %bb.z
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.z ], [ %i.an, %bb.w ], [ %eh.lpad-body.i, %.body.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #20
          to label %bb.ac unwind label %bb.ab

_RINvMs3_NtCsk7Z1gFMStHv_4bs586encodeINtB6_13EncodeBuilderINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4ontoQNtNtBY_6string6StringECs2iisHxfqoT7_15libp2p_identity.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsk7Z1gFMStHv_4bs586encode13EncodeBuilderINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2iisHxfqoT7_15libp2p_identity.exit.i
  br i1 %i.s, label %bb.aa, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtCsk7Z1gFMStHv_4bs586encode5ErrorE6unwrapCs2iisHxfqoT7_15libp2p_identity.exit, !prof !9

bb.aa:                                            ; preds = %_RINvMs3_NtCsk7Z1gFMStHv_4bs586encodeINtB6_13EncodeBuilderINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4ontoQNtNtBY_6string6StringECs2iisHxfqoT7_15libp2p_identity.exit
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #17
          to label %.noexc unwind label %bb.z

.noexc:                                           ; preds = %bb.aa
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtCsk7Z1gFMStHv_4bs586encode5ErrorE6unwrapCs2iisHxfqoT7_15libp2p_identity.exit: ; preds = %_RINvMs3_NtCsk7Z1gFMStHv_4bs586encodeINtB6_13EncodeBuilderINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4ontoQNtNtBY_6string6StringECs2iisHxfqoT7_15libp2p_identity.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.ab:                                            ; preds = %.body
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.ac:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E10from_bytesCs2iisHxfqoT7_15libp2p_identity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 9), (16, 24)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = alloca [64 x i8], align 8                ; 10 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.439 = alloca [48 x i8], align 8          ; 2 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i64 %2, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !109
  store ptr %i.e, ptr %i.d, align 8, !noalias !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !111
  call void @_RINvNtCsfPnYm3bSk7z_15unsigned_varint2io8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d), !noalias !112
  %i.g = load i8, ptr %i.b, align 8, !range !113, !noalias !111, !noundef !4 ; 3 uses
  %.not.i.i.i = icmp eq i8 %i.g, 2
  br i1 %.not.i.i.i, label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity.exit.thread.i.i, label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity.exit.i.i

_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity.exit.thread.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noalias !111, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !114
  call void @_RINvNtCsfPnYm3bSk7z_15unsigned_varint2io8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d), !noalias !115
  %i.j = load i8, ptr %i.a, align 8, !range !113, !noalias !114, !noundef !4 ; 3 uses
  %.not.i73.i.i = icmp eq i8 %i.j, 2
  br i1 %.not.i73.i.i, label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity.exit84.thread.i.i, label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity.exit84.i.i

_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity.exit.i.i: ; preds = %bb.a
  %i.k = trunc nuw i8 %i.g to i1                  ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.4.0.copyload.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i, align 1, !noalias !111
  %.sroa.51.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.51.0.copyload.i.i.i = load ptr, ptr %.sroa.51.0..sroa_idx.i.i.i, align 8, !noalias !111, !nonnull !4
  %.sroa.05.0.i.i.i = shl nuw nsw i8 %i.g, 1
  %.sroa.57.0.i.i.i = select i1 %i.k, i8 %.sroa.4.0.copyload.i.i.i, i8 undef
  %i.l = ptrtoint ptr %.sroa.51.0.copyload.i.i.i to i64
  %i.m = select i1 %i.k, i64 undef, i64 %i.l      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !111
  %.sroa.9.8.insert.ext.i = zext nneg i8 %.sroa.05.0.i.i.i to i64
  %.sroa.9.9.insert.ext.i = zext i8 %.sroa.57.0.i.i.i to i64
  %.sroa.9.9.insert.shift.i = shl nuw nsw i64 %.sroa.9.9.insert.ext.i, 8
  %.sroa.9.9.insert.insert.i = or disjoint i64 %.sroa.9.9.insert.shift.i, %.sroa.9.8.insert.ext.i
  %.sroa.18.sroa.0.0.extract.trunc.i = trunc i64 %i.m to i8
  br label %bb.g

_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity.exit84.thread.i.i: ; preds = %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity.exit.thread.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noalias !114, !noundef !4 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !114
  %i.p = icmp ugt i64 %i.o, 64
  br i1 %i.p, label %bb.e, label %bb.b

_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity.exit84.i.i: ; preds = %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity.exit.thread.i.i
  %i.q = trunc nuw i8 %i.j to i1                  ; 2 uses
  %.sroa.4.0..sroa_idx.i74.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.4.0.copyload.i75.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i74.i.i, align 1, !noalias !114
  %.sroa.51.0..sroa_idx.i76.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.51.0.copyload.i77.i.i = load ptr, ptr %.sroa.51.0..sroa_idx.i76.i.i, align 8, !noalias !114, !nonnull !4
  %.sroa.05.0.i78.i.i = shl nuw nsw i8 %i.j, 1
  %.sroa.57.0.i79.i.i = select i1 %i.q, i8 %.sroa.4.0.copyload.i75.i.i, i8 undef
  %i.r = ptrtoint ptr %.sroa.51.0.copyload.i77.i.i to i64
  %i.s = select i1 %i.q, i64 undef, i64 %i.r      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !114
  %.sroa.9.8.insert.ext29.i = zext nneg i8 %.sroa.05.0.i78.i.i to i64
  %.sroa.9.9.insert.ext39.i = zext i8 %.sroa.57.0.i79.i.i to i64
  %.sroa.9.9.insert.shift40.i = shl nuw nsw i64 %.sroa.9.9.insert.ext39.i, 8
  %.sroa.9.9.insert.insert42.i = or disjoint i64 %.sroa.9.9.insert.shift40.i, %.sroa.9.8.insert.ext29.i
  %.sroa.18.sroa.0.0.extract.trunc45.i = trunc i64 %i.s to i8
  br label %bb.g

bb.b:                                             ; preds = %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity.exit84.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false), !noalias !110
  %.val.i.i = load ptr, ptr %i.d, align 8, !noalias !110, !nonnull !4, !align !7, !noundef !4 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !117, !noalias !119, !noundef !4 ; 3 uses
  %i.v = icmp ugt i64 %i.o, %i.u
  %i.w = load ptr, ptr %.val.i.i, align 8, !alias.scope !117, !noalias !119, !nonnull !4, !noundef !4 ; 4 uses
  br i1 %i.v, label %bb.f, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs2iisHxfqoT7_15libp2p_identity.exit.i.i.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs2iisHxfqoT7_15libp2p_identity.exit.i.i.i.i: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  %i.y = sub nuw nsw i64 %i.u, %i.o
  %i.z = icmp eq i64 %i.o, 1
  br i1 %i.z, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs2iisHxfqoT7_15libp2p_identity.exit.i.i.i.i
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull %i.c, i64 noundef range(i64 0, 65) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef range(i64 0, 65) %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23), !noalias !120
  %.sroa.28.i.sroa.4.0..sroa.28.17..sroa_idx.i.sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.28.i.sroa.4.0.copyload.pre = load i8, ptr %.sroa.28.i.sroa.4.0..sroa.28.17..sroa_idx.i.sroa_idx.phi.trans.insert, align 8, !noalias !109
  %.sroa.28.i.sroa.5.0..sroa.28.17..sroa_idx.i.sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %.sroa.28.i.sroa.5.0.copyload.pre = load i56, ptr %.sroa.28.i.sroa.5.0..sroa.28.17..sroa_idx.i.sroa_idx.phi.trans.insert, align 1, !noalias !109
  br label %bb.h

bb.d:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs2iisHxfqoT7_15libp2p_identity.exit.i.i.i.i
  %i.aa = load i8, ptr %i.w, align 1, !noalias !121, !noundef !4
  store i8 %i.aa, ptr %i.c, align 8, !alias.scope !122, !noalias !110
  br label %bb.h

bb.e:                                             ; preds = %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity.exit84.thread.i.i
  %.sroa.18.sroa.0.0.extract.trunc46.i = trunc i64 %i.o to i8
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store ptr %i.ab, ptr %.val.i.i, align 8, !alias.scope !117, !noalias !119
  store i64 0, ptr %i.t, align 8, !alias.scope !117, !noalias !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !110
  br label %bb.g

bb.g:                                             ; preds = %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity.exit.i.i, %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity.exit84.i.i, %bb.e, %bb.f
  %.sroa.18.sroa.10.sroa.0.0.ph.in.in.i = phi i64 [ %i.m, %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity.exit.i.i ], [ %i.s, %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity.exit84.i.i ], [ ptrtoint (ptr @25 to i64), %bb.f ], [ %i.o, %bb.e ]
  %.sroa.18.sroa.0.0.ph.i = phi i8 [ %.sroa.18.sroa.0.0.extract.trunc.i, %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity.exit.i.i ], [ %.sroa.18.sroa.0.0.extract.trunc45.i, %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity.exit84.i.i ], [ ptrtoint (ptr @25 to i8), %bb.f ], [ %.sroa.18.sroa.0.0.extract.trunc46.i, %bb.e ]
  %.sroa.9.0.ph.i = phi i64 [ %.sroa.9.9.insert.insert.i, %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity.exit.i.i ], [ %.sroa.9.9.insert.insert42.i, %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity.exit84.i.i ], [ 0, %bb.f ], [ 1, %bb.e ]
  %.sroa.18.sroa.10.sroa.0.0.ph.in.i = lshr i64 %.sroa.18.sroa.10.sroa.0.0.ph.in.in.i, 8
  %.sroa.18.sroa.10.sroa.0.0.ph.i = trunc nuw i64 %.sroa.18.sroa.10.sroa.0.0.ph.in.i to i56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !109
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.0.ph.i, ptr %i.ac, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.18.sroa.0.0.ph.i, ptr %.sroa.450.0..sroa_idx, align 8
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i56 %.sroa.18.sroa.10.sroa.0.0.ph.i, ptr %.sroa.551.0..sroa_idx, align 1
  br label %bb.j

bb.h:                                             ; preds = %bb.d, %bb.c
  %.sroa.28.i.sroa.5.0.copyload = phi i56 [ 0, %bb.d ], [ %.sroa.28.i.sroa.5.0.copyload.pre, %bb.c ]
  %.sroa.28.i.sroa.4.0.copyload = phi i8 [ 0, %bb.d ], [ %.sroa.28.i.sroa.4.0.copyload.pre, %bb.c ]
  store ptr %i.x, ptr %.val.i.i, align 8, !alias.scope !117, !noalias !119
  store i64 %i.y, ptr %i.t, align 8, !alias.scope !117, !noalias !119
  %.sroa.18.sroa.10.sroa.0.0.copyload53.i = load i64, ptr %i.c, align 8, !noalias !109
  %.sroa.28.i.sroa.6.0..sroa.28.17..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.439, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.28.i.sroa.6.0..sroa.28.17..sroa_idx.i.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !109
  %i.ad = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2iisHxfqoT7_15libp2p_identity.exit

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2iisHxfqoT7_15libp2p_identity.exit: ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.af, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ad, ptr %.sroa.55.0..sroa_idx, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = trunc nuw nsw i64 %i.o to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.18.sroa.10.sroa.0.0.copyload53.i, ptr %i.ah, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.28.i.sroa.4.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i56 %.sroa.28.i.sroa.5.0.copyload, ptr %.sroa.3.0..sroa_idx, align 1
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.439.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.439, i64 48, i1 false)
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.i, ptr %.sroa.540.0..sroa_idx, align 8
  %.sroa.641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %i.ag, ptr %.sroa.641.0..sroa_idx, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2iisHxfqoT7_15libp2p_identity.exit, %bb.i
  %.sink = phi i64 [ 1, %bb.g ], [ 1, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2iisHxfqoT7_15libp2p_identity.exit ], [ 0, %bb.i ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i8, ptr %i.a, align 8, !noundef !4  ; 2 uses
  %i.c = zext i8 %i.b to i64                      ; 2 uses
  %i.d = icmp ult i8 %i.b, 65
  br i1 %i.d, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.c, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.c, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E8to_bytesCs2iisHxfqoT7_15libp2p_identity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 5 uses
  %i.b = alloca [10 x i8], align 1                ; 14 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load i8, ptr %i.e, align 8, !noundef !4  ; 3 uses
  %i.g = zext i8 %i.f to i64                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.h = load i64, ptr %i.c, align 8, !range !8, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !135, !noundef !4 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.o = icmp samesign uge i64 %i.k, %i.g
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.k, ptr %i.d, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.n, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.q, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !136, !noundef !4 ; 10 uses
  %i.t = icmp ult i8 %i.f, 65
  br i1 %i.t, label %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs2iisHxfqoT7_15libp2p_identity.exit.i, label %bb.d, !prof !10

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.g, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #17
          to label %.noexc unwind label %.body

.noexc:                                           ; preds = %bb.d
  unreachable

_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs2iisHxfqoT7_15libp2p_identity.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !137
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.u, i8 0, i64 9, i1 false), !noalias !137
  %i.v = trunc i64 %i.s to i8                     ; 2 uses
  %i.w = or i8 %i.v, -128
  store i8 %i.w, ptr %i.b, align 1, !alias.scope !138, !noalias !137
  %i.x = lshr i64 %i.s, 7                         ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i, label %bb.e

bb.e:                                             ; preds = %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs2iisHxfqoT7_15libp2p_identity.exit.i
  %i.z = trunc i64 %i.x to i8                     ; 2 uses
  %i.aa = or i8 %i.z, -128
  store i8 %i.aa, ptr %i.u, align 1, !alias.scope !138, !noalias !137
  %i.ab = lshr i64 %i.s, 14                       ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.05.0.ptr13.2.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.ad = trunc i64 %i.ab to i8                   ; 2 uses
  %i.ae = or i8 %i.ad, -128
  store i8 %i.ae, ptr %.sroa.05.0.ptr13.2.i.i.i, align 1, !alias.scope !138, !noalias !137
  %i.af = lshr i64 %i.s, 21                       ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.05.0.ptr13.3.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 2 uses
  %i.ah = trunc i64 %i.af to i8                   ; 2 uses
  %i.ai = or i8 %i.ah, -128
  store i8 %i.ai, ptr %.sroa.05.0.ptr13.3.i.i.i, align 1, !alias.scope !138, !noalias !137
  %i.aj = lshr i64 %i.s, 28                       ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.05.0.ptr13.4.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.al = trunc i64 %i.aj to i8                   ; 2 uses
  %i.am = or i8 %i.al, -128
  store i8 %i.am, ptr %.sroa.05.0.ptr13.4.i.i.i, align 1, !alias.scope !138, !noalias !137
  %i.an = lshr i64 %i.s, 35                       ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.05.0.ptr13.5.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 5 ; 2 uses
  %i.ap = trunc i64 %i.an to i8                   ; 2 uses
  %i.aq = or i8 %i.ap, -128
  store i8 %i.aq, ptr %.sroa.05.0.ptr13.5.i.i.i, align 1, !alias.scope !138, !noalias !137
  %i.ar = lshr i64 %i.s, 42                       ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.05.0.ptr13.6.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 6 ; 2 uses
  %i.at = trunc i64 %i.ar to i8                   ; 2 uses
  %i.au = or i8 %i.at, -128
  store i8 %i.au, ptr %.sroa.05.0.ptr13.6.i.i.i, align 1, !alias.scope !138, !noalias !137
  %i.av = lshr i64 %i.s, 49                       ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.05.0.ptr13.7.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 7 ; 2 uses
  %i.ax = trunc i64 %i.av to i8                   ; 2 uses
  %i.ay = or i8 %i.ax, -128
  store i8 %i.ay, ptr %.sroa.05.0.ptr13.7.i.i.i, align 1, !alias.scope !138, !noalias !137
  %i.az = lshr i64 %i.s, 56                       ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.05.0.ptr13.8.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.bb = trunc nuw i64 %i.az to i8               ; 2 uses
  %i.bc = or i8 %i.bb, -128
  store i8 %i.bc, ptr %.sroa.05.0.ptr13.8.i.i.i, align 1, !alias.scope !138, !noalias !137
  %i.bd = icmp sgt i64 %i.s, -1
  br i1 %i.bd, label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.05.0.ptr13.9.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 9 ; 2 uses
  store i8 -127, ptr %.sroa.05.0.ptr13.9.i.i.i, align 1, !alias.scope !138, !noalias !137
  br label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i

_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs2iisHxfqoT7_15libp2p_identity.exit.i
  %.sroa.03.011.lcssa.i.i.i = phi i64 [ 1, %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs2iisHxfqoT7_15libp2p_identity.exit.i ], [ 2, %bb.e ], [ 3, %bb.f ], [ 4, %bb.g ], [ 5, %bb.h ], [ 6, %bb.i ], [ 7, %bb.j ], [ 8, %bb.k ], [ 9, %bb.l ], [ 10, %bb.m ]
  %.sroa.05.0.ptr13.lcssa.i.i.i = phi ptr [ %i.b, %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs2iisHxfqoT7_15libp2p_identity.exit.i ], [ %i.u, %bb.e ], [ %.sroa.05.0.ptr13.2.i.i.i, %bb.f ], [ %.sroa.05.0.ptr13.3.i.i.i, %bb.g ], [ %.sroa.05.0.ptr13.4.i.i.i, %bb.h ], [ %.sroa.05.0.ptr13.5.i.i.i, %bb.i ], [ %.sroa.05.0.ptr13.6.i.i.i, %bb.j ], [ %.sroa.05.0.ptr13.7.i.i.i, %bb.k ], [ %.sroa.05.0.ptr13.8.i.i.i, %bb.l ], [ %.sroa.05.0.ptr13.9.i.i.i, %bb.m ]
  %.lcssa.i.i.i = phi i8 [ %i.v, %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs2iisHxfqoT7_15libp2p_identity.exit.i ], [ %i.z, %bb.e ], [ %i.ad, %bb.f ], [ %i.ah, %bb.g ], [ %i.al, %bb.h ], [ %i.ap, %bb.i ], [ %i.at, %bb.j ], [ %i.ax, %bb.k ], [ %i.bb, %bb.l ], [ 1, %bb.m ]
  store i8 %.lcssa.i.i.i, ptr %.sroa.05.0.ptr13.lcssa.i.i.i, align 1, !alias.scope !138, !noalias !137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !137
  store i16 0, ptr %i.a, align 2, !noalias !137
  store i8 %i.f, ptr %i.a, align 2, !alias.scope !139, !noalias !137
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 0, 65) %.sroa.03.011.lcssa.i.i.i)
          to label %.noexc1 unwind label %.body

.noexc1:                                          ; preds = %_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef range(i64 0, 65) 1)
          to label %.noexc2 unwind label %.body

.noexc2:                                          ; preds = %.noexc1
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, i64 noundef range(i64 0, 65) %i.g)
          to label %bb.n unwind label %.body

.body:                                            ; preds = %bb.d, %_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i, %.noexc1, %.noexc2
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #20
          to label %bb.p unwind label %bb.o

bb.n:                                             ; preds = %.noexc2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.o:                                             ; preds = %.body
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.p:                                             ; preds = %.body
  resume { ptr, i32 } %i.be
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXNtCshYIJQCjbIHX_8asn1_der4dataQINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtB2_6Source4readCs2iisHxfqoT7_15libp2p_identity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 9)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !align !7, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !144, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !144, !nonnull !4, !noundef !4
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.f, ptr %i.a, align 8, !alias.scope !144
  %i.g = load i8, ptr %i.b, align 1, !noalias !145, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.g, ptr %i.h, align 8, !alias.scope !143
  br label %_RNvXs_NtCshYIJQCjbIHX_8asn1_der4dataINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtB4_6Source4read.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.01.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @27, ptr %.sroa.01.sroa.4.0..sroa_idx.i, align 8, !alias.scope !143
  %.sroa.01.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 140, ptr %.sroa.01.sroa.5.0..sroa_idx.i, align 8, !alias.scope !143
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !143
  br label %_RNvXs_NtCshYIJQCjbIHX_8asn1_der4dataINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtB4_6Source4read.exit

_RNvXs_NtCshYIJQCjbIHX_8asn1_der4dataINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtB4_6Source4read.exit: ; preds = %bb.b, %bb.c
  %.sink.i = phi i64 [ 0, %bb.c ], [ -1, %bb.b ]
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !143
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCshYIJQCjbIHX_8asn1_der5errorINtNtCskKLDkoKarTP_4core6result6ResultNtNtB4_3der9DerObjectNtB2_12Asn1DerErrorENtB2_10ErrorChain9propagateCs2iisHxfqoT7_15libp2p_identity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 40)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !noundef !4
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  %i.e = load i64, ptr %i.a, align 8, !range !11, !noundef !4
  %i.f = call noundef nonnull align 8 ptr @_RNvMs0_NtCshYIJQCjbIHX_8asn1_der5errorNtB5_11ErrorSource3new(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %i.g, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %3, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCshYIJQCjbIHX_8asn1_der5errorINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs2iisHxfqoT7_15libp2p_identity3rsa17Asn1RsaEncryptionNtB2_12Asn1DerErrorENtB2_10ErrorChain9propagateB1d_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = load i64, ptr %1, align 8, !range !12, !noundef !4
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.c = load i64, ptr %i.a, align 8, !range !11, !noundef !4
  %i.d = call noundef nonnull align 8 ptr @_RNvMs0_NtCshYIJQCjbIHX_8asn1_der5errorNtB5_11ErrorSource3new(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  store i64 %i.c, ptr %0, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCshYIJQCjbIHX_8asn1_der5errorINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs2iisHxfqoT7_15libp2p_identity3rsa20Asn1OidRsaEncryptionNtB2_12Asn1DerErrorENtB2_10ErrorChain9propagateB1d_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = load i64, ptr %1, align 8, !range !12, !noundef !4
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.c = load i64, ptr %i.a, align 8, !range !11, !noundef !4
  %i.d = call noundef nonnull align 8 ptr @_RNvMs0_NtCshYIJQCjbIHX_8asn1_der5errorNtB5_11ErrorSource3new(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  store i64 %i.c, ptr %0, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCshYIJQCjbIHX_8asn1_der5errorINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs2iisHxfqoT7_15libp2p_identity3rsa20Asn1SubjectPublicKeyNtB2_12Asn1DerErrorENtB2_10ErrorChain9propagateB1d_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = load i64, ptr %1, align 8, !range !12, !noundef !4
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.c = load i64, ptr %i.a, align 8, !range !11, !noundef !4
  %i.d = call noundef nonnull align 8 ptr @_RNvMs0_NtCshYIJQCjbIHX_8asn1_der5errorNtB5_11ErrorSource3new(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  store i64 %i.c, ptr %0, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCshYIJQCjbIHX_8asn1_der5errorINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs2iisHxfqoT7_15libp2p_identity3rsa24Asn1SubjectPublicKeyInfoNtB2_12Asn1DerErrorENtB2_10ErrorChain9propagateB1d_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = load i64, ptr %1, align 8, !range !12, !noundef !4
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.c = load i64, ptr %i.a, align 8, !range !11, !noundef !4
  %i.d = call noundef nonnull align 8 ptr @_RNvMs0_NtCshYIJQCjbIHX_8asn1_der5errorNtB5_11ErrorSource3new(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  store i64 %i.c, ptr %0, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCshYIJQCjbIHX_8asn1_der5errorINtNtCskKLDkoKarTP_4core6result6ResulthNtB2_12Asn1DerErrorENtB2_10ErrorChain9propagateCs2iisHxfqoT7_15libp2p_identity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = load i64, ptr %1, align 8, !range !12, !noundef !4
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.c = load i64, ptr %i.a, align 8, !range !11, !noundef !4
  %i.d = call noundef nonnull align 8 ptr @_RNvMs0_NtCshYIJQCjbIHX_8asn1_der5errorNtB5_11ErrorSource3new(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  store i64 %i.c, ptr %0, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCshYIJQCjbIHX_8asn1_der5errorINtNtCskKLDkoKarTP_4core6result6ResultuNtB2_12Asn1DerErrorENtB2_10ErrorChain9propagateCs2iisHxfqoT7_15libp2p_identity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = load i64, ptr %1, align 8, !range !12, !noundef !4
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.c = load i64, ptr %i.a, align 8, !range !11, !noundef !4
  %i.d = call noundef nonnull align 8 ptr @_RNvMs0_NtCshYIJQCjbIHX_8asn1_der5errorNtB5_11ErrorSource3new(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  store i64 %i.c, ptr %0, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator9size_hintCs2iisHxfqoT7_15libp2p_identity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !align !7, !noundef !4 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 24
  %.val = load i64, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %i.a, i64 32
  %.val1 = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.d = icmp eq i64 %.val1, 0
  br i1 %i.d, label %bb.b, label %_RNvXs1y_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2iisHxfqoT7_15libp2p_identity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #17, !noalias !148
  unreachable

_RNvXs1y_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2iisHxfqoT7_15libp2p_identity.exit: ; preds = %bb.a
  %i.e = udiv i64 %.val, %.val1                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !148
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !148
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !148
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter4ItermENtB5_8Iterator9size_hintCs2iisHxfqoT7_15libp2p_identity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !align !7, !noundef !4 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = ptrtoint ptr %.val1 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 2                   ; 2 uses
  store i64 %i.f, ptr %0, align 8, !alias.scope !151
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.g, align 8, !alias.scope !151
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.h, align 8, !alias.scope !151
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1m_NtCsexYYUdYSQU6_5alloc6stringNtB6_13FromUtf8ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXs1q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = mul i64 %i.b, %1
  %i.d = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.c
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %i.b, 1
  ret { ptr, i64 } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXs1y_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = mul i64 %i.b, %1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.c
  %i.g = insertvalue { ptr, i64 } poison, ptr %i.f, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %i.b, 1
  ret { ptr, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_CsgtZiP9A0p0_7zeroizeINtNtNtCskKLDkoKarTP_4core5slice4iter7IterMuthENtB5_7Zeroize7zeroizeCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  %i.c = icmp eq ptr %.promoted, %i.b
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.d = phi ptr [ %i.e, %.lr.ph ], [ %.promoted, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  store ptr %i.e, ptr %0, align 8
  tail call void @_RNvXCsgtZiP9A0p0_7zeroizehNtB2_7Zeroize7zeroizeCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull dereferenceable(1) %i.d)
  %i.f = icmp eq ptr %i.e, %i.b
  br i1 %i.f, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtCsk7Z1gFMStHv_4bs586encodeNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 14)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2iisHxfqoT7_15libp2p_identity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !156, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i = load ptr, ptr %i.a, align 8, !alias.scope !156, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val3.i to i64
  %i.c = ptrtoint ptr %.val.i to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !156, !noundef !4
  %i.g = tail call i64 @llvm.usub.sat.i64(i64 %i.d, i64 %i.f) ; 2 uses
  store i64 %i.g, ptr %0, align 8, !alias.scope !155
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.h, align 8, !alias.scope !155
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.i, align 8, !alias.scope !155
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !161, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !161, !nonnull !4, !noundef !4
  %i.d = icmp ne ptr %i.a, %i.c                   ; 2 uses
  br i1 %i.d, label %bb.b, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2iisHxfqoT7_15libp2p_identity.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.e, ptr %0, align 8, !alias.scope !161
  %i.f = load i8, ptr %i.a, align 1, !alias.scope !162, !noundef !4
  br label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2iisHxfqoT7_15libp2p_identity.exit

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2iisHxfqoT7_15libp2p_identity.exit: ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i8 [ %i.f, %bb.b ], [ undef, %bb.a ]
  %i.g = insertvalue { i1, i8 } poison, i1 %i.d, 0
  %i.h = insertvalue { i1, i8 } %i.g, i8 %.sroa.3.0, 1
  ret { i1, i8 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter11ChunksExacthENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %bb.b, label %_RNvXs1q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2iisHxfqoT7_15libp2p_identity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #17, !noalias !165
  unreachable

_RNvXs1q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2iisHxfqoT7_15libp2p_identity.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.c, align 8
  %i.d = udiv i64 %.val, %.val1
  ret i64 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter14ChunksExactMuthENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %bb.b, label %_RNvXs1y_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2iisHxfqoT7_15libp2p_identity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #17, !noalias !168
  unreachable

_RNvXs1y_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2iisHxfqoT7_15libp2p_identity.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load i64, ptr %i.c, align 8
  %i.d = udiv i64 %.val, %.val1
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 4611686018427387904) i64 @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter4ItermENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 2
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 4611686018427387904) i64 @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter7IterMutmENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 2
  ret i64 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRhNtB6_5Debug3fmtCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsfPnYm3bSk7z_15unsigned_varint2io8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvXs_NtCsk7Z1gFMStHv_4bs586encodeINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_12EncodeTarget11encode_withNCINvMs3_B5_INtB5_13EncodeBuilderBx_E4ontoQNtNtBC_6string6StringE0ECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(186)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtNtCs5wSrZkEBHYe_4ring3cpu5intel12featureflags11get_or_init() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2iisHxfqoT7_15libp2p_identity(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs0_NtCshYIJQCjbIHX_8asn1_der5errorNtB5_11ErrorSource3new(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3str5error9Utf8ErrorNtB6_5Debug3fmtCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXCsgtZiP9A0p0_7zeroizehNtB2_7Zeroize7zeroizeCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { noinline noreturn }
attributes #18 = { cold noreturn nounwind }
attributes #19 = { inlinehint }
attributes #20 = { cold }
attributes #21 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{}
!5 = !{!"llvm.loop.isvectorized", i32 1}
!6 = !{!"llvm.loop.unroll.runtime.disable"}
!7 = !{i64 8}
!8 = !{i64 0, i64 2}
!9 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 4000000, i32 4001}
!11 = !{i64 0, i64 4}
!12 = !{i64 -1, i64 4}
!13 = !{!"address", !"read_provenance"}
!14 = distinct !{!14, i1 true, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtNtBb_5slice4iter4IterhENCINvNtCsk7Z1gFMStHv_4bs586encode11encode_intoRShE0ENtNtNtB9_6traits8iterator8Iterator4nextCs2iisHxfqoT7_15libp2p_identity"}
!15 = distinct !{!15, !14, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtNtBb_5slice4iter4IterhENCINvNtCsk7Z1gFMStHv_4bs586encode11encode_intoRShE0ENtNtNtB9_6traits8iterator8Iterator4nextCs2iisHxfqoT7_15libp2p_identity: argument 0"}
!16 = distinct !{!16, i1 true, !"_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswaphECs2iisHxfqoT7_15libp2p_identity"}
!17 = distinct !{!17, !16, !"_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswaphECs2iisHxfqoT7_15libp2p_identity: argument 0"}
!18 = distinct !{!18, !16, !"_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswaphECs2iisHxfqoT7_15libp2p_identity: argument 1"}
!19 = distinct !{!19, !5, !6}
!20 = distinct !{!20, !5, !6}
!21 = distinct !{!21, !6, !5}
!22 = !{!"branch_weights", i32 4001, i32 4000000}
!23 = !{!15}
!24 = !{!"branch_weights", i32 28052957, i32 2119430691}
!25 = !{!17}
!26 = !{!18}
!27 = !{!"branch_weights", i32 4, i32 12}
!28 = distinct !{!28, i1 true, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4skip4SkipINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator3maphNvYhNtNtBc_5clone5Clone5cloneECs2iisHxfqoT7_15libp2p_identity"}
!29 = distinct !{!29, !28, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4skip4SkipINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator3maphNvYhNtNtBc_5clone5Clone5cloneECs2iisHxfqoT7_15libp2p_identity: argument 1"}
!30 = distinct !{!30, !28, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4skip4SkipINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator3maphNvYhNtNtBc_5clone5Clone5cloneECs2iisHxfqoT7_15libp2p_identity: argument 0"}
!31 = distinct !{!31, i1 true, !"_RNvXsa_NtNtCskKLDkoKarTP_4core5clone5implshNtB7_5Clone5clone"}
!32 = distinct !{!32, !31, !"_RNvXsa_NtNtCskKLDkoKarTP_4core5clone5implshNtB7_5Clone5clone: argument 0"}
!33 = distinct !{!33, i1 true, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRhhuNvYhNtNtBb_5clone5Clone5cloneNCINvNvB1r_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3y_3VechE14extend_trustedINtNtB7_6cloned6ClonedBN_EE0E0E0ECs2iisHxfqoT7_15libp2p_identity"}
!34 = distinct !{!34, !33, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRhhuNvYhNtNtBb_5clone5Clone5cloneNCINvNvB1r_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3y_3VechE14extend_trustedINtNtB7_6cloned6ClonedBN_EE0E0E0ECs2iisHxfqoT7_15libp2p_identity: argument 1"}
!35 = distinct !{!35, !33, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRhhuNvYhNtNtBb_5clone5Clone5cloneNCINvNvB1r_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3y_3VechE14extend_trustedINtNtB7_6cloned6ClonedBN_EE0E0E0ECs2iisHxfqoT7_15libp2p_identity: argument 0"}
!36 = distinct !{!36, i1 true, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNvYhNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3g_3VechE14extend_trustedINtNtB1K_6cloned6ClonedINtNtB1K_4skip4SkipBF_EEE0E0E0ECs2iisHxfqoT7_15libp2p_identity"}
!37 = distinct !{!37, !36, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNvYhNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3g_3VechE14extend_trustedINtNtB1K_6cloned6ClonedINtNtB1K_4skip4SkipBF_EEE0E0E0ECs2iisHxfqoT7_15libp2p_identity: argument 0"}
!38 = distinct !{!38, i1 true, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRhhuNvYhNtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2u_3VechE14extend_trustedINtNtB6_6cloned6ClonedINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterhEEEE0E0E0Cs2iisHxfqoT7_15libp2p_identity"}
!39 = distinct !{!39, !38, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRhhuNvYhNtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2u_3VechE14extend_trustedINtNtB6_6cloned6ClonedINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterhEEEE0E0E0Cs2iisHxfqoT7_15libp2p_identity: argument 0"}
!40 = distinct !{!40, i1 true, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB1p_3VechE14extend_trustedINtNtNtBc_8adapters6cloned6ClonedINtNtB2n_4skip4SkipINtNtNtBe_5slice4iter4IterhEEEE0E0Cs2iisHxfqoT7_15libp2p_identity"}
!41 = distinct !{!41, !40, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB1p_3VechE14extend_trustedINtNtNtBc_8adapters6cloned6ClonedINtNtB2n_4skip4SkipINtNtNtBe_5slice4iter4IterhEEEE0E0Cs2iisHxfqoT7_15libp2p_identity: argument 0"}
!42 = distinct !{!42, i1 true, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VechE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtB15_4skip4SkipINtNtNtB19_5slice4iter4IterhEEEE0Cs2iisHxfqoT7_15libp2p_identity"}
!43 = distinct !{!43, !42, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VechE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtB15_4skip4SkipINtNtNtB19_5slice4iter4IterhEEEE0Cs2iisHxfqoT7_15libp2p_identity: argument 0"}
!44 = distinct !{!44, !5, !6}
!45 = distinct !{!45, !5, !6}
!46 = distinct !{!46, !5}
!47 = !{!30, !29}
!48 = !{!32}
!49 = !{!37, !35, !34}
!50 = !{!43, !41, !39, !37, !35, !34}
!51 = !{!"branch_weights", i32 4, i32 28}
!52 = !{!35, !34}
!53 = distinct !{!53, i1 true, !"_RINvMs3_NtCsk7Z1gFMStHv_4bs586encodeINtB6_13EncodeBuilderINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4ontoQNtNtBY_6string6StringECs2iisHxfqoT7_15libp2p_identity"}
!54 = distinct !{!54, !53, !"_RINvMs3_NtCsk7Z1gFMStHv_4bs586encodeINtB6_13EncodeBuilderINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4ontoQNtNtBY_6string6StringECs2iisHxfqoT7_15libp2p_identity: argument 0"}
!55 = distinct !{!55, !53, !"_RINvMs3_NtCsk7Z1gFMStHv_4bs586encodeINtB6_13EncodeBuilderINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4ontoQNtNtBY_6string6StringECs2iisHxfqoT7_15libp2p_identity: argument 1"}
!56 = distinct !{!56, i1 true, !"_RINvXs0_NtCsk7Z1gFMStHv_4bs586encodeNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_12EncodeTarget11encode_withNCINvMs3_B6_INtB6_13EncodeBuilderINtNtBC_3vec3VechEE4ontoQBy_E0ECs2iisHxfqoT7_15libp2p_identity"}
!57 = distinct !{!57, !56, !"_RINvXs0_NtCsk7Z1gFMStHv_4bs586encodeNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_12EncodeTarget11encode_withNCINvMs3_B6_INtB6_13EncodeBuilderINtNtBC_3vec3VechEE4ontoQBy_E0ECs2iisHxfqoT7_15libp2p_identity: argument 0"}
!58 = distinct !{!58, i1 true, !"_RINvXNtCsk7Z1gFMStHv_4bs586encodeQNtNtCsexYYUdYSQU6_5alloc6string6StringNtB3_12EncodeTarget11encode_withNCINvMs3_B3_INtB3_13EncodeBuilderINtNtBA_3vec3VechEE4ontoBv_E0ECs2iisHxfqoT7_15libp2p_identity"}
!59 = distinct !{!59, !58, !"_RINvXNtCsk7Z1gFMStHv_4bs586encodeQNtNtCsexYYUdYSQU6_5alloc6string6StringNtB3_12EncodeTarget11encode_withNCINvMs3_B3_INtB3_13EncodeBuilderINtNtBA_3vec3VechEE4ontoBv_E0ECs2iisHxfqoT7_15libp2p_identity: argument 1"}
!60 = distinct !{!60, !58, !"_RINvXNtCsk7Z1gFMStHv_4bs586encodeQNtNtCsexYYUdYSQU6_5alloc6string6StringNtB3_12EncodeTarget11encode_withNCINvMs3_B3_INtB3_13EncodeBuilderINtNtBA_3vec3VechEE4ontoBv_E0ECs2iisHxfqoT7_15libp2p_identity: argument 0"}
!61 = distinct !{!61, !56, !"_RINvXs0_NtCsk7Z1gFMStHv_4bs586encodeNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_12EncodeTarget11encode_withNCINvMs3_B6_INtB6_13EncodeBuilderINtNtBC_3vec3VechEE4ontoQBy_E0ECs2iisHxfqoT7_15libp2p_identity: argument 2"}
!62 = distinct !{!62, !56, !"_RINvXs0_NtCsk7Z1gFMStHv_4bs586encodeNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_12EncodeTarget11encode_withNCINvMs3_B6_INtB6_13EncodeBuilderINtNtBC_3vec3VechEE4ontoQBy_E0ECs2iisHxfqoT7_15libp2p_identity: argument 1"}
!63 = distinct !{!63, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String9from_utf8"}
!64 = distinct !{!64, !63, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String9from_utf8: argument 0"}
!65 = distinct !{!65, !63, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String9from_utf8: argument 1"}
!66 = distinct !{!66, i1 true, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtBJ_13FromUtf8ErrorE6unwrapCs2iisHxfqoT7_15libp2p_identity"}
!67 = distinct !{!67, !66, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtBJ_13FromUtf8ErrorE6unwrapCs2iisHxfqoT7_15libp2p_identity: argument 0"}
!68 = distinct !{!68, !66, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtBJ_13FromUtf8ErrorE6unwrapCs2iisHxfqoT7_15libp2p_identity: argument 1"}
!69 = !{!54}
!70 = !{!55}
!71 = !{!54, !55}
!72 = !{!57}
!73 = !{!57, !62, !61, !60, !59, !54, !55}
!74 = !{!62, !61, !60, !59, !54}
!75 = !{!57, !55}
!76 = !{!60, !59}
!77 = !{!57, !54, !55}
!78 = !{!64}
!79 = !{!65}
!80 = !{!64, !65, !57, !62, !61, !60, !59, !54, !55}
!81 = !{!64, !65, !57, !54, !55}
!82 = !{!64, !57, !54, !55}
!83 = !{!64, !65}
!84 = !{!64, !57, !62, !61, !60, !59, !54, !55}
!85 = !{!67}
!86 = !{!68}
!87 = !{!"branch_weights", !"expected", i32 2145337238, i32 2146410}
!88 = !{!67, !68, !57, !62, !61, !60, !59, !54, !55}
!89 = !{!67, !57, !62, !61, !60, !59, !54, !55}
!90 = !{!67, !68, !57, !54, !55}
!91 = !{!67, !68}
!92 = distinct !{!92, i1 true, !"_RINvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB5_9MultihashKj40_E4readQRShECs2iisHxfqoT7_15libp2p_identity"}
!93 = distinct !{!93, !92, !"_RINvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB5_9MultihashKj40_E4readQRShECs2iisHxfqoT7_15libp2p_identity: argument 1"}
!94 = distinct !{!94, !92, !"_RINvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB5_9MultihashKj40_E4readQRShECs2iisHxfqoT7_15libp2p_identity: argument 0"}
!95 = distinct !{!95, i1 true, !"_RINvNtCsgW4lhAJgVdS_9multihash9multihash14read_multihashQRShKj40_ECs2iisHxfqoT7_15libp2p_identity"}
!96 = distinct !{!96, !95, !"_RINvNtCsgW4lhAJgVdS_9multihash9multihash14read_multihashQRShKj40_ECs2iisHxfqoT7_15libp2p_identity: argument 1"}
!97 = distinct !{!97, !95, !"_RINvNtCsgW4lhAJgVdS_9multihash9multihash14read_multihashQRShKj40_ECs2iisHxfqoT7_15libp2p_identity: argument 0"}
!98 = distinct !{!98, i1 true, !"_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity"}
!99 = distinct !{!99, !98, !"_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity: argument 1"}
!100 = distinct !{!100, !98, !"_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity: argument 0"}
!101 = distinct !{!101, i1 true, !"_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity"}
!102 = distinct !{!102, !101, !"_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity: argument 1"}
!103 = distinct !{!103, !101, !"_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity: argument 0"}
!104 = distinct !{!104, i1 true, !"_RNvXNtNtCsexYYUdYSQU6_5alloc2io5implsQRShNtNtB4_4read4Read10read_exactCs2iisHxfqoT7_15libp2p_identity"}
!105 = distinct !{!105, !104, !"_RNvXNtNtCsexYYUdYSQU6_5alloc2io5implsQRShNtNtB4_4read4Read10read_exactCs2iisHxfqoT7_15libp2p_identity: argument 0"}
!106 = distinct !{!106, i1 true, !"_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read10read_exact"}
!107 = distinct !{!107, !106, !"_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read10read_exact: argument 0"}
!108 = distinct !{!108, !106, !"_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read10read_exact: argument 1"}
!109 = !{!94, !93}
!110 = !{!97, !96, !94, !93}
!111 = !{!100, !99, !97, !96, !94, !93}
!112 = !{!100, !97, !94}
!113 = !{i8 0, i8 3}
!114 = !{!103, !102, !97, !96, !94, !93}
!115 = !{!103, !97, !94}
!116 = !{!105}
!117 = !{!107}
!118 = !{!108}
!119 = !{!105, !97, !94}
!120 = !{!107, !97, !94}
!121 = !{!107, !108, !105, !97, !94}
!122 = !{!108, !105}
!123 = distinct !{!123, i1 true, !"_RINvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB5_9MultihashKj40_E5writeQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity"}
!124 = distinct !{!124, !123, !"_RINvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB5_9MultihashKj40_E5writeQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity: argument 1"}
!125 = distinct !{!125, !123, !"_RINvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB5_9MultihashKj40_E5writeQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity: argument 2"}
!126 = distinct !{!126, !123, !"_RINvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB5_9MultihashKj40_E5writeQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity: argument 0"}
!127 = distinct !{!127, i1 true, !"_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity"}
!128 = distinct !{!128, !127, !"_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity: argument 2"}
!129 = distinct !{!129, !127, !"_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity: argument 1"}
!130 = distinct !{!130, !127, !"_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity: argument 0"}
!131 = distinct !{!131, i1 true, !"_RNvNtCsfPnYm3bSk7z_15unsigned_varint6encode3u64"}
!132 = distinct !{!132, !131, !"_RNvNtCsfPnYm3bSk7z_15unsigned_varint6encode3u64: argument 0"}
!133 = distinct !{!133, i1 true, !"_RNvNtCsfPnYm3bSk7z_15unsigned_varint6encode2u8"}
!134 = distinct !{!134, !133, !"_RNvNtCsfPnYm3bSk7z_15unsigned_varint6encode2u8: argument 0"}
!135 = !{i64 0, i64 -9223372036854775807}
!136 = !{!124}
!137 = !{!130, !129, !128, !126, !124, !125}
!138 = !{!132}
!139 = !{!134}
!140 = distinct !{!140, i1 true, !"_RNvXs_NtCshYIJQCjbIHX_8asn1_der4dataINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtB4_6Source4read"}
!141 = distinct !{!141, !140, !"_RNvXs_NtCshYIJQCjbIHX_8asn1_der4dataINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtB4_6Source4read: argument 0"}
!142 = distinct !{!142, !140, !"_RNvXs_NtCshYIJQCjbIHX_8asn1_der4dataINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtB4_6Source4read: argument 1"}
!143 = !{!141}
!144 = !{!142}
!145 = !{!141, !142}
!146 = distinct !{!146, i1 true, !"_RNvXs1y_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2iisHxfqoT7_15libp2p_identity"}
!147 = distinct !{!147, !146, !"_RNvXs1y_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2iisHxfqoT7_15libp2p_identity: argument 0"}
!148 = !{!147}
!149 = distinct !{!149, i1 true, !"_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2iisHxfqoT7_15libp2p_identity"}
!150 = distinct !{!150, !149, !"_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2iisHxfqoT7_15libp2p_identity: argument 0"}
!151 = !{!150}
!152 = distinct !{!152, i1 true, !"_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB4_4SkipINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2iisHxfqoT7_15libp2p_identity"}
!153 = distinct !{!153, !152, !"_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB4_4SkipINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2iisHxfqoT7_15libp2p_identity: argument 0"}
!154 = distinct !{!154, !152, !"_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB4_4SkipINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2iisHxfqoT7_15libp2p_identity: argument 1"}
!155 = !{!153}
!156 = !{!154}
!157 = distinct !{!157, i1 true, !"_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2iisHxfqoT7_15libp2p_identity"}
!158 = distinct !{!158, !157, !"_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2iisHxfqoT7_15libp2p_identity: argument 0"}
!159 = distinct !{!159, i1 true, !"_RNvXsa_NtNtCskKLDkoKarTP_4core5clone5implshNtB7_5Clone5clone"}
!160 = distinct !{!160, !159, !"_RNvXsa_NtNtCskKLDkoKarTP_4core5clone5implshNtB7_5Clone5clone: argument 0"}
!161 = !{!158}
!162 = !{!160}
!163 = distinct !{!163, i1 true, !"_RNvXs1q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2iisHxfqoT7_15libp2p_identity"}
!164 = distinct !{!164, !163, !"_RNvXs1q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2iisHxfqoT7_15libp2p_identity: argument 0"}
!165 = !{!164}
!166 = distinct !{!166, i1 true, !"_RNvXs1y_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2iisHxfqoT7_15libp2p_identity"}
!167 = distinct !{!167, !166, !"_RNvXs1y_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2iisHxfqoT7_15libp2p_identity: argument 0"}
!168 = !{!167}
end_hunk_0
