Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_library-626596e94cb6d705.typst_library.996bbf7c63fe4cae-cgu.0?download=true
inline.NumInlined: 84061
inline.NumDeleted: 35720
loop-unroll.NumCompletelyUnrolled: 240
loop-unroll.NumRuntimeUnrolled: 127
loop-unroll.NumUnrolled: 371
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0_@_RINvMs_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_14StringInterner6internReECsdaEETE4DqmE_13typst_library:bb.a
  store ptr %i.v, ptr %i.k, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %2, ptr %i.z, align 8
  %i.aa = atomicrmw add ptr %i.v, i64 1 monotonic, align 8
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %bb.cj, label %bb.e

bb.e:                                             ; preds = %_RNvMsq_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcShE15copy_from_sliceCsdaEETE4DqmE_13typst_library.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30155)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !30152
  store ptr %i.v, ptr %i.i, align 8, !noalias !30158
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %2, ptr %i.ad, align 8, !noalias !30158
  %i.ae = load ptr, ptr %i.ac, align 8, !alias.scope !30160, !noalias !30161, !noundef !12 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !30160, !noalias !30161, !noundef !12 ; 2 uses
  %i.ah = icmp ult i64 %2, 8
  br i1 %i.ah, label %.split.us.i.preheader.us.i.i.i.preheader, label %.split.i.preheader.i.i.i

.split.us.i.preheader.us.i.i.i.preheader:         ; preds = %bb.f
  %exitcond.not.i.i.us.i.us.i.i.i426 = icmp eq i64 %2, 0
  %exitcond.not.i.i.us.i.us.i.i.i = icmp eq i64 %2, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 17
  %exitcond.not.i.i.us.i.us.i.i.i.1 = icmp eq i64 %2, 2
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 18
  %exitcond.not.i.i.us.i.us.i.i.i.2 = icmp eq i64 %2, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 19
  %exitcond.not.i.i.us.i.us.i.i.i.3 = icmp eq i64 %2, 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %exitcond.not.i.i.us.i.us.i.i.i.4 = icmp eq i64 %2, 5
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 21
  %exitcond.not.i.i.us.i.us.i.i.i.5 = icmp eq i64 %2, 6
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 22
  br label %.split.us.i.preheader.us.i.i.i

.split.us.i.preheader.us.i.i.i:                   ; preds = %.split.us.i.preheader.us.i.i.i.preheader, %bb.h
  %.sroa.3.0.us.i.i.i = phi i64 [ %i.cg, %bb.h ], [ %i.ag, %.split.us.i.preheader.us.i.i.i.preheader ] ; 2 uses
  %.sroa.0.0.us.i.i.i = phi ptr [ %i.cf, %bb.h ], [ %i.ae, %.split.us.i.preheader.us.i.i.i.preheader ] ; 14 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us.i.i.i, i64 230
  %i.ap = load i16, ptr %i.ao, align 2, !noalias !30162, !noundef !12 ; 2 uses
  %i.aq = zext i16 %i.ap to i64                   ; 3 uses
  %.idx436 = shl nuw nsw i64 %i.aq, 4
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us.i.i.i, i64 %.idx436
  %i.as = icmp eq i16 %i.ap, 0
  br i1 %i.as, label %.loopexit4.us.i.i.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCsdaEETE4DqmE_13typst_library.exit.us.i.us.i.i.i

.split.us.i.us.i.i.i:                             ; preds = %_RNvXs0_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_8LenOrderNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i.i.i
  %i.at = icmp eq ptr %i.au, %i.ar
  br i1 %i.at, label %.loopexit4.us.i.i.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCsdaEETE4DqmE_13typst_library.exit.us.i.us.i.i.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCsdaEETE4DqmE_13typst_library.exit.us.i.us.i.i.i: ; preds = %.split.us.i.preheader.us.i.i.i, %.split.us.i.us.i.i.i
  %.sroa.0.03.us.i.us.i.i.i433 = phi ptr [ %i.au, %.split.us.i.us.i.i.i ], [ %.sroa.0.0.us.i.i.i, %.split.us.i.preheader.us.i.i.i ] ; 3 uses
  %.sroa.8.0.us.i.us.i.i.i432 = phi i64 [ %i.av, %.split.us.i.us.i.i.i ], [ 0, %.split.us.i.preheader.us.i.i.i ] ; 11 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.03.us.i.us.i.i.i433, i64 16 ; 2 uses
  %i.av = add nuw nsw i64 %.sroa.8.0.us.i.us.i.i.i432, 1
  %.val7.us.i.us.i.i.i = load ptr, ptr %.sroa.0.03.us.i.us.i.i.i433, align 8, !noalias !30162, !nonnull !12, !noundef !12 ; 7 uses
  %i.aw = getelementptr i8, ptr %.sroa.0.03.us.i.us.i.i.i433, i64 8
  %.val8.us.i.us.i.i.i = load i64, ptr %i.aw, align 8, !noalias !30162, !noundef !12 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val7.us.i.us.i.i.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30168)
  %i.ay = tail call i8 @llvm.ucmp.i8.i64(i64 %2, i64 %.val8.us.i.us.i.i.i)
  %i.az = icmp eq i64 %2, %.val8.us.i.us.i.i.i
  br i1 %i.az, label %.preheader.i.i.us.i.us.i.i.i.preheader, label %_RNvXs0_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_8LenOrderNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i.i.i

.preheader.i.i.us.i.us.i.i.i.preheader:           ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCsdaEETE4DqmE_13typst_library.exit.us.i.us.i.i.i
  br i1 %exitcond.not.i.i.us.i.us.i.i.i426, label %.loopexit.i.i, label %.lr.ph

.preheader.i.i.us.i.us.i.i.i:                     ; preds = %.lr.ph
  br i1 %exitcond.not.i.i.us.i.us.i.i.i, label %.loopexit.i.i, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.preheader.i.i.us.i.us.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.val7.us.i.us.i.i.i, i64 17
  %i.bb = load i8, ptr %i.ai, align 1, !alias.scope !30165, !noalias !30170, !noundef !12 ; 2 uses
  %i.bc = load i8, ptr %i.ba, align 1, !alias.scope !30168, !noalias !30171, !noundef !12 ; 2 uses
  %i.bd = icmp eq i8 %i.bb, %i.bc
  br i1 %i.bd, label %.preheader.i.i.us.i.us.i.i.i.1, label %bb.g

.preheader.i.i.us.i.us.i.i.i.1:                   ; preds = %.lr.ph.1
  br i1 %exitcond.not.i.i.us.i.us.i.i.i.1, label %.loopexit.i.i, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.preheader.i.i.us.i.us.i.i.i.1
  %i.be = getelementptr inbounds nuw i8, ptr %.val7.us.i.us.i.i.i, i64 18
  %i.bf = load i8, ptr %i.aj, align 2, !alias.scope !30165, !noalias !30170, !noundef !12 ; 2 uses
  %i.bg = load i8, ptr %i.be, align 1, !alias.scope !30168, !noalias !30171, !noundef !12 ; 2 uses
  %i.bh = icmp eq i8 %i.bf, %i.bg
  br i1 %i.bh, label %.preheader.i.i.us.i.us.i.i.i.2, label %bb.g

.preheader.i.i.us.i.us.i.i.i.2:                   ; preds = %.lr.ph.2
  br i1 %exitcond.not.i.i.us.i.us.i.i.i.2, label %.loopexit.i.i, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.preheader.i.i.us.i.us.i.i.i.2
  %i.bi = getelementptr inbounds nuw i8, ptr %.val7.us.i.us.i.i.i, i64 19
  %i.bj = load i8, ptr %i.ak, align 1, !alias.scope !30165, !noalias !30170, !noundef !12 ; 2 uses
  %i.bk = load i8, ptr %i.bi, align 1, !alias.scope !30168, !noalias !30171, !noundef !12 ; 2 uses
  %i.bl = icmp eq i8 %i.bj, %i.bk
  br i1 %i.bl, label %.preheader.i.i.us.i.us.i.i.i.3, label %bb.g

.preheader.i.i.us.i.us.i.i.i.3:                   ; preds = %.lr.ph.3
  br i1 %exitcond.not.i.i.us.i.us.i.i.i.3, label %.loopexit.i.i, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.preheader.i.i.us.i.us.i.i.i.3
  %i.bm = getelementptr inbounds nuw i8, ptr %.val7.us.i.us.i.i.i, i64 20
  %i.bn = load i8, ptr %i.al, align 4, !alias.scope !30165, !noalias !30170, !noundef !12 ; 2 uses
  %i.bo = load i8, ptr %i.bm, align 1, !alias.scope !30168, !noalias !30171, !noundef !12 ; 2 uses
  %i.bp = icmp eq i8 %i.bn, %i.bo
  br i1 %i.bp, label %.preheader.i.i.us.i.us.i.i.i.4, label %bb.g

.preheader.i.i.us.i.us.i.i.i.4:                   ; preds = %.lr.ph.4
  br i1 %exitcond.not.i.i.us.i.us.i.i.i.4, label %.loopexit.i.i, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.preheader.i.i.us.i.us.i.i.i.4
  %i.bq = getelementptr inbounds nuw i8, ptr %.val7.us.i.us.i.i.i, i64 21
  %i.br = load i8, ptr %i.am, align 1, !alias.scope !30165, !noalias !30170, !noundef !12 ; 2 uses
  %i.bs = load i8, ptr %i.bq, align 1, !alias.scope !30168, !noalias !30171, !noundef !12 ; 2 uses
  %i.bt = icmp eq i8 %i.br, %i.bs
  br i1 %i.bt, label %.preheader.i.i.us.i.us.i.i.i.5, label %bb.g

.preheader.i.i.us.i.us.i.i.i.5:                   ; preds = %.lr.ph.5
  br i1 %exitcond.not.i.i.us.i.us.i.i.i.5, label %.loopexit.i.i, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.preheader.i.i.us.i.us.i.i.i.5
  %i.bu = getelementptr inbounds nuw i8, ptr %.val7.us.i.us.i.i.i, i64 22
  %i.bv = load i8, ptr %i.an, align 2, !alias.scope !30165, !noalias !30170, !noundef !12 ; 2 uses
  %i.bw = load i8, ptr %i.bu, align 1, !alias.scope !30168, !noalias !30171, !noundef !12 ; 2 uses
  %i.bx = icmp eq i8 %i.bv, %i.bw
  br i1 %i.bx, label %.loopexit.i.i, label %bb.g

