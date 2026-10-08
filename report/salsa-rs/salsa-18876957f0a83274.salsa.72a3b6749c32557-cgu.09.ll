Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa-18876957f0a83274.salsa.72a3b6749c32557-cgu.09?download=true
inline.NumInlined: 236
inline.NumDeleted: 126
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [69 x i8] c"assertion failed: indices.capacity() - indices.len() >= entries.len()", align 1
@1 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/indexmap-2.14.0/src/inner.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"a\00\00\00\00\00\00\00G\00\00\00\05\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"a\00\00\00\00\00\00\00.\00\00\00#\00\00\00" }>, align 8
@_RNvNCNKNvNtCsC8CapfvpQ1_5salsa6attach8ATTACHED0s_023___RUST_STD_INTERNAL_VAL = external thread_local global { { { { ptr, [1 x i64] } } } }
@4 = private unnamed_addr constant [16 x i8] c"DatabaseKeyIndex", align 1
@5 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXsd_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_15IngredientIndexNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@6 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXs0_NtCsC8CapfvpQ1_5salsa2idNtB5_2IdNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@7 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@8 = private unnamed_addr constant [13 x i8] c"src/zalsa.rs\00", align 1
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"\0C\00\00\00\00\00\00\00\03\01\00\00\1D\00\00\00" }>, align 8
@10 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@11 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @10, [24 x i8] zeroinitializer }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"a\00\00\00\00\00\00\00O\01\00\008\00\00\00" }>, align 8
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"a\00\00\00\00\00\00\00\96\01\00\004\00\00\00" }>, align 8
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"a\00\00\00\00\00\00\00\97\01\00\004\00\00\00" }>, align 8
@15 = private unnamed_addr constant [15 x i8] c"index not found", align 1
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"a\00\00\00\00\00\00\00>\00\00\00\0A\00\00\00" }>, align 8
@_RNvNvXsA_NtCsC8CapfvpQ1_5salsa5zalsaNtB7_9ErasedJarNtCseiUJRdNtLVy_9inventory7Collect8registry8REGISTRY = external local_unnamed_addr global { { { { ptr } } } }
@17 = private unnamed_addr constant ptr @_RNvYNCNKNvNtCsC8CapfvpQ1_5salsa6attach8ATTACHED0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtBU_6option6OptionQIB1z_NtB8_8AttachedEEEE9call_onceBa_, align 8
@18 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRmNtB6_5Debug3fmtCsC8CapfvpQ1_5salsa }>, align 8
@19 = private unnamed_addr constant [15 x i8] c"IngredientIndex", align 1

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvMs3_NtCsffXo9NmvYC7_8indexmap3mapINtB6_8IndexMapNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE12get_index_ofBO_EBS_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 4 uses
  switch i64 %i.b, label %bb.d [
    i64 0, label %_RNvXCsiwaX7x13T3L_10equivalentNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeINtB2_10EquivalentBs_E10equivalentBw_.exit.thread
    i64 1, label %bb.b
  ]

_RNvXCsiwaX7x13T3L_10equivalentNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeINtB2_10EquivalentBs_E10equivalentBw_.exit.thread: ; preds = %._crit_edge.i.i, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuB1K_E0E0B1O_.exit.i.i, %_RNvXCsiwaX7x13T3L_10equivalentNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeINtB2_10EquivalentBs_E10equivalentBw_.exit, %bb.b, %bb.c, %bb.a
  %.sroa.5.0 = phi i64 [ 0, %bb.c ], [ undef, %bb.a ], [ 0, %bb.b ], [ 0, %_RNvXCsiwaX7x13T3L_10equivalentNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeINtB2_10EquivalentBs_E10equivalentBw_.exit ], [ %.val.i.i.i, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuB1K_E0E0B1O_.exit.i.i ], [ undef, %._crit_edge.i.i ]
  %.sroa.0.0 = phi i64 [ 0, %bb.c ], [ %i.b, %bb.a ], [ 0, %bb.b ], [ %spec.select, %_RNvXCsiwaX7x13T3L_10equivalentNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeINtB2_10EquivalentBs_E10equivalentBw_.exit ], [ 1, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuB1K_E0E0B1O_.exit.i.i ], [ 0, %._crit_edge.i.i ]
  %i.c = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.d = insertvalue { i64, i64 } %i.c, i64 %.sroa.5.0, 1
  ret { i64, i64 } %i.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.h = load i32, ptr %1, align 4, !alias.scope !44, !noalias !45, !noundef !3
  %i.i = load i32, ptr %i.g, align 4, !alias.scope !45, !noalias !44, !noundef !3
  %i.j = icmp eq i32 %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_RNvXCsiwaX7x13T3L_10equivalentNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeINtB2_10EquivalentBs_E10equivalentBw_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !alias.scope !44, !noalias !45, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.n = load i32, ptr %i.m, align 4, !alias.scope !45, !noalias !44, !noundef !3
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %_RNvXCsiwaX7x13T3L_10equivalentNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeINtB2_10EquivalentBs_E10equivalentBw_.exit, label %_RNvXCsiwaX7x13T3L_10equivalentNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeINtB2_10EquivalentBs_E10equivalentBw_.exit.thread

