Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_core-ad80a04fff11224b.polars_core.149bbfd31402d64a-cgu.09?download=true
inline.NumInlined: 13762
inline.NumDeleted: 6781
loop-unroll.NumCompletelyUnrolled: 155
loop-unroll.NumRuntimeUnrolled: 281
loop-unroll.NumUnrolled: 436
begin_hunk_0_@_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E7__insertCs1LHh8CLbVkQ_11polars_core:bb.a

bb.f:                                             ; preds = %bb.c, %bb.e
  %.sroa.01.0 = phi ptr [ %i.x, %bb.e ], [ %i.r, %bb.c ], !dbg !186376
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 24, !dbg !186377
  %i.z = load i32, ptr %i.y, align 8, !dbg !186377, !noundef !7550
  %.not = icmp eq i32 %i.z, 0, !dbg !186307
  br i1 %.not, label %bb.h, label %bb.g, !dbg !186307

bb.g:                                             ; preds = %bb.f
  %i.aa = call noundef i8 %i.q(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.d, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %.sroa.01.0), !dbg !186369
  switch i8 %i.aa, label %bb.i [
    i8 -1, label %bb.j
    i8 0, label %bb.k
    i8 1, label %bb.o
  ], !dbg !186378

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #47, !dbg !186307
  unreachable

bb.i:                                             ; preds = %bb.g
  unreachable, !dbg !186369

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !186379
  %i.ab = load i32, ptr %i.o, align 8, !dbg !186380, !range !8725, !noundef !7550
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 4, !dbg !186380
  %i.ad = load i32, ptr %i.ac, align 4, !dbg !186380, !noundef !7550
  call fastcc void @_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E7__insertCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 4 captures(none) dereferenceable(12) %i.c, ptr noalias noundef align 8 dereferenceable(48) %1, i16 noundef %2, i32 noundef %i.ab, i32 noundef %i.ad), !dbg !186381
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !186382
  %i.af = load i8, ptr %i.ae, align 8, !dbg !186382, !range !7871, !noundef !7550 ; 2 uses
  %i.ag = zext nneg i8 %i.af to i32, !dbg !186382
  %i.ah = load <2 x i32>, ptr %i.c, align 8, !dbg !186383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !186384
  %i.ai = load ptr, ptr %i.i, align 8, !dbg !186385, !nonnull !7550, !noundef !7550
  %i.aj = getelementptr inbounds nuw [48 x i8], ptr %i.ai, i64 %i.m, !dbg !186386 ; 3 uses
  store <2 x i32> %i.ah, ptr %i.aj, align 8, !dbg !186387
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32, !dbg !186388 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !dbg !186388, !noundef !7550
  %i.am = add i32 %i.al, %i.ag, !dbg !186388
  store i32 %i.am, ptr %i.ak, align 8, !dbg !186388
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 36, !dbg !186389 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !dbg !186389, !noundef !7550
  %i.ap = add i32 %i.ao, 1, !dbg !186389
  store i32 %i.ap, ptr %i.an, align 4, !dbg !186389
  %i.aq = call fastcc { i32, i32 } @_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E9balance_rCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(48) %1, i32 noundef %3, i32 noundef %4), !dbg !186390 ; 2 uses
  %i.ar = extractvalue { i32, i32 } %i.aq, 0, !dbg !186391
  %i.as = extractvalue { i32, i32 } %i.aq, 1, !dbg !186391
  br label %bb.d, !dbg !186392

bb.k:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %i.i, align 8, !dbg !186393, !nonnull !7550, !noundef !7550
  %i.au = getelementptr inbounds nuw [48 x i8], ptr %i.at, i64 %i.m, !dbg !186394 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16, !dbg !186395 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 24, !dbg !186396 ; 4 uses
  %i.ax = load i32, ptr %i.aw, align 8, !dbg !186396, !alias.scope !186339, !noundef !7550
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 28, !dbg !186397 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !dbg !186397, !range !8725, !alias.scope !186339, !noundef !7550 ; 2 uses
  %i.ba = icmp eq i32 %i.ax, %i.az, !dbg !186396
  br i1 %i.ba, label %bb.l, label %bb.m, !dbg !186396, !prof !7682