.lr.ph:                                           ; preds = %.preheader.i.i.us.i.us.i.i.i.preheader
  %i.by = load i8, ptr %i.y, align 8, !alias.scope !30165, !noalias !30170, !noundef !12 ; 2 uses
  %i.bz = load i8, ptr %i.ax, align 1, !alias.scope !30168, !noalias !30171, !noundef !12 ; 2 uses
  %i.ca = icmp eq i8 %i.by, %i.bz
  br i1 %i.ca, label %.preheader.i.i.us.i.us.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.6, %.lr.ph.5, %.lr.ph.4, %.lr.ph.3, %.lr.ph.2, %.lr.ph.1, %.lr.ph
  %.lcssa519 = phi i8 [ %i.by, %.lr.ph ], [ %i.bb, %.lr.ph.1 ], [ %i.bf, %.lr.ph.2 ], [ %i.bj, %.lr.ph.3 ], [ %i.bn, %.lr.ph.4 ], [ %i.br, %.lr.ph.5 ], [ %i.bv, %.lr.ph.6 ]
  %.lcssa517 = phi i8 [ %i.bz, %.lr.ph ], [ %i.bc, %.lr.ph.1 ], [ %i.bg, %.lr.ph.2 ], [ %i.bk, %.lr.ph.3 ], [ %i.bo, %.lr.ph.4 ], [ %i.bs, %.lr.ph.5 ], [ %i.bw, %.lr.ph.6 ]
  %i.cb = tail call i8 @llvm.ucmp.i8.i8(i8 %.lcssa519, i8 %.lcssa517)
  br label %_RNvXs0_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_8LenOrderNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i.i.i

_RNvXs0_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_8LenOrderNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i.i.i: ; preds = %bb.g, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCsdaEETE4DqmE_13typst_library.exit.us.i.us.i.i.i
  %.sroa.0.0.i.i.us.i.us.i.i.i = phi i8 [ %i.cb, %bb.g ], [ %i.ay, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCsdaEETE4DqmE_13typst_library.exit.us.i.us.i.i.i ]
  switch i8 %.sroa.0.0.i.i.us.i.us.i.i.i, label %.split19.us.i.i.i.i [
    i8 -1, label %.loopexit4.us.i.i.i
    i8 0, label %.loopexit.i.i
    i8 1, label %.split.us.i.us.i.i.i
  ]

bb.h:                                             ; preds = %.loopexit4.us.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us.i.i.i, i64 232
  %i.cd = icmp samesign ult i64 %.sroa.4.0.i.ph.ph.us.i.i.i, 12
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.sroa.4.0.i.ph.ph.us.i.i.i
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !30162, !nonnull !12, !noundef !12
  %i.cg = add i64 %.sroa.3.0.us.i.i.i, -1
  br label %.split.us.i.preheader.us.i.i.i

.loopexit4.us.i.i.i:                              ; preds = %.split.us.i.us.i.i.i, %_RNvXs0_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_8LenOrderNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i.i.i, %.split.us.i.preheader.us.i.i.i
  %.sroa.4.0.i.ph.ph.us.i.i.i = phi i64 [ %i.aq, %.split.us.i.preheader.us.i.i.i ], [ %i.aq, %.split.us.i.us.i.i.i ], [ %.sroa.8.0.us.i.us.i.i.i432, %_RNvXs0_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_8LenOrderNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i.i.i ] ; 3 uses
  %i.ch = icmp eq i64 %.sroa.3.0.us.i.i.i, 0
  br i1 %i.ch, label %.loopexit39.i.i, label %bb.h

.split.i.preheader.i.i.i:                         ; preds = %bb.f, %bb.j
  %.sroa.3.0.i.i.i = phi i64 [ %i.db, %bb.j ], [ %i.ag, %bb.f ] ; 2 uses
  %.sroa.0.0.i.i.i = phi ptr [ %i.da, %bb.j ], [ %i.ae, %bb.f ] ; 6 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 230
  %i.cj = load i16, ptr %i.ci, align 2, !noalias !30162, !noundef !12 ; 2 uses
  %i.ck = zext i16 %i.cj to i64                   ; 3 uses
  %.idx = shl nuw nsw i64 %i.ck, 4
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 %.idx
  %i.cm = icmp eq i16 %i.cj, 0
  br i1 %i.cm, label %.loopexit6.i.i.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCsdaEETE4DqmE_13typst_library.exit.i.i.i.i

.split.i.i.i.i:                                   ; preds = %_RNvXs0_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_8LenOrderNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i.i
  %i.cn = icmp eq ptr %i.co, %i.cl
  br i1 %i.cn, label %.loopexit6.i.i.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCsdaEETE4DqmE_13typst_library.exit.i.i.i.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCsdaEETE4DqmE_13typst_library.exit.i.i.i.i: ; preds = %.split.i.preheader.i.i.i, %.split.i.i.i.i
  %.sroa.0.03.i.i.i.i424 = phi ptr [ %i.co, %.split.i.i.i.i ], [ %.sroa.0.0.i.i.i, %.split.i.preheader.i.i.i ] ; 3 uses
  %.sroa.8.0.i.i.i.i423 = phi i64 [ %i.cp, %.split.i.i.i.i ], [ 0, %.split.i.preheader.i.i.i ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i424, i64 16 ; 2 uses
  %i.cp = add nuw nsw i64 %.sroa.8.0.i.i.i.i423, 1
  %.val7.i.i.i.i = load ptr, ptr %.sroa.0.03.i.i.i.i424, align 8, !noalias !30162, !nonnull !12, !noundef !12
  %i.cq = getelementptr i8, ptr %.sroa.0.03.i.i.i.i424, i64 8
  %.val8.i.i.i.i = load i64, ptr %i.cq, align 8, !noalias !30162, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30168)
  %i.cr = tail call i8 @llvm.ucmp.i8.i64(i64 %2, i64 %.val8.i.i.i.i)
  %i.cs = icmp eq i64 %2, %.val8.i.i.i.i
  br i1 %i.cs, label %bb.i, label %_RNvXs0_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_8LenOrderNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i.i

bb.i:                                             ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCsdaEETE4DqmE_13typst_library.exit.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.val7.i.i.i.i, i64 16
  %i.cu = tail call i32 @memcmp(ptr nonnull readonly %i.y, ptr nonnull readonly %i.ct, i64 %2), !alias.scope !30172, !noalias !30162
  %3 = sext i32 %i.cu to i64
  %i.cv = tail call i8 @llvm.scmp.i8.i64(i64 %3, i64 0)
  br label %_RNvXs0_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_8LenOrderNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i.i

_RNvXs0_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_8LenOrderNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i.i: ; preds = %bb.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCsdaEETE4DqmE_13typst_library.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i = phi i8 [ %i.cv, %bb.i ], [ %i.cr, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCsdaEETE4DqmE_13typst_library.exit.i.i.i.i ]
  switch i8 %.sroa.0.0.i.i.i.i.i.i, label %.split19.us.i.i.i.i [
    i8 -1, label %.loopexit6.i.i.i
    i8 0, label %.loopexit.i.i
    i8 1, label %.split.i.i.i.i
  ]

.split19.us.i.i.i.i:                              ; preds = %_RNvXs0_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_8LenOrderNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i.i, %_RNvXs0_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_8LenOrderNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i.i.i
  unreachable

.loopexit6.i.i.i:                                 ; preds = %.split.i.i.i.i, %_RNvXs0_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_8LenOrderNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i.i, %.split.i.preheader.i.i.i
  %.sroa.4.0.i.ph.ph7.i.i.i = phi i64 [ %i.ck, %.split.i.preheader.i.i.i ], [ %i.ck, %.split.i.i.i.i ], [ %.sroa.8.0.i.i.i.i423, %_RNvXs0_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_8LenOrderNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i.i ] ; 3 uses
  %i.cw = icmp eq i64 %.sroa.3.0.i.i.i, 0
  br i1 %i.cw, label %.loopexit39.i.i, label %bb.j

bb.j:                                             ; preds = %.loopexit6.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 232
  %i.cy = icmp samesign ult i64 %.sroa.4.0.i.ph.ph7.i.i.i, 12
  tail call void @llvm.assume(i1 %i.cy)
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %.sroa.4.0.i.ph.ph7.i.i.i
  %i.da = load ptr, ptr %i.cz, align 8, !noalias !30162, !nonnull !12, !noundef !12
  %i.db = add i64 %.sroa.3.0.i.i.i, -1
  br label %.split.i.preheader.i.i.i

.loopexit.i.i:                                    ; preds = %_RNvXs0_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_8LenOrderNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i.i, %_RNvXs0_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_8LenOrderNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i.i.i, %.preheader.i.i.us.i.us.i.i.i.preheader, %.lr.ph.6, %.preheader.i.i.us.i.us.i.i.i, %.preheader.i.i.us.i.us.i.i.i.1, %.preheader.i.i.us.i.us.i.i.i.2, %.preheader.i.i.us.i.us.i.i.i.3, %.preheader.i.i.us.i.us.i.i.i.4, %.preheader.i.i.us.i.us.i.i.i.5
  %.us-phi36.sink.i.ph.i.i = phi ptr [ %.sroa.0.0.us.i.i.i, %.lr.ph.6 ], [ %.sroa.0.0.us.i.i.i, %_RNvXs0_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_8LenOrderNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i.i.i ], [ %.sroa.0.0.us.i.i.i, %.preheader.i.i.us.i.us.i.i.i.5 ], [ %.sroa.0.0.us.i.i.i, %.preheader.i.i.us.i.us.i.i.i.4 ], [ %.sroa.0.0.us.i.i.i, %.preheader.i.i.us.i.us.i.i.i.3 ], [ %.sroa.0.0.us.i.i.i, %.preheader.i.i.us.i.us.i.i.i.2 ], [ %.sroa.0.0.us.i.i.i, %.preheader.i.i.us.i.us.i.i.i.1 ], [ %.sroa.0.0.us.i.i.i, %.preheader.i.i.us.i.us.i.i.i ], [ %.sroa.0.0.us.i.i.i, %.preheader.i.i.us.i.us.i.i.i.preheader ], [ %.sroa.0.0.i.i.i, %_RNvXs0_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_8LenOrderNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i.i ] ; 2 uses
  %.us-phi35.sink.i.ph.i.i = phi i64 [ %.sroa.8.0.us.i.us.i.i.i432, %.lr.ph.6 ], [ %.sroa.8.0.us.i.us.i.i.i432, %_RNvXs0_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_8LenOrderNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i.i.i ], [ %.sroa.8.0.us.i.us.i.i.i432, %.preheader.i.i.us.i.us.i.i.i.5 ], [ %.sroa.8.0.us.i.us.i.i.i432, %.preheader.i.i.us.i.us.i.i.i.4 ], [ %.sroa.8.0.us.i.us.i.i.i432, %.preheader.i.i.us.i.us.i.i.i.3 ], [ %.sroa.8.0.us.i.us.i.i.i432, %.preheader.i.i.us.i.us.i.i.i.2 ], [ %.sroa.8.0.us.i.us.i.i.i432, %.preheader.i.i.us.i.us.i.i.i.1 ], [ %.sroa.8.0.us.i.us.i.i.i432, %.preheader.i.i.us.i.us.i.i.i ], [ %.sroa.8.0.us.i.us.i.i.i432, %.preheader.i.i.us.i.us.i.i.i.preheader ], [ %.sroa.8.0.i.i.i.i423, %_RNvXs0_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_8LenOrderNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i.i ]
  %i.dc = atomicrmw sub ptr %i.v, i64 1 release, align 8, !noalias !30173
  %i.dd = icmp eq i64 %i.dc, 1
  br i1 %i.dd, label %bb.k, label %bb.cl