_RNvXCsiwaX7x13T3L_10equivalentNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeINtB2_10EquivalentBs_E10equivalentBw_.exit: ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i32, ptr %i.p, align 4, !alias.scope !44, !noalias !45, !noundef !3
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.s = load i32, ptr %i.r, align 4, !alias.scope !45, !noalias !44, !noundef !3
  %i.t = icmp eq i32 %i.q, %i.s
  %spec.select = zext i1 %i.t to i64
  br label %_RNvXCsiwaX7x13T3L_10equivalentNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeINtB2_10EquivalentBs_E10equivalentBw_.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = tail call noundef i64 @_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneRNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEB1Y_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %1) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !46, !noalias !47, !nonnull !3, !noundef !3
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.z = lshr i64 %i.v, 57
  %i.aa = trunc nuw nsw i64 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !50, !noalias !51, !noundef !3 ; 2 uses
  %i.ad = load ptr, ptr %i.y, align 8, !alias.scope !50, !noalias !51, !nonnull !3, !noundef !3 ; 2 uses
  %i.ae = insertelement <16 x i8> poison, i8 %i.aa, i64 0
  %i.af = shufflevector <16 x i8> %i.ae, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ag = load i32, ptr %1, align 4, !alias.scope !47, !noalias !46
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !alias.scope !47, !noalias !46
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load i32, ptr %i.aj, align 4, !alias.scope !47, !noalias !46
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %bb.d
  %.sroa.011.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.bl, %bb.i ]
  %.pn.i.i.i = phi i64 [ %i.v, %bb.d ], [ %i.bm, %bb.i ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.ac   ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.al, align 1, !noalias !52 ; 2 uses
  %i.am = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.af
  %i.an = bitcast <16 x i1> %i.am to i16          ; 2 uses
  %.not.i.not39.i.i = icmp eq i16 %i.an, 0
  br i1 %.not.i.not39.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuB1K_E0E0B1O_.exit.thread.i.i
  %.sroa.05.0.i40.i.i = phi i16 [ %i.bk, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuB1K_E0E0B1O_.exit.thread.i.i ], [ %i.an, %bb.e ] ; 3 uses
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i40.i.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = add i64 %.sroa.01.0.i.i.i, %i.ap
  %i.ar = and i64 %i.aq, %i.ac
  %i.as = sub nsw i64 0, %i.ar
  %i.at = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.as
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -8
  %.val.i.i.i = load i64, ptr %i.au, align 8, !noalias !53, !noundef !3 ; 4 uses
  %i.av = icmp ult i64 %.val.i.i.i, %i.b
  br i1 %i.av, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %.val.i.i.i ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i32, ptr %i.ax, align 4, !alias.scope !54, !noalias !55, !noundef !3
  %i.az = icmp eq i32 %i.ag, %i.ay
  br i1 %i.az, label %bb.g, label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuB1K_E0E0B1O_.exit.thread.i.i, !prof !4

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !alias.scope !54, !noalias !55, !noundef !3
  %i.bc = icmp eq i32 %i.ai, %i.bb
  br i1 %i.bc, label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuB1K_E0E0B1O_.exit.i.i, label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuB1K_E0E0B1O_.exit.thread.i.i, !prof !4

bb.h:                                             ; preds = %.lr.ph.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i.i, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #23, !noalias !56
  unreachable

_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuB1K_E0E0B1O_.exit.i.i: ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.be = load i32, ptr %i.bd, align 4, !alias.scope !54, !noalias !55, !noundef !3
  %i.bf = icmp eq i32 %i.ak, %i.be
  br i1 %i.bf, label %_RNvXCsiwaX7x13T3L_10equivalentNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeINtB2_10EquivalentBs_E10equivalentBw_.exit.thread, label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuB1K_E0E0B1O_.exit.thread.i.i, !prof !5

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuB1K_E0E0B1O_.exit.thread.i.i, %bb.e
  %i.bg = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.bh = bitcast <16 x i1> %i.bg to i16
  %i.bi = icmp eq i16 %i.bh, 0
  br i1 %i.bi, label %bb.i, label %_RNvXCsiwaX7x13T3L_10equivalentNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeINtB2_10EquivalentBs_E10equivalentBw_.exit.thread, !prof !6

_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuB1K_E0E0B1O_.exit.thread.i.i: ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuB1K_E0E0B1O_.exit.i.i, %bb.g, %bb.f
  %i.bj = add i16 %.sroa.05.0.i40.i.i, -1
  %i.bk = and i16 %i.bj, %.sroa.05.0.i40.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.bk, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.bl = add i64 %.sroa.011.0.i.i.i, 16          ; 2 uses
  %i.bm = add i64 %.sroa.01.0.i.i.i, %i.bl
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs3_NtCsffXo9NmvYC7_8indexmap3mapINtB6_8IndexMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE11swap_removeBO_EBS_(ptr noalias noundef align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !136, !noalias !138, !noundef !3 ; 7 uses
  switch i64 %i.b, label %bb.i [
    i64 1, label %bb.b
    i64 0, label %_RINvMs3_NtCsffXo9NmvYC7_8indexmap3mapINtB6_8IndexMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE16swap_remove_fullBO_EBS_.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !136, !noalias !138, !nonnull !3, !noundef !3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !alias.scope !143, !noalias !144, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.h = load i32, ptr %i.g, align 4, !alias.scope !145, !noalias !146, !noundef !3
  %i.i = icmp eq i32 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %_RINvMs3_NtCsffXo9NmvYC7_8indexmap3mapINtB6_8IndexMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE16swap_remove_fullBO_EBS_.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load i32, ptr %1, align 4, !range !7, !alias.scope !143, !noalias !144, !noundef !3
  %i.l = load i32, ptr %i.j, align 4, !range !7, !alias.scope !145, !noalias !146, !noundef !3
  %i.m = icmp eq i32 %i.k, %i.l
  br i1 %i.m, label %_RNvXCsiwaX7x13T3L_10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtB2_10EquivalentBs_E10equivalentBw_.exit.i, label %_RINvMs3_NtCsffXo9NmvYC7_8indexmap3mapINtB6_8IndexMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE16swap_remove_fullBO_EBS_.exit

_RNvXCsiwaX7x13T3L_10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtB2_10EquivalentBs_E10equivalentBw_.exit.i: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 4, !alias.scope !143, !noalias !144, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.q = load i32, ptr %i.p, align 4, !alias.scope !145, !noalias !146, !noundef !3
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.d, label %_RINvMs3_NtCsffXo9NmvYC7_8indexmap3mapINtB6_8IndexMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE16swap_remove_fullBO_EBS_.exit

bb.d:                                             ; preds = %_RNvXCsiwaX7x13T3L_10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtB2_10EquivalentBs_E10equivalentBw_.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  store i64 0, ptr %i.a, align 8, !alias.scope !148, !noalias !149
  %.sroa.04.0.copyload.i.i = load i64, ptr %i.d, align 8, !noalias !150 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.t = lshr i64 %.sroa.04.0.copyload.i.i, 57
  %i.u = trunc nuw nsw i64 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !154, !noalias !155, !noundef !3 ; 3 uses
  %i.x = load ptr, ptr %i.s, align 8, !alias.scope !154, !noalias !155, !nonnull !3, !noundef !3 ; 4 uses
  %i.y = insertelement <16 x i8> poison, i8 %i.u, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.sroa.011.0.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.aq, %bb.g ]
  %.pn.i.i.i.i.i = phi i64 [ %.sroa.04.0.copyload.i.i, %bb.d ], [ %i.ar, %bb.g ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.w ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i = load <16 x i8>, ptr %i.aa, align 1, !noalias !156 ; 2 uses
  %i.ab = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i, %i.z
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not.i.not32.i.i.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i.not32.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.sroa.05.0.i33.i.i.i.i = phi i16 [ %i.ap, %bb.f ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i33.i.i.i.i, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = add i64 %.sroa.01.0.i.i.i.i.i, %i.ae
  %i.ag = and i64 %i.af, %i.w                     ; 3 uses
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ah
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -8
  %.val2.i.i.i.i.i = load i64, ptr %i.aj, align 8, !noalias !157, !noundef !3
  %i.ak = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.ak, label %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index0ECsC8CapfvpQ1_5salsa.exit.i.i.i, label %bb.f, !prof !8

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %bb.e
  %i.al = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i, splat (i8 -1)
  %i.am = bitcast <16 x i1> %i.al to i16
  %i.an = icmp eq i16 %i.am, 0
  br i1 %i.an, label %bb.g, label %_RINvMs3_NtCsffXo9NmvYC7_8indexmap3mapINtB6_8IndexMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE16swap_remove_fullBO_EBS_.exit, !prof !6

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ao = add i16 %.sroa.05.0.i33.i.i.i.i, -1
  %i.ap = and i16 %i.ao, %.sroa.05.0.i33.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aq = add i64 %.sroa.011.0.i.i.i.i.i, 16      ; 2 uses
  %i.ar = add i64 %.sroa.01.0.i.i.i.i.i, %i.aq
  br label %bb.e

_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index0ECsC8CapfvpQ1_5salsa.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ag ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.at = add nsw i64 %i.ag, -16
  %i.au = and i64 %i.at, %i.w
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.au ; 2 uses
  %.sroa.0.0.copyload.i25.i.i.i.i.i = load <16 x i8>, ptr %i.av, align 1, !noalias !160
  %i.aw = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i.i.i, splat (i8 -1)
  %i.ax = bitcast <16 x i1> %i.aw to i16
  %.sroa.0.0.copyload.i926.i.i.i.i.i = load <16 x i8>, ptr %i.as, align 1, !noalias !161
  %i.ay = icmp eq <16 x i8> %.sroa.0.0.copyload.i926.i.i.i.i.i, splat (i8 -1)
  %i.az = bitcast <16 x i1> %i.ay to i16
  %i.ba = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.ax, i1 false)
  %i.bb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.az, i1 false)
  %narrow.i.i.i.i.i = add nuw nsw i16 %i.bb, %i.ba
  %i.bc = icmp samesign ugt i16 %narrow.i.i.i.i.i, 15
  br i1 %i.bc, label %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index0ECsC8CapfvpQ1_5salsa.exit.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !162, !noalias !163, !noundef !3
  %i.bf = add i64 %i.be, 1
  store i64 %i.bf, ptr %i.bd, align 8, !alias.scope !162, !noalias !163
  br label %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa.exit.i.i.i

_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa.exit.i.i.i: ; preds = %bb.h, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index0ECsC8CapfvpQ1_5salsa.exit.i.i.i
  %.sroa.0.0.i.i.i.i.i = phi i8 [ -1, %bb.h ], [ -128, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index0ECsC8CapfvpQ1_5salsa.exit.i.i.i ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i.i.i, ptr %i.as, align 1, !noalias !164
  %i.bg = getelementptr i8, ptr %i.av, i64 16
  store i8 %.sroa.0.0.i.i.i.i.i, ptr %i.bg, align 1, !noalias !164
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !162, !noalias !163, !noundef !3
  %i.bj = add i64 %i.bi, -1
  store i64 %i.bj, ptr %i.bh, align 8, !alias.scope !162, !noalias !163
  br label %_RINvMs3_NtCsffXo9NmvYC7_8indexmap3mapINtB6_8IndexMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE16swap_remove_fullBO_EBS_.exit

bb.i:                                             ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bl = tail call noundef i64 @_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneRNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexEB1Y_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bk, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %1), !noalias !165 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !168, !noalias !169, !nonnull !3, !noundef !3 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.bp = lshr i64 %i.bl, 57
  %i.bq = trunc nuw nsw i64 %i.bp to i8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !172, !noalias !173, !noundef !3 ; 5 uses
  %i.bt = load ptr, ptr %i.bo, align 8, !alias.scope !172, !noalias !173, !nonnull !3, !noundef !3 ; 6 uses
  %i.bu = insertelement <16 x i8> poison, i8 %i.bq, i64 0
  %i.bv = shufflevector <16 x i8> %i.bu, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !alias.scope !174, !noalias !175
  %i.by = load i32, ptr %1, align 4, !range !7, !alias.scope !174, !noalias !175
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ca = load i32, ptr %i.bz, align 4, !alias.scope !174, !noalias !175
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %bb.i
  %.sroa.011.0.i.i.i.i = phi i64 [ 0, %bb.i ], [ %i.db, %bb.n ]
  %.pn.i.i.i.i = phi i64 [ %i.bl, %bb.i ], [ %i.dc, %bb.n ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i.i, %i.bs ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i = load <16 x i8>, ptr %i.cb, align 1, !noalias !176 ; 2 uses
  %i.cc = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, %i.bv
  %i.cd = bitcast <16 x i1> %i.cc to i16          ; 2 uses
  %.not.i.not39.i.i.i = icmp eq i16 %i.cd, 0
  br i1 %.not.i.not39.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1K_E0E0B1O_.exit.thread.i.i.i
  %.sroa.05.0.i40.i.i.i = phi i16 [ %i.da, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1K_E0E0B1O_.exit.thread.i.i.i ], [ %i.cd, %bb.j ] ; 3 uses
  %i.ce = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i40.i.i.i, i1 true)
  %i.cf = zext nneg i16 %i.ce to i64
  %i.cg = add i64 %.sroa.01.0.i.i.i.i, %i.cf
  %i.ch = and i64 %i.cg, %i.bs                    ; 3 uses
  %i.ci = sub nsw i64 0, %i.ch
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -8
  %.val.i.i.i.i = load i64, ptr %i.ck, align 8, !noalias !177, !noundef !3 ; 3 uses
  %i.cl = icmp ult i64 %.val.i.i.i.i, %i.b
  br i1 %i.cl, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %.val.i.i.i.i ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  %i.co = load i32, ptr %i.cn, align 4, !alias.scope !178, !noalias !179, !noundef !3
  %i.cp = icmp eq i32 %i.bx, %i.co
  br i1 %i.cp, label %bb.l, label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1K_E0E0B1O_.exit.thread.i.i.i, !prof !4

bb.l:                                             ; preds = %bb.k
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cr = load i32, ptr %i.cq, align 4, !range !7, !alias.scope !178, !noalias !179, !noundef !3
  %i.cs = icmp eq i32 %i.by, %i.cr
  br i1 %i.cs, label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1K_E0E0B1O_.exit.i.i.i, label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1K_E0E0B1O_.exit.thread.i.i.i, !prof !4

bb.m:                                             ; preds = %.lr.ph.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i.i.i, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #23, !noalias !180
  unreachable

_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1K_E0E0B1O_.exit.i.i.i: ; preds = %bb.l
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cu = load i32, ptr %i.ct, align 4, !alias.scope !178, !noalias !179, !noundef !3
  %i.cv = icmp eq i32 %i.ca, %i.cu
  br i1 %i.cv, label %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1I_E0EB1M_.exit.i.i, label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1K_E0E0B1O_.exit.thread.i.i.i, !prof !5

._crit_edge.i.i.i:                                ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1K_E0E0B1O_.exit.thread.i.i.i, %bb.j
  %i.cw = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, splat (i8 -1)
  %i.cx = bitcast <16 x i1> %i.cw to i16
  %i.cy = icmp eq i16 %i.cx, 0
  br i1 %i.cy, label %bb.n, label %_RINvMs3_NtCsffXo9NmvYC7_8indexmap3mapINtB6_8IndexMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE16swap_remove_fullBO_EBS_.exit, !prof !6

_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1K_E0E0B1O_.exit.thread.i.i.i: ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1K_E0E0B1O_.exit.i.i.i, %bb.l, %bb.k
  %i.cz = add i16 %.sroa.05.0.i40.i.i.i, -1
  %i.da = and i16 %i.cz, %.sroa.05.0.i40.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.da, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.n:                                             ; preds = %._crit_edge.i.i.i
  %i.db = add i64 %.sroa.011.0.i.i.i.i, 16        ; 2 uses
  %i.dc = add i64 %.sroa.01.0.i.i.i.i, %i.db
  br label %bb.j

_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1I_E0EB1M_.exit.i.i: ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1K_E0E0B1O_.exit.i.i.i
  %i.dd = getelementptr inbounds i8, ptr %i.cj, i64 -8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.de = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.ch ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.df = add nsw i64 %i.ch, -16
  %i.dg = and i64 %i.df, %i.bs
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.dg ; 2 uses
  %.sroa.0.0.copyload.i25.i.i.i.i = load <16 x i8>, ptr %i.dh, align 1, !noalias !183
  %i.di = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i.i, splat (i8 -1)
  %i.dj = bitcast <16 x i1> %i.di to i16
  %.sroa.0.0.copyload.i926.i.i.i.i = load <16 x i8>, ptr %i.de, align 1, !noalias !184
  %i.dk = icmp eq <16 x i8> %.sroa.0.0.copyload.i926.i.i.i.i, splat (i8 -1)
  %i.dl = bitcast <16 x i1> %i.dk to i16
  %i.dm = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.dj, i1 false)
  %i.dn = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dl, i1 false)
  %narrow.i.i.i.i = add nuw nsw i16 %i.dn, %i.dm
  %i.do = icmp samesign ugt i16 %narrow.i.i.i.i, 15
  br i1 %i.do, label %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1I_E0EB1M_.exit.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !alias.scope !185, !noalias !186, !noundef !3
  %i.dr = add i64 %i.dq, 1
  store i64 %i.dr, ptr %i.dp, align 8, !alias.scope !185, !noalias !186
  br label %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa.exit.i.i