bb.l:                                             ; preds = %bb.k
  call void @_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_7float164pf16E7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.av, i64 noundef 1), !dbg !186398
  %.pr = load i32, ptr %i.ay, align 4, !dbg !186399, !alias.scope !186339
  br label %bb.m, !dbg !186398

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bb = phi i32 [ %.pr, %bb.l ], [ %i.az, %bb.k ], !dbg !186399
  %i.bc = icmp eq i32 %i.bb, 1, !dbg !186400
  br i1 %i.bc, label %_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_7float164pf16E4pushCs1LHh8CLbVkQ_11polars_core.exit, label %bb.n, !dbg !186400

bb.n:                                             ; preds = %bb.m
  %i.bd = load ptr, ptr %i.av, align 8, !dbg !186401, !alias.scope !186339, !noundef !7550
  br label %_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_7float164pf16E4pushCs1LHh8CLbVkQ_11polars_core.exit, !dbg !186402

_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_7float164pf16E4pushCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.m, %bb.n
  %.sroa.0.0.i = phi ptr [ %i.bd, %bb.n ], [ %i.av, %bb.m ], !dbg !186403
  %i.be = load i32, ptr %i.aw, align 8, !dbg !186404, !alias.scope !186339, !noundef !7550
  %i.bf = zext i32 %i.be to i64, !dbg !186404
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.i, i64 %i.bf, !dbg !186405
  store i16 %2, ptr %i.bg, align 2, !dbg !186406
  %i.bh = load i32, ptr %i.aw, align 8, !dbg !186407, !alias.scope !186339, !noundef !7550
  %i.bi = add i32 %i.bh, 1, !dbg !186407
  store i32 %i.bi, ptr %i.aw, align 8, !dbg !186407, !alias.scope !186339
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 36, !dbg !186408 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !dbg !186408, !noundef !7550
  %i.bl = add i32 %i.bk, 1, !dbg !186408
  store i32 %i.bl, ptr %i.bj, align 4, !dbg !186408
  br label %bb.d, !dbg !186409

bb.o:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !186410
  %i.bm = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !186411
  %i.bn = load i32, ptr %i.bm, align 8, !dbg !186411, !range !8725, !noundef !7550
  %i.bo = getelementptr inbounds nuw i8, ptr %i.o, i64 12, !dbg !186411
  %i.bp = load i32, ptr %i.bo, align 4, !dbg !186411, !noundef !7550
  call fastcc void @_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E7__insertCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 4 captures(none) dereferenceable(12) %i.b, ptr noalias noundef align 8 dereferenceable(48) %1, i16 noundef %2, i32 noundef %i.bn, i32 noundef %i.bp), !dbg !186412
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !186413
  %i.br = load i8, ptr %i.bq, align 8, !dbg !186413, !range !7871, !noundef !7550 ; 2 uses
  %i.bs = zext nneg i8 %i.br to i32, !dbg !186413
  %i.bt = load <2 x i32>, ptr %i.b, align 8, !dbg !186414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !186415
  %i.bu = load ptr, ptr %i.i, align 8, !dbg !186416, !nonnull !7550, !noundef !7550
  %i.bv = getelementptr inbounds nuw [48 x i8], ptr %i.bu, i64 %i.m, !dbg !186417 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8, !dbg !186418
  store <2 x i32> %i.bt, ptr %i.bw, align 8, !dbg !186418
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 32, !dbg !186419 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !dbg !186419, !noundef !7550
  %i.bz = add i32 %i.by, %i.bs, !dbg !186419
  store i32 %i.bz, ptr %i.bx, align 8, !dbg !186419
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 36, !dbg !186420 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !dbg !186420, !noundef !7550
  %i.cc = add i32 %i.cb, 1, !dbg !186420
  store i32 %i.cc, ptr %i.ca, align 4, !dbg !186420
  %i.cd = call fastcc { i32, i32 } @_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E9balance_lCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(48) %1, i32 noundef %3, i32 noundef %4), !dbg !186421 ; 2 uses
  %i.ce = extractvalue { i32, i32 } %i.cd, 0, !dbg !186422
  %i.cf = extractvalue { i32, i32 } %i.cd, 1, !dbg !186422
  br label %bb.d, !dbg !186423
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E7__removeCs1LHh8CLbVkQ_11polars_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 4 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !186424 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 10 uses
  %i.b = alloca [40 x i8], align 8                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 10 uses
  %i.g = alloca [16 x i8], align 4                ; 7 uses
  %i.h = alloca [16 x i8], align 4                ; 7 uses
  %i.i = icmp eq i32 %4, -1, !dbg !186638
  br i1 %i.i, label %bb.b, label %bb.c, !dbg !186638

