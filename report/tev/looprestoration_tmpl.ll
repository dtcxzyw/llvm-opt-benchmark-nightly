Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/looprestoration_tmpl?download=true
inline.NumInlined: 132
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 28
begin_hunk_0_@wiener_c:bb.a
  %conflict.rdx492 = or i1 %conflict.rdx, %found.conflict491
  %bound0493 = icmp ult ptr %i.ab, %i.fc
  %bound1494 = icmp ult ptr %.16..16..16..pre57.i189, %i.ey
  %found.conflict495 = and i1 %bound0493, %bound1494
  %conflict.rdx496 = or i1 %conflict.rdx492, %found.conflict495
  %bound0497 = icmp ult ptr %i.ab, %i.fd
  %bound1498 = icmp ult ptr %.24..24..24..pre59.i191, %i.ey
  %found.conflict499 = and i1 %bound0497, %bound1498
  %conflict.rdx500 = or i1 %conflict.rdx496, %found.conflict499
  %bound0501 = icmp ult ptr %i.ab, %i.fe
  %bound1502 = icmp ult ptr %.32..32..32..pre61.i193, %i.ey
  %found.conflict503 = and i1 %bound0501, %bound1502
  %conflict.rdx504 = or i1 %conflict.rdx500, %found.conflict503
  %bound0505 = icmp ult ptr %i.ab, %i.ff
  %bound1506 = icmp ult ptr %.40..40..40..pre63.i195, %i.ey
  %found.conflict507 = and i1 %bound0505, %bound1506
  %conflict.rdx508 = or i1 %conflict.rdx504, %found.conflict507
  br i1 %conflict.rdx508, label %.preheader.i196.preheader, label %vector.ph509

vector.ph509:                                     ; preds = %vector.memcheck482
  %n.vec510 = and i64 %wide.trip.count.i184, 2147483640 ; 3 uses
  %i.fg = load i16, ptr %i.l, align 2, !tbaa !13, !alias.scope !105
  %broadcast.splatinsert511 = insertelement <8 x i16> poison, i16 %i.fg, i64 0
  %broadcast.splat512 = shufflevector <8 x i16> %broadcast.splatinsert511, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.fh = sext <8 x i16> %broadcast.splat512 to <8 x i32>
  %i.fi = load i16, ptr %i.eq, align 2, !tbaa !13, !alias.scope !105
  %broadcast.splatinsert513 = insertelement <8 x i16> poison, i16 %i.fi, i64 0
  %broadcast.splat514 = shufflevector <8 x i16> %broadcast.splatinsert513, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.fj = sext <8 x i16> %broadcast.splat514 to <8 x i32>
  %i.fk = load i16, ptr %i.er, align 2, !tbaa !13, !alias.scope !105
  %broadcast.splatinsert515 = insertelement <8 x i16> poison, i16 %i.fk, i64 0
  %broadcast.splat516 = shufflevector <8 x i16> %broadcast.splatinsert515, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.fl = sext <8 x i16> %broadcast.splat516 to <8 x i32>
  %i.fm = load i16, ptr %i.es, align 2, !tbaa !13, !alias.scope !105
  %broadcast.splatinsert517 = insertelement <8 x i16> poison, i16 %i.fm, i64 0
  %broadcast.splat518 = shufflevector <8 x i16> %broadcast.splatinsert517, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.fn = sext <8 x i16> %broadcast.splat518 to <8 x i32>
  %i.fo = load i16, ptr %i.et, align 2, !tbaa !13, !alias.scope !105
  %broadcast.splatinsert519 = insertelement <8 x i16> poison, i16 %i.fo, i64 0
  %broadcast.splat520 = shufflevector <8 x i16> %broadcast.splatinsert519, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.fp = sext <8 x i16> %broadcast.splat520 to <8 x i32>
  %i.fq = load i16, ptr %i.eu, align 2, !tbaa !13, !alias.scope !105
  %broadcast.splatinsert521 = insertelement <8 x i16> poison, i16 %i.fq, i64 0
  %broadcast.splat522 = shufflevector <8 x i16> %broadcast.splatinsert521, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.fr = sext <8 x i16> %broadcast.splat522 to <8 x i32>
  %i.fs = load i16, ptr %i.ep, align 2, !tbaa !13, !alias.scope !105
  %broadcast.splatinsert523 = insertelement <8 x i16> poison, i16 %i.fs, i64 0
  %broadcast.splat524 = shufflevector <8 x i16> %broadcast.splatinsert523, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ft = sext <8 x i16> %broadcast.splat524 to <8 x i32>
  %broadcast.splatinsert525 = insertelement <8 x i32> poison, i32 %i.ev, i64 0
  %broadcast.splat526 = shufflevector <8 x i32> %broadcast.splatinsert525, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert527 = insertelement <8 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat528 = shufflevector <8 x i32> %broadcast.splatinsert527, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert529 = insertelement <8 x i32> poison, i32 %8, i64 0
  %broadcast.splat530 = shufflevector <8 x i32> %broadcast.splatinsert529, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body531

vector.body531:                                   ; preds = %vector.body531, %vector.ph509
  %index532 = phi i64 [ 0, %vector.ph509 ], [ %index.next540, %vector.body531 ] ; 9 uses
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %.0..0..0., i64 %index532
  %wide.load533 = load <8 x i16>, ptr %i.fu, align 2, !tbaa !13, !alias.scope !106
  %i.fv = zext <8 x i16> %wide.load533 to <8 x i32>
  %i.fw = mul nsw <8 x i32> %i.fh, %i.fv
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %.8..8..8..pre55.i187, i64 %index532
  %wide.load534 = load <8 x i16>, ptr %i.fx, align 2, !tbaa !13, !alias.scope !107
  %i.fy = zext <8 x i16> %wide.load534 to <8 x i32>
  %i.fz = mul nsw <8 x i32> %i.fj, %i.fy
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %.16..16..16..pre57.i189, i64 %index532
  %wide.load535 = load <8 x i16>, ptr %i.ga, align 2, !tbaa !13, !alias.scope !108
  %i.gb = zext <8 x i16> %wide.load535 to <8 x i32>
  %i.gc = mul nsw <8 x i32> %i.fl, %i.gb
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %.24..24..24..pre59.i191, i64 %index532
  %wide.load536 = load <8 x i16>, ptr %i.gd, align 2, !tbaa !13, !alias.scope !109
  %i.ge = zext <8 x i16> %wide.load536 to <8 x i32>
  %i.gf = mul nsw <8 x i32> %i.fn, %i.ge
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %.32..32..32..pre61.i193, i64 %index532
  %wide.load537 = load <8 x i16>, ptr %i.gg, align 2, !tbaa !13, !alias.scope !110
  %i.gh = zext <8 x i16> %wide.load537 to <8 x i32>
  %i.gi = mul nsw <8 x i32> %i.fp, %i.gh
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %.40..40..40..pre63.i195, i64 %index532
  %wide.load538 = load <8 x i16>, ptr %i.gj, align 2, !tbaa !13, !alias.scope !111
  %i.gk = zext <8 x i16> %wide.load538 to <8 x i32>
  %i.gl = mul nsw <8 x i32> %i.fr, %i.gk
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index532
  %wide.load539 = load <8 x i16>, ptr %i.gm, align 16, !tbaa !13
  %i.gn = zext <8 x i16> %wide.load539 to <8 x i32>
  %i.go = mul nsw <8 x i32> %i.ft, %i.gn
  %i.gp = add <8 x i32> %broadcast.splat526, %i.fw
  %i.gq = add <8 x i32> %i.gp, %i.fz
  %i.gr = add <8 x i32> %i.gq, %i.gc
  %i.gs = add <8 x i32> %i.gr, %i.gf
  %i.gt = add <8 x i32> %i.gs, %i.gi
  %i.gu = add <8 x i32> %i.gt, %i.gl
  %i.gv = add <8 x i32> %i.gu, %i.go
  %i.gw = ashr <8 x i32> %i.gv, %broadcast.splat528 ; 2 uses
  %i.gx = icmp slt <8 x i32> %i.gw, zeroinitializer
  %i.gy = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.gw, <8 x i32> %broadcast.splat530)
  %i.gz = trunc <8 x i32> %i.gy to <8 x i16>
  %i.ha = select <8 x i1> %i.gx, <8 x i16> zeroinitializer, <8 x i16> %i.gz
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %index532
  store <8 x i16> %i.ha, ptr %i.hb, align 2, !tbaa !13, !alias.scope !112, !noalias !113
  %index.next540 = add nuw i64 %index532, 8       ; 2 uses
  %i.hc = icmp eq i64 %index.next540, %n.vec510
  br i1 %i.hc, label %middle.block541, label %vector.body531, !llvm.loop !34

middle.block541:                                  ; preds = %vector.body531
  %cmp.n542 = icmp eq i64 %n.vec510, %wide.trip.count.i184
  br i1 %cmp.n542, label %wiener_filter_hv.exit200, label %.preheader.i196.preheader

.preheader.i196.preheader:                        ; preds = %vector.memcheck482, %.preheader.lr.ph.i183, %middle.block541
  %indvars.iv.i197.ph = phi i64 [ 0, %vector.memcheck482 ], [ 0, %.preheader.lr.ph.i183 ], [ %n.vec510, %middle.block541 ]
  br label %.preheader.i196

.preheader.i196:                                  ; preds = %.preheader.i196.preheader, %.preheader.i196
  %indvars.iv.i197 = phi i64 [ %indvars.iv.next.i198, %.preheader.i196 ], [ %indvars.iv.i197.ph, %.preheader.i196.preheader ] ; 9 uses
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %.0..0..0., i64 %indvars.iv.i197
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !13
  %i.hf = zext i16 %i.he to i32
  %i.hg = load i16, ptr %i.l, align 2, !tbaa !13
  %i.hh = sext i16 %i.hg to i32
  %i.hi = mul nsw i32 %i.hh, %i.hf
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %.8..8..8..pre55.i187, i64 %indvars.iv.i197
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !13
  %i.hl = zext i16 %i.hk to i32
  %i.hm = load i16, ptr %i.eq, align 2, !tbaa !13
  %i.hn = sext i16 %i.hm to i32
  %i.ho = mul nsw i32 %i.hn, %i.hl
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %.16..16..16..pre57.i189, i64 %indvars.iv.i197
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !13
  %i.hr = zext i16 %i.hq to i32
  %i.hs = load i16, ptr %i.er, align 2, !tbaa !13
  %i.ht = sext i16 %i.hs to i32
  %i.hu = mul nsw i32 %i.ht, %i.hr
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %.24..24..24..pre59.i191, i64 %indvars.iv.i197
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !13
  %i.hx = zext i16 %i.hw to i32
  %i.hy = load i16, ptr %i.es, align 2, !tbaa !13
  %i.hz = sext i16 %i.hy to i32
  %i.ia = mul nsw i32 %i.hz, %i.hx
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr %.32..32..32..pre61.i193, i64 %indvars.iv.i197
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !13
  %i.id = zext i16 %i.ic to i32
  %i.ie = load i16, ptr %i.et, align 2, !tbaa !13
  %i.if = sext i16 %i.ie to i32
  %i.ig = mul nsw i32 %i.if, %i.id
  %i.ih = getelementptr inbounds nuw [2 x i8], ptr %.40..40..40..pre63.i195, i64 %indvars.iv.i197
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !13
  %i.ij = zext i16 %i.ii to i32
  %i.ik = load i16, ptr %i.eu, align 2, !tbaa !13
  %i.il = sext i16 %i.ik to i32
  %i.im = mul nsw i32 %i.il, %i.ij
  %i.in = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.i197
  %i.io = load i16, ptr %i.in, align 2, !tbaa !13
  %i.ip = zext i16 %i.io to i32
  %i.iq = load i16, ptr %i.ep, align 2, !tbaa !13
  %i.ir = sext i16 %i.iq to i32
  %i.is = mul nsw i32 %i.ir, %i.ip
  %i.it = add i32 %i.ev, %i.hi
  %i.iu = add i32 %i.it, %i.ho
  %i.iv = add i32 %i.iu, %i.hu
  %i.iw = add i32 %i.iv, %i.ia
  %i.ix = add i32 %i.iw, %i.ig
  %i.iy = add i32 %i.ix, %i.im
  %i.iz = add i32 %i.iy, %i.is
  %i.ja = ashr i32 %i.iz, %i.al                   ; 2 uses
  %i.jb = icmp slt i32 %i.ja, 0
  %i.jc = call i32 @llvm.smin.i32(i32 range(i32 -268435456, 268435456) %i.ja, i32 %8)
  %i.jd = trunc i32 %i.jc to i16
  %i.je = select i1 %i.jb, i16 0, i16 %i.jd
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv.i197
  store i16 %i.je, ptr %i.jf, align 2, !tbaa !13
  %indvars.iv.next.i198 = add nuw nsw i64 %indvars.iv.i197, 1 ; 2 uses
  %exitcond.not.i199 = icmp eq i64 %indvars.iv.next.i198, %wide.trip.count.i184
  br i1 %exitcond.not.i199, label %wiener_filter_hv.exit200, label %.preheader.i196, !llvm.loop !35

wiener_filter_hv.exit200:                         ; preds = %.preheader.i196, %middle.block541, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(780) %i.k, ptr noundef nonnull align 16 dereferenceable(780) %i.d, i64 780, i1 false)
  %.8..8..8..sroa_idx1076 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %.8..8..8..sroa_idx1076, i64 48, i1 false), !tbaa !11
  %.0..0..0.317 = load ptr, ptr %i.g, align 16, !tbaa !11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  %i.jg = icmp samesign ult i32 %5, 6
  br i1 %i.jg, label %bb.o, label %wiener_filter_hv.exit200._crit_edge