_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa.exit.i.i: ; preds = %bb.o, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1I_E0EB1M_.exit.i.i
  %.sroa.0.0.i.i.i.i = phi i8 [ -1, %bb.o ], [ -128, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1I_E0EB1M_.exit.i.i ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i.i, ptr %i.de, align 1, !noalias !187
  %i.ds = getelementptr i8, ptr %i.dh, i64 16
  store i8 %.sroa.0.0.i.i.i.i, ptr %i.ds, align 1, !noalias !187
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !alias.scope !185, !noalias !186, !noundef !3
  %i.dv = add i64 %i.du, -1
  store i64 %i.dv, ptr %i.dt, align 8, !alias.scope !185, !noalias !186
  %i.dw = load i64, ptr %i.dd, align 8, !noalias !188, !noundef !3 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %i.dx = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.dx)
  %.not.i.i.i.i = icmp ult i64 %i.dw, %i.b
  br i1 %.not.i.i.i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEE11swap_removeB1e_.exit.i.i.i, label %bb.p, !prof !8

bb.p:                                             ; preds = %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa.exit.i.i
  tail call void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE11swap_remove13assert_failed(i64 noundef %i.dw, i64 noundef %i.b) #23, !noalias !191
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEE11swap_removeB1e_.exit.i.i.i: ; preds = %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa.exit.i.i
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.dw ; 3 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !192 ; 2 uses
  %i.dz = add nsw i64 %i.b, -1                    ; 4 uses
  %i.ea = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.dz
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, ptr noundef nonnull align 8 dereferenceable(24) %i.ea, i64 24, i1 false), !noalias !191
  store i64 %i.dz, ptr %i.a, align 8, !alias.scope !193, !noalias !194
  %i.eb = icmp samesign ult i64 %i.dw, %i.dz
  br i1 %i.eb, label %bb.q, label %_RINvMs3_NtCsffXo9NmvYC7_8indexmap3mapINtB6_8IndexMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE16swap_remove_fullBO_EBS_.exit