bb.b:                                             ; preds = %bb.a
  store i16 0, ptr %0, align 4, !dbg !186639
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !186639
  store i32 %3, ptr %i.j, align 4, !dbg !186639
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !186639
  store i32 -1, ptr %i.k, align 4, !dbg !186639
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !186639
  store i8 0, ptr %i.l, align 4, !dbg !186639
  br label %bb.d, !dbg !186640

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !186641 ; 7 uses
  %i.n = load ptr, ptr %i.m, align 8, !dbg !186641, !nonnull !7550, !noundef !7550
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !186642 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8, !dbg !186642, !noundef !7550
  %i.q = zext i32 %4 to i64, !dbg !186643         ; 5 uses
  %i.r = icmp ugt i64 %i.p, %i.q, !dbg !186644
  tail call void @llvm.assume(i1 %i.r), !dbg !186645
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %i.q, !dbg !186646 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !186647
  %i.u = load ptr, ptr %i.t, align 8, !dbg !186647, !nonnull !7550, !noundef !7550
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !186648 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 28, !dbg !186648
  %i.x = load i32, ptr %i.w, align 4, !dbg !186648, !range !8725, !noundef !7550
  %i.y = icmp eq i32 %i.x, 1, !dbg !186649
  br i1 %i.y, label %bb.f, label %bb.e, !dbg !186649

bb.d:                                             ; preds = %bb.j, %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E4glueCs1LHh8CLbVkQ_11polars_core.exit, %bb.ad, %bb.l, %bb.b
  ret void, !dbg !186640

bb.e:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.v, align 8, !dbg !186650, !noundef !7550
  br label %bb.f, !dbg !186651

bb.f:                                             ; preds = %bb.c, %bb.e
  %.sroa.05.0 = phi ptr [ %i.z, %bb.e ], [ %i.v, %bb.c ], !dbg !186652
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 24, !dbg !186653 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !dbg !186653, !noundef !7550
  %.not = icmp eq i32 %i.ab, 0, !dbg !186554
  br i1 %.not, label %bb.h, label %bb.g, !dbg !186554

bb.g:                                             ; preds = %bb.f
  %i.ac = tail call noundef i8 %i.u(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %2, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %.sroa.05.0), !dbg !186647
  switch i8 %i.ac, label %bb.i [
    i8 -1, label %bb.j
    i8 0, label %bb.k
    i8 1, label %bb.l
  ], !dbg !186654

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #50, !dbg !186554
  unreachable, !dbg !186554

bb.i:                                             ; preds = %bb.g
  unreachable, !dbg !186655

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !186656
  %i.ad = load i32, ptr %i.s, align 8, !dbg !186657, !range !8725, !noundef !7550
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 4, !dbg !186657
  %i.af = load i32, ptr %i.ae, align 4, !dbg !186657, !noundef !7550
  call fastcc void @_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E7__removeCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 4 captures(none) dereferenceable(16) %i.h, ptr noalias noundef align 8 dereferenceable(48) %1, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %2, i32 noundef %i.ad, i32 noundef %i.af), !dbg !186658
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 4, !dbg !186659
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 12, !dbg !186660
  %i.ai = load i8, ptr %i.ah, align 4, !dbg !186660, !range !7871, !noundef !7550 ; 2 uses
  %i.aj = zext nneg i8 %i.ai to i32, !dbg !186660
  %i.ak = load <2 x i16>, ptr %i.h, align 4, !dbg !186661
  %i.al = load i16, ptr %i.h, align 4, !dbg !186661, !range !8056, !noundef !7550
  %5 = load <2 x i32>, ptr %i.ag, align 4, !dbg !186659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !186662
  %i.am = load ptr, ptr %i.m, align 8, !dbg !186663, !nonnull !7550, !noundef !7550
  %i.an = getelementptr inbounds nuw [48 x i8], ptr %i.am, i64 %i.q, !dbg !186664 ; 3 uses
  store <2 x i32> %5, ptr %i.an, align 8, !dbg !186665
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32, !dbg !186666 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !dbg !186666, !noundef !7550
  %i.aq = sub i32 %i.ap, %i.aj, !dbg !186666
  store i32 %i.aq, ptr %i.ao, align 8, !dbg !186666
  %i.ar = zext nneg i16 %i.al to i32, !dbg !186667
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 36, !dbg !186668 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !dbg !186668, !noundef !7550
  %i.au = sub i32 %i.at, %i.ar, !dbg !186668
  store i32 %i.au, ptr %i.as, align 4, !dbg !186668
  %i.av = tail call fastcc { i32, i32 } @_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E9balance_lCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(48) %1, i32 noundef %3, i32 noundef %4), !dbg !186669 ; 2 uses
  %i.aw = extractvalue { i32, i32 } %i.av, 0, !dbg !186670
  %i.ax = extractvalue { i32, i32 } %i.av, 1, !dbg !186670
  store <2 x i16> %i.ak, ptr %0, align 4, !dbg !186671
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !186671
  store i32 %i.aw, ptr %i.ay, align 4, !dbg !186671
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !186671
  store i32 %i.ax, ptr %i.az, align 4, !dbg !186671
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !186671
  store i8 %i.ai, ptr %i.ba, align 4, !dbg !186671
  br label %bb.d, !dbg !186672