bb.k:                                             ; preds = %.loopexit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArceE9drop_slowCs7lTeezpKIYd_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i) #105
          to label %bb.cl unwind label %bb.ck

.loopexit39.i.i:                                  ; preds = %.loopexit6.i.i.i, %.loopexit4.us.i.i.i
  %.us-phi36.sink.i.i.i = phi ptr [ %.sroa.0.0.us.i.i.i, %.loopexit4.us.i.i.i ], [ %.sroa.0.0.i.i.i, %.loopexit6.i.i.i ]
  %.us-phi35.sink.i.i.i = phi i64 [ %.sroa.4.0.i.ph.ph.us.i.i.i, %.loopexit4.us.i.i.i ], [ %.sroa.4.0.i.ph.ph7.i.i.i, %.loopexit6.i.i.i ]
  %i.de = ptrtoint ptr %.us-phi36.sink.i.i.i to i64
  br label %bb.l

bb.l:                                             ; preds = %.loopexit39.i.i, %bb.e
  %.sroa.19.0.i = phi i64 [ %.us-phi35.sink.i.i.i, %.loopexit39.i.i ], [ undef, %bb.e ] ; 12 uses
  %.sroa.14.0.i = phi i64 [ %i.de, %.loopexit39.i.i ], [ 0, %bb.e ] ; 3 uses
  %.sroa.11.0.i = ptrtoint ptr %i.ac to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !30152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !30152
  store ptr %i.v, ptr %i.j, align 8, !noalias !30152
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %2, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !30152
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.11.0.i, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !30152
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 %.sroa.14.0.i, ptr %.sroa.14.0..sroa_idx.i, align 8, !noalias !30152
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i64 0, ptr %.sroa.17.0..sroa_idx.i, align 8, !noalias !30152
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i64 %.sroa.19.0.i, ptr %.sroa.19.0..sroa_idx.i, align 8, !noalias !30152
  %.cast.i = inttoptr i64 %.sroa.14.0.i to ptr    ; 12 uses
  %.not.i5.i = icmp eq i64 %.sroa.14.0.i, 0
  br i1 %.not.i5.i, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #96, !noalias !30180
  %i.df = tail call noalias noundef align 8 dereferenceable_or_null(232) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 232, i64 noundef range(i64 1, -9223372036854775807) 8) #96, !noalias !30180 ; 7 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.n, label %bb.o, !prof !37

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 232) #99
          to label %.noexc.i.i unwind label %bb.ch, !noalias !30180

.noexc.i.i:                                       ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 176
  store ptr null, ptr %i.dh, align 8, !noalias !30180
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 230
  store ptr %i.df, ptr %i.ac, align 8, !alias.scope !30152, !noalias !30180
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.dj, align 8, !alias.scope !30152, !noalias !30180
  store i16 1, ptr %i.di, align 2, !noalias !30184
  store ptr %i.v, ptr %i.df, align 8, !noalias !30184
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i64 %2, ptr %i.dk, align 8, !noalias !30184
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 184
  store i32 %i.o, ptr %i.dl, align 8, !noalias !30184
  br label %bb.cm

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !30187
  store ptr %i.v, ptr %i.g, align 8, !noalias !30191
  %i.dm = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %2, ptr %i.dm, align 8, !noalias !30191
  %i.dn = getelementptr inbounds nuw i8, ptr %.cast.i, i64 230 ; 4 uses
  %i.do = load i16, ptr %i.dn, align 2, !noalias !30195, !noundef !12 ; 3 uses
  %i.dp = icmp ugt i16 %i.do, 10
  br i1 %i.dp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dq = icmp ult i64 %.sroa.19.0.i, 5
  br i1 %i.dq, label %bb.w, label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.dr = zext nneg i16 %i.do to i64              ; 2 uses
  %i.ds = add i64 %.sroa.19.0.i, 1                ; 3 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.ds, %i.dr
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %.cast.i, i64 %.sroa.19.0.i ; 5 uses
  br i1 %.not.i.i.i.i.i, label %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderECsdaEETE4DqmE_13typst_library.exit.i.i.i.i.i, label %bb.s

_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderECsdaEETE4DqmE_13typst_library.exit.i.i.i.i.i: ; preds = %bb.r
  store ptr %i.v, ptr %i.dt, align 8, !alias.scope !30196, !noalias !30199
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i64 %2, ptr %i.du, align 8, !alias.scope !30196, !noalias !30199
  br label %bb.ak

bb.s:                                             ; preds = %bb.r
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %.cast.i, i64 %i.ds
  %i.dw = sub nsw i64 %i.dr, %.sroa.19.0.i        ; 2 uses
  %i.dx = shl nuw nsw i64 %i.dw, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dv, ptr nonnull align 8 %i.dt, i64 %i.dx, i1 false), !alias.scope !30196, !noalias !30199
  store ptr %i.v, ptr %i.dt, align 8, !alias.scope !30196, !noalias !30199
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i64 %2, ptr %i.dy, align 8, !alias.scope !30196, !noalias !30199
  %i.dz = getelementptr inbounds nuw i8, ptr %.cast.i, i64 184 ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.sroa.19.0.i
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.ds
  %i.ec = shl nuw nsw i64 %i.dw, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.eb, ptr nonnull align 4 %i.ea, i64 %i.ec, i1 false), !alias.scope !30203, !noalias !30199
  br label %bb.ak

bb.t:                                             ; preds = %bb.q
  switch i64 %.sroa.19.0.i, label %bb.u [
    i64 5, label %bb.w
    i64 6, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.ed = add i64 %.sroa.19.0.i, -7
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.q
  %.sroa.09.0.i.i.i.i = phi i1 [ true, %bb.v ], [ true, %bb.u ], [ false, %bb.q ], [ false, %bb.t ]
  %.sroa.510.0.i.i.i.i = phi i64 [ 0, %bb.v ], [ %i.ed, %bb.u ], [ %.sroa.19.0.i, %bb.q ], [ %.sroa.19.0.i, %bb.t ] ; 6 uses
  %.sroa.013.0.i.i.i.i = phi i64 [ 5, %bb.v ], [ 6, %bb.u ], [ 4, %bb.q ], [ %.sroa.19.0.i, %bb.t ] ; 5 uses
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #96, !noalias !30206
  %i.ee = tail call noalias noundef align 8 dereferenceable_or_null(232) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 232, i64 noundef range(i64 1, -9223372036854775807) 8) #96, !noalias !30206 ; 9 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %bb.x, label %_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderNtB1t_3SymEE13new_uninit_inCsdaEETE4DqmE_13typst_library.exit.i.i.i.i.i, !prof !37

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 232) #99
          to label %.noexc.i.i.i.i unwind label %bb.ad, !noalias !30195

.noexc.i.i.i.i:                                   ; preds = %bb.x
  unreachable

_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderNtB1t_3SymEE13new_uninit_inCsdaEETE4DqmE_13typst_library.exit.i.i.i.i.i: ; preds = %bb.w
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 176
  store ptr null, ptr %i.eg, align 8, !noalias !30206
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 230
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30210)
  %i.ei = load i16, ptr %i.dn, align 2, !noalias !30213, !noundef !12
  %i.ej = zext i16 %i.ei to i64
  %i.ek = xor i64 %.sroa.013.0.i.i.i.i, -1
  %i.el = add nsw i64 %i.ej, %i.ek                ; 5 uses
  %i.em = trunc i64 %i.el to i16
  store i16 %i.em, ptr %i.eh, align 2, !alias.scope !30210, !noalias !30215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !30216
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %.cast.i, i64 %.sroa.013.0.i.i.i.i ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !30213, !nonnull !12, !noundef !12 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !noalias !30213, !noundef !12 ; 3 uses
  store ptr %i.eo, ptr %i.f, align 8, !noalias !30216
  %i.er = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.eq, ptr %i.er, align 8, !noalias !30216
  %i.es = icmp ult i64 %i.el, 12
  br i1 %i.es, label %bb.ae, label %bb.y, !prof !30217

bb.y:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderNtB1t_3SymEE13new_uninit_inCsdaEETE4DqmE_13typst_library.exit.i.i.i.i.i
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.el, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5347) #99
          to label %bb.ab unwind label %bb.z, !noalias !30213

bb.z:                                             ; preds = %bb.y
  %i.et = landingpad { ptr, i32 }
          cleanup
  %i.eu = atomicrmw sub ptr %i.eo, i64 1 release, align 8, !noalias !30218
  %i.ev = icmp eq i64 %i.eu, 1
  br i1 %i.ev, label %bb.aa, label %.thread.i.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  fence acquire
end_hunk_0
begin_hunk_1_@_RINvMsc_NtCsbjuPLKRsGdD_5wasmi4funcNtB6_4Func33verify_and_prepare_inputs_outputsINtNtNtB8_5store7context12StoreContextNtNtNtCsdaEETE4DqmE_13typst_library11foundations7plugin_8CallDataEEB1Y_:bb.a
bb.f:                                             ; preds = %_RINvMs0_NtNtCsbjuPLKRsGdD_5wasmi4func2tyNtB6_8FuncType12match_paramsNtNtBa_5value3ValECsdaEETE4DqmE_13typst_library.exit.i.i, %bb.d, %bb.c, %_RNvMs7_NtCsdB91L5PTryF_4spin6rwlockINtB5_6RwLockNtNtNtCsbjuPLKRsGdD_5wasmi6engine10func_types16FuncTypeRegistryE4readCsdaEETE4DqmE_13typst_library.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = atomicrmw sub ptr %i.f, i64 4 release, align 8, !noalias !30565 ; 0 uses
  resume { ptr, i32 } %i.ag

_RINvMs7_NtCsbjuPLKRsGdD_5wasmi6engineNtB6_11EngineInner17resolve_func_typeNCINvMsc_NtB8_4funcNtB1j_4Func33verify_and_prepare_inputs_outputsINtNtNtB8_5store7context12StoreContextNtNtNtCsdaEETE4DqmE_13typst_library11foundations7plugin_8CallDataEE0INtNtCs3oUPovFnLWP_4core6result6ResultuNtNtB1j_5error9FuncErrorEEB2V_.exit: ; preds = %.lr.ph, %bb.e, %.noexc.i, %.noexc3.i, %_RINvMs0_NtNtCsbjuPLKRsGdD_5wasmi4func2tyNtB6_8FuncType12match_paramsNtNtBa_5value3ValECsdaEETE4DqmE_13typst_library.exit.i.i
  %.sroa.0.0.i.i = phi i8 [ %i.af, %_RINvMs0_NtNtCsbjuPLKRsGdD_5wasmi4func2tyNtB6_8FuncType12match_paramsNtNtBa_5value3ValECsdaEETE4DqmE_13typst_library.exit.i.i ], [ 1, %.noexc3.i ], [ 2, %.noexc.i ], [ 1, %bb.e ], [ 1, %.lr.ph ]
  %i.ai = atomicrmw sub ptr %i.f, i64 4 release, align 8, !noalias !30565 ; 0 uses
  ret i8 %.sroa.0.0.i.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef align 4 ptr @_RINvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderNtB1c_3SymE3getNtB1a_11LenOrderStrECsdaEETE4DqmE_13typst_library(ptr nofree readonly captures(address, ret: address, provenance) %.0.val, i64 %.8.val, ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq ptr %.0.val, null
  br i1 %.not, label %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderNtB1E_3SymNtB1i_14LeafOrInternalE11search_treeNtB1C_11LenOrderStrECsdaEETE4DqmE_13typst_library.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30589)
  %i.a = icmp ult i64 %1, 8
  br i1 %i.a, label %.split.us.i.preheader.us.i.preheader, label %.split.i.preheader.i