wiener_filter_hv.exit200._crit_edge:              ; preds = %wiener_filter_hv.exit200
  %i.jh = add nsw i32 %5, -5
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.40..40..40..sroa_idx1092 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.40..40..40..pre = load ptr, ptr %.40..40..40..sroa_idx1092, align 8, !tbaa !11
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %wiener_filter_hv.exit200._crit_edge
  %.pre-phi417 = phi i32 [ %.pre416, %._crit_edge ], [ %i.ao, %wiener_filter_hv.exit200._crit_edge ]
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %i.aj, %wiener_filter_hv.exit200._crit_edge ]
  %.0..0..pre.i207414 = phi ptr [ %i.f, %._crit_edge ], [ %.0..0..0.317, %wiener_filter_hv.exit200._crit_edge ]
  %.40..40. = phi ptr [ %i.k, %._crit_edge ], [ %.40..40..40..pre, %wiener_filter_hv.exit200._crit_edge ]
  %.0161 = phi i32 [ %i.y, %._crit_edge ], [ %i.jh, %wiener_filter_hv.exit200._crit_edge ] ; 3 uses
  %.0159 = phi ptr [ %i.z, %._crit_edge ], [ %i.ji, %wiener_filter_hv.exit200._crit_edge ]
  %.0157 = phi ptr [ %0, %._crit_edge ], [ %i.ae, %wiener_filter_hv.exit200._crit_edge ] ; 13 uses
  %i.jj = getelementptr inbounds i8, ptr %.0157, i64 %1
  %9 = shl i64 %1, 1
  %i.jk = getelementptr inbounds i8, ptr %i.jj, i64 %9
  %i.jl = getelementptr inbounds nuw i8, ptr %.40..40., i64 780 ; 2 uses
  %.48..48..48..sroa_idx1103 = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.jl, ptr %.48..48..48..sroa_idx1103, align 16, !tbaa !11
  %i.jm = icmp eq i32 %.pre-phi, 20
  %i.jn = select i1 %i.jm, i32 9, i32 11          ; 8 uses
  %i.jo = add nsw i32 %i.jn, -1
  %i.jp = shl nuw nsw i32 1, %i.jo
  %i.jq = add nuw nsw i32 %i.jn, %.pre-phi417
  %.neg.i203 = shl nsw i32 -1, %i.jq
  %i.jr = icmp sgt i32 %4, 0                      ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %6, i64 28 ; 6 uses
  %wide.trip.count.i206 = zext i32 %4 to i64      ; 13 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %6, i64 18 ; 6 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 6 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %6, i64 22 ; 6 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 6 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %6, i64 26 ; 6 uses
  %i.jy = add nsw i32 %i.jp, %.neg.i203           ; 6 uses
  %smin = call i32 @llvm.smin.i32(i32 %.0161, i32 1)
  %i.jz = sub i32 %.0161, %smin
  %i.ka = zext i32 %i.jz to i64
  %i.kb = mul i64 %1, %i.ka
  %i.kc = shl nuw nsw i64 %wide.trip.count.i206, 1 ; 8 uses
  %i.kd = getelementptr i8, ptr %.0157, i64 %i.kb
  %scevgep = getelementptr i8, ptr %i.kd, i64 %i.kc ; 8 uses
  %scevgep546.a = getelementptr i8, ptr %6, i64 30
  %scevgep552.a = getelementptr i8, ptr %i.c, i64 %i.kc
  %.8..8..8..phi.trans.insert.i208.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.16..16..16..phi.trans.insert56.i210.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.24..24..24..phi.trans.insert58.i212.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.32..32..32..phi.trans.insert60.i214.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.40..40..40..sroa_idx1096 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %min.iters.check592 = icmp ult i32 %4, 8
  %bound0556 = icmp ult ptr %.0157, %scevgep546.a
  %bound1557 = icmp ult ptr %i.l, %scevgep
  %found.conflict558 = and i1 %bound0556, %bound1557
  %stride.check559 = icmp slt i64 %1, 0
  %i.ke = or i1 %found.conflict558, %stride.check559
  %bound0586 = icmp ult ptr %.0157, %scevgep552.a
  %bound1587 = icmp ult ptr %i.c, %scevgep
  %found.conflict588 = and i1 %bound0586, %bound1587
  %n.vec594 = and i64 %wide.trip.count.i206, 2147483640 ; 3 uses
  %broadcast.splatinsert609 = insertelement <8 x i32> poison, i32 %i.jy, i64 0
  %broadcast.splat610 = shufflevector <8 x i32> %broadcast.splatinsert609, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert611 = insertelement <8 x i32> poison, i32 %i.jn, i64 0
  %broadcast.splat612 = shufflevector <8 x i32> %broadcast.splatinsert611, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert613 = insertelement <8 x i32> poison, i32 %8, i64 0
  %broadcast.splat614 = shufflevector <8 x i32> %broadcast.splatinsert613, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n626 = icmp eq i64 %n.vec594, %wide.trip.count.i206
  %.8..8..8.scevgep.i204.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.48..48..48..sroa_idx1104 = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  br label %bb.k

bb.k:                                             ; preds = %wiener_filter_hv.exit222, %bb.j
  %indvar = phi i64 [ %indvar.next, %wiener_filter_hv.exit222 ], [ 0, %bb.j ] ; 3 uses
  %.0..0..pre.i207 = phi ptr [ %.0..0..0.318, %wiener_filter_hv.exit222 ], [ %.0..0..pre.i207414, %bb.j ] ; 4 uses
  %.0.318363 = phi ptr [ %.0..0..0.318, %wiener_filter_hv.exit222 ], [ %i.jl, %bb.j ]
  %.1162 = phi i32 [ %i.oh, %wiener_filter_hv.exit222 ], [ %.0161, %bb.j ] ; 2 uses
  %.1160 = phi ptr [ %i.of, %wiener_filter_hv.exit222 ], [ %.0159, %bb.j ] ; 2 uses
  %.1158 = phi ptr [ %i.og, %wiener_filter_hv.exit222 ], [ %.0157, %bb.j ] ; 3 uses
  %.pn = phi ptr [ %10, %wiener_filter_hv.exit222 ], [ %i.jk, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call fastcc void @wiener_filter_h(ptr noundef nonnull %i.c, ptr noundef nonnull readonly %.1160, ptr noundef readonly %.pn, ptr noundef readonly %6, i32 noundef %4, i32 noundef %7, i32 noundef %8)
  br i1 %i.jr, label %.preheader.lr.ph.i205, label %wiener_filter_hv.exit222

.preheader.lr.ph.i205:                            ; preds = %bb.k
  %.8..8..8..pre55.i209 = load ptr, ptr %.8..8..8..phi.trans.insert.i208.sroa_idx, align 8, !tbaa !11 ; 4 uses
  %.16..16..16..pre57.i211 = load ptr, ptr %.16..16..16..phi.trans.insert56.i210.sroa_idx, align 16, !tbaa !11 ; 4 uses
  %.24..24..24..pre59.i213 = load ptr, ptr %.24..24..24..phi.trans.insert58.i212.sroa_idx, align 8, !tbaa !11 ; 4 uses
  %.32..32..32..pre61.i215 = load ptr, ptr %.32..32..32..phi.trans.insert60.i214.sroa_idx, align 16, !tbaa !11 ; 4 uses
  %.40..40..40..pre63.i217 = load ptr, ptr %.40..40..40..sroa_idx1096, align 8, !tbaa !11 ; 4 uses
  br i1 %min.iters.check592, label %.preheader.i218.preheader, label %vector.memcheck544

vector.memcheck544:                               ; preds = %.preheader.lr.ph.i205
  %scevgep545 = getelementptr i8, ptr %.0..0..pre.i207, i64 %i.kc
  %scevgep547 = getelementptr i8, ptr %.8..8..8..pre55.i209, i64 %i.kc
  %scevgep548 = getelementptr i8, ptr %.16..16..16..pre57.i211, i64 %i.kc
  %scevgep549 = getelementptr i8, ptr %.24..24..24..pre59.i213, i64 %i.kc
  %scevgep550 = getelementptr i8, ptr %.32..32..32..pre61.i215, i64 %i.kc
  %scevgep551 = getelementptr i8, ptr %.40..40..40..pre63.i217, i64 %i.kc
  %bound0553 = icmp ult ptr %.0157, %scevgep545
  %bound1554 = icmp ult ptr %.0..0..pre.i207, %scevgep
  %found.conflict555 = and i1 %bound0553, %bound1554
  %conflict.rdx560 = or i1 %found.conflict555, %i.ke
  %bound0561 = icmp ult ptr %.0157, %scevgep547
  %bound1562 = icmp ult ptr %.8..8..8..pre55.i209, %scevgep
  %found.conflict563 = and i1 %bound0561, %bound1562
  %conflict.rdx565 = or i1 %found.conflict563, %conflict.rdx560
  %bound0566 = icmp ult ptr %.0157, %scevgep548
  %bound1567 = icmp ult ptr %.16..16..16..pre57.i211, %scevgep
  %found.conflict568 = and i1 %bound0566, %bound1567
  %conflict.rdx570 = or i1 %found.conflict568, %conflict.rdx565
  %bound0571 = icmp ult ptr %.0157, %scevgep549
  %bound1572 = icmp ult ptr %.24..24..24..pre59.i213, %scevgep
  %found.conflict573 = and i1 %bound0571, %bound1572
  %conflict.rdx575 = or i1 %found.conflict573, %conflict.rdx570
  %bound0576 = icmp ult ptr %.0157, %scevgep550
  %bound1577 = icmp ult ptr %.32..32..32..pre61.i215, %scevgep
  %found.conflict578 = and i1 %bound0576, %bound1577
  %conflict.rdx580 = or i1 %found.conflict578, %conflict.rdx575
  %bound0581 = icmp ult ptr %.0157, %scevgep551
  %bound1582 = icmp ult ptr %.40..40..40..pre63.i217, %scevgep
  %found.conflict583 = and i1 %bound0581, %bound1582
  %conflict.rdx585 = or i1 %found.conflict583, %conflict.rdx580
  %conflict.rdx590 = or i1 %found.conflict588, %conflict.rdx585
  br i1 %conflict.rdx590, label %.preheader.i218.preheader, label %vector.ph593

vector.ph593:                                     ; preds = %vector.memcheck544
  %i.kf = load i16, ptr %i.l, align 2, !tbaa !13, !alias.scope !114
  %broadcast.splatinsert595 = insertelement <8 x i16> poison, i16 %i.kf, i64 0
  %broadcast.splat596 = shufflevector <8 x i16> %broadcast.splatinsert595, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.kg = sext <8 x i16> %broadcast.splat596 to <8 x i32>
  %i.kh = load i16, ptr %i.jt, align 2, !tbaa !13, !alias.scope !114
  %broadcast.splatinsert597 = insertelement <8 x i16> poison, i16 %i.kh, i64 0
  %broadcast.splat598 = shufflevector <8 x i16> %broadcast.splatinsert597, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ki = sext <8 x i16> %broadcast.splat598 to <8 x i32>
  %i.kj = load i16, ptr %i.ju, align 2, !tbaa !13, !alias.scope !114
  %broadcast.splatinsert599 = insertelement <8 x i16> poison, i16 %i.kj, i64 0
  %broadcast.splat600 = shufflevector <8 x i16> %broadcast.splatinsert599, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.kk = sext <8 x i16> %broadcast.splat600 to <8 x i32>
  %i.kl = load i16, ptr %i.jv, align 2, !tbaa !13, !alias.scope !114
  %broadcast.splatinsert601 = insertelement <8 x i16> poison, i16 %i.kl, i64 0
  %broadcast.splat602 = shufflevector <8 x i16> %broadcast.splatinsert601, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.km = sext <8 x i16> %broadcast.splat602 to <8 x i32>
  %i.kn = load i16, ptr %i.jw, align 2, !tbaa !13, !alias.scope !114
  %broadcast.splatinsert603 = insertelement <8 x i16> poison, i16 %i.kn, i64 0
  %broadcast.splat604 = shufflevector <8 x i16> %broadcast.splatinsert603, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ko = sext <8 x i16> %broadcast.splat604 to <8 x i32>
  %i.kp = load i16, ptr %i.jx, align 2, !tbaa !13, !alias.scope !114
  %broadcast.splatinsert605 = insertelement <8 x i16> poison, i16 %i.kp, i64 0
  %broadcast.splat606 = shufflevector <8 x i16> %broadcast.splatinsert605, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.kq = sext <8 x i16> %broadcast.splat606 to <8 x i32>
  %i.kr = load i16, ptr %i.js, align 2, !tbaa !13, !alias.scope !114
  %broadcast.splatinsert607 = insertelement <8 x i16> poison, i16 %i.kr, i64 0
  %broadcast.splat608 = shufflevector <8 x i16> %broadcast.splatinsert607, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ks = sext <8 x i16> %broadcast.splat608 to <8 x i32>
  br label %vector.body615

vector.body615:                                   ; preds = %vector.body615, %vector.ph593
  %index616 = phi i64 [ 0, %vector.ph593 ], [ %index.next624, %vector.body615 ] ; 9 uses
  %i.kt = getelementptr inbounds nuw [2 x i8], ptr %.0..0..pre.i207, i64 %index616
  %wide.load617 = load <8 x i16>, ptr %i.kt, align 2, !tbaa !13, !alias.scope !115
  %i.ku = zext <8 x i16> %wide.load617 to <8 x i32>
  %i.kv = mul nsw <8 x i32> %i.kg, %i.ku
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %.8..8..8..pre55.i209, i64 %index616
  %wide.load618 = load <8 x i16>, ptr %i.kw, align 2, !tbaa !13, !alias.scope !116
  %i.kx = zext <8 x i16> %wide.load618 to <8 x i32>
  %i.ky = mul nsw <8 x i32> %i.ki, %i.kx
  %i.kz = getelementptr inbounds nuw [2 x i8], ptr %.16..16..16..pre57.i211, i64 %index616
  %wide.load619 = load <8 x i16>, ptr %i.kz, align 2, !tbaa !13, !alias.scope !117
  %i.la = zext <8 x i16> %wide.load619 to <8 x i32>
  %i.lb = mul nsw <8 x i32> %i.kk, %i.la
  %i.lc = getelementptr inbounds nuw [2 x i8], ptr %.24..24..24..pre59.i213, i64 %index616
  %wide.load620 = load <8 x i16>, ptr %i.lc, align 2, !tbaa !13, !alias.scope !118
  %i.ld = zext <8 x i16> %wide.load620 to <8 x i32>
  %i.le = mul nsw <8 x i32> %i.km, %i.ld
  %i.lf = getelementptr inbounds nuw [2 x i8], ptr %.32..32..32..pre61.i215, i64 %index616
  %wide.load621 = load <8 x i16>, ptr %i.lf, align 2, !tbaa !13, !alias.scope !119
  %i.lg = zext <8 x i16> %wide.load621 to <8 x i32>
  %i.lh = mul nsw <8 x i32> %i.ko, %i.lg
  %i.li = getelementptr inbounds nuw [2 x i8], ptr %.40..40..40..pre63.i217, i64 %index616
  %wide.load622 = load <8 x i16>, ptr %i.li, align 2, !tbaa !13, !alias.scope !120
  %i.lj = zext <8 x i16> %wide.load622 to <8 x i32>
  %i.lk = mul nsw <8 x i32> %i.kq, %i.lj
  %i.ll = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %index616
  %wide.load623 = load <8 x i16>, ptr %i.ll, align 16, !tbaa !13, !alias.scope !121
  %i.lm = zext <8 x i16> %wide.load623 to <8 x i32>
  %i.ln = mul nsw <8 x i32> %i.ks, %i.lm
  %i.lo = add <8 x i32> %broadcast.splat610, %i.kv
  %i.lp = add <8 x i32> %i.lo, %i.ky
  %i.lq = add <8 x i32> %i.lp, %i.lb
  %i.lr = add <8 x i32> %i.lq, %i.le
  %i.ls = add <8 x i32> %i.lr, %i.lh
  %i.lt = add <8 x i32> %i.ls, %i.lk
  %i.lu = add <8 x i32> %i.lt, %i.ln
  %i.lv = ashr <8 x i32> %i.lu, %broadcast.splat612 ; 2 uses
  %i.lw = icmp slt <8 x i32> %i.lv, zeroinitializer
  %i.lx = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.lv, <8 x i32> %broadcast.splat614)
  %i.ly = trunc <8 x i32> %i.lx to <8 x i16>
  %i.lz = select <8 x i1> %i.lw, <8 x i16> zeroinitializer, <8 x i16> %i.ly
  %i.ma = getelementptr inbounds nuw [2 x i8], ptr %.1158, i64 %index616
  store <8 x i16> %i.lz, ptr %i.ma, align 2, !tbaa !13, !alias.scope !122, !noalias !123
  %index.next624 = add nuw i64 %index616, 8       ; 2 uses
  %i.mb = icmp eq i64 %index.next624, %n.vec594
  br i1 %i.mb, label %middle.block625, label %vector.body615, !llvm.loop !46