bb.k:                                             ; preds = %bb.g
  %i.bb = load i32, ptr %i.aa, align 8, !dbg !186673, !noundef !7550
  %i.bc = icmp ugt i32 %i.bb, 1, !dbg !186674
  br i1 %i.bc, label %bb.o, label %bb.n, !dbg !186674

bb.l:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !186675
  %i.bd = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !186676
  %i.be = load i32, ptr %i.bd, align 8, !dbg !186676, !range !8725, !noundef !7550
  %i.bf = getelementptr inbounds nuw i8, ptr %i.s, i64 12, !dbg !186676
  %i.bg = load i32, ptr %i.bf, align 4, !dbg !186676, !noundef !7550
  call fastcc void @_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E7__removeCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 4 captures(none) dereferenceable(16) %i.g, ptr noalias noundef align 8 dereferenceable(48) %1, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %2, i32 noundef %i.be, i32 noundef %i.bg), !dbg !186677
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 4, !dbg !186678
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 12, !dbg !186679
  %i.bj = load i8, ptr %i.bi, align 4, !dbg !186679, !range !7871, !noundef !7550 ; 2 uses
  %i.bk = zext nneg i8 %i.bj to i32, !dbg !186679
  %i.bl = load <2 x i16>, ptr %i.g, align 4, !dbg !186680
  %i.bm = load i16, ptr %i.g, align 4, !dbg !186680, !range !8056, !noundef !7550
  %6 = load <2 x i32>, ptr %i.bh, align 4, !dbg !186678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !186681
  %i.bn = load ptr, ptr %i.m, align 8, !dbg !186682, !nonnull !7550, !noundef !7550
  %i.bo = getelementptr inbounds nuw [48 x i8], ptr %i.bn, i64 %i.q, !dbg !186683 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8, !dbg !186684
  store <2 x i32> %6, ptr %i.bp, align 8, !dbg !186684
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 32, !dbg !186685 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !dbg !186685, !noundef !7550
  %i.bs = sub i32 %i.br, %i.bk, !dbg !186685
  store i32 %i.bs, ptr %i.bq, align 8, !dbg !186685
  %i.bt = zext nneg i16 %i.bm to i32, !dbg !186686
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 36, !dbg !186687 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !dbg !186687, !noundef !7550
  %i.bw = sub i32 %i.bv, %i.bt, !dbg !186687
  store i32 %i.bw, ptr %i.bu, align 4, !dbg !186687
  %i.bx = tail call fastcc { i32, i32 } @_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E9balance_rCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(48) %1, i32 noundef %3, i32 noundef %4), !dbg !186688 ; 2 uses
  %i.by = extractvalue { i32, i32 } %i.bx, 0, !dbg !186689
  %i.bz = extractvalue { i32, i32 } %i.bx, 1, !dbg !186689
  store <2 x i16> %i.bl, ptr %0, align 4, !dbg !186690
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !186690
  store i32 %i.by, ptr %i.ca, align 4, !dbg !186690
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !186690
  store i32 %i.bz, ptr %i.cb, align 4, !dbg !186690
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !186690
  store i8 %i.bj, ptr %i.cc, align 4, !dbg !186690
  br label %bb.d, !dbg !186691