.split.us.i.preheader.us.i.preheader:             ; preds = %bb.b
  %exitcond.not.i.us.i.us.i73 = icmp eq i64 %1, 0
  %exitcond.not.i.us.i.us.i = icmp eq i64 %1, 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %exitcond.not.i.us.i.us.i.1 = icmp eq i64 %1, 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %exitcond.not.i.us.i.us.i.2 = icmp eq i64 %1, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3
  %exitcond.not.i.us.i.us.i.3 = icmp eq i64 %1, 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %exitcond.not.i.us.i.us.i.4 = icmp eq i64 %1, 5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5
  %exitcond.not.i.us.i.us.i.5 = icmp eq i64 %1, 6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 6
  br label %.split.us.i.preheader.us.i

.split.us.i.preheader.us.i:                       ; preds = %.split.us.i.preheader.us.i.preheader, %bb.d
  %.sroa.3.0.us.i = phi i64 [ %i.az, %bb.d ], [ %.8.val, %.split.us.i.preheader.us.i.preheader ] ; 2 uses
  %.sroa.0.0.us.i = phi ptr [ %i.ay, %bb.d ], [ %.0.val, %.split.us.i.preheader.us.i.preheader ] ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30592)
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us.i, i64 230
  %i.i = load i16, ptr %i.h, align 2, !noalias !30595, !noundef !12 ; 2 uses
  %i.j = zext i16 %i.i to i64                     ; 3 uses
  %.idx83 = shl nuw nsw i64 %i.j, 4
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us.i, i64 %.idx83
  %i.l = icmp eq i16 %i.i, 0
  br i1 %i.l, label %.loopexit54.us.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCsdaEETE4DqmE_13typst_library.exit.us.i.us.i

.split.us.i.us.i:                                 ; preds = %_RNvXs6_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i
  %i.m = icmp eq ptr %i.n, %i.k
  br i1 %i.m, label %.loopexit54.us.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCsdaEETE4DqmE_13typst_library.exit.us.i.us.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCsdaEETE4DqmE_13typst_library.exit.us.i.us.i: ; preds = %.split.us.i.preheader.us.i, %.split.us.i.us.i
  %.sroa.0.01.us.i.us.i80 = phi ptr [ %i.n, %.split.us.i.us.i ], [ %.sroa.0.0.us.i, %.split.us.i.preheader.us.i ] ; 3 uses
  %.sroa.8.0.us.i.us.i79 = phi i64 [ %i.o, %.split.us.i.us.i ], [ 0, %.split.us.i.preheader.us.i ] ; 11 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.01.us.i.us.i80, i64 16 ; 2 uses
  %i.o = add nuw nsw i64 %.sroa.8.0.us.i.us.i79, 1
  %.val.us.i.us.i = load ptr, ptr %.sroa.0.01.us.i.us.i80, align 8, !noalias !30595, !nonnull !12, !noundef !12 ; 7 uses
  %i.p = getelementptr i8, ptr %.sroa.0.01.us.i.us.i80, i64 8
  %.val6.us.i.us.i = load i64, ptr %i.p, align 8, !noalias !30595, !noundef !12 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val.us.i.us.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30600)
  %i.r = tail call i8 @llvm.ucmp.i8.i64(i64 %1, i64 %.val6.us.i.us.i)
  %i.s = icmp eq i64 %1, %.val6.us.i.us.i
  br i1 %i.s, label %.preheader.i.us.i.us.i.preheader, label %_RNvXs6_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i

.preheader.i.us.i.us.i.preheader:                 ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCsdaEETE4DqmE_13typst_library.exit.us.i.us.i
  br i1 %exitcond.not.i.us.i.us.i73, label %.loopexit, label %.lr.ph

.preheader.i.us.i.us.i:                           ; preds = %.lr.ph
  br i1 %exitcond.not.i.us.i.us.i, label %.loopexit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.preheader.i.us.i.us.i
  %i.t = getelementptr inbounds nuw i8, ptr %.val.us.i.us.i, i64 17
  %i.u = load i8, ptr %i.b, align 1, !alias.scope !30602, !noalias !30603, !noundef !12 ; 2 uses
  %i.v = load i8, ptr %i.t, align 1, !alias.scope !30600, !noalias !30604, !noundef !12 ; 2 uses
  %i.w = icmp eq i8 %i.u, %i.v
  br i1 %i.w, label %.preheader.i.us.i.us.i.1, label %bb.c

.preheader.i.us.i.us.i.1:                         ; preds = %.lr.ph.1
  br i1 %exitcond.not.i.us.i.us.i.1, label %.loopexit, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.preheader.i.us.i.us.i.1
  %i.x = getelementptr inbounds nuw i8, ptr %.val.us.i.us.i, i64 18
  %i.y = load i8, ptr %i.c, align 1, !alias.scope !30602, !noalias !30603, !noundef !12 ; 2 uses
  %i.z = load i8, ptr %i.x, align 1, !alias.scope !30600, !noalias !30604, !noundef !12 ; 2 uses
  %i.aa = icmp eq i8 %i.y, %i.z
  br i1 %i.aa, label %.preheader.i.us.i.us.i.2, label %bb.c

.preheader.i.us.i.us.i.2:                         ; preds = %.lr.ph.2
  br i1 %exitcond.not.i.us.i.us.i.2, label %.loopexit, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.preheader.i.us.i.us.i.2
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.us.i.us.i, i64 19
  %i.ac = load i8, ptr %i.d, align 1, !alias.scope !30602, !noalias !30603, !noundef !12 ; 2 uses
  %i.ad = load i8, ptr %i.ab, align 1, !alias.scope !30600, !noalias !30604, !noundef !12 ; 2 uses
  %i.ae = icmp eq i8 %i.ac, %i.ad
  br i1 %i.ae, label %.preheader.i.us.i.us.i.3, label %bb.c

.preheader.i.us.i.us.i.3:                         ; preds = %.lr.ph.3
  br i1 %exitcond.not.i.us.i.us.i.3, label %.loopexit, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.preheader.i.us.i.us.i.3
  %i.af = getelementptr inbounds nuw i8, ptr %.val.us.i.us.i, i64 20
  %i.ag = load i8, ptr %i.e, align 1, !alias.scope !30602, !noalias !30603, !noundef !12 ; 2 uses
  %i.ah = load i8, ptr %i.af, align 1, !alias.scope !30600, !noalias !30604, !noundef !12 ; 2 uses
  %i.ai = icmp eq i8 %i.ag, %i.ah
  br i1 %i.ai, label %.preheader.i.us.i.us.i.4, label %bb.c

.preheader.i.us.i.us.i.4:                         ; preds = %.lr.ph.4
  br i1 %exitcond.not.i.us.i.us.i.4, label %.loopexit, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.preheader.i.us.i.us.i.4
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.us.i.us.i, i64 21
  %i.ak = load i8, ptr %i.f, align 1, !alias.scope !30602, !noalias !30603, !noundef !12 ; 2 uses
  %i.al = load i8, ptr %i.aj, align 1, !alias.scope !30600, !noalias !30604, !noundef !12 ; 2 uses
  %i.am = icmp eq i8 %i.ak, %i.al
  br i1 %i.am, label %.preheader.i.us.i.us.i.5, label %bb.c

.preheader.i.us.i.us.i.5:                         ; preds = %.lr.ph.5
  br i1 %exitcond.not.i.us.i.us.i.5, label %.loopexit, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.preheader.i.us.i.us.i.5
  %i.an = getelementptr inbounds nuw i8, ptr %.val.us.i.us.i, i64 22
  %i.ao = load i8, ptr %i.g, align 1, !alias.scope !30602, !noalias !30603, !noundef !12 ; 2 uses
  %i.ap = load i8, ptr %i.an, align 1, !alias.scope !30600, !noalias !30604, !noundef !12 ; 2 uses
  %i.aq = icmp eq i8 %i.ao, %i.ap
  br i1 %i.aq, label %.loopexit, label %bb.c

.lr.ph:                                           ; preds = %.preheader.i.us.i.us.i.preheader
  %i.ar = load i8, ptr %0, align 1, !alias.scope !30602, !noalias !30603, !noundef !12 ; 2 uses
  %i.as = load i8, ptr %i.q, align 1, !alias.scope !30600, !noalias !30604, !noundef !12 ; 2 uses
  %i.at = icmp eq i8 %i.ar, %i.as
  br i1 %i.at, label %.preheader.i.us.i.us.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.6, %.lr.ph.5, %.lr.ph.4, %.lr.ph.3, %.lr.ph.2, %.lr.ph.1, %.lr.ph
  %.lcssa86 = phi i8 [ %i.ar, %.lr.ph ], [ %i.u, %.lr.ph.1 ], [ %i.y, %.lr.ph.2 ], [ %i.ac, %.lr.ph.3 ], [ %i.ag, %.lr.ph.4 ], [ %i.ak, %.lr.ph.5 ], [ %i.ao, %.lr.ph.6 ]
  %.lcssa = phi i8 [ %i.as, %.lr.ph ], [ %i.v, %.lr.ph.1 ], [ %i.z, %.lr.ph.2 ], [ %i.ad, %.lr.ph.3 ], [ %i.ah, %.lr.ph.4 ], [ %i.al, %.lr.ph.5 ], [ %i.ap, %.lr.ph.6 ]
  %i.au = tail call i8 @llvm.ucmp.i8.i8(i8 %.lcssa86, i8 %.lcssa)
  br label %_RNvXs6_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i

_RNvXs6_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i: ; preds = %bb.c, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCsdaEETE4DqmE_13typst_library.exit.us.i.us.i
  %.sroa.0.0.i7.us.i.us.i = phi i8 [ %i.au, %bb.c ], [ %i.r, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCsdaEETE4DqmE_13typst_library.exit.us.i.us.i ]
  switch i8 %.sroa.0.0.i7.us.i.us.i, label %.split17.us.i.i [
    i8 -1, label %.loopexit54.us.i
    i8 0, label %.loopexit
    i8 1, label %.split.us.i.us.i
  ]