middle.block625:                                  ; preds = %vector.body615
  br i1 %cmp.n626, label %wiener_filter_hv.exit222, label %.preheader.i218.preheader

.preheader.i218.preheader:                        ; preds = %vector.memcheck544, %.preheader.lr.ph.i205, %middle.block625
  %indvars.iv.i219.ph = phi i64 [ 0, %vector.memcheck544 ], [ 0, %.preheader.lr.ph.i205 ], [ %n.vec594, %middle.block625 ]
  br label %.preheader.i218

.preheader.i218:                                  ; preds = %.preheader.i218.preheader, %.preheader.i218
  %indvars.iv.i219 = phi i64 [ %indvars.iv.next.i220, %.preheader.i218 ], [ %indvars.iv.i219.ph, %.preheader.i218.preheader ] ; 9 uses
  %i.mc = getelementptr inbounds nuw [2 x i8], ptr %.0..0..pre.i207, i64 %indvars.iv.i219
  %i.md = load i16, ptr %i.mc, align 2, !tbaa !13
  %i.me = zext i16 %i.md to i32
  %i.mf = load i16, ptr %i.l, align 2, !tbaa !13
  %i.mg = sext i16 %i.mf to i32
  %i.mh = mul nsw i32 %i.mg, %i.me
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr %.8..8..8..pre55.i209, i64 %indvars.iv.i219
  %i.mj = load i16, ptr %i.mi, align 2, !tbaa !13
  %i.mk = zext i16 %i.mj to i32
  %i.ml = load i16, ptr %i.jt, align 2, !tbaa !13
  %i.mm = sext i16 %i.ml to i32
  %i.mn = mul nsw i32 %i.mm, %i.mk
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %.16..16..16..pre57.i211, i64 %indvars.iv.i219
  %i.mp = load i16, ptr %i.mo, align 2, !tbaa !13
  %i.mq = zext i16 %i.mp to i32
  %i.mr = load i16, ptr %i.ju, align 2, !tbaa !13
  %i.ms = sext i16 %i.mr to i32
  %i.mt = mul nsw i32 %i.ms, %i.mq
  %i.mu = getelementptr inbounds nuw [2 x i8], ptr %.24..24..24..pre59.i213, i64 %indvars.iv.i219
  %i.mv = load i16, ptr %i.mu, align 2, !tbaa !13
  %i.mw = zext i16 %i.mv to i32
  %i.mx = load i16, ptr %i.jv, align 2, !tbaa !13
  %i.my = sext i16 %i.mx to i32
  %i.mz = mul nsw i32 %i.my, %i.mw
  %i.na = getelementptr inbounds nuw [2 x i8], ptr %.32..32..32..pre61.i215, i64 %indvars.iv.i219
  %i.nb = load i16, ptr %i.na, align 2, !tbaa !13
  %i.nc = zext i16 %i.nb to i32
  %i.nd = load i16, ptr %i.jw, align 2, !tbaa !13
  %i.ne = sext i16 %i.nd to i32
  %i.nf = mul nsw i32 %i.ne, %i.nc
  %i.ng = getelementptr inbounds nuw [2 x i8], ptr %.40..40..40..pre63.i217, i64 %indvars.iv.i219
  %i.nh = load i16, ptr %i.ng, align 2, !tbaa !13
  %i.ni = zext i16 %i.nh to i32
  %i.nj = load i16, ptr %i.jx, align 2, !tbaa !13
  %i.nk = sext i16 %i.nj to i32
  %i.nl = mul nsw i32 %i.nk, %i.ni
  %i.nm = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.i219
  %i.nn = load i16, ptr %i.nm, align 2, !tbaa !13
  %i.no = zext i16 %i.nn to i32
  %i.np = load i16, ptr %i.js, align 2, !tbaa !13
  %i.nq = sext i16 %i.np to i32
  %i.nr = mul nsw i32 %i.nq, %i.no
  %i.ns = add i32 %i.jy, %i.mh
  %i.nt = add i32 %i.ns, %i.mn
  %i.nu = add i32 %i.nt, %i.mt
  %i.nv = add i32 %i.nu, %i.mz
  %i.nw = add i32 %i.nv, %i.nf
  %i.nx = add i32 %i.nw, %i.nl
  %i.ny = add i32 %i.nx, %i.nr
  %i.nz = ashr i32 %i.ny, %i.jn                   ; 2 uses
  %i.oa = icmp slt i32 %i.nz, 0
  %i.ob = call i32 @llvm.smin.i32(i32 range(i32 -268435456, 268435456) %i.nz, i32 %8)
  %i.oc = trunc i32 %i.ob to i16
  %i.od = select i1 %i.oa, i16 0, i16 %i.oc
  %i.oe = getelementptr inbounds nuw [2 x i8], ptr %.1158, i64 %indvars.iv.i219
  store i16 %i.od, ptr %i.oe, align 2, !tbaa !13
  %indvars.iv.next.i220 = add nuw nsw i64 %indvars.iv.i219, 1 ; 2 uses
  %exitcond.not.i221 = icmp eq i64 %indvars.iv.next.i220, %wide.trip.count.i206
  br i1 %exitcond.not.i221, label %wiener_filter_hv.exit222, label %.preheader.i218, !llvm.loop !47

wiener_filter_hv.exit222:                         ; preds = %.preheader.i218, %middle.block625, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(780) %.0.318363, ptr noundef nonnull align 16 dereferenceable(780) %i.c, i64 780, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %.8..8..8.scevgep.i204.sroa_idx, i64 48, i1 false), !tbaa !11
  %.0..0..0.318 = load ptr, ptr %i.g, align 16, !tbaa !11 ; 9 uses
  store ptr %.0..0..0.318, ptr %.48..48..48..sroa_idx1104, align 16, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %i.of = getelementptr inbounds nuw i8, ptr %.1160, i64 8
  %10 = getelementptr inbounds i8, ptr %.pn, i64 %1
  %i.og = getelementptr i8, ptr %.1158, i64 %1    ; 12 uses
  %i.oh = add nsw i32 %.1162, -1
  %i.oi = icmp sgt i32 %.1162, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.oi, label %bb.k, label %bb.l

bb.l:                                             ; preds = %wiener_filter_hv.exit222
  %i.oj = and i32 %7, 8
  %.not171 = icmp eq i32 %i.oj, 0
  br i1 %.not171, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call fastcc void @wiener_filter_h(ptr noundef nonnull %i.b, ptr noundef null, ptr noundef readonly %i.o, ptr noundef readonly %6, i32 noundef %4, i32 noundef %7, i32 noundef %8)
  br i1 %i.jr, label %.preheader.lr.ph.i227, label %wiener_filter_hv.exit244

.preheader.lr.ph.i227:                            ; preds = %bb.m
  %.8..8..8.scevgep.i204.sroa_idx1077 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.8..8..8..pre55.i231 = load ptr, ptr %.8..8..8.scevgep.i204.sroa_idx1077, align 8, !tbaa !11 ; 4 uses
  %.16..16..16..phi.trans.insert56.i232.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.16..16..16..pre57.i233 = load ptr, ptr %.16..16..16..phi.trans.insert56.i232.sroa_idx, align 16, !tbaa !11 ; 4 uses
  %.24..24..24..phi.trans.insert58.i234.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.24..24..24..pre59.i235 = load ptr, ptr %.24..24..24..phi.trans.insert58.i234.sroa_idx, align 8, !tbaa !11 ; 4 uses
  %.32..32..32..phi.trans.insert60.i236.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.32..32..32..pre61.i237 = load ptr, ptr %.32..32..32..phi.trans.insert60.i236.sroa_idx, align 16, !tbaa !11 ; 4 uses
  %.40..40..40..sroa_idx1097 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.40..40..40..pre63.i239 = load ptr, ptr %.40..40..40..sroa_idx1097, align 8, !tbaa !11 ; 4 uses
  %min.iters.check665 = icmp ult i32 %4, 16
  br i1 %min.iters.check665, label %.preheader.i240.preheader, label %vector.memcheck628

vector.memcheck628:                               ; preds = %.preheader.lr.ph.i227
  %i.ok = shl nuw nsw i64 %wide.trip.count.i206, 1 ; 7 uses
  %i.ol = mul i64 %1, %indvar
  %i.om = getelementptr i8, ptr %.0157, i64 %i.ol
  %i.on = getelementptr i8, ptr %i.om, i64 %1
  %scevgep629 = getelementptr i8, ptr %i.on, i64 %i.ok ; 7 uses
  %scevgep630 = getelementptr i8, ptr %.0..0..0.318, i64 %i.ok
  %scevgep631 = getelementptr i8, ptr %6, i64 30
  %scevgep632 = getelementptr i8, ptr %.8..8..8..pre55.i231, i64 %i.ok
  %scevgep633 = getelementptr i8, ptr %.16..16..16..pre57.i233, i64 %i.ok
  %scevgep634 = getelementptr i8, ptr %.24..24..24..pre59.i235, i64 %i.ok
  %scevgep635 = getelementptr i8, ptr %.32..32..32..pre61.i237, i64 %i.ok
  %scevgep636 = getelementptr i8, ptr %.40..40..40..pre63.i239, i64 %i.ok
  %bound0637 = icmp ult ptr %i.og, %scevgep630
  %bound1638 = icmp ult ptr %.0..0..0.318, %scevgep629
  %found.conflict639 = and i1 %bound0637, %bound1638
  %bound0640 = icmp ult ptr %i.og, %scevgep631
  %bound1641 = icmp ult ptr %i.l, %scevgep629
  %found.conflict642 = and i1 %bound0640, %bound1641
  %conflict.rdx643 = or i1 %found.conflict639, %found.conflict642
  %bound0644 = icmp ult ptr %i.og, %scevgep632
  %bound1645 = icmp ult ptr %.8..8..8..pre55.i231, %scevgep629
  %found.conflict646 = and i1 %bound0644, %bound1645
  %conflict.rdx647 = or i1 %conflict.rdx643, %found.conflict646
  %bound0648 = icmp ult ptr %i.og, %scevgep633
  %bound1649 = icmp ult ptr %.16..16..16..pre57.i233, %scevgep629
  %found.conflict650 = and i1 %bound0648, %bound1649
  %conflict.rdx651 = or i1 %conflict.rdx647, %found.conflict650
  %bound0652 = icmp ult ptr %i.og, %scevgep634
  %bound1653 = icmp ult ptr %.24..24..24..pre59.i235, %scevgep629
  %found.conflict654 = and i1 %bound0652, %bound1653
  %conflict.rdx655 = or i1 %conflict.rdx651, %found.conflict654
  %bound0656 = icmp ult ptr %i.og, %scevgep635
  %bound1657 = icmp ult ptr %.32..32..32..pre61.i237, %scevgep629
  %found.conflict658 = and i1 %bound0656, %bound1657
  %conflict.rdx659 = or i1 %conflict.rdx655, %found.conflict658
  %bound0660 = icmp ult ptr %i.og, %scevgep636
  %bound1661 = icmp ult ptr %.40..40..40..pre63.i239, %scevgep629
  %found.conflict662 = and i1 %bound0660, %bound1661
  %conflict.rdx663 = or i1 %conflict.rdx659, %found.conflict662
  br i1 %conflict.rdx663, label %.preheader.i240.preheader, label %vector.ph666

vector.ph666:                                     ; preds = %vector.memcheck628
  %n.vec667 = and i64 %wide.trip.count.i206, 2147483640 ; 3 uses
  %i.oo = load i16, ptr %i.l, align 2, !tbaa !13, !alias.scope !124
  %broadcast.splatinsert668 = insertelement <8 x i16> poison, i16 %i.oo, i64 0
  %broadcast.splat669 = shufflevector <8 x i16> %broadcast.splatinsert668, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.op = sext <8 x i16> %broadcast.splat669 to <8 x i32>
  %i.oq = load i16, ptr %i.jt, align 2, !tbaa !13, !alias.scope !124
  %broadcast.splatinsert670 = insertelement <8 x i16> poison, i16 %i.oq, i64 0
  %broadcast.splat671 = shufflevector <8 x i16> %broadcast.splatinsert670, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.or = sext <8 x i16> %broadcast.splat671 to <8 x i32>
  %i.os = load i16, ptr %i.ju, align 2, !tbaa !13, !alias.scope !124
  %broadcast.splatinsert672 = insertelement <8 x i16> poison, i16 %i.os, i64 0
  %broadcast.splat673 = shufflevector <8 x i16> %broadcast.splatinsert672, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ot = sext <8 x i16> %broadcast.splat673 to <8 x i32>
  %i.ou = load i16, ptr %i.jv, align 2, !tbaa !13, !alias.scope !124
  %broadcast.splatinsert674 = insertelement <8 x i16> poison, i16 %i.ou, i64 0
  %broadcast.splat675 = shufflevector <8 x i16> %broadcast.splatinsert674, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ov = sext <8 x i16> %broadcast.splat675 to <8 x i32>
  %i.ow = load i16, ptr %i.jw, align 2, !tbaa !13, !alias.scope !124
  %broadcast.splatinsert676 = insertelement <8 x i16> poison, i16 %i.ow, i64 0
  %broadcast.splat677 = shufflevector <8 x i16> %broadcast.splatinsert676, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ox = sext <8 x i16> %broadcast.splat677 to <8 x i32>
  %i.oy = load i16, ptr %i.jx, align 2, !tbaa !13, !alias.scope !124
  %broadcast.splatinsert678 = insertelement <8 x i16> poison, i16 %i.oy, i64 0
  %broadcast.splat679 = shufflevector <8 x i16> %broadcast.splatinsert678, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.oz = sext <8 x i16> %broadcast.splat679 to <8 x i32>
  %i.pa = load i16, ptr %i.js, align 2, !tbaa !13, !alias.scope !124
  %broadcast.splatinsert680 = insertelement <8 x i16> poison, i16 %i.pa, i64 0
  %broadcast.splat681 = shufflevector <8 x i16> %broadcast.splatinsert680, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.pb = sext <8 x i16> %broadcast.splat681 to <8 x i32>
  %broadcast.splatinsert682 = insertelement <8 x i32> poison, i32 %i.jy, i64 0
  %broadcast.splat683 = shufflevector <8 x i32> %broadcast.splatinsert682, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert684 = insertelement <8 x i32> poison, i32 %i.jn, i64 0
  %broadcast.splat685 = shufflevector <8 x i32> %broadcast.splatinsert684, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert686 = insertelement <8 x i32> poison, i32 %8, i64 0
  %broadcast.splat687 = shufflevector <8 x i32> %broadcast.splatinsert686, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body688