bb.q:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEE11swap_removeB1e_.exit.i.i.i
  %i.ec = load i64, ptr %i.dy, align 8, !noalias !195, !noundef !3 ; 2 uses
  %i.ed = lshr i64 %i.ec, 57
  %i.ee = trunc nuw nsw i64 %i.ed to i8
  %i.ef = insertelement <16 x i8> poison, i8 %i.ee, i64 0
  %i.eg = shufflevector <16 x i8> %i.ef, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %bb.q
  %.sroa.011.0.i.i.i.i.i.i = phi i64 [ 0, %bb.q ], [ %i.ex, %bb.t ]
  %.pn.i.i.i.i.i.i = phi i64 [ %i.ec, %bb.q ], [ %i.ey, %bb.t ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.bs ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i.i = load <16 x i8>, ptr %i.eh, align 1, !noalias !196 ; 2 uses
  %i.ei = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i, %i.eg
  %i.ej = bitcast <16 x i1> %i.ei to i16          ; 2 uses
  %.not.i.not32.i.i.i.i.i = icmp eq i16 %i.ej, 0
  br i1 %.not.i.not32.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.r, %bb.s
  %.sroa.05.0.i33.i.i.i.i.i = phi i16 [ %i.ew, %bb.s ], [ %i.ej, %bb.r ] ; 3 uses
  %i.ek = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i33.i.i.i.i.i, i1 true)
  %i.el = zext nneg i16 %i.ek to i64
  %i.em = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.el
  %i.en = and i64 %i.em, %i.bs
  %i.eo = sub nsw i64 0, %i.en
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.eo ; 2 uses
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 -8
  %.val2.i.i.i.i.i.i = load i64, ptr %i.eq, align 8, !noalias !197, !noundef !3
  %i.er = icmp eq i64 %.val2.i.i.i.i.i.i, %i.dz
  br i1 %i.er, label %_RNvNtCsffXo9NmvYC7_8indexmap5inner12update_index.exit.i.i.i, label %bb.s, !prof !8

._crit_edge.i.i.i.i.i:                            ; preds = %bb.s, %bb.r
  %i.es = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i, splat (i8 -1)
  %i.et = bitcast <16 x i1> %i.es to i16
  %i.eu = icmp eq i16 %i.et, 0
  br i1 %i.eu, label %bb.t, label %bb.u, !prof !6

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ev = add i16 %.sroa.05.0.i33.i.i.i.i.i, -1
  %i.ew = and i16 %i.ev, %.sroa.05.0.i33.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.ew, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.t:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ex = add i64 %.sroa.011.0.i.i.i.i.i.i, 16    ; 2 uses
  %i.ey = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.ex
  br label %bb.r

bb.u:                                             ; preds = %._crit_edge.i.i.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #23, !noalias !195
  unreachable

_RNvNtCsffXo9NmvYC7_8indexmap5inner12update_index.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ez = getelementptr inbounds i8, ptr %i.ep, i64 -8
  store i64 %i.dw, ptr %i.ez, align 8, !noalias !195
  br label %_RINvMs3_NtCsffXo9NmvYC7_8indexmap3mapINtB6_8IndexMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE16swap_remove_fullBO_EBS_.exit