bb.d:                                             ; preds = %.loopexit54.us.i
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us.i, i64 232
  %i.aw = icmp samesign ult i64 %.sroa.4.0.i.ph.ph.us.i, 12
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.sroa.4.0.i.ph.ph.us.i
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !30605, !nonnull !12, !noundef !12
  %i.az = add i64 %.sroa.3.0.us.i, -1
  br label %.split.us.i.preheader.us.i

.loopexit54.us.i:                                 ; preds = %.split.us.i.us.i, %_RNvXs6_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i, %.split.us.i.preheader.us.i
  %.sroa.4.0.i.ph.ph.us.i = phi i64 [ %i.j, %.split.us.i.preheader.us.i ], [ %i.j, %.split.us.i.us.i ], [ %.sroa.8.0.us.i.us.i79, %_RNvXs6_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i ] ; 2 uses
  %i.ba = icmp eq i64 %.sroa.3.0.us.i, 0
  br i1 %i.ba, label %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderNtB1E_3SymNtB1i_14LeafOrInternalE11search_treeNtB1C_11LenOrderStrECsdaEETE4DqmE_13typst_library.exit, label %bb.d

.split.i.preheader.i:                             ; preds = %bb.b, %bb.f
  %.sroa.3.0.i = phi i64 [ %i.bu, %bb.f ], [ %.8.val, %bb.b ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.bt, %bb.f ], [ %.0.val, %bb.b ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30592)
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 230
  %i.bc = load i16, ptr %i.bb, align 2, !noalias !30595, !noundef !12 ; 2 uses
  %i.bd = zext i16 %i.bc to i64                   ; 3 uses
  %.idx = shl nuw nsw i64 %i.bd, 4
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.idx
  %i.bf = icmp eq i16 %i.bc, 0
  br i1 %i.bf, label %.loopexit56.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCsdaEETE4DqmE_13typst_library.exit.i.i

.split.i.i:                                       ; preds = %_RNvXs6_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i
  %i.bg = icmp eq ptr %i.bh, %i.be
  br i1 %i.bg, label %.loopexit56.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCsdaEETE4DqmE_13typst_library.exit.i.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCsdaEETE4DqmE_13typst_library.exit.i.i: ; preds = %.split.i.preheader.i, %.split.i.i
  %.sroa.0.01.i.i71 = phi ptr [ %i.bh, %.split.i.i ], [ %.sroa.0.0.i, %.split.i.preheader.i ] ; 3 uses
  %.sroa.8.0.i.i70 = phi i64 [ %i.bi, %.split.i.i ], [ 0, %.split.i.preheader.i ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i71, i64 16 ; 2 uses
  %i.bi = add nuw nsw i64 %.sroa.8.0.i.i70, 1
  %.val.i.i = load ptr, ptr %.sroa.0.01.i.i71, align 8, !noalias !30595, !nonnull !12, !noundef !12
  %i.bj = getelementptr i8, ptr %.sroa.0.01.i.i71, i64 8
  %.val6.i.i = load i64, ptr %i.bj, align 8, !noalias !30595, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30600)
  %i.bk = tail call i8 @llvm.ucmp.i8.i64(i64 %1, i64 %.val6.i.i)
  %i.bl = icmp eq i64 %1, %.val6.i.i
  br i1 %i.bl, label %bb.e, label %_RNvXs6_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i

bb.e:                                             ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCsdaEETE4DqmE_13typst_library.exit.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.bn = tail call i32 @memcmp(ptr nonnull readonly %0, ptr nonnull readonly %i.bm, i64 %1), !alias.scope !30606, !noalias !30607
  %2 = sext i32 %i.bn to i64
  %i.bo = tail call i8 @llvm.scmp.i8.i64(i64 %2, i64 0)
  br label %_RNvXs6_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i

_RNvXs6_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i: ; preds = %bb.e, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCsdaEETE4DqmE_13typst_library.exit.i.i
  %.sroa.0.0.i7.i.i = phi i8 [ %i.bo, %bb.e ], [ %i.bk, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCsdaEETE4DqmE_13typst_library.exit.i.i ]
  switch i8 %.sroa.0.0.i7.i.i, label %.split17.us.i.i [
    i8 -1, label %.loopexit56.i
    i8 0, label %.loopexit
    i8 1, label %.split.i.i
  ]

.split17.us.i.i:                                  ; preds = %_RNvXs6_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i, %_RNvXs6_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i
  unreachable

.loopexit56.i:                                    ; preds = %.split.i.i, %_RNvXs6_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i, %.split.i.preheader.i
  %.sroa.4.0.i.ph.ph57.i = phi i64 [ %i.bd, %.split.i.preheader.i ], [ %i.bd, %.split.i.i ], [ %.sroa.8.0.i.i70, %_RNvXs6_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i ] ; 2 uses
  %i.bp = icmp eq i64 %.sroa.3.0.i, 0
  br i1 %i.bp, label %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderNtB1E_3SymNtB1i_14LeafOrInternalE11search_treeNtB1C_11LenOrderStrECsdaEETE4DqmE_13typst_library.exit, label %bb.f

bb.f:                                             ; preds = %.loopexit56.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 232
  %i.br = icmp samesign ult i64 %.sroa.4.0.i.ph.ph57.i, 12
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.sroa.4.0.i.ph.ph57.i
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !30605, !nonnull !12, !noundef !12
  %i.bu = add i64 %.sroa.3.0.i, -1
  br label %.split.i.preheader.i

_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderNtB1E_3SymNtB1i_14LeafOrInternalE11search_treeNtB1C_11LenOrderStrECsdaEETE4DqmE_13typst_library.exit: ; preds = %.loopexit56.i, %.loopexit54.us.i, %.loopexit, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.bx, %.loopexit ], [ null, %.loopexit54.us.i ], [ null, %.loopexit56.i ]
  ret ptr %.sroa.0.0

.loopexit:                                        ; preds = %_RNvXs6_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i, %_RNvXs6_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i, %.preheader.i.us.i.us.i.preheader, %.lr.ph.6, %.preheader.i.us.i.us.i, %.preheader.i.us.i.us.i.1, %.preheader.i.us.i.us.i.2, %.preheader.i.us.i.us.i.3, %.preheader.i.us.i.us.i.4, %.preheader.i.us.i.us.i.5
  %.us-phi86.sink.i.ph = phi ptr [ %.sroa.0.0.us.i, %.lr.ph.6 ], [ %.sroa.0.0.us.i, %_RNvXs6_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i ], [ %.sroa.0.0.us.i, %.preheader.i.us.i.us.i.5 ], [ %.sroa.0.0.us.i, %.preheader.i.us.i.us.i.4 ], [ %.sroa.0.0.us.i, %.preheader.i.us.i.us.i.3 ], [ %.sroa.0.0.us.i, %.preheader.i.us.i.us.i.2 ], [ %.sroa.0.0.us.i, %.preheader.i.us.i.us.i.1 ], [ %.sroa.0.0.us.i, %.preheader.i.us.i.us.i ], [ %.sroa.0.0.us.i, %.preheader.i.us.i.us.i.preheader ], [ %.sroa.0.0.i, %_RNvXs6_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i ] ; 2 uses
  %.us-phi85.sink.i.ph = phi i64 [ %.sroa.8.0.us.i.us.i79, %.lr.ph.6 ], [ %.sroa.8.0.us.i.us.i79, %_RNvXs6_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i ], [ %.sroa.8.0.us.i.us.i79, %.preheader.i.us.i.us.i.5 ], [ %.sroa.8.0.us.i.us.i79, %.preheader.i.us.i.us.i.4 ], [ %.sroa.8.0.us.i.us.i79, %.preheader.i.us.i.us.i.3 ], [ %.sroa.8.0.us.i.us.i79, %.preheader.i.us.i.us.i.2 ], [ %.sroa.8.0.us.i.us.i79, %.preheader.i.us.i.us.i.1 ], [ %.sroa.8.0.us.i.us.i79, %.preheader.i.us.i.us.i ], [ %.sroa.8.0.us.i.us.i79, %.preheader.i.us.i.us.i.preheader ], [ %.sroa.8.0.i.i70, %_RNvXs6_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.us-phi86.sink.i.ph) ]
  %i.bv = icmp samesign ult i64 %.us-phi85.sink.i.ph, 11
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = getelementptr inbounds nuw i8, ptr %.us-phi86.sink.i.ph, i64 184
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %.us-phi85.sink.i.ph
  br label %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderNtB1E_3SymNtB1i_14LeafOrInternalE11search_treeNtB1C_11LenOrderStrECsdaEETE4DqmE_13typst_library.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvMsj_Cs4g035V82HBz_12citationbergNtB6_15PageRangeFormat6formatINtNtCsdE48SAkMLa6_9hayagriva3csl7ContextNtB16_5EntryEECsdaEETE4DqmE_13typst_library(i8 noundef range(i8 0, 5) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(720) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, ptr noalias nofree noundef readonly captures(address, read_provenance) %6, i64 %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 26 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 11 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %.not = icmp eq ptr %6, null                    ; 2 uses
  %spec.select = select i1 %.not, ptr @785, ptr %6
  %spec.select194 = select i1 %.not, i64 3, i64 %7
  store ptr %spec.select, ptr %i.n, align 8, !captures !49
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %spec.select194, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.p = tail call fastcc { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.p, 1        ; 2 uses
  store ptr %i.q, ptr %i.m, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.r, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.t = tail call fastcc { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) ; 2 uses
  %i.u = extractvalue { ptr, i64 } %i.t, 0        ; 2 uses
  %i.v = extractvalue { ptr, i64 } %i.t, 1        ; 2 uses
  store ptr %i.u, ptr %i.l, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.v, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvCs4g035V82HBz_12citationberg22split_max_digit_suffix(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.r)
  %i.x = load ptr, ptr %i.j, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.z = load i64, ptr %i.y, align 8, !noundef !12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !12, !noundef !12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !12
  store ptr %i.ab, ptr %i.k, align 8, !captures !49
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 7 uses
  store i64 %i.ad, ptr %i.ae, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvCs4g035V82HBz_12citationberg22split_max_digit_suffix(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef %i.v)
  %i.af = load ptr, ptr %i.i, align 8, !nonnull !12, !noundef !12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !noundef !12 ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.am = icmp eq i64 %i.z, %i.ah
  br i1 %i.am, label %bb.b, label %_RNvYINtNtCsdE48SAkMLa6_9hayagriva3csl7ContextNtB7_5EntryENtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCsdaEETE4DqmE_13typst_library.exit

bb.b:                                             ; preds = %bb.a
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.x, ptr nonnull %i.af, i64 %i.z)
  %i.an = icmp eq i32 %bcmp, 0
  br i1 %i.an, label %bb.c, label %_RNvYINtNtCsdE48SAkMLa6_9hayagriva3csl7ContextNtB7_5EntryENtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCsdaEETE4DqmE_13typst_library.exit

_RNvYINtNtCsdE48SAkMLa6_9hayagriva3csl7ContextNtB7_5EntryENtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCsdaEETE4DqmE_13typst_library.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.m, ptr %i.a, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsdaEETE4DqmE_13typst_library, ptr %.sroa.450.0..sroa_idx, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %i.ao, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsdaEETE4DqmE_13typst_library, ptr %.sroa.454.0..sroa_idx, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.l, ptr %i.ap, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsdaEETE4DqmE_13typst_library, ptr %.sroa.458.0..sroa_idx, align 8
  %i.aq = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(720) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @944, ptr noundef nonnull @786, ptr noundef nonnull %i.a), !inline_history !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ao

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.x, ptr %i.h, align 8, !captures !49
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.z, ptr %i.ar, align 8
  %i.as = load ptr, ptr %i.k, align 8, !nonnull !12, !noundef !12 ; 5 uses
  %i.at = load i64, ptr %i.ae, align 8, !noundef !12 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.not65 = icmp ugt i64 %i.at, %i.al
  br i1 %.not65, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.au = sub nuw i64 %i.at, %i.al                ; 10 uses
  %.not.i.not = icmp eq i64 %i.al, 0              ; 2 uses
  br i1 %.not.i.not, label %.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !30608, !noundef !12
  %i.ax = icmp sgt i8 %i.aw, -65
  br i1 %i.ax, label %.split.i, label %bb.j