vector.body688:                                   ; preds = %vector.body688, %vector.ph666
  %index689 = phi i64 [ 0, %vector.ph666 ], [ %index.next697, %vector.body688 ] ; 9 uses
  %i.pc = getelementptr inbounds nuw [2 x i8], ptr %.0..0..0.318, i64 %index689
  %wide.load690 = load <8 x i16>, ptr %i.pc, align 2, !tbaa !13, !alias.scope !125
  %i.pd = zext <8 x i16> %wide.load690 to <8 x i32>
  %i.pe = mul nsw <8 x i32> %i.op, %i.pd
  %i.pf = getelementptr inbounds nuw [2 x i8], ptr %.8..8..8..pre55.i231, i64 %index689
  %wide.load691 = load <8 x i16>, ptr %i.pf, align 2, !tbaa !13, !alias.scope !126
  %i.pg = zext <8 x i16> %wide.load691 to <8 x i32>
  %i.ph = mul nsw <8 x i32> %i.or, %i.pg
  %i.pi = getelementptr inbounds nuw [2 x i8], ptr %.16..16..16..pre57.i233, i64 %index689
  %wide.load692 = load <8 x i16>, ptr %i.pi, align 2, !tbaa !13, !alias.scope !127
  %i.pj = zext <8 x i16> %wide.load692 to <8 x i32>
  %i.pk = mul nsw <8 x i32> %i.ot, %i.pj
  %i.pl = getelementptr inbounds nuw [2 x i8], ptr %.24..24..24..pre59.i235, i64 %index689
  %wide.load693 = load <8 x i16>, ptr %i.pl, align 2, !tbaa !13, !alias.scope !128
  %i.pm = zext <8 x i16> %wide.load693 to <8 x i32>
  %i.pn = mul nsw <8 x i32> %i.ov, %i.pm
  %i.po = getelementptr inbounds nuw [2 x i8], ptr %.32..32..32..pre61.i237, i64 %index689
  %wide.load694 = load <8 x i16>, ptr %i.po, align 2, !tbaa !13, !alias.scope !129
  %i.pp = zext <8 x i16> %wide.load694 to <8 x i32>
  %i.pq = mul nsw <8 x i32> %i.ox, %i.pp
  %i.pr = getelementptr inbounds nuw [2 x i8], ptr %.40..40..40..pre63.i239, i64 %index689
  %wide.load695 = load <8 x i16>, ptr %i.pr, align 2, !tbaa !13, !alias.scope !130
  %i.ps = zext <8 x i16> %wide.load695 to <8 x i32>
  %i.pt = mul nsw <8 x i32> %i.oz, %i.ps
  %i.pu = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index689
  %wide.load696 = load <8 x i16>, ptr %i.pu, align 16, !tbaa !13
  %i.pv = zext <8 x i16> %wide.load696 to <8 x i32>
  %i.pw = mul nsw <8 x i32> %i.pb, %i.pv
  %i.px = add <8 x i32> %broadcast.splat683, %i.pe
  %i.py = add <8 x i32> %i.px, %i.ph
  %i.pz = add <8 x i32> %i.py, %i.pk
  %i.qa = add <8 x i32> %i.pz, %i.pn
  %i.qb = add <8 x i32> %i.qa, %i.pq
  %i.qc = add <8 x i32> %i.qb, %i.pt
  %i.qd = add <8 x i32> %i.qc, %i.pw
  %i.qe = ashr <8 x i32> %i.qd, %broadcast.splat685 ; 2 uses
  %i.qf = icmp slt <8 x i32> %i.qe, zeroinitializer
  %i.qg = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.qe, <8 x i32> %broadcast.splat687)
  %i.qh = trunc <8 x i32> %i.qg to <8 x i16>
  %i.qi = select <8 x i1> %i.qf, <8 x i16> zeroinitializer, <8 x i16> %i.qh
  %i.qj = getelementptr inbounds nuw [2 x i8], ptr %i.og, i64 %index689
  store <8 x i16> %i.qi, ptr %i.qj, align 2, !tbaa !13, !alias.scope !131, !noalias !132
  %index.next697 = add nuw i64 %index689, 8       ; 2 uses
  %i.qk = icmp eq i64 %index.next697, %n.vec667
  br i1 %i.qk, label %middle.block698, label %vector.body688, !llvm.loop !57

middle.block698:                                  ; preds = %vector.body688
  %cmp.n699 = icmp eq i64 %n.vec667, %wide.trip.count.i206
  br i1 %cmp.n699, label %wiener_filter_hv.exit244, label %.preheader.i240.preheader

.preheader.i240.preheader:                        ; preds = %vector.memcheck628, %.preheader.lr.ph.i227, %middle.block698
  %indvars.iv.i241.ph = phi i64 [ 0, %vector.memcheck628 ], [ 0, %.preheader.lr.ph.i227 ], [ %n.vec667, %middle.block698 ]
  br label %.preheader.i240

.preheader.i240:                                  ; preds = %.preheader.i240.preheader, %.preheader.i240
  %indvars.iv.i241 = phi i64 [ %indvars.iv.next.i242, %.preheader.i240 ], [ %indvars.iv.i241.ph, %.preheader.i240.preheader ] ; 9 uses
  %i.ql = getelementptr inbounds nuw [2 x i8], ptr %.0..0..0.318, i64 %indvars.iv.i241
  %i.qm = load i16, ptr %i.ql, align 2, !tbaa !13
  %i.qn = zext i16 %i.qm to i32
  %i.qo = load i16, ptr %i.l, align 2, !tbaa !13
  %i.qp = sext i16 %i.qo to i32
  %i.qq = mul nsw i32 %i.qp, %i.qn
  %i.qr = getelementptr inbounds nuw [2 x i8], ptr %.8..8..8..pre55.i231, i64 %indvars.iv.i241
  %i.qs = load i16, ptr %i.qr, align 2, !tbaa !13
  %i.qt = zext i16 %i.qs to i32
  %i.qu = load i16, ptr %i.jt, align 2, !tbaa !13
  %i.qv = sext i16 %i.qu to i32
  %i.qw = mul nsw i32 %i.qv, %i.qt
  %i.qx = getelementptr inbounds nuw [2 x i8], ptr %.16..16..16..pre57.i233, i64 %indvars.iv.i241
  %i.qy = load i16, ptr %i.qx, align 2, !tbaa !13
  %i.qz = zext i16 %i.qy to i32
  %i.ra = load i16, ptr %i.ju, align 2, !tbaa !13
  %i.rb = sext i16 %i.ra to i32
  %i.rc = mul nsw i32 %i.rb, %i.qz
  %i.rd = getelementptr inbounds nuw [2 x i8], ptr %.24..24..24..pre59.i235, i64 %indvars.iv.i241
  %i.re = load i16, ptr %i.rd, align 2, !tbaa !13
  %i.rf = zext i16 %i.re to i32
  %i.rg = load i16, ptr %i.jv, align 2, !tbaa !13
  %i.rh = sext i16 %i.rg to i32
  %i.ri = mul nsw i32 %i.rh, %i.rf
  %i.rj = getelementptr inbounds nuw [2 x i8], ptr %.32..32..32..pre61.i237, i64 %indvars.iv.i241
  %i.rk = load i16, ptr %i.rj, align 2, !tbaa !13
  %i.rl = zext i16 %i.rk to i32
  %i.rm = load i16, ptr %i.jw, align 2, !tbaa !13
  %i.rn = sext i16 %i.rm to i32
  %i.ro = mul nsw i32 %i.rn, %i.rl
  %i.rp = getelementptr inbounds nuw [2 x i8], ptr %.40..40..40..pre63.i239, i64 %indvars.iv.i241
  %i.rq = load i16, ptr %i.rp, align 2, !tbaa !13
end_hunk_0
begin_hunk_1_@wiener_c:bb.a
  %i.ajp = sext i16 %i.ajo to i32
  %i.ajq = mul nsw i32 %i.ajp, %i.ajn
  %i.ajr = getelementptr inbounds nuw [2 x i8], ptr %.32..32..32..pre52.i310, i64 %indvars.iv.i312
  %i.ajs = load i16, ptr %i.ajr, align 2, !tbaa !13
  %i.ajt = zext i16 %i.ajs to i32
  %i.aju = load i16, ptr %i.agn, align 2, !tbaa !13
  %i.ajv = sext i16 %i.aju to i32
  %i.ajw = mul nsw i32 %i.ajv, %i.ajt
  %i.ajx = getelementptr inbounds nuw [2 x i8], ptr %.40..40..40.338, i64 %indvars.iv.i312
  %i.ajy = load i16, ptr %i.ajx, align 2, !tbaa !13
  %i.ajz = zext i16 %i.ajy to i32
  %i.aka = load i16, ptr %i.ago, align 2, !tbaa !13
  %i.akb = sext i16 %i.aka to i32
  %i.akc = load i16, ptr %i.agj, align 2, !tbaa !13
  %i.akd = sext i16 %i.akc to i32
  %reass.add355 = add nsw i32 %i.akd, %i.akb
  %reass.mul356 = mul i32 %reass.add355, %i.ajz
  %i.ake = add i32 %i.agp, %i.aiy
  %i.akf = add i32 %i.ake, %i.aje
  %i.akg = add i32 %i.akf, %i.ajk
  %i.akh = add i32 %i.akg, %i.ajq
  %i.aki = add i32 %i.akh, %i.ajw
  %i.akj = add i32 %i.aki, %reass.mul356
  %i.akk = ashr i32 %i.akj, %i.agd                ; 2 uses
  %i.akl = icmp slt i32 %i.akk, 0
  %i.akm = call i32 @llvm.smin.i32(i32 range(i32 -268435456, 268435456) %i.akk, i32 %8)
  %i.akn = trunc i32 %i.akm to i16
  %i.ako = select i1 %i.akl, i16 0, i16 %i.akn
  %i.akp = getelementptr inbounds nuw [2 x i8], ptr %.4, i64 %indvars.iv.i312
  store i16 %i.ako, ptr %i.akp, align 2, !tbaa !13
  %indvars.iv.next.i313 = add nuw nsw i64 %indvars.iv.i312, 1 ; 2 uses
  %exitcond.not.i314 = icmp eq i64 %indvars.iv.next.i313, %wide.trip.count.i301
  br i1 %exitcond.not.i314, label %wiener_filter_v.exit315, label %.preheader36.i311, !llvm.loop !102