_RINvMs3_NtCsffXo9NmvYC7_8indexmap3mapINtB6_8IndexMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE16swap_remove_fullBO_EBS_.exit: ; preds = %._crit_edge.i.i.i.i, %._crit_edge.i.i.i, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEE11swap_removeB1e_.exit.i.i.i, %_RNvNtCsffXo9NmvYC7_8indexmap5inner12update_index.exit.i.i.i, %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa.exit.i.i.i, %bb.a, %bb.b, %bb.c, %_RNvXCsiwaX7x13T3L_10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtB2_10EquivalentBs_E10equivalentBw_.exit.i
  %.sroa.4.0 = phi i32 [ %.sroa.3.0.copyload, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEE11swap_removeB1e_.exit.i.i.i ], [ 0, %._crit_edge.i.i.i ], [ 0, %bb.a ], [ 0, %_RNvXCsiwaX7x13T3L_10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtB2_10EquivalentBs_E10equivalentBw_.exit.i ], [ 0, %bb.c ], [ 0, %bb.b ], [ 1, %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa.exit.i.i.i ], [ %.sroa.3.0.copyload, %_RNvNtCsffXo9NmvYC7_8indexmap5inner12update_index.exit.i.i.i ], [ 1, %._crit_edge.i.i.i.i ]
  %.not = icmp ne i32 %.sroa.4.0, 0
  ret i1 %.not
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB5_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE5drainNtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullEBP_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 7 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtCsffXo9NmvYC7_8indexmap4util14simplify_rangeNtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullECsC8CapfvpQ1_5salsa(i64 noundef %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 12 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !256, !nonnull !3, !noundef !3 ; 4 uses
  %.not.i.i = icmp ugt i64 %i.f, %i.b
  br i1 %.not.i.i, label %bb.b, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE8split_atB15_.exit.i, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #23, !noalias !257
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE8split_atB15_.exit.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.f ; 3 uses
  %i.j = sub nuw nsw i64 %i.b, %i.f               ; 2 uses
  %.not.i5.i = icmp ugt i64 %i.e, %i.f
  br i1 %.not.i5.i, label %bb.c, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE8split_atB15_.exit9.i, !prof !6

bb.c:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE8split_atB15_.exit.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #23, !noalias !258
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE8split_atB15_.exit9.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE8split_atB15_.exit.i
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.e
  %i.l = sub nuw nsw i64 %i.f, %i.e               ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !256, !noundef !3 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !256, !noundef !3 ; 3 uses
  %i.r = add i64 %i.q, %i.o
  %i.s = lshr i64 %i.r, 1                         ; 2 uses
  %i.t = icmp eq i64 %i.f, %i.e
  br i1 %i.t, label %_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indicesBO_.exit, label %bb.d

bb.d:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE8split_atB15_.exit9.i
  %i.u = add nuw nsw i64 %i.j, %i.e
  %i.v = icmp samesign ult i64 %i.u, %i.s
  %i.w = icmp samesign ult i64 %i.e, %i.l
  %or.cond.i = and i1 %i.w, %i.v
  br i1 %or.cond.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = sub nuw nsw i64 %i.b, %i.e
  %i.y = icmp samesign ult i64 %i.x, %i.s
  br i1 %i.y, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.lr.ph.i, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.z = icmp eq i64 %i.o, 0
  br i1 %i.z, label %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE5clearCsC8CapfvpQ1_5salsa.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner13drop_elementsjECsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !259, !noundef !3 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.m, align 8, !alias.scope !259, !nonnull !3, !noundef !3
  %i.af = add i64 %i.ac, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ae, i8 -1, i64 %i.af, i1 false)
  %.pre.i.i.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !259
  %.pre.fr.i.i.i.i.i = freeze i64 %.pre.i.i.i.i.i ; 3 uses
  %i.ag = icmp ult i64 %.pre.fr.i.i.i.i.i, 8
  %i.ah = add i64 %.pre.fr.i.i.i.i.i, 1
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = mul nuw i64 %i.ai, 7
  %spec.select.i.i.i.i.i = select i1 %i.ag, i64 %.pre.fr.i.i.i.i.i, i64 %i.aj
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !259, !noundef !3 ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTablejENCNvMs6_B1w_B1t_5clear0EECsC8CapfvpQ1_5salsa.exit5.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %i.m, align 8, !alias.scope !259, !nonnull !3, !noundef !3
  %i.ao = add i64 %i.al, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.an, i8 -1, i64 %i.ao, i1 false)
  %.pre.i.i.i2.i.i = load i64, ptr %i.ak, align 8, !alias.scope !259
  %.pre.fr.i.i.i3.i.i = freeze i64 %.pre.i.i.i2.i.i ; 3 uses
  %i.ap = icmp ult i64 %.pre.fr.i.i.i3.i.i, 8
  %i.aq = add i64 %.pre.fr.i.i.i3.i.i, 1
  %i.ar = lshr i64 %i.aq, 3
  %i.as = mul nuw i64 %i.ar, 7
  %spec.select.i.i.i4.i.i = select i1 %i.ap, i64 %.pre.fr.i.i.i3.i.i, i64 %i.as
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTablejENCNvMs6_B1w_B1t_5clear0EECsC8CapfvpQ1_5salsa.exit5.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTablejENCNvMs6_B1w_B1t_5clear0EECsC8CapfvpQ1_5salsa.exit5.i.i: ; preds = %bb.k, %bb.j
  %i.at = phi i64 [ %spec.select.i.i.i4.i.i, %bb.k ], [ 0, %bb.j ]
  store i64 0, ptr %i.n, align 8, !alias.scope !259
  store i64 %i.at, ptr %i.p, align 8, !alias.scope !259
  br label %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE5clearCsC8CapfvpQ1_5salsa.exit.i

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.au = phi i64 [ %spec.select.i.i.i.i.i, %bb.i ], [ 0, %bb.h ]
  store i64 0, ptr %i.n, align 8, !alias.scope !259
  store i64 %i.au, ptr %i.p, align 8, !alias.scope !259
  resume { ptr, i32 } %i.aa

_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE5clearCsC8CapfvpQ1_5salsa.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTablejENCNvMs6_B1w_B1t_5clear0EECsC8CapfvpQ1_5salsa.exit5.i.i, %bb.f
  tail call fastcc void @_RINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEBW_(ptr noalias noundef align 8 dereferenceable(32) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.h, i64 noundef %i.e)
  tail call fastcc void @_RINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEBW_(ptr noalias noundef align 8 dereferenceable(32) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.i, i64 noundef %i.j)
  br label %_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indicesBO_.exit