bb.f:                                             ; preds = %bb.c
  %.not.i72 = icmp slt i64 %i.al, 0
  br i1 %.not.i72, label %bb.o, label %bb.g, !prof !24229

bb.g:                                             ; preds = %bb.f
  %i.ay = icmp eq i64 %i.al, 0
  br i1 %i.ay, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdaEETE4DqmE_13typst_library.exit.thread151, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #96, !noalias !30611
  %i.az = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.al, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !30611 ; 3 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.o, label %bb.p

.split.i:                                         ; preds = %bb.d, %bb.e
  %.not.i73 = icmp slt i64 %i.au, 0
  br i1 %.not.i73, label %bb.k, label %bb.i, !prof !30614

bb.i:                                             ; preds = %.split.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #96, !noalias !30615
  %i.bb = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !30615 ; 3 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.k, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdaEETE4DqmE_13typst_library.exit75.thread146

bb.j:                                             ; preds = %bb.e
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.as, i64 noundef %i.at, i64 noundef 0, i64 noundef %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @787) #104
  unreachable

bb.k:                                             ; preds = %.split.i, %bb.i
  %.sroa.4129.0.ph = phi i64 [ 1, %bb.i ], [ 0, %.split.i ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4129.0.ph, i64 %i.au) #99
  unreachable

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsdaEETE4DqmE_13typst_library.exit.thread.i: ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdaEETE4DqmE_13typst_library.exit75.thread146
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.au, i64 noundef %i.al, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsdaEETE4DqmE_13typst_library.exit.thread.i
  %i.bd = load i64, ptr %.sroa.610.0..sroa_idx, align 8, !alias.scope !30618, !noundef !12 ; 3 uses
  %i.be = icmp sgt i64 %i.bd, -1
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = load ptr, ptr %.sroa.49.0..sroa_idx, align 8, !alias.scope !30618, !nonnull !12, !noundef !12
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bg, ptr nonnull readonly align 1 %i.aj, i64 %i.al, i1 false), !noalias !30618
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsdaEETE4DqmE_13typst_library.exit.i

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdaEETE4DqmE_13typst_library.exit75.thread146: ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bb, ptr nonnull align 1 %i.as, i64 %i.au, i1 false)
end_hunk_1
begin_hunk_2_@_RNvNtNtCsdaEETE4DqmE_13typst_library11foundations7plugin_6plugin:bb.a
  %.sroa.070.sroa.0.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %.sroa.070.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  store i64 0, ptr %.sroa.070.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !184800
  %.sroa.571.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  store i8 0, ptr %.sroa.571.0..sroa_idx.i.i.i.i, align 8, !noalias !184800
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.070.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !noalias !184800
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.070.sroa.0.sroa.6.0..sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !noalias !184800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !184868
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #96, !noalias !184872
  %i.kc = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #96, !noalias !184872 ; 4 uses
  %i.kd = icmp eq ptr %i.kc, null
  br i1 %i.kd, label %.noexc.i.i.invoke.i.i.i.i, label %_RNvXs6_NtNtCsbjuPLKRsGdD_5wasmi4func9into_funcNvNtNtCsdaEETE4DqmE_13typst_library11foundations7plugin_41wasm_minimal_protocol_send_result_to_hostINtB5_8IntoFuncNtBK_8CallDataTINtNtB7_6caller6CallerB2y_EmmEuE9into_funcBO_.exit.i.i.i.i.i, !prof !225

.noexc.i.i.invoke.i.i.i.i:                        ; preds = %bb.bx, %bb.bn
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #99
          to label %.noexc.i.i.cont.i.i.i.i unwind label %.thread246.i.i.i.i, !noalias !184802

.noexc.i.i.cont.i.i.i.i:                          ; preds = %.noexc.i.i.invoke.i.i.i.i
  unreachable

_RNvXs6_NtNtCsbjuPLKRsGdD_5wasmi4func9into_funcNvNtNtCsdaEETE4DqmE_13typst_library11foundations7plugin_41wasm_minimal_protocol_send_result_to_hostINtB5_8IntoFuncNtBK_8CallDataTINtNtB7_6caller6CallerB2y_EmmEuE9into_funcBO_.exit.i.i.i.i.i: ; preds = %bb.bn
  store i64 1, ptr %i.kc, align 8, !noalias !184872
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !184872
  %.sroa.77.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.77.0..sroa_idx.i.i.i.i.i, i8 0, i64 19, i1 false), !noalias !184868
  store i8 0, ptr %i.s, align 8, !noalias !184868
  %.sroa.44.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 2, ptr %.sroa.44.0..sroa_idx.i.i.i.i.i, align 1, !noalias !184868
  %.sroa.55.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i8 0, ptr %.sroa.55.0..sroa_idx.i.i.i.i.i, align 2, !noalias !184868
  %.sroa.66.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 3
  store i16 0, ptr %.sroa.66.0..sroa_idx.i.i.i.i.i, align 1, !noalias !184868
  %i.ke = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.kc, ptr %i.ke, align 8, !noalias !184868
  %i.kf = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr @14964, ptr %i.kf, align 8, !noalias !184868
  %i.kg = invoke fastcc noundef i32 @_RINvMs_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_14StringInterner6internReECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5396, i64 noundef 9)
          to label %_RINvXNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB3_14StringInternerNtB5_19GetOrInternWithHint23get_or_intern_with_hintReECsdaEETE4DqmE_13typst_library.exit.i.i.i.i.i.i unwind label %bb.bp, !noalias !184875

_RINvXNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB3_14StringInternerNtB5_19GetOrInternWithHint23get_or_intern_with_hintReECsdaEETE4DqmE_13typst_library.exit.i.i.i.i.i.i: ; preds = %_RNvXs6_NtNtCsbjuPLKRsGdD_5wasmi4func9into_funcNvNtNtCsdaEETE4DqmE_13typst_library11foundations7plugin_41wasm_minimal_protocol_send_result_to_hostINtB5_8IntoFuncNtBK_8CallDataTINtNtB7_6caller6CallerB2y_EmmEuE9into_funcBO_.exit.i.i.i.i.i
  %i.kh = invoke noundef i32 @_RNvMs_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB4_14StringInterner22get_or_intern_hint_new(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5397, i64 noundef range(i64 9, 43) 41)
          to label %bb.bo unwind label %bb.bp, !noalias !184875

bb.bo:                                            ; preds = %_RINvXNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB3_14StringInternerNtB5_19GetOrInternWithHint23get_or_intern_with_hintReECsdaEETE4DqmE_13typst_library.exit.i.i.i.i.i.i
  %i.ki = zext i32 %i.kg to i64
  %i.kj = shl nuw i64 %i.ki, 32
  %i.kk = zext i32 %i.kh to i64
  %i.kl = or disjoint i64 %i.kj, %i.kk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !184868
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !184868
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %i.s, i64 40, i1 false), !noalias !184868
  invoke fastcc void @_RNvMsa_NtCsbjuPLKRsGdD_5wasmi6linkerINtB5_11LinkerInnerNtNtNtCsdaEETE4DqmE_13typst_library11foundations7plugin_8CallDataE6insertBX_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(112) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ae, i64 noundef %i.kl, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.q)
          to label %.noexc138.i.i.i.i unwind label %.thread246.i.i.i.i, !noalias !184802

.noexc138.i.i.i.i:                                ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !184868
  %i.km = load i8, ptr %i.r, align 8, !range !79052, !noalias !184868, !noundef !12 ; 2 uses
  %.not.i136.i.i.i.i = icmp eq i8 %i.km, -1
  br i1 %.not.i136.i.i.i.i, label %bb.bx, label %bb.bt

bb.bp:                                            ; preds = %_RINvXNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB3_14StringInternerNtB5_19GetOrInternWithHint23get_or_intern_with_hintReECsdaEETE4DqmE_13typst_library.exit.i.i.i.i.i.i, %_RNvXs6_NtNtCsbjuPLKRsGdD_5wasmi4func9into_funcNvNtNtCsdaEETE4DqmE_13typst_library11foundations7plugin_41wasm_minimal_protocol_send_result_to_hostINtB5_8IntoFuncNtBK_8CallDataTINtNtB7_6caller6CallerB2y_EmmEuE9into_funcBO_.exit.i.i.i.i.i
  %lpad.thr_comm.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbjuPLKRsGdD_5wasmi4func24HostFuncTrampolineEntityNtNtNtCsdaEETE4DqmE_13typst_library11foundations7plugin_8CallDataEEB1B_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.s) #101
          to label %.thread236.i.i.i.i unwind label %bb.bq, !noalias !184875

bb.bq:                                            ; preds = %bb.bp
  %i.kn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #102, !noalias !184875
  unreachable

bb.br:                                            ; preds = %bb.bm
  call void @llvm.trap()
  unreachable

.thread246.i.i.i.i:                               ; preds = %bb.cb, %bb.bo, %.noexc.i.i.invoke.i.i.i.i
  %lpad.thr_comm.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread236.i.i.i.i

bb.bs:                                            ; preds = %bb.cp
  %lpad.thr_comm.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body131.i.i.i.i

bb.bt:                                            ; preds = %.noexc138.i.i.i.i
  %.sroa.6.0..sroa_idx200.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !184876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx200.i.i.i.i, i64 7, i1 false), !noalias !184800
  %.sroa.6201.0..sroa_idx202.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.6201.0.copyload203.i.i.i.i = load ptr, ptr %.sroa.6201.0..sroa_idx202.i.i.i.i, align 8, !noalias !184880
  %.sroa.8.0..sroa_idx204.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8.0..sroa_idx204.i.i.i.i, i64 96, i1 false), !noalias !184800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !184868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !184868
  store i8 %i.km, ptr %i.w, align 8, !noalias !184881
  %.sroa.6201.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %.sroa.6201.0.copyload203.i.i.i.i, ptr %.sroa.6201.0..sroa_idx.i.i.i.i, align 8, !noalias !184881
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4137, i64 noundef 43, ptr noundef nonnull %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4154, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5398) #99
          to label %bb.bv unwind label %bb.bu, !noalias !184882