bb.m:                                             ; preds = %bb.aa
  resume { ptr, i32 } %i.gc, !dbg !186692

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !186693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !186694
  call void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodeNtNtBR_7float164pf16EE6removeCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %3, i32 noundef %4), !dbg !186695
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !dbg !186696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !186697
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !186698 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !186698 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 8, !dbg !186698, !noundef !7550 ; 2 uses
  %i.cg = icmp ne i32 %i.cf, 0, !dbg !186698      ; 2 uses
  br i1 %i.cg, label %bb.p, label %bb.q, !dbg !186698

bb.o:                                             ; preds = %bb.k
  %i.ch = load ptr, ptr %i.m, align 8, !dbg !186699, !nonnull !7550, !noundef !7550
  %i.ci = getelementptr inbounds nuw [48 x i8], ptr %i.ch, i64 %i.q, !dbg !186700 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16, !dbg !186701 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 24, !dbg !186701 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !dbg !186701, !noundef !7550 ; 2 uses
  %i.cm = icmp ne i32 %i.cl, 0, !dbg !186701      ; 2 uses
  br i1 %i.cm, label %bb.ac, label %bb.ad, !dbg !186701

bb.p:                                             ; preds = %bb.n
  %i.cn = add i32 %i.cf, -1, !dbg !186702         ; 2 uses
  store i32 %i.cn, ptr %i.ce, align 8, !dbg !186702
  %i.co = getelementptr inbounds nuw i8, ptr %i.f, i64 28, !dbg !186703
  %i.cp = load i32, ptr %i.co, align 4, !dbg !186703, !range !8725, !noundef !7550
  %i.cq = icmp eq i32 %i.cp, 1, !dbg !186704
  %i.cr = load ptr, ptr %i.cd, align 8, !dbg !186704
  %.sroa.07.0 = select i1 %i.cq, ptr %i.cd, ptr %i.cr, !dbg !186704
  %i.cs = zext i32 %i.cn to i64, !dbg !186705
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %.sroa.07.0, i64 %i.cs, !dbg !186706
  %i.cu = load i16, ptr %i.ct, align 2, !dbg !186707, !noundef !7550
  br label %bb.q, !dbg !186708

bb.q:                                             ; preds = %bb.n, %bb.p
  %.sroa.53.0 = phi i16 [ %i.cu, %bb.p ], [ undef, %bb.n ], !dbg !186709
  tail call void @llvm.assume(i1 %i.cg), !dbg !186710
  %i.cv = load i32, ptr %i.f, align 8, !dbg !186711, !range !8725, !noundef !7550 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.f, i64 4, !dbg !186711
  %i.cx = load i32, ptr %i.cw, align 4, !dbg !186711, !noundef !7550 ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !186712
  %i.cz = load i32, ptr %i.cy, align 8, !dbg !186712, !range !8725, !noundef !7550 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.f, i64 12, !dbg !186712
  %i.db = load i32, ptr %i.da, align 4, !dbg !186712, !noundef !7550 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186617), !dbg !186713
  %i.dc = icmp eq i32 %i.cx, -1, !dbg !186714
  br i1 %i.dc, label %bb.r, label %bb.s, !dbg !186714

bb.r:                                             ; preds = %bb.q
  %i.dd = insertvalue { i32, i32 } poison, i32 %i.cz, 0, !dbg !186715
  %i.de = insertvalue { i32, i32 } %i.dd, i32 %i.db, 1, !dbg !186715
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E4glueCs1LHh8CLbVkQ_11polars_core.exit, !dbg !186715

bb.s:                                             ; preds = %bb.q
  %i.df = icmp eq i32 %i.db, -1, !dbg !186716
  br i1 %i.df, label %bb.t, label %bb.u, !dbg !186716

bb.t:                                             ; preds = %bb.s
  %i.dg = insertvalue { i32, i32 } poison, i32 %i.cv, 0, !dbg !186717
  %i.dh = insertvalue { i32, i32 } %i.dg, i32 %i.cx, 1, !dbg !186717
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E4glueCs1LHh8CLbVkQ_11polars_core.exit, !dbg !186717