bb.m:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aw = icmp eq i64 %i.o, 0
  br i1 %i.aw, label %_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indicesBO_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m
  %i.ax = load ptr, ptr %i.m, align 8, !alias.scope !262, !noalias !263, !nonnull !3, !noundef !3 ; 6 uses
  %.val24.i.i.i = load <16 x i8>, ptr %i.ax, align 16, !noalias !264
  %i.ay = icmp sgt <16 x i8> %.val24.i.i.i, splat (i8 -1)
  %i.az = bitcast <16 x i1> %i.ay to i16
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSBW_7sort_byNCINvMs1_BY_NtBY_5Zalsa3newNtNtB10_13database_impl12DatabaseImplE0E0EB10_:bb.a
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCINvMs1_B15_NtB15_5Zalsa3newNtNtB17_13database_impl12DatabaseImplE0E0EB17_.exit
  %.sroa.021.0 = phi i8 [ %i.cx, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCINvMs1_B15_NtB15_5Zalsa3newNtNtB17_13database_impl12DatabaseImplE0E0EB17_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCINvMs1_B15_NtB15_5Zalsa3newNtNtB17_13database_impl12DatabaseImplE0E0EB17_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i33 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCINvMs1_B14_NtB14_5Zalsa3newNtNtB16_13database_impl12DatabaseImplE0E0EB16_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7reverseBy_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.r = load i8, ptr %i.q, align 8, !range !328, !alias.scope !329, !noalias !330, !noundef !3 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.t = load i8, ptr %i.s, align 8, !range !328, !alias.scope !331, !noalias !332, !noundef !3 ; 2 uses
  %i.u = sub nsw i8 %i.r, %i.t
  %i.v = tail call { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.p), !noalias !330 ; 2 uses
  %i.w = extractvalue { ptr, i64 } %i.v, 0
  %i.x = extractvalue { ptr, i64 } %i.v, 1        ; 2 uses
  %i.y = tail call { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n), !noalias !333 ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0
  %i.aa = extractvalue { ptr, i64 } %i.y, 1       ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.aa)
  %i.ab = tail call i32 @memcmp(ptr %i.w, ptr %i.z, i64 %spec.store.select.i.i.i), !noalias !333 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %i.ae = sub i64 %i.x, %i.aa
  %spec.select.i.i.i = select i1 %i.ad, i64 %i.ae, i64 %i.ac
  %i.af = icmp eq i8 %i.r, %i.t
  %i.ag = icmp slt i64 %spec.select.i.i.i, 0
  %i.ah = icmp eq i8 %i.u, -1
  %i.ai = select i1 %i.af, i1 %i.ag, i1 %i.ah     ; 2 uses
  %.not32.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.ai, label %.preheader.i, label %.preheader21.i

.preheader21.i:                                   ; preds = %bb.k
  br i1 %.not32.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7reverseBy_.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not32.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph27.i