bb.bu:                                            ; preds = %bb.bt
  %i.ko = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbjuPLKRsGdD_5wasmi6linker11LinkerErrorECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.w) #101
          to label %.thread236.i.i.i.i unwind label %bb.bw, !noalias !184882

bb.bv:                                            ; preds = %bb.bt
  unreachable

bb.bw:                                            ; preds = %bb.bu
  %i.kp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #102, !noalias !184882
  unreachable

bb.bx:                                            ; preds = %.noexc138.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !184868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !184868
  call void @llvm.experimental.noalias.scope.decl(metadata !184883)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !184886
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #96, !noalias !184888
  %i.kq = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #96, !noalias !184888 ; 4 uses
  %i.kr = icmp eq ptr %i.kq, null
  br i1 %i.kr, label %.noexc.i.i.invoke.i.i.i.i, label %_RNvXs4_NtNtCsbjuPLKRsGdD_5wasmi4func9into_funcNvNtNtCsdaEETE4DqmE_13typst_library11foundations7plugin_42wasm_minimal_protocol_write_args_to_bufferINtB5_8IntoFuncNtBK_8CallDataTINtNtB7_6caller6CallerB2z_EmEuE9into_funcBO_.exit.i.i.i.i.i, !prof !225

_RNvXs4_NtNtCsbjuPLKRsGdD_5wasmi4func9into_funcNvNtNtCsdaEETE4DqmE_13typst_library11foundations7plugin_42wasm_minimal_protocol_write_args_to_bufferINtB5_8IntoFuncNtBK_8CallDataTINtNtB7_6caller6CallerB2z_EmEuE9into_funcBO_.exit.i.i.i.i.i: ; preds = %bb.bx
  store i64 1, ptr %i.kq, align 8, !noalias !184888
  %.sroa.4.0..sroa_idx.i.i142.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i142.i.i.i.i, align 8, !noalias !184888
  %.sroa.77.0..sroa_idx.i143.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.77.0..sroa_idx.i143.i.i.i.i, i8 0, i64 20, i1 false), !noalias !184886
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %i.p, align 8, !noalias !184886
  %i.ks = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.kq, ptr %i.ks, align 8, !noalias !184886
  %i.kt = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr @14759, ptr %i.kt, align 8, !noalias !184886
  call void @llvm.experimental.noalias.scope.decl(metadata !184891)
  call void @llvm.experimental.noalias.scope.decl(metadata !184894)
  %.val4.i.i.i147.i.i.i.i = load ptr, ptr %.sroa.070.sroa.0.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !184897, !noalias !184898, !noundef !12 ; 2 uses
  %.not.i2.i.i148.i.i.i.i = icmp eq ptr %.val4.i.i.i147.i.i.i.i, null
  br i1 %.not.i2.i.i148.i.i.i.i, label %.loopexit.i.i166.i.i.i.i, label %bb.by

bb.by:                                            ; preds = %_RNvXs4_NtNtCsbjuPLKRsGdD_5wasmi4func9into_funcNvNtNtCsdaEETE4DqmE_13typst_library11foundations7plugin_42wasm_minimal_protocol_write_args_to_bufferINtB5_8IntoFuncNtBK_8CallDataTINtNtB7_6caller6CallerB2z_EmEuE9into_funcBO_.exit.i.i.i.i.i
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %.val5.i.i.i149.i.i.i.i = load i64, ptr %i.ku, align 8, !alias.scope !184897, !noalias !184898
  br label %.split.i.preheader.i.i.i.i150.i.i.i.i

.split.i.preheader.i.i.i.i150.i.i.i.i:            ; preds = %bb.bz, %bb.by
  %.sroa.3.0.i.i.i.i151.i.i.i.i = phi i64 [ %i.lw, %bb.bz ], [ %.val5.i.i.i149.i.i.i.i, %bb.by ] ; 2 uses
  %.sroa.0.0.i.i.i.i152.i.i.i.i = phi ptr [ %i.lv, %bb.bz ], [ %.val4.i.i.i147.i.i.i.i, %bb.by ] ; 5 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i152.i.i.i.i, i64 230
  %i.kw = load i16, ptr %i.kv, align 2, !noalias !184901, !noundef !12 ; 2 uses
  %i.kx = zext i16 %i.kw to i64                   ; 3 uses
  %.idx = shl nuw nsw i64 %i.kx, 4
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i152.i.i.i.i, i64 %.idx
  %i.kz = icmp eq i16 %i.kw, 0
  br i1 %i.kz, label %.loopexit56.i.i.i.i164.i.i.i.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCsdaEETE4DqmE_13typst_library.exit.i.i.i.i.i156.i.i.i.i

.split.i.i.i.i.i153.i.i.i.i:                      ; preds = %_RNvXs6_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i.i.i158.i.i.i.i
  %i.la = icmp eq ptr %i.lb, %i.ky
  br i1 %i.la, label %.loopexit56.i.i.i.i164.i.i.i.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCsdaEETE4DqmE_13typst_library.exit.i.i.i.i.i156.i.i.i.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCsdaEETE4DqmE_13typst_library.exit.i.i.i.i.i156.i.i.i.i: ; preds = %.split.i.preheader.i.i.i.i150.i.i.i.i, %.split.i.i.i.i.i153.i.i.i.i
  %.sroa.0.01.i.i.i.i.i155.i.i.i.i252 = phi ptr [ %i.lb, %.split.i.i.i.i.i153.i.i.i.i ], [ %.sroa.0.0.i.i.i.i152.i.i.i.i, %.split.i.preheader.i.i.i.i150.i.i.i.i ] ; 3 uses
  %.sroa.8.0.i.i.i.i.i154.i.i.i.i251 = phi i64 [ %i.lc, %.split.i.i.i.i.i153.i.i.i.i ], [ 0, %.split.i.preheader.i.i.i.i150.i.i.i.i ] ; 4 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i155.i.i.i.i252, i64 16 ; 2 uses
  %i.lc = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i154.i.i.i.i251, 1
  %i.ld = getelementptr i8, ptr %.sroa.0.01.i.i.i.i.i155.i.i.i.i252, i64 8
  %.val6.i.i.i.i.i157.i.i.i.i = load i64, ptr %i.ld, align 8, !noalias !184901, !noundef !12 ; 2 uses
  %i.le = call i8 @llvm.ucmp.i8.i64(i64 9, i64 %.val6.i.i.i.i.i157.i.i.i.i)
  %i.lf = icmp eq i64 %.val6.i.i.i.i.i157.i.i.i.i, 9
  br i1 %i.lf, label %loadbb, label %_RNvXs6_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i.i.i158.i.i.i.i

loadbb:                                           ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCsdaEETE4DqmE_13typst_library.exit.i.i.i.i.i156.i.i.i.i
  %.val.i.i.i.i.i168.i.i.i.i = load ptr, ptr %.sroa.0.01.i.i.i.i.i155.i.i.i.i252, align 8, !noalias !184901, !nonnull !12, !noundef !12
  %i.lg = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i168.i.i.i.i, i64 16 ; 2 uses
  %i.lh = load i64, ptr %i.lg, align 1
  %i.li = call i64 @llvm.bswap.i64(i64 %i.lh)     ; 2 uses
  %i.lj = icmp eq i64 8392863021757588846, %i.li
  br i1 %i.lj, label %loadbb464, label %res_block

res_block:                                        ; preds = %loadbb
  %i.lk = icmp ult i64 8392863021757588846, %i.li
  %i.ll = select i1 %i.lk, i32 -1, i32 1
  br label %endblock

loadbb464:                                        ; preds = %loadbb
  %i.lm = getelementptr i8, ptr %i.lg, i64 8
  %i.ln = load i8, ptr %i.lm, align 1
  %i.lo = zext i8 %i.ln to i32
  %i.lp = sub i32 118, %i.lo
  br label %endblock

endblock:                                         ; preds = %res_block, %loadbb464
  %phi.res = phi i32 [ %i.lp, %loadbb464 ], [ %i.ll, %res_block ]
  %3 = sext i32 %phi.res to i64
  %i.lq = call i8 @llvm.scmp.i8.i64(i64 %3, i64 0)
  br label %_RNvXs6_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i.i.i158.i.i.i.i

_RNvXs6_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i.i.i158.i.i.i.i: ; preds = %endblock, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCsdaEETE4DqmE_13typst_library.exit.i.i.i.i.i156.i.i.i.i
  %.sroa.0.0.i7.i.i.i.i.i159.i.i.i.i = phi i8 [ %i.lq, %endblock ], [ %i.le, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCsdaEETE4DqmE_13typst_library.exit.i.i.i.i.i156.i.i.i.i ]
  switch i8 %.sroa.0.0.i7.i.i.i.i.i159.i.i.i.i, label %.split17.us.i.i.i.i.i167.i.i.i.i [
    i8 -1, label %.loopexit56.i.i.i.i164.i.i.i.i
    i8 0, label %bb.ca
    i8 1, label %.split.i.i.i.i.i153.i.i.i.i
  ]

.split17.us.i.i.i.i.i167.i.i.i.i:                 ; preds = %_RNvXs6_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i.i.i158.i.i.i.i
  unreachable

.loopexit56.i.i.i.i164.i.i.i.i:                   ; preds = %.split.i.i.i.i.i153.i.i.i.i, %_RNvXs6_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i.i.i158.i.i.i.i, %.split.i.preheader.i.i.i.i150.i.i.i.i
  %.sroa.4.0.i.ph.ph57.i.i.i.i165.i.i.i.i = phi i64 [ %i.kx, %.split.i.preheader.i.i.i.i150.i.i.i.i ], [ %i.kx, %.split.i.i.i.i.i153.i.i.i.i ], [ %.sroa.8.0.i.i.i.i.i154.i.i.i.i251, %_RNvXs6_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i.i.i158.i.i.i.i ] ; 2 uses
  %i.lr = icmp eq i64 %.sroa.3.0.i.i.i.i151.i.i.i.i, 0
  br i1 %i.lr, label %.loopexit.i.i166.i.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %.loopexit56.i.i.i.i164.i.i.i.i
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i152.i.i.i.i, i64 232
  %i.lt = icmp samesign ult i64 %.sroa.4.0.i.ph.ph57.i.i.i.i165.i.i.i.i, 12
  call void @llvm.assume(i1 %i.lt), !noalias !184894
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %.sroa.4.0.i.ph.ph57.i.i.i.i165.i.i.i.i
  %i.lv = load ptr, ptr %i.lu, align 8, !noalias !184909, !nonnull !12, !noundef !12
  %i.lw = add i64 %.sroa.3.0.i.i.i.i151.i.i.i.i, -1
  br label %.split.i.preheader.i.i.i.i150.i.i.i.i