wiener_filter_v.exit315:                          ; preds = %.preheader36.i311, %middle.block971, %bb.p
  %.8..8..8.scevgep.i299.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %.8..8..8.scevgep.i299.sroa_idx, i64 40, i1 false), !tbaa !11
  %i.akq = getelementptr inbounds i8, ptr %.4, i64 %1
  br label %bb.n
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal void @sgr_5x5_c(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, i32 noundef %7, i32 noundef %8) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [2016 x i32], align 16            ; 13 uses
  %i.c = alloca [2016 x i32], align 16            ; 15 uses
  %i.d = alloca [5 x ptr], align 16               ; 32 uses
  %i.e = alloca [5 x ptr], align 16               ; 37 uses
  %i.f = alloca [816 x i32], align 16             ; 4 uses
  %i.g = alloca [816 x i32], align 16             ; 4 uses
  %i.h = alloca [2 x ptr], align 16               ; 11 uses
  %i.i = alloca [2 x ptr], align 16               ; 11 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1600 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 1600 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 3200 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 3200 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 4800 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 4800 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 6400 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 6400 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  store ptr %i.f, ptr %i.h, align 16, !tbaa !17
  store ptr %i.g, ptr %i.i, align 16, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 1600 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 6 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 1600 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 6 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !17
  %i.v = and i64 %1, 1
  %.not.i = icmp eq i64 %i.v, 0
  call void @llvm.assume(i1 %.not.i)
  %i.w = ashr exact i64 %1, 1
  %.idx = mul nsw i64 %i.w, 12
  %i.x = getelementptr inbounds i8, ptr %3, i64 %.idx ; 2 uses
  %i.y = and i32 %7, 4
  %.not = icmp eq i32 %i.y, 0
  store ptr %i.b, ptr %i.d, align 16, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.b, ptr %i.z, align 8, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.j, ptr %i.aa, align 16, !tbaa !17
  store ptr %i.l, ptr %i.ab, align 8, !tbaa !17
  store ptr %i.n, ptr %i.ac, align 16, !tbaa !17
  store ptr %i.c, ptr %i.e, align 16, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.c, ptr %i.ad, align 8, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.k, ptr %i.ae, align 16, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  store ptr %i.m, ptr %i.af, align 8, !tbaa !17
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.o, ptr %i.ag, align 16, !tbaa !17
  call fastcc void @sgr_box5_row_h(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null, ptr noundef %3, i32 noundef %4, i32 noundef %7)
  %i.ah = getelementptr inbounds i8, ptr %3, i64 %1
  call fastcc void @sgr_box5_row_h(ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef null, ptr noundef %i.ah, i32 noundef %4, i32 noundef %7)
  call fastcc void @sgr_box5_row_h(ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, ptr noundef %2, ptr noundef %0, i32 noundef %4, i32 noundef %7)
  %i.ai = icmp slt i32 %5, 2
  br i1 %i.ai, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %1
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  call fastcc void @sgr_box5_row_h(ptr noundef nonnull %i.n, ptr noundef nonnull %i.o, ptr noundef nonnull %i.ak, ptr noundef %i.aj, i32 noundef %4, i32 noundef %7)
  %i.al = load i32, ptr %6, align 16, !tbaa !18
  call fastcc void @sgr_box5_row_v(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.r, ptr noundef nonnull %i.t, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef nonnull %i.r, ptr noundef nonnull %i.t, i32 noundef %4, i32 noundef %i.al, i32 noundef %8, i32 noundef 25, i32 noundef 164)
  call fastcc void @rotate5_x2(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  call fastcc void @rotate(ptr noundef %i.h, ptr noundef %i.i, i32 noundef 2)
  %i.am = icmp eq i32 %5, 2
  br i1 %i.am, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = add nsw i32 %5, -2
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.p, ptr %i.ab, align 8, !tbaa !17
  store ptr %i.q, ptr %i.af, align 8, !tbaa !17
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.aa, align 16, !tbaa !17
  store ptr %i.b, ptr %i.ab, align 8, !tbaa !17
  store ptr %i.c, ptr %i.e, align 16, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.c, ptr %i.ap, align 8, !tbaa !17
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.c, ptr %i.aq, align 16, !tbaa !17
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.ar, align 8, !tbaa !17
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  call fastcc void @sgr_box5_row_h(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef %2, ptr noundef %0, i32 noundef %4, i32 noundef %7)
  %i.at = icmp slt i32 %5, 2
  br i1 %i.at, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds i8, ptr %0, i64 %1 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.j, ptr %i.ac, align 16, !tbaa !17
  store ptr %i.k, ptr %i.as, align 16, !tbaa !17
  call fastcc void @sgr_box5_row_h(ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.av, ptr noundef %i.au, i32 noundef %4, i32 noundef %7)
  %i.aw = load i32, ptr %6, align 16, !tbaa !18   ; 3 uses
  call fastcc void @sgr_box5_row_v(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.r, ptr noundef nonnull %i.t, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef nonnull %i.r, ptr noundef nonnull %i.t, i32 noundef %4, i32 noundef %i.aw, i32 noundef %8, i32 noundef 25, i32 noundef 164)
  call fastcc void @rotate5_x2(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  call fastcc void @rotate(ptr noundef %i.h, ptr noundef %i.i, i32 noundef 2)
  %i.ax = icmp eq i32 %5, 2
  br i1 %i.ax, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 %1 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.l, ptr %i.ab, align 8, !tbaa !17
  store ptr %i.n, ptr %i.ac, align 16, !tbaa !17
  store ptr %i.m, ptr %i.ar, align 8, !tbaa !17
  store ptr %i.o, ptr %i.as, align 16, !tbaa !17
  call fastcc void @sgr_box5_row_h(ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull %i.az, ptr noundef %i.ay, i32 noundef %4, i32 noundef %7)
  %i.ba = icmp samesign ult i32 %5, 4
  br i1 %i.ba, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds i8, ptr %i.ay, i64 %1
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 24
  call fastcc void @sgr_box5_row_h(ptr noundef nonnull %i.n, ptr noundef nonnull %i.o, ptr noundef nonnull %i.bc, ptr noundef %i.bb, i32 noundef %4, i32 noundef %7)
  %i.bd = load ptr, ptr %i.s, align 8, !tbaa !17  ; 2 uses
  %i.be = load ptr, ptr %i.u, align 8, !tbaa !17  ; 2 uses
  call fastcc void @sgr_box5_row_v(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %i.bd, ptr noundef %i.be, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef %i.bd, ptr noundef %i.be, i32 noundef %4, i32 noundef %i.aw, i32 noundef %8, i32 noundef 25, i32 noundef 164)
  call fastcc void @rotate5_x2(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bg = load i16, ptr %i.bf, align 8, !tbaa !18
  %i.bh = sext i16 %i.bg to i32
  call fastcc void @sgr_finish2(ptr noundef %i.a, i64 noundef %1, ptr noundef %i.h, ptr noundef %i.i, i32 noundef %4, i32 noundef 2, i32 noundef %i.bh, i32 noundef %8)
  %i.bi = icmp eq i32 %5, 4
  br i1 %i.bi, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = add nsw i32 %5, -4
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.p, ptr %i.ab, align 8, !tbaa !17
  store ptr %i.q, ptr %i.ar, align 8, !tbaa !17
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %.0143 = phi i32 [ %i.an, %bb.d ], [ %i.bj, %bb.i ] ; 2 uses
  %.0141 = phi ptr [ %i.ao, %bb.d ], [ %i.bk, %bb.i ] ; 2 uses
  %i.bl = phi ptr [ %0, %bb.d ], [ %i.ay, %bb.i ]
  %9 = shl i64 %1, 1
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %9 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %.1199 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.br = load ptr, ptr %i.bn, align 8, !tbaa !17 ; 2 uses
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !17 ; 2 uses
  call fastcc void @sgr_box5_row_h(ptr noundef %i.br, ptr noundef %i.bs, ptr noundef nonnull %.0141, ptr noundef %i.bm, i32 noundef %4, i32 noundef %7)
  %i.bt = icmp samesign ult i32 %.0143, 2
  br i1 %i.bt, label %.loopexit.loopexit, label %.lr.ph

bb.k:                                             ; preds = %.lr.ph
  %i.bu = getelementptr inbounds i8, ptr %i.bz, i64 %1 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.1142201, i64 16 ; 2 uses
  %10 = add nsw i32 %.1144200, -2
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !17 ; 2 uses
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !17 ; 2 uses
  call fastcc void @sgr_box5_row_h(ptr noundef %i.bw, ptr noundef %i.bx, ptr noundef nonnull %i.bv, ptr noundef %i.bu, i32 noundef %4, i32 noundef %7)
  %i.by = icmp slt i32 %.1144200, 4
  br i1 %i.by, label %.loopexit.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %.1202 = phi ptr [ %i.bu, %bb.k ], [ %i.bm, %bb.j ]
  %.1142201 = phi ptr [ %i.bv, %bb.k ], [ %.0141, %bb.j ] ; 2 uses
  %.1144200 = phi i32 [ %10, %bb.k ], [ %.0143, %bb.j ] ; 3 uses
  %i.bz = getelementptr inbounds i8, ptr %.1202, i64 %1 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.1142201, i64 8
  %i.cb = load ptr, ptr %i.bp, align 16, !tbaa !17
  %i.cc = load ptr, ptr %i.bq, align 16, !tbaa !17
  call fastcc void @sgr_box5_row_h(ptr noundef %i.cb, ptr noundef %i.cc, ptr noundef nonnull %i.ca, ptr noundef %i.bz, i32 noundef %4, i32 noundef %7)
  %i.cd = load ptr, ptr %i.s, align 8, !tbaa !17  ; 2 uses
  %i.ce = load ptr, ptr %i.u, align 8, !tbaa !17  ; 2 uses
  %i.cf = load i32, ptr %6, align 16, !tbaa !18
  call fastcc void @sgr_box5_row_v(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %i.cd, ptr noundef %i.ce, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef %i.cd, ptr noundef %i.ce, i32 noundef %4, i32 noundef %i.cf, i32 noundef %8, i32 noundef 25, i32 noundef 164)
  call fastcc void @rotate5_x2(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  %i.cg = load i16, ptr %.1199, align 8, !tbaa !18
  %i.ch = sext i16 %i.cg to i32
  call fastcc void @sgr_finish2(ptr noundef %i.a, i64 noundef %1, ptr noundef %i.h, ptr noundef %i.i, i32 noundef %4, i32 noundef 2, i32 noundef %i.ch, i32 noundef %8)
  %.not153 = icmp eq i32 %.1144200, 2
  br i1 %.not153, label %bb.l, label %bb.k

bb.l:                                             ; preds = %.lr.ph
  %i.ci = and i32 %7, 8
  %.not154 = icmp eq i32 %i.ci, 0
  br i1 %.not154, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cj = load ptr, ptr %i.bn, align 8, !tbaa !17
  %i.ck = load ptr, ptr %i.bo, align 8, !tbaa !17
  call fastcc void @sgr_box5_row_h(ptr noundef %i.cj, ptr noundef %i.ck, ptr noundef null, ptr noundef %i.x, i32 noundef %4, i32 noundef %7)
  %i.cl = getelementptr inbounds i8, ptr %i.x, i64 %1
  %i.cm = load ptr, ptr %i.bp, align 16, !tbaa !17
  %i.cn = load ptr, ptr %i.bq, align 16, !tbaa !17
  call fastcc void @sgr_box5_row_h(ptr noundef %i.cm, ptr noundef %i.cn, ptr noundef null, ptr noundef %i.cl, i32 noundef %4, i32 noundef %7)
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.co = load ptr, ptr %i.s, align 8, !tbaa !17  ; 2 uses
  %i.cp = load ptr, ptr %i.u, align 8, !tbaa !17  ; 2 uses
  %i.cq = load i32, ptr %6, align 16, !tbaa !18
  call fastcc void @sgr_box5_row_v(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %i.co, ptr noundef %i.cp, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef %i.co, ptr noundef %i.cp, i32 noundef %4, i32 noundef %i.cq, i32 noundef %8, i32 noundef 25, i32 noundef 164)
  br label %bb.r

bb.o:                                             ; preds = %bb.l, %bb.h, %bb.f, %bb.c
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cs = load ptr, ptr %i.cr, align 16, !tbaa !17 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !17
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.cs, ptr %i.cu, align 16, !tbaa !17
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.cw = load ptr, ptr %i.cv, align 16, !tbaa !17 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !17
  %i.cy = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.cw, ptr %i.cy, align 16, !tbaa !17
  br label %bb.n

.loopexit.loopexit:                               ; preds = %bb.k, %bb.j
  %.lcssa197 = phi ptr [ %i.br, %bb.j ], [ %i.bw, %bb.k ]
  %.lcssa = phi ptr [ %i.bs, %bb.j ], [ %i.bx, %bb.k ]
  %.pre = load i32, ptr %6, align 16, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.g
  %i.cz = phi i32 [ %.pre, %.loopexit.loopexit ], [ %i.aw, %bb.g ]
  %i.da = phi ptr [ %.lcssa, %.loopexit.loopexit ], [ %i.m, %bb.g ]
  %i.db = phi ptr [ %.lcssa197, %.loopexit.loopexit ], [ %i.l, %bb.g ]
  %i.dc = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.db, ptr %i.dc, align 16, !tbaa !17
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.da, ptr %i.dd, align 16, !tbaa !17
  %i.de = load ptr, ptr %i.s, align 8, !tbaa !17  ; 2 uses
  %i.df = load ptr, ptr %i.u, align 8, !tbaa !17  ; 2 uses
  call fastcc void @sgr_box5_row_v(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %i.de, ptr noundef %i.df, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef %i.de, ptr noundef %i.df, i32 noundef %4, i32 noundef %i.cz, i32 noundef %8, i32 noundef 25, i32 noundef 164)
  call fastcc void @rotate5_x2(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dh = load i16, ptr %i.dg, align 8, !tbaa !18
  %i.di = sext i16 %i.dh to i32
  call fastcc void @sgr_finish2(ptr noundef %i.a, i64 noundef %1, ptr noundef %i.h, ptr noundef %i.i, i32 noundef %4, i32 noundef 2, i32 noundef %i.di, i32 noundef %8)
  %.pre189 = load i32, ptr %6, align 16, !tbaa !18
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.loopexit
  %i.dj = phi i32 [ %i.dy, %bb.q ], [ %.pre189, %.loopexit ]
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dl = load ptr, ptr %i.dk, align 16, !tbaa !17 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !17
  %i.dn = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.dl, ptr %i.dn, align 16, !tbaa !17
  %i.do = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.dp = load ptr, ptr %i.do, align 16, !tbaa !17 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !17
  %i.dr = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.dp, ptr %i.dr, align 16, !tbaa !17
  %i.ds = load ptr, ptr %i.s, align 8, !tbaa !17  ; 2 uses
  %i.dt = load ptr, ptr %i.u, align 8, !tbaa !17  ; 2 uses
  call fastcc void @sgr_box5_row_v(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %i.ds, ptr noundef %i.dt, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef %i.ds, ptr noundef %i.dt, i32 noundef %4, i32 noundef %i.dj, i32 noundef %8, i32 noundef 25, i32 noundef 164)
  br label %bb.r

bb.q:                                             ; preds = %bb.e, %bb.b
  %i.du = phi ptr [ %i.c, %bb.e ], [ %i.m, %bb.b ]
  %i.dv = phi ptr [ %i.b, %bb.e ], [ %i.l, %bb.b ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.dv, ptr %i.dw, align 16, !tbaa !17
  %i.dx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.du, ptr %i.dx, align 16, !tbaa !17
  %i.dy = load i32, ptr %6, align 16, !tbaa !18   ; 2 uses
  call fastcc void @sgr_box5_row_v(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.r, ptr noundef nonnull %i.t, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef nonnull %i.r, ptr noundef nonnull %i.t, i32 noundef %4, i32 noundef %i.dy, i32 noundef %8, i32 noundef 25, i32 noundef 164)
  call fastcc void @rotate5_x2(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  call fastcc void @rotate(ptr noundef %i.h, ptr noundef %i.i, i32 noundef 2)
  br label %bb.p

bb.r:                                             ; preds = %bb.p, %bb.n
  %.sink = phi i32 [ 1, %bb.p ], [ 2, %bb.n ]
  call fastcc void @rotate5_x2(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ea = load i16, ptr %i.dz, align 8, !tbaa !18
  %i.eb = sext i16 %i.ea to i32
  call fastcc void @sgr_finish2(ptr noundef %i.a, i64 noundef %1, ptr noundef %i.h, ptr noundef %i.i, i32 noundef %4, i32 noundef %.sink, i32 noundef %i.eb, i32 noundef %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal void @sgr_3x3_c(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, i32 noundef %7, i32 noundef %8) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [1216 x i32], align 16            ; 9 uses
  %i.c = alloca [1216 x i32], align 16            ; 10 uses
  %i.d = alloca [3 x ptr], align 16               ; 32 uses
  %i.e = alloca [3 x ptr], align 16               ; 33 uses
  %i.f = alloca [1216 x i32], align 16            ; 5 uses
  %i.g = alloca [1216 x i32], align 16            ; 5 uses
  %i.h = alloca [3 x ptr], align 16               ; 14 uses
  %i.i = alloca [3 x ptr], align 16               ; 14 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1600 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 1600 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 3200 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 3200 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  store ptr %i.f, ptr %i.h, align 16, !tbaa !17
  store ptr %i.g, ptr %i.i, align 16, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 1600
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 1600
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 3200 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 9 uses
  store ptr %i.r, ptr %i.s, align 16, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 3200 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 9 uses
  store ptr %i.t, ptr %i.u, align 16, !tbaa !17
  %i.v = and i64 %1, 1
  %.not.i = icmp eq i64 %i.v, 0
  call void @llvm.assume(i1 %.not.i)
  %i.w = ashr exact i64 %1, 1
  %.idx = mul nsw i64 %i.w, 12
  %i.x = getelementptr inbounds i8, ptr %3, i64 %.idx ; 2 uses
  %i.y = and i32 %7, 4
  %.not = icmp eq i32 %i.y, 0
  store ptr %i.b, ptr %i.d, align 16, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 5 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.j, ptr %i.z, align 8, !tbaa !17
  store ptr %i.l, ptr %i.aa, align 16, !tbaa !17
  store ptr %i.c, ptr %i.e, align 16, !tbaa !17
  store ptr %i.k, ptr %i.ab, align 8, !tbaa !17
  store ptr %i.m, ptr %i.ac, align 16, !tbaa !17
  call fastcc void @sgr_box3_row_h(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null, ptr noundef %3, i32 noundef %4, i32 noundef %7)
  %i.ad = getelementptr inbounds i8, ptr %3, i64 %1
  call fastcc void @sgr_box3_row_h(ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef null, ptr noundef %i.ad, i32 noundef %4, i32 noundef %7)
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !18 ; 3 uses
  call fastcc void @sgr_box3_row_h(ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, ptr noundef readonly %2, ptr noundef readonly %0, i32 noundef %4, i32 noundef %7)
  call fastcc void @sgr_box3_row_v(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.r, ptr noundef nonnull %i.t, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef nonnull %i.r, ptr noundef nonnull %i.t, i32 noundef %4, i32 noundef %i.af, i32 noundef %8, i32 noundef 9, i32 noundef 455)
  call fastcc void @rotate(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef 3)
  call fastcc void @rotate(ptr noundef %i.h, ptr noundef %i.i, i32 noundef 3)
  %i.ag = icmp slt i32 %5, 2
  br i1 %i.ag, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds i8, ptr %0, i64 %1
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load ptr, ptr %i.s, align 16, !tbaa !17 ; 2 uses
  %i.ak = load ptr, ptr %i.u, align 16, !tbaa !17 ; 2 uses
  %i.al = load ptr, ptr %i.aa, align 16, !tbaa !17
  %i.am = load ptr, ptr %i.ac, align 16, !tbaa !17
  call fastcc void @sgr_box3_row_h(ptr noundef %i.al, ptr noundef %i.am, ptr noundef nonnull readonly %i.ai, ptr noundef readonly %i.ah, i32 noundef %4, i32 noundef %7)
  call fastcc void @sgr_box3_row_v(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %i.aj, ptr noundef %i.ak, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef %i.aj, ptr noundef %i.ak, i32 noundef %4, i32 noundef %i.af, i32 noundef %8, i32 noundef 9, i32 noundef 455)
  call fastcc void @rotate(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef 3)
  call fastcc void @rotate(ptr noundef %i.h, ptr noundef %i.i, i32 noundef 3)
  %i.an = icmp eq i32 %5, 2
  br i1 %i.an, label %bb.k, label %bb.g

bb.d:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.z, align 8, !tbaa !17
  store ptr %i.b, ptr %i.aa, align 16, !tbaa !17
  store ptr %i.c, ptr %i.e, align 16, !tbaa !17
  store ptr %i.c, ptr %i.ab, align 8, !tbaa !17
  store ptr %i.c, ptr %i.ac, align 16, !tbaa !17
  call fastcc void @sgr_box3_row_h(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef %2, ptr noundef %0, i32 noundef %4, i32 noundef %7)
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !18 ; 3 uses
  call fastcc void @sgr_box3_row_v(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.r, ptr noundef nonnull %i.t, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef nonnull %i.r, ptr noundef nonnull %i.t, i32 noundef %4, i32 noundef %i.ap, i32 noundef %8, i32 noundef 9, i32 noundef 455)
  call fastcc void @rotate(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef 3)
  call fastcc void @rotate(ptr noundef %i.h, ptr noundef %i.i, i32 noundef 3)
  %i.aq = icmp slt i32 %5, 2
  br i1 %i.aq, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds i8, ptr %0, i64 %1
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.j, ptr %i.aa, align 16, !tbaa !17
  store ptr %i.k, ptr %i.ac, align 16, !tbaa !17
  %i.at = load ptr, ptr %i.s, align 16, !tbaa !17 ; 2 uses
  %i.au = load ptr, ptr %i.u, align 16, !tbaa !17 ; 2 uses
  call fastcc void @sgr_box3_row_h(ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull readonly %i.as, ptr noundef readonly %i.ar, i32 noundef %4, i32 noundef %7)
  call fastcc void @sgr_box3_row_v(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %i.at, ptr noundef %i.au, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef %i.at, ptr noundef %i.au, i32 noundef %4, i32 noundef %i.ap, i32 noundef %8, i32 noundef 9, i32 noundef 455)
  call fastcc void @rotate(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef 3)
  call fastcc void @rotate(ptr noundef %i.h, ptr noundef %i.i, i32 noundef 3)
  %i.av = icmp eq i32 %5, 2
  br i1 %i.av, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.l, ptr %i.aa, align 16, !tbaa !17
  store ptr %i.m, ptr %i.ac, align 16, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  %9 = shl i64 %1, 1
  %i.aw = getelementptr inbounds i8, ptr %0, i64 %9
  %.0117 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.0119 = add nsw i32 %5, -2
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 10 ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.1120 = phi i32 [ %.0119, %bb.g ], [ %i.bj, %bb.h ] ; 2 uses
  %.1118 = phi ptr [ %.0117, %bb.g ], [ %10, %bb.h ] ; 2 uses
  %.pn = phi ptr [ %i.aw, %bb.g ], [ %i.bg, %bb.h ] ; 2 uses
  %i.bb = load ptr, ptr %i.s, align 16, !tbaa !17 ; 2 uses
  %i.bc = load ptr, ptr %i.u, align 16, !tbaa !17 ; 2 uses
  %i.bd = load i32, ptr %i.ax, align 4, !tbaa !18
  %i.be = load ptr, ptr %i.ay, align 16, !tbaa !17
  %i.bf = load ptr, ptr %i.az, align 16, !tbaa !17
  call fastcc void @sgr_box3_row_h(ptr noundef %i.be, ptr noundef %i.bf, ptr noundef nonnull readonly %.1118, ptr noundef readonly %.pn, i32 noundef %4, i32 noundef %7)
  call fastcc void @sgr_box3_row_v(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %i.bb, ptr noundef %i.bc, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef %i.bb, ptr noundef %i.bc, i32 noundef %4, i32 noundef %i.bd, i32 noundef %8, i32 noundef 9, i32 noundef 455)
  call fastcc void @rotate(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef 3)
  %10 = getelementptr inbounds nuw i8, ptr %.1118, i64 8
  %i.bg = getelementptr inbounds i8, ptr %.pn, i64 %1
  %i.bh = load i16, ptr %i.ba, align 2, !tbaa !18
  %i.bi = sext i16 %i.bh to i32
  call fastcc void @sgr_finish1(ptr noundef %i.a, i64 noundef %1, ptr noundef %i.h, ptr noundef %i.i, i32 noundef %4, i32 noundef %i.bi, i32 noundef %8)
  %i.bj = add nsw i32 %.1120, -1
  %i.bk = icmp samesign ugt i32 %.1120, 1
  br i1 %i.bk, label %bb.h, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = and i32 %7, 8
  %.not125 = icmp eq i32 %i.bl, 0
  br i1 %.not125, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = load ptr, ptr %i.s, align 16, !tbaa !17 ; 2 uses
  %i.bn = load ptr, ptr %i.u, align 16, !tbaa !17 ; 2 uses
  %i.bo = load i32, ptr %i.ax, align 4, !tbaa !18
  %i.bp = load ptr, ptr %i.ay, align 16, !tbaa !17
  %i.bq = load ptr, ptr %i.az, align 16, !tbaa !17
  call fastcc void @sgr_box3_row_h(ptr noundef %i.bp, ptr noundef %i.bq, ptr noundef null, ptr noundef readonly %i.x, i32 noundef %4, i32 noundef %7)
  call fastcc void @sgr_box3_row_v(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %i.bm, ptr noundef %i.bn, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef %i.bm, ptr noundef %i.bn, i32 noundef %4, i32 noundef %i.bo, i32 noundef %8, i32 noundef 9, i32 noundef 455)
  call fastcc void @rotate(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef 3)
  %i.br = getelementptr inbounds i8, ptr %i.x, i64 %1
  %i.bs = load i16, ptr %i.ba, align 2, !tbaa !18
  %i.bt = sext i16 %i.bs to i32
  call fastcc void @sgr_finish1(ptr noundef %i.a, i64 noundef %1, ptr noundef %i.h, ptr noundef %i.i, i32 noundef %4, i32 noundef %i.bt, i32 noundef %8)
  %i.bu = load ptr, ptr %i.s, align 16, !tbaa !17 ; 2 uses
  %i.bv = load ptr, ptr %i.u, align 16, !tbaa !17 ; 2 uses
  %i.bw = load i32, ptr %i.ax, align 4, !tbaa !18
  %i.bx = load ptr, ptr %i.ay, align 16, !tbaa !17
  %i.by = load ptr, ptr %i.az, align 16, !tbaa !17
  call fastcc void @sgr_box3_row_h(ptr noundef %i.bx, ptr noundef %i.by, ptr noundef null, ptr noundef readonly %i.br, i32 noundef %4, i32 noundef %7)
  call fastcc void @sgr_box3_row_v(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %i.bu, ptr noundef %i.bv, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef %i.bu, ptr noundef %i.bv, i32 noundef %4, i32 noundef %i.bw, i32 noundef %8, i32 noundef 9, i32 noundef 455)
  call fastcc void @rotate(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef 3)
  br label %bb.n

bb.k:                                             ; preds = %bb.i, %bb.e, %bb.c
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !17
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.ca, ptr %i.cb, align 16, !tbaa !17
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !17
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.cd, ptr %i.ce, align 16, !tbaa !17
  %i.cf = load ptr, ptr %i.s, align 16, !tbaa !17 ; 2 uses
  %i.cg = load ptr, ptr %i.u, align 16, !tbaa !17 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !18
  call fastcc void @sgr_box3_row_v(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %i.cf, ptr noundef %i.cg, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef %i.cf, ptr noundef %i.cg, i32 noundef %4, i32 noundef %i.ci, i32 noundef %8, i32 noundef 9, i32 noundef 455)
  call fastcc void @rotate(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef 3)
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 10
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !18
  %i.cl = sext i16 %i.ck to i32
  call fastcc void @sgr_finish1(ptr noundef %i.a, i64 noundef %1, ptr noundef %i.h, ptr noundef %i.i, i32 noundef %4, i32 noundef %i.cl, i32 noundef %8)
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !17
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.cn, ptr %i.co, align 16, !tbaa !17
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !17
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.cq, ptr %i.cr, align 16, !tbaa !17
  %i.cs = load ptr, ptr %i.s, align 16, !tbaa !17 ; 2 uses
  %i.ct = load ptr, ptr %i.u, align 16, !tbaa !17 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !18
  call fastcc void @sgr_box3_row_v(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %i.cs, ptr noundef %i.ct, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef %i.cs, ptr noundef %i.ct, i32 noundef %4, i32 noundef %i.cv, i32 noundef %8, i32 noundef 9, i32 noundef 455)
  call fastcc void @rotate(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef 3)
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 10
  br label %bb.n

bb.m:                                             ; preds = %bb.d, %bb.b
  %i.cx = phi i32 [ %i.ap, %bb.d ], [ %i.af, %bb.b ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !17
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.cz, ptr %i.da, align 16, !tbaa !17
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !17
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.dc, ptr %i.dd, align 16, !tbaa !17
  %i.de = load ptr, ptr %i.s, align 16, !tbaa !17 ; 2 uses
  %i.df = load ptr, ptr %i.u, align 16, !tbaa !17 ; 2 uses
  call fastcc void @sgr_box3_row_v(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %i.de, ptr noundef %i.df, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef %i.de, ptr noundef %i.df, i32 noundef %4, i32 noundef %i.cx, i32 noundef %8, i32 noundef 9, i32 noundef 455)
  call fastcc void @rotate(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef 3)
  call fastcc void @rotate(ptr noundef %i.h, ptr noundef %i.i, i32 noundef 3)
  br label %bb.l

bb.n:                                             ; preds = %bb.l, %bb.j
  %.sink152.in = phi ptr [ %i.cw, %bb.l ], [ %i.ba, %bb.j ]
  %.sink152 = load i16, ptr %.sink152.in, align 2, !tbaa !18
  %i.dg = sext i16 %.sink152 to i32
  call fastcc void @sgr_finish1(ptr noundef %i.a, i64 noundef %1, ptr noundef %i.h, ptr noundef %i.i, i32 noundef %4, i32 noundef %i.dg, i32 noundef %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal void @sgr_mix_c(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, i32 noundef %7, i32 noundef %8) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [2016 x i32], align 16            ; 13 uses
  %i.c = alloca [2016 x i32], align 16            ; 15 uses
  %i.d = alloca [5 x ptr], align 16               ; 33 uses
  %i.e = alloca [5 x ptr], align 16               ; 38 uses
  %i.f = alloca [1216 x i32], align 16            ; 10 uses
  %i.g = alloca [1216 x i32], align 16            ; 10 uses
  %i.h = alloca [3 x ptr], align 16               ; 45 uses
  %i.i = alloca [3 x ptr], align 16               ; 45 uses
  %i.j = alloca [816 x i32], align 16             ; 4 uses
  %i.k = alloca [816 x i32], align 16             ; 4 uses
  %i.l = alloca [2 x ptr], align 16               ; 11 uses
  %i.m = alloca [2 x ptr], align 16               ; 11 uses
  %i.n = alloca [1616 x i32], align 16            ; 6 uses
  %i.o = alloca [1616 x i32], align 16            ; 6 uses
  %i.p = alloca [4 x ptr], align 16               ; 20 uses
  %i.q = alloca [4 x ptr], align 16               ; 20 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 1600 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 1600 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 3200 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 3200 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 4800 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 4800 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 6400 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 6400 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 1600 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 1600 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 3200 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 3200 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #14
  store ptr %i.j, ptr %i.l, align 16, !tbaa !17
  store ptr %i.k, ptr %i.m, align 16, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 1600 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 6 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 1600 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 6 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #14
  store ptr %i.n, ptr %i.p, align 16, !tbaa !17
  store ptr %i.o, ptr %i.q, align 16, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 1600
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !17
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 1600
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !17
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 3200
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.al, ptr %i.am, align 16, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 3200
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.an, ptr %i.ao, align 16, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %i.n, i64 4800 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 13 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !17
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 4800 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 13 uses
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !17
  %i.at = and i64 %1, 1
  %.not.i = icmp eq i64 %i.at, 0
  call void @llvm.assume(i1 %.not.i)
  %i.au = ashr exact i64 %1, 1
  %.idx = mul nsw i64 %i.au, 12
  %i.av = getelementptr inbounds i8, ptr %3, i64 %.idx ; 3 uses
  %i.aw = and i32 %7, 4
  %.not = icmp eq i32 %i.aw, 0
  store ptr %i.b, ptr %i.d, align 16, !tbaa !17
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.b, ptr %i.ax, align 8, !tbaa !17
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.r, ptr %i.ay, align 16, !tbaa !17
  store ptr %i.t, ptr %i.az, align 8, !tbaa !17
  store ptr %i.v, ptr %i.ba, align 16, !tbaa !17
  store ptr %i.c, ptr %i.e, align 16, !tbaa !17
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.c, ptr %i.bb, align 8, !tbaa !17
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.s, ptr %i.bc, align 16, !tbaa !17
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  store ptr %i.u, ptr %i.bd, align 8, !tbaa !17
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.w, ptr %i.be, align 16, !tbaa !17
  store ptr %i.f, ptr %i.h, align 16, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.z, ptr %i.bf, align 8, !tbaa !17
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store ptr %i.ab, ptr %i.bg, align 16, !tbaa !17
  store ptr %i.g, ptr %i.i, align 16, !tbaa !17
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.aa, ptr %i.bh, align 8, !tbaa !17
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store ptr %i.ac, ptr %i.bi, align 16, !tbaa !17
  call fastcc void @sgr_box3_row_h(ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef null, ptr noundef readonly %3, i32 noundef %4, i32 noundef %7)
  call fastcc void @sgr_box5_row_h(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null, ptr noundef readonly %3, i32 noundef %4, i32 noundef %7)
  %i.bj = getelementptr inbounds i8, ptr %3, i64 %1 ; 2 uses
  call fastcc void @sgr_box3_row_h(ptr noundef nonnull %i.z, ptr noundef nonnull %i.aa, ptr noundef null, ptr noundef readonly %i.bj, i32 noundef %4, i32 noundef %7)
  call fastcc void @sgr_box5_row_h(ptr noundef nonnull %i.r, ptr noundef nonnull %i.s, ptr noundef null, ptr noundef readonly %i.bj, i32 noundef %4, i32 noundef %7)
  call fastcc void @sgr_box3_row_h(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ac, ptr noundef readonly %2, ptr noundef readonly %0, i32 noundef %4, i32 noundef %7)
  call fastcc void @sgr_box5_row_h(ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, ptr noundef readonly %2, ptr noundef readonly %0, i32 noundef %4, i32 noundef %7)
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !18 ; 2 uses
  call fastcc void @sgr_box3_row_v(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ar, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ar, i32 noundef %4, i32 noundef %i.bl, i32 noundef %8, i32 noundef 9, i32 noundef 455)
  call fastcc void @rotate(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i32 noundef 3)
  call fastcc void @rotate(ptr noundef %i.p, ptr noundef %i.q, i32 noundef 4)
  %i.bm = icmp slt i32 %5, 2
  br i1 %i.bm, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bn = getelementptr inbounds i8, ptr %0, i64 %1 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bg, align 16, !tbaa !17
  %i.bq = load ptr, ptr %i.bi, align 16, !tbaa !17
  call fastcc void @sgr_box3_row_h(ptr noundef %i.bp, ptr noundef %i.bq, ptr noundef nonnull readonly %i.bo, ptr noundef readonly %i.bn, i32 noundef %4, i32 noundef %7)
  call fastcc void @sgr_box5_row_h(ptr noundef nonnull %i.v, ptr noundef nonnull %i.w, ptr noundef nonnull readonly %i.bo, ptr noundef readonly %i.bn, i32 noundef %4, i32 noundef %7)
  %i.br = load i32, ptr %6, align 16, !tbaa !18
  call fastcc void @sgr_box5_row_v(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.af, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.af, i32 noundef %4, i32 noundef %i.br, i32 noundef %8, i32 noundef 25, i32 noundef 164)
  call fastcc void @rotate5_x2(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  call fastcc void @rotate(ptr noundef %i.l, ptr noundef %i.m, i32 noundef 2)
  %i.bs = load ptr, ptr %i.aq, align 8, !tbaa !17 ; 2 uses
  %i.bt = load ptr, ptr %i.as, align 8, !tbaa !17 ; 2 uses
  %i.bu = load i32, ptr %i.bk, align 4, !tbaa !18
  call fastcc void @sgr_box3_row_v(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef %i.bs, ptr noundef %i.bt, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef %i.bs, ptr noundef %i.bt, i32 noundef %4, i32 noundef %i.bu, i32 noundef %8, i32 noundef 9, i32 noundef 455)
  call fastcc void @rotate(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i32 noundef 3)
  call fastcc void @rotate(ptr noundef %i.p, ptr noundef %i.q, i32 noundef 4)
  %i.bv = icmp eq i32 %5, 2
  br i1 %i.bv, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bw = add nsw i32 %5, -2
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.x, ptr %i.az, align 8, !tbaa !17
  store ptr %i.y, ptr %i.bd, align 8, !tbaa !17
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.ay, align 16, !tbaa !17
  store ptr %i.b, ptr %i.az, align 8, !tbaa !17
  store ptr %i.c, ptr %i.e, align 16, !tbaa !17
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.c, ptr %i.by, align 8, !tbaa !17
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.c, ptr %i.bz, align 16, !tbaa !17
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.ca, align 8, !tbaa !17
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  store ptr %i.f, ptr %i.h, align 16, !tbaa !17
  %i.cc = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.f, ptr %i.cc, align 8, !tbaa !17
  %i.cd = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  store ptr %i.f, ptr %i.cd, align 16, !tbaa !17
  store ptr %i.g, ptr %i.i, align 16, !tbaa !17
  %i.ce = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.g, ptr %i.ce, align 8, !tbaa !17
  %i.cf = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  store ptr %i.g, ptr %i.cf, align 16, !tbaa !17
  call fastcc void @sgr_box3_row_h(ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef readonly %2, ptr noundef readonly %0, i32 noundef %4, i32 noundef %7)
  call fastcc void @sgr_box5_row_h(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef readonly %2, ptr noundef readonly %0, i32 noundef %4, i32 noundef %7)
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !18 ; 3 uses
  call fastcc void @sgr_box3_row_v(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ar, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ar, i32 noundef %4, i32 noundef %i.ch, i32 noundef %8, i32 noundef 9, i32 noundef 455)
  call fastcc void @rotate(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i32 noundef 3)
  call fastcc void @rotate(ptr noundef %i.p, ptr noundef %i.q, i32 noundef 4)
  %i.ci = icmp slt i32 %5, 2
  br i1 %i.ci, label %bb.r, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cj = getelementptr inbounds i8, ptr %0, i64 %1 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.r, ptr %i.ba, align 16, !tbaa !17
  store ptr %i.s, ptr %i.cb, align 16, !tbaa !17
  store ptr %i.z, ptr %i.cd, align 16, !tbaa !17
  store ptr %i.aa, ptr %i.cf, align 16, !tbaa !17
  call fastcc void @sgr_box3_row_h(ptr noundef nonnull %i.z, ptr noundef nonnull %i.aa, ptr noundef nonnull readonly %i.ck, ptr noundef readonly %i.cj, i32 noundef %4, i32 noundef %7)
  call fastcc void @sgr_box5_row_h(ptr noundef nonnull %i.r, ptr noundef nonnull %i.s, ptr noundef nonnull readonly %i.ck, ptr noundef readonly %i.cj, i32 noundef %4, i32 noundef %7)
  %i.cl = load i32, ptr %6, align 16, !tbaa !18
  call fastcc void @sgr_box5_row_v(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.af, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.af, i32 noundef %4, i32 noundef %i.cl, i32 noundef %8, i32 noundef 25, i32 noundef 164)
  call fastcc void @rotate5_x2(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  call fastcc void @rotate(ptr noundef %i.l, ptr noundef %i.m, i32 noundef 2)
  %i.cm = load ptr, ptr %i.aq, align 8, !tbaa !17 ; 2 uses
  %i.cn = load ptr, ptr %i.as, align 8, !tbaa !17 ; 2 uses
  call fastcc void @sgr_box3_row_v(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef %i.cm, ptr noundef %i.cn, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef %i.cm, ptr noundef %i.cn, i32 noundef %4, i32 noundef %i.ch, i32 noundef %8, i32 noundef 9, i32 noundef 455)
  call fastcc void @rotate(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i32 noundef 3)
  call fastcc void @rotate(ptr noundef %i.p, ptr noundef %i.q, i32 noundef 4)
  %i.co = icmp eq i32 %5, 2
  br i1 %i.co, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cp = getelementptr inbounds i8, ptr %i.cj, i64 %1 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.t, ptr %i.az, align 8, !tbaa !17
  store ptr %i.v, ptr %i.ba, align 16, !tbaa !17
  store ptr %i.u, ptr %i.ca, align 8, !tbaa !17
  store ptr %i.w, ptr %i.cb, align 16, !tbaa !17
  store ptr %i.ab, ptr %i.cd, align 16, !tbaa !17
  store ptr %i.ac, ptr %i.cf, align 16, !tbaa !17
  call fastcc void @sgr_box3_row_h(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ac, ptr noundef nonnull readonly %i.cq, ptr noundef readonly %i.cp, i32 noundef %4, i32 noundef %7)
  call fastcc void @sgr_box5_row_h(ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, ptr noundef nonnull readonly %i.cq, ptr noundef readonly %i.cp, i32 noundef %4, i32 noundef %7)
  %i.cr = load ptr, ptr %i.aq, align 8, !tbaa !17 ; 2 uses
  %i.cs = load ptr, ptr %i.as, align 8, !tbaa !17 ; 2 uses
  %i.ct = load i32, ptr %i.cg, align 4, !tbaa !18
  call fastcc void @sgr_box3_row_v(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef %i.cr, ptr noundef %i.cs, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef %i.cr, ptr noundef %i.cs, i32 noundef %4, i32 noundef %i.ct, i32 noundef %8, i32 noundef 9, i32 noundef 455)
  call fastcc void @rotate(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i32 noundef 3)
  call fastcc void @rotate(ptr noundef %i.p, ptr noundef %i.q, i32 noundef 4)
  %i.cu = icmp samesign ult i32 %5, 4
  br i1 %i.cu, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cv = getelementptr inbounds i8, ptr %i.cp, i64 %1 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.cx = load ptr, ptr %i.cd, align 16, !tbaa !17
  %i.cy = load ptr, ptr %i.cf, align 16, !tbaa !17
  call fastcc void @sgr_box3_row_h(ptr noundef %i.cx, ptr noundef %i.cy, ptr noundef nonnull readonly %i.cw, ptr noundef readonly %i.cv, i32 noundef %4, i32 noundef %7)
  call fastcc void @sgr_box5_row_h(ptr noundef nonnull %i.v, ptr noundef nonnull %i.w, ptr noundef nonnull readonly %i.cw, ptr noundef readonly %i.cv, i32 noundef %4, i32 noundef %7)
  %i.cz = load ptr, ptr %i.ae, align 8, !tbaa !17 ; 2 uses
  %i.da = load ptr, ptr %i.ag, align 8, !tbaa !17 ; 2 uses
  %i.db = load i32, ptr %6, align 16, !tbaa !18
  call fastcc void @sgr_box5_row_v(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %i.cz, ptr noundef %i.da, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef %i.cz, ptr noundef %i.da, i32 noundef %4, i32 noundef %i.db, i32 noundef %8, i32 noundef 25, i32 noundef 164)
  call fastcc void @rotate5_x2(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  %i.dc = load ptr, ptr %i.aq, align 8, !tbaa !17 ; 2 uses
  %i.dd = load ptr, ptr %i.as, align 8, !tbaa !17 ; 2 uses
  %i.de = load i32, ptr %i.cg, align 4, !tbaa !18
  call fastcc void @sgr_box3_row_v(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef %i.dc, ptr noundef %i.dd, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef %i.dc, ptr noundef %i.dd, i32 noundef %4, i32 noundef %i.de, i32 noundef %8, i32 noundef 9, i32 noundef 455)
  call fastcc void @rotate(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i32 noundef 3)
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dg = load i16, ptr %i.df, align 8, !tbaa !18
  %i.dh = sext i16 %i.dg to i32
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 10
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !18
  %i.dk = sext i16 %i.dj to i32
  call fastcc void @sgr_finish_mix(ptr noundef %i.a, i64 noundef %1, ptr noundef %i.l, ptr noundef %i.m, ptr noundef %i.p, ptr noundef %i.q, i32 noundef %4, i32 noundef 2, i32 noundef %i.dh, i32 noundef %i.dk, i32 noundef %8)
  %i.dl = icmp eq i32 %5, 4
  br i1 %i.dl, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dm = add nsw i32 %5, -4
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.x, ptr %i.az, align 8, !tbaa !17
  store ptr %i.y, ptr %i.ca, align 8, !tbaa !17
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %.0204 = phi i32 [ %i.bw, %bb.d ], [ %i.dm, %bb.i ]
  %.0202 = phi ptr [ %i.bx, %bb.d ], [ %i.dn, %bb.i ]
  %i.do = phi ptr [ %0, %bb.d ], [ %i.cp, %bb.i ]
  %9 = shl i64 %1, 1
  %.0 = getelementptr inbounds i8, ptr %i.do, i64 %9
  %i.dp = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 10
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.1205 = phi i32 [ %.0204, %bb.j ], [ %i.ey, %bb.l ] ; 3 uses
  %.1203 = phi ptr [ %.0202, %bb.j ], [ %i.en, %bb.l ] ; 4 uses
  %i.dy = phi ptr [ %.0, %bb.j ], [ %10, %bb.l ]  ; 3 uses
  %i.dz = load ptr, ptr %i.dp, align 16, !tbaa !17
  %i.ea = load ptr, ptr %i.dq, align 16, !tbaa !17
  %i.eb = load ptr, ptr %i.dr, align 8, !tbaa !17 ; 2 uses
  %i.ec = load ptr, ptr %i.ds, align 8, !tbaa !17 ; 2 uses
  call fastcc void @sgr_box3_row_h(ptr noundef %i.dz, ptr noundef %i.ea, ptr noundef nonnull readonly %.1203, ptr noundef readonly %i.dy, i32 noundef %4, i32 noundef %7)
  call fastcc void @sgr_box5_row_h(ptr noundef %i.eb, ptr noundef %i.ec, ptr noundef nonnull readonly %.1203, ptr noundef readonly %i.dy, i32 noundef %4, i32 noundef %7)
  %i.ed = load ptr, ptr %i.aq, align 8, !tbaa !17 ; 2 uses
  %i.ee = load ptr, ptr %i.as, align 8, !tbaa !17 ; 2 uses
  %i.ef = load i32, ptr %i.dt, align 4, !tbaa !18
  call fastcc void @sgr_box3_row_v(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef %i.ed, ptr noundef %i.ee, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef %i.ed, ptr noundef %i.ee, i32 noundef %4, i32 noundef %i.ef, i32 noundef %8, i32 noundef 9, i32 noundef 455)
  call fastcc void @rotate(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i32 noundef 3)
  call fastcc void @rotate(ptr noundef %i.p, ptr noundef %i.q, i32 noundef 4)
  %i.eg = icmp samesign ult i32 %.1205, 2
  br i1 %i.eg, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eh = getelementptr inbounds i8, ptr %i.dy, i64 %1 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.1203, i64 8 ; 2 uses
  %i.ej = load ptr, ptr %i.dp, align 16, !tbaa !17
  %i.ek = load ptr, ptr %i.dq, align 16, !tbaa !17
  %i.el = load ptr, ptr %i.du, align 16, !tbaa !17
  %i.em = load ptr, ptr %i.dv, align 16, !tbaa !17
  call fastcc void @sgr_box3_row_h(ptr noundef %i.ej, ptr noundef %i.ek, ptr noundef nonnull readonly %i.ei, ptr noundef readonly %i.eh, i32 noundef %4, i32 noundef %7)
  call fastcc void @sgr_box5_row_h(ptr noundef %i.el, ptr noundef %i.em, ptr noundef nonnull readonly %i.ei, ptr noundef readonly %i.eh, i32 noundef %4, i32 noundef %7)
  %i.en = getelementptr inbounds nuw i8, ptr %.1203, i64 16
  %10 = getelementptr inbounds i8, ptr %i.eh, i64 %1
  %i.eo = load ptr, ptr %i.ae, align 8, !tbaa !17 ; 2 uses
  %i.ep = load ptr, ptr %i.ag, align 8, !tbaa !17 ; 2 uses
  %i.eq = load i32, ptr %6, align 16, !tbaa !18
  call fastcc void @sgr_box5_row_v(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %i.eo, ptr noundef %i.ep, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef %i.eo, ptr noundef %i.ep, i32 noundef %4, i32 noundef %i.eq, i32 noundef %8, i32 noundef 25, i32 noundef 164)
  call fastcc void @rotate5_x2(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  %i.er = load ptr, ptr %i.aq, align 8, !tbaa !17 ; 2 uses
  %i.es = load ptr, ptr %i.as, align 8, !tbaa !17 ; 2 uses
  %i.et = load i32, ptr %i.dt, align 4, !tbaa !18
  call fastcc void @sgr_box3_row_v(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef %i.er, ptr noundef %i.es, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef %i.er, ptr noundef %i.es, i32 noundef %4, i32 noundef %i.et, i32 noundef %8, i32 noundef 9, i32 noundef 455)
  call fastcc void @rotate(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i32 noundef 3)
  %i.eu = load i16, ptr %i.dw, align 8, !tbaa !18
  %i.ev = sext i16 %i.eu to i32
  %i.ew = load i16, ptr %i.dx, align 2, !tbaa !18
  %i.ex = sext i16 %i.ew to i32
  call fastcc void @sgr_finish_mix(ptr noundef %i.a, i64 noundef %1, ptr noundef %i.l, ptr noundef %i.m, ptr noundef %i.p, ptr noundef %i.q, i32 noundef %4, i32 noundef 2, i32 noundef %i.ev, i32 noundef %i.ex, i32 noundef %8)
  %i.ey = add nsw i32 %.1205, -2
  %.not214 = icmp eq i32 %.1205, 2
  br i1 %.not214, label %bb.m, label %bb.k

bb.m:                                             ; preds = %bb.l
  %i.ez = and i32 %7, 8
  %.not215 = icmp eq i32 %i.ez, 0
  br i1 %.not215, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fa = load ptr, ptr %i.dp, align 16, !tbaa !17
  %i.fb = load ptr, ptr %i.dq, align 16, !tbaa !17
  %i.fc = load ptr, ptr %i.dr, align 8, !tbaa !17
  %i.fd = load ptr, ptr %i.ds, align 8, !tbaa !17
  call fastcc void @sgr_box3_row_h(ptr noundef %i.fa, ptr noundef %i.fb, ptr noundef null, ptr noundef readonly %i.av, i32 noundef %4, i32 noundef %7)
  call fastcc void @sgr_box5_row_h(ptr noundef %i.fc, ptr noundef %i.fd, ptr noundef null, ptr noundef readonly %i.av, i32 noundef %4, i32 noundef %7)
  %i.fe = getelementptr inbounds i8, ptr %i.av, i64 %1 ; 2 uses
  %i.ff = load ptr, ptr %i.aq, align 8, !tbaa !17 ; 2 uses
  %i.fg = load ptr, ptr %i.as, align 8, !tbaa !17 ; 2 uses
  %i.fh = load i32, ptr %i.dt, align 4, !tbaa !18
  call fastcc void @sgr_box3_row_v(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef %i.ff, ptr noundef %i.fg, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef %i.ff, ptr noundef %i.fg, i32 noundef %4, i32 noundef %i.fh, i32 noundef %8, i32 noundef 9, i32 noundef 455)
  call fastcc void @rotate(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i32 noundef 3)
  call fastcc void @rotate(ptr noundef %i.p, ptr noundef %i.q, i32 noundef 4)
  %i.fi = load ptr, ptr %i.dp, align 16, !tbaa !17
  %i.fj = load ptr, ptr %i.dq, align 16, !tbaa !17
  %i.fk = load ptr, ptr %i.du, align 16, !tbaa !17
  %i.fl = load ptr, ptr %i.dv, align 16, !tbaa !17
  call fastcc void @sgr_box3_row_h(ptr noundef %i.fi, ptr noundef %i.fj, ptr noundef null, ptr noundef readonly %i.fe, i32 noundef %4, i32 noundef %7)
  call fastcc void @sgr_box5_row_h(ptr noundef %i.fk, ptr noundef %i.fl, ptr noundef null, ptr noundef readonly %i.fe, i32 noundef %4, i32 noundef %7)
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %i.fm = load ptr, ptr %i.ae, align 8, !tbaa !17 ; 2 uses
  %i.fn = load ptr, ptr %i.ag, align 8, !tbaa !17 ; 2 uses
  %i.fo = load i32, ptr %6, align 16, !tbaa !18
  call fastcc void @sgr_box5_row_v(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %i.fm, ptr noundef %i.fn, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef %i.fm, ptr noundef %i.fn, i32 noundef %4, i32 noundef %i.fo, i32 noundef %8, i32 noundef 25, i32 noundef 164)
  call fastcc void @rotate5_x2(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  %i.fp = load ptr, ptr %i.aq, align 8, !tbaa !17 ; 2 uses
  %i.fq = load ptr, ptr %i.as, align 8, !tbaa !17 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !18
  call fastcc void @sgr_box3_row_v(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef %i.fp, ptr noundef %i.fq, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef %i.fp, ptr noundef %i.fq, i32 noundef %4, i32 noundef %i.fs, i32 noundef %8, i32 noundef 9, i32 noundef 455)
  call fastcc void @rotate(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i32 noundef 3)
  br label %bb.s

bb.p:                                             ; preds = %bb.m, %bb.h, %bb.f, %bb.c
  %i.ft = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.fu = load ptr, ptr %i.ft, align 16, !tbaa !17 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.fu, ptr %i.fv, align 8, !tbaa !17
  %i.fw = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.fu, ptr %i.fw, align 16, !tbaa !17
  %i.fx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.fy = load ptr, ptr %i.fx, align 16, !tbaa !17 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.fy, ptr %i.fz, align 8, !tbaa !17
  %i.ga = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.fy, ptr %i.ga, align 16, !tbaa !17
  %i.gb = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !17
  %i.gd = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store ptr %i.gc, ptr %i.gd, align 16, !tbaa !17
  %i.ge = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !17
  %i.gg = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store ptr %i.gf, ptr %i.gg, align 16, !tbaa !17
  %i.gh = load ptr, ptr %i.aq, align 8, !tbaa !17 ; 2 uses
  %i.gi = load ptr, ptr %i.as, align 8, !tbaa !17 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !18
  call fastcc void @sgr_box3_row_v(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef %i.gh, ptr noundef %i.gi, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef %i.gh, ptr noundef %i.gi, i32 noundef %4, i32 noundef %i.gk, i32 noundef %8, i32 noundef 9, i32 noundef 455)
  call fastcc void @rotate(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i32 noundef 3)
  call fastcc void @rotate(ptr noundef %i.p, ptr noundef %i.q, i32 noundef 4)
  %i.gl = load ptr, ptr %i.gb, align 8, !tbaa !17
  store ptr %i.gl, ptr %i.gd, align 16, !tbaa !17
  %i.gm = load ptr, ptr %i.ge, align 8, !tbaa !17
  store ptr %i.gm, ptr %i.gg, align 16, !tbaa !17
  br label %bb.o

.loopexit:                                        ; preds = %bb.k, %bb.g
  %i.gn = phi ptr [ %i.u, %bb.g ], [ %i.ec, %bb.k ]
  %i.go = phi ptr [ %i.t, %bb.g ], [ %i.eb, %bb.k ]
  %i.gp = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.go, ptr %i.gp, align 16, !tbaa !17
  %i.gq = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.gn, ptr %i.gq, align 16, !tbaa !17
  %i.gr = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !17
  %i.gt = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.gs, ptr %i.gt, align 16, !tbaa !17
  %i.gu = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !17
  %i.gw = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.gv, ptr %i.gw, align 16, !tbaa !17
  %i.gx = load ptr, ptr %i.ae, align 8, !tbaa !17 ; 2 uses
  %i.gy = load ptr, ptr %i.ag, align 8, !tbaa !17 ; 2 uses
  %i.gz = load i32, ptr %6, align 16, !tbaa !18
  call fastcc void @sgr_box5_row_v(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %i.gx, ptr noundef %i.gy, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef %i.gx, ptr noundef %i.gy, i32 noundef %4, i32 noundef %i.gz, i32 noundef %8, i32 noundef 25, i32 noundef 164)
  call fastcc void @rotate5_x2(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  %i.ha = load ptr, ptr %i.aq, align 8, !tbaa !17 ; 2 uses
  %i.hb = load ptr, ptr %i.as, align 8, !tbaa !17 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !18
  call fastcc void @sgr_box3_row_v(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef %i.ha, ptr noundef %i.hb, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef %i.ha, ptr noundef %i.hb, i32 noundef %4, i32 noundef %i.hd, i32 noundef %8, i32 noundef 9, i32 noundef 455)
  call fastcc void @rotate(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i32 noundef 3)
  %i.he = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.hf = load i16, ptr %i.he, align 8, !tbaa !18
  %i.hg = sext i16 %i.hf to i32
  %i.hh = getelementptr inbounds nuw i8, ptr %6, i64 10
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !18
  %i.hj = sext i16 %i.hi to i32
  call fastcc void @sgr_finish_mix(ptr noundef %i.a, i64 noundef %1, ptr noundef %i.l, ptr noundef %i.m, ptr noundef %i.p, ptr noundef %i.q, i32 noundef %4, i32 noundef 2, i32 noundef %i.hg, i32 noundef %i.hj, i32 noundef %8)
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.loopexit
  %i.hk = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.hl = load ptr, ptr %i.hk, align 16, !tbaa !17 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.hl, ptr %i.hm, align 8, !tbaa !17
  %i.hn = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.hl, ptr %i.hn, align 16, !tbaa !17
  %i.ho = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.hp = load ptr, ptr %i.ho, align 16, !tbaa !17 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.hp, ptr %i.hq, align 8, !tbaa !17
  %i.hr = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.hp, ptr %i.hr, align 16, !tbaa !17
  %i.hs = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !17
  %i.hu = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.ht, ptr %i.hu, align 16, !tbaa !17
  %i.hv = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !17
  %i.hx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.hw, ptr %i.hx, align 16, !tbaa !17
  %i.hy = load ptr, ptr %i.ae, align 8, !tbaa !17 ; 2 uses
  %i.hz = load ptr, ptr %i.ag, align 8, !tbaa !17 ; 2 uses
  %i.ia = load i32, ptr %6, align 16, !tbaa !18
  call fastcc void @sgr_box5_row_v(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %i.hy, ptr noundef %i.hz, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef %i.hy, ptr noundef %i.hz, i32 noundef %4, i32 noundef %i.ia, i32 noundef %8, i32 noundef 25, i32 noundef 164)
  call fastcc void @rotate5_x2(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  %i.ib = load ptr, ptr %i.aq, align 8, !tbaa !17 ; 2 uses
  %i.ic = load ptr, ptr %i.as, align 8, !tbaa !17 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !18
  call fastcc void @sgr_box3_row_v(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef %i.ib, ptr noundef %i.ic, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef %i.ib, ptr noundef %i.ic, i32 noundef %4, i32 noundef %i.ie, i32 noundef %8, i32 noundef 9, i32 noundef 455)
  call fastcc void @rotate(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i32 noundef 3)
  call fastcc void @rotate(ptr noundef %i.p, ptr noundef %i.q, i32 noundef 4)
  br label %bb.s

bb.r:                                             ; preds = %bb.e, %bb.b
  %i.if = phi i32 [ %i.ch, %bb.e ], [ %i.bl, %bb.b ]
  %i.ig = phi ptr [ %i.c, %bb.e ], [ %i.u, %bb.b ]
  %i.ih = phi ptr [ %i.b, %bb.e ], [ %i.t, %bb.b ]
  %i.ii = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.ih, ptr %i.ii, align 16, !tbaa !17
  %i.ij = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.ig, ptr %i.ij, align 16, !tbaa !17
  %i.ik = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !17
  %i.im = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.il, ptr %i.im, align 16, !tbaa !17
  %i.in = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !17
  %i.ip = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.io, ptr %i.ip, align 16, !tbaa !17
  %i.iq = load i32, ptr %6, align 16, !tbaa !18
  call fastcc void @sgr_box5_row_v(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.af, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.af, i32 noundef %4, i32 noundef %i.iq, i32 noundef %8, i32 noundef 25, i32 noundef 164)
  call fastcc void @rotate5_x2(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  call fastcc void @rotate(ptr noundef %i.l, ptr noundef %i.m, i32 noundef 2)
  %i.ir = load ptr, ptr %i.aq, align 8, !tbaa !17 ; 2 uses
  %i.is = load ptr, ptr %i.as, align 8, !tbaa !17 ; 2 uses
  call fastcc void @sgr_box3_row_v(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef %i.ir, ptr noundef %i.is, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef %i.ir, ptr noundef %i.is, i32 noundef %4, i32 noundef %i.if, i32 noundef %8, i32 noundef 9, i32 noundef 455)
  call fastcc void @rotate(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i32 noundef 3)
end_hunk_1