.lr.ph.i:                                         ; preds = %.preheader21.i, %bb.l
  %.sroa.01.0.i23.i = phi i64 [ %i.be, %bb.l ], [ 2, %.preheader21.i ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.01.0.i23.i ; 4 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 -40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.am = load i8, ptr %i.al, align 8, !range !328, !alias.scope !338, !noalias !339, !noundef !3 ; 2 uses
  %i.an = getelementptr i8, ptr %i.aj, i64 -8
  %i.ao = load i8, ptr %i.an, align 8, !range !328, !alias.scope !340, !noalias !341, !noundef !3 ; 2 uses
  %i.ap = sub nsw i8 %i.am, %i.ao
  %i.aq = tail call { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.aj), !noalias !339 ; 2 uses
  %i.ar = extractvalue { ptr, i64 } %i.aq, 0
  %i.as = extractvalue { ptr, i64 } %i.aq, 1      ; 2 uses
  %i.at = tail call { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ak), !noalias !333 ; 2 uses
  %i.au = extractvalue { ptr, i64 } %i.at, 0
  %i.av = extractvalue { ptr, i64 } %i.at, 1      ; 2 uses
  %spec.store.select.i.i7.i = tail call i64 @llvm.umin.i64(i64 %i.as, i64 %i.av)
  %i.aw = tail call i32 @memcmp(ptr %i.ar, ptr %i.au, i64 %spec.store.select.i.i7.i), !noalias !333 ; 2 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = icmp eq i32 %i.aw, 0
  %i.az = sub i64 %i.as, %i.av
  %spec.select.i.i8.i = select i1 %i.ay, i64 %i.az, i64 %i.ax
  %i.ba = icmp eq i8 %i.am, %i.ao
  %i.bb = icmp slt i64 %spec.select.i.i8.i, 0
  %i.bc = icmp eq i8 %i.ap, -1
  %i.bd = select i1 %i.ba, i1 %i.bb, i1 %i.bc
  br i1 %i.bd, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCINvMs1_B14_NtB14_5Zalsa3newNtNtB16_13database_impl12DatabaseImplE0E0EB16_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.be = add nuw nsw i64 %.sroa.01.0.i23.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.be, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCINvMs1_B14_NtB14_5Zalsa3newNtNtB16_13database_impl12DatabaseImplE0E0EB16_.exit.i, label %.lr.ph.i

.lr.ph27.i:                                       ; preds = %.preheader.i, %bb.m
  %.sroa.01.1.i26.i = phi i64 [ %i.ca, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.01.1.i26.i ; 4 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 -40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bi = load i8, ptr %i.bh, align 8, !range !328, !alias.scope !346, !noalias !347, !noundef !3 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bf, i64 -8
  %i.bk = load i8, ptr %i.bj, align 8, !range !328, !alias.scope !348, !noalias !349, !noundef !3 ; 2 uses
  %i.bl = sub nsw i8 %i.bi, %i.bk
  %i.bm = tail call { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bf), !noalias !347 ; 2 uses
  %i.bn = extractvalue { ptr, i64 } %i.bm, 0
  %i.bo = extractvalue { ptr, i64 } %i.bm, 1      ; 2 uses
  %i.bp = tail call { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bg), !noalias !333 ; 2 uses
  %i.bq = extractvalue { ptr, i64 } %i.bp, 0
  %i.br = extractvalue { ptr, i64 } %i.bp, 1      ; 2 uses
  %spec.store.select.i.i9.i = tail call i64 @llvm.umin.i64(i64 %i.bo, i64 %i.br)
  %i.bs = tail call i32 @memcmp(ptr %i.bn, ptr %i.bq, i64 %spec.store.select.i.i9.i), !noalias !333 ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = icmp eq i32 %i.bs, 0
  %i.bv = sub i64 %i.bo, %i.br
  %spec.select.i.i10.i = select i1 %i.bu, i64 %i.bv, i64 %i.bt
  %i.bw = icmp eq i8 %i.bi, %i.bk
  %i.bx = icmp slt i64 %spec.select.i.i10.i, 0
  %i.by = icmp eq i8 %i.bl, -1
  %i.bz = select i1 %i.bw, i1 %i.bx, i1 %i.by
  br i1 %i.bz, label %bb.m, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCINvMs1_B14_NtB14_5Zalsa3newNtNtB16_13database_impl12DatabaseImplE0E0EB16_.exit.i

bb.m:                                             ; preds = %.lr.ph27.i
  %i.ca = add nuw nsw i64 %.sroa.01.1.i26.i, 1    ; 2 uses
  %exitcond35.not.i = icmp eq i64 %i.ca, %i.m
  br i1 %exitcond35.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCINvMs1_B14_NtB14_5Zalsa3newNtNtB16_13database_impl12DatabaseImplE0E0EB16_.exit.i, label %.lr.ph27.i

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCINvMs1_B14_NtB14_5Zalsa3newNtNtB16_13database_impl12DatabaseImplE0E0EB16_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph27.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i26.i, %.lr.ph27.i ], [ %.sroa.01.0.i23.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 5 uses
  %i.cb = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.cb)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCINvMs1_B14_NtB14_5Zalsa3newNtNtB16_13database_impl12DatabaseImplE0E0EB16_.exit.i
  %i.cc = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.cc, 0
  %or.cond.not.i = and i1 %i.ai, %.not.i.i.i
  br i1 %or.cond.not.i, label %.lr.ph.preheader.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7reverseBy_.exit.i

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i11.i = tail call noundef range(i64 0, 384307168202282326) i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.m, i64 %.sroa.01.0)
  %i.cd = shl nuw nsw i64 %.sroa.0.0.i11.i, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCINvMs1_B15_NtB15_5Zalsa3newNtNtB17_13database_impl12DatabaseImplE0E0EB17_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i12.i = tail call noundef range(i64 0, 384307168202282326) i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCINvMs1_B17_NtB17_5Zalsa3newNtNtB19_13database_impl12DatabaseImplE0E0EB19_(ptr noalias noundef nonnull align 8 %i.n, i64 noundef %.sroa.0.0.i12.i, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.ce = shl nuw nsw i64 %.sroa.0.0.i12.i, 1
  %i.cf = or disjoint i64 %i.ce, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCINvMs1_B15_NtB15_5Zalsa3newNtNtB17_13database_impl12DatabaseImplE0E0EB17_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7reverseBy_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEB14_.exit.i.i.i, %.preheader21.i, %bb.n, %bb.j
  %.sroa.0.0.i18.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader21.i ], [ %.sroa.0.0.i445155.i, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEB14_.exit.i.i.i ]
  %i.cg = shl nuw nsw i64 %.sroa.0.0.i18.i, 1
  %i.ch = or disjoint i64 %i.cg, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCINvMs1_B15_NtB15_5Zalsa3newNtNtB17_13database_impl12DatabaseImplE0E0EB17_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ci = phi i64 [ %i.cc, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i445155.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.0.0.i445155.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEB14_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.co, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEB14_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.ck = xor i64 %.sroa.0.017.i.i.i, -1
  %i.cl = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.cm = getelementptr [40 x i8], ptr %i.cj, i64 %i.ck
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull %i.cl, ptr noundef nonnull %i.cm, i64 noundef 5)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEB14_.exit.i.i.i unwind label %bb.q, !noalias !333

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #24, !noalias !333
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEB14_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.co = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.co, %i.ci
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7reverseBy_.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCINvMs1_B15_NtB15_5Zalsa3newNtNtB17_13database_impl12DatabaseImplE0E0EB17_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7reverseBy_.exit.i
  %.sroa.0.0.i34 = phi i64 [ %i.ch, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7reverseBy_.exit.i ], [ %i.cf, %bb.p ], [ %i.cd, %bb.o ] ; 2 uses
  %i.cp = lshr i64 %.sroa.023.0, 1
  %i.cq = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.cr = sub nsw i64 %factor, %i.cp
  %i.cs = add nuw nsw i64 %i.cq, %factor
  %i.ct = mul i64 %i.cr, %.sroa.0.0
  %i.cu = mul i64 %i.cs, %.sroa.0.0
  %i.cv = xor i64 %i.cu, %i.ct
  %i.cw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cv, i1 false)
  %i.cx = trunc nuw nsw i64 %i.cw to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCINvMs1_B18_NtB18_5Zalsa3newNtNtB1a_13database_impl12DatabaseImplE0E0EB1a_.exit
  %.sroa.02.138 = phi i64 [ %6, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCINvMs1_B18_NtB18_5Zalsa3newNtNtB1a_13database_impl12DatabaseImplE0E0EB1a_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.137 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCINvMs1_B18_NtB18_5Zalsa3newNtNtB1a_13database_impl12DatabaseImplE0E0EB1a_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %6 = add i64 %.sroa.02.138, -1                  ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 %6
  %i.cz = load i8, ptr %i.cy, align 1, !noundef !3
  %.not29 = icmp ult i8 %i.cz, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCINvMs1_B18_NtB18_5Zalsa3newNtNtB1a_13database_impl12DatabaseImplE0E0EB1a_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.137, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCINvMs1_B18_NtB18_5Zalsa3newNtNtB1a_13database_impl12DatabaseImplE0E0EB1a_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.138, %.lr.ph ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCINvMs1_B18_NtB18_5Zalsa3newNtNtB1a_13database_impl12DatabaseImplE0E0EB1a_.exit ] ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.db, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %6
  %i.dd = load i64, ptr %i.dc, align 8, !noundef !3 ; 3 uses
  %i.de = lshr i64 %i.dd, 1                       ; 5 uses
  %i.df = lshr i64 %.sroa.023.137, 1              ; 3 uses
  %i.dg = add nuw i64 %i.de, %i.df                ; 5 uses
  %i.dh = sub i64 %.sroa.09.0, %i.dg
  %i.di = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.dh ; 3 uses
  %i.dj = icmp samesign ugt i64 %i.dg, %3
  %i.dk = trunc i64 %.sroa.023.137 to i1
  %i.dl = or i64 %i.dd, %.sroa.023.137
  %i.dm = trunc i64 %i.dl to i1
  %or.cond3.i = or i1 %i.dj, %i.dm
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dn = trunc i64 %i.dd to i1
  br i1 %i.dn, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.do = shl nuw nsw i64 %i.dg, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCINvMs1_B18_NtB18_5Zalsa3newNtNtB1a_13database_impl12DatabaseImplE0E0EB1a_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.dk, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.dp = or i64 %i.de, 1
  %i.dq = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.dp, i1 true)
  %i.dr = trunc nuw nsw i64 %i.dq to i32
  %i.ds = shl nuw nsw i32 %i.dr, 1
  %i.dt = xor i32 %i.ds, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCINvMs1_B17_NtB17_5Zalsa3newNtNtB19_13database_impl12DatabaseImplE0E0EB19_(ptr noalias noundef nonnull align 8 %i.di, i64 noundef range(i64 0, 230584300921369396) %i.de, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.dt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.u

bb.w:                                             ; preds = %bb.x, %bb.u
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSBX_7sort_byNCINvMs1_BZ_NtBZ_5Zalsa3newNtNtB11_13database_impl12DatabaseImplE0E0EB11_(ptr noalias noundef nonnull align 8 %i.di, i64 noundef range(i64 0, 230584300921369396) %i.dg, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i64 noundef %i.de, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.du = shl nuw nsw i64 %i.dg, 1
  %i.dv = or disjoint i64 %i.du, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCINvMs1_B18_NtB18_5Zalsa3newNtNtB1a_13database_impl12DatabaseImplE0E0EB1a_.exit

bb.x:                                             ; preds = %bb.u
  %i.dw = getelementptr inbounds nuw [40 x i8], ptr %i.di, i64 %i.de
  %i.dx = or i64 %i.df, 1
  %i.dy = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.dx, i1 true)
  %i.dz = trunc nuw nsw i64 %i.dy to i32
  %i.ea = shl nuw nsw i32 %i.dz, 1
  %i.eb = xor i32 %i.ea, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCINvMs1_B17_NtB17_5Zalsa3newNtNtB19_13database_impl12DatabaseImplE0E0EB19_(ptr noalias noundef nonnull align 8 %i.dw, i64 noundef range(i64 0, 230584300921369396) %i.df, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.eb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.w

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCINvMs1_B18_NtB18_5Zalsa3newNtNtB1a_13database_impl12DatabaseImplE0E0EB1a_.exit: ; preds = %bb.t, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.dv, %bb.w ], [ %i.do, %bb.t ] ; 2 uses
  %i.ec = icmp ugt i64 %6, 1
  br i1 %i.ec, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ed = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ee = lshr i64 %.sroa.018.0, 1
  %i.ef = add nuw i64 %i.ee, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.eg = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.eg, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.eh = or i64 %1, 1
  %i.ei = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.eh, i1 true)
  %i.ej = trunc nuw nsw i64 %i.ei to i32
  %i.ek = shl nuw nsw i32 %i.ej, 1
  %i.el = xor i32 %i.ek, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCINvMs1_B17_NtB17_5Zalsa3newNtNtB19_13database_impl12DatabaseImplE0E0EB19_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.el, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef align 8 ptr @_RINvNvCseiUJRdNtLVy_9inventory1__9into_iterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEBJ_() unnamed_addr #1 {
