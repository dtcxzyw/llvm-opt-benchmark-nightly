Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/looprestoration_tmpl?download=true
inline.NumInlined: 132
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 28
begin_hunk_0_@wiener_c:bb.a
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
  %.40..40..40..sroa_idx1092.a = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.40..40..40..pre = load ptr, ptr %.40..40..40..sroa_idx1092.a, align 8, !tbaa !11
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
  %i.jk = getelementptr inbounds i8, ptr %i.jj, i64 %1
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
  %scevgep546 = getelementptr i8, ptr %6, i64 30
  %scevgep552 = getelementptr i8, ptr %i.c, i64 %i.kc
  %.8..8..8..phi.trans.insert.i208.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.16..16..16..phi.trans.insert56.i210.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.24..24..24..phi.trans.insert58.i212.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.32..32..32..phi.trans.insert60.i214.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.40..40..40..sroa_idx1096 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %min.iters.check592 = icmp ult i32 %4, 8
  %stride.check = icmp slt i64 %1, 0
  %bound1557.a = icmp ult ptr %.0157, %scevgep546
  %bound1557 = icmp ult ptr %i.l, %scevgep
  %found.conflict558 = and i1 %bound1557.a, %bound1557
  %i.ke = or i1 %stride.check, %found.conflict558
  %bound0586 = icmp ult ptr %.0157, %scevgep552
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
  %.pn = phi ptr [ %.1, %wiener_filter_hv.exit222 ], [ %i.jk, %bb.j ]
  %.1 = getelementptr inbounds i8, ptr %.pn, i64 %1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call fastcc void @wiener_filter_h(ptr noundef nonnull %i.c, ptr noundef nonnull readonly %.1160, ptr noundef readonly %.1, ptr noundef readonly %6, i32 noundef %4, i32 noundef %7, i32 noundef %8)
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
  %conflict.rdx565 = or i1 %conflict.rdx560, %found.conflict563
  %bound0566 = icmp ult ptr %.0157, %scevgep548
  %bound1567 = icmp ult ptr %.16..16..16..pre57.i211, %scevgep
  %found.conflict568 = and i1 %bound0566, %bound1567
  %conflict.rdx570 = or i1 %conflict.rdx565, %found.conflict568
  %bound0571 = icmp ult ptr %.0157, %scevgep549
  %bound1572 = icmp ult ptr %.24..24..24..pre59.i213, %scevgep
  %found.conflict573 = and i1 %bound0571, %bound1572
  %conflict.rdx575.a = or i1 %conflict.rdx570, %found.conflict573
  %bound0576.a = icmp ult ptr %.0157, %scevgep550
  %bound1577.a = icmp ult ptr %.32..32..32..pre61.i215, %scevgep
  %found.conflict578.a = and i1 %bound0576.a, %bound1577.a
  %conflict.rdx580 = or i1 %conflict.rdx575.a, %found.conflict578.a
  %bound0581 = icmp ult ptr %.0157, %scevgep551
  %bound1582 = icmp ult ptr %.40..40..40..pre63.i217, %scevgep
  %found.conflict583 = and i1 %bound0581, %bound1582
  %conflict.rdx585 = or i1 %conflict.rdx580, %found.conflict583
  %conflict.rdx590 = or i1 %conflict.rdx585, %found.conflict588
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
  %scevgep629.a = getelementptr i8, ptr %i.on, i64 %i.ok ; 7 uses
  %scevgep630 = getelementptr i8, ptr %.0..0..0.318, i64 %i.ok
  %scevgep631 = getelementptr i8, ptr %6, i64 30
  %scevgep632 = getelementptr i8, ptr %.8..8..8..pre55.i231, i64 %i.ok
  %scevgep633 = getelementptr i8, ptr %.16..16..16..pre57.i233, i64 %i.ok
  %scevgep634 = getelementptr i8, ptr %.24..24..24..pre59.i235, i64 %i.ok
  %scevgep635 = getelementptr i8, ptr %.32..32..32..pre61.i237, i64 %i.ok
  %scevgep636 = getelementptr i8, ptr %.40..40..40..pre63.i239, i64 %i.ok
end_hunk_0
