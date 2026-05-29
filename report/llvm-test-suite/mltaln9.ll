inline.NumInlined: 16
inline.NumDeleted: 4
begin_hunk_0_@upg2:bb.a
.epil.preheader280:                               ; preds = %.lr.ph192.unr-lcssa, %.lr.ph190
  %indvars.iv232.epil.init = phi i64 [ 0, %.lr.ph190 ], [ %indvars.iv.next233.1, %.lr.ph192.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod284)
  %i.eu = load ptr, ptr %i.es, align 8, !tbaa !12
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv232.epil.init
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !8
  %i.ex = icmp sgt i8 %i.ew, 0
  %i.ey = zext i1 %i.ex to i8
  %i.ez = load ptr, ptr %i.et, align 8, !tbaa !12
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %indvars.iv232.epil.init ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !8
  %i.fc = add i8 %i.fb, %i.ey
  store i8 %i.fc, ptr %i.fa, align 1, !tbaa !8
  br label %.lr.ph192

.lr.ph192:                                        ; preds = %.lr.ph192.unr-lcssa, %.epil.preheader280
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.dc ; 5 uses
  br i1 %i.ah, label %.epil.preheader287, label %.lr.ph192.new

.lr.ph190.new:                                    ; preds = %.lr.ph190, %.lr.ph190.new
  %indvars.iv232 = phi i64 [ %indvars.iv.next233.1, %.lr.ph190.new ], [ 0, %.lr.ph190 ] ; 4 uses
  %niter286 = phi i64 [ %niter286.next.1, %.lr.ph190.new ], [ 0, %.lr.ph190 ]
  %i.fe = load ptr, ptr %i.es, align 8, !tbaa !12
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %indvars.iv232
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !8
  %i.fh = icmp sgt i8 %i.fg, 0
  %i.fi = zext i1 %i.fh to i8
  %i.fj = load ptr, ptr %i.et, align 8, !tbaa !12
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %indvars.iv232 ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !8
  %i.fm = add i8 %i.fl, %i.fi
  store i8 %i.fm, ptr %i.fk, align 1, !tbaa !8
  %indvars.iv.next233 = or disjoint i64 %indvars.iv232, 1 ; 2 uses
  %i.fn = load ptr, ptr %i.es, align 8, !tbaa !12
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %indvars.iv.next233
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !8
  %i.fq = icmp sgt i8 %i.fp, 0
  %i.fr = zext i1 %i.fq to i8
  %i.fs = load ptr, ptr %i.et, align 8, !tbaa !12
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %indvars.iv.next233 ; 2 uses
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !8
  %i.fv = add i8 %i.fu, %i.fr
  store i8 %i.fv, ptr %i.ft, align 1, !tbaa !8
  %indvars.iv.next233.1 = add nuw nsw i64 %indvars.iv232, 2 ; 2 uses
  %niter286.next.1 = add i64 %niter286, 2         ; 2 uses
  %niter286.ncmp.1 = icmp eq i64 %niter286.next.1, %unroll_iter285
  br i1 %niter286.ncmp.1, label %.lr.ph192.unr-lcssa, label %.lr.ph190.new, !llvm.loop !93

.lr.ph194.unr-lcssa:                              ; preds = %.lr.ph192.new
  br i1 %lcmp.mod290.not, label %.lr.ph194, label %.epil.preheader287

.epil.preheader287:                               ; preds = %.lr.ph194.unr-lcssa, %.lr.ph192
  %indvars.iv237.epil.init = phi i64 [ 0, %.lr.ph192 ], [ %indvars.iv.next238.3, %.lr.ph194.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod291)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader287
  %indvars.iv237.epil = phi i64 [ %indvars.iv237.epil.init, %.epil.preheader287 ], [ %indvars.iv.next238.epil, %bb.q ] ; 2 uses
  %epil.iter289 = phi i64 [ 0, %.epil.preheader287 ], [ %epil.iter289.next, %bb.q ]
  %i.fw = load ptr, ptr %i.fd, align 8, !tbaa !12
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %indvars.iv237.epil
  store i8 0, ptr %i.fx, align 1, !tbaa !8
  %indvars.iv.next238.epil = add nuw nsw i64 %indvars.iv237.epil, 1
  %epil.iter289.next = add i64 %epil.iter289, 1   ; 2 uses
  %epil.iter289.cmp.not = icmp eq i64 %epil.iter289.next, %xtraiter288
  br i1 %epil.iter289.cmp.not, label %.lr.ph194, label %bb.q, !llvm.loop !94

.lr.ph194:                                        ; preds = %bb.q, %.lr.ph194.unr-lcssa
  %i.fy = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ek
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !52
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %i.dc
  br label %bb.r

.lr.ph192.new:                                    ; preds = %.lr.ph192, %.lr.ph192.new
  %indvars.iv237 = phi i64 [ %indvars.iv.next238.3, %.lr.ph192.new ], [ 0, %.lr.ph192 ] ; 5 uses
  %niter293 = phi i64 [ %niter293.next.3, %.lr.ph192.new ], [ 0, %.lr.ph192 ]
  %i.gb = load ptr, ptr %i.fd, align 8, !tbaa !12
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %indvars.iv237
  store i8 0, ptr %i.gc, align 1, !tbaa !8
  %i.gd = load ptr, ptr %i.fd, align 8, !tbaa !12
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv237
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 1
  store i8 0, ptr %i.gf, align 1, !tbaa !8
  %i.gg = load ptr, ptr %i.fd, align 8, !tbaa !12
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %indvars.iv237
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 2
  store i8 0, ptr %i.gi, align 1, !tbaa !8
  %i.gj = load ptr, ptr %i.fd, align 8, !tbaa !12
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %indvars.iv237
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 3
  store i8 0, ptr %i.gl, align 1, !tbaa !8
  %indvars.iv.next238.3 = add nuw nsw i64 %indvars.iv237, 4 ; 2 uses
  %niter293.next.3 = add i64 %niter293, 4         ; 2 uses
  %niter293.ncmp.3 = icmp eq i64 %niter293.next.3, %unroll_iter292
  br i1 %niter293.ncmp.3, label %.lr.ph194.unr-lcssa, label %.lr.ph192.new, !llvm.loop !95

bb.r:                                             ; preds = %.lr.ph194, %bb.t
  %.8193 = phi i32 [ 0, %.lr.ph194 ], [ %i.he, %bb.t ] ; 7 uses
  %.not148 = icmp eq i32 %.8193, %.2134.lcssa
  %.not149 = icmp eq i32 %.8193, %.2131.lcssa
  %or.cond = select i1 %.not148, i1 true, i1 %.not149
  br i1 %or.cond, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gm = tail call i32 @llvm.smin.i32(i32 %.8193, i32 %.2134.lcssa)
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds [8 x i8], ptr %1, i64 %i.gn
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !52
  %i.gq = tail call i32 @llvm.smax.i32(i32 %.8193, i32 %.2134.lcssa)
  %i.gr = zext nneg i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.gr ; 2 uses
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !24
  %i.gu = tail call i32 @llvm.smin.i32(i32 %.8193, i32 %.2131.lcssa)
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [8 x i8], ptr %1, i64 %i.gv
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !52
  %i.gy = tail call i32 @llvm.smax.i32(i32 %.8193, i32 %.2131.lcssa)
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.gz ; 2 uses
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !24
  %i.hc = fadd double %i.gt, %i.hb
  %i.hd = fmul double %i.hc, 5.000000e-01
  store double %i.hd, ptr %i.gs, align 8, !tbaa !24
  store double 9.999000e+03, ptr %i.ha, align 8, !tbaa !24
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  store double 9.999000e+03, ptr %i.ga, align 8, !tbaa !24
  %i.he = add nuw nsw i32 %.8193, 1               ; 2 uses
  %exitcond242.not = icmp eq i32 %i.he, %0
  br i1 %exitcond242.not, label %._crit_edge195, label %bb.r, !llvm.loop !96

._crit_edge195:                                   ; preds = %bb.t
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1 ; 2 uses
  %exitcond247.not = icmp eq i64 %indvars.iv.next244, %wide.trip.count246
  br i1 %exitcond247.not, label %._crit_edge197, label %.lr.ph174.preheader, !llvm.loop !97

._crit_edge197:                                   ; preds = %._crit_edge195, %bb.c, %.preheader153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void
}

declare ptr @AllocateCharMtx(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local void @loadtree(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3, ptr noundef readnone captures(none) %4) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.b = tail call noalias ptr @fopen(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.d = tail call i64 @fwrite(ptr nonnull @.str.10, i64 23, i64 1, ptr %i.c) #30 ; 0 uses
  tail call void @exit(i32 noundef 1) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @loadtree.hist, align 8, !tbaa !89
  %.not201 = icmp eq ptr %i.e, null
  br i1 %.not201, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr @njob, align 4, !tbaa !4
  %i.g = tail call ptr @AllocateIntVec(i32 noundef %i.f) #33
  store ptr %i.g, ptr @loadtree.hist, align 8, !tbaa !89
  %i.h = load i32, ptr @njob, align 4, !tbaa !4
  %i.i = sext i32 %i.h to i64
  %i.j = mul nsw i64 %i.i, 24
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #34
  store ptr %i.k, ptr @loadtree.ac, align 8, !tbaa !98
  %i.l = load i32, ptr @njob, align 4, !tbaa !4
  %i.m = tail call ptr @AllocateIntVec(i32 noundef %i.l) #33
  store ptr %i.m, ptr @loadtree.nmemar, align 8, !tbaa !89
  %i.n = load i32, ptr @njob, align 4, !tbaa !4
  %i.o = tail call ptr @AllocateFloatVec(i32 noundef %i.n) #33
  %i.p = load i32, ptr @njob, align 4, !tbaa !4
  %i.q = tail call ptr @AllocateIntVec(i32 noundef %i.p) #33
  %i.r = load i32, ptr @njob, align 4, !tbaa !4
  %i.s = mul nsw i32 %i.r, 50
  %i.t = tail call ptr @AllocateCharVec(i32 noundef %i.s) #33
  store ptr %i.t, ptr @loadtree.treetmp, align 8, !tbaa !12
  %i.u = tail call ptr @AllocateCharVec(i32 noundef 30) #33
  store ptr %i.u, ptr @loadtree.nametmp, align 8, !tbaa !12
  %i.v = load i32, ptr @njob, align 4, !tbaa !4   ; 2 uses
  %i.w = mul nsw i32 %i.v, 50
  %i.x = tail call ptr @AllocateCharMtx(i32 noundef %i.v, i32 noundef %i.w) #33
  store ptr %i.x, ptr @loadtree.tree, align 8, !tbaa !77
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0170 = phi ptr [ null, %bb.c ], [ %i.q, %bb.d ]
  %.0 = phi ptr [ null, %bb.c ], [ %i.o, %bb.d ]  ; 2 uses
  %i.y = icmp sgt i32 %0, 0
  br i1 %i.y, label %.preheader218.lr.ph, label %._crit_edge226.thread

.preheader218.lr.ph:                              ; preds = %bb.e
  %i.z = tail call ptr @__ctype_b_loc() #35       ; 2 uses
  %wide.trip.count = zext nneg i32 %0 to i64      ; 5 uses
  br label %.preheader218

.preheader218:                                    ; preds = %.preheader218.lr.ph, %bb.g
  %indvars.iv259 = phi i64 [ 0, %.preheader218.lr.ph ], [ %indvars.iv.next260, %bb.g ] ; 3 uses
  %i.aa = load ptr, ptr @loadtree.nametmp, align 8, !tbaa !12 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.aa, i8 0, i64 30, i1 false), !tbaa !8
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv259 ; 2 uses
  br label %bb.f

.lr.ph.preheader:                                 ; preds = %bb.g
  %.pre278 = load ptr, ptr @loadtree.ac, align 8, !tbaa !98 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ac = icmp eq i32 %0, 1
  br i1 %i.ac, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %i.ad = load ptr, ptr @loadtree.ac, align 8, !tbaa !98 ; 8 uses
  br label %.lr.ph

bb.f:                                             ; preds = %bb.f, %.preheader218
  %indvars.iv = phi i64 [ 0, %.preheader218 ], [ %indvars.iv.next.1, %bb.f ] ; 4 uses
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !100
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8   ; 2 uses
  %i.ai = sext i8 %i.ah to i64
  %i.aj = getelementptr inbounds [2 x i8], ptr %i.ae, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !102
  %i.al = and i16 %i.ak, 8
  %.not211 = icmp eq i16 %i.al, 0
  %spec.select = select i1 %.not211, i8 95, i8 %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv
  store i8 %spec.select, ptr %i.am, align 1, !tbaa !8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.an = load ptr, ptr %i.z, align 8, !tbaa !100
  %i.ao = load ptr, ptr %i.ab, align 8, !tbaa !12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv.next
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !8   ; 2 uses
  %i.ar = sext i8 %i.aq to i64
  %i.as = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !102
  %i.au = and i16 %i.at, 8
  %.not211.1 = icmp eq i16 %i.au, 0
  %spec.select.1 = select i1 %.not211.1, i8 95, i8 %i.aq
  %i.av = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv.next
  store i8 %spec.select.1, ptr %i.av, align 1, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 30
  br i1 %exitcond.not.1, label %bb.g, label %bb.f, !llvm.loop !104

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aa, i64 30
  store i8 0, ptr %i.aw, align 1, !tbaa !8
  %i.ax = load ptr, ptr @loadtree.tree, align 8, !tbaa !77
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv259
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !12
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.bb = trunc nuw nsw i64 %indvars.iv.next260 to i32
  %i.bc = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.az, ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.bb, ptr noundef nonnull %i.ba) #33 ; 0 uses
  %exitcond262.not = icmp eq i64 %indvars.iv.next260, %wide.trip.count
  br i1 %exitcond262.not, label %.lr.ph.preheader, label %.preheader218, !llvm.loop !105

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.bd = phi ptr [ %.pre278, %.lr.ph.preheader.new ], [ %i.ad, %.lr.ph ]
  %indvars.iv263 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next264.1, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %indvars.iv263 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !106
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %indvars.iv263 ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !108
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %indvars.iv263
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = trunc nuw nsw i64 %indvars.iv263 to i32
  store i32 %i.bl, ptr %i.bk, align 8, !tbaa !109
  %indvars.iv.next264 = or disjoint i64 %indvars.iv263, 1 ; 4 uses
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %indvars.iv.next264 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !106
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %indvars.iv.next264 ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -24
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !108
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %indvars.iv.next264
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = trunc nuw nsw i64 %indvars.iv.next264 to i32
  store i32 %i.bt, ptr %i.bs, align 8, !tbaa !109
  %indvars.iv.next264.1 = add nuw nsw i64 %indvars.iv263, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph225.unr-lcssa, label %.lr.ph, !llvm.loop !110

._crit_edge226.thread:                            ; preds = %bb.e
  %.pre278292 = load ptr, ptr @loadtree.ac, align 8, !tbaa !98
  %i.bu = sext i32 %0 to i64
  %i.bv = getelementptr [24 x i8], ptr %.pre278292, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 -24
  store ptr null, ptr %i.bw, align 8, !tbaa !106
  %i.bx = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc293 = tail call i32 @fputc(i32 10, ptr %i.bx) ; 0 uses
  br label %._crit_edge253

.lr.ph225.unr-lcssa:                              ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph225, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph225.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi ptr [ %.pre278, %.lr.ph.preheader ], [ %i.ad, %.lr.ph225.unr-lcssa ]
  %indvars.iv263.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next264.1, %.lr.ph225.unr-lcssa ] ; 4 uses
  %lcmp.mod310 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod310)
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %.epil.init, i64 %indvars.iv263.epil.init ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !106
  %i.ca = load ptr, ptr @loadtree.ac, align 8, !tbaa !98 ; 3 uses
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %indvars.iv263.epil.init ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -24
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !108
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %indvars.iv263.epil.init
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = trunc nuw nsw i64 %indvars.iv263.epil.init to i32
  store i32 %i.cg, ptr %i.cf, align 8, !tbaa !109
  br label %.lr.ph225

.lr.ph225:                                        ; preds = %.lr.ph225.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa308 = phi ptr [ %i.ad, %.lr.ph225.unr-lcssa ], [ %i.ca, %.lr.ph.epil.preheader ]
  %i.ch = add nsw i32 %0, -1                      ; 2 uses
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %.lcssa308, i64 %i.ci
  store ptr null, ptr %i.cj, align 8, !tbaa !106
  %i.ck = load ptr, ptr @loadtree.hist, align 8, !tbaa !89 ; 7 uses
  %i.cl = load ptr, ptr @loadtree.nmemar, align 8, !tbaa !89 ; 7 uses
  %wide.trip.count271 = zext nneg i32 %0 to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %0, 8
  %i.cm = ptrtoaddr ptr %i.cl to i64
  %i.cn = ptrtoaddr ptr %i.ck to i64
  %i.co = sub i64 %i.cm, %i.cn
  %diff.check = icmp ult i64 %i.co, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph225
  %n.vec = and i64 %wide.trip.count271, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %index ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store <4 x i32> splat (i32 -1), ptr %i.cp, align 4, !tbaa !4
  store <4 x i32> splat (i32 -1), ptr %i.cq, align 4, !tbaa !4
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %index ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store <4 x i32> splat (i32 1), ptr %i.cr, align 4, !tbaa !4
  store <4 x i32> splat (i32 1), ptr %i.cs, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !111

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count271
  br i1 %cmp.n, label %._crit_edge226, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph225, %middle.block
  %indvars.iv268.ph = phi i64 [ 0, %.lr.ph225 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter311 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod312.not = icmp eq i64 %xtraiter311, 0
  br i1 %lcmp.mod312.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv268.prol = phi i64 [ %indvars.iv.next269.prol, %scalar.ph.prol ], [ %indvars.iv268.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv268.prol
  store i32 -1, ptr %i.cu, align 4, !tbaa !4
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv268.prol
  store i32 1, ptr %i.cv, align 4, !tbaa !4
  %indvars.iv.next269.prol = add nuw nsw i64 %indvars.iv268.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter311
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !114

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv268.unr = phi i64 [ %indvars.iv268.ph, %scalar.ph.preheader ], [ %indvars.iv.next269.prol, %scalar.ph.prol ]
  %i.cw = sub nsw i64 %indvars.iv268.ph, %wide.trip.count
  %i.cx = icmp ugt i64 %i.cw, -4
  br i1 %i.cx, label %._crit_edge226, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv268 = phi i64 [ %indvars.iv.next269.3, %scalar.ph ], [ %indvars.iv268.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv268
  store i32 -1, ptr %i.cy, align 4, !tbaa !4
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv268
  store i32 1, ptr %i.cz, align 4, !tbaa !4
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1 ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv.next269
  store i32 -1, ptr %i.da, align 4, !tbaa !4
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.next269
  store i32 1, ptr %i.db, align 4, !tbaa !4
  %indvars.iv.next269.1 = add nuw nsw i64 %indvars.iv268, 2 ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv.next269.1
  store i32 -1, ptr %i.dc, align 4, !tbaa !4
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.next269.1
  store i32 1, ptr %i.dd, align 4, !tbaa !4
  %indvars.iv.next269.2 = add nuw nsw i64 %indvars.iv268, 3 ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv.next269.2
  store i32 -1, ptr %i.de, align 4, !tbaa !4
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.next269.2
  store i32 1, ptr %i.df, align 4, !tbaa !4
  %indvars.iv.next269.3 = add nuw nsw i64 %indvars.iv268, 4 ; 2 uses
  %exitcond272.not.3 = icmp eq i64 %indvars.iv.next269.3, %wide.trip.count271
  br i1 %exitcond272.not.3, label %._crit_edge226, label %scalar.ph, !llvm.loop !115

._crit_edge226:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.dg = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %i.dg) ; 0 uses
  %.not298 = icmp eq i32 %0, 1
  br i1 %.not298, label %._crit_edge253, label %.lr.ph252

.lr.ph252:                                        ; preds = %._crit_edge226
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %wide.trip.count276 = zext nneg i32 %i.ch to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph252, %bb.ab
  %indvars.iv273 = phi i64 [ 0, %.lr.ph252 ], [ %indvars.iv.next274, %bb.ab ] ; 4 uses
  %i.di = trunc nuw nsw i64 %indvars.iv273 to i32 ; 3 uses
  %i.dj = urem i32 %i.di, 10
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dl = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.dm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dl, ptr noundef nonnull @.str.13, i32 noundef %i.di, i32 noundef %0) #31 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv273 ; 3 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !19 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  store <2 x float> splat (float -1.000000e+00), ptr %i.do, align 4, !tbaa !21
  %i.dq = call ptr @fgets(ptr noundef nonnull @loadtreeoneline.gett, i32 noundef 999, ptr noundef nonnull %i.b) ; 0 uses
  %i.dr = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull @loadtreeoneline.gett, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.a, ptr noundef nonnull %i.dh, ptr noundef nonnull %i.do, ptr noundef nonnull %i.dp) #33 ; 0 uses
  %i.ds = load i32, ptr %i.a, align 4, !tbaa !4   ; 2 uses
  %i.dt = add nsw i32 %i.ds, -1                   ; 3 uses
  store i32 %i.dt, ptr %i.a, align 4, !tbaa !4
  %i.du = load i32, ptr %i.dh, align 4, !tbaa !4  ; 2 uses
  %i.dv = add nsw i32 %i.du, -1                   ; 3 uses
  store i32 %i.dv, ptr %i.dh, align 4, !tbaa !4
  %.not.i = icmp slt i32 %i.ds, %i.du
  br i1 %.not.i, label %loadtreeoneline.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dw = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.dx = call i64 @fwrite(ptr nonnull @.str.39, i64 21, i64 1, ptr %i.dw) #30 ; 0 uses
  call void @exit(i32 noundef 1) #32
  unreachable

loadtreeoneline.exit:                             ; preds = %bb.j
  %i.dy = load ptr, ptr %i.dn, align 8, !tbaa !19 ; 3 uses
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !21 ; 2 uses
  %i.ea = fcmp oeq float %i.dz, -1.000000e+00
  br i1 %i.ea, label %bb.m, label %bb.l

bb.l:                                             ; preds = %loadtreeoneline.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 4 ; 2 uses
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !21 ; 2 uses
  %i.ed = fcmp oeq float %i.ec, -1.000000e+00
  br i1 %i.ed, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %loadtreeoneline.exit
  %i.ee = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ef = call i64 @fwrite(ptr nonnull @.str.14, i64 37, i64 1, ptr %i.ee) #30 ; 0 uses
  call void @exit(i32 noundef 1) #32
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.eg = fcmp olt float %i.dz, 0.000000e+00
  br i1 %i.eg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store float 0.000000e+00, ptr %i.dy, align 4, !tbaa !21
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.eh = fcmp olt float %i.ec, 0.000000e+00
  br i1 %i.eh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store float 0.000000e+00, ptr %i.eb, align 4, !tbaa !21
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ei = load ptr, ptr @loadtree.hist, align 8, !tbaa !89 ; 2 uses
  %i.ej = sext i32 %i.dt to i64                   ; 5 uses
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.ej ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !4  ; 2 uses
  %i.em = load ptr, ptr @loadtree.nmemar, align 8, !tbaa !89 ; 2 uses
  %i.en = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.ej ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !4  ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv273 ; 3 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !87
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !89
  %i.es = add nsw i32 %i.eo, 1
  %i.et = sext i32 %i.es to i64
  %i.eu = shl nsw i64 %i.et, 2
  %i.ev = call ptr @realloc(ptr noundef %i.er, i64 noundef %i.eu) #36 ; 5 uses
  %i.ew = load ptr, ptr %i.ep, align 8, !tbaa !87 ; 2 uses
  store ptr %i.ev, ptr %i.ew, align 8, !tbaa !89
  %i.ex = icmp eq i32 %i.el, -1
  br i1 %i.ex, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  store i32 %i.dt, ptr %i.ev, align 4, !tbaa !4
  store i32 -1, ptr %i.ey, align 4, !tbaa !4
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ez = sext i32 %i.el to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ez
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !87 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !89 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !89 ; 3 uses
  %i.ff = load i32, ptr %i.fc, align 4, !tbaa !4  ; 3 uses
  %i.fg = load i32, ptr %i.fe, align 4, !tbaa !4  ; 3 uses
  %i.fh = icmp sgt i32 %i.ff, %i.fg               ; 2 uses
  %i.fi = call i32 @llvm.smin.i32(i32 %i.ff, i32 %i.fg) ; 2 uses
  %i.fj = call i32 @llvm.smax.i32(i32 %i.ff, i32 %i.fg)
  %.212 = select i1 %i.fh, ptr %i.fc, ptr %i.fe   ; 2 uses
  %.not202227 = icmp eq i32 %i.fi, -1
  br i1 %.not202227, label %.preheader215, label %.lr.ph231.preheader

.lr.ph231.preheader:                              ; preds = %bb.t
  %. = select i1 %i.fh, ptr %i.fe, ptr %i.fc
  br label %.lr.ph231

.preheader215.loopexit:                           ; preds = %.lr.ph231
  %.pre = load i32, ptr %.212, align 4, !tbaa !4
  br label %.preheader215

.preheader215:                                    ; preds = %.preheader215.loopexit, %bb.t
  %i.fk = phi i32 [ %i.fj, %bb.t ], [ %.pre, %.preheader215.loopexit ] ; 2 uses
  %.0183.lcssa = phi ptr [ %i.ev, %bb.t ], [ %i.fn, %.preheader215.loopexit ] ; 2 uses
  %.not203232 = icmp eq i32 %i.fk, -1
  br i1 %.not203232, label %._crit_edge236, label %.lr.ph235

.lr.ph231:                                        ; preds = %.lr.ph231.preheader, %.lr.ph231
  %i.fl = phi i32 [ %i.fo, %.lr.ph231 ], [ %i.fi, %.lr.ph231.preheader ]
  %.0180229 = phi ptr [ %i.fm, %.lr.ph231 ], [ %., %.lr.ph231.preheader ]
  %.0183228 = phi ptr [ %i.fn, %.lr.ph231 ], [ %i.ev, %.lr.ph231.preheader ] ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.0180229, i64 4 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.0183228, i64 4 ; 2 uses
  store i32 %i.fl, ptr %.0183228, align 4, !tbaa !4
  %i.fo = load i32, ptr %i.fm, align 4, !tbaa !4  ; 2 uses
  %.not202 = icmp eq i32 %i.fo, -1
  br i1 %.not202, label %.preheader215.loopexit, label %.lr.ph231, !llvm.loop !116

.lr.ph235:                                        ; preds = %.preheader215, %.lr.ph235
  %i.fp = phi i32 [ %i.fs, %.lr.ph235 ], [ %i.fk, %.preheader215 ]
  %.1181234 = phi ptr [ %i.fq, %.lr.ph235 ], [ %.212, %.preheader215 ]
end_hunk_0
begin_hunk_1_@loadtree:bb.a
  %.2182240 = phi ptr [ %i.gx, %.lr.ph242 ], [ %.213, %.lr.ph242.preheader ]
  %.2185239 = phi ptr [ %i.gy, %.lr.ph242 ], [ %i.gd, %.lr.ph242.preheader ] ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.2182240, i64 4 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.2185239, i64 4 ; 2 uses
  store i32 %i.gw, ptr %.2185239, align 4, !tbaa !4
  %i.gz = load i32, ptr %i.gx, align 4, !tbaa !4  ; 2 uses
  %.not205 = icmp eq i32 %i.gz, -1
  br i1 %.not205, label %.preheader.loopexit, label %.lr.ph242, !llvm.loop !118

.lr.ph247:                                        ; preds = %.preheader, %.lr.ph247
  %i.ha = phi i32 [ %i.hd, %.lr.ph247 ], [ %i.gv, %.preheader ]
  %.3246 = phi ptr [ %i.hb, %.lr.ph247 ], [ %.214, %.preheader ]
  %.3186245 = phi ptr [ %i.hc, %.lr.ph247 ], [ %.2185.lcssa, %.preheader ] ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.3246, i64 4 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.3186245, i64 4 ; 2 uses
  store i32 %i.ha, ptr %.3186245, align 4, !tbaa !4
  %i.hd = load i32, ptr %i.hb, align 4, !tbaa !4  ; 2 uses
  %.not206 = icmp eq i32 %i.hd, -1
  br i1 %.not206, label %._crit_edge248, label %.lr.ph247, !llvm.loop !119

._crit_edge248:                                   ; preds = %.lr.ph247, %.preheader
  %.3186.lcssa = phi ptr [ %.2185.lcssa, %.preheader ], [ %i.hc, %.lr.ph247 ]
  store i32 -1, ptr %.3186.lcssa, align 4, !tbaa !4
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge248, %bb.x
  store i32 %i.di, ptr %i.ek, align 4, !tbaa !4
  %i.he = add nsw i32 %i.fv, %i.eo
  store i32 %i.he, ptr %i.en, align 4, !tbaa !4
  %i.hf = getelementptr inbounds [4 x i8], ptr %.0, i64 %i.ej
  store float 9.999000e+02, ptr %i.hf, align 4, !tbaa !21
  %i.hg = load ptr, ptr @loadtree.treetmp, align 8, !tbaa !12
  %i.hh = load ptr, ptr @loadtree.tree, align 8, !tbaa !77 ; 2 uses
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.hh, i64 %i.ej
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !12
  %i.hk = load ptr, ptr %i.dn, align 8, !tbaa !19 ; 2 uses
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !21
  %i.hm = fpext float %i.hl to double
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.hh, i64 %i.ft
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !12
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !21
  %i.hr = fpext float %i.hq to double
  %i.hs = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.hg, ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef %i.hj, double noundef %i.hm, ptr noundef %i.ho, double noundef %i.hr) #33 ; 0 uses
  %i.ht = load ptr, ptr @loadtree.tree, align 8, !tbaa !77
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.ht, i64 %i.ej
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !12
  %i.hw = load ptr, ptr @loadtree.treetmp, align 8, !tbaa !12
  %i.hx = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.hv, ptr noundef nonnull dereferenceable(1) %i.hw) #33 ; 0 uses
  %i.hy = load ptr, ptr @loadtree.ac, align 8, !tbaa !98
  %i.hz = getelementptr inbounds [24 x i8], ptr %i.hy, i64 %i.ft ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !108 ; 2 uses
  %i.ic = load ptr, ptr %i.hz, align 8, !tbaa !106 ; 3 uses
  store ptr %i.ic, ptr %i.ib, align 8, !tbaa !106
  %.not208 = icmp eq ptr %i.ic, null
  br i1 %.not208, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  store ptr %i.ib, ptr %i.id, align 8, !tbaa !108
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %exitcond277.not = icmp eq i64 %indvars.iv.next274, %wide.trip.count276
  br i1 %exitcond277.not, label %._crit_edge253, label %bb.h, !llvm.loop !120

._crit_edge253:                                   ; preds = %bb.ab, %._crit_edge226.thread, %._crit_edge226
  %i.ie = call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  %i.if = call noalias ptr @fopen(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) ; 3 uses
  %i.ig = load ptr, ptr @loadtree.treetmp, align 8, !tbaa !12
  %i.ih = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.if, ptr noundef nonnull @.str.4, ptr noundef %i.ig) #33 ; 0 uses
  %i.ii = call i64 @fwrite(ptr nonnull @.str.19, i64 13, i64 1, ptr %i.if) ; 0 uses
  %i.ij = call i32 @fclose(ptr noundef %i.if)     ; 0 uses
  %i.ik = load ptr, ptr @loadtree.tree, align 8, !tbaa !77
  call void @FreeCharMtx(ptr noundef %i.ik) #33
  %i.il = load ptr, ptr @loadtree.treetmp, align 8, !tbaa !12
  call void @free(ptr noundef %i.il) #33
  %i.im = load ptr, ptr @loadtree.nametmp, align 8, !tbaa !12
  call void @free(ptr noundef %i.im) #33
  %i.in = load ptr, ptr @loadtree.hist, align 8, !tbaa !89
  call void @free(ptr noundef %i.in) #33
  store ptr null, ptr @loadtree.hist, align 8, !tbaa !89
  %i.io = load ptr, ptr @loadtree.ac, align 8, !tbaa !98
  call void @free(ptr noundef %i.io) #33
  store ptr null, ptr @loadtree.ac, align 8, !tbaa !98
  %i.ip = load ptr, ptr @loadtree.nmemar, align 8, !tbaa !89
  call void @free(ptr noundef %i.ip) #33
  store ptr null, ptr @loadtree.nmemar, align 8, !tbaa !89
  call void @free(ptr noundef %.0) #33
  call void @free(ptr noundef %.0170) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #4

declare ptr @AllocateIntVec(i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

declare ptr @AllocateFloatVec(i32 noundef) local_unnamed_addr #13

declare ptr @AllocateCharVec(i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #4

declare void @FreeCharMtx(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define dso_local void @loadtop(i32 noundef %0, ptr noundef captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 6 uses
  %i.b = alloca [2 x float], align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store float f0x3F666666, ptr @sueff1, align 4, !tbaa !21
  store float 5.000000e-02, ptr @sueff05, align 4, !tbaa !21
  %i.c = load i32, ptr @treemethod, align 4, !tbaa !4 ; 2 uses
  switch i32 %i.c, label %bb.d [
    i32 88, label %bb.e
    i32 69, label %bb.b
    i32 113, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str.20, i32 noundef %i.c) #31 ; 0 uses
  tail call void @exit(i32 noundef 1) #32
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi ptr [ @cluster_minimum_float, %bb.c ], [ @cluster_average_float, %bb.b ], [ @cluster_mix_float, %bb.a ]
  %i.f = tail call noalias ptr @fopen(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.h = tail call i64 @fwrite(ptr nonnull @.str.10, i64 23, i64 1, ptr %i.g) #30 ; 0 uses
  tail call void @exit(i32 noundef 1) #32
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.i = load ptr, ptr @loadtop.hist, align 8, !tbaa !89
  %.not211 = icmp eq ptr %i.i, null
  br i1 %.not211, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = load i32, ptr @njob, align 4, !tbaa !4
  %i.k = mul nsw i32 %i.j, 50
  %i.l = tail call ptr @AllocateCharVec(i32 noundef %i.k) #33
  store ptr %i.l, ptr @loadtop.treetmp, align 8, !tbaa !12
  %i.m = load i32, ptr @njob, align 4, !tbaa !4   ; 2 uses
  %i.n = mul nsw i32 %i.m, 50
  %i.o = tail call ptr @AllocateCharMtx(i32 noundef %i.m, i32 noundef %i.n) #33
  store ptr %i.o, ptr @loadtop.tree, align 8, !tbaa !77
  %i.p = load i32, ptr @njob, align 4, !tbaa !4
  %i.q = tail call ptr @AllocateIntVec(i32 noundef %i.p) #33
  store ptr %i.q, ptr @loadtop.hist, align 8, !tbaa !89
  %i.r = load i32, ptr @njob, align 4, !tbaa !4
  %i.s = tail call ptr @AllocateFloatVec(i32 noundef %i.r) #33
  store ptr %i.s, ptr @loadtop.tmptmplen, align 8, !tbaa !19
  %i.t = load i32, ptr @njob, align 4, !tbaa !4
  %i.u = sext i32 %i.t to i64
  %i.v = mul nsw i64 %i.u, 24
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #34
  store ptr %i.w, ptr @loadtop.ac, align 8, !tbaa !98
  %i.x = load i32, ptr @njob, align 4, !tbaa !4
  %i.y = tail call ptr @AllocateIntVec(i32 noundef %i.x) #33
  store ptr %i.y, ptr @loadtop.nmemar, align 8, !tbaa !89
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = icmp sgt i32 %0, 0
  br i1 %i.z, label %.lr.ph.preheader, label %._crit_edge239.thread

.lr.ph.preheader:                                 ; preds = %bb.i
  %wide.trip.count = zext nneg i32 %0 to i64      ; 5 uses
  br label %.lr.ph

.lr.ph233.preheader:                              ; preds = %.lr.ph
  %.pre295316 = load ptr, ptr @loadtop.ac, align 8, !tbaa !98 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.aa = icmp eq i32 %0, 1
  br i1 %i.aa, label %.lr.ph233.epil.preheader, label %.lr.ph233.preheader.new

.lr.ph233.preheader.new:                          ; preds = %.lr.ph233.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %i.ab = load ptr, ptr @loadtop.ac, align 8, !tbaa !98 ; 8 uses
  br label %.lr.ph233

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.ac = load ptr, ptr @loadtop.tree, align 8, !tbaa !77
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.af = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ag = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ae, ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.af) #33 ; 0 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph233.preheader, label %.lr.ph, !llvm.loop !121

.lr.ph233:                                        ; preds = %.lr.ph233, %.lr.ph233.preheader.new
  %i.ah = phi ptr [ %.pre295316, %.lr.ph233.preheader.new ], [ %i.ab, %.lr.ph233 ]
  %indvars.iv277 = phi i64 [ 0, %.lr.ph233.preheader.new ], [ %indvars.iv.next278.1, %.lr.ph233 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph233.preheader.new ], [ %niter.next.1, %.lr.ph233 ]
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %indvars.iv277 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !106
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %indvars.iv277 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -24
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.al, ptr %i.am, align 8, !tbaa !108
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %indvars.iv277
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = trunc nuw nsw i64 %indvars.iv277 to i32
  store i32 %i.ap, ptr %i.ao, align 8, !tbaa !109
  %indvars.iv.next278 = or disjoint i64 %indvars.iv277, 1 ; 4 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %indvars.iv.next278 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !106
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %indvars.iv.next278 ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -24
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.at, ptr %i.au, align 8, !tbaa !108
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %indvars.iv.next278
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = trunc nuw nsw i64 %indvars.iv.next278 to i32
  store i32 %i.ax, ptr %i.aw, align 8, !tbaa !109
  %indvars.iv.next278.1 = add nuw nsw i64 %indvars.iv277, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph238.unr-lcssa, label %.lr.ph233, !llvm.loop !122

._crit_edge239.thread:                            ; preds = %bb.i
  %.pre295 = load ptr, ptr @loadtop.ac, align 8, !tbaa !98
  %i.ay = sext i32 %0 to i64
  %i.az = getelementptr [24 x i8], ptr %.pre295, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 -24
  store ptr null, ptr %i.ba, align 8, !tbaa !106
  %i.bb = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc318 = tail call i32 @fputc(i32 10, ptr %i.bb) ; 0 uses
  br label %._crit_edge272

.lr.ph238.unr-lcssa:                              ; preds = %.lr.ph233
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph238, label %.lr.ph233.epil.preheader

.lr.ph233.epil.preheader:                         ; preds = %.lr.ph238.unr-lcssa, %.lr.ph233.preheader
  %.epil.init = phi ptr [ %.pre295316, %.lr.ph233.preheader ], [ %i.ab, %.lr.ph238.unr-lcssa ]
  %indvars.iv277.epil.init = phi i64 [ 0, %.lr.ph233.preheader ], [ %indvars.iv.next278.1, %.lr.ph238.unr-lcssa ] ; 4 uses
  %lcmp.mod336 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod336)
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %.epil.init, i64 %indvars.iv277.epil.init ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !106
  %i.be = load ptr, ptr @loadtop.ac, align 8, !tbaa !98 ; 3 uses
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %indvars.iv277.epil.init ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !108
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %indvars.iv277.epil.init
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = trunc nuw nsw i64 %indvars.iv277.epil.init to i32
  store i32 %i.bk, ptr %i.bj, align 8, !tbaa !109
  br label %.lr.ph238

.lr.ph238:                                        ; preds = %.lr.ph238.unr-lcssa, %.lr.ph233.epil.preheader
  %.lcssa334 = phi ptr [ %i.ab, %.lr.ph238.unr-lcssa ], [ %i.be, %.lr.ph233.epil.preheader ]
  %i.bl = add nsw i32 %0, -1                      ; 2 uses
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %.lcssa334, i64 %i.bm
  store ptr null, ptr %i.bn, align 8, !tbaa !106
  %i.bo = load ptr, ptr @loadtop.tmptmplen, align 8, !tbaa !19
  %i.bp = zext nneg i32 %0 to i64
  %i.bq = shl nuw nsw i64 %i.bp, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bo, i8 0, i64 %i.bq, i1 false), !tbaa !21
  %i.br = load ptr, ptr @loadtop.hist, align 8, !tbaa !89 ; 7 uses
  %i.bs = load ptr, ptr @loadtop.nmemar, align 8, !tbaa !89 ; 7 uses
  %wide.trip.count288 = zext nneg i32 %0 to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %0, 8
  %i.bt = ptrtoaddr ptr %i.bs to i64
  %i.bu = ptrtoaddr ptr %i.br to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %diff.check = icmp ult i64 %i.bv, 32
  %or.cond330 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond330, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph238
  %n.vec = and i64 %wide.trip.count288, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %index ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store <4 x i32> splat (i32 -1), ptr %i.bw, align 4, !tbaa !4
  store <4 x i32> splat (i32 -1), ptr %i.bx, align 4, !tbaa !4
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %index ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store <4 x i32> splat (i32 1), ptr %i.by, align 4, !tbaa !4
  store <4 x i32> splat (i32 1), ptr %i.bz, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count288
  br i1 %cmp.n, label %._crit_edge239, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph238, %middle.block
  %indvars.iv285.ph = phi i64 [ 0, %.lr.ph238 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter337 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod338.not = icmp eq i64 %xtraiter337, 0
  br i1 %lcmp.mod338.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv285.prol = phi i64 [ %indvars.iv.next286.prol, %scalar.ph.prol ], [ %indvars.iv285.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv285.prol
  store i32 -1, ptr %i.cb, align 4, !tbaa !4
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv285.prol
  store i32 1, ptr %i.cc, align 4, !tbaa !4
  %indvars.iv.next286.prol = add nuw nsw i64 %indvars.iv285.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter337
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !124

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv285.unr = phi i64 [ %indvars.iv285.ph, %scalar.ph.preheader ], [ %indvars.iv.next286.prol, %scalar.ph.prol ]
  %i.cd = sub nsw i64 %indvars.iv285.ph, %wide.trip.count
  %i.ce = icmp ugt i64 %i.cd, -4
  br i1 %i.ce, label %._crit_edge239, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv285 = phi i64 [ %indvars.iv.next286.3, %scalar.ph ], [ %indvars.iv285.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv285
  store i32 -1, ptr %i.cf, align 4, !tbaa !4
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv285
  store i32 1, ptr %i.cg, align 4, !tbaa !4
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1 ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.next286
  store i32 -1, ptr %i.ch, align 4, !tbaa !4
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.next286
  store i32 1, ptr %i.ci, align 4, !tbaa !4
  %indvars.iv.next286.1 = add nuw nsw i64 %indvars.iv285, 2 ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.next286.1
  store i32 -1, ptr %i.cj, align 4, !tbaa !4
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.next286.1
  store i32 1, ptr %i.ck, align 4, !tbaa !4
  %indvars.iv.next286.2 = add nuw nsw i64 %indvars.iv285, 3 ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.next286.2
  store i32 -1, ptr %i.cl, align 4, !tbaa !4
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.next286.2
  store i32 1, ptr %i.cm, align 4, !tbaa !4
  %indvars.iv.next286.3 = add nuw nsw i64 %indvars.iv285, 4 ; 2 uses
  %exitcond289.not.3 = icmp eq i64 %indvars.iv.next286.3, %wide.trip.count288
  br i1 %exitcond289.not.3, label %._crit_edge239, label %scalar.ph, !llvm.loop !125

._crit_edge239:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.cn = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %i.cn) ; 0 uses
  %.not323 = icmp eq i32 %0, 1
  br i1 %.not323, label %._crit_edge272, label %.lr.ph271

.lr.ph271:                                        ; preds = %._crit_edge239
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %wide.trip.count293 = zext nneg i32 %i.bl to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph271, %bb.ag
  %indvars.iv290 = phi i64 [ 0, %.lr.ph271 ], [ %indvars.iv.next291, %bb.ag ] ; 4 uses
  %i.cq = trunc nuw nsw i64 %indvars.iv290 to i32 ; 3 uses
  %i.cr = urem i32 %i.cq, 10
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ct = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.cu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ct, ptr noundef nonnull @.str.13, i32 noundef %i.cq, i32 noundef %0) #31 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store <2 x float> splat (float -1.000000e+00), ptr %i.b, align 8, !tbaa !21
  %i.cv = call ptr @fgets(ptr noundef nonnull @loadtreeoneline.gett, i32 noundef 999, ptr noundef nonnull %i.f) ; 0 uses
  %i.cw = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull @loadtreeoneline.gett, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.a, ptr noundef nonnull %i.cp, ptr noundef nonnull %i.b, ptr noundef nonnull %i.co) #33 ; 0 uses
  %i.cx = load i32, ptr %i.a, align 4, !tbaa !4   ; 3 uses
  %i.cy = add nsw i32 %i.cx, -1                   ; 7 uses
  store i32 %i.cy, ptr %i.a, align 4, !tbaa !4
  %i.cz = load i32, ptr %i.cp, align 4, !tbaa !4  ; 3 uses
  %i.da = add nsw i32 %i.cz, -1                   ; 7 uses
  store i32 %i.da, ptr %i.cp, align 4, !tbaa !4
  %.not.i = icmp slt i32 %i.cx, %i.cz
  br i1 %.not.i, label %loadtreeoneline.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.db = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.dc = call i64 @fwrite(ptr nonnull @.str.39, i64 21, i64 1, ptr %i.db) #30 ; 0 uses
  call void @exit(i32 noundef 1) #32
  unreachable

loadtreeoneline.exit:                             ; preds = %bb.l
  %i.dd = sext i32 %i.cy to i64                   ; 7 uses
  %i.de = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dd
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !19
  %i.dg = sub nsw i32 %i.cz, %i.cx
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dh
  %i.dj = load float, ptr %i.di, align 4, !tbaa !21
  %i.dk = load float, ptr %i.b, align 8, !tbaa !21
  %i.dl = fcmp une float %i.dk, -1.000000e+00
  %i.dm = load float, ptr %i.co, align 4
  %i.dn = fcmp une float %i.dm, -1.000000e+00
  %or.cond = select i1 %i.dl, i1 true, i1 %i.dn
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %loadtreeoneline.exit
  %i.do = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.dp = call i64 @fwrite(ptr nonnull @.str.22, i64 44, i64 1, ptr %i.do) #30 ; 0 uses
  call void @exit(i32 noundef 1) #32
  unreachable

bb.o:                                             ; preds = %loadtreeoneline.exit
  %i.dq = load ptr, ptr @loadtop.hist, align 8, !tbaa !89 ; 2 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.dd ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !4  ; 2 uses
  %i.dt = load ptr, ptr @loadtop.nmemar, align 8, !tbaa !89 ; 2 uses
  %i.du = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.dd ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !4  ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv290 ; 3 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !87
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !89
  %i.dz = add nsw i32 %i.dv, 1
  %i.ea = sext i32 %i.dz to i64
  %i.eb = shl nsw i64 %i.ea, 2
  %i.ec = call ptr @realloc(ptr noundef %i.dy, i64 noundef %i.eb) #36 ; 5 uses
  %i.ed = load ptr, ptr %i.dw, align 8, !tbaa !87 ; 2 uses
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !89
  %i.ee = icmp eq i32 %i.ds, -1
  br i1 %i.ee, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  store i32 %i.cy, ptr %i.ec, align 4, !tbaa !4
  store i32 -1, ptr %i.ef, align 4, !tbaa !4
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.eg = sext i32 %i.ds to i64
  %i.eh = getelementptr inbounds [8 x i8], ptr %2, i64 %i.eg
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !87 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !89 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !89 ; 3 uses
  %i.em = load i32, ptr %i.ej, align 4, !tbaa !4  ; 3 uses
  %i.en = load i32, ptr %i.el, align 4, !tbaa !4  ; 3 uses
  %i.eo = icmp sgt i32 %i.em, %i.en               ; 2 uses
  %i.ep = call i32 @llvm.smin.i32(i32 %i.em, i32 %i.en) ; 2 uses
  %i.eq = call i32 @llvm.smax.i32(i32 %i.em, i32 %i.en)
  %.222 = select i1 %i.eo, ptr %i.ej, ptr %i.el   ; 2 uses
  %.not212240 = icmp eq i32 %i.ep, -1
  br i1 %.not212240, label %.preheader228, label %.lr.ph244.preheader

.lr.ph244.preheader:                              ; preds = %bb.q
  %. = select i1 %i.eo, ptr %i.el, ptr %i.ej
  br label %.lr.ph244

.preheader228.loopexit:                           ; preds = %.lr.ph244
  %.pre = load i32, ptr %.222, align 4, !tbaa !4
  br label %.preheader228

.preheader228:                                    ; preds = %.preheader228.loopexit, %bb.q
  %i.er = phi i32 [ %i.eq, %bb.q ], [ %.pre, %.preheader228.loopexit ] ; 2 uses
  %.0193.lcssa = phi ptr [ %i.ec, %bb.q ], [ %i.eu, %.preheader228.loopexit ] ; 2 uses
  %.not213245 = icmp eq i32 %i.er, -1
  br i1 %.not213245, label %._crit_edge249, label %.lr.ph248

.lr.ph244:                                        ; preds = %.lr.ph244.preheader, %.lr.ph244
  %i.es = phi i32 [ %i.ev, %.lr.ph244 ], [ %i.ep, %.lr.ph244.preheader ]
  %.0189242 = phi ptr [ %i.et, %.lr.ph244 ], [ %., %.lr.ph244.preheader ]
  %.0193241 = phi ptr [ %i.eu, %.lr.ph244 ], [ %i.ec, %.lr.ph244.preheader ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.0189242, i64 4 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.0193241, i64 4 ; 2 uses
  store i32 %i.es, ptr %.0193241, align 4, !tbaa !4
  %i.ev = load i32, ptr %i.et, align 4, !tbaa !4  ; 2 uses
  %.not212 = icmp eq i32 %i.ev, -1
  br i1 %.not212, label %.preheader228.loopexit, label %.lr.ph244, !llvm.loop !126

.lr.ph248:                                        ; preds = %.preheader228, %.lr.ph248
  %i.ew = phi i32 [ %i.ez, %.lr.ph248 ], [ %i.er, %.preheader228 ]
  %.1190247 = phi ptr [ %i.ex, %.lr.ph248 ], [ %.222, %.preheader228 ]
  %.1194246 = phi ptr [ %i.ey, %.lr.ph248 ], [ %.0193.lcssa, %.preheader228 ] ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.1190247, i64 4 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.1194246, i64 4 ; 2 uses
  store i32 %i.ew, ptr %.1194246, align 4, !tbaa !4
  %i.ez = load i32, ptr %i.ex, align 4, !tbaa !4  ; 2 uses
  %.not213 = icmp eq i32 %i.ez, -1
  br i1 %.not213, label %._crit_edge249, label %.lr.ph248, !llvm.loop !127

._crit_edge249:                                   ; preds = %.lr.ph248, %.preheader228
  %.1194.lcssa = phi ptr [ %.0193.lcssa, %.preheader228 ], [ %i.ey, %.lr.ph248 ]
  store i32 -1, ptr %.1194.lcssa, align 4, !tbaa !4
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge249, %bb.p
  %i.fa = sext i32 %i.da to i64                   ; 6 uses
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.fa
end_hunk_1
begin_hunk_2_@loadtop:bb.a
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge298, %bb.ac
  %.pre-phi301 = phi i64 [ %.pre299, %._crit_edge298 ], [ %.pre300, %bb.ac ]
  %.pre-phi = phi i64 [ %.pre299, %._crit_edge298 ], [ %i.dd, %bb.ac ]
  %.0188 = phi i32 [ %i.da, %._crit_edge298 ], [ %.226, %bb.ac ]
  %.0187 = phi i32 [ %i.ha, %._crit_edge298 ], [ %.227, %bb.ac ]
  %.0186 = phi i32 [ %i.cy, %._crit_edge298 ], [ %i.ha, %bb.ac ]
  %.0185 = phi i32 [ %i.ha, %._crit_edge298 ], [ %i.cy, %bb.ac ]
  %i.hc = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !19
  %i.he = sub nsw i32 %.0186, %.0185
  %i.hf = sext i32 %i.he to i64                   ; 2 uses
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.hd, i64 %i.hf
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !21
  %i.hi = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi301
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !19
  %i.hk = sub nsw i32 %.0188, %.0187
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %i.hl
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !21
  %i.ho = call float %.sroa.0.0(float noundef %i.hh, float noundef %i.hn) #33, !callees !130
  %i.hp = load ptr, ptr %i.hc, align 8, !tbaa !19
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.hf
  store float %i.ho, ptr %i.hq, align 4, !tbaa !21
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph267, %bb.ad
  %.0184 = load ptr, ptr %.0184265, align 8, !tbaa !98 ; 2 uses
  %.not217 = icmp eq ptr %.0184, null
  br i1 %.not217, label %._crit_edge268.loopexit, label %.lr.ph267, !llvm.loop !131

._crit_edge268.loopexit:                          ; preds = %bb.ae
  %.pre297 = load ptr, ptr %i.gq, align 8, !tbaa !19
  br label %._crit_edge268

._crit_edge268:                                   ; preds = %._crit_edge268.loopexit, %bb.aa
  %i.hr = phi ptr [ %.pre297, %._crit_edge268.loopexit ], [ %i.gr, %bb.aa ] ; 2 uses
  %i.hs = load ptr, ptr @loadtop.treetmp, align 8, !tbaa !12
  %i.ht = load ptr, ptr @loadtop.tree, align 8, !tbaa !77 ; 2 uses
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.ht, i64 %i.dd
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !12
  %i.hw = load float, ptr %i.hr, align 4, !tbaa !21
  %i.hx = fpext float %i.hw to double
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.ht, i64 %i.fa
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !12
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !21
  %i.ic = fpext float %i.ib to double
  %i.id = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.hs, ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef %i.hv, double noundef %i.hx, ptr noundef %i.hz, double noundef %i.ic) #33 ; 0 uses
  %i.ie = load ptr, ptr @loadtop.tree, align 8, !tbaa !77
  %i.if = getelementptr inbounds [8 x i8], ptr %i.ie, i64 %i.dd
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !12
  %i.ih = load ptr, ptr @loadtop.treetmp, align 8, !tbaa !12
  %i.ii = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ig, ptr noundef nonnull dereferenceable(1) %i.ih) #33 ; 0 uses
  %i.ij = load ptr, ptr @loadtop.ac, align 8, !tbaa !98
  %i.ik = getelementptr inbounds [24 x i8], ptr %i.ij, i64 %i.fa ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !108 ; 2 uses
  %i.in = load ptr, ptr %i.ik, align 8, !tbaa !106 ; 3 uses
  store ptr %i.in, ptr %i.im, align 8, !tbaa !106
  %.not218 = icmp eq ptr %i.in, null
  br i1 %.not218, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %._crit_edge268
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  store ptr %i.im, ptr %i.io, align 8, !tbaa !108
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %._crit_edge268
  %i.ip = getelementptr inbounds [8 x i8], ptr %1, i64 %i.fa ; 2 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !19
  call void @free(ptr noundef %i.iq) #33
  store ptr null, ptr %i.ip, align 8, !tbaa !19
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 2 uses
  %exitcond294.not = icmp eq i64 %indvars.iv.next291, %wide.trip.count293
  br i1 %exitcond294.not, label %._crit_edge272, label %bb.j, !llvm.loop !132

._crit_edge272:                                   ; preds = %bb.ag, %._crit_edge239.thread, %._crit_edge239
  %i.ir = call i32 @fclose(ptr noundef nonnull %i.f) ; 0 uses
  %i.is = call noalias ptr @fopen(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) ; 3 uses
  %i.it = load ptr, ptr @loadtop.treetmp, align 8, !tbaa !12
  %i.iu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.is, ptr noundef nonnull @.str.4, ptr noundef %i.it) #33 ; 0 uses
  %i.iv = call i64 @fwrite(ptr nonnull @.str.23, i64 11, i64 1, ptr %i.is) ; 0 uses
  %i.iw = call i32 @fclose(ptr noundef %i.is)     ; 0 uses
  %i.ix = load ptr, ptr @loadtop.tmptmplen, align 8, !tbaa !19
  call void @free(ptr noundef %i.ix) #33
  store ptr null, ptr @loadtop.tmptmplen, align 8, !tbaa !19
  %i.iy = load ptr, ptr @loadtop.hist, align 8, !tbaa !89
  call void @free(ptr noundef %i.iy) #33
  store ptr null, ptr @loadtop.hist, align 8, !tbaa !89
  %i.iz = load ptr, ptr @loadtop.ac, align 8, !tbaa !98
  call void @free(ptr noundef %i.iz) #33
  store ptr null, ptr @loadtop.ac, align 8, !tbaa !98
  %i.ja = load ptr, ptr @loadtop.nmemar, align 8, !tbaa !89
  call void @free(ptr noundef %i.ja) #33
  store ptr null, ptr @loadtop.nmemar, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal float @cluster_mix_float(float noundef %0, float noundef %1) unnamed_addr #18 {
bb.a:
  %i.a = fcmp olt float %0, %1
  %i.b = select i1 %i.a, float %0, float %1
  %i.c = load float, ptr @sueff1, align 4, !tbaa !21
  %i.d = fadd float %0, %1
  %i.e = load float, ptr @sueff05, align 4, !tbaa !21
  %i.f = fmul float %i.d, %i.e
  %i.g = tail call float @llvm.fmuladd.f32(float %i.b, float %i.c, float %i.f)
  ret float %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef float @cluster_average_float(float noundef %0, float noundef %1) unnamed_addr #19 {
bb.a:
  %i.a = fadd float %0, %1
  %i.b = fmul float %i.a, 5.000000e-01
  ret float %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef float @cluster_minimum_float(float noundef %0, float noundef %1) unnamed_addr #19 {
bb.a:
  %i.a = fcmp olt float %0, %1
  %i.b = select i1 %i.a, float %0, float %1
  ret float %i.b
}

; Function Attrs: nounwind uwtable
define dso_local void @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout(i32 noundef %0, ptr noundef captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3, ptr noundef readonly captures(none) %4, ptr noundef readnone captures(none) %5) local_unnamed_addr #12 {
bb.a:
  store float f0x3F666666, ptr @sueff1, align 4, !tbaa !21
  store float 5.000000e-02, ptr @sueff05, align 4, !tbaa !21
  %i.a = load i32, ptr @treemethod, align 4, !tbaa !4 ; 2 uses
  switch i32 %i.a, label %bb.d [
    i32 88, label %bb.e
    i32 69, label %bb.b
    i32 113, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.20, i32 noundef %i.a) #31 ; 0 uses
  tail call void @exit(i32 noundef 1) #32
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi ptr [ @cluster_minimum_float, %bb.c ], [ @cluster_average_float, %bb.b ], [ @cluster_mix_float, %bb.a ]
  %i.d = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.hist, align 8, !tbaa !89
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.e = load i32, ptr @njob, align 4, !tbaa !4
  %i.f = tail call ptr @AllocateIntVec(i32 noundef %i.e) #33
  store ptr %i.f, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.hist, align 8, !tbaa !89
  %i.g = load i32, ptr @njob, align 4, !tbaa !4
  %i.h = tail call ptr @AllocateFloatVec(i32 noundef %i.g) #33
  store ptr %i.h, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.tmptmplen, align 8, !tbaa !19
  %i.i = load i32, ptr @njob, align 4, !tbaa !4
  %i.j = sext i32 %i.i to i64
  %i.k = mul nsw i64 %i.j, 24
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #34
  store ptr %i.l, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac, align 8, !tbaa !98
  %i.m = load i32, ptr @njob, align 4, !tbaa !4
  %i.n = tail call ptr @AllocateIntVec(i32 noundef %i.m) #33
  store ptr %i.n, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.nmemar, align 8, !tbaa !89
  %i.o = load i32, ptr @njob, align 4, !tbaa !4
  %i.p = tail call ptr @AllocateFloatVec(i32 noundef %i.o) #33
  %i.q = load i32, ptr @njob, align 4, !tbaa !4
  %i.r = tail call ptr @AllocateIntVec(i32 noundef %i.q) #33
  %i.s = load i32, ptr @njob, align 4, !tbaa !4
  %i.t = mul nsw i32 %i.s, 50
  %i.u = tail call ptr @AllocateCharVec(i32 noundef %i.t) #33
  store ptr %i.u, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.treetmp, align 8, !tbaa !12
  %i.v = tail call ptr @AllocateCharVec(i32 noundef 30) #33
  store ptr %i.v, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.nametmp, align 8, !tbaa !12
  %i.w = load i32, ptr @njob, align 4, !tbaa !4   ; 2 uses
  %i.x = mul nsw i32 %i.w, 50
  %i.y = tail call ptr @AllocateCharMtx(i32 noundef %i.w, i32 noundef %i.x) #33
  store ptr %i.y, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.tree, align 8, !tbaa !77
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0244 = phi ptr [ null, %bb.e ], [ %i.r, %bb.f ] ; 7 uses
  %.0243 = phi ptr [ null, %bb.e ], [ %i.p, %bb.f ] ; 6 uses
  %i.z = icmp sgt i32 %0, 0
  br i1 %i.z, label %.preheader325.lr.ph, label %.preheader322.thread

.preheader325.lr.ph:                              ; preds = %bb.g
  %i.aa = tail call ptr @__ctype_b_loc() #35      ; 2 uses
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.preheader325

.preheader325:                                    ; preds = %.preheader325.lr.ph, %bb.i
  %indvars.iv397 = phi i64 [ 0, %.preheader325.lr.ph ], [ %indvars.iv.next398, %bb.i ] ; 3 uses
  %i.ab = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.nametmp, align 8, !tbaa !12 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.ab, i8 0, i64 30, i1 false), !tbaa !8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv397 ; 2 uses
  br label %bb.h

.lr.ph.preheader:                                 ; preds = %bb.i
  %.pre424 = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac, align 8, !tbaa !98 ; 2 uses
  %wide.trip.count404 = zext nneg i32 %0 to i64   ; 4 uses
  %xtraiter = and i64 %wide.trip.count404, 1
  %i.ad = icmp eq i32 %0, 1
  br i1 %i.ad, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count404, 2147483646
  %i.ae = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac, align 8, !tbaa !98 ; 8 uses
  br label %.lr.ph

bb.h:                                             ; preds = %bb.h, %.preheader325
  %indvars.iv = phi i64 [ 0, %.preheader325 ], [ %indvars.iv.next.1, %bb.h ] ; 4 uses
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !100
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !8   ; 2 uses
  %i.aj = sext i8 %i.ai to i64
  %i.ak = getelementptr inbounds [2 x i8], ptr %i.af, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !102
  %i.am = and i16 %i.al, 8
  %.not301 = icmp eq i16 %i.am, 0
  %spec.select467 = select i1 %.not301, i8 95, i8 %i.ai
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv
  store i8 %spec.select467, ptr %i.an, align 1, !tbaa !8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !100
  %i.ap = load ptr, ptr %i.ac, align 8, !tbaa !12
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv.next
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !8   ; 2 uses
  %i.as = sext i8 %i.ar to i64
  %i.at = getelementptr inbounds [2 x i8], ptr %i.ao, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2, !tbaa !102
  %i.av = and i16 %i.au, 8
  %.not301.1 = icmp eq i16 %i.av, 0
  %spec.select467.1 = select i1 %.not301.1, i8 95, i8 %i.ar
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv.next
  store i8 %spec.select467.1, ptr %i.aw, align 1, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 30
  br i1 %exitcond.not.1, label %bb.i, label %bb.h, !llvm.loop !133

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 30
  store i8 0, ptr %i.ax, align 1, !tbaa !8
  %i.ay = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.tree, align 8, !tbaa !77
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv397
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !12
  %indvars.iv.next398 = add nuw nsw i64 %indvars.iv397, 1 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.bc = trunc nuw nsw i64 %indvars.iv.next398 to i32
  %i.bd = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ba, ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.bc, ptr noundef nonnull %i.bb) #33 ; 0 uses
  %exitcond400.not = icmp eq i64 %indvars.iv.next398, %wide.trip.count
  br i1 %exitcond400.not, label %.lr.ph.preheader, label %.preheader325, !llvm.loop !134

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.be = phi ptr [ %.pre424, %.lr.ph.preheader.new ], [ %i.ae, %.lr.ph ]
  %indvars.iv401 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next402.1, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %indvars.iv401 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !106
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %indvars.iv401 ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -24
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !108
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %indvars.iv401
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = trunc nuw nsw i64 %indvars.iv401 to i32
  store i32 %i.bm, ptr %i.bl, align 8, !tbaa !109
  %indvars.iv.next402 = or disjoint i64 %indvars.iv401, 1 ; 4 uses
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %indvars.iv.next402 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !106
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %indvars.iv.next402 ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -24
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !108
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %indvars.iv.next402
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = trunc nuw nsw i64 %indvars.iv.next402 to i32
  store i32 %i.bu, ptr %i.bt, align 8, !tbaa !109
  %indvars.iv.next402.1 = add nuw nsw i64 %indvars.iv401, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph334.unr-lcssa, label %.lr.ph, !llvm.loop !135

.preheader322.thread:                             ; preds = %bb.g
  %.pre424458 = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac, align 8, !tbaa !98
  %i.bv = sext i32 %0 to i64
  %i.bw = getelementptr [24 x i8], ptr %.pre424458, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 -24
  store ptr null, ptr %i.bx, align 8, !tbaa !106
  %i.by = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc460 = tail call i32 @fputc(i32 10, ptr %i.by) ; 0 uses
  br label %._crit_edge389

.lr.ph334.unr-lcssa:                              ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph334, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph334.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi ptr [ %.pre424, %.lr.ph.preheader ], [ %i.ae, %.lr.ph334.unr-lcssa ]
  %indvars.iv401.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next402.1, %.lr.ph334.unr-lcssa ] ; 4 uses
  %lcmp.mod485 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod485)
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %.epil.init, i64 %indvars.iv401.epil.init ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !106
  %i.cb = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac, align 8, !tbaa !98 ; 3 uses
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %indvars.iv401.epil.init ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -24
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !108
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %indvars.iv401.epil.init
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = trunc nuw nsw i64 %indvars.iv401.epil.init to i32
  store i32 %i.ch, ptr %i.cg, align 8, !tbaa !109
  br label %.lr.ph334

.lr.ph334:                                        ; preds = %.lr.ph334.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa483 = phi ptr [ %i.ae, %.lr.ph334.unr-lcssa ], [ %i.cb, %.lr.ph.epil.preheader ]
  %i.ci = add nsw i32 %0, -1                      ; 2 uses
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %.lcssa483, i64 %i.cj
  store ptr null, ptr %i.ck, align 8, !tbaa !106
  %i.cl = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac, align 8, !tbaa !98 ; 3 uses
  %.not3540.i = icmp eq ptr %i.cl, null
  %wide.trip.count409 = zext nneg i32 %0 to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph334, %setnearest.exit
  %indvars.iv406 = phi i64 [ 0, %.lr.ph334 ], [ %indvars.iv.next407, %setnearest.exit ] ; 8 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.0243, i64 %indvars.iv406 ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.0244, i64 %indvars.iv406 ; 3 uses
  store float 9.999000e+02, ptr %i.cm, align 4, !tbaa !21
  store i32 -1, ptr %i.cn, align 4, !tbaa !4
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %indvars.iv406
  %.037.i = load ptr, ptr %i.co, align 8, !tbaa !106 ; 2 uses
  %.not38.i = icmp eq ptr %.037.i, null
  br i1 %.not38.i, label %.lr.ph42.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv406
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !19
  %i.cr = trunc nuw nsw i64 %indvars.iv406 to i32
  br label %bb.k

.preheader.i:                                     ; preds = %bb.m
  br i1 %.not3540.i, label %setnearest.exit, label %.lr.ph42.preheader.i

.lr.ph42.preheader.i:                             ; preds = %.preheader.i, %bb.j
  %i.cs = phi float [ %i.dc, %.preheader.i ], [ 9.999000e+02, %bb.j ]
  %i.ct = trunc nuw nsw i64 %indvars.iv406 to i32
  br label %.lr.ph42.i

bb.k:                                             ; preds = %bb.m, %.lr.ph.i
  %i.cu = phi float [ 9.999000e+02, %.lr.ph.i ], [ %i.dc, %bb.m ] ; 2 uses
  %.039.i = phi ptr [ %.037.i, %.lr.ph.i ], [ %.0.i, %bb.m ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.039.i, i64 16
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !109 ; 2 uses
  %i.cx = sub nsw i32 %i.cw, %i.cr
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.cy
  %i.da = load float, ptr %i.cz, align 4, !tbaa !21 ; 3 uses
  %i.db = fcmp olt float %i.da, %i.cu
  br i1 %i.db, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store float %i.da, ptr %i.cm, align 4, !tbaa !21
  store i32 %i.cw, ptr %i.cn, align 4, !tbaa !4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.dc = phi float [ %i.cu, %bb.k ], [ %i.da, %bb.l ] ; 2 uses
  %.0.i = load ptr, ptr %.039.i, align 8, !tbaa !106 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %.preheader.i, label %bb.k, !llvm.loop !136

.lr.ph42.i:                                       ; preds = %bb.p, %.lr.ph42.preheader.i
  %i.dd = phi float [ %i.dp, %bb.p ], [ %i.cs, %.lr.ph42.preheader.i ] ; 2 uses
  %.141.i = phi ptr [ %i.dq, %bb.p ], [ %i.cl, %.lr.ph42.preheader.i ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.141.i, i64 16
  %i.df = load i32, ptr %i.de, align 8, !tbaa !109 ; 4 uses
  %i.dg = zext i32 %i.df to i64
  %.not36.i = icmp eq i64 %indvars.iv406, %i.dg
  br i1 %.not36.i, label %setnearest.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph42.i
  %i.dh = sext i32 %i.df to i64
  %i.di = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !19
  %i.dk = sub nsw i32 %i.ct, %i.df
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.dl
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !21 ; 3 uses
  %i.do = fcmp olt float %i.dn, %i.dd
  br i1 %i.do, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store float %i.dn, ptr %i.cm, align 4, !tbaa !21
  store i32 %i.df, ptr %i.cn, align 4, !tbaa !4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dp = phi float [ %i.dd, %bb.n ], [ %i.dn, %bb.o ]
  %i.dq = load ptr, ptr %.141.i, align 8, !tbaa !106 ; 2 uses
  %.not35.i = icmp eq ptr %i.dq, null
  br i1 %.not35.i, label %setnearest.exit, label %.lr.ph42.i, !llvm.loop !137

setnearest.exit:                                  ; preds = %.lr.ph42.i, %bb.p, %.preheader.i
  %indvars.iv.next407 = add nuw nsw i64 %indvars.iv406, 1 ; 2 uses
  %exitcond410.not = icmp eq i64 %indvars.iv.next407, %wide.trip.count409
  br i1 %exitcond410.not, label %.lr.ph338, label %bb.j, !llvm.loop !138

.lr.ph338:                                        ; preds = %setnearest.exit
  %i.dr = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.tmptmplen, align 8, !tbaa !19
  %i.ds = zext nneg i32 %0 to i64
  %i.dt = shl nuw nsw i64 %i.ds, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.dr, i8 0, i64 %i.dt, i1 false), !tbaa !21
  %i.du = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.hist, align 8, !tbaa !89 ; 7 uses
  %i.dv = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.nmemar, align 8, !tbaa !89 ; 7 uses
  %wide.trip.count417 = zext nneg i32 %0 to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %0, 8
  %i.dw = ptrtoaddr ptr %i.dv to i64
  %i.dx = ptrtoaddr ptr %i.du to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %diff.check = icmp ult i64 %i.dy, 32
  %or.cond477 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond477, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph338
  %n.vec = and i64 %wide.trip.count417, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %index ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store <4 x i32> splat (i32 -1), ptr %i.dz, align 4, !tbaa !4
  store <4 x i32> splat (i32 -1), ptr %i.ea, align 4, !tbaa !4
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %index ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store <4 x i32> splat (i32 1), ptr %i.eb, align 4, !tbaa !4
  store <4 x i32> splat (i32 1), ptr %i.ec, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count417
  br i1 %cmp.n, label %._crit_edge339, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph338, %middle.block
  %indvars.iv414.ph = phi i64 [ 0, %.lr.ph338 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter486 = and i64 %wide.trip.count404, 3   ; 2 uses
  %lcmp.mod487.not = icmp eq i64 %xtraiter486, 0
  br i1 %lcmp.mod487.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv414.prol = phi i64 [ %indvars.iv.next415.prol, %scalar.ph.prol ], [ %indvars.iv414.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv414.prol
  store i32 -1, ptr %i.ee, align 4, !tbaa !4
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv414.prol
  store i32 1, ptr %i.ef, align 4, !tbaa !4
  %indvars.iv.next415.prol = add nuw nsw i64 %indvars.iv414.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter486
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !140

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv414.unr = phi i64 [ %indvars.iv414.ph, %scalar.ph.preheader ], [ %indvars.iv.next415.prol, %scalar.ph.prol ]
  %i.eg = sub nsw i64 %indvars.iv414.ph, %wide.trip.count404
  %i.eh = icmp ugt i64 %i.eg, -4
  br i1 %i.eh, label %._crit_edge339, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv414 = phi i64 [ %indvars.iv.next415.3, %scalar.ph ], [ %indvars.iv414.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv414
  store i32 -1, ptr %i.ei, align 4, !tbaa !4
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv414
  store i32 1, ptr %i.ej, align 4, !tbaa !4
  %indvars.iv.next415 = add nuw nsw i64 %indvars.iv414, 1 ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.next415
  store i32 -1, ptr %i.ek, align 4, !tbaa !4
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next415
  store i32 1, ptr %i.el, align 4, !tbaa !4
  %indvars.iv.next415.1 = add nuw nsw i64 %indvars.iv414, 2 ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.next415.1
  store i32 -1, ptr %i.em, align 4, !tbaa !4
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next415.1
  store i32 1, ptr %i.en, align 4, !tbaa !4
  %indvars.iv.next415.2 = add nuw nsw i64 %indvars.iv414, 3 ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.next415.2
  store i32 -1, ptr %i.eo, align 4, !tbaa !4
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next415.2
  store i32 1, ptr %i.ep, align 4, !tbaa !4
  %indvars.iv.next415.3 = add nuw nsw i64 %indvars.iv414, 4 ; 2 uses
  %exitcond418.not.3 = icmp eq i64 %indvars.iv.next415.3, %wide.trip.count417
  br i1 %exitcond418.not.3, label %._crit_edge339, label %scalar.ph, !llvm.loop !141

._crit_edge339:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.eq = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %i.eq) ; 0 uses
  %.not468 = icmp eq i32 %0, 1
  br i1 %.not468, label %._crit_edge389, label %.lr.ph388.preheader

.lr.ph388.preheader:                              ; preds = %._crit_edge339
  %wide.trip.count422 = zext nneg i32 %i.ci to i64
  br label %.lr.ph388

.lr.ph388:                                        ; preds = %.lr.ph388.preheader, %._crit_edge384
  %indvars.iv419 = phi i64 [ 0, %.lr.ph388.preheader ], [ %indvars.iv.next420, %._crit_edge384 ] ; 4 uses
  %.0260385 = phi i32 [ -1, %.lr.ph388.preheader ], [ %spec.select, %._crit_edge384 ] ; 2 uses
  %i.er = trunc nuw nsw i64 %indvars.iv419 to i32 ; 3 uses
  %i.es = urem i32 %i.er, 10
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph388
  %i.eu = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ev = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eu, ptr noundef nonnull @.str.13, i32 noundef %i.er, i32 noundef %0) #31 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph388
  %.0254340 = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac, align 8, !tbaa !98 ; 2 uses
  %i.ew = load ptr, ptr %.0254340, align 8, !tbaa !106 ; 2 uses
  %.not290341 = icmp eq ptr %i.ew, null
  br i1 %.not290341, label %._crit_edge347, label %.lr.ph346

.lr.ph346:                                        ; preds = %bb.r, %.lr.ph346
  %.0254 = phi ptr [ %i.fd, %.lr.ph346 ], [ %i.ew, %bb.r ] ; 2 uses
  %.0254344 = phi ptr [ %.0254, %.lr.ph346 ], [ %.0254340, %bb.r ]
  %.0245343 = phi float [ %.1246, %.lr.ph346 ], [ 9.999000e+02, %bb.r ] ; 2 uses
  %.1261342 = phi i32 [ %.2262, %.lr.ph346 ], [ %.0260385, %bb.r ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.0254344, i64 16
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !109 ; 2 uses
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [4 x i8], ptr %.0243, i64 %i.ez
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !21 ; 2 uses
  %i.fc = fcmp olt float %i.fb, %.0245343         ; 2 uses
  %.2262 = select i1 %i.fc, i32 %i.ey, i32 %.1261342 ; 2 uses
  %.1246 = select i1 %i.fc, float %i.fb, float %.0245343 ; 2 uses
  %i.fd = load ptr, ptr %.0254, align 8, !tbaa !106 ; 2 uses
  %.not290 = icmp eq ptr %i.fd, null
  br i1 %.not290, label %._crit_edge347.loopexit, label %.lr.ph346, !llvm.loop !142

._crit_edge347.loopexit:                          ; preds = %.lr.ph346
  %i.fe = fmul float %.1246, 5.000000e-01
  br label %._crit_edge347

._crit_edge347:                                   ; preds = %._crit_edge347.loopexit, %bb.r
  %.1261.lcssa = phi i32 [ %.0260385, %bb.r ], [ %.2262, %._crit_edge347.loopexit ] ; 3 uses
  %.0245.lcssa = phi float [ 4.999500e+02, %bb.r ], [ %i.fe, %._crit_edge347.loopexit ] ; 3 uses
  %i.ff = sext i32 %.1261.lcssa to i64
  %i.fg = getelementptr inbounds [4 x i8], ptr %.0244, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !4  ; 2 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.fh, i32 %.1261.lcssa) ; 10 uses
  %spec.select302 = tail call i32 @llvm.smax.i32(i32 %i.fh, i32 %.1261.lcssa) ; 7 uses
  %i.fi = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.hist, align 8, !tbaa !89 ; 2 uses
  %i.fj = sext i32 %spec.select to i64            ; 8 uses
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.fj ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !4  ; 2 uses
  %i.fm = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.nmemar, align 8, !tbaa !89 ; 2 uses
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %i.fj ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !4  ; 2 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv419 ; 3 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !87
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !89
  %i.fs = add nsw i32 %i.fo, 1
  %i.ft = sext i32 %i.fs to i64
  %i.fu = shl nsw i64 %i.ft, 2
  %i.fv = tail call ptr @realloc(ptr noundef %i.fr, i64 noundef %i.fu) #36 ; 5 uses
  %i.fw = load ptr, ptr %i.fp, align 8, !tbaa !87 ; 2 uses
  store ptr %i.fv, ptr %i.fw, align 8, !tbaa !89
  %i.fx = icmp eq i32 %i.fl, -1
  br i1 %i.fx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge347
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  store i32 %spec.select, ptr %i.fv, align 4, !tbaa !4
  store i32 -1, ptr %i.fy, align 4, !tbaa !4
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge347
  %i.fz = sext i32 %i.fl to i64
  %i.ga = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fz
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !87 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !89 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !89 ; 3 uses
  %i.gf = load i32, ptr %i.gc, align 4, !tbaa !4  ; 3 uses
  %i.gg = load i32, ptr %i.ge, align 4, !tbaa !4  ; 3 uses
  %i.gh = icmp sgt i32 %i.gf, %i.gg               ; 2 uses
  %i.gi = tail call i32 @llvm.smin.i32(i32 %i.gf, i32 %i.gg) ; 2 uses
  %i.gj = tail call i32 @llvm.smax.i32(i32 %i.gf, i32 %i.gg)
  %.303 = select i1 %i.gh, ptr %i.gc, ptr %i.ge   ; 2 uses
  %.not291349 = icmp eq i32 %i.gi, -1
  br i1 %.not291349, label %.preheader320, label %.lr.ph353.preheader

.lr.ph353.preheader:                              ; preds = %bb.t
  %. = select i1 %i.gh, ptr %i.ge, ptr %i.gc
  br label %.lr.ph353

.preheader320.loopexit:                           ; preds = %.lr.ph353
  %.pre = load i32, ptr %.303, align 4, !tbaa !4
  br label %.preheader320

.preheader320:                                    ; preds = %.preheader320.loopexit, %bb.t
  %i.gk = phi i32 [ %i.gj, %bb.t ], [ %.pre, %.preheader320.loopexit ] ; 2 uses
  %.0266.lcssa = phi ptr [ %i.fv, %bb.t ], [ %i.gn, %.preheader320.loopexit ] ; 2 uses
  %.not292355 = icmp eq i32 %i.gk, -1
  br i1 %.not292355, label %._crit_edge359, label %.lr.ph358

.lr.ph353:                                        ; preds = %.lr.ph353.preheader, %.lr.ph353
  %i.gl = phi i32 [ %i.go, %.lr.ph353 ], [ %i.gi, %.lr.ph353.preheader ]
  %.0266351 = phi ptr [ %i.gn, %.lr.ph353 ], [ %i.fv, %.lr.ph353.preheader ] ; 2 uses
  %.0270350 = phi ptr [ %i.gm, %.lr.ph353 ], [ %., %.lr.ph353.preheader ]
  %i.gm = getelementptr inbounds nuw i8, ptr %.0270350, i64 4 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.0266351, i64 4 ; 2 uses
  store i32 %i.gl, ptr %.0266351, align 4, !tbaa !4
  %i.go = load i32, ptr %i.gm, align 4, !tbaa !4  ; 2 uses
  %.not291 = icmp eq i32 %i.go, -1
  br i1 %.not291, label %.preheader320.loopexit, label %.lr.ph353, !llvm.loop !143

.lr.ph358:                                        ; preds = %.preheader320, %.lr.ph358
  %i.gp = phi i32 [ %i.gs, %.lr.ph358 ], [ %i.gk, %.preheader320 ]
  %.1267357 = phi ptr [ %i.gr, %.lr.ph358 ], [ %.0266.lcssa, %.preheader320 ] ; 2 uses
  %.1271356 = phi ptr [ %i.gq, %.lr.ph358 ], [ %.303, %.preheader320 ]
  %i.gq = getelementptr inbounds nuw i8, ptr %.1271356, i64 4 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.1267357, i64 4 ; 2 uses
  store i32 %i.gp, ptr %.1267357, align 4, !tbaa !4
  %i.gs = load i32, ptr %i.gq, align 4, !tbaa !4  ; 2 uses
  %.not292 = icmp eq i32 %i.gs, -1
  br i1 %.not292, label %._crit_edge359, label %.lr.ph358, !llvm.loop !144

._crit_edge359:                                   ; preds = %.lr.ph358, %.preheader320
  %.1267.lcssa = phi ptr [ %.0266.lcssa, %.preheader320 ], [ %i.gr, %.lr.ph358 ]
  store i32 -1, ptr %.1267.lcssa, align 4, !tbaa !4
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge359, %bb.s
  %i.gt = sext i32 %spec.select302 to i64         ; 6 uses
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.gt
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !4  ; 2 uses
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %i.gt
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !4  ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !89
  %i.ha = add nsw i32 %i.gx, 1
end_hunk_2
begin_hunk_3_@fixed_musclesupg_float_realloc_nobk_halfmtx_treeout:bb.a
  %i.kl = getelementptr inbounds [24 x i8], ptr %i.kk, i64 %i.gt ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !108 ; 2 uses
  %i.ko = load ptr, ptr %i.kl, align 8, !tbaa !106 ; 3 uses
  store ptr %i.ko, ptr %i.kn, align 8, !tbaa !106
  %.not297 = icmp eq ptr %i.ko, null
  br i1 %.not297, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge378
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store ptr %i.kn, ptr %i.kp, align 8, !tbaa !108
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %._crit_edge378
  %i.kq = getelementptr inbounds [8 x i8], ptr %1, i64 %i.gt ; 2 uses
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !19
  tail call void @free(ptr noundef %i.kr) #33
  store ptr null, ptr %i.kq, align 8, !tbaa !19
  %.2256379 = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac, align 8, !tbaa !98 ; 4 uses
  %.not298380 = icmp eq ptr %.2256379, null
  br i1 %.not298380, label %._crit_edge384, label %.lr.ph383

.lr.ph383:                                        ; preds = %bb.al, %setnearest.exit319
  %.2256381 = phi ptr [ %.2256, %setnearest.exit319 ], [ %.2256379, %bb.al ] ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.2256381, i64 16
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !109 ; 4 uses
  %i.ku = sext i32 %i.kt to i64                   ; 4 uses
  %i.kv = getelementptr inbounds [4 x i8], ptr %.0244, i64 %i.ku ; 4 uses
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !4
  %i.kx = icmp eq i32 %i.kw, %spec.select
  br i1 %i.kx, label %bb.am, label %setnearest.exit319

bb.am:                                            ; preds = %.lr.ph383
  %i.ky = getelementptr inbounds [4 x i8], ptr %.0243, i64 %i.ku ; 3 uses
  store float 9.999000e+02, ptr %i.ky, align 4, !tbaa !21
  store i32 -1, ptr %i.kv, align 4, !tbaa !4
  %i.kz = getelementptr inbounds [24 x i8], ptr %.2256379, i64 %i.ku
  %.037.i306 = load ptr, ptr %i.kz, align 8, !tbaa !106 ; 2 uses
  %.not38.i307 = icmp eq ptr %.037.i306, null
  br i1 %.not38.i307, label %.lr.ph42.i315.preheader, label %.lr.ph.i308

.lr.ph.i308:                                      ; preds = %bb.am
  %i.la = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ku
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !19
  br label %bb.an

bb.an:                                            ; preds = %bb.ap, %.lr.ph.i308
  %i.lc = phi float [ 9.999000e+02, %.lr.ph.i308 ], [ %i.lk, %bb.ap ] ; 2 uses
  %.039.i309 = phi ptr [ %.037.i306, %.lr.ph.i308 ], [ %.0.i310, %bb.ap ] ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.039.i309, i64 16
  %i.le = load i32, ptr %i.ld, align 8, !tbaa !109 ; 2 uses
  %i.lf = sub nsw i32 %i.le, %i.kt
  %i.lg = sext i32 %i.lf to i64
  %i.lh = getelementptr inbounds [4 x i8], ptr %i.lb, i64 %i.lg
  %i.li = load float, ptr %i.lh, align 4, !tbaa !21 ; 3 uses
  %i.lj = fcmp olt float %i.li, %i.lc
  br i1 %i.lj, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store float %i.li, ptr %i.ky, align 4, !tbaa !21
  store i32 %i.le, ptr %i.kv, align 4, !tbaa !4
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.lk = phi float [ %i.lc, %bb.an ], [ %i.li, %bb.ao ] ; 2 uses
  %.0.i310 = load ptr, ptr %.039.i309, align 8, !tbaa !106 ; 2 uses
  %.not.i311 = icmp eq ptr %.0.i310, null
  br i1 %.not.i311, label %.lr.ph42.i315.preheader, label %bb.an, !llvm.loop !136

.lr.ph42.i315.preheader:                          ; preds = %bb.ap, %bb.am
  %.ph = phi float [ 9.999000e+02, %bb.am ], [ %i.lk, %bb.ap ]
  br label %.lr.ph42.i315

.lr.ph42.i315:                                    ; preds = %.lr.ph42.i315.preheader, %bb.as
  %i.ll = phi float [ %i.lw, %bb.as ], [ %.ph, %.lr.ph42.i315.preheader ] ; 2 uses
  %.141.i316 = phi ptr [ %i.lx, %bb.as ], [ %.2256379, %.lr.ph42.i315.preheader ] ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.141.i316, i64 16
  %i.ln = load i32, ptr %i.lm, align 8, !tbaa !109 ; 4 uses
  %.not36.i317 = icmp eq i32 %i.ln, %i.kt
  br i1 %.not36.i317, label %setnearest.exit319, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph42.i315
  %i.lo = sext i32 %i.ln to i64
  %i.lp = getelementptr inbounds [8 x i8], ptr %1, i64 %i.lo
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !19
  %i.lr = sub nsw i32 %i.kt, %i.ln
  %i.ls = sext i32 %i.lr to i64
  %i.lt = getelementptr inbounds [4 x i8], ptr %i.lq, i64 %i.ls
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !21 ; 3 uses
  %i.lv = fcmp olt float %i.lu, %i.ll
  br i1 %i.lv, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store float %i.lu, ptr %i.ky, align 4, !tbaa !21
  store i32 %i.ln, ptr %i.kv, align 4, !tbaa !4
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.lw = phi float [ %i.ll, %bb.aq ], [ %i.lu, %bb.ar ]
  %i.lx = load ptr, ptr %.141.i316, align 8, !tbaa !106 ; 2 uses
  %.not35.i318 = icmp eq ptr %i.lx, null
  br i1 %.not35.i318, label %setnearest.exit319, label %.lr.ph42.i315, !llvm.loop !137

setnearest.exit319:                               ; preds = %bb.as, %.lr.ph42.i315, %.lr.ph383
  %.2256 = load ptr, ptr %.2256381, align 8, !tbaa !98 ; 2 uses
  %.not298 = icmp eq ptr %.2256, null
  br i1 %.not298, label %._crit_edge384, label %.lr.ph383, !llvm.loop !148

._crit_edge384:                                   ; preds = %setnearest.exit319, %bb.al
  %indvars.iv.next420 = add nuw nsw i64 %indvars.iv419, 1 ; 2 uses
  %exitcond423.not = icmp eq i64 %indvars.iv.next420, %wide.trip.count422
  br i1 %exitcond423.not, label %._crit_edge389, label %.lr.ph388, !llvm.loop !149

._crit_edge389:                                   ; preds = %._crit_edge384, %.preheader322.thread, %._crit_edge339
  %i.ly = tail call noalias ptr @fopen(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) ; 2 uses
  %i.lz = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.treetmp, align 8, !tbaa !12
  %i.ma = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ly, ptr noundef nonnull @.str.4, ptr noundef %i.lz) #33 ; 0 uses
  %i.mb = tail call i32 @fclose(ptr noundef %i.ly) ; 0 uses
  %i.mc = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.tree, align 8, !tbaa !77
  tail call void @FreeCharMtx(ptr noundef %i.mc) #33
  %i.md = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.treetmp, align 8, !tbaa !12
  tail call void @free(ptr noundef %i.md) #33
  %i.me = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.nametmp, align 8, !tbaa !12
  tail call void @free(ptr noundef %i.me) #33
  %i.mf = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.tmptmplen, align 8, !tbaa !19
  tail call void @free(ptr noundef %i.mf) #33
  store ptr null, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.tmptmplen, align 8, !tbaa !19
  %i.mg = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.hist, align 8, !tbaa !89
  tail call void @free(ptr noundef %i.mg) #33
  store ptr null, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.hist, align 8, !tbaa !89
  %i.mh = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac, align 8, !tbaa !98
  tail call void @free(ptr noundef %i.mh) #33
  store ptr null, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac, align 8, !tbaa !98
  %i.mi = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.nmemar, align 8, !tbaa !89
  tail call void @free(ptr noundef %i.mi) #33
  store ptr null, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.nmemar, align 8, !tbaa !89
  tail call void @free(ptr noundef %.0243) #33
  tail call void @free(ptr noundef %.0244) #33
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @fixed_musclesupg_float_realloc_nobk_halfmtx(i32 noundef %0, ptr noundef captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #12 {
bb.a:
  store float f0x3F666666, ptr @sueff1, align 4, !tbaa !21
  store float 5.000000e-02, ptr @sueff05, align 4, !tbaa !21
  %i.a = load i32, ptr @treemethod, align 4, !tbaa !4 ; 2 uses
  switch i32 %i.a, label %bb.d [
    i32 88, label %bb.e
    i32 69, label %bb.b
    i32 113, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.20, i32 noundef %i.a) #31 ; 0 uses
  tail call void @exit(i32 noundef 1) #32
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi ptr [ @cluster_minimum_float, %bb.c ], [ @cluster_average_float, %bb.b ], [ @cluster_mix_float, %bb.a ]
  %i.d = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.hist, align 8, !tbaa !89
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.e = load i32, ptr @njob, align 4, !tbaa !4
  %i.f = tail call ptr @AllocateIntVec(i32 noundef %i.e) #33
  store ptr %i.f, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.hist, align 8, !tbaa !89
  %i.g = load i32, ptr @njob, align 4, !tbaa !4
  %i.h = tail call ptr @AllocateFloatVec(i32 noundef %i.g) #33
  store ptr %i.h, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.tmptmplen, align 8, !tbaa !19
  %i.i = load i32, ptr @njob, align 4, !tbaa !4
  %i.j = sext i32 %i.i to i64
  %i.k = mul nsw i64 %i.j, 24
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #34
  store ptr %i.l, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.ac, align 8, !tbaa !98
  %i.m = load i32, ptr @njob, align 4, !tbaa !4
  %i.n = tail call ptr @AllocateIntVec(i32 noundef %i.m) #33
  store ptr %i.n, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.nmemar, align 8, !tbaa !89
  %i.o = load i32, ptr @njob, align 4, !tbaa !4
  %i.p = tail call ptr @AllocateFloatVec(i32 noundef %i.o) #33
  %i.q = load i32, ptr @njob, align 4, !tbaa !4
  %i.r = tail call ptr @AllocateIntVec(i32 noundef %i.q) #33
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0216 = phi ptr [ null, %bb.e ], [ %i.r, %bb.f ] ; 7 uses
  %.0 = phi ptr [ null, %bb.e ], [ %i.p, %bb.f ]  ; 6 uses
  %i.s = icmp sgt i32 %0, 0
  %.pre378 = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.ac, align 8, !tbaa !98 ; 3 uses
  br i1 %i.s, label %.lr.ph.preheader, label %.preheader292.thread

.lr.ph.preheader:                                 ; preds = %bb.g
  %wide.trip.count = zext nneg i32 %0 to i64      ; 4 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.t = icmp eq i32 %0, 1
  br i1 %i.t, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %i.u = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.ac, align 8, !tbaa !98 ; 8 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.v = phi ptr [ %.pre378, %.lr.ph.preheader.new ], [ %i.u, %.lr.ph ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %indvars.iv ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.x, ptr %i.w, align 8, !tbaa !106
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !108
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ad, ptr %i.ac, align 8, !tbaa !109
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 4 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %indvars.iv.next ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !106
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %indvars.iv.next ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !108
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %indvars.iv.next
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.al, ptr %i.ak, align 8, !tbaa !109
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph298.unr-lcssa, label %.lr.ph, !llvm.loop !150

.preheader292.thread:                             ; preds = %bb.g
  %i.am = sext i32 %0 to i64
  %i.an = getelementptr [24 x i8], ptr %.pre378, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 -24
  store ptr null, ptr %i.ao, align 8, !tbaa !106
  %i.ap = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc414 = tail call i32 @fputc(i32 10, ptr %i.ap) ; 0 uses
  br label %._crit_edge353

.lr.ph298.unr-lcssa:                              ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph298, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph298.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi ptr [ %.pre378, %.lr.ph.preheader ], [ %i.u, %.lr.ph298.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.lr.ph298.unr-lcssa ] ; 4 uses
  %lcmp.mod438 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod438)
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %.epil.init, i64 %indvars.iv.epil.init ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !106
  %i.as = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.ac, align 8, !tbaa !98 ; 3 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %indvars.iv.epil.init ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -24
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.au, ptr %i.av, align 8, !tbaa !108
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %indvars.iv.epil.init
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  store i32 %i.ay, ptr %i.ax, align 8, !tbaa !109
  br label %.lr.ph298

.lr.ph298:                                        ; preds = %.lr.ph298.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa436 = phi ptr [ %i.u, %.lr.ph298.unr-lcssa ], [ %i.as, %.lr.ph.epil.preheader ]
  %i.az = add nsw i32 %0, -1                      ; 2 uses
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %.lcssa436, i64 %i.ba
  store ptr null, ptr %i.bb, align 8, !tbaa !106
  %i.bc = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.ac, align 8, !tbaa !98 ; 3 uses
  %.not3540.i = icmp eq ptr %i.bc, null
  %wide.trip.count363 = zext nneg i32 %0 to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph298, %setnearest.exit
  %indvars.iv360 = phi i64 [ 0, %.lr.ph298 ], [ %indvars.iv.next361, %setnearest.exit ] ; 8 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %indvars.iv360 ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.0216, i64 %indvars.iv360 ; 3 uses
  store float 9.999000e+02, ptr %i.bd, align 4, !tbaa !21
  store i32 -1, ptr %i.be, align 4, !tbaa !4
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %indvars.iv360
  %.037.i = load ptr, ptr %i.bf, align 8, !tbaa !106 ; 2 uses
  %.not38.i = icmp eq ptr %.037.i, null
  br i1 %.not38.i, label %.lr.ph42.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv360
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !19
  %i.bi = trunc nuw nsw i64 %indvars.iv360 to i32
  br label %bb.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not3540.i, label %setnearest.exit, label %.lr.ph42.preheader.i

.lr.ph42.preheader.i:                             ; preds = %.preheader.i, %bb.h
  %i.bj = phi float [ %i.bt, %.preheader.i ], [ 9.999000e+02, %bb.h ]
  %i.bk = trunc nuw nsw i64 %indvars.iv360 to i32
  br label %.lr.ph42.i

bb.i:                                             ; preds = %bb.k, %.lr.ph.i
  %i.bl = phi float [ 9.999000e+02, %.lr.ph.i ], [ %i.bt, %bb.k ] ; 2 uses
  %.039.i = phi ptr [ %.037.i, %.lr.ph.i ], [ %.0.i, %bb.k ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.039.i, i64 16
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !109 ; 2 uses
  %i.bo = sub nsw i32 %i.bn, %i.bi
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.bp
  %i.br = load float, ptr %i.bq, align 4, !tbaa !21 ; 3 uses
  %i.bs = fcmp olt float %i.br, %i.bl
  br i1 %i.bs, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store float %i.br, ptr %i.bd, align 4, !tbaa !21
  store i32 %i.bn, ptr %i.be, align 4, !tbaa !4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bt = phi float [ %i.bl, %bb.i ], [ %i.br, %bb.j ] ; 2 uses
  %.0.i = load ptr, ptr %.039.i, align 8, !tbaa !106 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %.preheader.i, label %bb.i, !llvm.loop !136

.lr.ph42.i:                                       ; preds = %bb.n, %.lr.ph42.preheader.i
  %i.bu = phi float [ %i.cg, %bb.n ], [ %i.bj, %.lr.ph42.preheader.i ] ; 2 uses
  %.141.i = phi ptr [ %i.ch, %bb.n ], [ %i.bc, %.lr.ph42.preheader.i ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.141.i, i64 16
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !109 ; 4 uses
  %i.bx = zext i32 %i.bw to i64
  %.not36.i = icmp eq i64 %indvars.iv360, %i.bx
  br i1 %.not36.i, label %setnearest.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph42.i
  %i.by = sext i32 %i.bw to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %1, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !19
  %i.cb = sub nsw i32 %i.bk, %i.bw
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.cc
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !21 ; 3 uses
  %i.cf = fcmp olt float %i.ce, %i.bu
  br i1 %i.cf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store float %i.ce, ptr %i.bd, align 4, !tbaa !21
  store i32 %i.bw, ptr %i.be, align 4, !tbaa !4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cg = phi float [ %i.bu, %bb.l ], [ %i.ce, %bb.m ]
  %i.ch = load ptr, ptr %.141.i, align 8, !tbaa !106 ; 2 uses
  %.not35.i = icmp eq ptr %i.ch, null
  br i1 %.not35.i, label %setnearest.exit, label %.lr.ph42.i, !llvm.loop !137

setnearest.exit:                                  ; preds = %.lr.ph42.i, %bb.n, %.preheader.i
  %indvars.iv.next361 = add nuw nsw i64 %indvars.iv360, 1 ; 2 uses
  %exitcond364.not = icmp eq i64 %indvars.iv.next361, %wide.trip.count363
  br i1 %exitcond364.not, label %.lr.ph302, label %bb.h, !llvm.loop !151

.lr.ph302:                                        ; preds = %setnearest.exit
  %i.ci = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.tmptmplen, align 8, !tbaa !19
  %i.cj = zext nneg i32 %0 to i64
  %i.ck = shl nuw nsw i64 %i.cj, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ci, i8 0, i64 %i.ck, i1 false), !tbaa !21
  %i.cl = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.hist, align 8, !tbaa !89 ; 7 uses
  %i.cm = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.nmemar, align 8, !tbaa !89 ; 7 uses
  %wide.trip.count371 = zext nneg i32 %0 to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %0, 8
  %i.cn = ptrtoaddr ptr %i.cm to i64
  %i.co = ptrtoaddr ptr %i.cl to i64
  %i.cp = sub i64 %i.cn, %i.co
  %diff.check = icmp ult i64 %i.cp, 32
  %or.cond430 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond430, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph302
  %n.vec = and i64 %wide.trip.count371, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %index ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store <4 x i32> splat (i32 -1), ptr %i.cq, align 4, !tbaa !4
  store <4 x i32> splat (i32 -1), ptr %i.cr, align 4, !tbaa !4
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %index ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store <4 x i32> splat (i32 1), ptr %i.cs, align 4, !tbaa !4
  store <4 x i32> splat (i32 1), ptr %i.ct, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !152

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count371
  br i1 %cmp.n, label %._crit_edge303, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph302, %middle.block
  %indvars.iv368.ph = phi i64 [ 0, %.lr.ph302 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter439 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod440.not = icmp eq i64 %xtraiter439, 0
  br i1 %lcmp.mod440.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv368.prol = phi i64 [ %indvars.iv.next369.prol, %scalar.ph.prol ], [ %indvars.iv368.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv368.prol
  store i32 -1, ptr %i.cv, align 4, !tbaa !4
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv368.prol
  store i32 1, ptr %i.cw, align 4, !tbaa !4
  %indvars.iv.next369.prol = add nuw nsw i64 %indvars.iv368.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter439
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !153

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv368.unr = phi i64 [ %indvars.iv368.ph, %scalar.ph.preheader ], [ %indvars.iv.next369.prol, %scalar.ph.prol ]
  %i.cx = sub nsw i64 %indvars.iv368.ph, %wide.trip.count
  %i.cy = icmp ugt i64 %i.cx, -4
  br i1 %i.cy, label %._crit_edge303, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv368 = phi i64 [ %indvars.iv.next369.3, %scalar.ph ], [ %indvars.iv368.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv368
  store i32 -1, ptr %i.cz, align 4, !tbaa !4
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv368
  store i32 1, ptr %i.da, align 4, !tbaa !4
  %indvars.iv.next369 = add nuw nsw i64 %indvars.iv368, 1 ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.next369
  store i32 -1, ptr %i.db, align 4, !tbaa !4
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next369
  store i32 1, ptr %i.dc, align 4, !tbaa !4
  %indvars.iv.next369.1 = add nuw nsw i64 %indvars.iv368, 2 ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.next369.1
  store i32 -1, ptr %i.dd, align 4, !tbaa !4
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next369.1
  store i32 1, ptr %i.de, align 4, !tbaa !4
  %indvars.iv.next369.2 = add nuw nsw i64 %indvars.iv368, 3 ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.next369.2
  store i32 -1, ptr %i.df, align 4, !tbaa !4
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next369.2
  store i32 1, ptr %i.dg, align 4, !tbaa !4
  %indvars.iv.next369.3 = add nuw nsw i64 %indvars.iv368, 4 ; 2 uses
  %exitcond372.not.3 = icmp eq i64 %indvars.iv.next369.3, %wide.trip.count371
  br i1 %exitcond372.not.3, label %._crit_edge303, label %scalar.ph, !llvm.loop !154

._crit_edge303:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.dh = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %i.dh) ; 0 uses
  %.not421 = icmp eq i32 %0, 1
  br i1 %.not421, label %._crit_edge353, label %.lr.ph352.preheader

.lr.ph352.preheader:                              ; preds = %._crit_edge303
  %wide.trip.count376 = zext nneg i32 %i.az to i64
  br label %.lr.ph352

.lr.ph352:                                        ; preds = %.lr.ph352.preheader, %._crit_edge348
  %indvars.iv373 = phi i64 [ 0, %.lr.ph352.preheader ], [ %indvars.iv.next374, %._crit_edge348 ] ; 4 uses
  %.0231349 = phi i32 [ -1, %.lr.ph352.preheader ], [ %spec.select, %._crit_edge348 ] ; 2 uses
  %i.di = trunc nuw nsw i64 %indvars.iv373 to i32 ; 3 uses
  %i.dj = urem i32 %i.di, 10
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph352
  %i.dl = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.dm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dl, ptr noundef nonnull @.str.13, i32 noundef %i.di, i32 noundef %0) #31 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph352
  %.0225304 = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.ac, align 8, !tbaa !98 ; 2 uses
  %i.dn = load ptr, ptr %.0225304, align 8, !tbaa !106 ; 2 uses
  %.not261305 = icmp eq ptr %i.dn, null
  br i1 %.not261305, label %._crit_edge311, label %.lr.ph310

.lr.ph310:                                        ; preds = %bb.p, %.lr.ph310
  %.0225 = phi ptr [ %i.du, %.lr.ph310 ], [ %i.dn, %bb.p ] ; 2 uses
  %.0225308 = phi ptr [ %.0225, %.lr.ph310 ], [ %.0225304, %bb.p ]
  %.0217307 = phi float [ %.1, %.lr.ph310 ], [ 9.999000e+02, %bb.p ] ; 2 uses
  %.1232306 = phi i32 [ %.2233, %.lr.ph310 ], [ %.0231349, %bb.p ]
  %i.do = getelementptr inbounds nuw i8, ptr %.0225308, i64 16
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !109 ; 2 uses
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %.0, i64 %i.dq
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !21 ; 2 uses
  %i.dt = fcmp olt float %i.ds, %.0217307         ; 2 uses
  %.2233 = select i1 %i.dt, i32 %i.dp, i32 %.1232306 ; 2 uses
  %.1 = select i1 %i.dt, float %i.ds, float %.0217307 ; 2 uses
  %i.du = load ptr, ptr %.0225, align 8, !tbaa !106 ; 2 uses
  %.not261 = icmp eq ptr %i.du, null
  br i1 %.not261, label %._crit_edge311.loopexit, label %.lr.ph310, !llvm.loop !155

._crit_edge311.loopexit:                          ; preds = %.lr.ph310
  %i.dv = fmul float %.1, 5.000000e-01
  br label %._crit_edge311

._crit_edge311:                                   ; preds = %._crit_edge311.loopexit, %bb.p
  %.1232.lcssa = phi i32 [ %.0231349, %bb.p ], [ %.2233, %._crit_edge311.loopexit ] ; 3 uses
  %.0217.lcssa = phi float [ 4.999500e+02, %bb.p ], [ %i.dv, %._crit_edge311.loopexit ] ; 3 uses
  %i.dw = sext i32 %.1232.lcssa to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %.0216, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !4  ; 2 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.dy, i32 %.1232.lcssa) ; 10 uses
  %spec.select272 = tail call i32 @llvm.smax.i32(i32 %i.dy, i32 %.1232.lcssa) ; 7 uses
  %i.dz = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.hist, align 8, !tbaa !89 ; 2 uses
  %i.ea = sext i32 %spec.select to i64            ; 6 uses
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.ea ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !4  ; 2 uses
  %i.ed = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.nmemar, align 8, !tbaa !89 ; 2 uses
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.ea ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !4  ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv373 ; 3 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !87
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !89
  %i.ej = add nsw i32 %i.ef, 1
  %i.ek = sext i32 %i.ej to i64
  %i.el = shl nsw i64 %i.ek, 2
  %i.em = tail call ptr @realloc(ptr noundef %i.ei, i64 noundef %i.el) #36 ; 5 uses
  %i.en = load ptr, ptr %i.eg, align 8, !tbaa !87 ; 2 uses
  store ptr %i.em, ptr %i.en, align 8, !tbaa !89
  %i.eo = icmp eq i32 %i.ec, -1
  br i1 %i.eo, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge311
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  store i32 %spec.select, ptr %i.em, align 4, !tbaa !4
  store i32 -1, ptr %i.ep, align 4, !tbaa !4
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge311
  %i.eq = sext i32 %i.ec to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %2, i64 %i.eq
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !87 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !89 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !89 ; 3 uses
  %i.ew = load i32, ptr %i.et, align 4, !tbaa !4  ; 3 uses
  %i.ex = load i32, ptr %i.ev, align 4, !tbaa !4  ; 3 uses
  %i.ey = icmp sgt i32 %i.ew, %i.ex               ; 2 uses
  %i.ez = tail call i32 @llvm.smin.i32(i32 %i.ew, i32 %i.ex) ; 2 uses
  %i.fa = tail call i32 @llvm.smax.i32(i32 %i.ew, i32 %i.ex)
  %.273 = select i1 %i.ey, ptr %i.et, ptr %i.ev   ; 2 uses
  %.not262313 = icmp eq i32 %i.ez, -1
  br i1 %.not262313, label %.preheader290, label %.lr.ph317.preheader

.lr.ph317.preheader:                              ; preds = %bb.r
  %. = select i1 %i.ey, ptr %i.ev, ptr %i.et
  br label %.lr.ph317

.preheader290.loopexit:                           ; preds = %.lr.ph317
  %.pre = load i32, ptr %.273, align 4, !tbaa !4
  br label %.preheader290

.preheader290:                                    ; preds = %.preheader290.loopexit, %bb.r
  %i.fb = phi i32 [ %i.fa, %bb.r ], [ %.pre, %.preheader290.loopexit ] ; 2 uses
  %.0237.lcssa = phi ptr [ %i.em, %bb.r ], [ %i.fe, %.preheader290.loopexit ] ; 2 uses
  %.not263319 = icmp eq i32 %i.fb, -1
  br i1 %.not263319, label %._crit_edge323, label %.lr.ph322

.lr.ph317:                                        ; preds = %.lr.ph317.preheader, %.lr.ph317
  %i.fc = phi i32 [ %i.ff, %.lr.ph317 ], [ %i.ez, %.lr.ph317.preheader ]
  %.0237315 = phi ptr [ %i.fe, %.lr.ph317 ], [ %i.em, %.lr.ph317.preheader ] ; 2 uses
  %.0241314 = phi ptr [ %i.fd, %.lr.ph317 ], [ %., %.lr.ph317.preheader ]
  %i.fd = getelementptr inbounds nuw i8, ptr %.0241314, i64 4 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.0237315, i64 4 ; 2 uses
  store i32 %i.fc, ptr %.0237315, align 4, !tbaa !4
  %i.ff = load i32, ptr %i.fd, align 4, !tbaa !4  ; 2 uses
  %.not262 = icmp eq i32 %i.ff, -1
  br i1 %.not262, label %.preheader290.loopexit, label %.lr.ph317, !llvm.loop !156

.lr.ph322:                                        ; preds = %.preheader290, %.lr.ph322
  %i.fg = phi i32 [ %i.fj, %.lr.ph322 ], [ %i.fb, %.preheader290 ]
  %.1238321 = phi ptr [ %i.fi, %.lr.ph322 ], [ %.0237.lcssa, %.preheader290 ] ; 2 uses
  %.1242320 = phi ptr [ %i.fh, %.lr.ph322 ], [ %.273, %.preheader290 ]
  %i.fh = getelementptr inbounds nuw i8, ptr %.1242320, i64 4 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.1238321, i64 4 ; 2 uses
  store i32 %i.fg, ptr %.1238321, align 4, !tbaa !4
  %i.fj = load i32, ptr %i.fh, align 4, !tbaa !4  ; 2 uses
  %.not263 = icmp eq i32 %i.fj, -1
  br i1 %.not263, label %._crit_edge323, label %.lr.ph322, !llvm.loop !157

._crit_edge323:                                   ; preds = %.lr.ph322, %.preheader290
  %.1238.lcssa = phi ptr [ %.0237.lcssa, %.preheader290 ], [ %i.fi, %.lr.ph322 ]
  store i32 -1, ptr %.1238.lcssa, align 4, !tbaa !4
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge323, %bb.q
  %i.fk = sext i32 %spec.select272 to i64         ; 5 uses
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !4  ; 2 uses
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.fk
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !4  ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !89
  %i.fr = add nsw i32 %i.fo, 1
end_hunk_3
begin_hunk_4_@fixed_musclesupg_float_realloc_nobk_halfmtx:bb.a

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ig = getelementptr inbounds [4 x i8], ptr %.0216, i64 %.pre-phi387 ; 2 uses
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !4
  %i.ii = icmp eq i32 %i.ih, %spec.select272
  br i1 %i.ii, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 %spec.select, ptr %i.ig, align 4, !tbaa !4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.x, %bb.af, %bb.ae
  %.1226 = load ptr, ptr %.1226339, align 8, !tbaa !98 ; 2 uses
  %.not267 = icmp eq ptr %.1226, null
  br i1 %.not267, label %._crit_edge342.loopexit, label %bb.x, !llvm.loop !161

._crit_edge342.loopexit:                          ; preds = %bb.ag
  %.pre381 = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.ac, align 8, !tbaa !98
  %i.ij = getelementptr inbounds [24 x i8], ptr %.pre381, i64 %i.fk ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !108 ; 2 uses
  %i.im = load ptr, ptr %i.ij, align 8, !tbaa !106 ; 3 uses
  store ptr %i.im, ptr %i.il, align 8, !tbaa !106
  %.not268 = icmp eq ptr %i.im, null
  br i1 %.not268, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge342.loopexit
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  store ptr %i.il, ptr %i.in, align 8, !tbaa !108
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %._crit_edge342.loopexit
  %i.io = getelementptr inbounds [8 x i8], ptr %1, i64 %i.fk ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !19
  tail call void @free(ptr noundef %i.ip) #33
  store ptr null, ptr %i.io, align 8, !tbaa !19
  %.2227343 = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.ac, align 8, !tbaa !98 ; 4 uses
  %.not269344 = icmp eq ptr %.2227343, null
  br i1 %.not269344, label %._crit_edge348, label %.lr.ph347

.lr.ph347:                                        ; preds = %bb.ai, %setnearest.exit289
  %.2227345 = phi ptr [ %.2227, %setnearest.exit289 ], [ %.2227343, %bb.ai ] ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.2227345, i64 16
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !109 ; 4 uses
  %i.is = sext i32 %i.ir to i64                   ; 4 uses
  %i.it = getelementptr inbounds [4 x i8], ptr %.0216, i64 %i.is ; 4 uses
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !4
  %i.iv = icmp eq i32 %i.iu, %spec.select
  br i1 %i.iv, label %bb.aj, label %setnearest.exit289

bb.aj:                                            ; preds = %.lr.ph347
  %i.iw = getelementptr inbounds [4 x i8], ptr %.0, i64 %i.is ; 3 uses
  store float 9.999000e+02, ptr %i.iw, align 4, !tbaa !21
  store i32 -1, ptr %i.it, align 4, !tbaa !4
  %i.ix = getelementptr inbounds [24 x i8], ptr %.2227343, i64 %i.is
  %.037.i276 = load ptr, ptr %i.ix, align 8, !tbaa !106 ; 2 uses
  %.not38.i277 = icmp eq ptr %.037.i276, null
  br i1 %.not38.i277, label %.lr.ph42.i285.preheader, label %.lr.ph.i278

.lr.ph.i278:                                      ; preds = %bb.aj
  %i.iy = getelementptr inbounds [8 x i8], ptr %1, i64 %i.is
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !19
  br label %bb.ak

bb.ak:                                            ; preds = %bb.am, %.lr.ph.i278
  %i.ja = phi float [ 9.999000e+02, %.lr.ph.i278 ], [ %i.ji, %bb.am ] ; 2 uses
  %.039.i279 = phi ptr [ %.037.i276, %.lr.ph.i278 ], [ %.0.i280, %bb.am ] ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.039.i279, i64 16
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !109 ; 2 uses
  %i.jd = sub nsw i32 %i.jc, %i.ir
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds [4 x i8], ptr %i.iz, i64 %i.je
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !21 ; 3 uses
  %i.jh = fcmp olt float %i.jg, %i.ja
  br i1 %i.jh, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store float %i.jg, ptr %i.iw, align 4, !tbaa !21
  store i32 %i.jc, ptr %i.it, align 4, !tbaa !4
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ji = phi float [ %i.ja, %bb.ak ], [ %i.jg, %bb.al ] ; 2 uses
  %.0.i280 = load ptr, ptr %.039.i279, align 8, !tbaa !106 ; 2 uses
  %.not.i281 = icmp eq ptr %.0.i280, null
  br i1 %.not.i281, label %.lr.ph42.i285.preheader, label %bb.ak, !llvm.loop !136

.lr.ph42.i285.preheader:                          ; preds = %bb.am, %bb.aj
  %.ph = phi float [ 9.999000e+02, %bb.aj ], [ %i.ji, %bb.am ]
  br label %.lr.ph42.i285

.lr.ph42.i285:                                    ; preds = %.lr.ph42.i285.preheader, %bb.ap
  %i.jj = phi float [ %i.ju, %bb.ap ], [ %.ph, %.lr.ph42.i285.preheader ] ; 2 uses
  %.141.i286 = phi ptr [ %i.jv, %bb.ap ], [ %.2227343, %.lr.ph42.i285.preheader ] ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.141.i286, i64 16
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !109 ; 4 uses
  %.not36.i287 = icmp eq i32 %i.jl, %i.ir
  br i1 %.not36.i287, label %setnearest.exit289, label %bb.an

bb.an:                                            ; preds = %.lr.ph42.i285
  %i.jm = sext i32 %i.jl to i64
  %i.jn = getelementptr inbounds [8 x i8], ptr %1, i64 %i.jm
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !19
  %i.jp = sub nsw i32 %i.ir, %i.jl
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.jo, i64 %i.jq
  %i.js = load float, ptr %i.jr, align 4, !tbaa !21 ; 3 uses
  %i.jt = fcmp olt float %i.js, %i.jj
  br i1 %i.jt, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store float %i.js, ptr %i.iw, align 4, !tbaa !21
  store i32 %i.jl, ptr %i.it, align 4, !tbaa !4
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ju = phi float [ %i.jj, %bb.an ], [ %i.js, %bb.ao ]
  %i.jv = load ptr, ptr %.141.i286, align 8, !tbaa !106 ; 2 uses
  %.not35.i288 = icmp eq ptr %i.jv, null
  br i1 %.not35.i288, label %setnearest.exit289, label %.lr.ph42.i285, !llvm.loop !137

setnearest.exit289:                               ; preds = %bb.ap, %.lr.ph42.i285, %.lr.ph347
  %.2227 = load ptr, ptr %.2227345, align 8, !tbaa !98 ; 2 uses
  %.not269 = icmp eq ptr %.2227, null
  br i1 %.not269, label %._crit_edge348, label %.lr.ph347, !llvm.loop !162

._crit_edge348:                                   ; preds = %setnearest.exit289, %bb.ai
  %indvars.iv.next374 = add nuw nsw i64 %indvars.iv373, 1 ; 2 uses
  %exitcond377.not = icmp eq i64 %indvars.iv.next374, %wide.trip.count376
  br i1 %exitcond377.not, label %._crit_edge353, label %.lr.ph352, !llvm.loop !163

._crit_edge353:                                   ; preds = %._crit_edge348, %.preheader292.thread, %._crit_edge303
  %i.jw = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.tmptmplen, align 8, !tbaa !19
  tail call void @free(ptr noundef %i.jw) #33
  store ptr null, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.tmptmplen, align 8, !tbaa !19
  %i.jx = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.hist, align 8, !tbaa !89
  tail call void @free(ptr noundef %i.jx) #33
  store ptr null, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.hist, align 8, !tbaa !89
  %i.jy = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.ac, align 8, !tbaa !98
  tail call void @free(ptr noundef %i.jy) #33
  store ptr null, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.ac, align 8, !tbaa !98
  %i.jz = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.nmemar, align 8, !tbaa !89
  tail call void @free(ptr noundef %i.jz) #33
  store ptr null, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.nmemar, align 8, !tbaa !89
  tail call void @free(ptr noundef %.0) #33
  tail call void @free(ptr noundef %.0216) #33
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @veryfastsupg_double_loadtop(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 6 uses
  %i.b = alloca [2 x float], align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.c = tail call noalias ptr @fopen(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.e = tail call i64 @fwrite(ptr nonnull @.str.10, i64 23, i64 1, ptr %i.d) #30 ; 0 uses
  tail call void @exit(i32 noundef 1) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @veryfastsupg_double_loadtop.hist, align 8, !tbaa !89
  %.not186 = icmp eq ptr %i.f, null
  br i1 %.not186, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr @njob, align 4, !tbaa !4
  %i.h = mul nsw i32 %i.g, 50
  %i.i = tail call ptr @AllocateCharVec(i32 noundef %i.h) #33
  store ptr %i.i, ptr @veryfastsupg_double_loadtop.treetmp, align 8, !tbaa !12
  %i.j = load i32, ptr @njob, align 4, !tbaa !4   ; 2 uses
  %i.k = mul nsw i32 %i.j, 50
  %i.l = tail call ptr @AllocateCharMtx(i32 noundef %i.j, i32 noundef %i.k) #33
  store ptr %i.l, ptr @veryfastsupg_double_loadtop.tree, align 8, !tbaa !77
  %i.m = load i32, ptr @njob, align 4, !tbaa !4
  %i.n = tail call ptr @AllocateIntVec(i32 noundef %i.m) #33
  store ptr %i.n, ptr @veryfastsupg_double_loadtop.hist, align 8, !tbaa !89
  %i.o = load i32, ptr @njob, align 4, !tbaa !4
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 3
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.q) #34
  store ptr %i.r, ptr @veryfastsupg_double_loadtop.tmptmplen, align 8, !tbaa !52
  %i.s = load i32, ptr @njob, align 4, !tbaa !4
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 3
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.u) #34
  store ptr %i.v, ptr @veryfastsupg_double_loadtop.ac, align 8, !tbaa !164
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = icmp sgt i32 %0, 0
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge212.thread

.lr.ph.preheader:                                 ; preds = %bb.e
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph206:                                        ; preds = %.lr.ph
  %.pre283 = load ptr, ptr @veryfastsupg_double_loadtop.ac, align 8, !tbaa !164 ; 4 uses
  %wide.trip.count249 = zext nneg i32 %0 to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph206
  %n.vec = and i64 %wide.trip.count249, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.ind295 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next298, %vector.body ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.pre283, i64 %index
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.pre283, i64 %index
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.ab = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.ac = shufflevector <2 x i32> %i.aa, <2 x i32> %vec.ind295, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec = add <4 x i32> %i.ac, <i32 1, i32 -1, i32 1, i32 -1>
  store <4 x i32> %interleaved.vec, ptr %i.x, align 4, !tbaa !4
  %i.ad = shufflevector <2 x i32> %i.ab, <2 x i32> %vec.ind295, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec297 = add <4 x i32> %i.ad, <i32 3, i32 1, i32 3, i32 1>
  store <4 x i32> %interleaved.vec297, ptr %i.z, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %vec.ind.next298 = add <2 x i32> %vec.ind295, splat (i32 4)
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !166

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count249
  br i1 %cmp.n, label %._crit_edge212, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph206, %middle.block
  %indvars.iv246.ph = phi i64 [ 0, %.lr.ph206 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.af = load ptr, ptr @veryfastsupg_double_loadtop.tree, align 8, !tbaa !77
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ai = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.aj = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ah, ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.ai) #33 ; 0 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph206, label %.lr.ph, !llvm.loop !167

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv246 = phi i64 [ %indvars.iv.next247, %scalar.ph ], [ %indvars.iv246.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.pre283, i64 %indvars.iv246 ; 2 uses
  %i.al = trunc nuw nsw i64 %indvars.iv.next247 to i32
  store i32 %i.al, ptr %i.ak, align 4, !tbaa !168
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.an = trunc i64 %indvars.iv246 to i32
  %i.ao = add i32 %i.an, -1
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !170
  %exitcond250.not = icmp eq i64 %indvars.iv.next247, %wide.trip.count249
  br i1 %exitcond250.not, label %._crit_edge212, label %scalar.ph, !llvm.loop !171

._crit_edge212.thread:                            ; preds = %bb.e
  %.pre = load ptr, ptr @veryfastsupg_double_loadtop.ac, align 8, !tbaa !164
  %i.ap = sext i32 %0 to i64
  %i.aq = getelementptr [8 x i8], ptr %.pre, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 -8
  store i32 -1, ptr %i.ar, align 4, !tbaa !168
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc287 = tail call i32 @fputc(i32 10, ptr %i.as) ; 0 uses
  br label %._crit_edge241

._crit_edge212:                                   ; preds = %scalar.ph, %middle.block
  %i.at = add nsw i32 %0, -1                      ; 2 uses
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.pre283, i64 %i.au
  store i32 -1, ptr %i.av, align 4, !tbaa !168
  %i.aw = load ptr, ptr @veryfastsupg_double_loadtop.tmptmplen, align 8, !tbaa !52
  %i.ax = zext nneg i32 %0 to i64
  %i.ay = shl nuw nsw i64 %i.ax, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aw, i8 0, i64 %i.ay, i1 false), !tbaa !24
  %i.az = load ptr, ptr @veryfastsupg_double_loadtop.hist, align 8, !tbaa !89
  %i.ba = zext nneg i32 %0 to i64
  %i.bb = shl nuw nsw i64 %i.ba, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.az, i8 -1, i64 %i.bb, i1 false), !tbaa !4
  %i.bc = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %i.bc) ; 0 uses
  %.not291 = icmp eq i32 %0, 1
  br i1 %.not291, label %._crit_edge241, label %.lr.ph240

.lr.ph240:                                        ; preds = %._crit_edge212
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %wide.trip.count260 = zext nneg i32 %i.at to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph240, %bb.ac
  %indvars.iv257 = phi i64 [ 0, %.lr.ph240 ], [ %indvars.iv.next258, %bb.ac ] ; 4 uses
  %i.bf = trunc nuw nsw i64 %indvars.iv257 to i32 ; 3 uses
  %i.bg = urem i32 %i.bf, 10
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bi = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bi, ptr noundef nonnull @.str.24, i32 noundef %i.bf, i32 noundef %0) #31 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store <2 x float> splat (float -1.000000e+00), ptr %i.b, align 8, !tbaa !21
  %i.bk = call ptr @fgets(ptr noundef nonnull @loadtreeoneline.gett, i32 noundef 999, ptr noundef nonnull %i.c) ; 0 uses
  %i.bl = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull @loadtreeoneline.gett, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.a, ptr noundef nonnull %i.be, ptr noundef nonnull %i.b, ptr noundef nonnull %i.bd) #33 ; 0 uses
  %i.bm = load i32, ptr %i.a, align 4, !tbaa !4   ; 2 uses
  %i.bn = add nsw i32 %i.bm, -1                   ; 5 uses
  store i32 %i.bn, ptr %i.a, align 4, !tbaa !4
  %i.bo = load i32, ptr %i.be, align 4, !tbaa !4  ; 2 uses
  %i.bp = add nsw i32 %i.bo, -1                   ; 6 uses
  store i32 %i.bp, ptr %i.be, align 4, !tbaa !4
  %.not.i = icmp slt i32 %i.bm, %i.bo
  br i1 %.not.i, label %loadtreeoneline.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bq = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.br = call i64 @fwrite(ptr nonnull @.str.39, i64 21, i64 1, ptr %i.bq) #30 ; 0 uses
  call void @exit(i32 noundef 1) #32
  unreachable

loadtreeoneline.exit:                             ; preds = %bb.h
  %i.bs = sext i32 %i.bn to i64                   ; 7 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !52
  %i.bv = sext i32 %i.bp to i64                   ; 6 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !24
  %i.by = load float, ptr %i.b, align 8, !tbaa !21
  %i.bz = fcmp une float %i.by, -1.000000e+00
  %i.ca = load float, ptr %i.bd, align 4
  %i.cb = fcmp une float %i.ca, -1.000000e+00
  %or.cond = select i1 %i.bz, i1 true, i1 %i.cb
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %loadtreeoneline.exit
  %i.cc = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.cd = call i64 @fwrite(ptr nonnull @.str.25, i64 34, i64 1, ptr %i.cc) #30 ; 0 uses
  call void @exit(i32 noundef 1) #32
  unreachable

bb.k:                                             ; preds = %loadtreeoneline.exit
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv257
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !87 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !89 ; 4 uses
  %i.ch = load ptr, ptr @veryfastsupg_double_loadtop.hist, align 8, !tbaa !89 ; 2 uses
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.bs ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !4  ; 2 uses
  %i.ck = icmp eq i32 %i.cj, -1
  br i1 %i.ck, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  store i32 %i.bn, ptr %i.cg, align 4, !tbaa !4
  store i32 -1, ptr %i.cl, align 4, !tbaa !4
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.cm = sext i32 %i.cj to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cm
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !87 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !89 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !89 ; 3 uses
  %i.cs = load i32, ptr %i.cp, align 4, !tbaa !4  ; 3 uses
  %i.ct = load i32, ptr %i.cr, align 4, !tbaa !4  ; 3 uses
  %i.cu = icmp sgt i32 %i.cs, %i.ct               ; 2 uses
  %i.cv = call i32 @llvm.smin.i32(i32 %i.cs, i32 %i.ct) ; 2 uses
  %i.cw = call i32 @llvm.smax.i32(i32 %i.cs, i32 %i.ct)
  %.197 = select i1 %i.cu, ptr %i.cp, ptr %i.cr   ; 2 uses
  %.not188213 = icmp eq i32 %i.cv, -1
  br i1 %.not188213, label %.preheader201, label %.lr.ph217.preheader

.lr.ph217.preheader:                              ; preds = %bb.m
  %. = select i1 %i.cu, ptr %i.cr, ptr %i.cp
  br label %.lr.ph217

.preheader201.loopexit:                           ; preds = %.lr.ph217
  %.pre262 = load i32, ptr %.197, align 4, !tbaa !4
  br label %.preheader201

.preheader201:                                    ; preds = %.preheader201.loopexit, %bb.m
  %i.cx = phi i32 [ %i.cw, %bb.m ], [ %.pre262, %.preheader201.loopexit ] ; 2 uses
  %.0169.lcssa = phi ptr [ %i.cg, %bb.m ], [ %i.da, %.preheader201.loopexit ] ; 2 uses
  %.not189218 = icmp eq i32 %i.cx, -1
  br i1 %.not189218, label %._crit_edge222, label %.lr.ph221

.lr.ph217:                                        ; preds = %.lr.ph217.preheader, %.lr.ph217
  %i.cy = phi i32 [ %i.db, %.lr.ph217 ], [ %i.cv, %.lr.ph217.preheader ]
  %.0165215 = phi ptr [ %i.cz, %.lr.ph217 ], [ %., %.lr.ph217.preheader ]
  %.0169214 = phi ptr [ %i.da, %.lr.ph217 ], [ %i.cg, %.lr.ph217.preheader ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0165215, i64 4 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.0169214, i64 4 ; 2 uses
  store i32 %i.cy, ptr %.0169214, align 4, !tbaa !4
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !4  ; 2 uses
  %.not188 = icmp eq i32 %i.db, -1
  br i1 %.not188, label %.preheader201.loopexit, label %.lr.ph217, !llvm.loop !172

.lr.ph221:                                        ; preds = %.preheader201, %.lr.ph221
  %i.dc = phi i32 [ %i.df, %.lr.ph221 ], [ %i.cx, %.preheader201 ]
  %.1166220 = phi ptr [ %i.dd, %.lr.ph221 ], [ %.197, %.preheader201 ]
  %.1170219 = phi ptr [ %i.de, %.lr.ph221 ], [ %.0169.lcssa, %.preheader201 ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.1166220, i64 4 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.1170219, i64 4 ; 2 uses
  store i32 %i.dc, ptr %.1170219, align 4, !tbaa !4
  %i.df = load i32, ptr %i.dd, align 4, !tbaa !4  ; 2 uses
  %.not189 = icmp eq i32 %i.df, -1
  br i1 %.not189, label %._crit_edge222, label %.lr.ph221, !llvm.loop !173

._crit_edge222:                                   ; preds = %.lr.ph221, %.preheader201
  %.1170.lcssa = phi ptr [ %.0169.lcssa, %.preheader201 ], [ %i.de, %.lr.ph221 ]
  store i32 -1, ptr %.1170.lcssa, align 4, !tbaa !4
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge222, %bb.l
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !89 ; 4 uses
  %i.di = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.bv
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !4  ; 2 uses
  %i.dk = icmp eq i32 %i.dj, -1
  br i1 %i.dk, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  store i32 %i.bp, ptr %i.dh, align 4, !tbaa !4
  store i32 -1, ptr %i.dl, align 4, !tbaa !4
end_hunk_4
begin_hunk_5_@veryfastsupg_double_loadtop:bb.a
  %i.eg = fmul double %i.bx, 5.000000e-01         ; 3 uses
  %i.eh = load ptr, ptr @veryfastsupg_double_loadtop.tmptmplen, align 8, !tbaa !52 ; 2 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.bs ; 2 uses
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !24
  %i.ek = fsub double %i.eg, %i.ej                ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv257
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !52 ; 4 uses
  store double %i.ek, ptr %i.em, align 8, !tbaa !24
  %i.en = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.bv
  %i.eo = load double, ptr %i.en, align 8, !tbaa !24
  %i.ep = fsub double %i.eg, %i.eo                ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 3 uses
  store double %i.ep, ptr %i.eq, align 8, !tbaa !24
  %i.er = fcmp olt double %i.ek, 0.000000e+00
  br i1 %i.er, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store double 0.000000e+00, ptr %i.em, align 8, !tbaa !24
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.es = fcmp olt double %i.ep, 0.000000e+00
  br i1 %i.es, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store double 0.000000e+00, ptr %i.eq, align 8, !tbaa !24
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  store double %i.eg, ptr %i.ei, align 8, !tbaa !24
  store i32 %i.bf, ptr %i.ci, align 4, !tbaa !4
  %i.et = load ptr, ptr @veryfastsupg_double_loadtop.ac, align 8, !tbaa !164 ; 4 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.z
  %.4236 = phi i32 [ 0, %bb.u ], [ %i.fl, %bb.z ] ; 8 uses
  %.not194 = icmp eq i32 %.4236, %i.bn
  %.not195 = icmp eq i32 %.4236, %i.bp
  %or.cond200 = or i1 %.not194, %.not195
  br i1 %or.cond200, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eu = icmp slt i32 %.4236, %i.bn
  br i1 %i.eu, label %._crit_edge267, label %bb.x

._crit_edge267:                                   ; preds = %bb.w
  %.pre268 = sext i32 %.4236 to i64               ; 2 uses
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %.4. = call i32 @llvm.smin.i32(i32 %.4236, i32 %i.bp)
  %..4 = call i32 @llvm.smax.i32(i32 %.4236, i32 %i.bp)
  %.pre264 = sext i32 %.4236 to i64
  %.pre265 = sext i32 %..4 to i64
  %.pre270 = sext i32 %.4. to i64
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge267, %bb.x
  %.pre-phi271 = phi i64 [ %.pre268, %._crit_edge267 ], [ %.pre270, %bb.x ]
  %.pre-phi269 = phi i64 [ %.pre268, %._crit_edge267 ], [ %i.bs, %bb.x ]
  %.pre-phi266 = phi i64 [ %i.bv, %._crit_edge267 ], [ %.pre265, %bb.x ]
  %.pre-phi = phi i64 [ %i.bs, %._crit_edge267 ], [ %.pre264, %bb.x ]
  %i.ev = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi269
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !52
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %.pre-phi ; 2 uses
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !24 ; 3 uses
  %i.ez = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi271
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !52
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %.pre-phi266
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !24 ; 3 uses
  %i.fd = fcmp olt double %i.ey, %i.fc
  %i.fe = select i1 %i.fd, double %i.ey, double %i.fc
  %i.ff = fadd double %i.ey, %i.fc
  %i.fg = fmul double %i.ff, 5.000000e-01
  %i.fh = fmul double %i.fg, 1.000000e-01
  %i.fi = call double @llvm.fmuladd.f64(double %i.fe, double 9.000000e-01, double %i.fh)
  store double %i.fi, ptr %i.ex, align 8, !tbaa !24
  br label %bb.z

bb.z:                                             ; preds = %bb.v, %bb.y
  %i.fj = sext i32 %.4236 to i64
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !168 ; 2 uses
  %.not192 = icmp eq i32 %i.fl, -1
  br i1 %.not192, label %bb.aa, label %bb.v, !llvm.loop !176

bb.aa:                                            ; preds = %bb.z
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.bv ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !170 ; 2 uses
  %i.fp = load i32, ptr %i.fm, align 4, !tbaa !168 ; 3 uses
  %i.fq = sext i32 %i.fo to i64
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.fq
  store i32 %i.fp, ptr %i.fr, align 4, !tbaa !168
  %.not193 = icmp eq i32 %i.fp, -1
  br i1 %.not193, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fs = sext i32 %i.fp to i64
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  store i32 %i.fo, ptr %i.fu, align 4, !tbaa !170
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.fv = load ptr, ptr @veryfastsupg_double_loadtop.treetmp, align 8, !tbaa !12
  %i.fw = load ptr, ptr @veryfastsupg_double_loadtop.tree, align 8, !tbaa !77 ; 2 uses
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %i.bs
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !12
  %i.fz = load double, ptr %i.em, align 8, !tbaa !24
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %i.bv
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !12
  %i.gc = load double, ptr %i.eq, align 8, !tbaa !24
  %i.gd = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.fv, ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef %i.fy, double noundef %i.fz, ptr noundef %i.gb, double noundef %i.gc) #33 ; 0 uses
  %i.ge = load ptr, ptr @veryfastsupg_double_loadtop.tree, align 8, !tbaa !77
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %i.bs
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !12
  %i.gh = load ptr, ptr @veryfastsupg_double_loadtop.treetmp, align 8, !tbaa !12
  %i.gi = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.gg, ptr noundef nonnull dereferenceable(1) %i.gh) #33 ; 0 uses
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1 ; 2 uses
  %exitcond261.not = icmp eq i64 %indvars.iv.next258, %wide.trip.count260
  br i1 %exitcond261.not, label %._crit_edge241, label %bb.f, !llvm.loop !177

._crit_edge241:                                   ; preds = %bb.ac, %._crit_edge212.thread, %._crit_edge212
  %i.gj = call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  %i.gk = call noalias ptr @fopen(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) ; 2 uses
  %i.gl = load ptr, ptr @veryfastsupg_double_loadtop.treetmp, align 8, !tbaa !12
  %i.gm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gk, ptr noundef nonnull @.str.4, ptr noundef %i.gl) #33 ; 0 uses
  %i.gn = call i32 @fclose(ptr noundef %i.gk)     ; 0 uses
  %i.go = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc187 = call i32 @fputc(i32 10, ptr %i.go)  ; 0 uses
  %i.gp = load ptr, ptr @veryfastsupg_double_loadtop.tmptmplen, align 8, !tbaa !52
  call void @free(ptr noundef %i.gp) #33
  store ptr null, ptr @veryfastsupg_double_loadtop.tmptmplen, align 8, !tbaa !52
  %i.gq = load ptr, ptr @veryfastsupg_double_loadtop.hist, align 8, !tbaa !89
  call void @free(ptr noundef %i.gq) #33
  store ptr null, ptr @veryfastsupg_double_loadtop.hist, align 8, !tbaa !89
  %i.gr = load ptr, ptr @veryfastsupg_double_loadtop.ac, align 8, !tbaa !164
  call void @free(ptr noundef %i.gr) #33
  store ptr null, ptr @veryfastsupg_double_loadtop.ac, align 8, !tbaa !164
  %i.gs = load ptr, ptr @veryfastsupg_double_loadtop.tree, align 8, !tbaa !77
  call void @FreeCharMtx(ptr noundef %i.gs) #33
  %i.gt = load ptr, ptr @veryfastsupg_double_loadtop.treetmp, align 8, !tbaa !12
  call void @free(ptr noundef %i.gt) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @veryfastsupg_double_loadtree(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 6 uses
  %i.b = alloca [2 x float], align 8              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.c = tail call noalias ptr @fopen(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.e = tail call i64 @fwrite(ptr nonnull @.str.10, i64 23, i64 1, ptr %i.d) #30 ; 0 uses
  tail call void @exit(i32 noundef 1) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @veryfastsupg_double_loadtree.hist, align 8, !tbaa !89
  %.not175 = icmp eq ptr %i.f, null
  br i1 %.not175, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr @njob, align 4, !tbaa !4
  %i.h = mul nsw i32 %i.g, 50
  %i.i = tail call ptr @AllocateCharVec(i32 noundef %i.h) #33
  store ptr %i.i, ptr @veryfastsupg_double_loadtree.treetmp, align 8, !tbaa !12
  %i.j = load i32, ptr @njob, align 4, !tbaa !4   ; 2 uses
  %i.k = mul nsw i32 %i.j, 50
  %i.l = tail call ptr @AllocateCharMtx(i32 noundef %i.j, i32 noundef %i.k) #33
  store ptr %i.l, ptr @veryfastsupg_double_loadtree.tree, align 8, !tbaa !77
  %i.m = load i32, ptr @njob, align 4, !tbaa !4
  %i.n = tail call ptr @AllocateIntVec(i32 noundef %i.m) #33
  store ptr %i.n, ptr @veryfastsupg_double_loadtree.hist, align 8, !tbaa !89
  %i.o = load i32, ptr @njob, align 4, !tbaa !4
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 3
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.q) #34
  store ptr %i.r, ptr @veryfastsupg_double_loadtree.tmptmplen, align 8, !tbaa !52
  %i.s = load i32, ptr @njob, align 4, !tbaa !4
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 3
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.u) #34
  store ptr %i.v, ptr @veryfastsupg_double_loadtree.ac, align 8, !tbaa !164
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = icmp sgt i32 %0, 0
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge201.thread

.lr.ph.preheader:                                 ; preds = %bb.e
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph195:                                        ; preds = %.lr.ph
  %.pre274 = load ptr, ptr @veryfastsupg_double_loadtree.ac, align 8, !tbaa !164 ; 4 uses
  %wide.trip.count238 = zext nneg i32 %0 to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph195
  %n.vec = and i64 %wide.trip.count238, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.ind286 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next289, %vector.body ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.pre274, i64 %index
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.pre274, i64 %index
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.ab = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.ac = shufflevector <2 x i32> %i.aa, <2 x i32> %vec.ind286, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec = add <4 x i32> %i.ac, <i32 1, i32 -1, i32 1, i32 -1>
  store <4 x i32> %interleaved.vec, ptr %i.x, align 4, !tbaa !4
  %i.ad = shufflevector <2 x i32> %i.ab, <2 x i32> %vec.ind286, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec288 = add <4 x i32> %i.ad, <i32 3, i32 1, i32 3, i32 1>
  store <4 x i32> %interleaved.vec288, ptr %i.z, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %vec.ind.next289 = add <2 x i32> %vec.ind286, splat (i32 4)
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !178

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count238
  br i1 %cmp.n, label %._crit_edge201, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph195, %middle.block
  %indvars.iv235.ph = phi i64 [ 0, %.lr.ph195 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.af = load ptr, ptr @veryfastsupg_double_loadtree.tree, align 8, !tbaa !77
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ai = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.aj = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ah, ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.ai) #33 ; 0 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph195, label %.lr.ph, !llvm.loop !179

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv235 = phi i64 [ %indvars.iv.next236, %scalar.ph ], [ %indvars.iv235.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv.next236 = add nuw nsw i64 %indvars.iv235, 1 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.pre274, i64 %indvars.iv235 ; 2 uses
  %i.al = trunc nuw nsw i64 %indvars.iv.next236 to i32
  store i32 %i.al, ptr %i.ak, align 4, !tbaa !168
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.an = trunc i64 %indvars.iv235 to i32
  %i.ao = add i32 %i.an, -1
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !170
  %exitcond239.not = icmp eq i64 %indvars.iv.next236, %wide.trip.count238
  br i1 %exitcond239.not, label %._crit_edge201, label %scalar.ph, !llvm.loop !180

._crit_edge201.thread:                            ; preds = %bb.e
  %.pre = load ptr, ptr @veryfastsupg_double_loadtree.ac, align 8, !tbaa !164
  %i.ap = sext i32 %0 to i64
  %i.aq = getelementptr [8 x i8], ptr %.pre, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 -8
  store i32 -1, ptr %i.ar, align 4, !tbaa !168
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc278 = tail call i32 @fputc(i32 10, ptr %i.as) ; 0 uses
  br label %._crit_edge230

._crit_edge201:                                   ; preds = %scalar.ph, %middle.block
  %i.at = add nsw i32 %0, -1                      ; 2 uses
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.pre274, i64 %i.au
  store i32 -1, ptr %i.av, align 4, !tbaa !168
  %i.aw = load ptr, ptr @veryfastsupg_double_loadtree.tmptmplen, align 8, !tbaa !52
  %i.ax = zext nneg i32 %0 to i64
  %i.ay = shl nuw nsw i64 %i.ax, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aw, i8 0, i64 %i.ay, i1 false), !tbaa !24
  %i.az = load ptr, ptr @veryfastsupg_double_loadtree.hist, align 8, !tbaa !89
  %i.ba = zext nneg i32 %0 to i64
  %i.bb = shl nuw nsw i64 %i.ba, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.az, i8 -1, i64 %i.bb, i1 false), !tbaa !4
  %i.bc = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %i.bc) ; 0 uses
  %.not282 = icmp eq i32 %0, 1
  br i1 %.not282, label %._crit_edge230, label %.lr.ph229

.lr.ph229:                                        ; preds = %._crit_edge201
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %wide.trip.count249 = zext nneg i32 %i.at to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph229, %bb.ac
  %indvars.iv246 = phi i64 [ 0, %.lr.ph229 ], [ %indvars.iv.next247, %bb.ac ] ; 4 uses
  %i.bf = trunc nuw nsw i64 %indvars.iv246 to i32 ; 3 uses
  %i.bg = urem i32 %i.bf, 10
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bi = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bi, ptr noundef nonnull @.str.24, i32 noundef %i.bf, i32 noundef %0) #31 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store <2 x float> splat (float -1.000000e+00), ptr %i.b, align 8, !tbaa !21
  %i.bk = call ptr @fgets(ptr noundef nonnull @loadtreeoneline.gett, i32 noundef 999, ptr noundef nonnull %i.c) ; 0 uses
  %i.bl = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull @loadtreeoneline.gett, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.a, ptr noundef nonnull %i.be, ptr noundef nonnull %i.b, ptr noundef nonnull %i.bd) #33 ; 0 uses
  %i.bm = load i32, ptr %i.a, align 4, !tbaa !4   ; 2 uses
  %i.bn = add nsw i32 %i.bm, -1                   ; 5 uses
  store i32 %i.bn, ptr %i.a, align 4, !tbaa !4
  %i.bo = load i32, ptr %i.be, align 4, !tbaa !4  ; 2 uses
  %i.bp = add nsw i32 %i.bo, -1                   ; 6 uses
  store i32 %i.bp, ptr %i.be, align 4, !tbaa !4
  %.not.i = icmp slt i32 %i.bm, %i.bo
  br i1 %.not.i, label %loadtreeoneline.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bq = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.br = call i64 @fwrite(ptr nonnull @.str.39, i64 21, i64 1, ptr %i.bq) #30 ; 0 uses
  call void @exit(i32 noundef 1) #32
  unreachable

loadtreeoneline.exit:                             ; preds = %bb.h
  %i.bs = sext i32 %i.bn to i64                   ; 7 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !52
  %i.bv = sext i32 %i.bp to i64                   ; 5 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !24
  %i.by = load float, ptr %i.b, align 8, !tbaa !21 ; 3 uses
  %i.bz = fcmp oeq float %i.by, -1.000000e+00
  %i.ca = load float, ptr %i.bd, align 4          ; 2 uses
  %i.cb = fcmp oeq float %i.ca, -1.000000e+00
  %or.cond = select i1 %i.bz, i1 true, i1 %i.cb
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %loadtreeoneline.exit
  %i.cc = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.cd = call i64 @fwrite(ptr nonnull @.str.26, i64 39, i64 1, ptr %i.cc) #30 ; 0 uses
  call void @exit(i32 noundef 1) #32
  unreachable

bb.k:                                             ; preds = %loadtreeoneline.exit
  %i.ce = fcmp olt float %i.by, 0.000000e+00
  br i1 %i.ce, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store float 0.000000e+00, ptr %i.b, align 8, !tbaa !21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cf = phi float [ 0.000000e+00, %bb.l ], [ %i.by, %bb.k ]
  %i.cg = fcmp olt float %i.ca, 0.000000e+00
  br i1 %i.cg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store float 0.000000e+00, ptr %i.bd, align 4, !tbaa !21
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv246
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !87 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !89 ; 4 uses
  %i.ck = load ptr, ptr @veryfastsupg_double_loadtree.hist, align 8, !tbaa !89 ; 2 uses
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.bs ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !4  ; 2 uses
  %i.cn = icmp eq i32 %i.cm, -1
  br i1 %i.cn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store i32 %i.bn, ptr %i.cj, align 4, !tbaa !4
  store i32 -1, ptr %i.co, align 4, !tbaa !4
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.cp = sext i32 %i.cm to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cp
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !87 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !89 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !89 ; 3 uses
  %i.cv = load i32, ptr %i.cs, align 4, !tbaa !4  ; 3 uses
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !4  ; 3 uses
  %i.cx = icmp sgt i32 %i.cv, %i.cw               ; 2 uses
  %i.cy = call i32 @llvm.smin.i32(i32 %i.cv, i32 %i.cw) ; 2 uses
  %i.cz = call i32 @llvm.smax.i32(i32 %i.cv, i32 %i.cw)
  %.186 = select i1 %i.cx, ptr %i.cs, ptr %i.cu   ; 2 uses
  %.not177202 = icmp eq i32 %i.cy, -1
  br i1 %.not177202, label %.preheader190, label %.lr.ph206.preheader

.lr.ph206.preheader:                              ; preds = %bb.q
  %. = select i1 %i.cx, ptr %i.cu, ptr %i.cs
  br label %.lr.ph206

.preheader190.loopexit:                           ; preds = %.lr.ph206
  %.pre251 = load i32, ptr %.186, align 4, !tbaa !4
  br label %.preheader190

.preheader190:                                    ; preds = %.preheader190.loopexit, %bb.q
  %i.da = phi i32 [ %i.cz, %bb.q ], [ %.pre251, %.preheader190.loopexit ] ; 2 uses
  %.0157.lcssa = phi ptr [ %i.cj, %bb.q ], [ %i.dd, %.preheader190.loopexit ] ; 2 uses
  %.not178207 = icmp eq i32 %i.da, -1
  br i1 %.not178207, label %._crit_edge211, label %.lr.ph210

.lr.ph206:                                        ; preds = %.lr.ph206.preheader, %.lr.ph206
  %i.db = phi i32 [ %i.de, %.lr.ph206 ], [ %i.cy, %.lr.ph206.preheader ]
  %.0153204 = phi ptr [ %i.dc, %.lr.ph206 ], [ %., %.lr.ph206.preheader ]
  %.0157203 = phi ptr [ %i.dd, %.lr.ph206 ], [ %i.cj, %.lr.ph206.preheader ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.0153204, i64 4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0157203, i64 4 ; 2 uses
  store i32 %i.db, ptr %.0157203, align 4, !tbaa !4
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !4  ; 2 uses
  %.not177 = icmp eq i32 %i.de, -1
  br i1 %.not177, label %.preheader190.loopexit, label %.lr.ph206, !llvm.loop !181

.lr.ph210:                                        ; preds = %.preheader190, %.lr.ph210
  %i.df = phi i32 [ %i.di, %.lr.ph210 ], [ %i.da, %.preheader190 ]
  %.1154209 = phi ptr [ %i.dg, %.lr.ph210 ], [ %.186, %.preheader190 ]
  %.1158208 = phi ptr [ %i.dh, %.lr.ph210 ], [ %.0157.lcssa, %.preheader190 ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.1154209, i64 4 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.1158208, i64 4 ; 2 uses
  store i32 %i.df, ptr %.1158208, align 4, !tbaa !4
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !4  ; 2 uses
  %.not178 = icmp eq i32 %i.di, -1
  br i1 %.not178, label %._crit_edge211, label %.lr.ph210, !llvm.loop !182

end_hunk_5
begin_hunk_6_@veryfastsupg_double_loadtree:bb.a

._crit_edge223:                                   ; preds = %.lr.ph222, %.preheader
  %.3160.lcssa = phi ptr [ %.2159.lcssa, %.preheader ], [ %i.eh, %.lr.ph222 ]
  store i32 -1, ptr %.3160.lcssa, align 4, !tbaa !4
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge223, %bb.s
  %i.ej = fmul double %i.bx, 5.000000e-01
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv246
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !52 ; 3 uses
  %i.em = load float, ptr %i.bd, align 4, !tbaa !21
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.eo = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.ep = insertelement <2 x float> %i.eo, float %i.em, i64 1
  %i.eq = fpext <2 x float> %i.ep to <2 x double>
  store <2 x double> %i.eq, ptr %i.el, align 8, !tbaa !24
  %i.er = load ptr, ptr @veryfastsupg_double_loadtree.tmptmplen, align 8, !tbaa !52
  %i.es = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.bs
  store double %i.ej, ptr %i.es, align 8, !tbaa !24
  store i32 %i.bf, ptr %i.cl, align 4, !tbaa !4
  %i.et = load ptr, ptr @veryfastsupg_double_loadtree.ac, align 8, !tbaa !164 ; 4 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.z
  %.4225 = phi i32 [ 0, %bb.u ], [ %i.fl, %bb.z ] ; 8 uses
  %.not183 = icmp eq i32 %.4225, %i.bn
  %.not184 = icmp eq i32 %.4225, %i.bp
  %or.cond189 = or i1 %.not183, %.not184
  br i1 %or.cond189, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eu = icmp slt i32 %.4225, %i.bn
  br i1 %i.eu, label %._crit_edge256, label %bb.x

._crit_edge256:                                   ; preds = %bb.w
  %.pre257 = sext i32 %.4225 to i64               ; 2 uses
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %.4. = call i32 @llvm.smin.i32(i32 %.4225, i32 %i.bp)
  %..4 = call i32 @llvm.smax.i32(i32 %.4225, i32 %i.bp)
  %.pre253 = sext i32 %.4225 to i64
  %.pre254 = sext i32 %..4 to i64
  %.pre259 = sext i32 %.4. to i64
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge256, %bb.x
  %.pre-phi260 = phi i64 [ %.pre257, %._crit_edge256 ], [ %.pre259, %bb.x ]
  %.pre-phi258 = phi i64 [ %.pre257, %._crit_edge256 ], [ %i.bs, %bb.x ]
  %.pre-phi255 = phi i64 [ %i.bv, %._crit_edge256 ], [ %.pre254, %bb.x ]
  %.pre-phi = phi i64 [ %i.bs, %._crit_edge256 ], [ %.pre253, %bb.x ]
  %i.ev = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi258
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !52
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %.pre-phi ; 2 uses
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !24 ; 3 uses
  %i.ez = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi260
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !52
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %.pre-phi255
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !24 ; 3 uses
  %i.fd = fcmp olt double %i.ey, %i.fc
  %i.fe = select i1 %i.fd, double %i.ey, double %i.fc
  %i.ff = fadd double %i.ey, %i.fc
  %i.fg = fmul double %i.ff, 5.000000e-01
  %i.fh = fmul double %i.fg, 1.000000e-01
  %i.fi = call double @llvm.fmuladd.f64(double %i.fe, double 9.000000e-01, double %i.fh)
  store double %i.fi, ptr %i.ex, align 8, !tbaa !24
  br label %bb.z

bb.z:                                             ; preds = %bb.v, %bb.y
  %i.fj = sext i32 %.4225 to i64
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !168 ; 2 uses
  %.not181 = icmp eq i32 %i.fl, -1
  br i1 %.not181, label %bb.aa, label %bb.v, !llvm.loop !185

bb.aa:                                            ; preds = %bb.z
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.bv ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !170 ; 2 uses
  %i.fp = load i32, ptr %i.fm, align 4, !tbaa !168 ; 3 uses
  %i.fq = sext i32 %i.fo to i64
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.fq
  store i32 %i.fp, ptr %i.fr, align 4, !tbaa !168
  %.not182 = icmp eq i32 %i.fp, -1
  br i1 %.not182, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fs = sext i32 %i.fp to i64
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  store i32 %i.fo, ptr %i.fu, align 4, !tbaa !170
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.fv = load ptr, ptr @veryfastsupg_double_loadtree.treetmp, align 8, !tbaa !12
  %i.fw = load ptr, ptr @veryfastsupg_double_loadtree.tree, align 8, !tbaa !77 ; 2 uses
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %i.bs
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !12
  %i.fz = load double, ptr %i.el, align 8, !tbaa !24
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %i.bv
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !12
  %i.gc = load double, ptr %i.en, align 8, !tbaa !24
  %i.gd = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.fv, ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef %i.fy, double noundef %i.fz, ptr noundef %i.gb, double noundef %i.gc) #33 ; 0 uses
  %i.ge = load ptr, ptr @veryfastsupg_double_loadtree.tree, align 8, !tbaa !77
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %i.bs
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !12
  %i.gh = load ptr, ptr @veryfastsupg_double_loadtree.treetmp, align 8, !tbaa !12
  %i.gi = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.gg, ptr noundef nonnull dereferenceable(1) %i.gh) #33 ; 0 uses
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1 ; 2 uses
  %exitcond250.not = icmp eq i64 %indvars.iv.next247, %wide.trip.count249
  br i1 %exitcond250.not, label %._crit_edge230, label %bb.f, !llvm.loop !186

._crit_edge230:                                   ; preds = %bb.ac, %._crit_edge201.thread, %._crit_edge201
  %i.gj = call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  %i.gk = call noalias ptr @fopen(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) ; 2 uses
  %i.gl = load ptr, ptr @veryfastsupg_double_loadtree.treetmp, align 8, !tbaa !12
  %i.gm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gk, ptr noundef nonnull @.str.4, ptr noundef %i.gl) #33 ; 0 uses
  %i.gn = call i32 @fclose(ptr noundef %i.gk)     ; 0 uses
  %i.go = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc176 = call i32 @fputc(i32 10, ptr %i.go)  ; 0 uses
  %i.gp = load ptr, ptr @veryfastsupg_double_loadtree.tmptmplen, align 8, !tbaa !52
  call void @free(ptr noundef %i.gp) #33
  store ptr null, ptr @veryfastsupg_double_loadtree.tmptmplen, align 8, !tbaa !52
  %i.gq = load ptr, ptr @veryfastsupg_double_loadtree.hist, align 8, !tbaa !89
  call void @free(ptr noundef %i.gq) #33
  store ptr null, ptr @veryfastsupg_double_loadtree.hist, align 8, !tbaa !89
  %i.gr = load ptr, ptr @veryfastsupg_double_loadtree.ac, align 8, !tbaa !164
  call void @free(ptr noundef %i.gr) #33
  store ptr null, ptr @veryfastsupg_double_loadtree.ac, align 8, !tbaa !164
  %i.gs = load ptr, ptr @veryfastsupg_double_loadtree.tree, align 8, !tbaa !77
  call void @FreeCharMtx(ptr noundef %i.gs) #33
  %i.gt = load ptr, ptr @veryfastsupg_double_loadtree.treetmp, align 8, !tbaa !12
  call void @free(ptr noundef %i.gt) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @veryfastsupg_double_outtree(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3, ptr noundef readonly captures(none) %4) local_unnamed_addr #12 {
bb.a:
  store double 9.000000e-01, ptr @sueff1_double, align 8, !tbaa !24
  store double 5.000000e-02, ptr @sueff05_double, align 8, !tbaa !24
  %i.a = load i32, ptr @treemethod, align 4, !tbaa !4 ; 2 uses
  switch i32 %i.a, label %bb.d [
    i32 88, label %bb.e
    i32 69, label %bb.b
    i32 113, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.20, i32 noundef %i.a) #31 ; 0 uses
  tail call void @exit(i32 noundef 1) #32
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi ptr [ @cluster_minimum_double, %bb.c ], [ @cluster_average_double, %bb.b ], [ @cluster_mix_double, %bb.a ]
  %i.d = load ptr, ptr @veryfastsupg_double_outtree.hist, align 8, !tbaa !89
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.e = load i32, ptr @njob, align 4, !tbaa !4
  %i.f = mul nsw i32 %i.e, 50
  %i.g = tail call ptr @AllocateCharVec(i32 noundef %i.f) #33
  store ptr %i.g, ptr @veryfastsupg_double_outtree.treetmp, align 8, !tbaa !12
  %i.h = load i32, ptr @njob, align 4, !tbaa !4   ; 2 uses
  %i.i = mul nsw i32 %i.h, 50
  %i.j = tail call ptr @AllocateCharMtx(i32 noundef %i.h, i32 noundef %i.i) #33
  store ptr %i.j, ptr @veryfastsupg_double_outtree.tree, align 8, !tbaa !77
  %i.k = load i32, ptr @njob, align 4, !tbaa !4
  %i.l = tail call ptr @AllocateIntVec(i32 noundef %i.k) #33
  store ptr %i.l, ptr @veryfastsupg_double_outtree.hist, align 8, !tbaa !89
  %i.m = load i32, ptr @njob, align 4, !tbaa !4
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 3
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #34
  store ptr %i.p, ptr @veryfastsupg_double_outtree.tmptmplen, align 8, !tbaa !52
  %i.q = load i32, ptr @njob, align 4, !tbaa !4
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.r, 3
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.s) #34
  store ptr %i.t, ptr @veryfastsupg_double_outtree.ac, align 8, !tbaa !164
  %i.u = tail call ptr @AllocateCharVec(i32 noundef 30) #33
  store ptr %i.u, ptr @veryfastsupg_double_outtree.nametmp, align 8, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = icmp sgt i32 %0, 0
  br i1 %i.v, label %.preheader228.lr.ph, label %._crit_edge238.thread

.preheader228.lr.ph:                              ; preds = %bb.g
  %i.w = tail call ptr @__ctype_b_loc() #35       ; 30 uses
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.preheader228

.preheader228:                                    ; preds = %.preheader228.lr.ph, %.preheader228
  %indvars.iv288 = phi i64 [ 0, %.preheader228.lr.ph ], [ %indvars.iv.next289, %.preheader228 ] ; 3 uses
  %i.x = load ptr, ptr @veryfastsupg_double_outtree.nametmp, align 8, !tbaa !12 ; 33 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.x, i8 0, i64 30, i1 false), !tbaa !8
  %i.y = getelementptr inbounds nuw [256 x i8], ptr %4, i64 %indvars.iv288 ; 30 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.aa = load i8, ptr %i.y, align 1, !tbaa !8    ; 2 uses
  %i.ab = sext i8 %i.aa to i64
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !102
  %i.ae = and i16 %i.ad, 8
  %.not219 = icmp eq i16 %i.ae, 0
  %spec.select = select i1 %.not219, i8 95, i8 %i.aa
  store i8 %spec.select, ptr %i.x, align 1, !tbaa !8
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8   ; 2 uses
  %i.ai = sext i8 %i.ah to i64
  %i.aj = getelementptr inbounds [2 x i8], ptr %i.af, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !102
  %i.al = and i16 %i.ak, 8
  %.not219.1 = icmp eq i16 %i.al, 0
  %spec.select.1 = select i1 %.not219.1, i8 95, i8 %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store i8 %spec.select.1, ptr %i.am, align 1, !tbaa !8
  %i.an = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !8   ; 2 uses
  %i.aq = sext i8 %i.ap to i64
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.aq
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !102
  %i.at = and i16 %i.as, 8
  %.not219.2 = icmp eq i16 %i.at, 0
  %spec.select.2 = select i1 %.not219.2, i8 95, i8 %i.ap
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  store i8 %spec.select.2, ptr %i.au, align 1, !tbaa !8
  %i.av = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !8   ; 2 uses
  %i.ay = sext i8 %i.ax to i64
  %i.az = getelementptr inbounds [2 x i8], ptr %i.av, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !102
  %i.bb = and i16 %i.ba, 8
  %.not219.3 = icmp eq i16 %i.bb, 0
  %spec.select.3 = select i1 %.not219.3, i8 95, i8 %i.ax
  %i.bc = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  store i8 %spec.select.3, ptr %i.bc, align 1, !tbaa !8
  %i.bd = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !8   ; 2 uses
  %i.bg = sext i8 %i.bf to i64
  %i.bh = getelementptr inbounds [2 x i8], ptr %i.bd, i64 %i.bg
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !102
  %i.bj = and i16 %i.bi, 8
  %.not219.4 = icmp eq i16 %i.bj, 0
  %spec.select.4 = select i1 %.not219.4, i8 95, i8 %i.bf
  %i.bk = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i8 %spec.select.4, ptr %i.bk, align 1, !tbaa !8
  %i.bl = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.bm = getelementptr inbounds nuw i8, ptr %i.y, i64 5
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !8   ; 2 uses
  %i.bo = sext i8 %i.bn to i64
  %i.bp = getelementptr inbounds [2 x i8], ptr %i.bl, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !102
  %i.br = and i16 %i.bq, 8
  %.not219.5 = icmp eq i16 %i.br, 0
  %spec.select.5 = select i1 %.not219.5, i8 95, i8 %i.bn
  %i.bs = getelementptr inbounds nuw i8, ptr %i.x, i64 5
  store i8 %spec.select.5, ptr %i.bs, align 1, !tbaa !8
  %i.bt = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.bu = getelementptr inbounds nuw i8, ptr %i.y, i64 6
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !8   ; 2 uses
  %i.bw = sext i8 %i.bv to i64
  %i.bx = getelementptr inbounds [2 x i8], ptr %i.bt, i64 %i.bw
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !102
  %i.bz = and i16 %i.by, 8
  %.not219.6 = icmp eq i16 %i.bz, 0
  %spec.select.6 = select i1 %.not219.6, i8 95, i8 %i.bv
  %i.ca = getelementptr inbounds nuw i8, ptr %i.x, i64 6
  store i8 %spec.select.6, ptr %i.ca, align 1, !tbaa !8
  %i.cb = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.cc = getelementptr inbounds nuw i8, ptr %i.y, i64 7
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !8   ; 2 uses
  %i.ce = sext i8 %i.cd to i64
  %i.cf = getelementptr inbounds [2 x i8], ptr %i.cb, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !102
  %i.ch = and i16 %i.cg, 8
  %.not219.7 = icmp eq i16 %i.ch, 0
  %spec.select.7 = select i1 %.not219.7, i8 95, i8 %i.cd
  %i.ci = getelementptr inbounds nuw i8, ptr %i.x, i64 7
  store i8 %spec.select.7, ptr %i.ci, align 1, !tbaa !8
  %i.cj = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.ck = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !8   ; 2 uses
  %i.cm = sext i8 %i.cl to i64
  %i.cn = getelementptr inbounds [2 x i8], ptr %i.cj, i64 %i.cm
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !102
  %i.cp = and i16 %i.co, 8
  %.not219.8 = icmp eq i16 %i.cp, 0
  %spec.select.8 = select i1 %.not219.8, i8 95, i8 %i.cl
  %i.cq = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i8 %spec.select.8, ptr %i.cq, align 1, !tbaa !8
  %i.cr = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.cs = getelementptr inbounds nuw i8, ptr %i.y, i64 9
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !8   ; 2 uses
  %i.cu = sext i8 %i.ct to i64
  %i.cv = getelementptr inbounds [2 x i8], ptr %i.cr, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !102
  %i.cx = and i16 %i.cw, 8
  %.not219.9 = icmp eq i16 %i.cx, 0
  %spec.select.9 = select i1 %.not219.9, i8 95, i8 %i.ct
  %i.cy = getelementptr inbounds nuw i8, ptr %i.x, i64 9
  store i8 %spec.select.9, ptr %i.cy, align 1, !tbaa !8
  %i.cz = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.da = getelementptr inbounds nuw i8, ptr %i.y, i64 10
  %i.db = load i8, ptr %i.da, align 1, !tbaa !8   ; 2 uses
  %i.dc = sext i8 %i.db to i64
  %i.dd = getelementptr inbounds [2 x i8], ptr %i.cz, i64 %i.dc
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !102
  %i.df = and i16 %i.de, 8
  %.not219.10 = icmp eq i16 %i.df, 0
  %spec.select.10 = select i1 %.not219.10, i8 95, i8 %i.db
  %i.dg = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  store i8 %spec.select.10, ptr %i.dg, align 1, !tbaa !8
  %i.dh = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.di = getelementptr inbounds nuw i8, ptr %i.y, i64 11
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !8   ; 2 uses
  %i.dk = sext i8 %i.dj to i64
  %i.dl = getelementptr inbounds [2 x i8], ptr %i.dh, i64 %i.dk
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !102
  %i.dn = and i16 %i.dm, 8
  %.not219.11 = icmp eq i16 %i.dn, 0
  %spec.select.11 = select i1 %.not219.11, i8 95, i8 %i.dj
  %i.do = getelementptr inbounds nuw i8, ptr %i.x, i64 11
  store i8 %spec.select.11, ptr %i.do, align 1, !tbaa !8
  %i.dp = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.dq = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !8   ; 2 uses
  %i.ds = sext i8 %i.dr to i64
  %i.dt = getelementptr inbounds [2 x i8], ptr %i.dp, i64 %i.ds
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !102
  %i.dv = and i16 %i.du, 8
  %.not219.12 = icmp eq i16 %i.dv, 0
  %spec.select.12 = select i1 %.not219.12, i8 95, i8 %i.dr
  %i.dw = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i8 %spec.select.12, ptr %i.dw, align 1, !tbaa !8
  %i.dx = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.dy = getelementptr inbounds nuw i8, ptr %i.y, i64 13
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !8   ; 2 uses
  %i.ea = sext i8 %i.dz to i64
  %i.eb = getelementptr inbounds [2 x i8], ptr %i.dx, i64 %i.ea
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !102
  %i.ed = and i16 %i.ec, 8
  %.not219.13 = icmp eq i16 %i.ed, 0
  %spec.select.13 = select i1 %.not219.13, i8 95, i8 %i.dz
  %i.ee = getelementptr inbounds nuw i8, ptr %i.x, i64 13
  store i8 %spec.select.13, ptr %i.ee, align 1, !tbaa !8
  %i.ef = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.eg = getelementptr inbounds nuw i8, ptr %i.y, i64 14
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !8   ; 2 uses
  %i.ei = sext i8 %i.eh to i64
  %i.ej = getelementptr inbounds [2 x i8], ptr %i.ef, i64 %i.ei
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !102
  %i.el = and i16 %i.ek, 8
  %.not219.14 = icmp eq i16 %i.el, 0
  %spec.select.14 = select i1 %.not219.14, i8 95, i8 %i.eh
  %i.em = getelementptr inbounds nuw i8, ptr %i.x, i64 14
  store i8 %spec.select.14, ptr %i.em, align 1, !tbaa !8
  %i.en = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.eo = getelementptr inbounds nuw i8, ptr %i.y, i64 15
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !8   ; 2 uses
  %i.eq = sext i8 %i.ep to i64
  %i.er = getelementptr inbounds [2 x i8], ptr %i.en, i64 %i.eq
  %i.es = load i16, ptr %i.er, align 2, !tbaa !102
  %i.et = and i16 %i.es, 8
  %.not219.15 = icmp eq i16 %i.et, 0
  %spec.select.15 = select i1 %.not219.15, i8 95, i8 %i.ep
  %i.eu = getelementptr inbounds nuw i8, ptr %i.x, i64 15
  store i8 %spec.select.15, ptr %i.eu, align 1, !tbaa !8
  %i.ev = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.ew = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !8   ; 2 uses
  %i.ey = sext i8 %i.ex to i64
  %i.ez = getelementptr inbounds [2 x i8], ptr %i.ev, i64 %i.ey
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !102
  %i.fb = and i16 %i.fa, 8
  %.not219.16 = icmp eq i16 %i.fb, 0
  %spec.select.16 = select i1 %.not219.16, i8 95, i8 %i.ex
  %i.fc = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i8 %spec.select.16, ptr %i.fc, align 1, !tbaa !8
  %i.fd = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.fe = getelementptr inbounds nuw i8, ptr %i.y, i64 17
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !8   ; 2 uses
  %i.fg = sext i8 %i.ff to i64
  %i.fh = getelementptr inbounds [2 x i8], ptr %i.fd, i64 %i.fg
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !102
  %i.fj = and i16 %i.fi, 8
  %.not219.17 = icmp eq i16 %i.fj, 0
  %spec.select.17 = select i1 %.not219.17, i8 95, i8 %i.ff
  %i.fk = getelementptr inbounds nuw i8, ptr %i.x, i64 17
  store i8 %spec.select.17, ptr %i.fk, align 1, !tbaa !8
  %i.fl = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.fm = getelementptr inbounds nuw i8, ptr %i.y, i64 18
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !8   ; 2 uses
  %i.fo = sext i8 %i.fn to i64
  %i.fp = getelementptr inbounds [2 x i8], ptr %i.fl, i64 %i.fo
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !102
  %i.fr = and i16 %i.fq, 8
  %.not219.18 = icmp eq i16 %i.fr, 0
  %spec.select.18 = select i1 %.not219.18, i8 95, i8 %i.fn
  %i.fs = getelementptr inbounds nuw i8, ptr %i.x, i64 18
  store i8 %spec.select.18, ptr %i.fs, align 1, !tbaa !8
  %i.ft = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.fu = getelementptr inbounds nuw i8, ptr %i.y, i64 19
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !8   ; 2 uses
  %i.fw = sext i8 %i.fv to i64
  %i.fx = getelementptr inbounds [2 x i8], ptr %i.ft, i64 %i.fw
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !102
  %i.fz = and i16 %i.fy, 8
  %.not219.19 = icmp eq i16 %i.fz, 0
  %spec.select.19 = select i1 %.not219.19, i8 95, i8 %i.fv
  %i.ga = getelementptr inbounds nuw i8, ptr %i.x, i64 19
  store i8 %spec.select.19, ptr %i.ga, align 1, !tbaa !8
  %i.gb = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.gc = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !8   ; 2 uses
  %i.ge = sext i8 %i.gd to i64
  %i.gf = getelementptr inbounds [2 x i8], ptr %i.gb, i64 %i.ge
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !102
  %i.gh = and i16 %i.gg, 8
  %.not219.20 = icmp eq i16 %i.gh, 0
  %spec.select.20 = select i1 %.not219.20, i8 95, i8 %i.gd
  %i.gi = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  store i8 %spec.select.20, ptr %i.gi, align 1, !tbaa !8
  %i.gj = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.gk = getelementptr inbounds nuw i8, ptr %i.y, i64 21
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !8   ; 2 uses
  %i.gm = sext i8 %i.gl to i64
  %i.gn = getelementptr inbounds [2 x i8], ptr %i.gj, i64 %i.gm
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !102
  %i.gp = and i16 %i.go, 8
  %.not219.21 = icmp eq i16 %i.gp, 0
  %spec.select.21 = select i1 %.not219.21, i8 95, i8 %i.gl
  %i.gq = getelementptr inbounds nuw i8, ptr %i.x, i64 21
  store i8 %spec.select.21, ptr %i.gq, align 1, !tbaa !8
  %i.gr = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.gs = getelementptr inbounds nuw i8, ptr %i.y, i64 22
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !8   ; 2 uses
  %i.gu = sext i8 %i.gt to i64
  %i.gv = getelementptr inbounds [2 x i8], ptr %i.gr, i64 %i.gu
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !102
  %i.gx = and i16 %i.gw, 8
  %.not219.22 = icmp eq i16 %i.gx, 0
  %spec.select.22 = select i1 %.not219.22, i8 95, i8 %i.gt
  %i.gy = getelementptr inbounds nuw i8, ptr %i.x, i64 22
  store i8 %spec.select.22, ptr %i.gy, align 1, !tbaa !8
  %i.gz = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.ha = getelementptr inbounds nuw i8, ptr %i.y, i64 23
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !8   ; 2 uses
  %i.hc = sext i8 %i.hb to i64
  %i.hd = getelementptr inbounds [2 x i8], ptr %i.gz, i64 %i.hc
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !102
  %i.hf = and i16 %i.he, 8
  %.not219.23 = icmp eq i16 %i.hf, 0
  %spec.select.23 = select i1 %.not219.23, i8 95, i8 %i.hb
  %i.hg = getelementptr inbounds nuw i8, ptr %i.x, i64 23
  store i8 %spec.select.23, ptr %i.hg, align 1, !tbaa !8
  %i.hh = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.hi = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !8   ; 2 uses
  %i.hk = sext i8 %i.hj to i64
  %i.hl = getelementptr inbounds [2 x i8], ptr %i.hh, i64 %i.hk
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !102
  %i.hn = and i16 %i.hm, 8
  %.not219.24 = icmp eq i16 %i.hn, 0
  %spec.select.24 = select i1 %.not219.24, i8 95, i8 %i.hj
  %i.ho = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i8 %spec.select.24, ptr %i.ho, align 1, !tbaa !8
  %i.hp = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.hq = getelementptr inbounds nuw i8, ptr %i.y, i64 25
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !8   ; 2 uses
  %i.hs = sext i8 %i.hr to i64
  %i.ht = getelementptr inbounds [2 x i8], ptr %i.hp, i64 %i.hs
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !102
  %i.hv = and i16 %i.hu, 8
  %.not219.25 = icmp eq i16 %i.hv, 0
  %spec.select.25 = select i1 %.not219.25, i8 95, i8 %i.hr
  %i.hw = getelementptr inbounds nuw i8, ptr %i.x, i64 25
  store i8 %spec.select.25, ptr %i.hw, align 1, !tbaa !8
  %i.hx = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.hy = getelementptr inbounds nuw i8, ptr %i.y, i64 26
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !8   ; 2 uses
  %i.ia = sext i8 %i.hz to i64
  %i.ib = getelementptr inbounds [2 x i8], ptr %i.hx, i64 %i.ia
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !102
  %i.id = and i16 %i.ic, 8
  %.not219.26 = icmp eq i16 %i.id, 0
  %spec.select.26 = select i1 %.not219.26, i8 95, i8 %i.hz
  %i.ie = getelementptr inbounds nuw i8, ptr %i.x, i64 26
  store i8 %spec.select.26, ptr %i.ie, align 1, !tbaa !8
  %i.if = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.ig = getelementptr inbounds nuw i8, ptr %i.y, i64 27
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !8   ; 2 uses
  %i.ii = sext i8 %i.ih to i64
  %i.ij = getelementptr inbounds [2 x i8], ptr %i.if, i64 %i.ii
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !102
  %i.il = and i16 %i.ik, 8
  %.not219.27 = icmp eq i16 %i.il, 0
  %spec.select.27 = select i1 %.not219.27, i8 95, i8 %i.ih
  %i.im = getelementptr inbounds nuw i8, ptr %i.x, i64 27
  store i8 %spec.select.27, ptr %i.im, align 1, !tbaa !8
  %i.in = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.io = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !8   ; 2 uses
  %i.iq = sext i8 %i.ip to i64
  %i.ir = getelementptr inbounds [2 x i8], ptr %i.in, i64 %i.iq
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !102
  %i.it = and i16 %i.is, 8
  %.not219.28 = icmp eq i16 %i.it, 0
  %spec.select.28 = select i1 %.not219.28, i8 95, i8 %i.ip
  %i.iu = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  store i8 %spec.select.28, ptr %i.iu, align 1, !tbaa !8
  %i.iv = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.iw = getelementptr inbounds nuw i8, ptr %i.y, i64 29
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !8   ; 2 uses
  %i.iy = sext i8 %i.ix to i64
  %i.iz = getelementptr inbounds [2 x i8], ptr %i.iv, i64 %i.iy
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !102
  %i.jb = and i16 %i.ja, 8
  %.not219.29 = icmp eq i16 %i.jb, 0
  %spec.select.29 = select i1 %.not219.29, i8 95, i8 %i.ix
  %i.jc = getelementptr inbounds nuw i8, ptr %i.x, i64 29
  store i8 %spec.select.29, ptr %i.jc, align 1, !tbaa !8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.x, i64 30
  store i8 0, ptr %i.jd, align 1, !tbaa !8
  %i.je = load ptr, ptr @veryfastsupg_double_outtree.tree, align 8, !tbaa !77
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %indvars.iv288
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !12
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.ji = trunc nuw nsw i64 %indvars.iv.next289 to i32
  %i.jj = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.jg, ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.ji, ptr noundef nonnull %i.jh) #33 ; 0 uses
  %exitcond291.not = icmp eq i64 %indvars.iv.next289, %wide.trip.count
  br i1 %exitcond291.not, label %.preheader226, label %.preheader228, !llvm.loop !187

.preheader226:                                    ; preds = %.preheader228
  %.pre = load ptr, ptr @veryfastsupg_double_outtree.ac, align 8, !tbaa !164 ; 4 uses
  %wide.trip.count295 = zext nneg i32 %0 to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader226
  %n.vec = and i64 %wide.trip.count295, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.ind342 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next345, %vector.body ] ; 3 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  %i.jn = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.jo = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.jp = shufflevector <2 x i32> %i.jn, <2 x i32> %vec.ind342, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec = add <4 x i32> %i.jp, <i32 1, i32 -1, i32 1, i32 -1>
  store <4 x i32> %interleaved.vec, ptr %i.jk, align 4, !tbaa !4
  %i.jq = shufflevector <2 x i32> %i.jo, <2 x i32> %vec.ind342, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec344 = add <4 x i32> %i.jq, <i32 3, i32 1, i32 3, i32 1>
  store <4 x i32> %interleaved.vec344, ptr %i.jm, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %vec.ind.next345 = add <2 x i32> %vec.ind342, splat (i32 4)
  %i.jr = icmp eq i64 %index.next, %n.vec
  br i1 %i.jr, label %middle.block, label %vector.body, !llvm.loop !188

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count295
  br i1 %cmp.n, label %._crit_edge238, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader226, %middle.block
  %indvars.iv292.ph = phi i64 [ 0, %.preheader226 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv292 = phi i64 [ %indvars.iv.next293, %scalar.ph ], [ %indvars.iv292.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv.next293 = add nuw nsw i64 %indvars.iv292, 1 ; 3 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv292 ; 2 uses
  %i.jt = trunc nuw nsw i64 %indvars.iv.next293 to i32
  store i32 %i.jt, ptr %i.js, align 4, !tbaa !168
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 4
  %i.jv = trunc i64 %indvars.iv292 to i32
  %i.jw = add i32 %i.jv, -1
  store i32 %i.jw, ptr %i.ju, align 4, !tbaa !170
  %exitcond296.not = icmp eq i64 %indvars.iv.next293, %wide.trip.count295
  br i1 %exitcond296.not, label %._crit_edge238, label %scalar.ph, !llvm.loop !189

._crit_edge238.thread:                            ; preds = %bb.g
  %.pre329 = load ptr, ptr @veryfastsupg_double_outtree.ac, align 8, !tbaa !164
  %i.jx = sext i32 %0 to i64
  %i.jy = getelementptr [8 x i8], ptr %.pre329, i64 %i.jx
  %i.jz = getelementptr i8, ptr %i.jy, i64 -8
  store i32 -1, ptr %i.jz, align 4, !tbaa !168
  %i.ka = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc332 = tail call i32 @fputc(i32 10, ptr %i.ka) ; 0 uses
  br label %._crit_edge282

._crit_edge238:                                   ; preds = %scalar.ph, %middle.block
  %i.kb = add nsw i32 %0, -1                      ; 2 uses
  %i.kc = zext nneg i32 %i.kb to i64
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.kc
  store i32 -1, ptr %i.kd, align 4, !tbaa !168
  %i.ke = load ptr, ptr @veryfastsupg_double_outtree.tmptmplen, align 8, !tbaa !52
  %i.kf = zext nneg i32 %0 to i64
  %i.kg = shl nuw nsw i64 %i.kf, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ke, i8 0, i64 %i.kg, i1 false), !tbaa !24
  %i.kh = load ptr, ptr @veryfastsupg_double_outtree.hist, align 8, !tbaa !89
  %i.ki = zext nneg i32 %0 to i64
  %i.kj = shl nuw nsw i64 %i.ki, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kh, i8 -1, i64 %i.kj, i1 false), !tbaa !4
  %i.kk = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %i.kk) ; 0 uses
  %.not337 = icmp eq i32 %0, 1
  br i1 %.not337, label %._crit_edge282, label %.lr.ph281.preheader

.lr.ph281.preheader:                              ; preds = %._crit_edge238
  %wide.trip.count306 = zext nneg i32 %i.kb to i64
  br label %.lr.ph281

.lr.ph281:                                        ; preds = %.lr.ph281.preheader, %bb.x
  %indvars.iv303 = phi i64 [ 0, %.lr.ph281.preheader ], [ %indvars.iv.next304, %bb.x ] ; 4 uses
  %.0173279 = phi i32 [ -1, %.lr.ph281.preheader ], [ %.1174.lcssa, %bb.x ] ; 2 uses
  %.0177278 = phi i32 [ -1, %.lr.ph281.preheader ], [ %.1178.lcssa, %bb.x ] ; 2 uses
  %i.kl = trunc nuw nsw i64 %indvars.iv303 to i32 ; 3 uses
  %i.km = urem i32 %i.kl, 10
  %i.kn = icmp eq i32 %i.km, 0
  br i1 %i.kn, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph281
  %i.ko = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.kp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ko, ptr noundef nonnull @.str.24, i32 noundef %i.kl, i32 noundef %0) #31 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph281
  %i.kq = load ptr, ptr @veryfastsupg_double_outtree.ac, align 8, !tbaa !164 ; 4 uses
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !168 ; 2 uses
  %.not209243 = icmp eq i32 %i.kr, -1
  br i1 %.not209243, label %._crit_edge248, label %.preheader

.loopexit:                                        ; preds = %bb.j
  %i.ks = sext i32 %i.kv to i64                   ; 2 uses
  %i.kt = getelementptr inbounds [8 x i8], ptr %i.kq, i64 %i.ks
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !168 ; 2 uses
  %.not209 = icmp eq i32 %i.ku, -1
  br i1 %.not209, label %._crit_edge248.loopexit, label %.preheader, !llvm.loop !190

.preheader:                                       ; preds = %bb.i, %.loopexit
  %i.kv = phi i32 [ %i.ku, %.loopexit ], [ %i.kr, %bb.i ] ; 3 uses
  %i.kw = phi i64 [ %i.ks, %.loopexit ], [ 0, %bb.i ]
  %.4247 = phi i32 [ %i.kv, %.loopexit ], [ 0, %bb.i ]
  %.1174246 = phi i32 [ %.3176, %.loopexit ], [ %.0173279, %bb.i ]
  %.1178245 = phi i32 [ %.3180, %.loopexit ], [ %.0177278, %bb.i ]
  %.0182244 = phi double [ %.2184, %.loopexit ], [ f0x40F869FE66666666, %bb.i ]
  %i.kx = getelementptr inbounds [8 x i8], ptr %1, i64 %i.kw
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !52
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %bb.j
  %.2172242 = phi i32 [ %i.kv, %.preheader ], [ %i.le, %bb.j ] ; 2 uses
  %.2175241 = phi i32 [ %.1174246, %.preheader ], [ %.3176, %bb.j ]
  %.2179240 = phi i32 [ %.1178245, %.preheader ], [ %.3180, %bb.j ]
  %.1183239 = phi double [ %.0182244, %.preheader ], [ %.2184, %bb.j ] ; 2 uses
  %i.kz = sext i32 %.2172242 to i64               ; 2 uses
  %i.la = getelementptr inbounds [8 x i8], ptr %i.ky, i64 %i.kz
  %i.lb = load double, ptr %i.la, align 8, !tbaa !24 ; 2 uses
  %i.lc = fcmp olt double %i.lb, %.1183239        ; 3 uses
  %.2184 = select i1 %i.lc, double %i.lb, double %.1183239 ; 3 uses
  %.3180 = select i1 %i.lc, i32 %.4247, i32 %.2179240 ; 3 uses
  %.3176 = select i1 %i.lc, i32 %.2172242, i32 %.2175241 ; 3 uses
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.kq, i64 %i.kz
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !168 ; 2 uses
  %.not218 = icmp eq i32 %i.le, -1
  br i1 %.not218, label %.loopexit, label %bb.j, !llvm.loop !191

._crit_edge248.loopexit:                          ; preds = %.loopexit
  %i.lf = fmul double %.2184, 5.000000e-01
  br label %._crit_edge248

._crit_edge248:                                   ; preds = %._crit_edge248.loopexit, %bb.i
  %.0182.lcssa = phi double [ f0x40E869FE66666666, %bb.i ], [ %i.lf, %._crit_edge248.loopexit ] ; 3 uses
  %.1178.lcssa = phi i32 [ %.0177278, %bb.i ], [ %.3180, %._crit_edge248.loopexit ] ; 5 uses
  %.1174.lcssa = phi i32 [ %.0173279, %bb.i ], [ %.3176, %._crit_edge248.loopexit ] ; 6 uses
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv303
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !87 ; 2 uses
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !89 ; 4 uses
  %i.lj = load ptr, ptr @veryfastsupg_double_outtree.hist, align 8, !tbaa !89 ; 2 uses
  %i.lk = sext i32 %.1178.lcssa to i64            ; 6 uses
  %i.ll = getelementptr inbounds [4 x i8], ptr %i.lj, i64 %i.lk ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !4  ; 2 uses
  %i.ln = icmp eq i32 %i.lm, -1
  br i1 %i.ln, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge248
  %i.lo = getelementptr inbounds nuw i8, ptr %i.li, i64 4
  store i32 %.1178.lcssa, ptr %i.li, align 4, !tbaa !4
  store i32 -1, ptr %i.lo, align 4, !tbaa !4
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge248
  %i.lp = sext i32 %i.lm to i64
  %i.lq = getelementptr inbounds [8 x i8], ptr %2, i64 %i.lp
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !87 ; 2 uses
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !89 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !89 ; 3 uses
  %i.lv = load i32, ptr %i.ls, align 4, !tbaa !4  ; 3 uses
  %i.lw = load i32, ptr %i.lu, align 4, !tbaa !4  ; 3 uses
  %i.lx = icmp sgt i32 %i.lv, %i.lw               ; 2 uses
  %i.ly = tail call i32 @llvm.smin.i32(i32 %i.lv, i32 %i.lw) ; 2 uses
  %i.lz = tail call i32 @llvm.smax.i32(i32 %i.lv, i32 %i.lw)
  %.220 = select i1 %i.lx, ptr %i.ls, ptr %i.lu   ; 2 uses
  %.not210251 = icmp eq i32 %i.ly, -1
  br i1 %.not210251, label %.preheader224, label %.lr.ph255.preheader

.lr.ph255.preheader:                              ; preds = %bb.l
  %. = select i1 %i.lx, ptr %i.lu, ptr %i.ls
  br label %.lr.ph255

.preheader224.loopexit:                           ; preds = %.lr.ph255
  %.pre308 = load i32, ptr %.220, align 4, !tbaa !4
  br label %.preheader224

.preheader224:                                    ; preds = %.preheader224.loopexit, %bb.l
  %i.ma = phi i32 [ %i.lz, %bb.l ], [ %.pre308, %.preheader224.loopexit ] ; 2 uses
  %.0192.lcssa = phi ptr [ %i.li, %bb.l ], [ %i.md, %.preheader224.loopexit ] ; 2 uses
  %.not211257 = icmp eq i32 %i.ma, -1
  br i1 %.not211257, label %._crit_edge261, label %.lr.ph260

.lr.ph255:                                        ; preds = %.lr.ph255.preheader, %.lr.ph255
  %i.mb = phi i32 [ %i.me, %.lr.ph255 ], [ %i.ly, %.lr.ph255.preheader ]
  %.0188253 = phi ptr [ %i.mc, %.lr.ph255 ], [ %., %.lr.ph255.preheader ]
  %.0192252 = phi ptr [ %i.md, %.lr.ph255 ], [ %i.li, %.lr.ph255.preheader ] ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.0188253, i64 4 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.0192252, i64 4 ; 2 uses
  store i32 %i.mb, ptr %.0192252, align 4, !tbaa !4
  %i.me = load i32, ptr %i.mc, align 4, !tbaa !4  ; 2 uses
  %.not210 = icmp eq i32 %i.me, -1
  br i1 %.not210, label %.preheader224.loopexit, label %.lr.ph255, !llvm.loop !192

.lr.ph260:                                        ; preds = %.preheader224, %.lr.ph260
  %i.mf = phi i32 [ %i.mi, %.lr.ph260 ], [ %i.ma, %.preheader224 ]
  %.1189259 = phi ptr [ %i.mg, %.lr.ph260 ], [ %.220, %.preheader224 ]
  %.1193258 = phi ptr [ %i.mh, %.lr.ph260 ], [ %.0192.lcssa, %.preheader224 ] ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.1189259, i64 4 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.1193258, i64 4 ; 2 uses
  store i32 %i.mf, ptr %.1193258, align 4, !tbaa !4
  %i.mi = load i32, ptr %i.mg, align 4, !tbaa !4  ; 2 uses
  %.not211 = icmp eq i32 %i.mi, -1
  br i1 %.not211, label %._crit_edge261, label %.lr.ph260, !llvm.loop !193

._crit_edge261:                                   ; preds = %.lr.ph260, %.preheader224
  %.1193.lcssa = phi ptr [ %.0192.lcssa, %.preheader224 ], [ %i.mh, %.lr.ph260 ]
  store i32 -1, ptr %.1193.lcssa, align 4, !tbaa !4
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge261, %bb.k
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !89 ; 4 uses
  %i.ml = sext i32 %.1174.lcssa to i64            ; 5 uses
  %i.mm = getelementptr inbounds [4 x i8], ptr %i.lj, i64 %i.ml
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !4  ; 2 uses
  %i.mo = icmp eq i32 %i.mn, -1
  br i1 %i.mo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mk, i64 4
  store i32 %.1174.lcssa, ptr %i.mk, align 4, !tbaa !4
  store i32 -1, ptr %i.mp, align 4, !tbaa !4
end_hunk_6
begin_hunk_7_@veryfastsupg_double_outtree:bb.a

._crit_edge273:                                   ; preds = %.lr.ph272, %.preheader223
  %.3195.lcssa = phi ptr [ %.2194.lcssa, %.preheader223 ], [ %i.ni, %.lr.ph272 ]
  store i32 -1, ptr %.3195.lcssa, align 4, !tbaa !4
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge273, %bb.n
  %i.nk = load ptr, ptr @veryfastsupg_double_outtree.tmptmplen, align 8, !tbaa !52 ; 2 uses
  %i.nl = getelementptr inbounds [8 x i8], ptr %i.nk, i64 %i.lk ; 2 uses
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !24
  %i.nn = fsub double %.0182.lcssa, %i.nm
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv303 ; 2 uses
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !52 ; 2 uses
  store double %i.nn, ptr %i.np, align 8, !tbaa !24
  %i.nq = getelementptr inbounds [8 x i8], ptr %i.nk, i64 %i.ml
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !24
  %i.ns = fsub double %.0182.lcssa, %i.nr
  %i.nt = getelementptr inbounds nuw i8, ptr %i.np, i64 8
  store double %i.ns, ptr %i.nt, align 8, !tbaa !24
  store double %.0182.lcssa, ptr %i.nl, align 8, !tbaa !24
  store i32 %i.kl, ptr %i.ll, align 4, !tbaa !4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.u
  %i.nu = phi ptr [ %i.kq, %bb.p ], [ %i.oh, %bb.u ]
  %.5275 = phi i32 [ 0, %bb.p ], [ %i.ok, %bb.u ] ; 8 uses
  %.not216 = icmp eq i32 %.5275, %.1178.lcssa
  %.not217 = icmp eq i32 %.5275, %.1174.lcssa
  %or.cond = select i1 %.not216, i1 true, i1 %.not217
  br i1 %or.cond, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.nv = icmp slt i32 %.5275, %.1178.lcssa
  br i1 %i.nv, label %._crit_edge314, label %bb.s

._crit_edge314:                                   ; preds = %bb.r
  %.pre315 = sext i32 %.5275 to i64               ; 2 uses
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  %.1174..5 = tail call i32 @llvm.smax.i32(i32 %.5275, i32 %.1174.lcssa)
  %.5..1174 = tail call i32 @llvm.smin.i32(i32 %.5275, i32 %.1174.lcssa)
  %.pre310 = sext i32 %.5275 to i64
  %.pre311 = sext i32 %.1174..5 to i64
  %.pre317 = sext i32 %.5..1174 to i64
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge314, %bb.s
  %.pre-phi318 = phi i64 [ %.pre315, %._crit_edge314 ], [ %.pre317, %bb.s ]
  %.pre-phi316 = phi i64 [ %.pre315, %._crit_edge314 ], [ %i.lk, %bb.s ]
  %.pre-phi312 = phi i64 [ %i.ml, %._crit_edge314 ], [ %.pre311, %bb.s ]
  %.pre-phi = phi i64 [ %i.lk, %._crit_edge314 ], [ %.pre310, %bb.s ] ; 2 uses
  %i.nw = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi316 ; 2 uses
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !52
  %i.ny = getelementptr inbounds [8 x i8], ptr %i.nx, i64 %.pre-phi
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !24
  %i.oa = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi318
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !52
  %i.oc = getelementptr inbounds [8 x i8], ptr %i.ob, i64 %.pre-phi312
  %i.od = load double, ptr %i.oc, align 8, !tbaa !24
  %i.oe = tail call double %.sroa.0.0(double noundef %i.nz, double noundef %i.od) #33, !callees !196
  %i.of = load ptr, ptr %i.nw, align 8, !tbaa !52
  %i.og = getelementptr inbounds [8 x i8], ptr %i.of, i64 %.pre-phi
  store double %i.oe, ptr %i.og, align 8, !tbaa !24
  %.pre313 = load ptr, ptr @veryfastsupg_double_outtree.ac, align 8, !tbaa !164
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %bb.t
  %i.oh = phi ptr [ %i.nu, %bb.q ], [ %.pre313, %bb.t ] ; 5 uses
  %i.oi = sext i32 %.5275 to i64
  %i.oj = getelementptr inbounds [8 x i8], ptr %i.oh, i64 %i.oi
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !168 ; 2 uses
  %.not214 = icmp eq i32 %i.ok, -1
  br i1 %.not214, label %bb.v, label %bb.q, !llvm.loop !197

bb.v:                                             ; preds = %bb.u
  %i.ol = getelementptr inbounds [8 x i8], ptr %i.oh, i64 %i.ml ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 4
  %i.on = load i32, ptr %i.om, align 4, !tbaa !170 ; 2 uses
  %i.oo = load i32, ptr %i.ol, align 4, !tbaa !168 ; 3 uses
  %i.op = sext i32 %i.on to i64
  %i.oq = getelementptr inbounds [8 x i8], ptr %i.oh, i64 %i.op
  store i32 %i.oo, ptr %i.oq, align 4, !tbaa !168
  %.not215 = icmp eq i32 %i.oo, -1
  br i1 %.not215, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.or = sext i32 %i.oo to i64
  %i.os = getelementptr inbounds [8 x i8], ptr %i.oh, i64 %i.or
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 4
  store i32 %i.on, ptr %i.ot, align 4, !tbaa !170
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ou = load ptr, ptr @veryfastsupg_double_outtree.treetmp, align 8, !tbaa !12
  %i.ov = load ptr, ptr @veryfastsupg_double_outtree.tree, align 8, !tbaa !77 ; 2 uses
  %i.ow = getelementptr inbounds [8 x i8], ptr %i.ov, i64 %i.lk
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !12
  %i.oy = load ptr, ptr %i.no, align 8, !tbaa !52 ; 2 uses
  %i.oz = load double, ptr %i.oy, align 8, !tbaa !24
  %i.pa = getelementptr inbounds [8 x i8], ptr %i.ov, i64 %i.ml
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !12
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  %i.pd = load double, ptr %i.pc, align 8, !tbaa !24
  %i.pe = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ou, ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef %i.ox, double noundef %i.oz, ptr noundef %i.pb, double noundef %i.pd) #33 ; 0 uses
  %i.pf = load ptr, ptr @veryfastsupg_double_outtree.tree, align 8, !tbaa !77
  %i.pg = getelementptr inbounds [8 x i8], ptr %i.pf, i64 %i.lk
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !12
  %i.pi = load ptr, ptr @veryfastsupg_double_outtree.treetmp, align 8, !tbaa !12
  %i.pj = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ph, ptr noundef nonnull dereferenceable(1) %i.pi) #33 ; 0 uses
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 1 ; 2 uses
  %exitcond307.not = icmp eq i64 %indvars.iv.next304, %wide.trip.count306
  br i1 %exitcond307.not, label %._crit_edge282, label %.lr.ph281, !llvm.loop !198

._crit_edge282:                                   ; preds = %bb.x, %._crit_edge238.thread, %._crit_edge238
  %i.pk = tail call noalias ptr @fopen(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) ; 2 uses
  %i.pl = load ptr, ptr @veryfastsupg_double_outtree.treetmp, align 8, !tbaa !12
  %i.pm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pk, ptr noundef nonnull @.str.4, ptr noundef %i.pl) #33 ; 0 uses
  %i.pn = tail call i32 @fclose(ptr noundef %i.pk) ; 0 uses
  %i.po = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc208 = tail call i32 @fputc(i32 10, ptr %i.po) ; 0 uses
  %i.pp = load ptr, ptr @veryfastsupg_double_outtree.tmptmplen, align 8, !tbaa !52
  tail call void @free(ptr noundef %i.pp) #33
  store ptr null, ptr @veryfastsupg_double_outtree.tmptmplen, align 8, !tbaa !52
  %i.pq = load ptr, ptr @veryfastsupg_double_outtree.hist, align 8, !tbaa !89
  tail call void @free(ptr noundef %i.pq) #33
  store ptr null, ptr @veryfastsupg_double_outtree.hist, align 8, !tbaa !89
  %i.pr = load ptr, ptr @veryfastsupg_double_outtree.ac, align 8, !tbaa !164
  tail call void @free(ptr noundef %i.pr) #33
  store ptr null, ptr @veryfastsupg_double_outtree.ac, align 8, !tbaa !164
  %i.ps = load ptr, ptr @veryfastsupg_double_outtree.tree, align 8, !tbaa !77
  tail call void @FreeCharMtx(ptr noundef %i.ps) #33
  %i.pt = load ptr, ptr @veryfastsupg_double_outtree.treetmp, align 8, !tbaa !12
  tail call void @free(ptr noundef %i.pt) #33
  %i.pu = load ptr, ptr @veryfastsupg_double_outtree.nametmp, align 8, !tbaa !12
  tail call void @free(ptr noundef %i.pu) #33
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal double @cluster_mix_double(double noundef %0, double noundef %1) unnamed_addr #18 {
bb.a:
  %i.a = fcmp olt double %0, %1
  %i.b = select i1 %i.a, double %0, double %1
  %i.c = load double, ptr @sueff1_double, align 8, !tbaa !24
  %i.d = fadd double %0, %1
  %i.e = load double, ptr @sueff05_double, align 8, !tbaa !24
  %i.f = fmul double %i.d, %i.e
  %i.g = tail call double @llvm.fmuladd.f64(double %i.b, double %i.c, double %i.f)
  ret double %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef double @cluster_average_double(double noundef %0, double noundef %1) unnamed_addr #19 {
bb.a:
  %i.a = fadd double %0, %1
  %i.b = fmul double %i.a, 5.000000e-01
  ret double %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef double @cluster_minimum_double(double noundef %0, double noundef %1) unnamed_addr #19 {
bb.a:
  %i.a = fcmp olt double %0, %1
  %i.b = select i1 %i.a, double %0, double %1
  ret double %i.b
}

; Function Attrs: nounwind uwtable
define dso_local void @veryfastsupg(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr @veryfastsupg.eff, align 8, !tbaa !87
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @njob, align 4, !tbaa !4   ; 2 uses
  %i.c = tail call ptr @AllocateIntMtx(i32 noundef %i.b, i32 noundef %i.b) #33
  store ptr %i.c, ptr @veryfastsupg.eff, align 8, !tbaa !87
  %i.d = load i32, ptr @njob, align 4, !tbaa !4
  %i.e = tail call ptr @AllocateIntVec(i32 noundef %i.d) #33
  store ptr %i.e, ptr @veryfastsupg.hist, align 8, !tbaa !89
  %i.f = load i32, ptr @njob, align 4, !tbaa !4
  %i.g = sext i32 %i.f to i64
  %i.h = shl nsw i64 %i.g, 3
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #34
  store ptr %i.i, ptr @veryfastsupg.tmptmplen, align 8, !tbaa !52
  %i.j = load i32, ptr @njob, align 4, !tbaa !4
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 3
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #34
  store ptr %i.m, ptr @veryfastsupg.ac, align 8, !tbaa !164
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = icmp sgt i32 %0, 0
  br i1 %i.n, label %.preheader208.lr.ph, label %._crit_edge217.thread

.preheader208.lr.ph:                              ; preds = %bb.c
  %i.o = load ptr, ptr @veryfastsupg.eff, align 8
  %wide.trip.count270 = zext nneg i32 %0 to i64   ; 4 uses
  %min.iters.check = icmp ult i32 %0, 4
  %n.vec = and i64 %wide.trip.count270, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count270
  br label %.preheader208.us

.preheader208.us:                                 ; preds = %._crit_edge.us, %.preheader208.lr.ph
  %indvars.iv267 = phi i64 [ %indvars.iv.next268, %._crit_edge.us ], [ 0, %.preheader208.lr.ph ] ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv267
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !52   ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv267
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !89   ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader208.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader208.us ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <2 x double>, ptr %i.t, align 8, !tbaa !24
  %wide.load322 = load <2 x double>, ptr %i.u, align 8, !tbaa !24
  %i.v = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> splat (double 1.000000e+06), <2 x double> splat (double 5.000000e-01))
  %i.w = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load322, <2 x double> splat (double 1.000000e+06), <2 x double> splat (double 5.000000e-01))
  %i.x = fptosi <2 x double> %i.v to <2 x i32>
  %i.y = fptosi <2 x double> %i.w to <2 x i32>
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store <2 x i32> %i.x, ptr %i.z, align 4, !tbaa !4
  store <2 x i32> %i.y, ptr %i.aa, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !199

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader208.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader208.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !24
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.ad, double 1.000000e+06, double 5.000000e-01)
  %i.af = fptosi double %i.ae to i32
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count270
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !200

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1 ; 2 uses
  %exitcond271.not = icmp eq i64 %indvars.iv.next268, %wide.trip.count270
  br i1 %exitcond271.not, label %.preheader207, label %.preheader208.us, !llvm.loop !201

.preheader207:                                    ; preds = %._crit_edge.us
  %.pre = load ptr, ptr @veryfastsupg.ac, align 8, !tbaa !164 ; 4 uses
  %wide.trip.count275 = zext nneg i32 %0 to i64   ; 3 uses
  %min.iters.check324 = icmp ult i32 %0, 4
  br i1 %min.iters.check324, label %scalar.ph323.preheader, label %vector.ph325

vector.ph325:                                     ; preds = %.preheader207
  %n.vec327 = and i64 %wide.trip.count275, 2147483644 ; 3 uses
  br label %vector.body328

vector.body328:                                   ; preds = %vector.body328, %vector.ph325
  %index329 = phi i64 [ 0, %vector.ph325 ], [ %index.next333, %vector.body328 ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph325 ], [ %vec.ind.next, %vector.body328 ] ; 3 uses
  %vec.ind330 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph325 ], [ %vec.ind.next334, %vector.body328 ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index329
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index329
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.al = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.am = shufflevector <2 x i32> %i.ak, <2 x i32> %vec.ind330, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec = add <4 x i32> %i.am, <i32 1, i32 -1, i32 1, i32 -1>
  store <4 x i32> %interleaved.vec, ptr %i.ah, align 4, !tbaa !4
  %i.an = shufflevector <2 x i32> %i.al, <2 x i32> %vec.ind330, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec332 = add <4 x i32> %i.an, <i32 3, i32 1, i32 3, i32 1>
  store <4 x i32> %interleaved.vec332, ptr %i.aj, align 4, !tbaa !4
  %index.next333 = add nuw i64 %index329, 4       ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %vec.ind.next334 = add <2 x i32> %vec.ind330, splat (i32 4)
  %i.ao = icmp eq i64 %index.next333, %n.vec327
  br i1 %i.ao, label %middle.block335, label %vector.body328, !llvm.loop !202

middle.block335:                                  ; preds = %vector.body328
  %cmp.n336 = icmp eq i64 %n.vec327, %wide.trip.count275
  br i1 %cmp.n336, label %._crit_edge217, label %scalar.ph323.preheader

scalar.ph323.preheader:                           ; preds = %.preheader207, %middle.block335
  %indvars.iv272.ph = phi i64 [ 0, %.preheader207 ], [ %n.vec327, %middle.block335 ]
  br label %scalar.ph323

scalar.ph323:                                     ; preds = %scalar.ph323.preheader, %scalar.ph323
  %indvars.iv272 = phi i64 [ %indvars.iv.next273, %scalar.ph323 ], [ %indvars.iv272.ph, %scalar.ph323.preheader ] ; 3 uses
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv272 ; 2 uses
  %i.aq = trunc nuw nsw i64 %indvars.iv.next273 to i32
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !168
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.as = trunc i64 %indvars.iv272 to i32
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !170
  %exitcond276.not = icmp eq i64 %indvars.iv.next273, %wide.trip.count275
  br i1 %exitcond276.not, label %._crit_edge217, label %scalar.ph323, !llvm.loop !203

._crit_edge217.thread:                            ; preds = %bb.c
  %.pre309 = load ptr, ptr @veryfastsupg.ac, align 8, !tbaa !164
  %i.au = sext i32 %0 to i64
  %i.av = getelementptr [8 x i8], ptr %.pre309, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 -8
  store i32 -1, ptr %i.aw, align 4, !tbaa !168
  %i.ax = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc312 = tail call i32 @fputc(i32 10, ptr %i.ax) ; 0 uses
  br label %._crit_edge217.._crit_edge262_crit_edge

._crit_edge217:                                   ; preds = %scalar.ph323, %middle.block335
  %i.ay = add nsw i32 %0, -1                      ; 2 uses
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.az
  store i32 -1, ptr %i.ba, align 4, !tbaa !168
  %i.bb = load ptr, ptr @veryfastsupg.tmptmplen, align 8, !tbaa !52
  %i.bc = zext nneg i32 %0 to i64
  %i.bd = shl nuw nsw i64 %i.bc, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bb, i8 0, i64 %i.bd, i1 false), !tbaa !24
  %i.be = load ptr, ptr @veryfastsupg.hist, align 8, !tbaa !89
  %i.bf = zext nneg i32 %0 to i64
  %i.bg = shl nuw nsw i64 %i.bf, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.be, i8 -1, i64 %i.bg, i1 false), !tbaa !4
  %i.bh = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %i.bh) ; 0 uses
  %.not317 = icmp eq i32 %0, 1
  br i1 %.not317, label %._crit_edge217.._crit_edge262_crit_edge, label %.lr.ph261.preheader

._crit_edge217.._crit_edge262_crit_edge:          ; preds = %._crit_edge217.thread, %._crit_edge217
  %.pre293 = load ptr, ptr @veryfastsupg.eff, align 8, !tbaa !87
  br label %._crit_edge262

.lr.ph261.preheader:                              ; preds = %._crit_edge217
  %wide.trip.count286 = zext nneg i32 %i.ay to i64
  br label %.lr.ph261

.lr.ph261:                                        ; preds = %.lr.ph261.preheader, %bb.t
  %indvars.iv283 = phi i64 [ 0, %.lr.ph261.preheader ], [ %indvars.iv.next284, %bb.t ] ; 4 uses
  %.0156259 = phi i32 [ -1, %.lr.ph261.preheader ], [ %.1157.lcssa, %bb.t ] ; 2 uses
  %.0160258 = phi i32 [ -1, %.lr.ph261.preheader ], [ %.1161.lcssa, %bb.t ] ; 2 uses
  %i.bi = trunc nuw nsw i64 %indvars.iv283 to i32 ; 3 uses
  %i.bj = urem i32 %i.bi, 10
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph261
  %i.bl = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bl, ptr noundef nonnull @.str.24, i32 noundef %i.bi, i32 noundef %0) #31 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph261
  %i.bn = load ptr, ptr @veryfastsupg.ac, align 8, !tbaa !164 ; 7 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !168 ; 2 uses
  %.not191222 = icmp eq i32 %i.bo, -1
  br i1 %.not191222, label %._crit_edge227, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.e
  %i.bp = load ptr, ptr @veryfastsupg.eff, align 8, !tbaa !87
  br label %.preheader

.loopexit:                                        ; preds = %bb.f
  %i.bq = sext i32 %i.bt to i64                   ; 2 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !168 ; 2 uses
  %.not191 = icmp eq i32 %i.bs, -1
  br i1 %.not191, label %._crit_edge227.loopexit, label %.preheader, !llvm.loop !204

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %i.bt = phi i32 [ %i.bo, %.preheader.lr.ph ], [ %i.bs, %.loopexit ] ; 3 uses
  %i.bu = phi i64 [ 0, %.preheader.lr.ph ], [ %i.bq, %.loopexit ]
  %.4226 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.bt, %.loopexit ]
  %.1157225 = phi i32 [ %.0156259, %.preheader.lr.ph ], [ %.3159, %.loopexit ]
  %.1161224 = phi i32 [ %.0160258, %.preheader.lr.ph ], [ %.3163, %.loopexit ]
  %.0165223 = phi i32 [ 4000000, %.preheader.lr.ph ], [ %.2167, %.loopexit ]
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !89
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %bb.f
  %.1155221 = phi i32 [ %i.bt, %.preheader ], [ %i.cc, %bb.f ] ; 2 uses
  %.2158220 = phi i32 [ %.1157225, %.preheader ], [ %.3159, %bb.f ]
  %.2162219 = phi i32 [ %.1161224, %.preheader ], [ %.3163, %bb.f ]
  %.1166218 = phi i32 [ %.0165223, %.preheader ], [ %.2167, %bb.f ] ; 2 uses
  %i.bx = sext i32 %.1155221 to i64               ; 2 uses
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !4  ; 2 uses
  %i.ca = icmp slt i32 %i.bz, %.1166218           ; 2 uses
  %.2167 = tail call i32 @llvm.smin.i32(i32 %i.bz, i32 %.1166218) ; 3 uses
  %.3163 = select i1 %i.ca, i32 %.4226, i32 %.2162219 ; 3 uses
  %.3159 = select i1 %i.ca, i32 %.1155221, i32 %.2158220 ; 3 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bx
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !168 ; 2 uses
  %.not200 = icmp eq i32 %i.cc, -1
  br i1 %.not200, label %.loopexit, label %bb.f, !llvm.loop !205

._crit_edge227.loopexit:                          ; preds = %.loopexit
  %i.cd = sitofp i32 %.2167 to double
  %i.ce = fmul nnan double %i.cd, 5.000000e-01
  br label %._crit_edge227

._crit_edge227:                                   ; preds = %._crit_edge227.loopexit, %bb.e
  %.0165.lcssa = phi double [ 2.000000e+06, %bb.e ], [ %i.ce, %._crit_edge227.loopexit ]
  %.1161.lcssa = phi i32 [ %.0160258, %bb.e ], [ %.3163, %._crit_edge227.loopexit ] ; 5 uses
  %.1157.lcssa = phi i32 [ %.0156259, %bb.e ], [ %.3159, %._crit_edge227.loopexit ] ; 6 uses
  %i.cf = fdiv double %.0165.lcssa, 1.000000e+06  ; 3 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv283
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !87 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !89 ; 4 uses
  %i.cj = load ptr, ptr @veryfastsupg.hist, align 8, !tbaa !89 ; 2 uses
  %i.ck = sext i32 %.1161.lcssa to i64            ; 4 uses
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.ck ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !4  ; 2 uses
  %i.cn = icmp eq i32 %i.cm, -1
  br i1 %i.cn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge227
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store i32 %.1161.lcssa, ptr %i.ci, align 4, !tbaa !4
  store i32 -1, ptr %i.co, align 4, !tbaa !4
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge227
  %i.cp = sext i32 %i.cm to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cp
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !87 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !89 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !89 ; 3 uses
  %i.cv = load i32, ptr %i.cs, align 4, !tbaa !4  ; 3 uses
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !4  ; 3 uses
  %i.cx = icmp sgt i32 %i.cv, %i.cw               ; 2 uses
  %i.cy = tail call i32 @llvm.smin.i32(i32 %i.cv, i32 %i.cw) ; 2 uses
  %i.cz = tail call i32 @llvm.smax.i32(i32 %i.cv, i32 %i.cw)
  %.201 = select i1 %i.cx, ptr %i.cs, ptr %i.cu   ; 2 uses
  %.not192231 = icmp eq i32 %i.cy, -1
  br i1 %.not192231, label %.preheader205, label %.lr.ph235.preheader

.lr.ph235.preheader:                              ; preds = %bb.h
  %. = select i1 %i.cx, ptr %i.cu, ptr %i.cs
  br label %.lr.ph235

.preheader205.loopexit:                           ; preds = %.lr.ph235
  %.pre288 = load i32, ptr %.201, align 4, !tbaa !4
  br label %.preheader205

.preheader205:                                    ; preds = %.preheader205.loopexit, %bb.h
  %i.da = phi i32 [ %i.cz, %bb.h ], [ %.pre288, %.preheader205.loopexit ] ; 2 uses
  %.0175.lcssa = phi ptr [ %i.ci, %bb.h ], [ %i.dd, %.preheader205.loopexit ] ; 2 uses
  %.not193237 = icmp eq i32 %i.da, -1
  br i1 %.not193237, label %._crit_edge241, label %.lr.ph240

.lr.ph235:                                        ; preds = %.lr.ph235.preheader, %.lr.ph235
  %i.db = phi i32 [ %i.de, %.lr.ph235 ], [ %i.cy, %.lr.ph235.preheader ]
  %.0171233 = phi ptr [ %i.dc, %.lr.ph235 ], [ %., %.lr.ph235.preheader ]
  %.0175232 = phi ptr [ %i.dd, %.lr.ph235 ], [ %i.ci, %.lr.ph235.preheader ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.0171233, i64 4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0175232, i64 4 ; 2 uses
  store i32 %i.db, ptr %.0175232, align 4, !tbaa !4
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !4  ; 2 uses
  %.not192 = icmp eq i32 %i.de, -1
  br i1 %.not192, label %.preheader205.loopexit, label %.lr.ph235, !llvm.loop !206

.lr.ph240:                                        ; preds = %.preheader205, %.lr.ph240
  %i.df = phi i32 [ %i.di, %.lr.ph240 ], [ %i.da, %.preheader205 ]
  %.1172239 = phi ptr [ %i.dg, %.lr.ph240 ], [ %.201, %.preheader205 ]
  %.1176238 = phi ptr [ %i.dh, %.lr.ph240 ], [ %.0175.lcssa, %.preheader205 ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.1172239, i64 4 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.1176238, i64 4 ; 2 uses
  store i32 %i.df, ptr %.1176238, align 4, !tbaa !4
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !4  ; 2 uses
  %.not193 = icmp eq i32 %i.di, -1
  br i1 %.not193, label %._crit_edge241, label %.lr.ph240, !llvm.loop !207

._crit_edge241:                                   ; preds = %.lr.ph240, %.preheader205
  %.1176.lcssa = phi ptr [ %.0175.lcssa, %.preheader205 ], [ %i.dh, %.lr.ph240 ]
  store i32 -1, ptr %.1176.lcssa, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge241, %bb.g
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !89 ; 4 uses
end_hunk_7
begin_hunk_8_@veryfastsupg:bb.a
  %i.dr = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !87 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !89 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !89 ; 3 uses
  %i.dw = load i32, ptr %i.dt, align 4, !tbaa !4  ; 3 uses
  %i.dx = load i32, ptr %i.dv, align 4, !tbaa !4  ; 3 uses
  %i.dy = icmp sgt i32 %i.dw, %i.dx               ; 2 uses
  %i.dz = tail call i32 @llvm.smin.i32(i32 %i.dw, i32 %i.dx) ; 2 uses
  %i.ea = tail call i32 @llvm.smax.i32(i32 %i.dw, i32 %i.dx)
  %.203 = select i1 %i.dy, ptr %i.dt, ptr %i.dv   ; 2 uses
  %.not194243 = icmp eq i32 %i.dz, -1
  br i1 %.not194243, label %.preheader204, label %.lr.ph247.preheader

.lr.ph247.preheader:                              ; preds = %bb.k
  %.202 = select i1 %i.dy, ptr %i.dv, ptr %i.dt
  br label %.lr.ph247

.preheader204.loopexit:                           ; preds = %.lr.ph247
  %.pre289 = load i32, ptr %.203, align 4, !tbaa !4
  br label %.preheader204

.preheader204:                                    ; preds = %.preheader204.loopexit, %bb.k
  %i.eb = phi i32 [ %i.ea, %bb.k ], [ %.pre289, %.preheader204.loopexit ] ; 2 uses
  %.2177.lcssa = phi ptr [ %i.dk, %bb.k ], [ %i.ee, %.preheader204.loopexit ] ; 2 uses
  %.not195249 = icmp eq i32 %i.eb, -1
  br i1 %.not195249, label %._crit_edge253, label %.lr.ph252

.lr.ph247:                                        ; preds = %.lr.ph247.preheader, %.lr.ph247
  %i.ec = phi i32 [ %i.ef, %.lr.ph247 ], [ %i.dz, %.lr.ph247.preheader ]
  %.2173245 = phi ptr [ %i.ed, %.lr.ph247 ], [ %.202, %.lr.ph247.preheader ]
  %.2177244 = phi ptr [ %i.ee, %.lr.ph247 ], [ %i.dk, %.lr.ph247.preheader ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.2173245, i64 4 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.2177244, i64 4 ; 2 uses
  store i32 %i.ec, ptr %.2177244, align 4, !tbaa !4
  %i.ef = load i32, ptr %i.ed, align 4, !tbaa !4  ; 2 uses
  %.not194 = icmp eq i32 %i.ef, -1
  br i1 %.not194, label %.preheader204.loopexit, label %.lr.ph247, !llvm.loop !208

.lr.ph252:                                        ; preds = %.preheader204, %.lr.ph252
  %i.eg = phi i32 [ %i.ej, %.lr.ph252 ], [ %i.eb, %.preheader204 ]
  %.3174251 = phi ptr [ %i.eh, %.lr.ph252 ], [ %.203, %.preheader204 ]
  %.3178250 = phi ptr [ %i.ei, %.lr.ph252 ], [ %.2177.lcssa, %.preheader204 ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.3174251, i64 4 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.3178250, i64 4 ; 2 uses
  store i32 %i.eg, ptr %.3178250, align 4, !tbaa !4
  %i.ej = load i32, ptr %i.eh, align 4, !tbaa !4  ; 2 uses
  %.not195 = icmp eq i32 %i.ej, -1
  br i1 %.not195, label %._crit_edge253, label %.lr.ph252, !llvm.loop !209

._crit_edge253:                                   ; preds = %.lr.ph252, %.preheader204
  %.3178.lcssa = phi ptr [ %.2177.lcssa, %.preheader204 ], [ %i.ei, %.lr.ph252 ]
  store i32 -1, ptr %.3178.lcssa, align 4, !tbaa !4
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge253, %bb.j
  %i.ek = load ptr, ptr @veryfastsupg.tmptmplen, align 8, !tbaa !52 ; 2 uses
  %i.el = getelementptr inbounds [8 x i8], ptr %i.ek, i64 %i.ck ; 2 uses
  %i.em = load double, ptr %i.el, align 8, !tbaa !24
  %i.en = fsub double %i.cf, %i.em
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv283
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !52 ; 2 uses
  store double %i.en, ptr %i.ep, align 8, !tbaa !24
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.ek, i64 %i.dl
  %i.er = load double, ptr %i.eq, align 8, !tbaa !24
  %i.es = fsub double %i.cf, %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store double %i.es, ptr %i.et, align 8, !tbaa !24
  store double %i.cf, ptr %i.el, align 8, !tbaa !24
  store i32 %i.bi, ptr %i.cl, align 4, !tbaa !4
  %i.eu = load ptr, ptr @veryfastsupg.eff, align 8 ; 3 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.q
  %.5255 = phi i32 [ 0, %bb.l ], [ %i.fo, %bb.q ] ; 8 uses
  %.not198 = icmp eq i32 %.5255, %.1161.lcssa
  %.not199 = icmp eq i32 %.5255, %.1157.lcssa
  %or.cond = select i1 %.not198, i1 true, i1 %.not199
  br i1 %or.cond, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ev = icmp slt i32 %.5255, %.1161.lcssa
  br i1 %i.ev, label %._crit_edge294, label %bb.o

._crit_edge294:                                   ; preds = %bb.n
  %.pre295 = sext i32 %.5255 to i64               ; 2 uses
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %.1157..5 = tail call i32 @llvm.smax.i32(i32 %.5255, i32 %.1157.lcssa)
  %.5..1157 = tail call i32 @llvm.smin.i32(i32 %.5255, i32 %.1157.lcssa)
  %.pre290 = sext i32 %.5255 to i64
  %.pre291 = sext i32 %.1157..5 to i64
  %.pre297 = sext i32 %.5..1157 to i64
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge294, %bb.o
  %.pre-phi298 = phi i64 [ %.pre295, %._crit_edge294 ], [ %.pre297, %bb.o ]
  %.pre-phi296 = phi i64 [ %.pre295, %._crit_edge294 ], [ %i.ck, %bb.o ]
  %.pre-phi292 = phi i64 [ %i.dl, %._crit_edge294 ], [ %.pre291, %bb.o ]
  %.pre-phi = phi i64 [ %i.ck, %._crit_edge294 ], [ %.pre290, %bb.o ]
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %.pre-phi296
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !89
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %.pre-phi ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !4  ; 2 uses
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %.pre-phi298
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !89
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %.pre-phi292
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !4  ; 2 uses
  %i.fe = tail call i32 @llvm.smin.i32(i32 %i.ez, i32 %i.fd)
  %i.ff = sitofp i32 %i.fe to double
  %i.fg = add nsw i32 %i.fd, %i.ez
  %i.fh = sitofp i32 %i.fg to double
  %i.fi = fmul nnan double %i.fh, 5.000000e-01
  %i.fj = fmul nnan double %i.fi, 1.000000e-01
  %i.fk = tail call double @llvm.fmuladd.f64(double %i.ff, double 9.000000e-01, double %i.fj)
  %i.fl = fptosi double %i.fk to i32
  store i32 %i.fl, ptr %i.ey, align 4, !tbaa !4
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.p
  %i.fm = sext i32 %.5255 to i64
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !168 ; 2 uses
  %.not196 = icmp eq i32 %i.fo, -1
  br i1 %.not196, label %bb.r, label %bb.m, !llvm.loop !210

bb.r:                                             ; preds = %bb.q
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.dl ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !170 ; 2 uses
  %i.fs = load i32, ptr %i.fp, align 4, !tbaa !168 ; 3 uses
  %i.ft = sext i32 %i.fr to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.ft
  store i32 %i.fs, ptr %i.fu, align 4, !tbaa !168
  %.not197 = icmp eq i32 %i.fs, -1
  br i1 %.not197, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fv = sext i32 %i.fs to i64
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  store i32 %i.fr, ptr %i.fx, align 4, !tbaa !170
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %wide.trip.count286
  br i1 %exitcond287.not, label %._crit_edge262, label %.lr.ph261, !llvm.loop !211

._crit_edge262:                                   ; preds = %bb.t, %._crit_edge217.._crit_edge262_crit_edge
  %i.fy = phi ptr [ %.pre293, %._crit_edge217.._crit_edge262_crit_edge ], [ %i.eu, %bb.t ]
  tail call void @FreeIntMtx(ptr noundef %i.fy) #33
  store ptr null, ptr @veryfastsupg.eff, align 8, !tbaa !87
  %i.fz = load ptr, ptr @veryfastsupg.tmptmplen, align 8, !tbaa !52
  tail call void @free(ptr noundef %i.fz) #33
  store ptr null, ptr @veryfastsupg.tmptmplen, align 8, !tbaa !52
  %i.ga = load ptr, ptr @veryfastsupg.hist, align 8, !tbaa !89
  tail call void @free(ptr noundef %i.ga) #33
  store ptr null, ptr @veryfastsupg.hist, align 8, !tbaa !89
  %i.gb = load ptr, ptr @veryfastsupg.ac, align 8, !tbaa !164
  tail call void @free(ptr noundef %i.gb) #33
  store ptr null, ptr @veryfastsupg.ac, align 8, !tbaa !164
  ret void
}

declare ptr @AllocateIntMtx(i32 noundef, i32 noundef) local_unnamed_addr #13

declare void @FreeIntMtx(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local void @veryfastsupg_int(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr @veryfastsupg_int.eff, align 8, !tbaa !87
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @njob, align 4, !tbaa !4   ; 2 uses
  %i.c = tail call ptr @AllocateIntMtx(i32 noundef %i.b, i32 noundef %i.b) #33
  store ptr %i.c, ptr @veryfastsupg_int.eff, align 8, !tbaa !87
  %i.d = load i32, ptr @njob, align 4, !tbaa !4
  %i.e = tail call ptr @AllocateIntVec(i32 noundef %i.d) #33
  store ptr %i.e, ptr @veryfastsupg_int.hist, align 8, !tbaa !89
  %i.f = load i32, ptr @njob, align 4, !tbaa !4
  %i.g = tail call ptr @AllocateIntVec(i32 noundef %i.f) #33
  store ptr %i.g, ptr @veryfastsupg_int.tmptmplen, align 8, !tbaa !89
  %i.h = load i32, ptr @njob, align 4, !tbaa !4
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #34
  store ptr %i.k, ptr @veryfastsupg_int.ac, align 8, !tbaa !164
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = icmp sgt i32 %0, 0
  br i1 %i.l, label %.preheader208.lr.ph, label %._crit_edge217.thread

.preheader208.lr.ph:                              ; preds = %bb.c
  %i.m = load ptr, ptr @veryfastsupg_int.eff, align 8
  %wide.trip.count270 = zext nneg i32 %0 to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %0, 8
  %n.vec = and i64 %wide.trip.count270, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count270
  %xtraiter = and i64 %wide.trip.count270, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader208.us

.preheader208.us:                                 ; preds = %._crit_edge.us, %.preheader208.lr.ph
  %indvars.iv267 = phi i64 [ %indvars.iv.next268, %._crit_edge.us ], [ 0, %.preheader208.lr.ph ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv267
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !89   ; 7 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv267
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !89   ; 7 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = ptrtoaddr ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  %diff.check = icmp ult i64 %i.t, 32
  %or.cond340 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond340, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader208.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader208.us ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <4 x i32>, ptr %i.u, align 4, !tbaa !4
  %wide.load322 = load <4 x i32>, ptr %i.v, align 4, !tbaa !4
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> %wide.load, ptr %i.w, align 4, !tbaa !4
  store <4 x i32> %wide.load322, ptr %i.x, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !212

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader208.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader208.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.prol
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.prol
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !4
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !213

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ac = sub nsw i64 %indvars.iv.ph, %wide.trip.count270
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.1
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.1
  store i32 %i.al, ptr %i.am, align 4, !tbaa !4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.2
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.2
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count270
  br i1 %exitcond.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !214

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1 ; 2 uses
  %exitcond271.not = icmp eq i64 %indvars.iv.next268, %wide.trip.count270
  br i1 %exitcond271.not, label %.preheader207, label %.preheader208.us, !llvm.loop !215

.preheader207:                                    ; preds = %._crit_edge.us
  %.pre = load ptr, ptr @veryfastsupg_int.ac, align 8, !tbaa !164 ; 4 uses
  %wide.trip.count275 = zext nneg i32 %0 to i64   ; 3 uses
  %min.iters.check324 = icmp ult i32 %0, 4
  br i1 %min.iters.check324, label %scalar.ph323.preheader, label %vector.ph325

vector.ph325:                                     ; preds = %.preheader207
  %n.vec327 = and i64 %wide.trip.count275, 2147483644 ; 3 uses
  br label %vector.body328

vector.body328:                                   ; preds = %vector.body328, %vector.ph325
  %index329 = phi i64 [ 0, %vector.ph325 ], [ %index.next333, %vector.body328 ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph325 ], [ %vec.ind.next, %vector.body328 ] ; 3 uses
  %vec.ind330 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph325 ], [ %vec.ind.next334, %vector.body328 ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index329
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index329
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.au = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.av = shufflevector <2 x i32> %i.at, <2 x i32> %vec.ind330, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec = add <4 x i32> %i.av, <i32 1, i32 -1, i32 1, i32 -1>
  store <4 x i32> %interleaved.vec, ptr %i.aq, align 4, !tbaa !4
  %i.aw = shufflevector <2 x i32> %i.au, <2 x i32> %vec.ind330, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec332 = add <4 x i32> %i.aw, <i32 3, i32 1, i32 3, i32 1>
  store <4 x i32> %interleaved.vec332, ptr %i.as, align 4, !tbaa !4
  %index.next333 = add nuw i64 %index329, 4       ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %vec.ind.next334 = add <2 x i32> %vec.ind330, splat (i32 4)
  %i.ax = icmp eq i64 %index.next333, %n.vec327
  br i1 %i.ax, label %middle.block335, label %vector.body328, !llvm.loop !216

middle.block335:                                  ; preds = %vector.body328
  %cmp.n336 = icmp eq i64 %n.vec327, %wide.trip.count275
  br i1 %cmp.n336, label %._crit_edge217, label %scalar.ph323.preheader

scalar.ph323.preheader:                           ; preds = %.preheader207, %middle.block335
  %indvars.iv272.ph = phi i64 [ 0, %.preheader207 ], [ %n.vec327, %middle.block335 ]
  br label %scalar.ph323

scalar.ph323:                                     ; preds = %scalar.ph323.preheader, %scalar.ph323
  %indvars.iv272 = phi i64 [ %indvars.iv.next273, %scalar.ph323 ], [ %indvars.iv272.ph, %scalar.ph323.preheader ] ; 3 uses
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv272 ; 2 uses
  %i.az = trunc nuw nsw i64 %indvars.iv.next273 to i32
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !168
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bb = trunc i64 %indvars.iv272 to i32
  %i.bc = add i32 %i.bb, -1
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !170
  %exitcond276.not = icmp eq i64 %indvars.iv.next273, %wide.trip.count275
  br i1 %exitcond276.not, label %._crit_edge217, label %scalar.ph323, !llvm.loop !217

._crit_edge217.thread:                            ; preds = %bb.c
  %.pre309 = load ptr, ptr @veryfastsupg_int.ac, align 8, !tbaa !164
  %i.bd = sext i32 %0 to i64
  %i.be = getelementptr [8 x i8], ptr %.pre309, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 -8
  store i32 -1, ptr %i.bf, align 4, !tbaa !168
  %i.bg = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc312 = tail call i32 @fputc(i32 10, ptr %i.bg) ; 0 uses
  br label %._crit_edge217.._crit_edge262_crit_edge

._crit_edge217:                                   ; preds = %scalar.ph323, %middle.block335
  %i.bh = add nsw i32 %0, -1                      ; 2 uses
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.bi
  store i32 -1, ptr %i.bj, align 4, !tbaa !168
  %i.bk = load ptr, ptr @veryfastsupg_int.tmptmplen, align 8, !tbaa !89
  %i.bl = zext nneg i32 %0 to i64
  %i.bm = shl nuw nsw i64 %i.bl, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bk, i8 0, i64 %i.bm, i1 false), !tbaa !4
  %i.bn = load ptr, ptr @veryfastsupg_int.hist, align 8, !tbaa !89
  %i.bo = zext nneg i32 %0 to i64
  %i.bp = shl nuw nsw i64 %i.bo, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bn, i8 -1, i64 %i.bp, i1 false), !tbaa !4
  %i.bq = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %i.bq) ; 0 uses
  %.not317 = icmp eq i32 %0, 1
  br i1 %.not317, label %._crit_edge217.._crit_edge262_crit_edge, label %.lr.ph261.preheader

._crit_edge217.._crit_edge262_crit_edge:          ; preds = %._crit_edge217.thread, %._crit_edge217
  %.pre293 = load ptr, ptr @veryfastsupg_int.eff, align 8, !tbaa !87
  br label %._crit_edge262

.lr.ph261.preheader:                              ; preds = %._crit_edge217
  %wide.trip.count286 = zext nneg i32 %i.bh to i64
  br label %.lr.ph261

.lr.ph261:                                        ; preds = %.lr.ph261.preheader, %bb.t
  %indvars.iv283 = phi i64 [ 0, %.lr.ph261.preheader ], [ %indvars.iv.next284, %bb.t ] ; 4 uses
  %.0156259 = phi i32 [ -1, %.lr.ph261.preheader ], [ %.1157.lcssa, %bb.t ] ; 2 uses
  %.0160258 = phi i32 [ -1, %.lr.ph261.preheader ], [ %.1161.lcssa, %bb.t ] ; 2 uses
  %i.br = trunc nuw nsw i64 %indvars.iv283 to i32 ; 3 uses
  %i.bs = urem i32 %i.br, 10
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph261
  %i.bu = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bu, ptr noundef nonnull @.str.24, i32 noundef %i.br, i32 noundef %0) #31 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph261
  %i.bw = load ptr, ptr @veryfastsupg_int.ac, align 8, !tbaa !164 ; 7 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !168 ; 2 uses
  %.not191222 = icmp eq i32 %i.bx, -1
  br i1 %.not191222, label %._crit_edge227, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.e
  %i.by = load ptr, ptr @veryfastsupg_int.eff, align 8, !tbaa !87
  br label %.preheader

.loopexit:                                        ; preds = %bb.f
  %i.bz = sext i32 %i.cc to i64                   ; 2 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !168 ; 2 uses
  %.not191 = icmp eq i32 %i.cb, -1
  br i1 %.not191, label %._crit_edge227.loopexit, label %.preheader, !llvm.loop !218

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %i.cc = phi i32 [ %i.bx, %.preheader.lr.ph ], [ %i.cb, %.loopexit ] ; 3 uses
  %i.cd = phi i64 [ 0, %.preheader.lr.ph ], [ %i.bz, %.loopexit ]
  %.4226 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.cc, %.loopexit ]
  %.1157225 = phi i32 [ %.0156259, %.preheader.lr.ph ], [ %.3159, %.loopexit ]
  %.1161224 = phi i32 [ %.0160258, %.preheader.lr.ph ], [ %.3163, %.loopexit ]
  %.0164223 = phi i32 [ 4000000, %.preheader.lr.ph ], [ %.2166, %.loopexit ]
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !89
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %bb.f
  %.1155221 = phi i32 [ %i.cc, %.preheader ], [ %i.cl, %bb.f ] ; 2 uses
  %.2158220 = phi i32 [ %.1157225, %.preheader ], [ %.3159, %bb.f ]
  %.2162219 = phi i32 [ %.1161224, %.preheader ], [ %.3163, %bb.f ]
  %.1165218 = phi i32 [ %.0164223, %.preheader ], [ %.2166, %bb.f ] ; 2 uses
  %i.cg = sext i32 %.1155221 to i64               ; 2 uses
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !4  ; 2 uses
  %i.cj = icmp slt i32 %i.ci, %.1165218           ; 2 uses
  %.2166 = tail call i32 @llvm.smin.i32(i32 %i.ci, i32 %.1165218) ; 3 uses
  %.3163 = select i1 %i.cj, i32 %.4226, i32 %.2162219 ; 3 uses
  %.3159 = select i1 %i.cj, i32 %.1155221, i32 %.2158220 ; 3 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.cg
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !168 ; 2 uses
  %.not200 = icmp eq i32 %i.cl, -1
  br i1 %.not200, label %.loopexit, label %bb.f, !llvm.loop !219

._crit_edge227.loopexit:                          ; preds = %.loopexit
  %i.cm = sitofp i32 %.2166 to double
  %i.cn = fmul nnan double %i.cm, 5.000000e-01
  %i.co = fptosi double %i.cn to i32
  br label %._crit_edge227

._crit_edge227:                                   ; preds = %._crit_edge227.loopexit, %bb.e
  %.0164.lcssa = phi i32 [ 2000000, %bb.e ], [ %i.co, %._crit_edge227.loopexit ] ; 3 uses
  %.1161.lcssa = phi i32 [ %.0160258, %bb.e ], [ %.3163, %._crit_edge227.loopexit ] ; 5 uses
  %.1157.lcssa = phi i32 [ %.0156259, %bb.e ], [ %.3159, %._crit_edge227.loopexit ] ; 6 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv283
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !87 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !89 ; 4 uses
  %i.cs = load ptr, ptr @veryfastsupg_int.hist, align 8, !tbaa !89 ; 2 uses
  %i.ct = sext i32 %.1161.lcssa to i64            ; 4 uses
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.ct ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !4  ; 2 uses
  %i.cw = icmp eq i32 %i.cv, -1
  br i1 %i.cw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge227
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  store i32 %.1161.lcssa, ptr %i.cr, align 4, !tbaa !4
  store i32 -1, ptr %i.cx, align 4, !tbaa !4
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge227
  %i.cy = sext i32 %i.cv to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !87 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !89 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !89 ; 3 uses
  %i.de = load i32, ptr %i.db, align 4, !tbaa !4  ; 3 uses
  %i.df = load i32, ptr %i.dd, align 4, !tbaa !4  ; 3 uses
  %i.dg = icmp sgt i32 %i.de, %i.df               ; 2 uses
  %i.dh = tail call i32 @llvm.smin.i32(i32 %i.de, i32 %i.df) ; 2 uses
  %i.di = tail call i32 @llvm.smax.i32(i32 %i.de, i32 %i.df)
  %.201 = select i1 %i.dg, ptr %i.db, ptr %i.dd   ; 2 uses
  %.not192231 = icmp eq i32 %i.dh, -1
  br i1 %.not192231, label %.preheader205, label %.lr.ph235.preheader

.lr.ph235.preheader:                              ; preds = %bb.h
  %. = select i1 %i.dg, ptr %i.dd, ptr %i.db
  br label %.lr.ph235

.preheader205.loopexit:                           ; preds = %.lr.ph235
  %.pre288 = load i32, ptr %.201, align 4, !tbaa !4
  br label %.preheader205

.preheader205:                                    ; preds = %.preheader205.loopexit, %bb.h
  %i.dj = phi i32 [ %i.di, %bb.h ], [ %.pre288, %.preheader205.loopexit ] ; 2 uses
  %.0174.lcssa = phi ptr [ %i.cr, %bb.h ], [ %i.dm, %.preheader205.loopexit ] ; 2 uses
  %.not193237 = icmp eq i32 %i.dj, -1
  br i1 %.not193237, label %._crit_edge241, label %.lr.ph240

.lr.ph235:                                        ; preds = %.lr.ph235.preheader, %.lr.ph235
  %i.dk = phi i32 [ %i.dn, %.lr.ph235 ], [ %i.dh, %.lr.ph235.preheader ]
  %.0170233 = phi ptr [ %i.dl, %.lr.ph235 ], [ %., %.lr.ph235.preheader ]
  %.0174232 = phi ptr [ %i.dm, %.lr.ph235 ], [ %i.cr, %.lr.ph235.preheader ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.0170233, i64 4 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.0174232, i64 4 ; 2 uses
  store i32 %i.dk, ptr %.0174232, align 4, !tbaa !4
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !4  ; 2 uses
  %.not192 = icmp eq i32 %i.dn, -1
  br i1 %.not192, label %.preheader205.loopexit, label %.lr.ph235, !llvm.loop !220

.lr.ph240:                                        ; preds = %.preheader205, %.lr.ph240
  %i.do = phi i32 [ %i.dr, %.lr.ph240 ], [ %i.dj, %.preheader205 ]
  %.1171239 = phi ptr [ %i.dp, %.lr.ph240 ], [ %.201, %.preheader205 ]
  %.1175238 = phi ptr [ %i.dq, %.lr.ph240 ], [ %.0174.lcssa, %.preheader205 ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.1171239, i64 4 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.1175238, i64 4 ; 2 uses
  store i32 %i.do, ptr %.1175238, align 4, !tbaa !4
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !4  ; 2 uses
  %.not193 = icmp eq i32 %i.dr, -1
  br i1 %.not193, label %._crit_edge241, label %.lr.ph240, !llvm.loop !221

._crit_edge241:                                   ; preds = %.lr.ph240, %.preheader205
  %.1175.lcssa = phi ptr [ %.0174.lcssa, %.preheader205 ], [ %i.dq, %.lr.ph240 ]
  store i32 -1, ptr %.1175.lcssa, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge241, %bb.g
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !89 ; 4 uses
end_hunk_8
begin_hunk_9_@veryfastsupg_int:bb.a
  %i.dz = sext i32 %i.dw to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dz
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !87 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !89 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !89 ; 3 uses
  %i.ef = load i32, ptr %i.ec, align 4, !tbaa !4  ; 3 uses
  %i.eg = load i32, ptr %i.ee, align 4, !tbaa !4  ; 3 uses
  %i.eh = icmp sgt i32 %i.ef, %i.eg               ; 2 uses
  %i.ei = tail call i32 @llvm.smin.i32(i32 %i.ef, i32 %i.eg) ; 2 uses
  %i.ej = tail call i32 @llvm.smax.i32(i32 %i.ef, i32 %i.eg)
  %.203 = select i1 %i.eh, ptr %i.ec, ptr %i.ee   ; 2 uses
  %.not194243 = icmp eq i32 %i.ei, -1
  br i1 %.not194243, label %.preheader204, label %.lr.ph247.preheader

.lr.ph247.preheader:                              ; preds = %bb.k
  %.202 = select i1 %i.eh, ptr %i.ee, ptr %i.ec
  br label %.lr.ph247

.preheader204.loopexit:                           ; preds = %.lr.ph247
  %.pre289 = load i32, ptr %.203, align 4, !tbaa !4
  br label %.preheader204

.preheader204:                                    ; preds = %.preheader204.loopexit, %bb.k
  %i.ek = phi i32 [ %i.ej, %bb.k ], [ %.pre289, %.preheader204.loopexit ] ; 2 uses
  %.2176.lcssa = phi ptr [ %i.dt, %bb.k ], [ %i.en, %.preheader204.loopexit ] ; 2 uses
  %.not195249 = icmp eq i32 %i.ek, -1
  br i1 %.not195249, label %._crit_edge253, label %.lr.ph252

.lr.ph247:                                        ; preds = %.lr.ph247.preheader, %.lr.ph247
  %i.el = phi i32 [ %i.eo, %.lr.ph247 ], [ %i.ei, %.lr.ph247.preheader ]
  %.2172245 = phi ptr [ %i.em, %.lr.ph247 ], [ %.202, %.lr.ph247.preheader ]
  %.2176244 = phi ptr [ %i.en, %.lr.ph247 ], [ %i.dt, %.lr.ph247.preheader ] ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.2172245, i64 4 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.2176244, i64 4 ; 2 uses
  store i32 %i.el, ptr %.2176244, align 4, !tbaa !4
  %i.eo = load i32, ptr %i.em, align 4, !tbaa !4  ; 2 uses
  %.not194 = icmp eq i32 %i.eo, -1
  br i1 %.not194, label %.preheader204.loopexit, label %.lr.ph247, !llvm.loop !222

.lr.ph252:                                        ; preds = %.preheader204, %.lr.ph252
  %i.ep = phi i32 [ %i.es, %.lr.ph252 ], [ %i.ek, %.preheader204 ]
  %.3173251 = phi ptr [ %i.eq, %.lr.ph252 ], [ %.203, %.preheader204 ]
  %.3177250 = phi ptr [ %i.er, %.lr.ph252 ], [ %.2176.lcssa, %.preheader204 ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.3173251, i64 4 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.3177250, i64 4 ; 2 uses
  store i32 %i.ep, ptr %.3177250, align 4, !tbaa !4
  %i.es = load i32, ptr %i.eq, align 4, !tbaa !4  ; 2 uses
  %.not195 = icmp eq i32 %i.es, -1
  br i1 %.not195, label %._crit_edge253, label %.lr.ph252, !llvm.loop !223

._crit_edge253:                                   ; preds = %.lr.ph252, %.preheader204
  %.3177.lcssa = phi ptr [ %.2176.lcssa, %.preheader204 ], [ %i.er, %.lr.ph252 ]
  store i32 -1, ptr %.3177.lcssa, align 4, !tbaa !4
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge253, %bb.j
  %i.et = load ptr, ptr @veryfastsupg_int.tmptmplen, align 8, !tbaa !89 ; 2 uses
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.et, i64 %i.ct ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !4
  %i.ew = sub nsw i32 %.0164.lcssa, %i.ev
  %i.ex = sitofp i32 %i.ew to double
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv283
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !52 ; 2 uses
  store double %i.ex, ptr %i.ez, align 8, !tbaa !24
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.et, i64 %i.du
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !4
  %i.fc = sub nsw i32 %.0164.lcssa, %i.fb
  %i.fd = sitofp i32 %i.fc to double
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store double %i.fd, ptr %i.fe, align 8, !tbaa !24
  store i32 %.0164.lcssa, ptr %i.eu, align 4, !tbaa !4
  store i32 %i.br, ptr %i.cu, align 4, !tbaa !4
  %i.ff = load ptr, ptr @veryfastsupg_int.eff, align 8 ; 3 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.q
  %.5255 = phi i32 [ 0, %bb.l ], [ %i.gb, %bb.q ] ; 8 uses
  %.not198 = icmp eq i32 %.5255, %.1161.lcssa
  %.not199 = icmp eq i32 %.5255, %.1157.lcssa
  %or.cond = select i1 %.not198, i1 true, i1 %.not199
  br i1 %or.cond, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fg = icmp slt i32 %.5255, %.1161.lcssa
  br i1 %i.fg, label %._crit_edge294, label %bb.o

._crit_edge294:                                   ; preds = %bb.n
  %.pre295 = sext i32 %.5255 to i64               ; 2 uses
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %.5..1157 = tail call i32 @llvm.smin.i32(i32 %.5255, i32 %.1157.lcssa)
  %.1157..5 = tail call i32 @llvm.smax.i32(i32 %.5255, i32 %.1157.lcssa)
  %.pre290 = sext i32 %.5255 to i64
  %.pre291 = sext i32 %.1157..5 to i64
  %.pre297 = sext i32 %.5..1157 to i64
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge294, %bb.o
  %.pre-phi298 = phi i64 [ %.pre295, %._crit_edge294 ], [ %.pre297, %bb.o ]
  %.pre-phi296 = phi i64 [ %.pre295, %._crit_edge294 ], [ %i.ct, %bb.o ]
  %.pre-phi292 = phi i64 [ %i.du, %._crit_edge294 ], [ %.pre291, %bb.o ]
  %.pre-phi = phi i64 [ %i.ct, %._crit_edge294 ], [ %.pre290, %bb.o ]
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.ff, i64 %.pre-phi296
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !89
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %.pre-phi ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !4  ; 2 uses
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.ff, i64 %.pre-phi298
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !89
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %.pre-phi292
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !4  ; 2 uses
  %i.fp = tail call i32 @llvm.smin.i32(i32 %i.fk, i32 %i.fo)
  %i.fq = sitofp i32 %i.fp to float
  %i.fr = fpext float %i.fq to double
  %i.fs = add nsw i32 %i.fo, %i.fk
  %i.ft = sitofp i32 %i.fs to float
  %i.fu = fpext nnan ninf float %i.ft to double
  %i.fv = fmul nnan double %i.fu, 5.000000e-01
  %i.fw = fmul nnan double %i.fv, 1.000000e-01
  %i.fx = tail call double @llvm.fmuladd.f64(double %i.fr, double 9.000000e-01, double %i.fw)
  %i.fy = fptosi double %i.fx to i32
  store i32 %i.fy, ptr %i.fj, align 4, !tbaa !4
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.p
  %i.fz = sext i32 %.5255 to i64
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !168 ; 2 uses
  %.not196 = icmp eq i32 %i.gb, -1
  br i1 %.not196, label %bb.r, label %bb.m, !llvm.loop !224

bb.r:                                             ; preds = %bb.q
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.du ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !170 ; 2 uses
  %i.gf = load i32, ptr %i.gc, align 4, !tbaa !168 ; 3 uses
  %i.gg = sext i32 %i.ge to i64
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.gg
  store i32 %i.gf, ptr %i.gh, align 4, !tbaa !168
  %.not197 = icmp eq i32 %i.gf, -1
  br i1 %.not197, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gi = sext i32 %i.gf to i64
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  store i32 %i.ge, ptr %i.gk, align 4, !tbaa !170
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %wide.trip.count286
  br i1 %exitcond287.not, label %._crit_edge262, label %.lr.ph261, !llvm.loop !225

._crit_edge262:                                   ; preds = %bb.t, %._crit_edge217.._crit_edge262_crit_edge
  %i.gl = phi ptr [ %.pre293, %._crit_edge217.._crit_edge262_crit_edge ], [ %i.ff, %bb.t ]
  tail call void @FreeIntMtx(ptr noundef %i.gl) #33
  store ptr null, ptr @veryfastsupg_int.eff, align 8, !tbaa !87
  %i.gm = load ptr, ptr @veryfastsupg_int.tmptmplen, align 8, !tbaa !89
  tail call void @free(ptr noundef %i.gm) #33
  store ptr null, ptr @veryfastsupg_int.tmptmplen, align 8, !tbaa !89
  %i.gn = load ptr, ptr @veryfastsupg_int.hist, align 8, !tbaa !89
  tail call void @free(ptr noundef %i.gn) #33
  store ptr null, ptr @veryfastsupg_int.hist, align 8, !tbaa !89
  %i.go = load ptr, ptr @veryfastsupg_int.ac, align 8, !tbaa !164
  tail call void @free(ptr noundef %i.go) #33
  store ptr null, ptr @veryfastsupg_int.ac, align 8, !tbaa !164
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @fastsupg(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr @fastsupg.eff, align 8, !tbaa !226
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @njob, align 4, !tbaa !4   ; 2 uses
  %i.c = tail call ptr @AllocateFloatMtx(i32 noundef %i.b, i32 noundef %i.b) #33
  store ptr %i.c, ptr @fastsupg.eff, align 8, !tbaa !226
  %i.d = load i32, ptr @njob, align 4, !tbaa !4   ; 2 uses
  %i.e = tail call ptr @AllocateCharMtx(i32 noundef %i.d, i32 noundef %i.d) #33
  store ptr %i.e, ptr @fastsupg.pair, align 8, !tbaa !77
  %i.f = load i32, ptr @njob, align 4, !tbaa !4
  %i.g = tail call ptr @AllocateFloatVec(i32 noundef %i.f) #33
  store ptr %i.g, ptr @fastsupg.tmplen, align 8, !tbaa !19
  %i.h = load i32, ptr @njob, align 4, !tbaa !4
  %i.i = sext i32 %i.h to i64
  %i.j = tail call noalias ptr @calloc(i64 noundef %i.i, i64 noundef 8) #37
  store ptr %i.j, ptr @fastsupg.ac, align 8, !tbaa !164
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = icmp sgt i32 %0, 0
  br i1 %i.k, label %.preheader173.lr.ph, label %.preheader169.thread

.preheader173.lr.ph:                              ; preds = %bb.c
  %i.l = load ptr, ptr @fastsupg.eff, align 8
  %wide.trip.count229 = zext nneg i32 %0 to i64   ; 16 uses
  %min.iters.check = icmp ult i32 %0, 4
  %n.vec = and i64 %wide.trip.count229, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count229
  br label %.preheader173.us

.preheader173.us:                                 ; preds = %._crit_edge.us, %.preheader173.lr.ph
  %indvars.iv226 = phi i64 [ %indvars.iv.next227, %._crit_edge.us ], [ 0, %.preheader173.lr.ph ] ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv226
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !52   ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv226
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !19   ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader173.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader173.us ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <2 x double>, ptr %i.q, align 8, !tbaa !24
  %wide.load298 = load <2 x double>, ptr %i.r, align 8, !tbaa !24
  %i.s = fptrunc <2 x double> %wide.load to <2 x float>
  %i.t = fptrunc <2 x double> %wide.load298 to <2 x float>
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store <2 x float> %i.s, ptr %i.u, align 4, !tbaa !21
  store <2 x float> %i.t, ptr %i.v, align 4, !tbaa !21
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !228

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader173.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader173.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.y = load double, ptr %i.x, align 8, !tbaa !24
  %i.z = fptrunc double %i.y to float
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  store float %i.z, ptr %i.aa, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count229
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !229

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 2 uses
  %exitcond230.not = icmp eq i64 %indvars.iv.next227, %wide.trip.count229
  br i1 %exitcond230.not, label %.preheader172, label %.preheader173.us, !llvm.loop !230

.preheader172:                                    ; preds = %._crit_edge.us
  %.pre = load ptr, ptr @fastsupg.ac, align 8, !tbaa !164 ; 4 uses
  %wide.trip.count234 = zext nneg i32 %0 to i64   ; 3 uses
  %min.iters.check300 = icmp ult i32 %0, 4
  br i1 %min.iters.check300, label %scalar.ph299.preheader, label %vector.ph301

vector.ph301:                                     ; preds = %.preheader172
  %n.vec303 = and i64 %wide.trip.count234, 2147483644 ; 3 uses
  br label %vector.body304

vector.body304:                                   ; preds = %vector.body304, %vector.ph301
  %index305 = phi i64 [ 0, %vector.ph301 ], [ %index.next309, %vector.body304 ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph301 ], [ %vec.ind.next, %vector.body304 ] ; 3 uses
  %vec.ind306 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph301 ], [ %vec.ind.next310, %vector.body304 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index305
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index305
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.af = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.ag = shufflevector <2 x i32> %i.ae, <2 x i32> %vec.ind306, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec = add <4 x i32> %i.ag, <i32 1, i32 -1, i32 1, i32 -1>
  store <4 x i32> %interleaved.vec, ptr %i.ab, align 4, !tbaa !4
  %i.ah = shufflevector <2 x i32> %i.af, <2 x i32> %vec.ind306, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec308 = add <4 x i32> %i.ah, <i32 3, i32 1, i32 3, i32 1>
  store <4 x i32> %interleaved.vec308, ptr %i.ad, align 4, !tbaa !4
  %index.next309 = add nuw i64 %index305, 4       ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %vec.ind.next310 = add <2 x i32> %vec.ind306, splat (i32 4)
  %i.ai = icmp eq i64 %index.next309, %n.vec303
  br i1 %i.ai, label %middle.block311, label %vector.body304, !llvm.loop !231

middle.block311:                                  ; preds = %vector.body304
  %cmp.n312 = icmp eq i64 %n.vec303, %wide.trip.count234
  br i1 %cmp.n312, label %.preheader170.lr.ph, label %scalar.ph299.preheader

scalar.ph299.preheader:                           ; preds = %.preheader172, %middle.block311
  %indvars.iv231.ph = phi i64 [ 0, %.preheader172 ], [ %n.vec303, %middle.block311 ]
  br label %scalar.ph299

scalar.ph299:                                     ; preds = %scalar.ph299.preheader, %scalar.ph299
  %indvars.iv231 = phi i64 [ %indvars.iv.next232, %scalar.ph299 ], [ %indvars.iv231.ph, %scalar.ph299.preheader ] ; 3 uses
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1 ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv231 ; 2 uses
  %i.ak = trunc nuw nsw i64 %indvars.iv.next232 to i32
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !168
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.am = trunc i64 %indvars.iv231 to i32
  %i.an = add i32 %i.am, -1
  store i32 %i.an, ptr %i.al, align 4, !tbaa !170
  %exitcond235.not = icmp eq i64 %indvars.iv.next232, %wide.trip.count234
  br i1 %exitcond235.not, label %.preheader170.lr.ph, label %scalar.ph299, !llvm.loop !232

.preheader169.thread:                             ; preds = %bb.c
  %.pre293 = load ptr, ptr @fastsupg.ac, align 8, !tbaa !164
  %i.ao = sext i32 %0 to i64
  %i.ap = getelementptr [8 x i8], ptr %.pre293, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 -8
  store i32 -1, ptr %i.aq, align 4, !tbaa !168
  %i.ar = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc296 = tail call i32 @fputc(i32 10, ptr %i.ar) ; 0 uses
  br label %._crit_edge224

.preheader170.lr.ph:                              ; preds = %scalar.ph299, %middle.block311
  %i.as = add nsw i32 %0, -1                      ; 2 uses
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.at
  store i32 -1, ptr %i.au, align 4, !tbaa !168
  %i.av = load ptr, ptr @fastsupg.tmplen, align 8, !tbaa !19
  %i.aw = zext nneg i32 %0 to i64
  %i.ax = shl nuw nsw i64 %i.aw, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.av, i8 0, i64 %i.ax, i1 false), !tbaa !21
  %i.ay = load ptr, ptr @fastsupg.pair, align 8
  %wide.trip.count247 = zext nneg i32 %0 to i64
  %xtraiter = and i64 %wide.trip.count229, 3      ; 3 uses
  %i.az = icmp ult i32 %0, 4
  %unroll_iter = and i64 %wide.trip.count229, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod314 = icmp ne i64 %xtraiter, 0
  br label %.preheader170.us

.preheader170.us:                                 ; preds = %._crit_edge182.us, %.preheader170.lr.ph
  %indvars.iv244 = phi i64 [ %indvars.iv.next245, %._crit_edge182.us ], [ 0, %.preheader170.lr.ph ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv244 ; 5 uses
  br i1 %i.az, label %.epil.preheader, label %.preheader170.us.new

.preheader170.us.new:                             ; preds = %.preheader170.us, %.preheader170.us.new
  %indvars.iv239 = phi i64 [ %indvars.iv.next240.3, %.preheader170.us.new ], [ 0, %.preheader170.us ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader170.us.new ], [ 0, %.preheader170.us ]
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !12
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv239
  store i8 0, ptr %i.bc, align 1, !tbaa !8
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !12
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv239
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store i8 0, ptr %i.bf, align 1, !tbaa !8
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !12
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv239
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  store i8 0, ptr %i.bi, align 1, !tbaa !8
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !12
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv239
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 3
  store i8 0, ptr %i.bl, align 1, !tbaa !8
  %indvars.iv.next240.3 = add nuw nsw i64 %indvars.iv239, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge182.us.unr-lcssa, label %.preheader170.us.new, !llvm.loop !233

._crit_edge182.us.unr-lcssa:                      ; preds = %.preheader170.us.new
  br i1 %lcmp.mod.not, label %._crit_edge182.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge182.us.unr-lcssa, %.preheader170.us
  %indvars.iv239.epil.init = phi i64 [ 0, %.preheader170.us ], [ %indvars.iv.next240.3, %._crit_edge182.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod314)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv239.epil = phi i64 [ %indvars.iv239.epil.init, %.epil.preheader ], [ %indvars.iv.next240.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.bm = load ptr, ptr %i.ba, align 8, !tbaa !12
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv239.epil
  store i8 0, ptr %i.bn, align 1, !tbaa !8
  %indvars.iv.next240.epil = add nuw nsw i64 %indvars.iv239.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge182.us, label %bb.d, !llvm.loop !234

._crit_edge182.us:                                ; preds = %bb.d, %._crit_edge182.us.unr-lcssa
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1 ; 2 uses
  %exitcond248.not = icmp eq i64 %indvars.iv.next245, %wide.trip.count247
  br i1 %exitcond248.not, label %.lr.ph185, label %.preheader170.us, !llvm.loop !235

.lr.ph185:                                        ; preds = %._crit_edge182.us
  %i.bo = load ptr, ptr @fastsupg.pair, align 8, !tbaa !77 ; 5 uses
  %xtraiter316 = and i64 %wide.trip.count229, 3   ; 3 uses
  %i.bp = icmp ult i32 %0, 4
  br i1 %i.bp, label %.epil.preheader315, label %.lr.ph185.new

.lr.ph185.new:                                    ; preds = %.lr.ph185
  %unroll_iter320 = and i64 %wide.trip.count229, 2147483644
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph185.new
  %indvars.iv249 = phi i64 [ 0, %.lr.ph185.new ], [ %indvars.iv.next250.3, %bb.e ] ; 6 uses
  %niter321 = phi i64 [ 0, %.lr.ph185.new ], [ %niter321.next.3, %bb.e ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv249
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !12
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %indvars.iv249
  store i8 1, ptr %i.bs, align 1, !tbaa !8
  %indvars.iv.next250 = or disjoint i64 %indvars.iv249, 1 ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next250
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !12
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv.next250
  store i8 1, ptr %i.bv, align 1, !tbaa !8
  %indvars.iv.next250.1 = or disjoint i64 %indvars.iv249, 2 ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next250.1
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !12
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv.next250.1
  store i8 1, ptr %i.by, align 1, !tbaa !8
  %indvars.iv.next250.2 = or disjoint i64 %indvars.iv249, 3 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next250.2
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !12
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %indvars.iv.next250.2
  store i8 1, ptr %i.cb, align 1, !tbaa !8
  %indvars.iv.next250.3 = add nuw nsw i64 %indvars.iv249, 4 ; 2 uses
  %niter321.next.3 = add i64 %niter321, 4         ; 2 uses
  %niter321.ncmp.3 = icmp eq i64 %niter321.next.3, %unroll_iter320
  br i1 %niter321.ncmp.3, label %._crit_edge186.unr-lcssa, label %bb.e, !llvm.loop !236

._crit_edge186.unr-lcssa:                         ; preds = %bb.e
  %lcmp.mod318.not = icmp eq i64 %xtraiter316, 0
  br i1 %lcmp.mod318.not, label %._crit_edge186, label %.epil.preheader315

.epil.preheader315:                               ; preds = %._crit_edge186.unr-lcssa, %.lr.ph185
  %indvars.iv249.epil.init = phi i64 [ 0, %.lr.ph185 ], [ %indvars.iv.next250.3, %._crit_edge186.unr-lcssa ]
  %lcmp.mod319 = icmp ne i64 %xtraiter316, 0
  tail call void @llvm.assume(i1 %lcmp.mod319)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader315
  %indvars.iv249.epil = phi i64 [ %indvars.iv249.epil.init, %.epil.preheader315 ], [ %indvars.iv.next250.epil, %bb.f ] ; 3 uses
  %epil.iter317 = phi i64 [ 0, %.epil.preheader315 ], [ %epil.iter317.next, %bb.f ]
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv249.epil
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !12
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv249.epil
  store i8 1, ptr %i.ce, align 1, !tbaa !8
  %indvars.iv.next250.epil = add nuw nsw i64 %indvars.iv249.epil, 1
  %epil.iter317.next = add i64 %epil.iter317, 1   ; 2 uses
  %epil.iter317.cmp.not = icmp eq i64 %epil.iter317.next, %xtraiter316
  br i1 %epil.iter317.cmp.not, label %._crit_edge186, label %bb.f, !llvm.loop !237

._crit_edge186:                                   ; preds = %bb.f, %._crit_edge186.unr-lcssa
  %i.cf = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %i.cf) ; 0 uses
  %.not297 = icmp eq i32 %0, 1
  br i1 %.not297, label %._crit_edge224, label %.lr.ph223

.lr.ph223:                                        ; preds = %._crit_edge186
  %wide.trip.count277 = zext nneg i32 %i.as to i64
  %xtraiter323 = and i64 %wide.trip.count229, 3   ; 3 uses
  %i.cg = icmp ult i32 %0, 4
  %unroll_iter328 = and i64 %wide.trip.count229, 2147483644
  %lcmp.mod325.not = icmp eq i64 %xtraiter323, 0
  %lcmp.mod327 = icmp ne i64 %xtraiter323, 0
  %xtraiter331 = and i64 %wide.trip.count229, 3   ; 3 uses
  %i.ch = icmp ult i32 %0, 4
  %unroll_iter336 = and i64 %wide.trip.count229, 2147483644
  %lcmp.mod333.not = icmp eq i64 %xtraiter331, 0
  %lcmp.mod335 = icmp ne i64 %xtraiter331, 0
  %xtraiter339 = and i64 %wide.trip.count229, 1
  %unroll_iter343 = and i64 %wide.trip.count229, 2147483646
  %lcmp.mod341.not = icmp eq i64 %xtraiter339, 0
  %lcmp.mod342 = trunc i32 %0 to i1
  %xtraiter346 = and i64 %wide.trip.count229, 3   ; 3 uses
  %i.ci = icmp ult i32 %0, 4
  %unroll_iter350 = and i64 %wide.trip.count229, 2147483644
  %lcmp.mod348.not = icmp eq i64 %xtraiter346, 0
  %lcmp.mod349 = icmp ne i64 %xtraiter346, 0
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph223, %bb.an
  %indvars.iv274 = phi i64 [ 0, %.lr.ph223 ], [ %indvars.iv.next275, %bb.an ] ; 4 uses
  %.0221 = phi i32 [ -1, %.lr.ph223 ], [ %.1.lcssa, %bb.an ] ; 2 uses
  %.0134220 = phi i32 [ -1, %.lr.ph223 ], [ %.1135.lcssa, %bb.an ] ; 2 uses
  %i.cj = trunc nuw nsw i64 %indvars.iv274 to i32 ; 2 uses
  %i.ck = urem i32 %i.cj, 10
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cm = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.cn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cm, ptr noundef nonnull @.str.24, i32 noundef %i.cj, i32 noundef %0) #31 ; 0 uses
  br label %bb.i
end_hunk_9
begin_hunk_10_@countnode_int:bb.a

.lr.ph111:                                        ; preds = %.lr.ph111.preheader, %.lr.ph111
  %indvars.iv132 = phi i64 [ 0, %.lr.ph111.preheader ], [ %indvars.iv.next133, %.lr.ph111 ]
  %i.ap = phi i32 [ %i.af, %.lr.ph111.preheader ], [ %i.av, %.lr.ph111 ]
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !4
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next133
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4  ; 2 uses
  %i.aw = icmp sgt i32 %i.av, -1
  br i1 %i.aw, label %.lr.ph111, label %.preheader99, !llvm.loop !295

.preheader98:                                     ; preds = %.preheader99, %._crit_edge
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %._crit_edge ], [ 0, %.preheader99 ]
  %i.ax = phi i32 [ %i.bu, %._crit_edge ], [ %i.k, %.preheader99 ] ; 3 uses
  %i.ay = load i32, ptr %i.ag, align 4, !tbaa !4  ; 2 uses
  %i.az = icmp sgt i32 %i.ay, -1
  br i1 %i.az, label %.lr.ph114, label %._crit_edge

.lr.ph114:                                        ; preds = %.preheader98
  %i.ba = zext nneg i32 %i.ax to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bd = add i32 %i.bc, -1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph114, %bb.b
  %indvars.iv138 = phi i64 [ 0, %.lr.ph114 ], [ %indvars.iv.next139, %bb.b ]
  %i.be = phi i32 [ %i.ay, %.lr.ph114 ], [ %i.br, %bb.b ] ; 3 uses
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !4
  %i.bi = add i32 %i.bd, %i.bh
  %i.bj = tail call i32 @llvm.umin.i32(i32 %i.ax, i32 %i.be)
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !89
  %i.bn = tail call i32 @llvm.umax.i32(i32 %i.ax, i32 %i.be)
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bo
  store i32 %i.bi, ptr %i.bp, align 4, !tbaa !4
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next139
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !4  ; 2 uses
  %i.bs = icmp sgt i32 %i.br, -1
  br i1 %i.bs, label %bb.b, label %._crit_edge, !llvm.loop !296

._crit_edge:                                      ; preds = %bb.b, %.preheader98
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next142
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !4  ; 2 uses
  %i.bv = icmp sgt i32 %i.bu, -1
  br i1 %i.bv, label %.preheader98, label %._crit_edge116, !llvm.loop !297

._crit_edge116:                                   ; preds = %._crit_edge, %.preheader100, %.preheader100.thread, %.preheader99
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next145, %wide.trip.count
  br i1 %exitcond.not, label %.preheader97, label %.preheader101, !llvm.loop !299

.preheader96thread-pre-split:                     ; preds = %._crit_edge120
  %.pr = load i32, ptr %i.u, align 4, !tbaa !4
  br label %.preheader96

.preheader96:                                     ; preds = %.preheader96.lr.ph, %.preheader96thread-pre-split
  %i.bw = phi i32 [ %.pr, %.preheader96thread-pre-split ], [ %i.v, %.preheader96.lr.ph ] ; 2 uses
  %indvars.iv153 = phi i64 [ %indvars.iv.next154, %.preheader96thread-pre-split ], [ 0, %.preheader96.lr.ph ]
  %i.bx = phi i32 [ %i.cv, %.preheader96thread-pre-split ], [ %i.r, %.preheader96.lr.ph ] ; 3 uses
  %i.by = icmp sgt i32 %i.bw, -1
  br i1 %i.by, label %.lr.ph119, label %._crit_edge120

.lr.ph119:                                        ; preds = %.preheader96
  %i.bz = zext nneg i32 %i.bx to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !4
  br label %bb.c

.preheader:                                       ; preds = %._crit_edge120, %.preheader96.lr.ph, %.preheader97
  %i.cc = icmp sgt i32 %0, 1
  br i1 %i.cc, label %.lr.ph126.preheader, label %._crit_edge127

.lr.ph126.preheader:                              ; preds = %.preheader
  %i.cd = add nsw i32 %0, -1
  %wide.trip.count166 = zext nneg i32 %i.cd to i64
  %wide.trip.count161 = zext nneg i32 %0 to i64   ; 3 uses
  %i.ce = add nsw i64 %wide.trip.count161, -2
  br label %.lr.ph124

bb.c:                                             ; preds = %.lr.ph119, %bb.c
  %indvars.iv150 = phi i64 [ 0, %.lr.ph119 ], [ %indvars.iv.next151, %bb.c ]
  %i.cf = phi i32 [ %i.bw, %.lr.ph119 ], [ %i.cs, %bb.c ] ; 3 uses
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !4
  %i.cj = add nsw i32 %i.ci, %i.cb
  %i.ck = tail call i32 @llvm.umin.i32(i32 %i.bx, i32 %i.cf)
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !89
  %i.co = tail call i32 @llvm.umax.i32(i32 %i.bx, i32 %i.cf)
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.cp
  store i32 %i.cj, ptr %i.cq, align 4, !tbaa !4
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next151
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !4  ; 2 uses
  %i.ct = icmp sgt i32 %i.cs, -1
  br i1 %i.ct, label %bb.c, label %._crit_edge120, !llvm.loop !300

._crit_edge120:                                   ; preds = %bb.c, %.preheader96
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1 ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next154
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !4  ; 2 uses
  %i.cw = icmp sgt i32 %i.cv, -1
  br i1 %i.cw, label %.preheader96thread-pre-split, label %.preheader, !llvm.loop !301

.loopexit:                                        ; preds = %.lr.ph124.new, %.prol.loopexit
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1
  %exitcond167.not = icmp eq i64 %indvars.iv.next164, %wide.trip.count166
  br i1 %exitcond167.not, label %._crit_edge127, label %.lr.ph124, !llvm.loop !302

.lr.ph124:                                        ; preds = %.loopexit, %.lr.ph126.preheader
  %indvars.iv163 = phi i64 [ 0, %.lr.ph126.preheader ], [ %indvars.iv.next164, %.loopexit ] ; 9 uses
  %indvars.iv156 = phi i64 [ 1, %.lr.ph126.preheader ], [ %indvars.iv.next157, %.loopexit ] ; 3 uses
  %i.cx = xor i64 %indvars.iv163, -1
  %i.cy = add nsw i64 %i.cx, %wide.trip.count161
  %i.cz = sub i64 %i.ce, %indvars.iv163
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv163
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !89 ; 5 uses
  %xtraiter = and i64 %i.cy, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph124, %.prol.preheader
  %indvars.iv158.prol = phi i64 [ %indvars.iv.next159.prol, %.prol.preheader ], [ %indvars.iv156, %.lr.ph124 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph124 ]
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv158.prol
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !4
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv158.prol
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !89
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv163
  store i32 %i.dd, ptr %i.dg, align 4, !tbaa !4
  %indvars.iv.next159.prol = add nuw nsw i64 %indvars.iv158.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !303

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph124
  %indvars.iv158.unr = phi i64 [ %indvars.iv156, %.lr.ph124 ], [ %indvars.iv.next159.prol, %.prol.preheader ]
  %i.dh = icmp ult i64 %i.cz, 3
  br i1 %i.dh, label %.loopexit, label %.lr.ph124.new

.lr.ph124.new:                                    ; preds = %.prol.loopexit, %.lr.ph124.new
  %indvars.iv158 = phi i64 [ %indvars.iv.next159.3, %.lr.ph124.new ], [ %indvars.iv158.unr, %.prol.loopexit ] ; 6 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv158
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !4
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv158
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !89
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv163
  store i32 %i.dj, ptr %i.dm, align 4, !tbaa !4
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.next159
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !4
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next159
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !89
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv163
  store i32 %i.do, ptr %i.dr, align 4, !tbaa !4
  %indvars.iv.next159.1 = add nuw nsw i64 %indvars.iv158, 2 ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.next159.1
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !4
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next159.1
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !89
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv163
  store i32 %i.dt, ptr %i.dw, align 4, !tbaa !4
  %indvars.iv.next159.2 = add nuw nsw i64 %indvars.iv158, 3 ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.next159.2
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !4
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next159.2
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !89
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv163
  store i32 %i.dy, ptr %i.eb, align 4, !tbaa !4
  %indvars.iv.next159.3 = add nuw nsw i64 %indvars.iv158, 4 ; 2 uses
  %exitcond162.not.3 = icmp eq i64 %indvars.iv.next159.3, %wide.trip.count161
  br i1 %exitcond162.not.3, label %.loopexit, label %.lr.ph124.new, !llvm.loop !304

._crit_edge127:                                   ; preds = %.loopexit, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @counteff_simple_float(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef writeonly captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge67

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64                  ; 6 uses
  %i.c = shl nuw nsw i64 %i.b, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @counteff_simple_float.rootnode, i8 0, i64 %i.c, i1 false), !tbaa !24
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %.lr.ph.preheader126, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.b, 2147483644               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple_float.eff, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.d, align 16, !tbaa !24
  store <2 x double> splat (double 1.000000e+00), ptr %i.e, align 16, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !305

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.b
  br i1 %cmp.n, label %.preheader51, label %.lr.ph.preheader126

.lr.ph.preheader126:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader51:                                     ; preds = %.lr.ph, %middle.block
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %.lr.ph61.preheader, label %.preheader50.preheader

.preheader50.preheader:                           ; preds = %.preheader51
  %i.g = add nsw i32 %0, -1
  %wide.trip.count78 = zext nneg i32 %i.g to i64
  br label %.preheader50

.lr.ph:                                           ; preds = %.lr.ph.preheader126, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader126 ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple_float.eff, i64 %indvars.iv
  store double 1.000000e+00, ptr %i.h, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.b
  br i1 %exitcond.not, label %.preheader51, label %.lr.ph, !llvm.loop !306

.preheader50:                                     ; preds = %.preheader50.preheader, %._crit_edge
  %indvars.iv75 = phi i64 [ 0, %.preheader50.preheader ], [ %indvars.iv.next76, %._crit_edge ] ; 4 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv75
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !87   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !89   ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4    ; 2 uses
  %i.m = icmp sgt i32 %i.l, -1
  br i1 %i.m, label %.lr.ph55, label %.preheader49

.lr.ph55:                                         ; preds = %.preheader50
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv75
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !19
  %i.p = load float, ptr %i.o, align 4, !tbaa !21
  %i.q = fpext float %i.p to double
  br label %bb.b

.lr.ph61.preheader:                               ; preds = %._crit_edge, %.preheader51
  %wide.trip.count83 = zext nneg i32 %0 to i64    ; 3 uses
  %min.iters.check101 = icmp ult i32 %0, 4
  br i1 %min.iters.check101, label %.lr.ph61.preheader125, label %vector.ph102

vector.ph102:                                     ; preds = %.lr.ph61.preheader
  %n.vec104 = and i64 %wide.trip.count83, 2147483644 ; 3 uses
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph102
  %index106 = phi i64 [ 0, %vector.ph102 ], [ %index.next108, %vector.body105 ] ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple_float.rootnode, i64 %index106 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.r, align 16, !tbaa !24
  %wide.load107 = load <2 x double>, ptr %i.s, align 16, !tbaa !24
  %i.t = fadd <2 x double> %wide.load, splat (double 1.000000e-03)
  %i.u = fadd <2 x double> %wide.load107, splat (double 1.000000e-03)
  store <2 x double> %i.t, ptr %i.r, align 16, !tbaa !24
  store <2 x double> %i.u, ptr %i.s, align 16, !tbaa !24
  %index.next108 = add nuw i64 %index106, 4       ; 2 uses
  %i.v = icmp eq i64 %index.next108, %n.vec104
  br i1 %i.v, label %middle.block109, label %vector.body105, !llvm.loop !307

middle.block109:                                  ; preds = %vector.body105
  %cmp.n110 = icmp eq i64 %n.vec104, %wide.trip.count83
  br i1 %cmp.n110, label %.lr.ph64.preheader, label %.lr.ph61.preheader125

.lr.ph61.preheader125:                            ; preds = %.lr.ph61.preheader, %middle.block109
  %indvars.iv80.ph = phi i64 [ 0, %.lr.ph61.preheader ], [ %n.vec104, %middle.block109 ]
  br label %.lr.ph61

.preheader49:                                     ; preds = %bb.b, %.preheader50
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !89   ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4    ; 2 uses
  %i.z = icmp sgt i32 %i.y, -1
  br i1 %i.z, label %.lr.ph58, label %._crit_edge

.lr.ph58:                                         ; preds = %.preheader49
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv75
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !21
  %i.ae = fpext float %i.ad to double
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph55, %bb.b
  %indvars.iv69 = phi i64 [ 0, %.lr.ph55 ], [ %indvars.iv.next70, %bb.b ]
  %i.af = phi i32 [ %i.l, %.lr.ph55 ], [ %i.ao, %bb.b ]
  %i.ag = zext nneg i32 %i.af to i64              ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple_float.eff, i64 %i.ag ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !24 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple_float.rootnode, i64 %i.ag ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !24
  %i.al = tail call double @llvm.fmuladd.f64(double %i.q, double %i.ai, double %i.ak)
  store double %i.al, ptr %i.aj, align 8, !tbaa !24
  %i.am = fmul double %i.ai, 5.000000e-01
  store double %i.am, ptr %i.ah, align 8, !tbaa !24
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next70
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4  ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, -1
  br i1 %i.ap, label %bb.b, label %.preheader49, !llvm.loop !308

bb.c:                                             ; preds = %.lr.ph58, %bb.c
  %indvars.iv72 = phi i64 [ 0, %.lr.ph58 ], [ %indvars.iv.next73, %bb.c ]
  %i.aq = phi i32 [ %i.y, %.lr.ph58 ], [ %i.az, %bb.c ]
  %i.ar = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple_float.eff, i64 %i.ar ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !24 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple_float.rootnode, i64 %i.ar ; 2 uses
  %i.av = load double, ptr %i.au, align 8, !tbaa !24
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.at, double %i.av)
  store double %i.aw, ptr %i.au, align 8, !tbaa !24
  %i.ax = fmul double %i.at, 5.000000e-01
  store double %i.ax, ptr %i.as, align 8, !tbaa !24
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next73
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4  ; 2 uses
  %i.ba = icmp sgt i32 %i.az, -1
  br i1 %i.ba, label %bb.c, label %._crit_edge, !llvm.loop !309

._crit_edge:                                      ; preds = %bb.c, %.preheader49
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond79.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count78
  br i1 %exitcond79.not, label %.lr.ph61.preheader, label %.preheader50, !llvm.loop !310

.lr.ph64.preheader:                               ; preds = %.lr.ph61, %middle.block109
  %xtraiter = and i64 %i.b, 7                     ; 3 uses
  %i.bb = icmp ult i32 %0, 8
  br i1 %i.bb, label %.lr.ph64.epil.preheader, label %.lr.ph64.preheader.new

.lr.ph64.preheader.new:                           ; preds = %.lr.ph64.preheader
  %unroll_iter = and i64 %i.b, 2147483640
  br label %.lr.ph64

.lr.ph61:                                         ; preds = %.lr.ph61.preheader125, %.lr.ph61
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %.lr.ph61 ], [ %indvars.iv80.ph, %.lr.ph61.preheader125 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple_float.rootnode, i64 %indvars.iv80 ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !24
  %i.be = fadd double %i.bd, 1.000000e-03
  store double %i.be, ptr %i.bc, align 8, !tbaa !24
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count83
  br i1 %exitcond84.not, label %.lr.ph64.preheader, label %.lr.ph61, !llvm.loop !311

.lr.ph66.preheader.unr-lcssa:                     ; preds = %.lr.ph64
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph66.preheader, label %.lr.ph64.epil.preheader

.lr.ph64.epil.preheader:                          ; preds = %.lr.ph66.preheader.unr-lcssa, %.lr.ph64.preheader
  %indvars.iv85.epil.init = phi i64 [ 0, %.lr.ph64.preheader ], [ %indvars.iv.next86.7, %.lr.ph66.preheader.unr-lcssa ]
  %.063.epil.init = phi double [ 0.000000e+00, %.lr.ph64.preheader ], [ %i.cq, %.lr.ph66.preheader.unr-lcssa ]
  %lcmp.mod128 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod128)
  br label %.lr.ph64.epil

.lr.ph64.epil:                                    ; preds = %.lr.ph64.epil, %.lr.ph64.epil.preheader
  %indvars.iv85.epil = phi i64 [ %indvars.iv85.epil.init, %.lr.ph64.epil.preheader ], [ %indvars.iv.next86.epil, %.lr.ph64.epil ] ; 2 uses
  %.063.epil = phi double [ %.063.epil.init, %.lr.ph64.epil.preheader ], [ %i.bh, %.lr.ph64.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph64.epil.preheader ], [ %epil.iter.next, %.lr.ph64.epil ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple_float.rootnode, i64 %indvars.iv85.epil
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !24
  %i.bh = fadd double %.063.epil, %i.bg           ; 2 uses
  %indvars.iv.next86.epil = add nuw nsw i64 %indvars.iv85.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph66.preheader, label %.lr.ph64.epil, !llvm.loop !312

.lr.ph66.preheader:                               ; preds = %.lr.ph64.epil, %.lr.ph66.preheader.unr-lcssa
  %.lcssa = phi double [ %i.cq, %.lr.ph66.preheader.unr-lcssa ], [ %i.bh, %.lr.ph64.epil ] ; 2 uses
  %wide.trip.count93 = zext nneg i32 %0 to i64    ; 3 uses
  %min.iters.check113 = icmp eq i32 %0, 1
  br i1 %min.iters.check113, label %.lr.ph66.preheader124, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph66.preheader
  %n.vec116 = and i64 %wide.trip.count93, 2147483646 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.lcssa, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph114
  %index118 = phi i64 [ 0, %vector.ph114 ], [ %index.next120, %vector.body117 ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple_float.rootnode, i64 %index118
  %wide.load119 = load <2 x double>, ptr %i.bi, align 16, !tbaa !24
  %i.bj = fdiv <2 x double> %wide.load119, %broadcast.splat
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index118
  store <2 x double> %i.bj, ptr %i.bk, align 8, !tbaa !24
  %index.next120 = add nuw i64 %index118, 2       ; 2 uses
  %i.bl = icmp eq i64 %index.next120, %n.vec116
  br i1 %i.bl, label %middle.block121, label %vector.body117, !llvm.loop !313

middle.block121:                                  ; preds = %vector.body117
  %cmp.n122 = icmp eq i64 %n.vec116, %wide.trip.count93
  br i1 %cmp.n122, label %._crit_edge67, label %.lr.ph66.preheader124

.lr.ph66.preheader124:                            ; preds = %.lr.ph66.preheader, %middle.block121
  %indvars.iv90.ph = phi i64 [ 0, %.lr.ph66.preheader ], [ %n.vec116, %middle.block121 ]
  br label %.lr.ph66

.lr.ph64:                                         ; preds = %.lr.ph64, %.lr.ph64.preheader.new
  %indvars.iv85 = phi i64 [ 0, %.lr.ph64.preheader.new ], [ %indvars.iv.next86.7, %.lr.ph64 ] ; 9 uses
  %.063 = phi double [ 0.000000e+00, %.lr.ph64.preheader.new ], [ %i.cq, %.lr.ph64 ]
  %niter = phi i64 [ 0, %.lr.ph64.preheader.new ], [ %niter.next.7, %.lr.ph64 ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple_float.rootnode, i64 %indvars.iv85
  %i.bn = load double, ptr %i.bm, align 16, !tbaa !24
  %i.bo = fadd double %.063, %i.bn
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple_float.rootnode, i64 %indvars.iv85
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load double, ptr %i.bq, align 8, !tbaa !24
  %i.bs = fadd double %i.bo, %i.br
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple_float.rootnode, i64 %indvars.iv85
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load double, ptr %i.bu, align 16, !tbaa !24
  %i.bw = fadd double %i.bs, %i.bv
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple_float.rootnode, i64 %indvars.iv85
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load double, ptr %i.by, align 8, !tbaa !24
  %i.ca = fadd double %i.bw, %i.bz
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple_float.rootnode, i64 %indvars.iv85
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load double, ptr %i.cc, align 16, !tbaa !24
  %i.ce = fadd double %i.ca, %i.cd
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple_float.rootnode, i64 %indvars.iv85
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !24
  %i.ci = fadd double %i.ce, %i.ch
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple_float.rootnode, i64 %indvars.iv85
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cl = load double, ptr %i.ck, align 16, !tbaa !24
  %i.cm = fadd double %i.ci, %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple_float.rootnode, i64 %indvars.iv85
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 56
  %i.cp = load double, ptr %i.co, align 8, !tbaa !24
  %i.cq = fadd double %i.cm, %i.cp                ; 3 uses
  %indvars.iv.next86.7 = add nuw nsw i64 %indvars.iv85, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph66.preheader.unr-lcssa, label %.lr.ph64, !llvm.loop !314

.lr.ph66:                                         ; preds = %.lr.ph66.preheader124, %.lr.ph66
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %.lr.ph66 ], [ %indvars.iv90.ph, %.lr.ph66.preheader124 ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple_float.rootnode, i64 %indvars.iv90
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !24
  %i.ct = fdiv double %i.cs, %.lcssa
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv90
  store double %i.ct, ptr %i.cu, align 8, !tbaa !24
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv.next91, %wide.trip.count93
  br i1 %exitcond94.not, label %._crit_edge67, label %.lr.ph66, !llvm.loop !315

._crit_edge67:                                    ; preds = %.lr.ph66, %middle.block121, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @counteff_simple(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef writeonly captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge67

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64                  ; 6 uses
  %i.c = shl nuw nsw i64 %i.b, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @counteff_simple.rootnode, i8 0, i64 %i.c, i1 false), !tbaa !24
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %.lr.ph.preheader126, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.b, 2147483644               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple.eff, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.d, align 16, !tbaa !24
  store <2 x double> splat (double 1.000000e+00), ptr %i.e, align 16, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !316

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.b
  br i1 %cmp.n, label %.preheader51, label %.lr.ph.preheader126

.lr.ph.preheader126:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader51:                                     ; preds = %.lr.ph, %middle.block
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %.lr.ph61.preheader, label %.preheader50.preheader

.preheader50.preheader:                           ; preds = %.preheader51
  %i.g = add nsw i32 %0, -1
  %wide.trip.count78 = zext nneg i32 %i.g to i64
  br label %.preheader50

.lr.ph:                                           ; preds = %.lr.ph.preheader126, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader126 ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple.eff, i64 %indvars.iv
  store double 1.000000e+00, ptr %i.h, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.b
  br i1 %exitcond.not, label %.preheader51, label %.lr.ph, !llvm.loop !317

.preheader50:                                     ; preds = %.preheader50.preheader, %._crit_edge
  %indvars.iv75 = phi i64 [ 0, %.preheader50.preheader ], [ %indvars.iv.next76, %._crit_edge ] ; 4 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv75
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !87   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !89   ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4    ; 2 uses
  %i.m = icmp sgt i32 %i.l, -1
  br i1 %i.m, label %.lr.ph55, label %.preheader49

.lr.ph55:                                         ; preds = %.preheader50
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv75
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !52
  %i.p = load double, ptr %i.o, align 8, !tbaa !24
  br label %bb.b

.lr.ph61.preheader:                               ; preds = %._crit_edge, %.preheader51
  %wide.trip.count83 = zext nneg i32 %0 to i64    ; 3 uses
  %min.iters.check101 = icmp ult i32 %0, 4
  br i1 %min.iters.check101, label %.lr.ph61.preheader125, label %vector.ph102

vector.ph102:                                     ; preds = %.lr.ph61.preheader
  %n.vec104 = and i64 %wide.trip.count83, 2147483644 ; 3 uses
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph102
  %index106 = phi i64 [ 0, %vector.ph102 ], [ %index.next108, %vector.body105 ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple.rootnode, i64 %index106 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.q, align 16, !tbaa !24
  %wide.load107 = load <2 x double>, ptr %i.r, align 16, !tbaa !24
  %i.s = fadd <2 x double> %wide.load, splat (double 1.000000e-03)
  %i.t = fadd <2 x double> %wide.load107, splat (double 1.000000e-03)
  store <2 x double> %i.s, ptr %i.q, align 16, !tbaa !24
  store <2 x double> %i.t, ptr %i.r, align 16, !tbaa !24
  %index.next108 = add nuw i64 %index106, 4       ; 2 uses
  %i.u = icmp eq i64 %index.next108, %n.vec104
  br i1 %i.u, label %middle.block109, label %vector.body105, !llvm.loop !318

middle.block109:                                  ; preds = %vector.body105
  %cmp.n110 = icmp eq i64 %n.vec104, %wide.trip.count83
  br i1 %cmp.n110, label %.lr.ph64.preheader, label %.lr.ph61.preheader125

.lr.ph61.preheader125:                            ; preds = %.lr.ph61.preheader, %middle.block109
  %indvars.iv80.ph = phi i64 [ 0, %.lr.ph61.preheader ], [ %n.vec104, %middle.block109 ]
  br label %.lr.ph61

.preheader49:                                     ; preds = %bb.b, %.preheader50
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !89   ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !4    ; 2 uses
  %i.y = icmp sgt i32 %i.x, -1
  br i1 %i.y, label %.lr.ph58, label %._crit_edge

.lr.ph58:                                         ; preds = %.preheader49
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv75
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !52
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !24
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph55, %bb.b
  %indvars.iv69 = phi i64 [ 0, %.lr.ph55 ], [ %indvars.iv.next70, %bb.b ]
  %i.ad = phi i32 [ %i.l, %.lr.ph55 ], [ %i.am, %bb.b ]
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple.eff, i64 %i.ae ; 2 uses
  %i.ag = load double, ptr %i.af, align 8, !tbaa !24 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple.rootnode, i64 %i.ae ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !24
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.p, double %i.ag, double %i.ai)
  store double %i.aj, ptr %i.ah, align 8, !tbaa !24
  %i.ak = fmul double %i.ag, 5.000000e-01
  store double %i.ak, ptr %i.af, align 8, !tbaa !24
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next70
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4  ; 2 uses
  %i.an = icmp sgt i32 %i.am, -1
  br i1 %i.an, label %bb.b, label %.preheader49, !llvm.loop !319

bb.c:                                             ; preds = %.lr.ph58, %bb.c
  %indvars.iv72 = phi i64 [ 0, %.lr.ph58 ], [ %indvars.iv.next73, %bb.c ]
  %i.ao = phi i32 [ %i.x, %.lr.ph58 ], [ %i.ax, %bb.c ]
  %i.ap = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple.eff, i64 %i.ap ; 2 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !24 ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple.rootnode, i64 %i.ap ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !24
  %i.au = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.ar, double %i.at)
  store double %i.au, ptr %i.as, align 8, !tbaa !24
  %i.av = fmul double %i.ar, 5.000000e-01
  store double %i.av, ptr %i.aq, align 8, !tbaa !24
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next73
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4  ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, -1
  br i1 %i.ay, label %bb.c, label %._crit_edge, !llvm.loop !320

._crit_edge:                                      ; preds = %bb.c, %.preheader49
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond79.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count78
  br i1 %exitcond79.not, label %.lr.ph61.preheader, label %.preheader50, !llvm.loop !321

.lr.ph64.preheader:                               ; preds = %.lr.ph61, %middle.block109
  %xtraiter = and i64 %i.b, 7                     ; 3 uses
  %i.az = icmp ult i32 %0, 8
  br i1 %i.az, label %.lr.ph64.epil.preheader, label %.lr.ph64.preheader.new

.lr.ph64.preheader.new:                           ; preds = %.lr.ph64.preheader
  %unroll_iter = and i64 %i.b, 2147483640
  br label %.lr.ph64

.lr.ph61:                                         ; preds = %.lr.ph61.preheader125, %.lr.ph61
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %.lr.ph61 ], [ %indvars.iv80.ph, %.lr.ph61.preheader125 ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple.rootnode, i64 %indvars.iv80 ; 2 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !24
  %i.bc = fadd double %i.bb, 1.000000e-03
  store double %i.bc, ptr %i.ba, align 8, !tbaa !24
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count83
  br i1 %exitcond84.not, label %.lr.ph64.preheader, label %.lr.ph61, !llvm.loop !322

.lr.ph66.preheader.unr-lcssa:                     ; preds = %.lr.ph64
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph66.preheader, label %.lr.ph64.epil.preheader

.lr.ph64.epil.preheader:                          ; preds = %.lr.ph66.preheader.unr-lcssa, %.lr.ph64.preheader
  %indvars.iv85.epil.init = phi i64 [ 0, %.lr.ph64.preheader ], [ %indvars.iv.next86.7, %.lr.ph66.preheader.unr-lcssa ]
  %.063.epil.init = phi double [ 0.000000e+00, %.lr.ph64.preheader ], [ %i.co, %.lr.ph66.preheader.unr-lcssa ]
  %lcmp.mod128 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod128)
  br label %.lr.ph64.epil

.lr.ph64.epil:                                    ; preds = %.lr.ph64.epil, %.lr.ph64.epil.preheader
  %indvars.iv85.epil = phi i64 [ %indvars.iv85.epil.init, %.lr.ph64.epil.preheader ], [ %indvars.iv.next86.epil, %.lr.ph64.epil ] ; 2 uses
  %.063.epil = phi double [ %.063.epil.init, %.lr.ph64.epil.preheader ], [ %i.bf, %.lr.ph64.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph64.epil.preheader ], [ %epil.iter.next, %.lr.ph64.epil ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple.rootnode, i64 %indvars.iv85.epil
  %i.be = load double, ptr %i.bd, align 8, !tbaa !24
  %i.bf = fadd double %.063.epil, %i.be           ; 2 uses
  %indvars.iv.next86.epil = add nuw nsw i64 %indvars.iv85.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph66.preheader, label %.lr.ph64.epil, !llvm.loop !323

.lr.ph66.preheader:                               ; preds = %.lr.ph64.epil, %.lr.ph66.preheader.unr-lcssa
  %.lcssa = phi double [ %i.co, %.lr.ph66.preheader.unr-lcssa ], [ %i.bf, %.lr.ph64.epil ] ; 2 uses
  %wide.trip.count93 = zext nneg i32 %0 to i64    ; 3 uses
  %min.iters.check113 = icmp eq i32 %0, 1
  br i1 %min.iters.check113, label %.lr.ph66.preheader124, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph66.preheader
  %n.vec116 = and i64 %wide.trip.count93, 2147483646 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.lcssa, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph114
  %index118 = phi i64 [ 0, %vector.ph114 ], [ %index.next120, %vector.body117 ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple.rootnode, i64 %index118
  %wide.load119 = load <2 x double>, ptr %i.bg, align 16, !tbaa !24
  %i.bh = fdiv <2 x double> %wide.load119, %broadcast.splat
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index118
  store <2 x double> %i.bh, ptr %i.bi, align 8, !tbaa !24
  %index.next120 = add nuw i64 %index118, 2       ; 2 uses
  %i.bj = icmp eq i64 %index.next120, %n.vec116
  br i1 %i.bj, label %middle.block121, label %vector.body117, !llvm.loop !324

middle.block121:                                  ; preds = %vector.body117
  %cmp.n122 = icmp eq i64 %n.vec116, %wide.trip.count93
  br i1 %cmp.n122, label %._crit_edge67, label %.lr.ph66.preheader124

.lr.ph66.preheader124:                            ; preds = %.lr.ph66.preheader, %middle.block121
  %indvars.iv90.ph = phi i64 [ 0, %.lr.ph66.preheader ], [ %n.vec116, %middle.block121 ]
  br label %.lr.ph66

.lr.ph64:                                         ; preds = %.lr.ph64, %.lr.ph64.preheader.new
  %indvars.iv85 = phi i64 [ 0, %.lr.ph64.preheader.new ], [ %indvars.iv.next86.7, %.lr.ph64 ] ; 9 uses
  %.063 = phi double [ 0.000000e+00, %.lr.ph64.preheader.new ], [ %i.co, %.lr.ph64 ]
  %niter = phi i64 [ 0, %.lr.ph64.preheader.new ], [ %niter.next.7, %.lr.ph64 ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple.rootnode, i64 %indvars.iv85
  %i.bl = load double, ptr %i.bk, align 16, !tbaa !24
  %i.bm = fadd double %.063, %i.bl
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple.rootnode, i64 %indvars.iv85
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !24
  %i.bq = fadd double %i.bm, %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple.rootnode, i64 %indvars.iv85
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load double, ptr %i.bs, align 16, !tbaa !24
  %i.bu = fadd double %i.bq, %i.bt
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple.rootnode, i64 %indvars.iv85
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !24
  %i.by = fadd double %i.bu, %i.bx
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple.rootnode, i64 %indvars.iv85
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load double, ptr %i.ca, align 16, !tbaa !24
  %i.cc = fadd double %i.by, %i.cb
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple.rootnode, i64 %indvars.iv85
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !24
  %i.cg = fadd double %i.cc, %i.cf
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple.rootnode, i64 %indvars.iv85
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %i.cj = load double, ptr %i.ci, align 16, !tbaa !24
  %i.ck = fadd double %i.cg, %i.cj
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple.rootnode, i64 %indvars.iv85
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !24
  %i.co = fadd double %i.ck, %i.cn                ; 3 uses
  %indvars.iv.next86.7 = add nuw nsw i64 %indvars.iv85, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph66.preheader.unr-lcssa, label %.lr.ph64, !llvm.loop !325

.lr.ph66:                                         ; preds = %.lr.ph66.preheader124, %.lr.ph66
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %.lr.ph66 ], [ %indvars.iv90.ph, %.lr.ph66.preheader124 ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr @counteff_simple.rootnode, i64 %indvars.iv90
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !24
  %i.cr = fdiv double %i.cq, %.lcssa
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv90
  store double %i.cr, ptr %i.cs, align 8, !tbaa !24
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv.next91, %wide.trip.count93
  br i1 %exitcond94.not, label %._crit_edge67, label %.lr.ph66, !llvm.loop !326

._crit_edge67:                                    ; preds = %.lr.ph66, %middle.block121, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @counteff(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca [50000 x double], align 16        ; 18 uses
  %i.b = alloca [50000 x double], align 16        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.c = load i32, ptr @mix, align 4, !tbaa !4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @weight, align 4, !tbaa !4
  switch i32 %i.d, label %bb.c [
    i32 2, label %.loopexit174.thread327
    i32 3, label %.thread326
  ]

.loopexit174.thread327:                           ; preds = %bb.b
  store i32 3, ptr @weight, align 4, !tbaa !4
  br label %.preheader171

.thread326:                                       ; preds = %bb.b
  store i32 2, ptr @weight, align 4, !tbaa !4
  br label %.preheader184

bb.c:                                             ; preds = %bb.b
  tail call void @ErrorExit(ptr noundef nonnull @.str.28) #33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.pr = load i32, ptr @weight, align 4, !tbaa !4
  switch i32 %.pr, label %.loopexit [
    i32 2, label %.preheader184
    i32 3, label %.preheader171
  ]

.preheader184:                                    ; preds = %bb.d, %.thread326
  %i.e = icmp sgt i32 %0, 0
  br i1 %i.e, label %.preheader183, label %.preheader183.thread

.preheader183.thread:                             ; preds = %.preheader184
  %i.f = add i32 %0, -2
  br label %.preheader178

.preheader183:                                    ; preds = %.preheader184
  %i.g = zext nneg i32 %0 to i64
  %i.h = shl nuw nsw i64 %i.g, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.h, i1 false), !tbaa !24
  %i.i = add nsw i32 %0, -2                       ; 3 uses
  %i.j = icmp samesign ugt i32 %0, 2
  br i1 %i.j, label %.preheader182.preheader, label %.preheader178

.preheader182.preheader:                          ; preds = %.preheader183
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %.preheader182

.preheader182:                                    ; preds = %.preheader182.preheader, %._crit_edge201
  %indvars.iv247 = phi i64 [ 0, %.preheader182.preheader ], [ %indvars.iv.next248, %._crit_edge201 ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv247
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !87   ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !89   ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4    ; 3 uses
  %i.o = icmp sgt i32 %i.n, -1                    ; 2 uses
  br i1 %i.o, label %.lr.ph193, label %.preheader181.thread

.preheader178:                                    ; preds = %._crit_edge201, %.preheader183.thread, %.preheader183
  %i.p = phi i32 [ %i.f, %.preheader183.thread ], [ %i.i, %.preheader183 ], [ %i.i, %._crit_edge201 ]
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %1, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !87   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !89   ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !4    ; 2 uses
  %i.v = icmp sgt i32 %i.u, -1
  br i1 %i.v, label %.preheader177.lr.ph, label %.preheader176

.preheader177.lr.ph:                              ; preds = %.preheader178
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !89   ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4    ; 2 uses
  %i.z = icmp sgt i32 %i.y, -1
  br i1 %i.z, label %.preheader177.us, label %.preheader176

.preheader177.us:                                 ; preds = %.preheader177.lr.ph, %._crit_edge.us206
  %indvars.iv256 = phi i64 [ %indvars.iv.next257, %._crit_edge.us206 ], [ 0, %.preheader177.lr.ph ]
  %i.aa = phi i32 [ %i.au, %._crit_edge.us206 ], [ %i.u, %.preheader177.lr.ph ] ; 3 uses
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %.preheader177.us, %bb.e
  %indvars.iv253 = phi i64 [ 0, %.preheader177.us ], [ %indvars.iv.next254, %bb.e ]
  %i.ae = phi i32 [ %i.y, %.preheader177.us ], [ %i.ar, %bb.e ] ; 3 uses
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.af
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !24
  %i.ai = fadd double %i.ad, %i.ah
  %i.aj = tail call i32 @llvm.smin.i32(i32 %i.aa, i32 %i.ae)
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !52
  %i.an = tail call i32 @llvm.smax.i32(i32 %i.aa, i32 %i.ae)
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ao
  store double %i.ai, ptr %i.ap, align 8, !tbaa !24
  %indvars.iv.next254 = add nuw nsw i64 %indvars.iv253, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next254
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4  ; 2 uses
  %i.as = icmp sgt i32 %i.ar, -1
  br i1 %i.as, label %bb.e, label %._crit_edge.us206, !llvm.loop !327

._crit_edge.us206:                                ; preds = %bb.e
  %indvars.iv.next257 = add nuw nsw i64 %indvars.iv256, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next257
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4  ; 2 uses
  %i.av = icmp sgt i32 %i.au, -1
  br i1 %i.av, label %.preheader177.us, label %.preheader176, !llvm.loop !328

.preheader181:                                    ; preds = %.lr.ph193
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !89 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !4  ; 2 uses
  %i.az = icmp sgt i32 %i.ay, -1
  br i1 %i.az, label %.lr.ph196.preheader, label %._crit_edge201

.preheader181.thread:                             ; preds = %.preheader182
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !89 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4  ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, -1
  br i1 %i.bd, label %.lr.ph196.preheader, label %._crit_edge201

.lr.ph196.preheader:                              ; preds = %.preheader181.thread, %.preheader181
  %i.be = phi i32 [ %i.bc, %.preheader181.thread ], [ %i.ay, %.preheader181 ] ; 2 uses
  %i.bf = phi ptr [ %i.bb, %.preheader181.thread ], [ %i.ax, %.preheader181 ] ; 2 uses
  br label %.lr.ph196

.lr.ph193:                                        ; preds = %.preheader182, %.lr.ph193
end_hunk_10
begin_hunk_11_@counteff:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !4  ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, -1
  br i1 %i.bn, label %.lr.ph193, label %.preheader181, !llvm.loop !329

.preheader180:                                    ; preds = %.lr.ph196
  br i1 %i.o, label %.preheader179.us, label %._crit_edge201

.preheader179.us:                                 ; preds = %.preheader180, %._crit_edge.us
  %indvars.iv244 = phi i64 [ %indvars.iv.next245, %._crit_edge.us ], [ 0, %.preheader180 ]
  %i.bo = phi i32 [ %i.cj, %._crit_edge.us ], [ %i.n, %.preheader180 ] ; 3 uses
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bp
  %i.br = load double, ptr %i.bq, align 8, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %.preheader179.us, %bb.f
  %indvars.iv241 = phi i64 [ 0, %.preheader179.us ], [ %indvars.iv.next242, %bb.f ]
  %i.bs = phi i32 [ %i.be, %.preheader179.us ], [ %i.cg, %bb.f ] ; 3 uses
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bt
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !24
  %i.bw = fadd double %i.br, %i.bv
  %i.bx = fadd double %i.bw, -1.000000e+00
  %i.by = tail call i32 @llvm.smin.i32(i32 %i.bo, i32 %i.bs)
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !52
  %i.cc = tail call i32 @llvm.smax.i32(i32 %i.bo, i32 %i.bs)
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cd
  store double %i.bx, ptr %i.ce, align 8, !tbaa !24
  %indvars.iv.next242 = add nuw nsw i64 %indvars.iv241, 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next242
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !4  ; 2 uses
  %i.ch = icmp sgt i32 %i.cg, -1
  br i1 %i.ch, label %bb.f, label %._crit_edge.us, !llvm.loop !330

._crit_edge.us:                                   ; preds = %bb.f
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1 ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next245
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !4  ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, -1
  br i1 %i.ck, label %.preheader179.us, label %._crit_edge201, !llvm.loop !331

.lr.ph196:                                        ; preds = %.lr.ph196.preheader, %.lr.ph196
  %indvars.iv235 = phi i64 [ 0, %.lr.ph196.preheader ], [ %indvars.iv.next236, %.lr.ph196 ]
  %i.cl = phi i32 [ %i.be, %.lr.ph196.preheader ], [ %i.cr, %.lr.ph196 ]
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cm ; 2 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !24
  %i.cp = fadd double %i.co, 1.000000e+00
  store double %i.cp, ptr %i.cn, align 8, !tbaa !24
  %indvars.iv.next236 = add nuw nsw i64 %indvars.iv235, 1 ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next236
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !4  ; 2 uses
  %i.cs = icmp sgt i32 %i.cr, -1
  br i1 %i.cs, label %.lr.ph196, label %.preheader180, !llvm.loop !332

._crit_edge201:                                   ; preds = %._crit_edge.us, %.preheader181, %.preheader181.thread, %.preheader180
  %indvars.iv.next248 = add nuw nsw i64 %indvars.iv247, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next248, %wide.trip.count
  br i1 %exitcond.not, label %.preheader178, label %.preheader182, !llvm.loop !333

.preheader176:                                    ; preds = %._crit_edge.us206, %.preheader177.lr.ph, %.preheader178
  %i.ct = add i32 %0, -1                          ; 2 uses
  %i.cu = icmp sgt i32 %0, 1
  br i1 %i.cu, label %.lr.ph210, label %.loopexit

.lr.ph210:                                        ; preds = %.preheader176
  %i.cv = load float, ptr @geta2, align 4
  %i.cw = fpext float %i.cv to double
  %wide.trip.count269 = zext nneg i32 %i.ct to i64
  %wide.trip.count264 = zext nneg i32 %0 to i64   ; 3 uses
  br label %.lr.ph208

.loopexit175:                                     ; preds = %ipower.exit
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1
  %exitcond270.not = icmp eq i64 %indvars.iv.next267, %wide.trip.count269
  br i1 %exitcond270.not, label %.lr.ph215.preheader, label %.lr.ph208, !llvm.loop !334

.lr.ph215.preheader:                              ; preds = %.loopexit175
  %wide.trip.count281 = zext nneg i32 %i.ct to i64
  %wide.trip.count276 = zext nneg i32 %0 to i64
  %i.cx = add nsw i64 %wide.trip.count264, -2
  br label %.lr.ph213

.lr.ph208:                                        ; preds = %.loopexit175, %.lr.ph210
  %indvars.iv266 = phi i64 [ 0, %.lr.ph210 ], [ %indvars.iv.next267, %.loopexit175 ] ; 2 uses
  %indvars.iv259 = phi i64 [ 1, %.lr.ph210 ], [ %indvars.iv.next260, %.loopexit175 ] ; 2 uses
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv266
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !52
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph208, %ipower.exit
  %indvars.iv261 = phi i64 [ %indvars.iv259, %.lr.ph208 ], [ %indvars.iv.next262, %ipower.exit ] ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv261 ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !24
  %i.dc = fptosi double %i.db to i32              ; 2 uses
  %.not10.i = icmp eq i32 %i.dc, 0
  br i1 %.not10.i, label %ipower.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.013.i = phi double [ %.1.i, %.lr.ph.i ], [ 1.000000e+00, %bb.g ] ; 2 uses
  %.0712.i = phi i32 [ %i.dg, %.lr.ph.i ], [ %i.dc, %bb.g ] ; 2 uses
  %.0811.i = phi double [ %i.df, %.lr.ph.i ], [ 5.000000e-01, %bb.g ] ; 3 uses
  %i.dd = and i32 %.0712.i, 1
  %.not9.i = icmp eq i32 %i.dd, 0
  %i.de = fmul double %.013.i, %.0811.i
  %.1.i = select i1 %.not9.i, double %.013.i, double %i.de ; 2 uses
  %i.df = fmul double %.0811.i, %.0811.i
  %i.dg = ashr i32 %.0712.i, 1                    ; 2 uses
  %.not.i = icmp eq i32 %i.dg, 0
  br i1 %.not.i, label %ipower.exit, label %.lr.ph.i, !llvm.loop !286

ipower.exit:                                      ; preds = %.lr.ph.i, %bb.g
  %.0.lcssa.i = phi double [ 1.000000e+00, %bb.g ], [ %.1.i, %.lr.ph.i ]
  %i.dh = fadd double %.0.lcssa.i, %i.cw
  store double %i.dh, ptr %i.da, align 8, !tbaa !24
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next262, %wide.trip.count264
  br i1 %exitcond265.not, label %.loopexit175, label %bb.g, !llvm.loop !335

.loopexit172:                                     ; preds = %.lr.ph213.new, %.prol.loopexit
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1
  %exitcond282.not = icmp eq i64 %indvars.iv.next279, %wide.trip.count281
  br i1 %exitcond282.not, label %.loopexit, label %.lr.ph213, !llvm.loop !336

.lr.ph213:                                        ; preds = %.loopexit172, %.lr.ph215.preheader
  %indvars.iv278 = phi i64 [ 0, %.lr.ph215.preheader ], [ %indvars.iv.next279, %.loopexit172 ] ; 9 uses
  %indvars.iv271 = phi i64 [ 1, %.lr.ph215.preheader ], [ %indvars.iv.next272, %.loopexit172 ] ; 3 uses
  %i.di = xor i64 %indvars.iv278, -1
  %i.dj = add nsw i64 %i.di, %wide.trip.count264
  %i.dk = sub i64 %i.cx, %indvars.iv278
  %indvars.iv.next279 = add nuw nsw i64 %indvars.iv278, 1 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv278
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !52 ; 5 uses
  %xtraiter350 = and i64 %i.dj, 3                 ; 2 uses
  %lcmp.mod351.not = icmp eq i64 %xtraiter350, 0
  br i1 %lcmp.mod351.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph213, %.prol.preheader
  %indvars.iv273.prol = phi i64 [ %indvars.iv.next274.prol, %.prol.preheader ], [ %indvars.iv271, %.lr.ph213 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph213 ]
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv273.prol
  %i.do = load double, ptr %i.dn, align 8, !tbaa !24
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv273.prol
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !52
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv278
  store double %i.do, ptr %i.dr, align 8, !tbaa !24
  %indvars.iv.next274.prol = add nuw nsw i64 %indvars.iv273.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter350
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !337

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph213
  %indvars.iv273.unr = phi i64 [ %indvars.iv271, %.lr.ph213 ], [ %indvars.iv.next274.prol, %.prol.preheader ]
  %i.ds = icmp ult i64 %i.dk, 3
  br i1 %i.ds, label %.loopexit172, label %.lr.ph213.new

.lr.ph213.new:                                    ; preds = %.prol.loopexit, %.lr.ph213.new
  %indvars.iv273 = phi i64 [ %indvars.iv.next274.3, %.lr.ph213.new ], [ %indvars.iv273.unr, %.prol.loopexit ] ; 6 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv273
  %i.du = load double, ptr %i.dt, align 8, !tbaa !24
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv273
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !52
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv278
  store double %i.du, ptr %i.dx, align 8, !tbaa !24
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv.next274
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !24
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next274
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !52
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv278
  store double %i.dz, ptr %i.ec, align 8, !tbaa !24
  %indvars.iv.next274.1 = add nuw nsw i64 %indvars.iv273, 2 ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv.next274.1
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !24
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next274.1
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !52
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %indvars.iv278
  store double %i.ee, ptr %i.eh, align 8, !tbaa !24
  %indvars.iv.next274.2 = add nuw nsw i64 %indvars.iv273, 3 ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv.next274.2
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !24
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next274.2
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !52
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv278
  store double %i.ej, ptr %i.em, align 8, !tbaa !24
  %indvars.iv.next274.3 = add nuw nsw i64 %indvars.iv273, 4 ; 2 uses
  %exitcond277.not.3 = icmp eq i64 %indvars.iv.next274.3, %wide.trip.count276
  br i1 %exitcond277.not.3, label %.loopexit172, label %.lr.ph213.new, !llvm.loop !338

.preheader171:                                    ; preds = %bb.d, %.loopexit174.thread327
  %i.en = icmp sgt i32 %0, 0
  br i1 %i.en, label %.lr.ph217.preheader, label %.loopexit

.lr.ph217.preheader:                              ; preds = %.preheader171
  %i.eo = zext nneg i32 %0 to i64                 ; 6 uses
  %i.ep = shl nuw nsw i64 %i.eo, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.ep, i1 false), !tbaa !24
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %.lr.ph217.preheader348, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph217.preheader
  %n.vec = and i64 %i.eo, 2147483644              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.eq, align 16, !tbaa !24
  store <2 x double> splat (double 1.000000e+00), ptr %i.er, align 16, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.es = icmp eq i64 %index.next, %n.vec
  br i1 %i.es, label %middle.block, label %vector.body, !llvm.loop !339

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.eo
  br i1 %cmp.n, label %.preheader170, label %.lr.ph217.preheader348

.lr.ph217.preheader348:                           ; preds = %.lr.ph217.preheader, %middle.block
  %indvars.iv283.ph = phi i64 [ 0, %.lr.ph217.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph217

.preheader170:                                    ; preds = %.lr.ph217, %middle.block
  %.not332 = icmp eq i32 %0, 1
  br i1 %.not332, label %.lr.ph226.preheader, label %.preheader169.preheader

.preheader169.preheader:                          ; preds = %.preheader170
  %i.et = add nsw i32 %0, -1
  %wide.trip.count297 = zext nneg i32 %i.et to i64
  br label %.preheader169

.lr.ph217:                                        ; preds = %.lr.ph217.preheader348, %.lr.ph217
  %indvars.iv283 = phi i64 [ %indvars.iv.next284, %.lr.ph217 ], [ %indvars.iv283.ph, %.lr.ph217.preheader348 ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv283
  store double 1.000000e+00, ptr %i.eu, align 8, !tbaa !24
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %i.eo
  br i1 %exitcond287.not, label %.preheader170, label %.lr.ph217, !llvm.loop !340

.preheader169:                                    ; preds = %.preheader169.preheader, %._crit_edge
  %indvars.iv294 = phi i64 [ 0, %.preheader169.preheader ], [ %indvars.iv.next295, %._crit_edge ] ; 4 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv294
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !87 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !89 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !4  ; 2 uses
  %i.ez = icmp sgt i32 %i.ey, -1
  br i1 %i.ez, label %.lr.ph219, label %.preheader168

.lr.ph219:                                        ; preds = %.preheader169
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv294
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !52
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !24
  br label %bb.h

.lr.ph226.preheader:                              ; preds = %._crit_edge, %.preheader170
  %wide.trip.count302 = zext nneg i32 %0 to i64   ; 3 uses
  %min.iters.check335 = icmp ult i32 %0, 4
  br i1 %min.iters.check335, label %.lr.ph226.preheader347, label %vector.ph336

vector.ph336:                                     ; preds = %.lr.ph226.preheader
  %n.vec338 = and i64 %wide.trip.count302, 2147483644 ; 3 uses
  br label %vector.body339

vector.body339:                                   ; preds = %vector.body339, %vector.ph336
  %index340 = phi i64 [ 0, %vector.ph336 ], [ %index.next342, %vector.body339 ] ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index340 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.fd, align 16, !tbaa !24
  %wide.load341 = load <2 x double>, ptr %i.fe, align 16, !tbaa !24
  %i.ff = fadd <2 x double> %wide.load, splat (double 1.000000e-03)
  %i.fg = fadd <2 x double> %wide.load341, splat (double 1.000000e-03)
  store <2 x double> %i.ff, ptr %i.fd, align 16, !tbaa !24
  store <2 x double> %i.fg, ptr %i.fe, align 16, !tbaa !24
  %index.next342 = add nuw i64 %index340, 4       ; 2 uses
  %i.fh = icmp eq i64 %index.next342, %n.vec338
  br i1 %i.fh, label %middle.block343, label %vector.body339, !llvm.loop !341

middle.block343:                                  ; preds = %vector.body339
  %cmp.n344 = icmp eq i64 %n.vec338, %wide.trip.count302
  br i1 %cmp.n344, label %.preheader.us.preheader, label %.lr.ph226.preheader347

.lr.ph226.preheader347:                           ; preds = %.lr.ph226.preheader, %middle.block343
  %indvars.iv299.ph = phi i64 [ 0, %.lr.ph226.preheader ], [ %n.vec338, %middle.block343 ]
  br label %.lr.ph226

.preheader168:                                    ; preds = %bb.h, %.preheader169
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !89 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !4  ; 2 uses
  %i.fl = icmp sgt i32 %i.fk, -1
  br i1 %i.fl, label %.lr.ph223, label %._crit_edge

.lr.ph223:                                        ; preds = %.preheader168
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv294
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !52
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !24
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph219, %bb.h
  %indvars.iv288 = phi i64 [ 0, %.lr.ph219 ], [ %indvars.iv.next289, %bb.h ]
  %i.fq = phi i32 [ %i.ey, %.lr.ph219 ], [ %i.fz, %bb.h ]
  %i.fr = zext nneg i32 %i.fq to i64              ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.fr ; 2 uses
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !24 ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.fr ; 2 uses
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !24
  %i.fw = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.ft, double %i.fv)
  store double %i.fw, ptr %i.fu, align 8, !tbaa !24
  %i.fx = fmul double %i.ft, 5.000000e-01
  store double %i.fx, ptr %i.fs, align 8, !tbaa !24
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv.next289
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !4  ; 2 uses
  %i.ga = icmp sgt i32 %i.fz, -1
  br i1 %i.ga, label %bb.h, label %.preheader168, !llvm.loop !342

bb.i:                                             ; preds = %.lr.ph223, %bb.i
  %indvars.iv291 = phi i64 [ 0, %.lr.ph223 ], [ %indvars.iv.next292, %bb.i ]
  %i.gb = phi i32 [ %i.fk, %.lr.ph223 ], [ %i.gk, %bb.i ]
  %i.gc = zext nneg i32 %i.gb to i64              ; 2 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.gc ; 2 uses
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !24 ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.gc ; 2 uses
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !24
  %i.gh = tail call double @llvm.fmuladd.f64(double %i.fp, double %i.ge, double %i.gg)
  store double %i.gh, ptr %i.gf, align 8, !tbaa !24
  %i.gi = fmul double %i.ge, 5.000000e-01
  store double %i.gi, ptr %i.gd, align 8, !tbaa !24
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %indvars.iv.next292
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !4  ; 2 uses
  %i.gl = icmp sgt i32 %i.gk, -1
  br i1 %i.gl, label %bb.i, label %._crit_edge, !llvm.loop !343

._crit_edge:                                      ; preds = %bb.i, %.preheader168
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %exitcond298.not = icmp eq i64 %indvars.iv.next295, %wide.trip.count297
  br i1 %exitcond298.not, label %.lr.ph226.preheader, label %.preheader169, !llvm.loop !344

.preheader.us.preheader:                          ; preds = %.lr.ph226, %middle.block343
  %wide.trip.count312 = zext nneg i32 %0 to i64
  %xtraiter = and i64 %i.eo, 1
  %i.gm = icmp eq i32 %0, 1
  %unroll_iter = and i64 %i.eo, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod349 = trunc i32 %0 to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge229.us
  %indvars.iv309 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next310, %._crit_edge229.us ] ; 9 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv309 ; 2 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv309 ; 2 uses
  br i1 %i.gm, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us
  %i.gp = load double, ptr %i.gn, align 8, !tbaa !24 ; 4 uses
  %i.gq = load ptr, ptr %i.go, align 8, !tbaa !52 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %.preheader.us.new
  %indvars.iv304 = phi i64 [ 0, %.preheader.us.new ], [ %indvars.iv.next305.1, %bb.n ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.us.new ], [ %niter.next.1, %bb.n ]
  %.not165.us = icmp eq i64 %indvars.iv304, %indvars.iv309
  br i1 %.not165.us, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv304
  %i.gs = load double, ptr %i.gr, align 16, !tbaa !24
  %i.gt = fmul double %i.gp, %i.gs
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %indvars.iv309.sink = phi i64 [ %indvars.iv304, %bb.k ], [ %indvars.iv309, %bb.j ]
  %.sink = phi double [ %i.gt, %bb.k ], [ %i.gp, %bb.j ]
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %indvars.iv309.sink
  store double %.sink, ptr %i.gu, align 8, !tbaa !24
  %indvars.iv.next305 = or disjoint i64 %indvars.iv304, 1 ; 3 uses
  %.not165.us.1 = icmp eq i64 %indvars.iv.next305, %indvars.iv309
  br i1 %.not165.us.1, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next305
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !24
  %i.gx = fmul double %i.gp, %i.gw
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %indvars.iv309.sink.1 = phi i64 [ %indvars.iv.next305, %bb.m ], [ %indvars.iv309, %bb.l ]
  %.sink.1 = phi double [ %i.gx, %bb.m ], [ %i.gp, %bb.l ]
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %indvars.iv309.sink.1
  store double %.sink.1, ptr %i.gy, align 8, !tbaa !24
  %indvars.iv.next305.1 = add nuw nsw i64 %indvars.iv304, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge229.us.unr-lcssa, label %bb.j, !llvm.loop !345

._crit_edge229.us.unr-lcssa:                      ; preds = %bb.n
  br i1 %lcmp.mod.not, label %._crit_edge229.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge229.us.unr-lcssa, %.preheader.us
  %indvars.iv304.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next305.1, %._crit_edge229.us.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod349)
  %.not165.us.epil = icmp eq i64 %indvars.iv304.epil.init, %indvars.iv309
  %i.gz = load double, ptr %i.gn, align 8, !tbaa !24 ; 2 uses
  br i1 %.not165.us.epil, label %._crit_edge229.us.epilog-lcssa, label %bb.o

bb.o:                                             ; preds = %.epil.preheader
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv304.epil.init
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !24
  %i.hc = fmul double %i.gz, %i.hb
  br label %._crit_edge229.us.epilog-lcssa

._crit_edge229.us.epilog-lcssa:                   ; preds = %bb.o, %.epil.preheader
  %indvars.iv309.sink.epil = phi i64 [ %indvars.iv304.epil.init, %bb.o ], [ %indvars.iv309, %.epil.preheader ]
  %.sink.epil = phi double [ %i.hc, %bb.o ], [ %i.gz, %.epil.preheader ]
  %i.hd = load ptr, ptr %i.go, align 8, !tbaa !52
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv309.sink.epil
  store double %.sink.epil, ptr %i.he, align 8, !tbaa !24
  br label %._crit_edge229.us

._crit_edge229.us:                                ; preds = %._crit_edge229.us.unr-lcssa, %._crit_edge229.us.epilog-lcssa
  %indvars.iv.next310 = add nuw nsw i64 %indvars.iv309, 1 ; 2 uses
  %exitcond313.not = icmp eq i64 %indvars.iv.next310, %wide.trip.count312
  br i1 %exitcond313.not, label %.loopexit, label %.preheader.us, !llvm.loop !346

.lr.ph226:                                        ; preds = %.lr.ph226.preheader347, %.lr.ph226
  %indvars.iv299 = phi i64 [ %indvars.iv.next300, %.lr.ph226 ], [ %indvars.iv299.ph, %.lr.ph226.preheader347 ] ; 2 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv299 ; 2 uses
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !24
  %i.hh = fadd double %i.hg, 1.000000e-03
  store double %i.hh, ptr %i.hf, align 8, !tbaa !24
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1 ; 2 uses
  %exitcond303.not = icmp eq i64 %indvars.iv.next300, %wide.trip.count302
  br i1 %exitcond303.not, label %.preheader.us.preheader, label %.lr.ph226, !llvm.loop !347

.loopexit:                                        ; preds = %._crit_edge229.us, %.loopexit172, %bb.d, %.preheader171, %.preheader176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void
}

declare void @ErrorExit(ptr noundef) local_unnamed_addr #13

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local float @score_calcp(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = add nsw i32 %2, -2                       ; 2 uses
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph57, label %._crit_edge58

.lr.ph57:                                         ; preds = %bb.a
  %i.c = load i32, ptr @penalty, align 4
  %i.d = sitofp i32 %i.c to float                 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph57, %bb.i
  %.055 = phi i32 [ 0, %.lr.ph57 ], [ %i.ay, %bb.i ] ; 7 uses
  %.04054 = phi float [ 0.000000e+00, %.lr.ph57 ], [ %.343, %bb.i ] ; 2 uses
  %i.e = sext i32 %.055 to i64                    ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !8     ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.e
  %i.i = load i8, ptr %i.h, align 1, !tbaa !8     ; 2 uses
  %i.j = icmp eq i8 %i.g, 45                      ; 2 uses
  %i.k = icmp eq i8 %i.i, 45                      ; 2 uses
  %or.cond = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sext i8 %i.g to i64
  %i.m = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.l ; 2 uses
  %i.n = sext i8 %i.i to i64                      ; 2 uses
  %i.o = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4
  %i.q = sitofp i32 %i.p to float                 ; 3 uses
  %i.r = fadd float %.04054, %i.q                 ; 3 uses
  br i1 %i.j, label %bb.d, label %bb.f

end_hunk_11