bb.a:
  %i.a = load atomic ptr, ptr @_RNvNvXsA_NtCsC8CapfvpQ1_5salsa5zalsaNtB7_9ErasedJarNtCseiUJRdNtLVy_9inventory7Collect8registry8REGISTRY acquire, align 8
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtCsffXo9NmvYC7_8indexmap3mapINtB6_8IndexMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEINtNtNtNtB1D_4iter6traits7collect12FromIteratorTBO_uEE9from_iterINtNtNtB35_8adapters3map3MapIB41_INtNtB45_6filter6FilterINtNtB45_6copied6CopiedINtNtNtB1D_5slice4iter4IterNtNtBS_11zalsa_local9QueryEdgeEENCNvMsm_B5K_NtB5K_10QueryEdges12iter_outputs0ENvMsi_B5K_B5I_3keyENCINvXs6_NtB8_3setINtB7q_8IndexSetBO_B1y_EIB2Z_BO_E9from_iterB4s_E0EEBS_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %i.d = alloca [56 x i8], align 8                ; 9 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %2, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !372
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENtNtNtB8_6traits8iterator8Iterator9size_hintB1v_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e), !noalias !373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8, !alias.scope !374
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !374
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !374
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @11, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !375
  store ptr %1, ptr %i.b, align 8, !noalias !375
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.g, align 8, !noalias !375
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !376
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENtNtNtB8_6traits8iterator8Iterator9size_hintB1v_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !376
  invoke void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_6filter6FilterINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B2b_NtB2b_10QueryEdges12iter_outputs0ENvMsi_B2b_B29_3keyENCINvXs6_NtCsffXo9NmvYC7_8indexmap3setINtB47_8IndexSetNtNtB2d_3key16DatabaseKeyIndexINtNtBc_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEINtNtNtBa_6traits7collect12FromIteratorB4Q_E9from_iterBX_E0ENtNtB6z_8iterator8Iterator4folduNCINvNvB7s_8for_each4callTB4Q_uENCINvXsb_NtB49_3mapINtB8D_8IndexMapB4Q_uB5k_EINtB6x_6ExtendB8n_E6extendBN_E0E0EB2d_(ptr noundef nonnull %1, ptr noundef %2, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsffXo9NmvYC7_8indexmap3map8IndexMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuINtNtB4_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEEB1k_(ptr noalias noundef align 8 dereferenceable(56) %i.d) #25
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !375
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsb_NtCsffXo9NmvYC7_8indexmap3mapINtB6_8IndexMapNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEINtNtNtNtB1E_4iter6traits7collect6ExtendTBO_uEE6extendINtNtNtB36_8adapters3map3MapINtNtB3W_6filter6FilterINtNtB3W_6copied6CopiedINtNtNtB1E_5slice4iter4IterBO_EENCNvMsm_BQ_NtBQ_10QueryEdges12iter_outputs0ENCINvXs8_NtB8_3setINtB6q_8IndexSetBO_B1z_EIB30_BO_E6extendB4j_E0EEBS_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsffXo9NmvYC7_8indexmap5inner8get_hashNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB1M_.exit.i:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !383
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENtNtNtB8_6traits8iterator8Iterator9size_hintB1v_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b), !noalias !384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !383
  call void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B27_NtB27_10QueryEdges12iter_outputs0ENCINvXs8_NtCsffXo9NmvYC7_8indexmap3setINtB3K_8IndexSetB25_INtNtBc_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEINtNtNtBa_6traits7collect6ExtendB25_E6extendBX_E0ENtNtB5M_8iterator8Iterator4folduNCINvNvB6v_8for_each4callTB25_uENCINvXsb_NtB3M_3mapINtB7G_8IndexMapB25_uB4x_EIB5I_B7q_E6extendBN_E0E0EB29_(ptr noundef nonnull %1, ptr noundef %2, ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvMNtCsC8CapfvpQ1_5salsa3keyNtB2_16DatabaseKeyIndex19maybe_changed_after(ptr noalias noundef readonly align 4 captures(none) dereferenceable(12) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4, !noundef !3
  %i.c = zext i32 %i.b to i64                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.e = load i64, ptr %i.d, align 8, !noundef !3 ; 2 uses
  %i.f = icmp ugt i64 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.c ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !3, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !3, !align !11, !noundef !3
  %i.m = load i32, ptr %0, align 4, !range !7, !noundef !3
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load i32, ptr %i.n, align 4, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !3, !nonnull !3
  %i.r = tail call noundef i8 %i.q(ptr noundef nonnull %i.j, ptr noundef nonnull align 8 %2, ptr noundef nonnull %1, i32 noundef %i.m, i32 noundef %i.o, i64 noundef %3)
  ret i8 %i.r

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.c, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCsC8CapfvpQ1_5salsa3keyNtB2_16DatabaseKeyIndex19remove_stale_output(ptr noalias noundef readonly align 4 captures(none) dereferenceable(12) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4, !noundef !3
  %i.c = zext i32 %i.b to i64                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i64, ptr %i.d, align 8, !noundef !3 ; 2 uses
  %i.f = icmp ugt i64 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.c ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !3, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !3, !align !11, !noundef !3
  %i.m = load i32, ptr %0, align 4, !range !7, !noundef !3
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load i32, ptr %i.n, align 4, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !3, !nonnull !3
  tail call void %i.q(ptr noundef nonnull %i.j, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %2, i32 noundef %i.m, i32 noundef %i.o)
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.c, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCsC8CapfvpQ1_5salsa3keyNtB2_16DatabaseKeyIndex21mark_validated_output(ptr noalias noundef readonly align 4 captures(none) dereferenceable(12) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4, !noundef !3
  %i.c = zext i32 %i.b to i64                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i64, ptr %i.d, align 8, !noundef !3 ; 2 uses
  %i.f = icmp ugt i64 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.c ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !3, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !3, !align !11, !noundef !3
  %i.m = load i32, ptr %0, align 4, !range !7, !noundef !3
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load i32, ptr %i.n, align 4, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !3, !nonnull !3
  tail call void %i.q(ptr noundef nonnull %i.j, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %2, i32 noundef %i.m, i32 noundef %i.o)
end_hunk_1