bb.ca:                                            ; preds = %_RNvXs6_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i.i.i158.i.i.i.i
  %i.lx = icmp samesign ult i64 %.sroa.8.0.i.i.i.i.i154.i.i.i.i251, 11
  call void @llvm.assume(i1 %i.lx), !noalias !184894
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i152.i.i.i.i, i64 184
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %.sroa.8.0.i.i.i.i.i154.i.i.i.i251
  %i.ma = load i32, ptr %i.lz, align 4, !noalias !184910, !noundef !12
  br label %_RINvXNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB3_14StringInternerNtB5_19GetOrInternWithHint23get_or_intern_with_hintReECsdaEETE4DqmE_13typst_library.exit.i.i160.i.i.i.i

.loopexit.i.i166.i.i.i.i:                         ; preds = %.loopexit56.i.i.i.i164.i.i.i.i, %_RNvXs4_NtNtCsbjuPLKRsGdD_5wasmi4func9into_funcNvNtNtCsdaEETE4DqmE_13typst_library11foundations7plugin_42wasm_minimal_protocol_write_args_to_bufferINtB5_8IntoFuncNtBK_8CallDataTINtNtB7_6caller6CallerB2z_EmEuE9into_funcBO_.exit.i.i.i.i.i
  %i.mb = invoke fastcc noundef i32 @_RINvMs_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB5_14StringInterner6internReECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5396, i64 noundef 9)
          to label %_RINvXNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB3_14StringInternerNtB5_19GetOrInternWithHint23get_or_intern_with_hintReECsdaEETE4DqmE_13typst_library.exit.i.i160.i.i.i.i unwind label %bb.cc, !noalias !184911

_RINvXNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB3_14StringInternerNtB5_19GetOrInternWithHint23get_or_intern_with_hintReECsdaEETE4DqmE_13typst_library.exit.i.i160.i.i.i.i: ; preds = %.loopexit.i.i166.i.i.i.i, %bb.ca
  %.sroa.0.1.i.i.i161.i.i.i.i = phi i32 [ %i.ma, %bb.ca ], [ %i.mb, %.loopexit.i.i166.i.i.i.i ]
  %i.mc = invoke noundef i32 @_RNvMs_NtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB4_14StringInterner22get_or_intern_hint_new(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5399, i64 noundef range(i64 9, 43) 42)
          to label %bb.cb unwind label %bb.cc, !noalias !184911

bb.cb:                                            ; preds = %_RINvXNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB3_14StringInternerNtB5_19GetOrInternWithHint23get_or_intern_with_hintReECsdaEETE4DqmE_13typst_library.exit.i.i160.i.i.i.i
  %i.md = zext i32 %.sroa.0.1.i.i.i161.i.i.i.i to i64
  %i.me = shl nuw i64 %i.md, 32
  %i.mf = zext i32 %i.mc to i64
  %i.mg = or disjoint i64 %i.me, %i.mf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !184886
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !184886
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false), !noalias !184886
  invoke fastcc void @_RNvMsa_NtCsbjuPLKRsGdD_5wasmi6linkerINtB5_11LinkerInnerNtNtNtCsdaEETE4DqmE_13typst_library11foundations7plugin_8CallDataE6insertBX_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(112) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ae, i64 noundef %i.mg, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.n)
          to label %.noexc171.i.i.i.i unwind label %.thread246.i.i.i.i, !noalias !184802

.noexc171.i.i.i.i:                                ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !184886
  %i.mh = load i8, ptr %i.o, align 8, !range !79052, !noalias !184886, !noundef !12 ; 2 uses
  %.not.i163.i.i.i.i = icmp eq i8 %i.mh, -1
  br i1 %.not.i163.i.i.i.i, label %bb.ci, label %bb.ce

bb.cc:                                            ; preds = %_RINvXNtNtCsesggpGz7Dc2_17wasmi_collections15string_interner6detailNtB3_14StringInternerNtB5_19GetOrInternWithHint23get_or_intern_with_hintReECsdaEETE4DqmE_13typst_library.exit.i.i160.i.i.i.i, %.loopexit.i.i166.i.i.i.i
  %lpad.thr_comm.i162.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbjuPLKRsGdD_5wasmi4func24HostFuncTrampolineEntityNtNtNtCsdaEETE4DqmE_13typst_library11foundations7plugin_8CallDataEEB1B_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.p) #101
          to label %.thread236.i.i.i.i unwind label %bb.cd, !noalias !184911

bb.cd:                                            ; preds = %bb.cc
  %i.mi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #102, !noalias !184911
  unreachable

bb.ce:                                            ; preds = %.noexc171.i.i.i.i
  %.sroa.6207.0..sroa_idx208.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %.sroa.6207.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !184912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6207.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6207.0..sroa_idx208.i.i.i.i, i64 7, i1 false), !noalias !184800
  %.sroa.6209.0..sroa_idx210.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.6209.0.copyload211.i.i.i.i = load ptr, ptr %.sroa.6209.0..sroa_idx210.i.i.i.i, align 8, !noalias !184916
  %.sroa.8212.0..sroa_idx213.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.8212.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8212.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8212.0..sroa_idx213.i.i.i.i, i64 96, i1 false), !noalias !184800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !184886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !184886
  store i8 %i.mh, ptr %i.x, align 8, !noalias !184917
  %.sroa.6209.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.sroa.6209.0.copyload211.i.i.i.i, ptr %.sroa.6209.0..sroa_idx.i.i.i.i, align 8, !noalias !184917
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4137, i64 noundef 43, ptr noundef nonnull %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4154, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5400) #99
          to label %bb.cg unwind label %bb.cf, !noalias !184918

bb.cf:                                            ; preds = %bb.ce
  %i.mj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbjuPLKRsGdD_5wasmi6linker11LinkerErrorECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.x) #101
          to label %.thread236.i.i.i.i unwind label %bb.ch, !noalias !184918

bb.cg:                                            ; preds = %bb.ce
  unreachable

bb.ch:                                            ; preds = %bb.cf
  %i.mk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #102, !noalias !184918
  unreachable

bb.ci:                                            ; preds = %.noexc171.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !184886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !184886
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !184800
  %i.ml = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !184800
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ml, ptr noundef nonnull align 8 dereferenceable(88) %i.ae, i64 88, i1 false), !noalias !184800
  store i64 1, ptr %i.y, align 8, !noalias !184800
  %i.mm = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 1, ptr %i.mm, align 8, !noalias !184800
  %.sroa.423.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  store ptr %i.cb, ptr %.sroa.423.0..sroa_idx.i.i.i.i, align 8, !noalias !184800
  %.sroa.524.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 112
  store ptr %i.cc, ptr %.sroa.524.0..sroa_idx.i.i.i.i, align 8, !noalias !184800
  %.sroa.625.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  store ptr %i.jh, ptr %.sroa.625.0..sroa_idx.i.i.i.i, align 8, !noalias !184800
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #96, !noalias !184919
  %i.mn = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #96, !noalias !184919 ; 9 uses
  %i.mo = icmp eq ptr %i.mn, null
  br i1 %i.mo, label %bb.cj, label %bb.cm, !prof !225

bb.cj:                                            ; preds = %bb.ci
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #99
          to label %.noexc175.i.i.i.i unwind label %bb.ck, !noalias !184802

.noexc175.i.i.i.i:                                ; preds = %bb.cj
  unreachable

bb.ck:                                            ; preds = %bb.cj
  %i.mp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7plugin_10PluginBaseEBH_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.ml)
          to label %.body131.i.i.i.i unwind label %bb.cl, !noalias !184802

bb.cl:                                            ; preds = %bb.ck
  %i.mq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #102, !noalias !184802
  unreachable

bb.cm:                                            ; preds = %bb.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.mn, ptr noundef nonnull align 8 dereferenceable(128) %i.y, i64 128, i1 false), !noalias !184802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !184800
  store ptr %i.mn, ptr %i.ad, align 8, !noalias !184800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !184800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !184800
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  invoke fastcc void @_RNvMs3_NtNtCsdaEETE4DqmE_13typst_library11foundations7plugin_NtB5_14PluginInstance3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(352) %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.mr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null)
          to label %bb.cn unwind label %bb.cz, !noalias !184802

bb.cn:                                            ; preds = %bb.cm
  %i.ms = load i64, ptr %i.ab, align 8, !range !4638, !noalias !184800, !noundef !12 ; 2 uses
  %i.mt = icmp eq i64 %i.ms, -1
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.628.i.sroa.0.0.copyload10.i.i.i = load ptr, ptr %i.mu, align 8, !noalias !184800 ; 2 uses
  %.sroa.628.i.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.628.i.sroa.7.0.copyload12.i.i.i = load i64, ptr %.sroa.628.i.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !184800 ; 2 uses
  br i1 %i.mt, label %bb.co, label %bb.cq

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !184800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !184800
  %i.mv = atomicrmw sub ptr %i.mn, i64 1 release, align 8, !noalias !184922
  %i.mw = icmp eq i64 %i.mv, 1
  br i1 %i.mw, label %bb.cp, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations7plugin_10PluginBaseEEB1f_.exit.i.i.i.i

bb.cp:                                            ; preds = %bb.co
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations7plugin_10PluginBaseE9drop_slowBM_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.ad) #105
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations7plugin_10PluginBaseEEB1f_.exit.i.i.i.i unwind label %bb.bs, !noalias !184802

bb.cq:                                            ; preds = %bb.cn
  %.sroa.594.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.534.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %.sroa.534.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(328) %.sroa.594.0..sroa_idx.i.i.i.i, i64 328, i1 false), !noalias !184800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !184800
  %.sroa.433.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %.sroa.628.i.sroa.0.0.copyload10.i.i.i, ptr %.sroa.433.0..sroa_idx.i.i.i.i, align 8, !noalias !184800
  %.sroa.628.i.sroa.7.0..sroa.433.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %.sroa.628.i.sroa.7.0.copyload12.i.i.i, ptr %.sroa.628.i.sroa.7.0..sroa.433.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !184800
  store i64 %i.ms, ptr %i.ac, align 8, !noalias !184800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !184800
  store ptr %i.mn, ptr %i.aa, align 8, !noalias !184800
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #96, !noalias !184802
  %i.mx = call noundef align 8 dereferenceable_or_null(352) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 352, i64 noundef range(i64 1, -9223372036854775807) 8) #96, !noalias !184802 ; 3 uses
  %i.my = icmp eq ptr %i.mx, null
  br i1 %i.my, label %bb.cr, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit179.i.i.i.i, !prof !225

bb.cr:                                            ; preds = %bb.cq
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 352) #99
          to label %.noexc178.i.i.i.i unwind label %bb.cw, !noalias !184802

.noexc178.i.i.i.i:                                ; preds = %bb.cr
  unreachable
end_hunk_2
