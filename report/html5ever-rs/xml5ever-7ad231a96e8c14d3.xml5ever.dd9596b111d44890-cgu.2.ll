Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/html5ever-rs/original/xml5ever-7ad231a96e8c14d3.xml5ever.dd9596b111d44890-cgu.2?download=true
inline.NumInlined: 83
inline.NumDeleted: 56
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [92 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/alloc/src/collections/btree/node.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\F0\00\00\00M\00\00\00" }>, align 8
@2 = private unnamed_addr constant [53 x i8] c"assertion failed: edge.height == self.node.height - 1", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\03\04\00\00\09\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\13\05\00\00$\00\00\00" }>, align 8
@5 = private unnamed_addr constant [40 x i8] c"assertion failed: src.len() == dst.len()", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00T\07\00\00\05\00\00\00" }>, align 8
@7 = private unnamed_addr constant [97 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/alloc/src/collections/btree/map/entry.rs\00", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"`\00\00\00\00\00\00\00\D1\01\00\00.\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\D0\04\00\00#\00\00\00" }>, align 8
@10 = private unnamed_addr constant [32 x i8] c"assertion failed: idx < CAPACITY", align 1
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\9E\02\00\00\09\00\00\00" }>, align 8
@12 = private unnamed_addr constant [48 x i8] c"assertion failed: edge.height == self.height - 1", align 1
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\B6\02\00\00\09\00\00\00" }>, align 8
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\BA\02\00\00\09\00\00\00" }>, align 8
@15 = private unnamed_addr constant [101 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/string_cache-0.11.0/src/atom.rs\00", align 1
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"d\00\00\00\00\00\00\00U\01\00\00\1F\00\00\00" }>, align 8
@_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET = external local_unnamed_addr global { { ptr, i64 }, { ptr, i64 }, { ptr, i64 }, i64 }

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs8_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1t_IB25_NtB2N_18NamespaceStaticSetEENtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECsj1ugBVjDER0_8xml5ever() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1q_IB22_NtB2K_18NamespaceStaticSetEEEE13new_uninit_inCsj1ugBVjDER0_8xml5ever() ; 3 uses
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 186
  store i16 0, ptr %i.b, align 2
  %i.c = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 0, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1E_IB2g_NtB2Y_18NamespaceStaticSetEENtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB5p_11VacantEntryB1D_B3F_E12insert_entry0ECsj1ugBVjDER0_8xml5ever(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %4, ptr noalias nofree noundef nonnull readonly captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [48 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 %2, ptr %i.k, align 8, !noalias !7
  store i64 %3, ptr %i.j, align 8, !noalias !7
  %i.m = load ptr, ptr %1, align 8, !alias.scope !4, !noalias !9, !nonnull !10, !noundef !10 ; 11 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 186 ; 4 uses
  %i.o = load i16, ptr %i.n, align 2, !noalias !7, !noundef !10 ; 3 uses
  %i.p = icmp ugt i16 %i.o, 10
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !4, !noalias !9, !noundef !10 ; 6 uses
  %i.s = icmp ult i64 %i.r, 5
  br i1 %i.s, label %bb.h, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11)
  %i.t = zext nneg i16 %i.o to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !14, !noalias !15, !noundef !10 ; 7 uses
  %i.x = add i64 %i.w, 1                          ; 3 uses
  %.not.i.i = icmp ugt i64 %i.x, %i.t
  br i1 %.not.i.i, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.w
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.x
  %i.aa = sub nsw i64 %i.t, %i.w
  %i.ab = shl nuw nsw i64 %i.aa, 3                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr nonnull align 8 %i.y, i64 %i.ab, i1 false), !alias.scope !17, !noalias !20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 96 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.w
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull align 8 %i.ad, i64 %i.ab, i1 false), !alias.scope !21, !noalias !20
  br label %bb.u

bb.e:                                             ; preds = %bb.b
  switch i64 %i.r, label %bb.f [
    i64 5, label %bb.h
    i64 6, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.af = add i64 %i.r, -7
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.b
  %.sroa.09.0.i = phi i1 [ true, %bb.g ], [ true, %bb.f ], [ false, %bb.b ], [ false, %bb.e ] ; 2 uses
  %.sroa.510.0.i = phi i64 [ 0, %bb.g ], [ %i.af, %bb.f ], [ %i.r, %bb.b ], [ %i.r, %bb.e ] ; 9 uses
  %.sroa.013.0.i = phi i64 [ 5, %bb.g ], [ 6, %bb.f ], [ 4, %bb.b ], [ %i.r, %bb.e ] ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !4, !noalias !9, !noundef !10 ; 4 uses
  %i.ai = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1q_IB22_NtB2K_18NamespaceStaticSetEEEE13new_uninit_inCsj1ugBVjDER0_8xml5ever()
          to label %.noexc.i unwind label %bb.n, !noalias !7 ; 8 uses

.noexc.i:                                         ; preds = %bb.h
  store ptr null, ptr %i.ai, align 8, !noalias !24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 186 ; 2 uses
  store i16 0, ptr %i.aj, align 2, !noalias !24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.ak = load i16, ptr %i.n, align 2, !noalias !31, !noundef !10
  %i.al = zext i16 %i.ak to i64
  %i.am = xor i64 %.sroa.013.0.i, -1
  %i.an = add nsw i64 %i.al, %i.am                ; 4 uses
  %i.ao = trunc i64 %i.an to i16
  store i16 %i.ao, ptr %i.aj, align 2, !alias.scope !28, !noalias !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !31
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.sroa.013.0.i
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !31, !noundef !10 ; 3 uses
  store i64 %i.ar, ptr %i.i, align 8, !noalias !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !31
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 96 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.sroa.013.0.i
  %i.au = load i64, ptr %i.at, align 8, !noalias !31, !noundef !10 ; 3 uses
  store i64 %i.au, ptr %i.h, align 8, !noalias !31
  %i.av = icmp ult i64 %i.an, 12
  br i1 %i.av, label %bb.o, label %bb.i, !prof !32

bb.i:                                             ; preds = %.noexc.i
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.an, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #18
          to label %bb.k unwind label %bb.j, !noalias !31

bb.j:                                             ; preds = %bb.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(8) %i.h) #19
          to label %bb.m unwind label %bb.l, !noalias !31

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.m, %bb.j
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !31
  unreachable

bb.m:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(8) %i.i) #19
          to label %.thread.i.i unwind label %bb.l, !noalias !31

.thread.i.i:                                      ; preds = %bb.m
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef 192, i64 noundef 8) #21, !noalias !24
  br label %bb.r

bb.n:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %.noexc.i
  %i.az = add nuw nsw i64 %.sroa.013.0.i, 1       ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.bc = shl nuw nsw i64 %i.an, 3                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr nonnull readonly align 8 %i.ba, i64 %i.bc, i1 false), !alias.scope !33, !noalias !24
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.az
  %i.be = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.be, ptr nonnull readonly align 8 %i.bd, i64 %i.bc, i1 false), !alias.scope !37, !noalias !24
  %i.bf = trunc nuw nsw i64 %.sroa.013.0.i to i16
  store i16 %i.bf, ptr %i.n, align 2, !noalias !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !31
  %spec.select.i = select i1 %.sroa.09.0.i, i64 0, i64 %i.ah ; 2 uses
  %spec.select31.i = select i1 %.sroa.09.0.i, ptr %i.ai, ptr %i.m ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %spec.select31.i, i64 186 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !noalias !41, !noundef !10 ; 2 uses
  %i.bi = zext i16 %i.bh to i64                   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %spec.select31.i, i64 8 ; 3 uses
  %.not.i16.not.i = icmp ult i64 %.sroa.510.0.i, %i.bi
  br i1 %.not.i16.not.i, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.bk = add nuw nsw i64 %.sroa.510.0.i, 1       ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %.sroa.510.0.i
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bk
  %i.bn = sub nuw nsw i64 %i.bi, %.sroa.510.0.i
  %i.bo = shl nuw nsw i64 %i.bn, 3                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr nonnull align 8 %i.bl, i64 %i.bo, i1 false), !alias.scope !45, !noalias !41
  %i.bp = getelementptr inbounds nuw i8, ptr %spec.select31.i, i64 96 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.sroa.510.0.i
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bk
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.br, ptr nonnull align 8 %i.bq, i64 %i.bo, i1 false), !alias.scope !48, !noalias !41
  br label %bb.t

bb.q:                                             ; preds = %bb.s, %bb.r
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !7
  unreachable

bb.r:                                             ; preds = %bb.n, %.thread.i.i
  %.pn.ph.i = phi { ptr, i32 } [ %i.aw, %.thread.i.i ], [ %i.ay, %bb.n ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(8) %i.j) #19
          to label %bb.s unwind label %bb.q, !noalias !7

bb.s:                                             ; preds = %bb.r
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(8) %i.k) #19
          to label %.critedge22 unwind label %bb.q, !noalias !7

bb.t:                                             ; preds = %bb.p, %bb.o
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %.sroa.510.0.i
  store i64 %2, ptr %i.bt, align 8, !alias.scope !45, !noalias !41
  %i.bu = getelementptr inbounds nuw i8, ptr %spec.select31.i, i64 96
  %i.bv = add i16 %i.bh, 1
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.sroa.510.0.i
  store i64 %3, ptr %i.bw, align 8, !alias.scope !48, !noalias !41
  store i16 %i.bv, ptr %i.bg, align 2, !noalias !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bx = load ptr, ptr %i.m, align 8, !noalias !51, !noundef !10 ; 2 uses
  %.not.i184 = icmp eq ptr %i.bx, null
  br i1 %.not.i184, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bz = icmp eq i64 %i.ah, 0
  br label %bb.ak

bb.u:                                             ; preds = %bb.c, %bb.d
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.w
  store i64 %2, ptr %i.ca, align 8, !alias.scope !17, !noalias !20
  %i.cb = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.cc = add nuw nsw i16 %i.o, 1
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.w
  store i64 %3, ptr %i.cd, align 8, !alias.scope !21, !noalias !20
  store i16 %i.cc, ptr %i.n, align 2, !noalias !20
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !14, !noalias !15, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.bt

._crit_edge:                                      ; preds = %.loopexit74, %bb.t
  %.lcssa177 = phi i64 [ 0, %bb.t ], [ %i.dg, %.loopexit74 ] ; 2 uses
  %.lcssa170 = phi ptr [ %i.ai, %bb.t ], [ %i.fz, %.loopexit74 ] ; 4 uses
  %.lcssa163 = phi i64 [ %i.ar, %bb.t ], [ %i.gi, %.loopexit74 ] ; 3 uses
  %.lcssa156 = phi i64 [ %i.ah, %bb.t ], [ %i.dg, %.loopexit74 ]
  %.lcssa = phi ptr [ %i.m, %bb.t ], [ %i.da, %.loopexit74 ]
  %storemerge.lcssa = phi i64 [ %i.au, %bb.t ], [ %i.gl, %.loopexit74 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %.lcssa, ptr %i.l, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %.lcssa156, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %.lcssa170, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %.lcssa177, ptr %.sroa.66.0..sroa_idx, align 8
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  store i64 %.lcssa163, ptr %.sroa.77.0..sroa_idx, align 8
  %.sroa.88.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  store i64 %storemerge.lcssa, ptr %.sroa.88.0..sroa_idx, align 8
  %.val = load ptr, ptr %4, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.cg = load ptr, ptr %.val, align 8, !noalias !54, !noundef !10 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %.not.i25 = icmp eq ptr %i.cg, null
  br i1 %.not.i25, label %bb.v, label %bb.x, !prof !57

bb.v:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #18
          to label %bb.w unwind label %bb.ah, !noalias !54

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !58, !noalias !54, !noundef !10 ; 2 uses
  %i.cj = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1v_IB27_NtB2P_18NamespaceStaticSetEEEE13new_uninit_inCsj1ugBVjDER0_8xml5ever()
          to label %.noexc.i.i unwind label %bb.ab, !noalias !61 ; 9 uses

.noexc.i.i:                                       ; preds = %bb.x
  store ptr null, ptr %i.cj, align 8, !noalias !61
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 186 ; 3 uses
  store i16 0, ptr %i.ck, align 2, !noalias !61
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 192 ; 2 uses
  store ptr %i.cg, ptr %i.cl, align 8, !noalias !61
  %i.cm = add i64 %i.ci, 1                        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not.i.i.i.i.i, label %bb.y, label %bb.ac, !prof !57

bb.y:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #18
          to label %bb.z unwind label %bb.aa, !noalias !61

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cj, i64 noundef 288, i64 noundef 8) #21, !noalias !61
  br label %.body.i.i

bb.ab:                                            ; preds = %bb.x
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ab, %bb.aa
  tail call void @llvm.trap()
  unreachable

bb.ac:                                            ; preds = %.noexc.i.i
  store ptr %i.cj, ptr %i.cg, align 8, !noalias !62
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 184
  store i16 0, ptr %i.cp, align 8, !noalias !67
  store ptr %i.cj, ptr %.val, align 8, !alias.scope !58, !noalias !54
  store i64 %i.cm, ptr %i.ch, align 8, !alias.scope !58, !noalias !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !54
  store i64 %.lcssa163, ptr %i.g, align 8, !noalias !54
  store i64 %storemerge.lcssa, ptr %i.f, align 8, !noalias !54
  %i.cq = icmp eq i64 %.lcssa177, %i.ci
  br i1 %i.cq, label %bb.ad, label %.invoke.i.i, !prof !68

.invoke.i.i:                                      ; preds = %bb.ad, %bb.ac
  %i.cr = phi ptr [ @12, %bb.ac ], [ @10, %bb.ad ]
  %i.cs = phi i64 [ 48, %bb.ac ], [ 32, %bb.ad ]
  %i.ct = phi ptr [ @13, %bb.ac ], [ @14, %bb.ad ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cr, i64 noundef %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ct) #18
          to label %.cont.i.i unwind label %bb.ae, !noalias !54

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.cu = load i16, ptr %i.ck, align 2, !noalias !54, !noundef !10 ; 3 uses
  %i.cv = icmp ult i16 %i.cu, 11
  br i1 %i.cv, label %bb.bu, label %.invoke.i.i, !prof !68

bb.ae:                                            ; preds = %.invoke.i.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(8) %i.f) #19
          to label %bb.ag unwind label %bb.af, !noalias !54

bb.af:                                            ; preds = %bb.ag, %bb.ae
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !54
  unreachable

bb.ag:                                            ; preds = %bb.ae
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(8) %i.g) #19
          to label %.critedge22 unwind label %bb.af, !noalias !54

bb.ah:                                            ; preds = %bb.v
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(8) %.sroa.77.0..sroa_idx) #19
          to label %bb.aj unwind label %bb.ai

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.aj:                                            ; preds = %bb.ah
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(8) %.sroa.88.0..sroa_idx) #19
          to label %.critedge22 unwind label %bb.ai

bb.ak:                                            ; preds = %.lr.ph, %.loopexit74
  %i.da = phi ptr [ %i.bx, %.lr.ph ], [ %i.kn, %.loopexit74 ] ; 24 uses
  %storemerge185 = phi i64 [ %i.au, %.lr.ph ], [ %i.gl, %.loopexit74 ] ; 5 uses
  %i.db = phi ptr [ %i.m, %.lr.ph ], [ %i.da, %.loopexit74 ]
  %i.dc = phi i64 [ %i.ah, %.lr.ph ], [ %i.dg, %.loopexit74 ]
  %i.dd = phi i64 [ %i.ar, %.lr.ph ], [ %i.gi, %.loopexit74 ] ; 5 uses
  %i.de = phi ptr [ %i.ai, %.lr.ph ], [ %i.fz, %.loopexit74 ] ; 2 uses
  %i.df = phi i1 [ %i.bz, %.lr.ph ], [ true, %.loopexit74 ]
  %i.dg = add i64 %i.dc, 1                        ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 184
  %i.di = load i16, ptr %i.dh, align 8, !noalias !51 ; 4 uses
  %i.dj = zext i16 %i.di to i64                   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.dd, ptr %i.e, align 8, !noalias !69
  store i64 %storemerge185, ptr %i.d, align 8, !noalias !69
  br i1 %i.df, label %bb.am, label %bb.al, !prof !68

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #18
          to label %bb.an unwind label %.loopexit.split-lp, !noalias !69

bb.am:                                            ; preds = %bb.ak
  %i.dk = getelementptr inbounds nuw i8, ptr %i.da, i64 186 ; 4 uses
  %i.dl = load i16, ptr %i.dk, align 2, !noalias !69, !noundef !10 ; 5 uses
  %i.dm = icmp ult i16 %i.dl, 11
  br i1 %i.dm, label %bb.ap, label %bb.ao

.loopexit75:                                      ; preds = %bb.aw
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.loopexit.split-lp:                               ; preds = %bb.al
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.an:                                            ; preds = %bb.al
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.dn = icmp ult i16 %i.di, 5
  br i1 %i.dn, label %bb.aw, label %bb.at

bb.ap:                                            ; preds = %bb.am
  %i.do = zext nneg i16 %i.dl to i64              ; 5 uses
  %i.dp = add nuw nsw i16 %i.dl, 1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 3 uses
  %i.dr = add nuw nsw i64 %i.dj, 1                ; 7 uses
  %.not.i.i34.not = icmp ult i16 %i.di, %i.dl
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.dj ; 2 uses
  br i1 %.not.i.i34.not, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i64 %i.dd, ptr %i.ds, align 8, !alias.scope !73, !noalias !76
  %i.dt = getelementptr inbounds nuw i8, ptr %i.da, i64 96
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dj
  store i64 %storemerge185, ptr %i.du, align 8, !alias.scope !79, !noalias !76
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.dr
  %i.dw = sub nuw nsw i64 %i.do, %i.dj
  %i.dx = shl nuw nsw i64 %i.dw, 3                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dv, ptr nonnull align 8 %i.ds, i64 %i.dx, i1 false), !alias.scope !73, !noalias !76
  %i.dy = getelementptr inbounds nuw i8, ptr %i.da, i64 96 ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dj
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dr
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ea, ptr nonnull align 8 %i.dz, i64 %i.dx, i1 false), !alias.scope !79, !noalias !76
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.dj
  store i64 %i.dd, ptr %i.eb, align 8, !alias.scope !73, !noalias !76
  %i.ec = getelementptr inbounds nuw i8, ptr %i.da, i64 96
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.dj
  store i64 %storemerge185, ptr %i.ed, align 8, !alias.scope !79, !noalias !76
  %i.ee = getelementptr inbounds nuw i8, ptr %i.da, i64 192 ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.dr
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.dj
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = sub nuw nsw i64 %i.do, %i.dj
  %i.ej = shl nuw nsw i64 %i.ei, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eh, ptr nonnull align 8 %i.ef, i64 %i.ej, i1 false), !alias.scope !82, !noalias !76
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %i.ek = getelementptr inbounds nuw i8, ptr %i.da, i64 192
  %i.el = add nuw nsw i64 %i.do, 2                ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.dr
  store ptr %i.de, ptr %i.em, align 8, !alias.scope !82, !noalias !76
  store i16 %i.dp, ptr %i.dk, align 2, !noalias !76
  %i.en = icmp samesign ult i64 %i.dr, %i.el
  br i1 %i.en, label %.lr.ph.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader:                           ; preds = %bb.as
  %i.eo = add nuw nsw i64 %i.do, 1
  %i.ep = sub nsw i64 %i.eo, %i.dj
  %i.eq = sub nsw i64 %i.do, %i.dj
  %xtraiter555 = and i64 %i.ep, 3                 ; 2 uses
  %lcmp.mod556.not = icmp eq i64 %xtraiter555, 0
  br i1 %lcmp.mod556.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol.preheader

.lr.ph.i.i.i.prol.preheader:                      ; preds = %.lr.ph.i.i.i.preheader
  %i.er = getelementptr inbounds nuw i8, ptr %i.da, i64 192
  br label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.prol.preheader
  %.sroa.0.06.i.i.i.prol = phi i64 [ %i.es, %.lr.ph.i.i.i.prol ], [ %i.dr, %.lr.ph.i.i.i.prol.preheader ] ; 4 uses
  %prol.iter557 = phi i64 [ %prol.iter557.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.prol.preheader ]
  %i.es = add nuw nsw i64 %.sroa.0.06.i.i.i.prol, 1 ; 2 uses
  %i.et = icmp samesign ult i64 %.sroa.0.06.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.et)
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %.sroa.0.06.i.i.i.prol
  %i.ev = load ptr, ptr %i.eu, align 8, !noalias !76, !nonnull !10, !noundef !10 ; 2 uses
  store ptr %i.da, ptr %i.ev, align 8, !noalias !76
  %i.ew = trunc nuw nsw i64 %.sroa.0.06.i.i.i.prol to i16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 184
  store i16 %i.ew, ptr %i.ex, align 8, !noalias !76
  %prol.iter557.next = add i64 %prol.iter557, 1   ; 2 uses
  %prol.iter557.cmp.not = icmp eq i64 %prol.iter557.next, %xtraiter555
  br i1 %prol.iter557.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !85

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.sroa.0.06.i.i.i.unr = phi i64 [ %i.dr, %.lr.ph.i.i.i.preheader ], [ %i.es, %.lr.ph.i.i.i.prol ]
  %i.ey = icmp ult i64 %i.eq, 3
  br i1 %i.ey, label %.loopexit, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.prol.loopexit
  %i.ez = getelementptr inbounds nuw i8, ptr %i.da, i64 192
  %i.fa = getelementptr inbounds nuw i8, ptr %i.da, i64 192
  %i.fb = getelementptr inbounds nuw i8, ptr %i.da, i64 192
  %i.fc = getelementptr inbounds nuw i8, ptr %i.da, i64 192
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.06.i.i.i = phi i64 [ %.sroa.0.06.i.i.i.unr, %.lr.ph.i.i.i.preheader.new ], [ %i.fs, %.lr.ph.i.i.i ] ; 7 uses
  %i.fd = add nuw nsw i64 %.sroa.0.06.i.i.i, 1    ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %.sroa.0.06.i.i.i
  %i.ff = load ptr, ptr %i.fe, align 8, !noalias !76, !nonnull !10, !noundef !10 ; 2 uses
  store ptr %i.da, ptr %i.ff, align 8, !noalias !76
  %i.fg = trunc nuw nsw i64 %.sroa.0.06.i.i.i to i16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 184
  store i16 %i.fg, ptr %i.fh, align 8, !noalias !76
  %i.fi = add nuw nsw i64 %.sroa.0.06.i.i.i, 2    ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fd
  %i.fk = load ptr, ptr %i.fj, align 8, !noalias !76, !nonnull !10, !noundef !10 ; 2 uses
  store ptr %i.da, ptr %i.fk, align 8, !noalias !76
  %i.fl = trunc nuw nsw i64 %i.fd to i16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 184
  store i16 %i.fl, ptr %i.fm, align 8, !noalias !76
  %i.fn = add nuw nsw i64 %.sroa.0.06.i.i.i, 3    ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.fi
  %i.fp = load ptr, ptr %i.fo, align 8, !noalias !76, !nonnull !10, !noundef !10 ; 2 uses
  store ptr %i.da, ptr %i.fp, align 8, !noalias !76
  %i.fq = trunc nuw nsw i64 %i.fi to i16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 184
  store i16 %i.fq, ptr %i.fr, align 8, !noalias !76
  %i.fs = add nuw nsw i64 %.sroa.0.06.i.i.i, 4    ; 2 uses
  %i.ft = icmp ult i64 %.sroa.0.06.i.i.i, 9
  tail call void @llvm.assume(i1 %i.ft)
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.fn
  %i.fv = load ptr, ptr %i.fu, align 8, !noalias !76, !nonnull !10, !noundef !10 ; 2 uses
  store ptr %i.da, ptr %i.fv, align 8, !noalias !76
  %i.fw = trunc nuw nsw i64 %i.fn to i16
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 184
  store i16 %i.fw, ptr %i.fx, align 8, !noalias !76
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.fs, %i.el
  br i1 %exitcond.not.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i

bb.at:                                            ; preds = %bb.ao
  switch i16 %i.di, label %bb.au [
    i16 5, label %bb.aw
    i16 6, label %bb.av
  ]

bb.au:                                            ; preds = %bb.at
  %i.fy = add nsw i64 %i.dj, -7
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at, %bb.ao
  %.sroa.06.0.i = phi i64 [ 5, %bb.av ], [ 6, %bb.au ], [ 4, %bb.ao ], [ 5, %bb.at ] ; 7 uses
  %.sroa.5.0.i = phi i64 [ 0, %bb.av ], [ %i.fy, %bb.au ], [ %i.dj, %bb.ao ], [ 5, %bb.at ] ; 9 uses
  %.sroa.03.0.i = phi i1 [ true, %bb.av ], [ true, %bb.au ], [ false, %bb.ao ], [ false, %bb.at ]
  %i.fz = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1v_IB27_NtB2P_18NamespaceStaticSetEEEE13new_uninit_inCsj1ugBVjDER0_8xml5ever()
          to label %.noexc.i31 unwind label %.loopexit75, !noalias !69 ; 14 uses

.noexc.i31:                                       ; preds = %bb.aw
  store ptr null, ptr %i.fz, align 8, !noalias !87
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 186 ; 3 uses
  store i16 0, ptr %i.ga, align 2, !noalias !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !87
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.gb = load i16, ptr %i.dk, align 2, !noalias !94, !noundef !10
  %i.gc = zext i16 %i.gb to i64
  %i.gd = xor i64 %.sroa.06.0.i, -1
  %i.ge = add nsw i64 %i.gc, %i.gd                ; 4 uses
  %i.gf = trunc i64 %i.ge to i16
  store i16 %i.gf, ptr %i.ga, align 2, !alias.scope !91, !noalias !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !94
  %i.gg = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.sroa.06.0.i
  %i.gi = load i64, ptr %i.gh, align 8, !noalias !94, !noundef !10 ; 4 uses
  store i64 %i.gi, ptr %i.b, align 8, !noalias !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !94
  %i.gj = getelementptr inbounds nuw i8, ptr %i.da, i64 96 ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %.sroa.06.0.i
  %i.gl = load i64, ptr %i.gk, align 8, !noalias !94, !noundef !10 ; 4 uses
  store i64 %i.gl, ptr %i.a, align 8, !noalias !94
  %i.gm = icmp ult i64 %i.ge, 12
  br i1 %i.gm, label %bb.bc, label %bb.ax, !prof !32

bb.ax:                                            ; preds = %.noexc.i31
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ge, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #18
          to label %bb.az unwind label %bb.ay, !noalias !94

bb.ay:                                            ; preds = %bb.ax
  %i.gn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(8) %i.a) #19
          to label %bb.bb unwind label %bb.ba, !noalias !94

bb.az:                                            ; preds = %bb.ax
  unreachable

bb.ba:                                            ; preds = %bb.bb, %bb.ay
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !94
  unreachable

bb.bb:                                            ; preds = %bb.ay
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(8) %i.b) #19
          to label %bb.bl unwind label %bb.ba, !noalias !94

bb.bc:                                            ; preds = %.noexc.i31
  %i.gp = add nuw nsw i64 %.sroa.06.0.i, 1        ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gs = shl nuw nsw i64 %i.ge, 3                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gr, ptr nonnull readonly align 8 %i.gq, i64 %i.gs, i1 false), !alias.scope !95, !noalias !87
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.gp
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fz, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gu, ptr nonnull readonly align 8 %i.gt, i64 %i.gs, i1 false), !alias.scope !99, !noalias !87
  %i.gv = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.gv, ptr %i.dk, align 2, !noalias !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !94
  store i64 %i.gi, ptr %i.c, align 8, !noalias !87
  store i64 %i.gl, ptr %i.by, align 8, !noalias !87
  %i.gw = load i16, ptr %i.ga, align 2, !noalias !87, !noundef !10 ; 3 uses
  %i.gx = zext i16 %i.gw to i64
  %i.gy = add nuw nsw i64 %i.gx, 1                ; 5 uses
  %i.gz = icmp ult i16 %i.gw, 12
  br i1 %i.gz, label %bb.bd, label %bb.bf, !prof !32

bb.bd:                                            ; preds = %bb.bc
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fz, i64 192 ; 6 uses
  %i.hb = zext i16 %i.dl to i64
  %i.hc = sub nuw nsw i64 %i.hb, %.sroa.06.0.i
  %i.hd = icmp eq i64 %i.hc, %i.gy
  br i1 %i.hd, label %bb.bh, label %bb.be, !prof !68

bb.be:                                            ; preds = %bb.bd
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22
          to label %.noexc.i.i32 unwind label %bb.bg, !noalias !87

.noexc.i.i32:                                     ; preds = %bb.be
  unreachable

bb.bf:                                            ; preds = %bb.bc
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.gy, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #18
          to label %bb.bj unwind label %bb.bg, !noalias !87

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.he = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIBD_IBZ_NtB1H_18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(16) %i.c) #19
          to label %bb.bl unwind label %bb.bk, !noalias !87
end_hunk_0
begin_hunk_1_@_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1E_IB2g_NtB2Y_18NamespaceStaticSetEENtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB5p_11VacantEntryB1D_B3F_E12insert_entry0ECsj1ugBVjDER0_8xml5ever:bb.a
  %i.hr = load ptr, ptr %i.hq, align 8, !alias.scope !107, !noalias !110, !nonnull !10, !noundef !10 ; 2 uses
  store ptr %i.fz, ptr %i.hr, align 8, !noalias !113
  %i.hs = trunc nuw nsw i64 %i.hk to i16
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 184
  store i16 %i.hs, ptr %i.ht, align 8, !noalias !110
  %i.hu = or disjoint i64 %.sroa.0.09.i.i.i.i, 3  ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.hp
  %i.hw = load ptr, ptr %i.hv, align 8, !alias.scope !107, !noalias !110, !nonnull !10, !noundef !10 ; 2 uses
  store ptr %i.fz, ptr %i.hw, align 8, !noalias !113
  %i.hx = trunc nuw nsw i64 %i.hp to i16
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 184
  store i16 %i.hx, ptr %i.hy, align 8, !noalias !110
  %i.hz = add nuw nsw i64 %.sroa.0.09.i.i.i.i, 4  ; 2 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.hu
  %i.ib = load ptr, ptr %i.ia, align 8, !alias.scope !107, !noalias !110, !nonnull !10, !noundef !10 ; 2 uses
  store ptr %i.fz, ptr %i.ib, align 8, !noalias !113
  %i.ic = trunc nuw nsw i64 %i.hu to i16
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 184
  store i16 %i.ic, ptr %i.id, align 8, !noalias !110
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.bi

bb.bj:                                            ; preds = %bb.bf
  unreachable

bb.bk:                                            ; preds = %bb.bg
  %i.ie = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !87
  unreachable

bb.bl:                                            ; preds = %bb.bg, %bb.bb
  %.pn.i.i = phi { ptr, i32 } [ %i.he, %bb.bg ], [ %i.gn, %bb.bb ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fz, i64 noundef 288, i64 noundef 8) #21, !noalias !87
  br label %bb.br

.unr-lcssa:                                       ; preds = %bb.bi
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.bh
  %.sroa.0.09.i.i.i.i.epil.init = phi i64 [ 0, %bb.bh ], [ %i.hz, %.unr-lcssa ]
  %lcmp.mod552 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod552)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %.epil.preheader
  %.sroa.0.09.i.i.i.i.epil = phi i64 [ %.sroa.0.09.i.i.i.i.epil.init, %.epil.preheader ], [ %i.if, %bb.bm ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bm ]
  %i.if = add nuw nsw i64 %.sroa.0.09.i.i.i.i.epil, 1
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %.sroa.0.09.i.i.i.i.epil
  %i.ih = load ptr, ptr %i.ig, align 8, !alias.scope !107, !noalias !110, !nonnull !10, !noundef !10 ; 2 uses
  store ptr %i.fz, ptr %i.ih, align 8, !noalias !113
  %i.ii = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i.epil to i16
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 184
  store i16 %i.ii, ptr %i.ij, align 8, !noalias !110
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.bm, !llvm.loop !114

.epilog-lcssa:                                    ; preds = %bb.bm, %.unr-lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !87
  %spec.select.i33 = select i1 %.sroa.03.0.i, ptr %i.fz, ptr %i.da ; 11 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %spec.select.i33, i64 186 ; 2 uses
  %i.il = load i16, ptr %i.ik, align 2, !noalias !115, !noundef !10 ; 2 uses
  %i.im = zext i16 %i.il to i64                   ; 5 uses
  %i.in = add i16 %i.il, 1
  %i.io = getelementptr inbounds nuw i8, ptr %spec.select.i33, i64 8 ; 2 uses
  %i.ip = add nuw nsw i64 %.sroa.5.0.i, 1         ; 7 uses
  %.not.i10.not.i = icmp samesign ult i64 %.sroa.5.0.i, %i.im
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %.sroa.5.0.i ; 3 uses
  br i1 %.not.i10.not.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %.epilog-lcssa
  store i64 %i.dd, ptr %i.iq, align 8, !alias.scope !118, !noalias !115
  %i.ir = getelementptr inbounds nuw i8, ptr %spec.select.i33, i64 96
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %.sroa.5.0.i
  store i64 %storemerge185, ptr %i.is, align 8, !alias.scope !121, !noalias !115
  br label %bb.bp

bb.bo:                                            ; preds = %.epilog-lcssa
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.ip
  %i.iu = sub nuw nsw i64 %i.im, %.sroa.5.0.i
  %i.iv = shl nuw nsw i64 %i.iu, 3                ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.it, ptr nonnull align 8 %i.iq, i64 %i.iv, i1 false), !alias.scope !118, !noalias !115
  %i.iw = getelementptr inbounds nuw i8, ptr %spec.select.i33, i64 96 ; 2 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %.sroa.5.0.i ; 2 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.ip
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iy, ptr nonnull align 8 %i.ix, i64 %i.iv, i1 false), !alias.scope !121, !noalias !115
  store i64 %i.dd, ptr %i.iq, align 8, !alias.scope !118, !noalias !115
  store i64 %storemerge185, ptr %i.ix, align 8, !alias.scope !121, !noalias !115
  %i.iz = getelementptr inbounds nuw i8, ptr %spec.select.i33, i64 192 ; 2 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.ip
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %.sroa.5.0.i
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jc, ptr nonnull align 8 %i.ja, i64 %i.iv, i1 false), !alias.scope !124, !noalias !115
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.jd = getelementptr inbounds nuw i8, ptr %spec.select.i33, i64 192 ; 6 uses
  %i.je = add nuw nsw i64 %i.im, 2                ; 2 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.ip
  store ptr %i.de, ptr %i.jf, align 8, !alias.scope !124, !noalias !115
  store i16 %i.in, ptr %i.ik, align 2, !noalias !115
  %i.jg = icmp samesign ult i64 %i.ip, %i.je
  br i1 %i.jg, label %.lr.ph.i.i11.i.preheader, label %.loopexit74

.lr.ph.i.i11.i.preheader:                         ; preds = %bb.bp
  %i.jh = add nuw nsw i64 %i.im, 1
  %i.ji = sub nsw i64 %i.jh, %.sroa.5.0.i
  %i.jj = sub nsw i64 %i.im, %.sroa.5.0.i
  %xtraiter553 = and i64 %i.ji, 3                 ; 2 uses
  %lcmp.mod554.not = icmp eq i64 %xtraiter553, 0
  br i1 %lcmp.mod554.not, label %.lr.ph.i.i11.i.prol.loopexit, label %.lr.ph.i.i11.i.prol

.lr.ph.i.i11.i.prol:                              ; preds = %.lr.ph.i.i11.i.preheader, %.lr.ph.i.i11.i.prol
  %.sroa.0.06.i.i12.i.prol = phi i64 [ %i.jk, %.lr.ph.i.i11.i.prol ], [ %i.ip, %.lr.ph.i.i11.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.prol ], [ 0, %.lr.ph.i.i11.i.preheader ]
  %i.jk = add nuw nsw i64 %.sroa.0.06.i.i12.i.prol, 1 ; 2 uses
  %i.jl = icmp samesign ult i64 %.sroa.0.06.i.i12.i.prol, 12
  tail call void @llvm.assume(i1 %i.jl)
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %.sroa.0.06.i.i12.i.prol
  %i.jn = load ptr, ptr %i.jm, align 8, !noalias !115, !nonnull !10, !noundef !10 ; 2 uses
  store ptr %spec.select.i33, ptr %i.jn, align 8, !noalias !115
  %i.jo = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.prol to i16
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 184
  store i16 %i.jo, ptr %i.jp, align 8, !noalias !115
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter553
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.prol.loopexit, label %.lr.ph.i.i11.i.prol, !llvm.loop !127

.lr.ph.i.i11.i.prol.loopexit:                     ; preds = %.lr.ph.i.i11.i.prol, %.lr.ph.i.i11.i.preheader
  %.sroa.0.06.i.i12.i.unr = phi i64 [ %i.ip, %.lr.ph.i.i11.i.preheader ], [ %i.jk, %.lr.ph.i.i11.i.prol ]
  %i.jq = icmp ult i64 %i.jj, 3
  br i1 %i.jq, label %.loopexit74, label %.lr.ph.i.i11.i

.lr.ph.i.i11.i:                                   ; preds = %.lr.ph.i.i11.i.prol.loopexit, %.lr.ph.i.i11.i
  %.sroa.0.06.i.i12.i = phi i64 [ %i.kg, %.lr.ph.i.i11.i ], [ %.sroa.0.06.i.i12.i.unr, %.lr.ph.i.i11.i.prol.loopexit ] ; 7 uses
  %i.jr = add nuw nsw i64 %.sroa.0.06.i.i12.i, 1  ; 2 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %.sroa.0.06.i.i12.i
  %i.jt = load ptr, ptr %i.js, align 8, !noalias !115, !nonnull !10, !noundef !10 ; 2 uses
  store ptr %spec.select.i33, ptr %i.jt, align 8, !noalias !115
  %i.ju = trunc nuw nsw i64 %.sroa.0.06.i.i12.i to i16
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 184
  store i16 %i.ju, ptr %i.jv, align 8, !noalias !115
  %i.jw = add nuw nsw i64 %.sroa.0.06.i.i12.i, 2  ; 2 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.jr
  %i.jy = load ptr, ptr %i.jx, align 8, !noalias !115, !nonnull !10, !noundef !10 ; 2 uses
  store ptr %spec.select.i33, ptr %i.jy, align 8, !noalias !115
  %i.jz = trunc nuw nsw i64 %i.jr to i16
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 184
  store i16 %i.jz, ptr %i.ka, align 8, !noalias !115
  %i.kb = add nuw nsw i64 %.sroa.0.06.i.i12.i, 3  ; 2 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.jw
  %i.kd = load ptr, ptr %i.kc, align 8, !noalias !115, !nonnull !10, !noundef !10 ; 2 uses
  store ptr %spec.select.i33, ptr %i.kd, align 8, !noalias !115
  %i.ke = trunc nuw nsw i64 %i.jw to i16
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 184
  store i16 %i.ke, ptr %i.kf, align 8, !noalias !115
  %i.kg = add nuw nsw i64 %.sroa.0.06.i.i12.i, 4  ; 2 uses
  %i.kh = icmp ult i64 %.sroa.0.06.i.i12.i, 9
  tail call void @llvm.assume(i1 %i.kh)
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.kb
  %i.kj = load ptr, ptr %i.ki, align 8, !noalias !115, !nonnull !10, !noundef !10 ; 2 uses
  store ptr %spec.select.i33, ptr %i.kj, align 8, !noalias !115
  %i.kk = trunc nuw nsw i64 %i.kb to i16
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 184
  store i16 %i.kk, ptr %i.kl, align 8, !noalias !115
  %exitcond.not.i.i13.i.3 = icmp eq i64 %i.kg, %i.je
  br i1 %exitcond.not.i.i13.i.3, label %.loopexit74, label %.lr.ph.i.i11.i

bb.bq:                                            ; preds = %bb.bs, %bb.br
  %i.km = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !69
  unreachable

bb.br:                                            ; preds = %.loopexit75, %.loopexit.split-lp, %bb.bl
  %.pn.ph.i29 = phi { ptr, i32 } [ %.pn.i.i, %bb.bl ], [ %lpad.loopexit, %.loopexit75 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(8) %i.d) #19
          to label %bb.bs unwind label %bb.bq, !noalias !69

bb.bs:                                            ; preds = %bb.br
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(8) %i.e) #19
          to label %.critedge22 unwind label %bb.bq, !noalias !69

.loopexit74:                                      ; preds = %.lr.ph.i.i11.i.prol.loopexit, %.lr.ph.i.i11.i, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.kn = load ptr, ptr %i.da, align 8, !noalias !51, !noundef !10 ; 2 uses
  %.not.i = icmp eq ptr %i.kn, null
  br i1 %.not.i, label %._crit_edge, label %bb.ak

.loopexit:                                        ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bt

bb.bt:                                            ; preds = %.loopexit, %bb.u, %bb.bu
  %spec.select.i.sink.a = phi ptr [ %spec.select31.i, %.loopexit ], [ %i.m, %bb.u ], [ %spec.select31.i, %bb.bu ]
  %spec.select31.i.sink = phi i64 [ %spec.select.i, %.loopexit ], [ %i.cf, %bb.u ], [ %spec.select.i, %bb.bu ]
  %.sroa.510.0.i.sink = phi i64 [ %.sroa.510.0.i, %.loopexit ], [ %i.w, %bb.u ], [ %.sroa.510.0.i, %bb.bu ]
  store ptr %spec.select.i.sink.a, ptr %0, align 8
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select31.i.sink, ptr %i.ko, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.i.sink, ptr %i.kp, align 8
  ret void

bb.bu:                                            ; preds = %bb.ad
  %i.kq = zext nneg i16 %i.cu to i64              ; 3 uses
  %i.kr = add nuw nsw i16 %i.cu, 1
  store i16 %i.kr, ptr %i.ck, align 2, !noalias !54
  %i.ks = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %i.kq
  store i64 %.lcssa163, ptr %i.kt, align 8, !noalias !54
  %i.ku = getelementptr inbounds nuw i8, ptr %i.cj, i64 96
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.kq
  store i64 %storemerge.lcssa, ptr %i.kv, align 8, !noalias !54
  %i.kw = add nuw nsw i64 %i.kq, 1                ; 2 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.kw
  store ptr %.lcssa170, ptr %i.kx, align 8, !noalias !54
  store ptr %i.cj, ptr %.lcssa170, align 8, !noalias !54
  %i.ky = trunc nuw nsw i64 %i.kw to i16
  %i.kz = getelementptr inbounds nuw i8, ptr %.lcssa170, i64 184
  store i16 %i.ky, ptr %i.kz, align 8, !noalias !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.bt

.critedge22:                                      ; preds = %bb.bs, %bb.aj, %bb.ag, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn.ph.i, %bb.s ], [ %.pn.ph.i29, %bb.bs ], [ %i.cy, %bb.aj ], [ %i.cw, %bb.ag ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1z_IB2b_NtB2T_18NamespaceStaticSetEENtB1i_14LeafOrInternalE11search_treeB1y_ECsj1ugBVjDER0_8xml5ever(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %3, align 8
  %.fr = freeze i64 %i.a                          ; 6 uses
  %.not.i = icmp eq i64 %.fr, 0
  %i.b = trunc i64 %.fr to i8
  %i.c = and i8 %i.b, 3
  %i.d = lshr i64 %.fr, 32                        ; 3 uses
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 24), align 8 ; 4 uses
  %i.f = icmp ult i64 %i.d, %i.e
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 16), align 8, !nonnull !10, !align !128 ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.d ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = lshr i64 %.fr, 4
  %i.k = and i64 %i.j, 15
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.m = inttoptr i64 %.fr to ptr                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  br i1 %.not.i, label %.split.us.us, label %.split

.split.us.us:                                     ; preds = %bb.a, %bb.b
  %.sroa.3.0.us = phi i64 [ %i.t, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.0.0.us = phi ptr [ %i.s, %bb.b ], [ %1, %bb.a ] ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us, i64 186
  %i.p = load i16, ptr %i.o, align 2, !noalias !129, !noundef !10
  %i.q = icmp eq i16 %i.p, 0
  br i1 %i.q, label %.split78.us.us, label %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.us.us

bb.b:                                             ; preds = %.split78.us.us
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us, i64 192
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !10, !noundef !10
  %i.t = add i64 %.sroa.3.0.us, -1
  br label %.split.us.us

_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.us.us: ; preds = %.split.us.us
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !132, !noalias !135, !noundef !10
  %.not1.i.us.us.not = icmp eq i64 %i.v, 0
  br i1 %.not1.i.us.us.not, label %.split84.us, label %.split78.us.us

.split78.us.us:                                   ; preds = %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.us.us, %.split.us.us
  %i.w = icmp eq i64 %.sroa.3.0.us, 0
  br i1 %i.w, label %.split84.us, label %bb.b

.split:                                           ; preds = %bb.a, %bb.q
  %.sroa.3.0 = phi i64 [ %i.bm, %bb.q ], [ %2, %bb.a ] ; 4 uses
  %.sroa.0.0 = phi ptr [ %i.bl, %bb.q ], [ %1, %bb.a ] ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 186
  %i.z = load i16, ptr %i.y, align 2, !noalias !129, !noundef !10 ; 2 uses
  %i.aa = zext i16 %i.z to i64                    ; 3 uses
  %.idx = shl nuw nsw i64 %i.aa, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx
  %i.ac = icmp eq i16 %i.z, 0
  br i1 %i.ac, label %.split78, label %.lr.ph

bb.c:                                             ; preds = %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit
  %i.ad = icmp eq ptr %i.ae, %i.ab
  br i1 %i.ad, label %.split78, label %.lr.ph

.lr.ph:                                           ; preds = %.split, %bb.c
  %.sroa.0.01.i160 = phi ptr [ %i.ae, %bb.c ], [ %i.x, %.split ] ; 3 uses
  %.sroa.8.0.i159 = phi i64 [ %i.af, %bb.c ], [ 0, %.split ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i160, i64 8 ; 2 uses
  %i.af = add nuw nsw i64 %.sroa.8.0.i159, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.ag = load i64, ptr %.sroa.0.01.i160, align 8, !alias.scope !132, !noalias !135, !noundef !10 ; 6 uses
  %.not2.i = icmp eq i64 %i.ag, 0
  br i1 %.not2.i, label %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.ah = icmp eq i64 %.fr, %i.ag
  br i1 %i.ah, label %.split84.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  switch i8 %i.c, label %bb.f [
    i8 0, label %bb.g
    i8 1, label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i
    i8 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %i.m, align 8, !noalias !137, !nonnull !10, !noundef !10
  %i.aj = load i64, ptr %i.n, align 8, !noalias !137, !noundef !10
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i

bb.h:                                             ; preds = %bb.e
  br i1 %i.f, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %i.h, align 8, !noalias !137, !nonnull !10, !noundef !10
  %i.al = load i64, ptr %i.i, align 8, !noalias !137, !noundef !10
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.d, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #22, !noalias !137
  unreachable

_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i: ; preds = %bb.e, %bb.i, %bb.g
  %.sroa.4.0.i.i.i = phi i64 [ %i.aj, %bb.g ], [ %i.al, %bb.i ], [ %i.k, %bb.e ] ; 2 uses
  %.sroa.0.0.i.i.i = phi ptr [ %i.ai, %bb.g ], [ %i.ak, %bb.i ], [ %i.l, %bb.e ]
  %i.am = trunc i64 %i.ag to i8
  %i.an = and i8 %i.am, 3
  switch i8 %i.an, label %bb.k [
    i8 0, label %bb.l
    i8 1, label %bb.m
    i8 2, label %bb.n
  ]

bb.k:                                             ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i
  unreachable

bb.l:                                             ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i
  %i.ao = inttoptr i64 %i.ag to ptr               ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !143, !nonnull !10, !noundef !10
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !143, !noundef !10
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit8.i.i

bb.m:                                             ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i
  %i.as = lshr i64 %i.ag, 4
  %i.at = and i64 %i.as, 15
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i160, i64 1
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit8.i.i

bb.n:                                             ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i
  %i.av = lshr i64 %i.ag, 32                      ; 3 uses
  %i.aw = icmp ult i64 %i.av, %i.e
  br i1 %i.aw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.av ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !143, !nonnull !10, !noundef !10
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !noalias !143, !noundef !10
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit8.i.i

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.av, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #22, !noalias !143
  unreachable

_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit8.i.i: ; preds = %bb.o, %bb.m, %bb.l
  %.sroa.4.0.i6.i.i = phi i64 [ %i.ar, %bb.l ], [ %i.at, %bb.m ], [ %i.ba, %bb.o ] ; 2 uses
  %.sroa.0.0.i7.i.i = phi ptr [ %i.ap, %bb.l ], [ %i.au, %bb.m ], [ %i.ay, %bb.o ]
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i.i, i64 %.sroa.4.0.i6.i.i)
  %i.bb = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i, ptr nonnull %.sroa.0.0.i7.i.i, i64 %spec.store.select.i.i) ; 2 uses
  %i.bc = sext i32 %i.bb to i64
  %i.bd = icmp eq i32 %i.bb, 0
  %i.be = sub i64 %.sroa.4.0.i.i.i, %.sroa.4.0.i6.i.i
  %spec.select.i.i = select i1 %i.bd, i64 %i.be, i64 %i.bc
  %i.bf = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i, i64 0)
  br label %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit

_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit: ; preds = %.lr.ph, %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit8.i.i
  %.sroa.0.0.i51 = phi i8 [ 1, %.lr.ph ], [ %i.bf, %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit8.i.i ]
  switch i8 %.sroa.0.0.i51, label %default.unreachable.i [
    i8 -1, label %.split78
    i8 0, label %.split84.us
    i8 1, label %bb.c
  ]
end_hunk_1