bb.u:                                             ; preds = %bb.s
  %i.di = load ptr, ptr %i.m, align 8, !dbg !186718, !alias.scope !186617, !nonnull !7550, !noundef !7550 ; 2 uses
  %i.dj = load i64, ptr %i.o, align 8, !dbg !186719, !alias.scope !186617, !noundef !7550 ; 2 uses
  %i.dk = zext i32 %i.cx to i64, !dbg !186720     ; 4 uses
  %i.dl = icmp ugt i64 %i.dj, %i.dk, !dbg !186721
  tail call void @llvm.assume(i1 %i.dl), !dbg !186722
  %i.dm = getelementptr inbounds nuw [48 x i8], ptr %i.di, i64 %i.dk, !dbg !186723
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32, !dbg !186724
  %i.do = load i32, ptr %i.dn, align 8, !dbg !186724, !noalias !186617, !noundef !7550
  %i.dp = zext i32 %i.db to i64, !dbg !186725     ; 7 uses
  %i.dq = icmp ugt i64 %i.dj, %i.dp, !dbg !186726
  tail call void @llvm.assume(i1 %i.dq), !dbg !186727
  %i.dr = getelementptr inbounds nuw [48 x i8], ptr %i.di, i64 %i.dp, !dbg !186728
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32, !dbg !186729
  %i.dt = load i32, ptr %i.ds, align 8, !dbg !186729, !noalias !186617, !noundef !7550
  %i.du = icmp ugt i32 %i.do, %i.dt, !dbg !186730
  br i1 %i.du, label %bb.x, label %bb.v, !dbg !186730

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !186731, !noalias !186617
  invoke fastcc void @_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E10remove_minCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, i32 noundef range(i32 1, 0) %i.cz, i32 noundef %i.db)
          to label %.noexc unwind label %bb.aa, !dbg !186732

.noexc:                                           ; preds = %bb.v
  %.sroa.021.0.copyload.i = load i64, ptr %i.c, align 8, !dbg !186733, !noalias !186617
  %.sroa.223.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !186733 ; 2 uses
  %i.dv = load <2 x i32>, ptr %.sroa.223.0..sroa_idx.i, align 8, !dbg !186733, !noalias !186617
  %.sroa.223.0.copyload.i = load i32, ptr %.sroa.223.0..sroa_idx.i, align 8, !dbg !186733, !noalias !186617
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !186734
  %i.dx = getelementptr inbounds nuw i8, ptr %i.c, i64 20, !dbg !186734
  %i.dy = load i32, ptr %i.dx, align 4, !dbg !186734, !noalias !186617, !noundef !7550 ; 2 uses
  %i.dz = load <2 x i32>, ptr %i.dw, align 8, !dbg !186734, !noalias !186617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !186735, !noalias !186617
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186621), !dbg !186736
  %i.ea = load ptr, ptr %i.m, align 8, !dbg !186737, !alias.scope !186622, !noalias !186623, !nonnull !7550, !noundef !7550 ; 2 uses
  %i.eb = load i64, ptr %i.o, align 8, !dbg !186738, !alias.scope !186622, !noalias !186623, !noundef !7550 ; 2 uses
  %i.ec = icmp ugt i64 %i.eb, %i.dk, !dbg !186739
  tail call void @llvm.assume(i1 %i.ec), !dbg !186740
  %i.ed = getelementptr inbounds nuw [48 x i8], ptr %i.ea, i64 %i.dk, !dbg !186741 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 32, !dbg !186742
  %i.ef = load i32, ptr %i.ee, align 8, !dbg !186742, !noalias !186624, !noundef !7550 ; 2 uses
  %i.eg = icmp eq i32 %i.dy, -1, !dbg !186743
  br i1 %i.eg, label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E13new_tree_nodeCs1LHh8CLbVkQ_11polars_core.exit.i, label %bb.w, !dbg !186743

bb.w:                                             ; preds = %.noexc
  %i.eh = zext i32 %i.dy to i64, !dbg !186744     ; 2 uses
  %i.ei = icmp ugt i64 %i.eb, %i.eh, !dbg !186745
  tail call void @llvm.assume(i1 %i.ei), !dbg !186746
  %i.ej = getelementptr inbounds nuw [48 x i8], ptr %i.ea, i64 %i.eh, !dbg !186747 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 32, !dbg !186748
  %i.el = load i32, ptr %i.ek, align 8, !dbg !186748, !noalias !186624, !noundef !7550
  %i.em = add i32 %i.el, %i.ef, !dbg !186749
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 36, !dbg !186750
  %i.eo = load i32, ptr %i.en, align 4, !dbg !186750, !noalias !186624, !noundef !7550
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E13new_tree_nodeCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !186751

_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E13new_tree_nodeCs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %bb.w, %.noexc
  %.sroa.014.0.i.i = phi i32 [ %i.eo, %bb.w ], [ 0, %.noexc ], !dbg !186752
  %.sroa.0.2.i.in.i = phi i32 [ %i.em, %bb.w ], [ %i.ef, %.noexc ]
  %.sroa.0.2.i.i = add i32 %.sroa.0.2.i.in.i, 1, !dbg !186749
  %.sroa.013.2.i.in.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 36, !dbg !186753
  %.sroa.013.2.i.i = load i32, ptr %.sroa.013.2.i.in.i, align 4, !dbg !186753, !noalias !186624, !noundef !7550
  %i.ep = add i32 %.sroa.014.0.i.i, %.sroa.223.0.copyload.i, !dbg !186754
  %i.eq = add i32 %i.ep, %.sroa.013.2.i.i, !dbg !186754
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !186755, !noalias !186625
  store i32 %i.cv, ptr %i.b, align 8, !dbg !186755, !noalias !186625
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4, !dbg !186755
  store i32 %i.cx, ptr %.sroa.2.0..sroa_idx.i.i, align 4, !dbg !186755, !noalias !186625
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !186755
  store <2 x i32> %i.dz, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !186755, !noalias !186625
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !186755
  store i64 %.sroa.021.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !186755, !noalias !186622
  %.sroa.223.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !186755
  store <2 x i32> %i.dv, ptr %.sroa.223.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 8, !dbg !186755, !noalias !186622
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !186755
  store i32 %.sroa.0.2.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !dbg !186755, !noalias !186625
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 36, !dbg !186755
  store i32 %i.eq, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !dbg !186755, !noalias !186625
  %i.er = invoke { i32, i32 } @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBQ_4NodeNtNtBS_7float164pf16EE19try_insert_with_keyNCNvB2_6insert0NtNtB8_4util5NeverECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
          to label %.noexc13 unwind label %bb.aa, !dbg !186756 ; 2 uses

.noexc13:                                         ; preds = %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E13new_tree_nodeCs1LHh8CLbVkQ_11polars_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !186757, !noalias !186625
  %i.es = extractvalue { i32, i32 } %i.er, 0, !dbg !186736
  %i.et = extractvalue { i32, i32 } %i.er, 1, !dbg !186736
  %i.eu = invoke fastcc { i32, i32 } @_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E9balance_lCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.es, i32 noundef %i.et)
          to label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E4glueCs1LHh8CLbVkQ_11polars_core.exit unwind label %bb.aa, !dbg !186758

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !186759, !noalias !186617
  invoke fastcc void @_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E10remove_maxCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, i32 noundef range(i32 1, 0) %i.cv, i32 noundef %i.cx)
          to label %.noexc15 unwind label %bb.aa, !dbg !186760

.noexc15:                                         ; preds = %bb.x
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !dbg !186761, !noalias !186617
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !186761 ; 2 uses
  %i.ev = load <2 x i32>, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !186761, !noalias !186617
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !186761, !noalias !186617
  %i.ew = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !186762
  %i.ex = getelementptr inbounds nuw i8, ptr %i.d, i64 20, !dbg !186762
  %i.ey = load i32, ptr %i.ex, align 4, !dbg !186762, !noalias !186617, !noundef !7550 ; 2 uses
  %i.ez = load <2 x i32>, ptr %i.ew, align 8, !dbg !186762, !noalias !186617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !186763, !noalias !186617
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186626), !dbg !186764
  %i.fa = icmp eq i32 %i.ey, -1, !dbg !186765
  %i.fb = load ptr, ptr %i.m, align 8, !dbg !186766, !alias.scope !186627, !noalias !186628, !nonnull !7550, !noundef !7550 ; 4 uses
  %i.fc = load i64, ptr %i.o, align 8, !dbg !186767, !alias.scope !186627, !noalias !186628, !noundef !7550 ; 3 uses
  br i1 %i.fa, label %bb.y, label %bb.z, !dbg !186765

end_hunk_0
