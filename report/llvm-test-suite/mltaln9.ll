Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/mltaln9?download=true
inline.NumInlined: 16
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 95
begin_hunk_0_@upg2:bb.a
  %i.ed = add nsw i32 %.2185.epil.init, 1
  br label %.lr.ph192

.lr.ph192:                                        ; preds = %.epil.preheader274, %bb.p, %.lr.ph192.unr-lcssa
  %.3.lcssa = phi i32 [ %.3.1, %.lr.ph192.unr-lcssa ], [ %i.ed, %bb.p ], [ %.2185.epil.init, %.epil.preheader274 ]
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.dc
  %.pre250 = load double, ptr %.phi.trans.insert, align 8, !tbaa !24
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !89
  %i.eg = sext i32 %.3.lcssa to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.eg
  store i32 -1, ptr %i.eh, align 4, !tbaa !4
  %i.ei = fpext float %.2137.lcssa to double
  %i.ej = fmul double %i.ei, 5.000000e-01         ; 3 uses
  %i.ek = sext i32 %.2134.lcssa to i64            ; 3 uses
  %i.el = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ek ; 2 uses
  %i.em = load double, ptr %i.el, align 8, !tbaa !24
  %i.en = fsub double %i.ej, %i.em
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv245
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !52 ; 2 uses
  store double %i.en, ptr %i.ep, align 8, !tbaa !24
  %i.eq = fsub double %i.ej, %.pre250
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store double %i.eq, ptr %i.er, align 8, !tbaa !24
  store double %i.ej, ptr %i.el, align 8, !tbaa !24
  %i.es = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.dc ; 3 uses
  %i.et = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ek ; 3 uses
  br i1 %i.ag, label %.epil.preheader282, label %.lr.ph192.new

.lr.ph194.unr-lcssa:                              ; preds = %.lr.ph192.new
  br i1 %lcmp.mod285.not, label %.lr.ph194, label %.epil.preheader282

.epil.preheader282:                               ; preds = %.lr.ph194.unr-lcssa, %.lr.ph192
  %indvars.iv234.epil.init = phi i64 [ 0, %.lr.ph192 ], [ %indvars.iv.next235.1, %.lr.ph194.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod286)
  %i.eu = load ptr, ptr %i.es, align 8, !tbaa !12
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv234.epil.init
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !8
  %i.ex = icmp sgt i8 %i.ew, 0
  %i.ey = zext i1 %i.ex to i8
  %i.ez = load ptr, ptr %i.et, align 8, !tbaa !12
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %indvars.iv234.epil.init ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !8
  %i.fc = add i8 %i.fb, %i.ey
  store i8 %i.fc, ptr %i.fa, align 1, !tbaa !8
  br label %.lr.ph194

.lr.ph194:                                        ; preds = %.lr.ph194.unr-lcssa, %.epil.preheader282
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.dc ; 5 uses
  br i1 %i.ah, label %.epil.preheader289, label %.lr.ph194.new

.lr.ph192.new:                                    ; preds = %.lr.ph192, %.lr.ph192.new
  %indvars.iv234 = phi i64 [ %indvars.iv.next235.1, %.lr.ph192.new ], [ 0, %.lr.ph192 ] ; 4 uses
  %niter288 = phi i64 [ %niter288.next.1, %.lr.ph192.new ], [ 0, %.lr.ph192 ]
  %i.fe = load ptr, ptr %i.es, align 8, !tbaa !12
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %indvars.iv234
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !8
  %i.fh = icmp sgt i8 %i.fg, 0
  %i.fi = zext i1 %i.fh to i8
  %i.fj = load ptr, ptr %i.et, align 8, !tbaa !12
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %indvars.iv234 ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !8
  %i.fm = add i8 %i.fl, %i.fi
  store i8 %i.fm, ptr %i.fk, align 1, !tbaa !8
  %indvars.iv.next235 = or disjoint i64 %indvars.iv234, 1 ; 2 uses
  %i.fn = load ptr, ptr %i.es, align 8, !tbaa !12
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %indvars.iv.next235
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !8
  %i.fq = icmp sgt i8 %i.fp, 0
  %i.fr = zext i1 %i.fq to i8
  %i.fs = load ptr, ptr %i.et, align 8, !tbaa !12
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %indvars.iv.next235 ; 2 uses
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !8
  %i.fv = add i8 %i.fu, %i.fr
  store i8 %i.fv, ptr %i.ft, align 1, !tbaa !8
  %indvars.iv.next235.1 = add nuw nsw i64 %indvars.iv234, 2 ; 2 uses
  %niter288.next.1 = add i64 %niter288, 2         ; 2 uses
  %niter288.ncmp.1 = icmp eq i64 %niter288.next.1, %unroll_iter287
  br i1 %niter288.ncmp.1, label %.lr.ph194.unr-lcssa, label %.lr.ph192.new, !llvm.loop !93

.lr.ph196.unr-lcssa:                              ; preds = %.lr.ph194.new
  br i1 %lcmp.mod292.not, label %.lr.ph196, label %.epil.preheader289

.epil.preheader289:                               ; preds = %.lr.ph196.unr-lcssa, %.lr.ph194
  %indvars.iv239.epil.init = phi i64 [ 0, %.lr.ph194 ], [ %indvars.iv.next240.3, %.lr.ph196.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod293)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader289
  %indvars.iv239.epil = phi i64 [ %indvars.iv239.epil.init, %.epil.preheader289 ], [ %indvars.iv.next240.epil, %bb.q ] ; 2 uses
  %epil.iter291 = phi i64 [ 0, %.epil.preheader289 ], [ %epil.iter291.next, %bb.q ]
  %i.fw = load ptr, ptr %i.fd, align 8, !tbaa !12
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %indvars.iv239.epil
  store i8 0, ptr %i.fx, align 1, !tbaa !8
  %indvars.iv.next240.epil = add nuw nsw i64 %indvars.iv239.epil, 1
  %epil.iter291.next = add i64 %epil.iter291, 1   ; 2 uses
  %epil.iter291.cmp.not = icmp eq i64 %epil.iter291.next, %xtraiter290
  br i1 %epil.iter291.cmp.not, label %.lr.ph196, label %bb.q, !llvm.loop !94

.lr.ph196:                                        ; preds = %bb.q, %.lr.ph196.unr-lcssa
  %i.fy = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ek
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !52
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %i.dc
  br label %bb.r

.lr.ph194.new:                                    ; preds = %.lr.ph194, %.lr.ph194.new
  %indvars.iv239 = phi i64 [ %indvars.iv.next240.3, %.lr.ph194.new ], [ 0, %.lr.ph194 ] ; 5 uses
  %niter295 = phi i64 [ %niter295.next.3, %.lr.ph194.new ], [ 0, %.lr.ph194 ]
  %i.gb = load ptr, ptr %i.fd, align 8, !tbaa !12
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %indvars.iv239
  store i8 0, ptr %i.gc, align 1, !tbaa !8
  %i.gd = load ptr, ptr %i.fd, align 8, !tbaa !12
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv239
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 1
  store i8 0, ptr %i.gf, align 1, !tbaa !8
  %i.gg = load ptr, ptr %i.fd, align 8, !tbaa !12
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %indvars.iv239
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 2
  store i8 0, ptr %i.gi, align 1, !tbaa !8
  %i.gj = load ptr, ptr %i.fd, align 8, !tbaa !12
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %indvars.iv239
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 3
  store i8 0, ptr %i.gl, align 1, !tbaa !8
  %indvars.iv.next240.3 = add nuw nsw i64 %indvars.iv239, 4 ; 2 uses
  %niter295.next.3 = add i64 %niter295, 4         ; 2 uses
  %niter295.ncmp.3 = icmp eq i64 %niter295.next.3, %unroll_iter294
  br i1 %niter295.ncmp.3, label %.lr.ph196.unr-lcssa, label %.lr.ph194.new, !llvm.loop !95

bb.r:                                             ; preds = %.lr.ph196, %bb.t
  %.8195 = phi i32 [ 0, %.lr.ph196 ], [ %i.he, %bb.t ] ; 7 uses
  %.not148 = icmp eq i32 %.8195, %.2134.lcssa
  %.not149 = icmp eq i32 %.8195, %.2131.lcssa
  %or.cond = select i1 %.not148, i1 true, i1 %.not149
  br i1 %or.cond, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gm = tail call i32 @llvm.smin.i32(i32 %.8195, i32 %.2134.lcssa)
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds [8 x i8], ptr %1, i64 %i.gn
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !52
  %i.gq = tail call i32 @llvm.smax.i32(i32 %.8195, i32 %.2134.lcssa)
  %i.gr = zext nneg i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.gr ; 2 uses
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !24
  %i.gu = tail call i32 @llvm.smin.i32(i32 %.8195, i32 %.2131.lcssa)
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [8 x i8], ptr %1, i64 %i.gv
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !52
  %i.gy = tail call i32 @llvm.smax.i32(i32 %.8195, i32 %.2131.lcssa)
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
  %i.he = add nuw nsw i32 %.8195, 1               ; 2 uses
  %exitcond244.not = icmp eq i32 %i.he, %0
  br i1 %exitcond244.not, label %._crit_edge197, label %bb.r, !llvm.loop !96

._crit_edge197:                                   ; preds = %bb.t
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1 ; 2 uses
  %exitcond249.not = icmp eq i64 %indvars.iv.next246, %wide.trip.count248
  br i1 %exitcond249.not, label %._crit_edge199, label %.lr.ph175.preheader, !llvm.loop !97

._crit_edge199:                                   ; preds = %._crit_edge197, %bb.c, %.preheader153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void
}

declare ptr @AllocateCharMtx(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local void @loadtree(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #12 {
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
  %5 = load i32, ptr @njob, align 4, !tbaa !4
  %i.l = tail call ptr @AllocateIntVec(i32 noundef %5) #33
  store ptr %i.l, ptr @loadtree.nmemar, align 8, !tbaa !89
  %i.m = load i32, ptr @njob, align 4, !tbaa !4
  %i.n = tail call ptr @AllocateFloatVec(i32 noundef %i.m) #33
  %i.o = load i32, ptr @njob, align 4, !tbaa !4
  %i.p = tail call ptr @AllocateIntVec(i32 noundef %i.o) #33
  %i.q = load i32, ptr @njob, align 4, !tbaa !4
  %i.r = mul nsw i32 %i.q, 50
  %i.s = tail call ptr @AllocateCharVec(i32 noundef %i.r) #33
  store ptr %i.s, ptr @loadtree.treetmp, align 8, !tbaa !12
  %i.t = tail call ptr @AllocateCharVec(i32 noundef 30) #33
  store ptr %i.t, ptr @loadtree.nametmp, align 8, !tbaa !12
  %i.u = load i32, ptr @njob, align 4, !tbaa !4   ; 2 uses
  %i.v = mul nsw i32 %i.u, 50
  %i.w = tail call ptr @AllocateCharMtx(i32 noundef %i.u, i32 noundef %i.v) #33
  store ptr %i.w, ptr @loadtree.tree, align 8, !tbaa !77
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0170 = phi ptr [ null, %bb.c ], [ %i.p, %bb.d ]
  %.0 = phi ptr [ null, %bb.c ], [ %i.n, %bb.d ]  ; 2 uses
  %i.x = icmp sgt i32 %0, 0
  br i1 %i.x, label %.preheader218.lr.ph, label %._crit_edge226.thread

.preheader218.lr.ph:                              ; preds = %bb.e
  %i.y = tail call ptr @__ctype_b_loc() #35       ; 2 uses
  %wide.trip.count = zext nneg i32 %0 to i64      ; 7 uses
  br label %.preheader218

.preheader218:                                    ; preds = %.preheader218.lr.ph, %bb.g
  %indvars.iv259 = phi i64 [ 0, %.preheader218.lr.ph ], [ %indvars.iv.next260, %bb.g ] ; 3 uses
  %i.z = load ptr, ptr @loadtree.nametmp, align 8, !tbaa !12 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.z, i8 0, i64 30, i1 false), !tbaa !8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv259 ; 2 uses
  br label %bb.f

.lr.ph.preheader:                                 ; preds = %bb.g
  %.pre278 = load ptr, ptr @loadtree.ac, align 8, !tbaa !98 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ab = icmp eq i32 %0, 1
  br i1 %i.ab, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %i.ac = load ptr, ptr @loadtree.ac, align 8, !tbaa !98 ; 8 uses
  br label %.lr.ph

bb.f:                                             ; preds = %bb.f, %.preheader218
  %indvars.iv = phi i64 [ 0, %.preheader218 ], [ %indvars.iv.next.1, %bb.f ] ; 4 uses
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !100
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !12
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !8   ; 2 uses
  %i.ah = sext i8 %i.ag to i64
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !102
  %i.ak = and i16 %i.aj, 8
  %.not211 = icmp eq i16 %i.ak, 0
  %spec.select = select i1 %.not211, i8 95, i8 %i.ag
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv
  store i8 %spec.select, ptr %i.al, align 1, !tbaa !8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.am = load ptr, ptr %i.y, align 8, !tbaa !100
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv.next
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !8   ; 2 uses
  %i.aq = sext i8 %i.ap to i64
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.am, i64 %i.aq
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !102
  %i.at = and i16 %i.as, 8
  %.not211.1 = icmp eq i16 %i.at, 0
  %spec.select.1 = select i1 %.not211.1, i8 95, i8 %i.ap
  %i.au = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv.next
  store i8 %spec.select.1, ptr %i.au, align 1, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 30
  br i1 %exitcond.not.1, label %bb.g, label %bb.f, !llvm.loop !104

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 30
  store i8 0, ptr %i.av, align 1, !tbaa !8
  %i.aw = load ptr, ptr @loadtree.tree, align 8, !tbaa !77
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv259
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !12
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ba = trunc nuw nsw i64 %indvars.iv.next260 to i32
  %i.bb = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.ba, ptr noundef nonnull %i.az) #33 ; 0 uses
  %exitcond262.not = icmp eq i64 %indvars.iv.next260, %wide.trip.count
  br i1 %exitcond262.not, label %.lr.ph.preheader, label %.preheader218, !llvm.loop !105

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.bc = phi ptr [ %.pre278, %.lr.ph.preheader.new ], [ %i.ac, %.lr.ph ]
  %indvars.iv263 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next264.1, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %indvars.iv263 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !106
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %indvars.iv263 ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !108
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %indvars.iv263
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = trunc nuw nsw i64 %indvars.iv263 to i32
  store i32 %i.bk, ptr %i.bj, align 8, !tbaa !109
  %indvars.iv.next264 = or disjoint i64 %indvars.iv263, 1 ; 4 uses
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %indvars.iv.next264 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !106
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %indvars.iv.next264 ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -24
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !108
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %indvars.iv.next264
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = trunc nuw nsw i64 %indvars.iv.next264 to i32
  store i32 %i.bs, ptr %i.br, align 8, !tbaa !109
  %indvars.iv.next264.1 = add nuw nsw i64 %indvars.iv263, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph225.unr-lcssa, label %.lr.ph, !llvm.loop !110

._crit_edge226.thread:                            ; preds = %bb.e
  %.pre278292 = load ptr, ptr @loadtree.ac, align 8, !tbaa !98
  %i.bt = sext i32 %0 to i64
  %i.bu = getelementptr [24 x i8], ptr %.pre278292, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.bu, i64 -24
  store ptr null, ptr %i.bv, align 8, !tbaa !106
  %i.bw = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc293 = tail call i32 @fputc(i32 10, ptr %i.bw) ; 0 uses
  br label %._crit_edge253

.lr.ph225.unr-lcssa:                              ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph225, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph225.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi ptr [ %.pre278, %.lr.ph.preheader ], [ %i.ac, %.lr.ph225.unr-lcssa ]
  %indvars.iv263.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next264.1, %.lr.ph225.unr-lcssa ] ; 4 uses
  %lcmp.mod310 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod310)
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %.epil.init, i64 %indvars.iv263.epil.init ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store ptr %i.by, ptr %i.bx, align 8, !tbaa !106
  %i.bz = load ptr, ptr @loadtree.ac, align 8, !tbaa !98 ; 3 uses
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %indvars.iv263.epil.init ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -24
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !108
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %indvars.iv263.epil.init
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = trunc nuw nsw i64 %indvars.iv263.epil.init to i32
  store i32 %i.cf, ptr %i.ce, align 8, !tbaa !109
  br label %.lr.ph225

.lr.ph225:                                        ; preds = %.lr.ph225.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa308 = phi ptr [ %i.ac, %.lr.ph225.unr-lcssa ], [ %i.bz, %.lr.ph.epil.preheader ]
  %i.cg = add nsw i32 %0, -1                      ; 2 uses
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %.lcssa308, i64 %i.ch
  store ptr null, ptr %i.ci, align 8, !tbaa !106
  %i.cj = load ptr, ptr @loadtree.hist, align 8, !tbaa !89 ; 7 uses
  %i.ck = load ptr, ptr @loadtree.nmemar, align 8, !tbaa !89 ; 7 uses
  %wide.trip.count271 = zext nneg i32 %0 to i64
  %min.iters.check = icmp ult i32 %0, 8
  %i.cl = ptrtoaddr ptr %i.ck to i64
  %i.cm = ptrtoaddr ptr %i.cj to i64
  %i.cn = sub i64 %i.cm, %i.cl
  %diff.check = icmp ugt i64 %i.cn, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph225
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %index ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store <4 x i32> splat (i32 -1), ptr %i.co, align 4, !tbaa !4
  store <4 x i32> splat (i32 -1), ptr %i.cp, align 4, !tbaa !4
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %index ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store <4 x i32> splat (i32 1), ptr %i.cq, align 4, !tbaa !4
  store <4 x i32> splat (i32 1), ptr %i.cr, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !111

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge226, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph225, %middle.block
  %indvars.iv268.ph = phi i64 [ 0, %.lr.ph225 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter311 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod312.not = icmp eq i64 %xtraiter311, 0
  br i1 %lcmp.mod312.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

end_hunk_0
begin_hunk_1_@loadtree:bb.a
.lr.ph242.preheader:                              ; preds = %bb.y
  %.213 = select i1 %i.gr, ptr %i.go, ptr %i.gm
  br label %.lr.ph242

.preheader.loopexit:                              ; preds = %.lr.ph242
  %.pre279 = load i32, ptr %.214, align 4, !tbaa !4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.y
  %i.gu = phi i32 [ %i.gt, %bb.y ], [ %.pre279, %.preheader.loopexit ] ; 2 uses
  %.2179.lcssa = phi ptr [ %i.gc, %bb.y ], [ %i.gx, %.preheader.loopexit ] ; 2 uses
  %.not206244 = icmp eq i32 %i.gu, -1
  br i1 %.not206244, label %._crit_edge248, label %.lr.ph247

.lr.ph242:                                        ; preds = %.lr.ph242.preheader, %.lr.ph242
  %i.gv = phi i32 [ %i.gy, %.lr.ph242 ], [ %i.gs, %.lr.ph242.preheader ]
  %.2240 = phi ptr [ %i.gw, %.lr.ph242 ], [ %.213, %.lr.ph242.preheader ]
  %.2179239 = phi ptr [ %i.gx, %.lr.ph242 ], [ %i.gc, %.lr.ph242.preheader ] ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.2240, i64 4 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.2179239, i64 4 ; 2 uses
  store i32 %i.gv, ptr %.2179239, align 4, !tbaa !4
  %i.gy = load i32, ptr %i.gw, align 4, !tbaa !4  ; 2 uses
  %.not205 = icmp eq i32 %i.gy, -1
  br i1 %.not205, label %.preheader.loopexit, label %.lr.ph242, !llvm.loop !118

.lr.ph247:                                        ; preds = %.preheader, %.lr.ph247
  %i.gz = phi i32 [ %i.hc, %.lr.ph247 ], [ %i.gu, %.preheader ]
  %.3246 = phi ptr [ %i.ha, %.lr.ph247 ], [ %.214, %.preheader ]
  %.3180245 = phi ptr [ %i.hb, %.lr.ph247 ], [ %.2179.lcssa, %.preheader ] ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.3246, i64 4 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.3180245, i64 4 ; 2 uses
  store i32 %i.gz, ptr %.3180245, align 4, !tbaa !4
  %i.hc = load i32, ptr %i.ha, align 4, !tbaa !4  ; 2 uses
  %.not206 = icmp eq i32 %i.hc, -1
  br i1 %.not206, label %._crit_edge248, label %.lr.ph247, !llvm.loop !119

._crit_edge248:                                   ; preds = %.lr.ph247, %.preheader
  %.3180.lcssa = phi ptr [ %.2179.lcssa, %.preheader ], [ %i.hb, %.lr.ph247 ]
  store i32 -1, ptr %.3180.lcssa, align 4, !tbaa !4
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge248, %bb.x
  store i32 %i.dh, ptr %i.ej, align 4, !tbaa !4
  %i.hd = add nsw i32 %i.fu, %i.en
  store i32 %i.hd, ptr %i.em, align 4, !tbaa !4
  %i.he = getelementptr inbounds [4 x i8], ptr %.0, i64 %i.ei
  store float 9.999000e+02, ptr %i.he, align 4, !tbaa !21
  %i.hf = load ptr, ptr @loadtree.treetmp, align 8, !tbaa !12
  %i.hg = load ptr, ptr @loadtree.tree, align 8, !tbaa !77 ; 2 uses
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.hg, i64 %i.ei
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !12
  %i.hj = load ptr, ptr %i.dm, align 8, !tbaa !19
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.hg, i64 %i.fs
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !12
  %i.hm = load <2 x float>, ptr %i.hj, align 4, !tbaa !21
  %i.hn = fpext <2 x float> %i.hm to <2 x double> ; 2 uses
  %i.ho = extractelement <2 x double> %i.hn, i64 0
  %i.hp = extractelement <2 x double> %i.hn, i64 1
  %i.hq = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.hf, ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef %i.hi, double noundef %i.ho, ptr noundef %i.hl, double noundef %i.hp) #33 ; 0 uses
  %i.hr = load ptr, ptr @loadtree.tree, align 8, !tbaa !77
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.hr, i64 %i.ei
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !12
  %i.hu = load ptr, ptr @loadtree.treetmp, align 8, !tbaa !12
  %i.hv = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ht, ptr noundef nonnull dereferenceable(1) %i.hu) #33 ; 0 uses
  %i.hw = load ptr, ptr @loadtree.ac, align 8, !tbaa !98
  %i.hx = getelementptr inbounds [24 x i8], ptr %i.hw, i64 %i.fs ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !108 ; 2 uses
  %i.ia = load ptr, ptr %i.hx, align 8, !tbaa !106 ; 3 uses
  store ptr %i.ia, ptr %i.hz, align 8, !tbaa !106
  %.not208 = icmp eq ptr %i.ia, null
  br i1 %.not208, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  store ptr %i.hz, ptr %i.ib, align 8, !tbaa !108
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %exitcond277.not = icmp eq i64 %indvars.iv.next274, %wide.trip.count276
  br i1 %exitcond277.not, label %._crit_edge253, label %bb.h, !llvm.loop !120

._crit_edge253:                                   ; preds = %bb.ab, %._crit_edge226.thread, %._crit_edge226
  %i.ic = call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  %i.id = call noalias ptr @fopen(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) ; 3 uses
  %i.ie = load ptr, ptr @loadtree.treetmp, align 8, !tbaa !12
  %i.if = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.id, ptr noundef nonnull @.str.4, ptr noundef %i.ie) #33 ; 0 uses
  %i.ig = call i64 @fwrite(ptr nonnull @.str.19, i64 13, i64 1, ptr %i.id) ; 0 uses
  %i.ih = call i32 @fclose(ptr noundef %i.id)     ; 0 uses
  %i.ii = load ptr, ptr @loadtree.tree, align 8, !tbaa !77
  call void @FreeCharMtx(ptr noundef %i.ii) #33
  %i.ij = load ptr, ptr @loadtree.treetmp, align 8, !tbaa !12
  call void @free(ptr noundef %i.ij) #33
  %i.ik = load ptr, ptr @loadtree.nametmp, align 8, !tbaa !12
  call void @free(ptr noundef %i.ik) #33
  %i.il = load ptr, ptr @loadtree.hist, align 8, !tbaa !89
  call void @free(ptr noundef %i.il) #33
  store ptr null, ptr @loadtree.hist, align 8, !tbaa !89
  %i.im = load ptr, ptr @loadtree.ac, align 8, !tbaa !98
  call void @free(ptr noundef %i.im) #33
  store ptr null, ptr @loadtree.ac, align 8, !tbaa !98
  %i.in = load ptr, ptr @loadtree.nmemar, align 8, !tbaa !89
  call void @free(ptr noundef %i.in) #33
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
define dso_local void @loadtop(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #12 {
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
  %4 = load i32, ptr @njob, align 4, !tbaa !4
  %i.x = tail call ptr @AllocateIntVec(i32 noundef %4) #33
  store ptr %i.x, ptr @loadtop.nmemar, align 8, !tbaa !89
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = icmp sgt i32 %0, 0
  br i1 %i.y, label %.lr.ph.preheader, label %._crit_edge239.thread

.lr.ph.preheader:                                 ; preds = %bb.i
  %wide.trip.count = zext nneg i32 %0 to i64      ; 7 uses
  br label %.lr.ph

.lr.ph233.preheader:                              ; preds = %.lr.ph
  %.pre295316 = load ptr, ptr @loadtop.ac, align 8, !tbaa !98 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.z = icmp eq i32 %0, 1
  br i1 %i.z, label %.lr.ph233.epil.preheader, label %.lr.ph233.preheader.new

.lr.ph233.preheader.new:                          ; preds = %.lr.ph233.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %i.aa = load ptr, ptr @loadtop.ac, align 8, !tbaa !98 ; 8 uses
  br label %.lr.ph233

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.ab = load ptr, ptr @loadtop.tree, align 8, !tbaa !77
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ae = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.af = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ad, ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.ae) #33 ; 0 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph233.preheader, label %.lr.ph, !llvm.loop !121

.lr.ph233:                                        ; preds = %.lr.ph233, %.lr.ph233.preheader.new
  %i.ag = phi ptr [ %.pre295316, %.lr.ph233.preheader.new ], [ %i.aa, %.lr.ph233 ]
  %indvars.iv277 = phi i64 [ 0, %.lr.ph233.preheader.new ], [ %indvars.iv.next278.1, %.lr.ph233 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph233.preheader.new ], [ %niter.next.1, %.lr.ph233 ]
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %indvars.iv277 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !106
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %indvars.iv277 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -24
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !108
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %indvars.iv277
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = trunc nuw nsw i64 %indvars.iv277 to i32
  store i32 %i.ao, ptr %i.an, align 8, !tbaa !109
  %indvars.iv.next278 = or disjoint i64 %indvars.iv277, 1 ; 4 uses
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %indvars.iv.next278 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !106
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %indvars.iv.next278 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -24
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !108
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %indvars.iv.next278
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = trunc nuw nsw i64 %indvars.iv.next278 to i32
  store i32 %i.aw, ptr %i.av, align 8, !tbaa !109
  %indvars.iv.next278.1 = add nuw nsw i64 %indvars.iv277, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph238.unr-lcssa, label %.lr.ph233, !llvm.loop !122

._crit_edge239.thread:                            ; preds = %bb.i
  %.pre295 = load ptr, ptr @loadtop.ac, align 8, !tbaa !98
  %i.ax = sext i32 %0 to i64
  %i.ay = getelementptr [24 x i8], ptr %.pre295, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 -24
  store ptr null, ptr %i.az, align 8, !tbaa !106
  %i.ba = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc318 = tail call i32 @fputc(i32 10, ptr %i.ba) ; 0 uses
  br label %._crit_edge272

.lr.ph238.unr-lcssa:                              ; preds = %.lr.ph233
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph238, label %.lr.ph233.epil.preheader

.lr.ph233.epil.preheader:                         ; preds = %.lr.ph238.unr-lcssa, %.lr.ph233.preheader
  %.epil.init = phi ptr [ %.pre295316, %.lr.ph233.preheader ], [ %i.aa, %.lr.ph238.unr-lcssa ]
  %indvars.iv277.epil.init = phi i64 [ 0, %.lr.ph233.preheader ], [ %indvars.iv.next278.1, %.lr.ph238.unr-lcssa ] ; 4 uses
  %lcmp.mod336 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod336)
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %.epil.init, i64 %indvars.iv277.epil.init ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !106
  %i.bd = load ptr, ptr @loadtop.ac, align 8, !tbaa !98 ; 3 uses
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %indvars.iv277.epil.init ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -24
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !108
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %indvars.iv277.epil.init
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = trunc nuw nsw i64 %indvars.iv277.epil.init to i32
  store i32 %i.bj, ptr %i.bi, align 8, !tbaa !109
  br label %.lr.ph238

.lr.ph238:                                        ; preds = %.lr.ph238.unr-lcssa, %.lr.ph233.epil.preheader
  %.lcssa334 = phi ptr [ %i.aa, %.lr.ph238.unr-lcssa ], [ %i.bd, %.lr.ph233.epil.preheader ]
  %i.bk = add nsw i32 %0, -1                      ; 2 uses
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %.lcssa334, i64 %i.bl
  store ptr null, ptr %i.bm, align 8, !tbaa !106
  %i.bn = load ptr, ptr @loadtop.tmptmplen, align 8, !tbaa !19
  %i.bo = zext nneg i32 %0 to i64
  %i.bp = shl nuw nsw i64 %i.bo, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bn, i8 0, i64 %i.bp, i1 false), !tbaa !21
  %i.bq = load ptr, ptr @loadtop.hist, align 8, !tbaa !89 ; 7 uses
  %i.br = load ptr, ptr @loadtop.nmemar, align 8, !tbaa !89 ; 7 uses
  %wide.trip.count288 = zext nneg i32 %0 to i64
  %min.iters.check = icmp ult i32 %0, 8
  %i.bs = ptrtoaddr ptr %i.br to i64
  %i.bt = ptrtoaddr ptr %i.bq to i64
  %i.bu = sub i64 %i.bt, %i.bs
  %diff.check = icmp ugt i64 %i.bu, -32
  %or.cond330 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond330, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph238
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %index ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store <4 x i32> splat (i32 -1), ptr %i.bv, align 4, !tbaa !4
  store <4 x i32> splat (i32 -1), ptr %i.bw, align 4, !tbaa !4
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %index ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store <4 x i32> splat (i32 1), ptr %i.bx, align 4, !tbaa !4
  store <4 x i32> splat (i32 1), ptr %i.by, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge239, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph238, %middle.block
  %indvars.iv285.ph = phi i64 [ 0, %.lr.ph238 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter337 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod338.not = icmp eq i64 %xtraiter337, 0
  br i1 %lcmp.mod338.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv285.prol = phi i64 [ %indvars.iv.next286.prol, %scalar.ph.prol ], [ %indvars.iv285.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv285.prol
  store i32 -1, ptr %i.ca, align 4, !tbaa !4
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv285.prol
  store i32 1, ptr %i.cb, align 4, !tbaa !4
  %indvars.iv.next286.prol = add nuw nsw i64 %indvars.iv285.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter337
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !124

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv285.unr = phi i64 [ %indvars.iv285.ph, %scalar.ph.preheader ], [ %indvars.iv.next286.prol, %scalar.ph.prol ]
  %i.cc = sub nsw i64 %indvars.iv285.ph, %wide.trip.count
  %i.cd = icmp ugt i64 %i.cc, -4
  br i1 %i.cd, label %._crit_edge239, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv285 = phi i64 [ %indvars.iv.next286.3, %scalar.ph ], [ %indvars.iv285.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv285
  store i32 -1, ptr %i.ce, align 4, !tbaa !4
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv285
  store i32 1, ptr %i.cf, align 4, !tbaa !4
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1 ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.next286
  store i32 -1, ptr %i.cg, align 4, !tbaa !4
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.next286
  store i32 1, ptr %i.ch, align 4, !tbaa !4
  %indvars.iv.next286.1 = add nuw nsw i64 %indvars.iv285, 2 ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.next286.1
  store i32 -1, ptr %i.ci, align 4, !tbaa !4
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.next286.1
  store i32 1, ptr %i.cj, align 4, !tbaa !4
  %indvars.iv.next286.2 = add nuw nsw i64 %indvars.iv285, 3 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.next286.2
  store i32 -1, ptr %i.ck, align 4, !tbaa !4
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.next286.2
  store i32 1, ptr %i.cl, align 4, !tbaa !4
  %indvars.iv.next286.3 = add nuw nsw i64 %indvars.iv285, 4 ; 2 uses
  %exitcond289.not.3 = icmp eq i64 %indvars.iv.next286.3, %wide.trip.count288
  br i1 %exitcond289.not.3, label %._crit_edge239, label %scalar.ph, !llvm.loop !125

._crit_edge239:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.cm = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %i.cm) ; 0 uses
  %.not323 = icmp eq i32 %0, 1
  br i1 %.not323, label %._crit_edge272, label %.lr.ph271

.lr.ph271:                                        ; preds = %._crit_edge239
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %wide.trip.count293 = zext nneg i32 %i.bk to i64
end_hunk_1
begin_hunk_2_@loadtop:bb.a
  store float 0.000000e+00, ptr %i.gu, align 4, !tbaa !21
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  store float %i.gk, ptr %i.gm, align 4, !tbaa !21
  store i32 %i.cp, ptr %i.dq, align 4, !tbaa !4
  %i.gx = add nsw i32 %i.fd, %i.du
  store i32 %i.gx, ptr %i.dt, align 4, !tbaa !4
  %.0181263 = load ptr, ptr @loadtop.ac, align 8, !tbaa !98 ; 2 uses
  %.not217264 = icmp eq ptr %.0181263, null
  br i1 %.not217264, label %._crit_edge268, label %.lr.ph267

.lr.ph267:                                        ; preds = %bb.aa, %bb.ae
  %.0181265 = phi ptr [ %.0181, %bb.ae ], [ %.0181263, %bb.aa ] ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.0181265, i64 16
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !109 ; 9 uses
  %.not219 = icmp eq i32 %i.gz, %i.cx
  %.not220 = icmp eq i32 %i.gz, %i.cz
  %or.cond225 = or i1 %.not219, %.not220
  br i1 %or.cond225, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph267
  %i.ha = icmp slt i32 %i.gz, %i.cx
  br i1 %i.ha, label %._crit_edge298, label %bb.ac

._crit_edge298:                                   ; preds = %bb.ab
  %.pre299 = sext i32 %i.gz to i64                ; 2 uses
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %.226 = call i32 @llvm.smin.i32(i32 %i.gz, i32 %i.cz) ; 2 uses
  %.227 = call i32 @llvm.smax.i32(i32 %i.gz, i32 %i.cz)
  %.pre300 = sext i32 %.226 to i64
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge298, %bb.ac
  %.pre-phi301 = phi i64 [ %.pre299, %._crit_edge298 ], [ %.pre300, %bb.ac ]
  %.pre-phi = phi i64 [ %.pre299, %._crit_edge298 ], [ %i.dc, %bb.ac ]
  %.0191 = phi i32 [ %i.gz, %._crit_edge298 ], [ %i.cx, %bb.ac ]
  %.0190 = phi i32 [ %i.cx, %._crit_edge298 ], [ %i.gz, %bb.ac ]
  %.0189 = phi i32 [ %i.gz, %._crit_edge298 ], [ %.226, %bb.ac ]
  %.0188 = phi i32 [ %i.cz, %._crit_edge298 ], [ %.227, %bb.ac ]
  %i.hb = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !19
  %i.hd = sub nsw i32 %.0190, %.0191
  %i.he = sext i32 %i.hd to i64                   ; 2 uses
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %i.he
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !21
  %i.hh = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi301
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !19
  %i.hj = sub nsw i32 %.0188, %.0189
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.hi, i64 %i.hk
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !21
  %i.hn = call float %.sroa.0.0(float noundef %i.hg, float noundef %i.hm) #33, !callees !130
  %i.ho = load ptr, ptr %i.hb, align 8, !tbaa !19
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.he
  store float %i.hn, ptr %i.hp, align 4, !tbaa !21
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph267, %bb.ad
  %.0181 = load ptr, ptr %.0181265, align 8, !tbaa !98 ; 2 uses
  %.not217 = icmp eq ptr %.0181, null
  br i1 %.not217, label %._crit_edge268.loopexit, label %.lr.ph267, !llvm.loop !131

._crit_edge268.loopexit:                          ; preds = %bb.ae
  %.pre297 = load ptr, ptr %i.gp, align 8, !tbaa !19
  br label %._crit_edge268

._crit_edge268:                                   ; preds = %._crit_edge268.loopexit, %bb.aa
  %i.hq = phi ptr [ %.pre297, %._crit_edge268.loopexit ], [ %i.gq, %bb.aa ]
  %i.hr = load ptr, ptr @loadtop.treetmp, align 8, !tbaa !12
  %i.hs = load ptr, ptr @loadtop.tree, align 8, !tbaa !77 ; 2 uses
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %i.dc
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !12
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %i.ez
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !12
  %i.hx = load <2 x float>, ptr %i.hq, align 4, !tbaa !21
  %i.hy = fpext <2 x float> %i.hx to <2 x double> ; 2 uses
  %i.hz = extractelement <2 x double> %i.hy, i64 0
  %i.ia = extractelement <2 x double> %i.hy, i64 1
  %i.ib = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.hr, ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef %i.hu, double noundef %i.hz, ptr noundef %i.hw, double noundef %i.ia) #33 ; 0 uses
  %i.ic = load ptr, ptr @loadtop.tree, align 8, !tbaa !77
  %i.id = getelementptr inbounds [8 x i8], ptr %i.ic, i64 %i.dc
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !12
  %i.if = load ptr, ptr @loadtop.treetmp, align 8, !tbaa !12
  %i.ig = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ie, ptr noundef nonnull dereferenceable(1) %i.if) #33 ; 0 uses
  %i.ih = load ptr, ptr @loadtop.ac, align 8, !tbaa !98
  %i.ii = getelementptr inbounds [24 x i8], ptr %i.ih, i64 %i.ez ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !108 ; 2 uses
  %i.il = load ptr, ptr %i.ii, align 8, !tbaa !106 ; 3 uses
  store ptr %i.il, ptr %i.ik, align 8, !tbaa !106
  %.not218 = icmp eq ptr %i.il, null
  br i1 %.not218, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %._crit_edge268
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store ptr %i.ik, ptr %i.im, align 8, !tbaa !108
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %._crit_edge268
  %i.in = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ez ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !19
  call void @free(ptr noundef %i.io) #33
  store ptr null, ptr %i.in, align 8, !tbaa !19
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 2 uses
  %exitcond294.not = icmp eq i64 %indvars.iv.next291, %wide.trip.count293
  br i1 %exitcond294.not, label %._crit_edge272, label %bb.j, !llvm.loop !132

._crit_edge272:                                   ; preds = %bb.ag, %._crit_edge239.thread, %._crit_edge239
  %i.ip = call i32 @fclose(ptr noundef nonnull %i.f) ; 0 uses
  %i.iq = call noalias ptr @fopen(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) ; 3 uses
  %i.ir = load ptr, ptr @loadtop.treetmp, align 8, !tbaa !12
  %i.is = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iq, ptr noundef nonnull @.str.4, ptr noundef %i.ir) #33 ; 0 uses
  %i.it = call i64 @fwrite(ptr nonnull @.str.23, i64 11, i64 1, ptr %i.iq) ; 0 uses
  %i.iu = call i32 @fclose(ptr noundef %i.iq)     ; 0 uses
  %i.iv = load ptr, ptr @loadtop.tmptmplen, align 8, !tbaa !19
  call void @free(ptr noundef %i.iv) #33
  store ptr null, ptr @loadtop.tmptmplen, align 8, !tbaa !19
  %i.iw = load ptr, ptr @loadtop.hist, align 8, !tbaa !89
  call void @free(ptr noundef %i.iw) #33
  store ptr null, ptr @loadtop.hist, align 8, !tbaa !89
  %i.ix = load ptr, ptr @loadtop.ac, align 8, !tbaa !98
  call void @free(ptr noundef %i.ix) #33
  store ptr null, ptr @loadtop.ac, align 8, !tbaa !98
  %i.iy = load ptr, ptr @loadtop.nmemar, align 8, !tbaa !89
  call void @free(ptr noundef %i.iy) #33
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
define dso_local void @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #12 {
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
  %6 = load i32, ptr @njob, align 4, !tbaa !4
  %i.m = tail call ptr @AllocateIntVec(i32 noundef %6) #33
  store ptr %i.m, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.nmemar, align 8, !tbaa !89
  %i.n = load i32, ptr @njob, align 4, !tbaa !4
  %i.o = tail call ptr @AllocateFloatVec(i32 noundef %i.n) #33
  %i.p = load i32, ptr @njob, align 4, !tbaa !4
  %i.q = tail call ptr @AllocateIntVec(i32 noundef %i.p) #33
  %i.r = load i32, ptr @njob, align 4, !tbaa !4
  %i.s = mul nsw i32 %i.r, 50
  %i.t = tail call ptr @AllocateCharVec(i32 noundef %i.s) #33
  store ptr %i.t, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.treetmp, align 8, !tbaa !12
  %i.u = tail call ptr @AllocateCharVec(i32 noundef 30) #33
  store ptr %i.u, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.nametmp, align 8, !tbaa !12
  %i.v = load i32, ptr @njob, align 4, !tbaa !4   ; 2 uses
  %i.w = mul nsw i32 %i.v, 50
  %i.x = tail call ptr @AllocateCharMtx(i32 noundef %i.v, i32 noundef %i.w) #33
  store ptr %i.x, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.tree, align 8, !tbaa !77
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0243 = phi ptr [ null, %bb.e ], [ %i.q, %bb.f ] ; 7 uses
  %.0 = phi ptr [ null, %bb.e ], [ %i.o, %bb.f ]  ; 6 uses
  %i.y = icmp sgt i32 %0, 0
  br i1 %i.y, label %.preheader325.lr.ph, label %.preheader322.thread

.preheader325.lr.ph:                              ; preds = %bb.g
  %i.z = tail call ptr @__ctype_b_loc() #35       ; 2 uses
  %wide.trip.count = zext nneg i32 %0 to i64      ; 7 uses
  br label %.preheader325

.preheader325:                                    ; preds = %.preheader325.lr.ph, %bb.i
  %indvars.iv397 = phi i64 [ 0, %.preheader325.lr.ph ], [ %indvars.iv.next398, %bb.i ] ; 3 uses
  %i.aa = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.nametmp, align 8, !tbaa !12 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.aa, i8 0, i64 30, i1 false), !tbaa !8
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv397 ; 2 uses
  br label %bb.h

.lr.ph.preheader:                                 ; preds = %bb.i
  %.pre424 = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac, align 8, !tbaa !98 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ac = icmp eq i32 %0, 1
  br i1 %i.ac, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %i.ad = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac, align 8, !tbaa !98 ; 8 uses
  br label %.lr.ph

bb.h:                                             ; preds = %bb.h, %.preheader325
  %indvars.iv = phi i64 [ 0, %.preheader325 ], [ %indvars.iv.next.1, %bb.h ] ; 4 uses
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !100
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8   ; 2 uses
  %i.ai = sext i8 %i.ah to i64
  %i.aj = getelementptr inbounds [2 x i8], ptr %i.ae, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !102
  %i.al = and i16 %i.ak, 8
  %.not301 = icmp eq i16 %i.al, 0
  %spec.select470 = select i1 %.not301, i8 95, i8 %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv
  store i8 %spec.select470, ptr %i.am, align 1, !tbaa !8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.an = load ptr, ptr %i.z, align 8, !tbaa !100
  %i.ao = load ptr, ptr %i.ab, align 8, !tbaa !12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv.next
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !8   ; 2 uses
  %i.ar = sext i8 %i.aq to i64
  %i.as = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !102
  %i.au = and i16 %i.at, 8
  %.not301.1 = icmp eq i16 %i.au, 0
  %spec.select470.1 = select i1 %.not301.1, i8 95, i8 %i.aq
  %i.av = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv.next
  store i8 %spec.select470.1, ptr %i.av, align 1, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 30
  br i1 %exitcond.not.1, label %bb.i, label %bb.h, !llvm.loop !133

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aa, i64 30
  store i8 0, ptr %i.aw, align 1, !tbaa !8
  %i.ax = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.tree, align 8, !tbaa !77
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv397
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !12
  %indvars.iv.next398 = add nuw nsw i64 %indvars.iv397, 1 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.bb = trunc nuw nsw i64 %indvars.iv.next398 to i32
  %i.bc = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.az, ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.bb, ptr noundef nonnull %i.ba) #33 ; 0 uses
  %exitcond400.not = icmp eq i64 %indvars.iv.next398, %wide.trip.count
  br i1 %exitcond400.not, label %.lr.ph.preheader, label %.preheader325, !llvm.loop !134

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.bd = phi ptr [ %.pre424, %.lr.ph.preheader.new ], [ %i.ad, %.lr.ph ]
  %indvars.iv401 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next402.1, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %indvars.iv401 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !106
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %indvars.iv401 ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !108
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %indvars.iv401
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = trunc nuw nsw i64 %indvars.iv401 to i32
  store i32 %i.bl, ptr %i.bk, align 8, !tbaa !109
  %indvars.iv.next402 = or disjoint i64 %indvars.iv401, 1 ; 4 uses
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %indvars.iv.next402 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !106
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %indvars.iv.next402 ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -24
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !108
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %indvars.iv.next402
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = trunc nuw nsw i64 %indvars.iv.next402 to i32
  store i32 %i.bt, ptr %i.bs, align 8, !tbaa !109
  %indvars.iv.next402.1 = add nuw nsw i64 %indvars.iv401, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph334.unr-lcssa, label %.lr.ph, !llvm.loop !135

.preheader322.thread:                             ; preds = %bb.g
  %.pre424461 = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac, align 8, !tbaa !98
  %i.bu = sext i32 %0 to i64
  %i.bv = getelementptr [24 x i8], ptr %.pre424461, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 -24
  store ptr null, ptr %i.bw, align 8, !tbaa !106
  %i.bx = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc463 = tail call i32 @fputc(i32 10, ptr %i.bx) ; 0 uses
  br label %._crit_edge389

.lr.ph334.unr-lcssa:                              ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph334, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph334.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi ptr [ %.pre424, %.lr.ph.preheader ], [ %i.ad, %.lr.ph334.unr-lcssa ]
  %indvars.iv401.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next402.1, %.lr.ph334.unr-lcssa ] ; 4 uses
  %lcmp.mod488 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod488)
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %.epil.init, i64 %indvars.iv401.epil.init ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !106
  %i.ca = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac, align 8, !tbaa !98 ; 3 uses
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %indvars.iv401.epil.init ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -24
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !108
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %indvars.iv401.epil.init
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = trunc nuw nsw i64 %indvars.iv401.epil.init to i32
  store i32 %i.cg, ptr %i.cf, align 8, !tbaa !109
  br label %.lr.ph334

.lr.ph334:                                        ; preds = %.lr.ph334.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa486 = phi ptr [ %i.ad, %.lr.ph334.unr-lcssa ], [ %i.ca, %.lr.ph.epil.preheader ]
  %i.ch = add nsw i32 %0, -1                      ; 2 uses
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %.lcssa486, i64 %i.ci
  store ptr null, ptr %i.cj, align 8, !tbaa !106
  %i.ck = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac, align 8, !tbaa !98 ; 3 uses
  %.not3540.i = icmp eq ptr %i.ck, null
  %wide.trip.count409 = zext nneg i32 %0 to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph334, %setnearest.exit
  %indvars.iv406 = phi i64 [ 0, %.lr.ph334 ], [ %indvars.iv.next407, %setnearest.exit ] ; 8 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %indvars.iv406 ; 3 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.0243, i64 %indvars.iv406 ; 3 uses
  store float 9.999000e+02, ptr %i.cl, align 4, !tbaa !21
  store i32 -1, ptr %i.cm, align 4, !tbaa !4
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %indvars.iv406
  %.037.i = load ptr, ptr %i.cn, align 8, !tbaa !106 ; 2 uses
  %.not38.i = icmp eq ptr %.037.i, null
  br i1 %.not38.i, label %.lr.ph42.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv406
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !19
  %i.cq = trunc nuw nsw i64 %indvars.iv406 to i32
  br label %bb.k

.preheader.i:                                     ; preds = %bb.m
  br i1 %.not3540.i, label %setnearest.exit, label %.lr.ph42.preheader.i

.lr.ph42.preheader.i:                             ; preds = %.preheader.i, %bb.j
  %i.cr = phi float [ %i.db, %.preheader.i ], [ 9.999000e+02, %bb.j ]
  %i.cs = trunc nuw nsw i64 %indvars.iv406 to i32
  br label %.lr.ph42.i

bb.k:                                             ; preds = %bb.m, %.lr.ph.i
  %i.ct = phi float [ 9.999000e+02, %.lr.ph.i ], [ %i.db, %bb.m ] ; 2 uses
  %.039.i = phi ptr [ %.037.i, %.lr.ph.i ], [ %.0.i, %bb.m ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.039.i, i64 16
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !109 ; 2 uses
  %i.cw = sub nsw i32 %i.cv, %i.cq
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.cx
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !21 ; 3 uses
end_hunk_2
begin_hunk_3_@fixed_musclesupg_float_realloc_nobk_halfmtx_treeout:bb.a
  %.pre427 = load ptr, ptr %i.ih, align 8, !tbaa !19
  br label %._crit_edge378

._crit_edge378:                                   ; preds = %._crit_edge378.loopexit, %bb.z
  %i.jr = phi ptr [ %.pre427, %._crit_edge378.loopexit ], [ %i.ii, %bb.z ]
  %i.js = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.treetmp, align 8, !tbaa !12
  %i.jt = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.tree, align 8, !tbaa !77 ; 2 uses
  %i.ju = getelementptr inbounds [8 x i8], ptr %i.jt, i64 %i.fi
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !12
  %i.jw = getelementptr inbounds [8 x i8], ptr %i.jt, i64 %i.gs
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !12
  %i.jy = load <2 x float>, ptr %i.jr, align 4, !tbaa !21
  %i.jz = fpext <2 x float> %i.jy to <2 x double> ; 2 uses
  %i.ka = extractelement <2 x double> %i.jz, i64 0
  %i.kb = extractelement <2 x double> %i.jz, i64 1
  %i.kc = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.js, ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef %i.jv, double noundef %i.ka, ptr noundef %i.jx, double noundef %i.kb) #33 ; 0 uses
  %i.kd = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.tree, align 8, !tbaa !77
  %i.ke = getelementptr inbounds [8 x i8], ptr %i.kd, i64 %i.fi
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !12
  %i.kg = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.treetmp, align 8, !tbaa !12
  %i.kh = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.kf, ptr noundef nonnull dereferenceable(1) %i.kg) #33 ; 0 uses
  %i.ki = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac, align 8, !tbaa !98
  %i.kj = getelementptr inbounds [24 x i8], ptr %i.ki, i64 %i.gs ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !108 ; 2 uses
  %i.km = load ptr, ptr %i.kj, align 8, !tbaa !106 ; 3 uses
  store ptr %i.km, ptr %i.kl, align 8, !tbaa !106
  %.not297 = icmp eq ptr %i.km, null
  br i1 %.not297, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge378
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  store ptr %i.kl, ptr %i.kn, align 8, !tbaa !108
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %._crit_edge378
  %i.ko = getelementptr inbounds [8 x i8], ptr %1, i64 %i.gs ; 2 uses
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !19
  tail call void @free(ptr noundef %i.kp) #33
  store ptr null, ptr %i.ko, align 8, !tbaa !19
  %.2379 = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac, align 8, !tbaa !98 ; 4 uses
  %.not298380 = icmp eq ptr %.2379, null
  br i1 %.not298380, label %._crit_edge384, label %.lr.ph383

.lr.ph383:                                        ; preds = %bb.al, %setnearest.exit319
  %.2381 = phi ptr [ %.2, %setnearest.exit319 ], [ %.2379, %bb.al ] ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.2381, i64 16
  %i.kr = load i32, ptr %i.kq, align 8, !tbaa !109 ; 4 uses
  %i.ks = sext i32 %i.kr to i64                   ; 4 uses
  %i.kt = getelementptr inbounds [4 x i8], ptr %.0243, i64 %i.ks ; 4 uses
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !4
  %i.kv = icmp eq i32 %i.ku, %spec.select
  br i1 %i.kv, label %bb.am, label %setnearest.exit319

bb.am:                                            ; preds = %.lr.ph383
  %i.kw = getelementptr inbounds [4 x i8], ptr %.0, i64 %i.ks ; 3 uses
  store float 9.999000e+02, ptr %i.kw, align 4, !tbaa !21
  store i32 -1, ptr %i.kt, align 4, !tbaa !4
  %i.kx = getelementptr inbounds [24 x i8], ptr %.2379, i64 %i.ks
  %.037.i306 = load ptr, ptr %i.kx, align 8, !tbaa !106 ; 2 uses
  %.not38.i307 = icmp eq ptr %.037.i306, null
  br i1 %.not38.i307, label %.lr.ph42.i315.preheader, label %.lr.ph.i308

.lr.ph.i308:                                      ; preds = %bb.am
  %i.ky = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ks
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !19
  br label %bb.an

bb.an:                                            ; preds = %bb.ap, %.lr.ph.i308
  %i.la = phi float [ 9.999000e+02, %.lr.ph.i308 ], [ %i.li, %bb.ap ] ; 2 uses
  %.039.i309 = phi ptr [ %.037.i306, %.lr.ph.i308 ], [ %.0.i310, %bb.ap ] ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.039.i309, i64 16
  %i.lc = load i32, ptr %i.lb, align 8, !tbaa !109 ; 2 uses
  %i.ld = sub nsw i32 %i.lc, %i.kr
  %i.le = sext i32 %i.ld to i64
  %i.lf = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %i.le
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !21 ; 3 uses
  %i.lh = fcmp olt float %i.lg, %i.la
  br i1 %i.lh, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store float %i.lg, ptr %i.kw, align 4, !tbaa !21
  store i32 %i.lc, ptr %i.kt, align 4, !tbaa !4
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.li = phi float [ %i.la, %bb.an ], [ %i.lg, %bb.ao ] ; 2 uses
  %.0.i310 = load ptr, ptr %.039.i309, align 8, !tbaa !106 ; 2 uses
  %.not.i311 = icmp eq ptr %.0.i310, null
  br i1 %.not.i311, label %.lr.ph42.i315.preheader, label %bb.an, !llvm.loop !136

.lr.ph42.i315.preheader:                          ; preds = %bb.ap, %bb.am
  %.ph = phi float [ 9.999000e+02, %bb.am ], [ %i.li, %bb.ap ]
  br label %.lr.ph42.i315

.lr.ph42.i315:                                    ; preds = %.lr.ph42.i315.preheader, %bb.as
  %i.lj = phi float [ %i.lu, %bb.as ], [ %.ph, %.lr.ph42.i315.preheader ] ; 2 uses
  %.141.i316 = phi ptr [ %i.lv, %bb.as ], [ %.2379, %.lr.ph42.i315.preheader ] ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.141.i316, i64 16
  %i.ll = load i32, ptr %i.lk, align 8, !tbaa !109 ; 4 uses
  %.not36.i317 = icmp eq i32 %i.ll, %i.kr
  br i1 %.not36.i317, label %setnearest.exit319, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph42.i315
  %i.lm = sext i32 %i.ll to i64
  %i.ln = getelementptr inbounds [8 x i8], ptr %1, i64 %i.lm
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !19
  %i.lp = sub nsw i32 %i.kr, %i.ll
  %i.lq = sext i32 %i.lp to i64
  %i.lr = getelementptr inbounds [4 x i8], ptr %i.lo, i64 %i.lq
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !21 ; 3 uses
  %i.lt = fcmp olt float %i.ls, %i.lj
  br i1 %i.lt, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store float %i.ls, ptr %i.kw, align 4, !tbaa !21
  store i32 %i.ll, ptr %i.kt, align 4, !tbaa !4
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.lu = phi float [ %i.lj, %bb.aq ], [ %i.ls, %bb.ar ]
  %i.lv = load ptr, ptr %.141.i316, align 8, !tbaa !106 ; 2 uses
  %.not35.i318 = icmp eq ptr %i.lv, null
  br i1 %.not35.i318, label %setnearest.exit319, label %.lr.ph42.i315, !llvm.loop !137

setnearest.exit319:                               ; preds = %bb.as, %.lr.ph42.i315, %.lr.ph383
  %.2 = load ptr, ptr %.2381, align 8, !tbaa !98  ; 2 uses
  %.not298 = icmp eq ptr %.2, null
  br i1 %.not298, label %._crit_edge384, label %.lr.ph383, !llvm.loop !148

._crit_edge384:                                   ; preds = %setnearest.exit319, %bb.al
  %indvars.iv.next420 = add nuw nsw i64 %indvars.iv419, 1 ; 2 uses
  %exitcond423.not = icmp eq i64 %indvars.iv.next420, %wide.trip.count422
  br i1 %exitcond423.not, label %._crit_edge389, label %.lr.ph388, !llvm.loop !149

._crit_edge389:                                   ; preds = %._crit_edge384, %.preheader322.thread, %._crit_edge339
  %i.lw = tail call noalias ptr @fopen(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) ; 2 uses
  %i.lx = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.treetmp, align 8, !tbaa !12
  %i.ly = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lw, ptr noundef nonnull @.str.4, ptr noundef %i.lx) #33 ; 0 uses
  %i.lz = tail call i32 @fclose(ptr noundef %i.lw) ; 0 uses
  %i.ma = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.tree, align 8, !tbaa !77
  tail call void @FreeCharMtx(ptr noundef %i.ma) #33
  %i.mb = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.treetmp, align 8, !tbaa !12
  tail call void @free(ptr noundef %i.mb) #33
  %i.mc = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.nametmp, align 8, !tbaa !12
  tail call void @free(ptr noundef %i.mc) #33
  %i.md = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.tmptmplen, align 8, !tbaa !19
  tail call void @free(ptr noundef %i.md) #33
  store ptr null, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.tmptmplen, align 8, !tbaa !19
  %i.me = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.hist, align 8, !tbaa !89
  tail call void @free(ptr noundef %i.me) #33
  store ptr null, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.hist, align 8, !tbaa !89
  %i.mf = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac, align 8, !tbaa !98
  tail call void @free(ptr noundef %i.mf) #33
  store ptr null, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac, align 8, !tbaa !98
  %i.mg = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.nmemar, align 8, !tbaa !89
  tail call void @free(ptr noundef %i.mg) #33
  store ptr null, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.nmemar, align 8, !tbaa !89
  tail call void @free(ptr noundef %.0) #33
  tail call void @free(ptr noundef %.0243) #33
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @fixed_musclesupg_float_realloc_nobk_halfmtx(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #12 {
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
  %4 = load i32, ptr @njob, align 4, !tbaa !4
  %i.m = tail call ptr @AllocateIntVec(i32 noundef %4) #33
  store ptr %i.m, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.nmemar, align 8, !tbaa !89
  %i.n = load i32, ptr @njob, align 4, !tbaa !4
  %i.o = tail call ptr @AllocateFloatVec(i32 noundef %i.n) #33
  %i.p = load i32, ptr @njob, align 4, !tbaa !4
  %i.q = tail call ptr @AllocateIntVec(i32 noundef %i.p) #33
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0216 = phi ptr [ null, %bb.e ], [ %i.q, %bb.f ] ; 7 uses
  %.0 = phi ptr [ null, %bb.e ], [ %i.o, %bb.f ]  ; 6 uses
  %i.r = icmp sgt i32 %0, 0
  %.pre378 = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.ac, align 8, !tbaa !98 ; 3 uses
  br i1 %i.r, label %.lr.ph.preheader, label %.preheader292.thread

.lr.ph.preheader:                                 ; preds = %bb.g
  %wide.trip.count = zext nneg i32 %0 to i64      ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.s = icmp eq i32 %0, 1
  br i1 %i.s, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %i.t = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.ac, align 8, !tbaa !98 ; 8 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.u = phi ptr [ %.pre378, %.lr.ph.preheader.new ], [ %i.t, %.lr.ph ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.w, ptr %i.v, align 8, !tbaa !106
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %indvars.iv ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -24
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !108
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %indvars.iv
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ac, ptr %i.ab, align 8, !tbaa !109
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 4 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %indvars.iv.next ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !106
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %indvars.iv.next ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !108
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %indvars.iv.next
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.ak, ptr %i.aj, align 8, !tbaa !109
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph298.unr-lcssa, label %.lr.ph, !llvm.loop !150

.preheader292.thread:                             ; preds = %bb.g
  %i.al = sext i32 %0 to i64
  %i.am = getelementptr [24 x i8], ptr %.pre378, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 -24
  store ptr null, ptr %i.an, align 8, !tbaa !106
  %i.ao = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc415 = tail call i32 @fputc(i32 10, ptr %i.ao) ; 0 uses
  br label %._crit_edge353

.lr.ph298.unr-lcssa:                              ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph298, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph298.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi ptr [ %.pre378, %.lr.ph.preheader ], [ %i.t, %.lr.ph298.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.lr.ph298.unr-lcssa ] ; 4 uses
  %lcmp.mod439 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod439)
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %.epil.init, i64 %indvars.iv.epil.init ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !106
  %i.ar = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.ac, align 8, !tbaa !98 ; 3 uses
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %indvars.iv.epil.init ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -24
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.at, ptr %i.au, align 8, !tbaa !108
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %indvars.iv.epil.init
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  store i32 %i.ax, ptr %i.aw, align 8, !tbaa !109
  br label %.lr.ph298

.lr.ph298:                                        ; preds = %.lr.ph298.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa437 = phi ptr [ %i.t, %.lr.ph298.unr-lcssa ], [ %i.ar, %.lr.ph.epil.preheader ]
  %i.ay = add nsw i32 %0, -1                      ; 2 uses
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %.lcssa437, i64 %i.az
  store ptr null, ptr %i.ba, align 8, !tbaa !106
  %i.bb = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.ac, align 8, !tbaa !98 ; 3 uses
  %.not3540.i = icmp eq ptr %i.bb, null
  %wide.trip.count363 = zext nneg i32 %0 to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph298, %setnearest.exit
  %indvars.iv360 = phi i64 [ 0, %.lr.ph298 ], [ %indvars.iv.next361, %setnearest.exit ] ; 8 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %indvars.iv360 ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.0216, i64 %indvars.iv360 ; 3 uses
  store float 9.999000e+02, ptr %i.bc, align 4, !tbaa !21
  store i32 -1, ptr %i.bd, align 4, !tbaa !4
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %indvars.iv360
  %.037.i = load ptr, ptr %i.be, align 8, !tbaa !106 ; 2 uses
  %.not38.i = icmp eq ptr %.037.i, null
  br i1 %.not38.i, label %.lr.ph42.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv360
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !19
  %i.bh = trunc nuw nsw i64 %indvars.iv360 to i32
  br label %bb.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not3540.i, label %setnearest.exit, label %.lr.ph42.preheader.i

.lr.ph42.preheader.i:                             ; preds = %.preheader.i, %bb.h
  %i.bi = phi float [ %i.bs, %.preheader.i ], [ 9.999000e+02, %bb.h ]
  %i.bj = trunc nuw nsw i64 %indvars.iv360 to i32
  br label %.lr.ph42.i

bb.i:                                             ; preds = %bb.k, %.lr.ph.i
  %i.bk = phi float [ 9.999000e+02, %.lr.ph.i ], [ %i.bs, %bb.k ] ; 2 uses
  %.039.i = phi ptr [ %.037.i, %.lr.ph.i ], [ %.0.i, %bb.k ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.039.i, i64 16
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !109 ; 2 uses
  %i.bn = sub nsw i32 %i.bm, %i.bh
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bo
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !21 ; 3 uses
  %i.br = fcmp olt float %i.bq, %i.bk
  br i1 %i.br, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store float %i.bq, ptr %i.bc, align 4, !tbaa !21
  store i32 %i.bm, ptr %i.bd, align 4, !tbaa !4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bs = phi float [ %i.bk, %bb.i ], [ %i.bq, %bb.j ] ; 2 uses
  %.0.i = load ptr, ptr %.039.i, align 8, !tbaa !106 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %.preheader.i, label %bb.i, !llvm.loop !136

.lr.ph42.i:                                       ; preds = %bb.n, %.lr.ph42.preheader.i
  %i.bt = phi float [ %i.cf, %bb.n ], [ %i.bi, %.lr.ph42.preheader.i ] ; 2 uses
  %.141.i = phi ptr [ %i.cg, %bb.n ], [ %i.bb, %.lr.ph42.preheader.i ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.141.i, i64 16
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !109 ; 4 uses
  %i.bw = zext i32 %i.bv to i64
  %.not36.i = icmp eq i64 %indvars.iv360, %i.bw
  br i1 %.not36.i, label %setnearest.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph42.i
  %i.bx = sext i32 %i.bv to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !19
  %i.ca = sub nsw i32 %i.bj, %i.bv
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.cb
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !21 ; 3 uses
  %i.ce = fcmp olt float %i.cd, %i.bt
  br i1 %i.ce, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store float %i.cd, ptr %i.bc, align 4, !tbaa !21
  store i32 %i.bv, ptr %i.bd, align 4, !tbaa !4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cf = phi float [ %i.bt, %bb.l ], [ %i.cd, %bb.m ]
  %i.cg = load ptr, ptr %.141.i, align 8, !tbaa !106 ; 2 uses
  %.not35.i = icmp eq ptr %i.cg, null
  br i1 %.not35.i, label %setnearest.exit, label %.lr.ph42.i, !llvm.loop !137

setnearest.exit:                                  ; preds = %.lr.ph42.i, %bb.n, %.preheader.i
  %indvars.iv.next361 = add nuw nsw i64 %indvars.iv360, 1 ; 2 uses
  %exitcond364.not = icmp eq i64 %indvars.iv.next361, %wide.trip.count363
  br i1 %exitcond364.not, label %.lr.ph302, label %bb.h, !llvm.loop !151

.lr.ph302:                                        ; preds = %setnearest.exit
  %i.ch = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.tmptmplen, align 8, !tbaa !19
  %i.ci = zext nneg i32 %0 to i64
  %i.cj = shl nuw nsw i64 %i.ci, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ch, i8 0, i64 %i.cj, i1 false), !tbaa !21
  %i.ck = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.hist, align 8, !tbaa !89 ; 7 uses
  %i.cl = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.nmemar, align 8, !tbaa !89 ; 7 uses
  %wide.trip.count371 = zext nneg i32 %0 to i64
  %min.iters.check = icmp ult i32 %0, 8
  %i.cm = ptrtoaddr ptr %i.cl to i64
  %i.cn = ptrtoaddr ptr %i.ck to i64
  %i.co = sub i64 %i.cn, %i.cm
  %diff.check = icmp ugt i64 %i.co, -32
  %or.cond431 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond431, label %scalar.ph.preheader, label %vector.ph

end_hunk_3
begin_hunk_4_@fixed_musclesupg_float_realloc_nobk_halfmtx:bb.a
bb.ab:                                            ; preds = %bb.aa
  store float %i.hw, ptr %i.hz, align 4, !tbaa !21
  %i.ic = getelementptr inbounds [4 x i8], ptr %.0216, i64 %.pre-phi387
  store i32 %spec.select, ptr %i.ic, align 4, !tbaa !4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.id = load float, ptr %i.hf, align 4, !tbaa !21
  %i.ie = fcmp olt float %i.hw, %i.id
  br i1 %i.ie, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store float %i.hw, ptr %i.hf, align 4, !tbaa !21
  store i32 %i.hi, ptr %i.hg, align 4, !tbaa !4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.if = getelementptr inbounds [4 x i8], ptr %.0216, i64 %.pre-phi387 ; 2 uses
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !4
  %i.ih = icmp eq i32 %i.ig, %spec.select272
  br i1 %i.ih, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 %spec.select, ptr %i.if, align 4, !tbaa !4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.x, %bb.af, %bb.ae
  %.1223 = load ptr, ptr %.1223339, align 8, !tbaa !98 ; 2 uses
  %.not267 = icmp eq ptr %.1223, null
  br i1 %.not267, label %._crit_edge342.loopexit, label %bb.x, !llvm.loop !161

._crit_edge342.loopexit:                          ; preds = %bb.ag
  %.pre381 = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.ac, align 8, !tbaa !98
  %i.ii = getelementptr inbounds [24 x i8], ptr %.pre381, i64 %i.fj ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !108 ; 2 uses
  %i.il = load ptr, ptr %i.ii, align 8, !tbaa !106 ; 3 uses
  store ptr %i.il, ptr %i.ik, align 8, !tbaa !106
  %.not268 = icmp eq ptr %i.il, null
  br i1 %.not268, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge342.loopexit
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store ptr %i.ik, ptr %i.im, align 8, !tbaa !108
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %._crit_edge342.loopexit
  %i.in = getelementptr inbounds [8 x i8], ptr %1, i64 %i.fj ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !19
  tail call void @free(ptr noundef %i.io) #33
  store ptr null, ptr %i.in, align 8, !tbaa !19
  %.2343 = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.ac, align 8, !tbaa !98 ; 4 uses
  %.not269344 = icmp eq ptr %.2343, null
  br i1 %.not269344, label %._crit_edge348, label %.lr.ph347

.lr.ph347:                                        ; preds = %bb.ai, %setnearest.exit289
  %.2345 = phi ptr [ %.2, %setnearest.exit289 ], [ %.2343, %bb.ai ] ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.2345, i64 16
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !109 ; 4 uses
  %i.ir = sext i32 %i.iq to i64                   ; 4 uses
  %i.is = getelementptr inbounds [4 x i8], ptr %.0216, i64 %i.ir ; 4 uses
  %i.it = load i32, ptr %i.is, align 4, !tbaa !4
  %i.iu = icmp eq i32 %i.it, %spec.select
  br i1 %i.iu, label %bb.aj, label %setnearest.exit289

bb.aj:                                            ; preds = %.lr.ph347
  %i.iv = getelementptr inbounds [4 x i8], ptr %.0, i64 %i.ir ; 3 uses
  store float 9.999000e+02, ptr %i.iv, align 4, !tbaa !21
  store i32 -1, ptr %i.is, align 4, !tbaa !4
  %i.iw = getelementptr inbounds [24 x i8], ptr %.2343, i64 %i.ir
  %.037.i276 = load ptr, ptr %i.iw, align 8, !tbaa !106 ; 2 uses
  %.not38.i277 = icmp eq ptr %.037.i276, null
  br i1 %.not38.i277, label %.lr.ph42.i285.preheader, label %.lr.ph.i278

.lr.ph.i278:                                      ; preds = %bb.aj
  %i.ix = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ir
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !19
  br label %bb.ak

bb.ak:                                            ; preds = %bb.am, %.lr.ph.i278
  %i.iz = phi float [ 9.999000e+02, %.lr.ph.i278 ], [ %i.jh, %bb.am ] ; 2 uses
  %.039.i279 = phi ptr [ %.037.i276, %.lr.ph.i278 ], [ %.0.i280, %bb.am ] ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.039.i279, i64 16
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !109 ; 2 uses
  %i.jc = sub nsw i32 %i.jb, %i.iq
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [4 x i8], ptr %i.iy, i64 %i.jd
  %i.jf = load float, ptr %i.je, align 4, !tbaa !21 ; 3 uses
  %i.jg = fcmp olt float %i.jf, %i.iz
  br i1 %i.jg, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store float %i.jf, ptr %i.iv, align 4, !tbaa !21
  store i32 %i.jb, ptr %i.is, align 4, !tbaa !4
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.jh = phi float [ %i.iz, %bb.ak ], [ %i.jf, %bb.al ] ; 2 uses
  %.0.i280 = load ptr, ptr %.039.i279, align 8, !tbaa !106 ; 2 uses
  %.not.i281 = icmp eq ptr %.0.i280, null
  br i1 %.not.i281, label %.lr.ph42.i285.preheader, label %bb.ak, !llvm.loop !136

.lr.ph42.i285.preheader:                          ; preds = %bb.am, %bb.aj
  %.ph = phi float [ 9.999000e+02, %bb.aj ], [ %i.jh, %bb.am ]
  br label %.lr.ph42.i285

.lr.ph42.i285:                                    ; preds = %.lr.ph42.i285.preheader, %bb.ap
  %i.ji = phi float [ %i.jt, %bb.ap ], [ %.ph, %.lr.ph42.i285.preheader ] ; 2 uses
  %.141.i286 = phi ptr [ %i.ju, %bb.ap ], [ %.2343, %.lr.ph42.i285.preheader ] ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.141.i286, i64 16
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !109 ; 4 uses
  %.not36.i287 = icmp eq i32 %i.jk, %i.iq
  br i1 %.not36.i287, label %setnearest.exit289, label %bb.an

bb.an:                                            ; preds = %.lr.ph42.i285
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds [8 x i8], ptr %1, i64 %i.jl
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !19
  %i.jo = sub nsw i32 %i.iq, %i.jk
  %i.jp = sext i32 %i.jo to i64
  %i.jq = getelementptr inbounds [4 x i8], ptr %i.jn, i64 %i.jp
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !21 ; 3 uses
  %i.js = fcmp olt float %i.jr, %i.ji
  br i1 %i.js, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store float %i.jr, ptr %i.iv, align 4, !tbaa !21
  store i32 %i.jk, ptr %i.is, align 4, !tbaa !4
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.jt = phi float [ %i.ji, %bb.an ], [ %i.jr, %bb.ao ]
  %i.ju = load ptr, ptr %.141.i286, align 8, !tbaa !106 ; 2 uses
  %.not35.i288 = icmp eq ptr %i.ju, null
  br i1 %.not35.i288, label %setnearest.exit289, label %.lr.ph42.i285, !llvm.loop !137

setnearest.exit289:                               ; preds = %bb.ap, %.lr.ph42.i285, %.lr.ph347
  %.2 = load ptr, ptr %.2345, align 8, !tbaa !98  ; 2 uses
  %.not269 = icmp eq ptr %.2, null
  br i1 %.not269, label %._crit_edge348, label %.lr.ph347, !llvm.loop !162

._crit_edge348:                                   ; preds = %setnearest.exit289, %bb.ai
  %indvars.iv.next374 = add nuw nsw i64 %indvars.iv373, 1 ; 2 uses
  %exitcond377.not = icmp eq i64 %indvars.iv.next374, %wide.trip.count376
  br i1 %exitcond377.not, label %._crit_edge353, label %.lr.ph352, !llvm.loop !163

._crit_edge353:                                   ; preds = %._crit_edge348, %.preheader292.thread, %._crit_edge303
  %i.jv = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.tmptmplen, align 8, !tbaa !19
  tail call void @free(ptr noundef %i.jv) #33
  store ptr null, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.tmptmplen, align 8, !tbaa !19
  %i.jw = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.hist, align 8, !tbaa !89
  tail call void @free(ptr noundef %i.jw) #33
  store ptr null, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.hist, align 8, !tbaa !89
  %i.jx = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.ac, align 8, !tbaa !98
  tail call void @free(ptr noundef %i.jx) #33
  store ptr null, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.ac, align 8, !tbaa !98
  %i.jy = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.nmemar, align 8, !tbaa !89
  tail call void @free(ptr noundef %i.jy) #33
  store ptr null, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.nmemar, align 8, !tbaa !89
  tail call void @free(ptr noundef %.0) #33
  tail call void @free(ptr noundef %.0216) #33
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @veryfastsupg_double_loadtop(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #12 {
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
  %4 = load i32, ptr @njob, align 4, !tbaa !4
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 3
  %i.s = tail call noalias ptr @malloc(i64 noundef %6) #34
  store ptr %i.s, ptr @veryfastsupg_double_loadtop.ac, align 8, !tbaa !164
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = icmp sgt i32 %0, 0
  br i1 %i.t, label %.lr.ph.preheader, label %._crit_edge212.thread

.lr.ph.preheader:                                 ; preds = %bb.e
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  br label %.lr.ph

.lr.ph206:                                        ; preds = %.lr.ph
  %.pre283 = load ptr, ptr @veryfastsupg_double_loadtop.ac, align 8, !tbaa !164 ; 4 uses
  %wide.trip.count249 = zext nneg i32 %0 to i64
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph206
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.ind295 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next298, %vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.pre283, i64 %index
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.pre283, i64 %index
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.y = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.z = shufflevector <2 x i32> %i.x, <2 x i32> %vec.ind295, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec = add <4 x i32> %i.z, <i32 1, i32 -1, i32 1, i32 -1>
  store <4 x i32> %interleaved.vec, ptr %i.u, align 4, !tbaa !4
  %i.aa = shufflevector <2 x i32> %i.y, <2 x i32> %vec.ind295, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec297 = add <4 x i32> %i.aa, <i32 3, i32 1, i32 3, i32 1>
  store <4 x i32> %interleaved.vec297, ptr %i.w, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %vec.ind.next298 = add <2 x i32> %vec.ind295, splat (i32 4)
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !166

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge212, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph206, %middle.block
  %indvars.iv246.ph = phi i64 [ 0, %.lr.ph206 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.ac = load ptr, ptr @veryfastsupg_double_loadtop.tree, align 8, !tbaa !77
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.af = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ag = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ae, ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.af) #33 ; 0 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph206, label %.lr.ph, !llvm.loop !167

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv246 = phi i64 [ %indvars.iv.next247, %scalar.ph ], [ %indvars.iv246.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1 ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.pre283, i64 %indvars.iv246 ; 2 uses
  %i.ai = trunc nuw nsw i64 %indvars.iv.next247 to i32
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !168
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.ak = trunc i64 %indvars.iv246 to i32
  %i.al = add i32 %i.ak, -1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !170
  %exitcond250.not = icmp eq i64 %indvars.iv.next247, %wide.trip.count249
  br i1 %exitcond250.not, label %._crit_edge212, label %scalar.ph, !llvm.loop !171

._crit_edge212.thread:                            ; preds = %bb.e
  %.pre = load ptr, ptr @veryfastsupg_double_loadtop.ac, align 8, !tbaa !164
  %i.am = sext i32 %0 to i64
  %i.an = getelementptr [8 x i8], ptr %.pre, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 -8
  store i32 -1, ptr %i.ao, align 4, !tbaa !168
  %i.ap = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc287 = tail call i32 @fputc(i32 10, ptr %i.ap) ; 0 uses
  br label %._crit_edge241

._crit_edge212:                                   ; preds = %scalar.ph, %middle.block
  %i.aq = add nsw i32 %0, -1                      ; 2 uses
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.pre283, i64 %i.ar
  store i32 -1, ptr %i.as, align 4, !tbaa !168
  %i.at = load ptr, ptr @veryfastsupg_double_loadtop.tmptmplen, align 8, !tbaa !52
  %i.au = zext nneg i32 %0 to i64
  %i.av = shl nuw nsw i64 %i.au, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.at, i8 0, i64 %i.av, i1 false), !tbaa !24
  %i.aw = load ptr, ptr @veryfastsupg_double_loadtop.hist, align 8, !tbaa !89
  %i.ax = zext nneg i32 %0 to i64
  %i.ay = shl nuw nsw i64 %i.ax, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aw, i8 -1, i64 %i.ay, i1 false), !tbaa !4
  %i.az = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %i.az) ; 0 uses
  %.not291 = icmp eq i32 %0, 1
  br i1 %.not291, label %._crit_edge241, label %.lr.ph240

.lr.ph240:                                        ; preds = %._crit_edge212
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %wide.trip.count260 = zext nneg i32 %i.aq to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph240, %bb.ac
  %indvars.iv257 = phi i64 [ 0, %.lr.ph240 ], [ %indvars.iv.next258, %bb.ac ] ; 4 uses
  %i.bc = trunc nuw nsw i64 %indvars.iv257 to i32 ; 3 uses
  %i.bd = urem i32 %i.bc, 10
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bf = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bf, ptr noundef nonnull @.str.24, i32 noundef %i.bc, i32 noundef %0) #31 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store <2 x float> splat (float -1.000000e+00), ptr %i.b, align 8, !tbaa !21
  %i.bh = call ptr @fgets(ptr noundef nonnull @loadtreeoneline.gett, i32 noundef 999, ptr noundef nonnull %i.c) ; 0 uses
  %i.bi = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull @loadtreeoneline.gett, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ba) #33 ; 0 uses
  %i.bj = load i32, ptr %i.a, align 4, !tbaa !4   ; 2 uses
  %i.bk = add nsw i32 %i.bj, -1                   ; 5 uses
  store i32 %i.bk, ptr %i.a, align 4, !tbaa !4
  %i.bl = load i32, ptr %i.bb, align 4, !tbaa !4  ; 2 uses
  %i.bm = add nsw i32 %i.bl, -1                   ; 6 uses
  store i32 %i.bm, ptr %i.bb, align 4, !tbaa !4
  %.not.i = icmp slt i32 %i.bj, %i.bl
  br i1 %.not.i, label %loadtreeoneline.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bn = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bo = call i64 @fwrite(ptr nonnull @.str.39, i64 21, i64 1, ptr %i.bn) #30 ; 0 uses
  call void @exit(i32 noundef 1) #32
  unreachable

loadtreeoneline.exit:                             ; preds = %bb.h
  %i.bp = sext i32 %i.bk to i64                   ; 7 uses
  %i.bq = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bp
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !52
  %i.bs = sext i32 %i.bm to i64                   ; 6 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bs
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !24
  %i.bv = load float, ptr %i.b, align 8, !tbaa !21
  %i.bw = fcmp une float %i.bv, -1.000000e+00
  %i.bx = load float, ptr %i.ba, align 4
  %i.by = fcmp une float %i.bx, -1.000000e+00
  %or.cond = select i1 %i.bw, i1 true, i1 %i.by
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %loadtreeoneline.exit
  %i.bz = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ca = call i64 @fwrite(ptr nonnull @.str.25, i64 34, i64 1, ptr %i.bz) #30 ; 0 uses
  call void @exit(i32 noundef 1) #32
  unreachable

bb.k:                                             ; preds = %loadtreeoneline.exit
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv257
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !87 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !89 ; 4 uses
  %i.ce = load ptr, ptr @veryfastsupg_double_loadtop.hist, align 8, !tbaa !89 ; 2 uses
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.bp ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !4  ; 2 uses
  %i.ch = icmp eq i32 %i.cg, -1
  br i1 %i.ch, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store i32 %i.bk, ptr %i.cd, align 4, !tbaa !4
  store i32 -1, ptr %i.ci, align 4, !tbaa !4
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.cj = sext i32 %i.cg to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cj
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !87 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !89 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !89 ; 3 uses
  %i.cp = load i32, ptr %i.cm, align 4, !tbaa !4  ; 3 uses
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !4  ; 3 uses
  %i.cr = icmp sgt i32 %i.cp, %i.cq               ; 2 uses
  %.197 = select i1 %i.cr, ptr %i.cm, ptr %i.co   ; 2 uses
  %i.cs = call i32 @llvm.smin.i32(i32 %i.cp, i32 %i.cq) ; 2 uses
  %.not188213 = icmp eq i32 %i.cs, -1
  %i.ct = call i32 @llvm.smax.i32(i32 %i.cp, i32 %i.cq)
  br i1 %.not188213, label %.preheader201, label %.lr.ph217.preheader

.lr.ph217.preheader:                              ; preds = %bb.m
  %. = select i1 %i.cr, ptr %i.co, ptr %i.cm
  br label %.lr.ph217

.preheader201.loopexit:                           ; preds = %.lr.ph217
  %.pre262 = load i32, ptr %.197, align 4, !tbaa !4
  br label %.preheader201

.preheader201:                                    ; preds = %.preheader201.loopexit, %bb.m
end_hunk_4
begin_hunk_5_@veryfastsupg_double_loadtop:bb.a
  %.3232 = phi ptr [ %i.ea, %.lr.ph233 ], [ %.199, %.preheader ]
  %.3165231 = phi ptr [ %i.eb, %.lr.ph233 ], [ %.2164.lcssa, %.preheader ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.3232, i64 4 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.3165231, i64 4 ; 2 uses
  store i32 %i.dz, ptr %.3165231, align 4, !tbaa !4
  %i.ec = load i32, ptr %i.ea, align 4, !tbaa !4  ; 2 uses
  %.not191 = icmp eq i32 %i.ec, -1
  br i1 %.not191, label %._crit_edge234, label %.lr.ph233, !llvm.loop !175

._crit_edge234:                                   ; preds = %.lr.ph233, %.preheader
  %.3165.lcssa = phi ptr [ %.2164.lcssa, %.preheader ], [ %i.eb, %.lr.ph233 ]
  store i32 -1, ptr %.3165.lcssa, align 4, !tbaa !4
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge234, %bb.o
  %i.ed = fmul double %i.bu, 5.000000e-01         ; 3 uses
  %i.ee = load ptr, ptr @veryfastsupg_double_loadtop.tmptmplen, align 8, !tbaa !52 ; 2 uses
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.bp ; 2 uses
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !24
  %i.eh = fsub double %i.ed, %i.eg                ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv257
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !52 ; 4 uses
  store double %i.eh, ptr %i.ej, align 8, !tbaa !24
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.bs
  %i.el = load double, ptr %i.ek, align 8, !tbaa !24
  %i.em = fsub double %i.ed, %i.el                ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 3 uses
  store double %i.em, ptr %i.en, align 8, !tbaa !24
  %i.eo = fcmp olt double %i.eh, 0.000000e+00
  br i1 %i.eo, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store double 0.000000e+00, ptr %i.ej, align 8, !tbaa !24
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ep = fcmp olt double %i.em, 0.000000e+00
  br i1 %i.ep, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store double 0.000000e+00, ptr %i.en, align 8, !tbaa !24
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  store double %i.ed, ptr %i.ef, align 8, !tbaa !24
  store i32 %i.bc, ptr %i.cf, align 4, !tbaa !4
  %i.eq = load ptr, ptr @veryfastsupg_double_loadtop.ac, align 8, !tbaa !164 ; 4 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.z
  %.4236 = phi i32 [ 0, %bb.u ], [ %i.fi, %bb.z ] ; 8 uses
  %.not194 = icmp eq i32 %.4236, %i.bk
  %.not195 = icmp eq i32 %.4236, %i.bm
  %or.cond200 = or i1 %.not194, %.not195
  br i1 %or.cond200, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.er = icmp slt i32 %.4236, %i.bk
  br i1 %i.er, label %._crit_edge267, label %bb.x

._crit_edge267:                                   ; preds = %bb.w
  %.pre268 = sext i32 %.4236 to i64               ; 2 uses
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %.4. = call i32 @llvm.smin.i32(i32 %.4236, i32 %i.bm)
  %..4 = call i32 @llvm.smax.i32(i32 %.4236, i32 %i.bm)
  %.pre264 = sext i32 %.4236 to i64
  %.pre265 = sext i32 %..4 to i64
  %.pre270 = sext i32 %.4. to i64
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge267, %bb.x
  %.pre-phi271 = phi i64 [ %.pre268, %._crit_edge267 ], [ %.pre270, %bb.x ]
  %.pre-phi269 = phi i64 [ %.pre268, %._crit_edge267 ], [ %i.bp, %bb.x ]
  %.pre-phi266 = phi i64 [ %i.bs, %._crit_edge267 ], [ %.pre265, %bb.x ]
  %.pre-phi = phi i64 [ %i.bp, %._crit_edge267 ], [ %.pre264, %bb.x ]
  %i.es = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi269
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !52
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.et, i64 %.pre-phi ; 2 uses
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !24 ; 3 uses
  %i.ew = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi271
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !52
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %.pre-phi266
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !24 ; 3 uses
  %i.fa = fcmp olt double %i.ev, %i.ez
  %i.fb = select i1 %i.fa, double %i.ev, double %i.ez
  %i.fc = fadd double %i.ev, %i.ez
  %i.fd = fmul double %i.fc, 5.000000e-01
  %i.fe = fmul double %i.fd, 1.000000e-01
  %i.ff = call double @llvm.fmuladd.f64(double %i.fb, double 9.000000e-01, double %i.fe)
  store double %i.ff, ptr %i.eu, align 8, !tbaa !24
  br label %bb.z

bb.z:                                             ; preds = %bb.v, %bb.y
  %i.fg = sext i32 %.4236 to i64
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !168 ; 2 uses
  %.not192 = icmp eq i32 %i.fi, -1
  br i1 %.not192, label %bb.aa, label %bb.v, !llvm.loop !176

bb.aa:                                            ; preds = %bb.z
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.bs ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !170 ; 2 uses
  %i.fm = load i32, ptr %i.fj, align 4, !tbaa !168 ; 3 uses
  %i.fn = sext i32 %i.fl to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.fn
  store i32 %i.fm, ptr %i.fo, align 4, !tbaa !168
  %.not193 = icmp eq i32 %i.fm, -1
  br i1 %.not193, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fp = sext i32 %i.fm to i64
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  store i32 %i.fl, ptr %i.fr, align 4, !tbaa !170
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.fs = load ptr, ptr @veryfastsupg_double_loadtop.treetmp, align 8, !tbaa !12
  %i.ft = load ptr, ptr @veryfastsupg_double_loadtop.tree, align 8, !tbaa !77 ; 2 uses
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.ft, i64 %i.bp
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !12
  %i.fw = load double, ptr %i.ej, align 8, !tbaa !24
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.ft, i64 %i.bs
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !12
  %i.fz = load double, ptr %i.en, align 8, !tbaa !24
  %i.ga = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.fs, ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef %i.fv, double noundef %i.fw, ptr noundef %i.fy, double noundef %i.fz) #33 ; 0 uses
  %i.gb = load ptr, ptr @veryfastsupg_double_loadtop.tree, align 8, !tbaa !77
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.gb, i64 %i.bp
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !12
  %i.ge = load ptr, ptr @veryfastsupg_double_loadtop.treetmp, align 8, !tbaa !12
  %i.gf = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.gd, ptr noundef nonnull dereferenceable(1) %i.ge) #33 ; 0 uses
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1 ; 2 uses
  %exitcond261.not = icmp eq i64 %indvars.iv.next258, %wide.trip.count260
  br i1 %exitcond261.not, label %._crit_edge241, label %bb.f, !llvm.loop !177

._crit_edge241:                                   ; preds = %bb.ac, %._crit_edge212.thread, %._crit_edge212
  %i.gg = call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  %i.gh = call noalias ptr @fopen(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) ; 2 uses
  %i.gi = load ptr, ptr @veryfastsupg_double_loadtop.treetmp, align 8, !tbaa !12
  %i.gj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gh, ptr noundef nonnull @.str.4, ptr noundef %i.gi) #33 ; 0 uses
  %i.gk = call i32 @fclose(ptr noundef %i.gh)     ; 0 uses
  %i.gl = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc187 = call i32 @fputc(i32 10, ptr %i.gl)  ; 0 uses
  %i.gm = load ptr, ptr @veryfastsupg_double_loadtop.tmptmplen, align 8, !tbaa !52
  call void @free(ptr noundef %i.gm) #33
  store ptr null, ptr @veryfastsupg_double_loadtop.tmptmplen, align 8, !tbaa !52
  %i.gn = load ptr, ptr @veryfastsupg_double_loadtop.hist, align 8, !tbaa !89
  call void @free(ptr noundef %i.gn) #33
  store ptr null, ptr @veryfastsupg_double_loadtop.hist, align 8, !tbaa !89
  %i.go = load ptr, ptr @veryfastsupg_double_loadtop.ac, align 8, !tbaa !164
  call void @free(ptr noundef %i.go) #33
  store ptr null, ptr @veryfastsupg_double_loadtop.ac, align 8, !tbaa !164
  %i.gp = load ptr, ptr @veryfastsupg_double_loadtop.tree, align 8, !tbaa !77
  call void @FreeCharMtx(ptr noundef %i.gp) #33
  %i.gq = load ptr, ptr @veryfastsupg_double_loadtop.treetmp, align 8, !tbaa !12
  call void @free(ptr noundef %i.gq) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @veryfastsupg_double_loadtree(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #12 {
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
  %4 = load i32, ptr @njob, align 4, !tbaa !4
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 3
  %i.s = tail call noalias ptr @malloc(i64 noundef %6) #34
  store ptr %i.s, ptr @veryfastsupg_double_loadtree.ac, align 8, !tbaa !164
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = icmp sgt i32 %0, 0
  br i1 %i.t, label %.lr.ph.preheader, label %._crit_edge201.thread

.lr.ph.preheader:                                 ; preds = %bb.e
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  br label %.lr.ph

.lr.ph195:                                        ; preds = %.lr.ph
  %.pre274 = load ptr, ptr @veryfastsupg_double_loadtree.ac, align 8, !tbaa !164 ; 4 uses
  %wide.trip.count238 = zext nneg i32 %0 to i64
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph195
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.ind286 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next289, %vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.pre274, i64 %index
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.pre274, i64 %index
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.y = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.z = shufflevector <2 x i32> %i.x, <2 x i32> %vec.ind286, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec = add <4 x i32> %i.z, <i32 1, i32 -1, i32 1, i32 -1>
  store <4 x i32> %interleaved.vec, ptr %i.u, align 4, !tbaa !4
  %i.aa = shufflevector <2 x i32> %i.y, <2 x i32> %vec.ind286, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec288 = add <4 x i32> %i.aa, <i32 3, i32 1, i32 3, i32 1>
  store <4 x i32> %interleaved.vec288, ptr %i.w, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %vec.ind.next289 = add <2 x i32> %vec.ind286, splat (i32 4)
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !178

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge201, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph195, %middle.block
  %indvars.iv235.ph = phi i64 [ 0, %.lr.ph195 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.ac = load ptr, ptr @veryfastsupg_double_loadtree.tree, align 8, !tbaa !77
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.af = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ag = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ae, ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.af) #33 ; 0 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph195, label %.lr.ph, !llvm.loop !179

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv235 = phi i64 [ %indvars.iv.next236, %scalar.ph ], [ %indvars.iv235.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv.next236 = add nuw nsw i64 %indvars.iv235, 1 ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.pre274, i64 %indvars.iv235 ; 2 uses
  %i.ai = trunc nuw nsw i64 %indvars.iv.next236 to i32
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !168
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.ak = trunc i64 %indvars.iv235 to i32
  %i.al = add i32 %i.ak, -1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !170
  %exitcond239.not = icmp eq i64 %indvars.iv.next236, %wide.trip.count238
  br i1 %exitcond239.not, label %._crit_edge201, label %scalar.ph, !llvm.loop !180

._crit_edge201.thread:                            ; preds = %bb.e
  %.pre = load ptr, ptr @veryfastsupg_double_loadtree.ac, align 8, !tbaa !164
  %i.am = sext i32 %0 to i64
  %i.an = getelementptr [8 x i8], ptr %.pre, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 -8
  store i32 -1, ptr %i.ao, align 4, !tbaa !168
  %i.ap = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc278 = tail call i32 @fputc(i32 10, ptr %i.ap) ; 0 uses
  br label %._crit_edge230

._crit_edge201:                                   ; preds = %scalar.ph, %middle.block
  %i.aq = add nsw i32 %0, -1                      ; 2 uses
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.pre274, i64 %i.ar
  store i32 -1, ptr %i.as, align 4, !tbaa !168
  %i.at = load ptr, ptr @veryfastsupg_double_loadtree.tmptmplen, align 8, !tbaa !52
  %i.au = zext nneg i32 %0 to i64
  %i.av = shl nuw nsw i64 %i.au, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.at, i8 0, i64 %i.av, i1 false), !tbaa !24
  %i.aw = load ptr, ptr @veryfastsupg_double_loadtree.hist, align 8, !tbaa !89
  %i.ax = zext nneg i32 %0 to i64
  %i.ay = shl nuw nsw i64 %i.ax, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aw, i8 -1, i64 %i.ay, i1 false), !tbaa !4
  %i.az = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %i.az) ; 0 uses
  %.not282 = icmp eq i32 %0, 1
  br i1 %.not282, label %._crit_edge230, label %.lr.ph229

.lr.ph229:                                        ; preds = %._crit_edge201
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %wide.trip.count249 = zext nneg i32 %i.aq to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph229, %bb.ac
  %indvars.iv246 = phi i64 [ 0, %.lr.ph229 ], [ %indvars.iv.next247, %bb.ac ] ; 4 uses
  %i.bc = trunc nuw nsw i64 %indvars.iv246 to i32 ; 3 uses
  %i.bd = urem i32 %i.bc, 10
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bf = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bf, ptr noundef nonnull @.str.24, i32 noundef %i.bc, i32 noundef %0) #31 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store <2 x float> splat (float -1.000000e+00), ptr %i.b, align 8, !tbaa !21
  %i.bh = call ptr @fgets(ptr noundef nonnull @loadtreeoneline.gett, i32 noundef 999, ptr noundef nonnull %i.c) ; 0 uses
  %i.bi = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull @loadtreeoneline.gett, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ba) #33 ; 0 uses
  %i.bj = load i32, ptr %i.a, align 4, !tbaa !4   ; 2 uses
  %i.bk = add nsw i32 %i.bj, -1                   ; 5 uses
  store i32 %i.bk, ptr %i.a, align 4, !tbaa !4
  %i.bl = load i32, ptr %i.bb, align 4, !tbaa !4  ; 2 uses
  %i.bm = add nsw i32 %i.bl, -1                   ; 6 uses
  store i32 %i.bm, ptr %i.bb, align 4, !tbaa !4
  %.not.i = icmp slt i32 %i.bj, %i.bl
  br i1 %.not.i, label %loadtreeoneline.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bn = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bo = call i64 @fwrite(ptr nonnull @.str.39, i64 21, i64 1, ptr %i.bn) #30 ; 0 uses
  call void @exit(i32 noundef 1) #32
  unreachable

loadtreeoneline.exit:                             ; preds = %bb.h
  %i.bp = sext i32 %i.bk to i64                   ; 7 uses
  %i.bq = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bp
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !52
  %i.bs = sext i32 %i.bm to i64                   ; 5 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bs
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !24
  %i.bv = load float, ptr %i.b, align 8, !tbaa !21 ; 3 uses
  %i.bw = fcmp oeq float %i.bv, -1.000000e+00
  %i.bx = load float, ptr %i.ba, align 4          ; 2 uses
  %i.by = fcmp oeq float %i.bx, -1.000000e+00
  %or.cond = select i1 %i.bw, i1 true, i1 %i.by
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %loadtreeoneline.exit
  %i.bz = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ca = call i64 @fwrite(ptr nonnull @.str.26, i64 39, i64 1, ptr %i.bz) #30 ; 0 uses
  call void @exit(i32 noundef 1) #32
  unreachable

bb.k:                                             ; preds = %loadtreeoneline.exit
  %i.cb = fcmp olt float %i.bv, 0.000000e+00
  br i1 %i.cb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store float 0.000000e+00, ptr %i.b, align 8, !tbaa !21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cc = phi float [ 0.000000e+00, %bb.l ], [ %i.bv, %bb.k ]
  %i.cd = fcmp olt float %i.bx, 0.000000e+00
  br i1 %i.cd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store float 0.000000e+00, ptr %i.ba, align 4, !tbaa !21
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv246
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !87 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !89 ; 4 uses
  %i.ch = load ptr, ptr @veryfastsupg_double_loadtree.hist, align 8, !tbaa !89 ; 2 uses
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.bp ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !4  ; 2 uses
  %i.ck = icmp eq i32 %i.cj, -1
  br i1 %i.ck, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  store i32 %i.bk, ptr %i.cg, align 4, !tbaa !4
  store i32 -1, ptr %i.cl, align 4, !tbaa !4
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.cm = sext i32 %i.cj to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cm
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !87 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !89 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !89 ; 3 uses
  %i.cs = load i32, ptr %i.cp, align 4, !tbaa !4  ; 3 uses
end_hunk_5
begin_hunk_6_@veryfastsupg_double_loadtree:bb.a
  %.2152214 = phi ptr [ %i.ea, %.lr.ph217 ], [ %i.dh, %.lr.ph217.preheader ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.2215, i64 4 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.2152214, i64 4 ; 2 uses
  store i32 %i.dy, ptr %.2152214, align 4, !tbaa !4
  %i.eb = load i32, ptr %i.dz, align 4, !tbaa !4  ; 2 uses
  %.not179 = icmp eq i32 %i.eb, -1
  br i1 %.not179, label %.preheader.loopexit, label %.lr.ph217, !llvm.loop !183

.lr.ph222:                                        ; preds = %.preheader, %.lr.ph222
  %i.ec = phi i32 [ %i.ef, %.lr.ph222 ], [ %i.dx, %.preheader ]
  %.3221 = phi ptr [ %i.ed, %.lr.ph222 ], [ %.188, %.preheader ]
  %.3153220 = phi ptr [ %i.ee, %.lr.ph222 ], [ %.2152.lcssa, %.preheader ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.3221, i64 4 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.3153220, i64 4 ; 2 uses
  store i32 %i.ec, ptr %.3153220, align 4, !tbaa !4
  %i.ef = load i32, ptr %i.ed, align 4, !tbaa !4  ; 2 uses
  %.not180 = icmp eq i32 %i.ef, -1
  br i1 %.not180, label %._crit_edge223, label %.lr.ph222, !llvm.loop !184

._crit_edge223:                                   ; preds = %.lr.ph222, %.preheader
  %.3153.lcssa = phi ptr [ %.2152.lcssa, %.preheader ], [ %i.ee, %.lr.ph222 ]
  store i32 -1, ptr %.3153.lcssa, align 4, !tbaa !4
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge223, %bb.s
  %i.eg = fmul double %i.bu, 5.000000e-01
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv246
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !52 ; 3 uses
  %i.ej = load float, ptr %i.ba, align 4, !tbaa !21
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.el = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.em = insertelement <2 x float> %i.el, float %i.ej, i64 1
  %i.en = fpext <2 x float> %i.em to <2 x double>
  store <2 x double> %i.en, ptr %i.ei, align 8, !tbaa !24
  %i.eo = load ptr, ptr @veryfastsupg_double_loadtree.tmptmplen, align 8, !tbaa !52
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %i.bp
  store double %i.eg, ptr %i.ep, align 8, !tbaa !24
  store i32 %i.bc, ptr %i.ci, align 4, !tbaa !4
  %i.eq = load ptr, ptr @veryfastsupg_double_loadtree.ac, align 8, !tbaa !164 ; 4 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.z
  %.4225 = phi i32 [ 0, %bb.u ], [ %i.fi, %bb.z ] ; 8 uses
  %.not183 = icmp eq i32 %.4225, %i.bk
  %.not184 = icmp eq i32 %.4225, %i.bm
  %or.cond189 = or i1 %.not183, %.not184
  br i1 %or.cond189, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.er = icmp slt i32 %.4225, %i.bk
  br i1 %i.er, label %._crit_edge256, label %bb.x

._crit_edge256:                                   ; preds = %bb.w
  %.pre257 = sext i32 %.4225 to i64               ; 2 uses
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %.4. = call i32 @llvm.smin.i32(i32 %.4225, i32 %i.bm)
  %..4 = call i32 @llvm.smax.i32(i32 %.4225, i32 %i.bm)
  %.pre253 = sext i32 %.4225 to i64
  %.pre254 = sext i32 %..4 to i64
  %.pre259 = sext i32 %.4. to i64
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge256, %bb.x
  %.pre-phi260 = phi i64 [ %.pre257, %._crit_edge256 ], [ %.pre259, %bb.x ]
  %.pre-phi258 = phi i64 [ %.pre257, %._crit_edge256 ], [ %i.bp, %bb.x ]
  %.pre-phi255 = phi i64 [ %i.bs, %._crit_edge256 ], [ %.pre254, %bb.x ]
  %.pre-phi = phi i64 [ %i.bp, %._crit_edge256 ], [ %.pre253, %bb.x ]
  %i.es = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi258
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !52
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.et, i64 %.pre-phi ; 2 uses
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !24 ; 3 uses
  %i.ew = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi260
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !52
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %.pre-phi255
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !24 ; 3 uses
  %i.fa = fcmp olt double %i.ev, %i.ez
  %i.fb = select i1 %i.fa, double %i.ev, double %i.ez
  %i.fc = fadd double %i.ev, %i.ez
  %i.fd = fmul double %i.fc, 5.000000e-01
  %i.fe = fmul double %i.fd, 1.000000e-01
  %i.ff = call double @llvm.fmuladd.f64(double %i.fb, double 9.000000e-01, double %i.fe)
  store double %i.ff, ptr %i.eu, align 8, !tbaa !24
  br label %bb.z

bb.z:                                             ; preds = %bb.v, %bb.y
  %i.fg = sext i32 %.4225 to i64
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !168 ; 2 uses
  %.not181 = icmp eq i32 %i.fi, -1
  br i1 %.not181, label %bb.aa, label %bb.v, !llvm.loop !185

bb.aa:                                            ; preds = %bb.z
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.bs ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !170 ; 2 uses
  %i.fm = load i32, ptr %i.fj, align 4, !tbaa !168 ; 3 uses
  %i.fn = sext i32 %i.fl to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.fn
  store i32 %i.fm, ptr %i.fo, align 4, !tbaa !168
  %.not182 = icmp eq i32 %i.fm, -1
  br i1 %.not182, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fp = sext i32 %i.fm to i64
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  store i32 %i.fl, ptr %i.fr, align 4, !tbaa !170
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.fs = load ptr, ptr @veryfastsupg_double_loadtree.treetmp, align 8, !tbaa !12
  %i.ft = load ptr, ptr @veryfastsupg_double_loadtree.tree, align 8, !tbaa !77 ; 2 uses
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.ft, i64 %i.bp
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !12
  %i.fw = load double, ptr %i.ei, align 8, !tbaa !24
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.ft, i64 %i.bs
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !12
  %i.fz = load double, ptr %i.ek, align 8, !tbaa !24
  %i.ga = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.fs, ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef %i.fv, double noundef %i.fw, ptr noundef %i.fy, double noundef %i.fz) #33 ; 0 uses
  %i.gb = load ptr, ptr @veryfastsupg_double_loadtree.tree, align 8, !tbaa !77
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.gb, i64 %i.bp
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !12
  %i.ge = load ptr, ptr @veryfastsupg_double_loadtree.treetmp, align 8, !tbaa !12
  %i.gf = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.gd, ptr noundef nonnull dereferenceable(1) %i.ge) #33 ; 0 uses
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1 ; 2 uses
  %exitcond250.not = icmp eq i64 %indvars.iv.next247, %wide.trip.count249
  br i1 %exitcond250.not, label %._crit_edge230, label %bb.f, !llvm.loop !186

._crit_edge230:                                   ; preds = %bb.ac, %._crit_edge201.thread, %._crit_edge201
  %i.gg = call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  %i.gh = call noalias ptr @fopen(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) ; 2 uses
  %i.gi = load ptr, ptr @veryfastsupg_double_loadtree.treetmp, align 8, !tbaa !12
  %i.gj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gh, ptr noundef nonnull @.str.4, ptr noundef %i.gi) #33 ; 0 uses
  %i.gk = call i32 @fclose(ptr noundef %i.gh)     ; 0 uses
  %i.gl = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc176 = call i32 @fputc(i32 10, ptr %i.gl)  ; 0 uses
  %i.gm = load ptr, ptr @veryfastsupg_double_loadtree.tmptmplen, align 8, !tbaa !52
  call void @free(ptr noundef %i.gm) #33
  store ptr null, ptr @veryfastsupg_double_loadtree.tmptmplen, align 8, !tbaa !52
  %i.gn = load ptr, ptr @veryfastsupg_double_loadtree.hist, align 8, !tbaa !89
  call void @free(ptr noundef %i.gn) #33
  store ptr null, ptr @veryfastsupg_double_loadtree.hist, align 8, !tbaa !89
  %i.go = load ptr, ptr @veryfastsupg_double_loadtree.ac, align 8, !tbaa !164
  call void @free(ptr noundef %i.go) #33
  store ptr null, ptr @veryfastsupg_double_loadtree.ac, align 8, !tbaa !164
  %i.gp = load ptr, ptr @veryfastsupg_double_loadtree.tree, align 8, !tbaa !77
  call void @FreeCharMtx(ptr noundef %i.gp) #33
  %i.gq = load ptr, ptr @veryfastsupg_double_loadtree.treetmp, align 8, !tbaa !12
  call void @free(ptr noundef %i.gq) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @veryfastsupg_double_outtree(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #12 {
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
  %5 = load i32, ptr @njob, align 4, !tbaa !4
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 3
  %i.q = tail call noalias ptr @malloc(i64 noundef %7) #34
  store ptr %i.q, ptr @veryfastsupg_double_outtree.ac, align 8, !tbaa !164
  %i.r = tail call ptr @AllocateCharVec(i32 noundef 30) #33
  store ptr %i.r, ptr @veryfastsupg_double_outtree.nametmp, align 8, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = icmp sgt i32 %0, 0
  br i1 %i.s, label %.preheader228.lr.ph, label %._crit_edge238.thread

.preheader228.lr.ph:                              ; preds = %bb.g
  %i.t = tail call ptr @__ctype_b_loc() #35       ; 30 uses
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  br label %.preheader228

.preheader228:                                    ; preds = %.preheader228.lr.ph, %.preheader228
  %indvars.iv288 = phi i64 [ 0, %.preheader228.lr.ph ], [ %indvars.iv.next289, %.preheader228 ] ; 3 uses
  %i.u = load ptr, ptr @veryfastsupg_double_outtree.nametmp, align 8, !tbaa !12 ; 33 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.u, i8 0, i64 30, i1 false), !tbaa !8
  %i.v = getelementptr inbounds nuw [256 x i8], ptr %4, i64 %indvars.iv288 ; 30 uses
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !100
  %i.x = load i8, ptr %i.v, align 1, !tbaa !8     ; 2 uses
  %i.y = sext i8 %i.x to i64
  %i.z = getelementptr inbounds [2 x i8], ptr %i.w, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !102
  %i.ab = and i16 %i.aa, 8
  %.not219 = icmp eq i16 %i.ab, 0
  %spec.select = select i1 %.not219, i8 95, i8 %i.x
  store i8 %spec.select, ptr %i.u, align 1, !tbaa !8
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !100
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !8   ; 2 uses
  %i.af = sext i8 %i.ae to i64
  %i.ag = getelementptr inbounds [2 x i8], ptr %i.ac, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !102
  %i.ai = and i16 %i.ah, 8
  %.not219.1 = icmp eq i16 %i.ai, 0
  %spec.select.1 = select i1 %.not219.1, i8 95, i8 %i.ae
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store i8 %spec.select.1, ptr %i.aj, align 1, !tbaa !8
  %i.ak = load ptr, ptr %i.t, align 8, !tbaa !100
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !8   ; 2 uses
  %i.an = sext i8 %i.am to i64
  %i.ao = getelementptr inbounds [2 x i8], ptr %i.ak, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !102
  %i.aq = and i16 %i.ap, 8
  %.not219.2 = icmp eq i16 %i.aq, 0
  %spec.select.2 = select i1 %.not219.2, i8 95, i8 %i.am
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  store i8 %spec.select.2, ptr %i.ar, align 1, !tbaa !8
  %i.as = load ptr, ptr %i.t, align 8, !tbaa !100
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 3
  %i.au = load i8, ptr %i.at, align 1, !tbaa !8   ; 2 uses
  %i.av = sext i8 %i.au to i64
  %i.aw = getelementptr inbounds [2 x i8], ptr %i.as, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !102
  %i.ay = and i16 %i.ax, 8
  %.not219.3 = icmp eq i16 %i.ay, 0
  %spec.select.3 = select i1 %.not219.3, i8 95, i8 %i.au
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  store i8 %spec.select.3, ptr %i.az, align 1, !tbaa !8
  %i.ba = load ptr, ptr %i.t, align 8, !tbaa !100
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !8   ; 2 uses
  %i.bd = sext i8 %i.bc to i64
  %i.be = getelementptr inbounds [2 x i8], ptr %i.ba, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !102
  %i.bg = and i16 %i.bf, 8
  %.not219.4 = icmp eq i16 %i.bg, 0
  %spec.select.4 = select i1 %.not219.4, i8 95, i8 %i.bc
  %i.bh = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i8 %spec.select.4, ptr %i.bh, align 1, !tbaa !8
  %i.bi = load ptr, ptr %i.t, align 8, !tbaa !100
  %i.bj = getelementptr inbounds nuw i8, ptr %i.v, i64 5
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !8   ; 2 uses
  %i.bl = sext i8 %i.bk to i64
  %i.bm = getelementptr inbounds [2 x i8], ptr %i.bi, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !102
  %i.bo = and i16 %i.bn, 8
  %.not219.5 = icmp eq i16 %i.bo, 0
  %spec.select.5 = select i1 %.not219.5, i8 95, i8 %i.bk
  %i.bp = getelementptr inbounds nuw i8, ptr %i.u, i64 5
  store i8 %spec.select.5, ptr %i.bp, align 1, !tbaa !8
  %i.bq = load ptr, ptr %i.t, align 8, !tbaa !100
  %i.br = getelementptr inbounds nuw i8, ptr %i.v, i64 6
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !8   ; 2 uses
  %i.bt = sext i8 %i.bs to i64
  %i.bu = getelementptr inbounds [2 x i8], ptr %i.bq, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !102
  %i.bw = and i16 %i.bv, 8
  %.not219.6 = icmp eq i16 %i.bw, 0
  %spec.select.6 = select i1 %.not219.6, i8 95, i8 %i.bs
  %i.bx = getelementptr inbounds nuw i8, ptr %i.u, i64 6
  store i8 %spec.select.6, ptr %i.bx, align 1, !tbaa !8
  %i.by = load ptr, ptr %i.t, align 8, !tbaa !100
  %i.bz = getelementptr inbounds nuw i8, ptr %i.v, i64 7
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !8   ; 2 uses
  %i.cb = sext i8 %i.ca to i64
  %i.cc = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.cb
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !102
  %i.ce = and i16 %i.cd, 8
  %.not219.7 = icmp eq i16 %i.ce, 0
  %spec.select.7 = select i1 %.not219.7, i8 95, i8 %i.ca
  %i.cf = getelementptr inbounds nuw i8, ptr %i.u, i64 7
  store i8 %spec.select.7, ptr %i.cf, align 1, !tbaa !8
  %i.cg = load ptr, ptr %i.t, align 8, !tbaa !100
  %i.ch = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !8   ; 2 uses
  %i.cj = sext i8 %i.ci to i64
  %i.ck = getelementptr inbounds [2 x i8], ptr %i.cg, i64 %i.cj
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !102
  %i.cm = and i16 %i.cl, 8
  %.not219.8 = icmp eq i16 %i.cm, 0
  %spec.select.8 = select i1 %.not219.8, i8 95, i8 %i.ci
  %i.cn = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i8 %spec.select.8, ptr %i.cn, align 1, !tbaa !8
  %i.co = load ptr, ptr %i.t, align 8, !tbaa !100
  %i.cp = getelementptr inbounds nuw i8, ptr %i.v, i64 9
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !8   ; 2 uses
  %i.cr = sext i8 %i.cq to i64
  %i.cs = getelementptr inbounds [2 x i8], ptr %i.co, i64 %i.cr
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !102
  %i.cu = and i16 %i.ct, 8
  %.not219.9 = icmp eq i16 %i.cu, 0
  %spec.select.9 = select i1 %.not219.9, i8 95, i8 %i.cq
  %i.cv = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  store i8 %spec.select.9, ptr %i.cv, align 1, !tbaa !8
  %i.cw = load ptr, ptr %i.t, align 8, !tbaa !100
  %i.cx = getelementptr inbounds nuw i8, ptr %i.v, i64 10
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !8   ; 2 uses
  %i.cz = sext i8 %i.cy to i64
  %i.da = getelementptr inbounds [2 x i8], ptr %i.cw, i64 %i.cz
  %i.db = load i16, ptr %i.da, align 2, !tbaa !102
  %i.dc = and i16 %i.db, 8
  %.not219.10 = icmp eq i16 %i.dc, 0
  %spec.select.10 = select i1 %.not219.10, i8 95, i8 %i.cy
  %i.dd = getelementptr inbounds nuw i8, ptr %i.u, i64 10
  store i8 %spec.select.10, ptr %i.dd, align 1, !tbaa !8
  %i.de = load ptr, ptr %i.t, align 8, !tbaa !100
  %i.df = getelementptr inbounds nuw i8, ptr %i.v, i64 11
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !8   ; 2 uses
  %i.dh = sext i8 %i.dg to i64
  %i.di = getelementptr inbounds [2 x i8], ptr %i.de, i64 %i.dh
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !102
  %i.dk = and i16 %i.dj, 8
  %.not219.11 = icmp eq i16 %i.dk, 0
  %spec.select.11 = select i1 %.not219.11, i8 95, i8 %i.dg
  %i.dl = getelementptr inbounds nuw i8, ptr %i.u, i64 11
  store i8 %spec.select.11, ptr %i.dl, align 1, !tbaa !8
  %i.dm = load ptr, ptr %i.t, align 8, !tbaa !100
  %i.dn = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !8   ; 2 uses
  %i.dp = sext i8 %i.do to i64
  %i.dq = getelementptr inbounds [2 x i8], ptr %i.dm, i64 %i.dp
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !102
  %i.ds = and i16 %i.dr, 8
  %.not219.12 = icmp eq i16 %i.ds, 0
  %spec.select.12 = select i1 %.not219.12, i8 95, i8 %i.do
  %i.dt = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i8 %spec.select.12, ptr %i.dt, align 1, !tbaa !8
  %i.du = load ptr, ptr %i.t, align 8, !tbaa !100
  %i.dv = getelementptr inbounds nuw i8, ptr %i.v, i64 13
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !8   ; 2 uses
  %i.dx = sext i8 %i.dw to i64
  %i.dy = getelementptr inbounds [2 x i8], ptr %i.du, i64 %i.dx
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !102
  %i.ea = and i16 %i.dz, 8
  %.not219.13 = icmp eq i16 %i.ea, 0
  %spec.select.13 = select i1 %.not219.13, i8 95, i8 %i.dw
  %i.eb = getelementptr inbounds nuw i8, ptr %i.u, i64 13
  store i8 %spec.select.13, ptr %i.eb, align 1, !tbaa !8
  %i.ec = load ptr, ptr %i.t, align 8, !tbaa !100
  %i.ed = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !8   ; 2 uses
  %i.ef = sext i8 %i.ee to i64
  %i.eg = getelementptr inbounds [2 x i8], ptr %i.ec, i64 %i.ef
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !102
  %i.ei = and i16 %i.eh, 8
  %.not219.14 = icmp eq i16 %i.ei, 0
  %spec.select.14 = select i1 %.not219.14, i8 95, i8 %i.ee
  %i.ej = getelementptr inbounds nuw i8, ptr %i.u, i64 14
  store i8 %spec.select.14, ptr %i.ej, align 1, !tbaa !8
  %i.ek = load ptr, ptr %i.t, align 8, !tbaa !100
  %i.el = getelementptr inbounds nuw i8, ptr %i.v, i64 15
  %i.em = load i8, ptr %i.el, align 1, !tbaa !8   ; 2 uses
  %i.en = sext i8 %i.em to i64
  %i.eo = getelementptr inbounds [2 x i8], ptr %i.ek, i64 %i.en
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !102
  %i.eq = and i16 %i.ep, 8
  %.not219.15 = icmp eq i16 %i.eq, 0
  %spec.select.15 = select i1 %.not219.15, i8 95, i8 %i.em
  %i.er = getelementptr inbounds nuw i8, ptr %i.u, i64 15
  store i8 %spec.select.15, ptr %i.er, align 1, !tbaa !8
  %i.es = load ptr, ptr %i.t, align 8, !tbaa !100
  %i.et = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !8   ; 2 uses
  %i.ev = sext i8 %i.eu to i64
  %i.ew = getelementptr inbounds [2 x i8], ptr %i.es, i64 %i.ev
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !102
  %i.ey = and i16 %i.ex, 8
end_hunk_6
begin_hunk_7_@veryfastsupg_double_outtree:bb.a
  %i.nb = getelementptr inbounds nuw i8, ptr %.2183264, i64 4 ; 2 uses
  store i32 %i.mz, ptr %.2183264, align 4, !tbaa !4
  %i.nc = load i32, ptr %i.na, align 4, !tbaa !4  ; 2 uses
  %.not212 = icmp eq i32 %i.nc, -1
  br i1 %.not212, label %.preheader223.loopexit, label %.lr.ph267, !llvm.loop !194

.lr.ph272:                                        ; preds = %.preheader223, %.lr.ph272
  %i.nd = phi i32 [ %i.ng, %.lr.ph272 ], [ %i.my, %.preheader223 ]
  %.3180271 = phi ptr [ %i.ne, %.lr.ph272 ], [ %.222, %.preheader223 ]
  %.3184270 = phi ptr [ %i.nf, %.lr.ph272 ], [ %.2183.lcssa, %.preheader223 ] ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.3180271, i64 4 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.3184270, i64 4 ; 2 uses
  store i32 %i.nd, ptr %.3184270, align 4, !tbaa !4
  %i.ng = load i32, ptr %i.ne, align 4, !tbaa !4  ; 2 uses
  %.not213 = icmp eq i32 %i.ng, -1
  br i1 %.not213, label %._crit_edge273, label %.lr.ph272, !llvm.loop !195

._crit_edge273:                                   ; preds = %.lr.ph272, %.preheader223
  %.3184.lcssa = phi ptr [ %.2183.lcssa, %.preheader223 ], [ %i.nf, %.lr.ph272 ]
  store i32 -1, ptr %.3184.lcssa, align 4, !tbaa !4
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge273, %bb.n
  %i.nh = load ptr, ptr @veryfastsupg_double_outtree.tmptmplen, align 8, !tbaa !52 ; 2 uses
  %i.ni = getelementptr inbounds [8 x i8], ptr %i.nh, i64 %i.lh ; 2 uses
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !24
  %i.nk = fsub double %.0174.lcssa, %i.nj
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv303 ; 2 uses
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !52 ; 2 uses
  store double %i.nk, ptr %i.nm, align 8, !tbaa !24
  %i.nn = getelementptr inbounds [8 x i8], ptr %i.nh, i64 %i.mi
  %i.no = load double, ptr %i.nn, align 8, !tbaa !24
  %i.np = fsub double %.0174.lcssa, %i.no
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  store double %i.np, ptr %i.nq, align 8, !tbaa !24
  store double %.0174.lcssa, ptr %i.ni, align 8, !tbaa !24
  store i32 %i.ki, ptr %i.li, align 4, !tbaa !4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.u
  %i.nr = phi ptr [ %i.kn, %bb.p ], [ %i.oe, %bb.u ]
  %.5275 = phi i32 [ 0, %bb.p ], [ %i.oh, %bb.u ] ; 8 uses
  %.not216 = icmp eq i32 %.5275, %.1171.lcssa
  %.not217 = icmp eq i32 %.5275, %.1169.lcssa
  %or.cond = select i1 %.not216, i1 true, i1 %.not217
  br i1 %or.cond, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ns = icmp slt i32 %.5275, %.1171.lcssa
  br i1 %i.ns, label %._crit_edge314, label %bb.s

._crit_edge314:                                   ; preds = %bb.r
  %.pre315 = sext i32 %.5275 to i64               ; 2 uses
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  %.5..1169 = tail call i32 @llvm.smin.i32(i32 %.5275, i32 %.1169.lcssa)
  %.1169..5 = tail call i32 @llvm.smax.i32(i32 %.5275, i32 %.1169.lcssa)
  %.pre310 = sext i32 %.5275 to i64
  %.pre311 = sext i32 %.1169..5 to i64
  %.pre317 = sext i32 %.5..1169 to i64
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge314, %bb.s
  %.pre-phi318 = phi i64 [ %.pre315, %._crit_edge314 ], [ %.pre317, %bb.s ]
  %.pre-phi316 = phi i64 [ %.pre315, %._crit_edge314 ], [ %i.lh, %bb.s ]
  %.pre-phi312 = phi i64 [ %i.mi, %._crit_edge314 ], [ %.pre311, %bb.s ]
  %.pre-phi = phi i64 [ %i.lh, %._crit_edge314 ], [ %.pre310, %bb.s ] ; 2 uses
  %i.nt = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi316 ; 2 uses
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !52
  %i.nv = getelementptr inbounds [8 x i8], ptr %i.nu, i64 %.pre-phi
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !24
  %i.nx = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi318
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !52
  %i.nz = getelementptr inbounds [8 x i8], ptr %i.ny, i64 %.pre-phi312
  %i.oa = load double, ptr %i.nz, align 8, !tbaa !24
  %i.ob = tail call double %.sroa.0.0(double noundef %i.nw, double noundef %i.oa) #33, !callees !196
  %i.oc = load ptr, ptr %i.nt, align 8, !tbaa !52
  %i.od = getelementptr inbounds [8 x i8], ptr %i.oc, i64 %.pre-phi
  store double %i.ob, ptr %i.od, align 8, !tbaa !24
  %.pre313 = load ptr, ptr @veryfastsupg_double_outtree.ac, align 8, !tbaa !164
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %bb.t
  %i.oe = phi ptr [ %i.nr, %bb.q ], [ %.pre313, %bb.t ] ; 5 uses
  %i.of = sext i32 %.5275 to i64
  %i.og = getelementptr inbounds [8 x i8], ptr %i.oe, i64 %i.of
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !168 ; 2 uses
  %.not214 = icmp eq i32 %i.oh, -1
  br i1 %.not214, label %bb.v, label %bb.q, !llvm.loop !197

bb.v:                                             ; preds = %bb.u
  %i.oi = getelementptr inbounds [8 x i8], ptr %i.oe, i64 %i.mi ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 4
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !170 ; 2 uses
  %i.ol = load i32, ptr %i.oi, align 4, !tbaa !168 ; 3 uses
  %i.om = sext i32 %i.ok to i64
  %i.on = getelementptr inbounds [8 x i8], ptr %i.oe, i64 %i.om
  store i32 %i.ol, ptr %i.on, align 4, !tbaa !168
  %.not215 = icmp eq i32 %i.ol, -1
  br i1 %.not215, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.oo = sext i32 %i.ol to i64
  %i.op = getelementptr inbounds [8 x i8], ptr %i.oe, i64 %i.oo
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 4
  store i32 %i.ok, ptr %i.oq, align 4, !tbaa !170
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.or = load ptr, ptr @veryfastsupg_double_outtree.treetmp, align 8, !tbaa !12
  %i.os = load ptr, ptr @veryfastsupg_double_outtree.tree, align 8, !tbaa !77 ; 2 uses
  %i.ot = getelementptr inbounds [8 x i8], ptr %i.os, i64 %i.lh
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !12
  %i.ov = load ptr, ptr %i.nl, align 8, !tbaa !52 ; 2 uses
  %i.ow = load double, ptr %i.ov, align 8, !tbaa !24
  %i.ox = getelementptr inbounds [8 x i8], ptr %i.os, i64 %i.mi
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !12
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %i.pa = load double, ptr %i.oz, align 8, !tbaa !24
  %i.pb = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.or, ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef %i.ou, double noundef %i.ow, ptr noundef %i.oy, double noundef %i.pa) #33 ; 0 uses
  %i.pc = load ptr, ptr @veryfastsupg_double_outtree.tree, align 8, !tbaa !77
  %i.pd = getelementptr inbounds [8 x i8], ptr %i.pc, i64 %i.lh
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !12
  %i.pf = load ptr, ptr @veryfastsupg_double_outtree.treetmp, align 8, !tbaa !12
  %i.pg = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.pe, ptr noundef nonnull dereferenceable(1) %i.pf) #33 ; 0 uses
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 1 ; 2 uses
  %exitcond307.not = icmp eq i64 %indvars.iv.next304, %wide.trip.count306
  br i1 %exitcond307.not, label %._crit_edge282, label %.lr.ph281, !llvm.loop !198

._crit_edge282:                                   ; preds = %bb.x, %._crit_edge238.thread, %._crit_edge238
  %i.ph = tail call noalias ptr @fopen(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) ; 2 uses
  %i.pi = load ptr, ptr @veryfastsupg_double_outtree.treetmp, align 8, !tbaa !12
  %i.pj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ph, ptr noundef nonnull @.str.4, ptr noundef %i.pi) #33 ; 0 uses
  %i.pk = tail call i32 @fclose(ptr noundef %i.ph) ; 0 uses
  %i.pl = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc208 = tail call i32 @fputc(i32 10, ptr %i.pl) ; 0 uses
  %i.pm = load ptr, ptr @veryfastsupg_double_outtree.tmptmplen, align 8, !tbaa !52
  tail call void @free(ptr noundef %i.pm) #33
  store ptr null, ptr @veryfastsupg_double_outtree.tmptmplen, align 8, !tbaa !52
  %i.pn = load ptr, ptr @veryfastsupg_double_outtree.hist, align 8, !tbaa !89
  tail call void @free(ptr noundef %i.pn) #33
  store ptr null, ptr @veryfastsupg_double_outtree.hist, align 8, !tbaa !89
  %i.po = load ptr, ptr @veryfastsupg_double_outtree.ac, align 8, !tbaa !164
  tail call void @free(ptr noundef %i.po) #33
  store ptr null, ptr @veryfastsupg_double_outtree.ac, align 8, !tbaa !164
  %i.pp = load ptr, ptr @veryfastsupg_double_outtree.tree, align 8, !tbaa !77
  tail call void @FreeCharMtx(ptr noundef %i.pp) #33
  %i.pq = load ptr, ptr @veryfastsupg_double_outtree.treetmp, align 8, !tbaa !12
  tail call void @free(ptr noundef %i.pq) #33
  %i.pr = load ptr, ptr @veryfastsupg_double_outtree.nametmp, align 8, !tbaa !12
  tail call void @free(ptr noundef %i.pr) #33
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
define dso_local void @veryfastsupg(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #12 {
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
  %4 = load i32, ptr @njob, align 4, !tbaa !4
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 3
  %i.j = tail call noalias ptr @malloc(i64 noundef %6) #34
  store ptr %i.j, ptr @veryfastsupg.ac, align 8, !tbaa !164
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = icmp sgt i32 %0, 0
  br i1 %i.k, label %.preheader208.lr.ph, label %._crit_edge218.thread

.preheader208.lr.ph:                              ; preds = %bb.c
  %i.l = load ptr, ptr @veryfastsupg.eff, align 8
  %wide.trip.count271 = zext nneg i32 %0 to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %0, 4
  %n.vec = and i64 %wide.trip.count271, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count271
  br label %.preheader208

.preheader208:                                    ; preds = %.preheader208.lr.ph, %._crit_edge
  %indvars.iv268 = phi i64 [ 0, %.preheader208.lr.ph ], [ %indvars.iv.next269, %._crit_edge ] ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv268
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !52   ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv268
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !89   ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader208, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader208 ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <2 x double>, ptr %i.q, align 8, !tbaa !24
  %wide.load324 = load <2 x double>, ptr %i.r, align 8, !tbaa !24
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> splat (double 1.000000e+06), <2 x double> splat (double 5.000000e-01))
  %i.t = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load324, <2 x double> splat (double 1.000000e+06), <2 x double> splat (double 5.000000e-01))
  %i.u = fptosi <2 x double> %i.s to <2 x i32>
  %i.v = fptosi <2 x double> %i.t to <2 x i32>
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store <2 x i32> %i.u, ptr %i.w, align 4, !tbaa !4
  store <2 x i32> %i.v, ptr %i.x, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !199

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader208, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader208 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader207:                                    ; preds = %._crit_edge
  %.pre = load ptr, ptr @veryfastsupg.ac, align 8, !tbaa !164 ; 4 uses
  %wide.trip.count276 = zext nneg i32 %0 to i64
  %min.iters.check326 = icmp ult i32 %0, 4
  br i1 %min.iters.check326, label %scalar.ph325.preheader, label %vector.ph327

vector.ph327:                                     ; preds = %.preheader207
  %n.vec328 = and i64 %wide.trip.count271, 2147483644 ; 3 uses
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph327
  %index330 = phi i64 [ 0, %vector.ph327 ], [ %index.next334, %vector.body329 ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph327 ], [ %vec.ind.next, %vector.body329 ] ; 3 uses
  %vec.ind331 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph327 ], [ %vec.ind.next335, %vector.body329 ] ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index330
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index330
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.ad = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.ae = shufflevector <2 x i32> %i.ac, <2 x i32> %vec.ind331, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec = add <4 x i32> %i.ae, <i32 1, i32 -1, i32 1, i32 -1>
  store <4 x i32> %interleaved.vec, ptr %i.z, align 4, !tbaa !4
  %i.af = shufflevector <2 x i32> %i.ad, <2 x i32> %vec.ind331, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec333 = add <4 x i32> %i.af, <i32 3, i32 1, i32 3, i32 1>
  store <4 x i32> %interleaved.vec333, ptr %i.ab, align 4, !tbaa !4
  %index.next334 = add nuw i64 %index330, 4       ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %vec.ind.next335 = add <2 x i32> %vec.ind331, splat (i32 4)
  %i.ag = icmp eq i64 %index.next334, %n.vec328
  br i1 %i.ag, label %middle.block336, label %vector.body329, !llvm.loop !200

middle.block336:                                  ; preds = %vector.body329
  %cmp.n337 = icmp eq i64 %n.vec328, %wide.trip.count271
  br i1 %cmp.n337, label %._crit_edge218, label %scalar.ph325.preheader

scalar.ph325.preheader:                           ; preds = %.preheader207, %middle.block336
  %indvars.iv273.ph = phi i64 [ 0, %.preheader207 ], [ %n.vec328, %middle.block336 ]
  br label %scalar.ph325

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !24
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ai, double 1.000000e+06, double 5.000000e-01)
  %i.ak = fptosi double %i.aj to i32
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count271
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !201

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1 ; 2 uses
  %exitcond272.not = icmp eq i64 %indvars.iv.next269, %wide.trip.count271
  br i1 %exitcond272.not, label %.preheader207, label %.preheader208, !llvm.loop !202

scalar.ph325:                                     ; preds = %scalar.ph325.preheader, %scalar.ph325
  %indvars.iv273 = phi i64 [ %indvars.iv.next274, %scalar.ph325 ], [ %indvars.iv273.ph, %scalar.ph325.preheader ] ; 3 uses
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv273 ; 2 uses
  %i.an = trunc nuw nsw i64 %indvars.iv.next274 to i32
  store i32 %i.an, ptr %i.am, align 4, !tbaa !168
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ap = trunc i64 %indvars.iv273 to i32
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !170
  %exitcond277.not = icmp eq i64 %indvars.iv.next274, %wide.trip.count276
  br i1 %exitcond277.not, label %._crit_edge218, label %scalar.ph325, !llvm.loop !203

._crit_edge218.thread:                            ; preds = %bb.c
  %.pre311 = load ptr, ptr @veryfastsupg.ac, align 8, !tbaa !164
  %i.ar = sext i32 %0 to i64
  %i.as = getelementptr [8 x i8], ptr %.pre311, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 -8
  store i32 -1, ptr %i.at, align 4, !tbaa !168
  %i.au = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc314 = tail call i32 @fputc(i32 10, ptr %i.au) ; 0 uses
  br label %._crit_edge218.._crit_edge263_crit_edge

._crit_edge218:                                   ; preds = %scalar.ph325, %middle.block336
  %i.av = add nsw i32 %0, -1                      ; 2 uses
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.aw
  store i32 -1, ptr %i.ax, align 4, !tbaa !168
  %i.ay = load ptr, ptr @veryfastsupg.tmptmplen, align 8, !tbaa !52
  %i.az = zext nneg i32 %0 to i64
  %i.ba = shl nuw nsw i64 %i.az, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ay, i8 0, i64 %i.ba, i1 false), !tbaa !24
  %i.bb = load ptr, ptr @veryfastsupg.hist, align 8, !tbaa !89
  %i.bc = zext nneg i32 %0 to i64
  %i.bd = shl nuw nsw i64 %i.bc, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bb, i8 -1, i64 %i.bd, i1 false), !tbaa !4
  %i.be = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %i.be) ; 0 uses
  %.not319 = icmp eq i32 %0, 1
  br i1 %.not319, label %._crit_edge218.._crit_edge263_crit_edge, label %.lr.ph262.preheader

._crit_edge218.._crit_edge263_crit_edge:          ; preds = %._crit_edge218.thread, %._crit_edge218
  %.pre294 = load ptr, ptr @veryfastsupg.eff, align 8, !tbaa !87
  br label %._crit_edge263

.lr.ph262.preheader:                              ; preds = %._crit_edge218
  %wide.trip.count287 = zext nneg i32 %i.av to i64
  br label %.lr.ph262

.lr.ph262:                                        ; preds = %.lr.ph262.preheader, %bb.t
  %indvars.iv284 = phi i64 [ 0, %.lr.ph262.preheader ], [ %indvars.iv.next285, %bb.t ] ; 4 uses
  %.0152260 = phi i32 [ -1, %.lr.ph262.preheader ], [ %.1153.lcssa, %bb.t ] ; 2 uses
  %.0154259 = phi i32 [ -1, %.lr.ph262.preheader ], [ %.1155.lcssa, %bb.t ] ; 2 uses
  %i.bf = trunc nuw nsw i64 %indvars.iv284 to i32 ; 3 uses
  %i.bg = urem i32 %i.bf, 10
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph262
  %i.bi = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bi, ptr noundef nonnull @.str.24, i32 noundef %i.bf, i32 noundef %0) #31 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph262
  %i.bk = load ptr, ptr @veryfastsupg.ac, align 8, !tbaa !164 ; 7 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !168 ; 2 uses
  %.not191223 = icmp eq i32 %i.bl, -1
  br i1 %.not191223, label %._crit_edge228, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.e
  %i.bm = load ptr, ptr @veryfastsupg.eff, align 8, !tbaa !87
  br label %.preheader

.loopexit:                                        ; preds = %bb.f
  %i.bn = sext i32 %i.bq to i64                   ; 2 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !168 ; 2 uses
  %.not191 = icmp eq i32 %i.bp, -1
  br i1 %.not191, label %._crit_edge228.loopexit, label %.preheader, !llvm.loop !204

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %i.bq = phi i32 [ %i.bl, %.preheader.lr.ph ], [ %i.bp, %.loopexit ] ; 3 uses
  %i.br = phi i64 [ 0, %.preheader.lr.ph ], [ %i.bn, %.loopexit ]
  %.1153227 = phi i32 [ %.0152260, %.preheader.lr.ph ], [ %.3, %.loopexit ]
  %.1155226 = phi i32 [ %.0154259, %.preheader.lr.ph ], [ %.3157, %.loopexit ]
  %.0158225 = phi i32 [ 4000000, %.preheader.lr.ph ], [ %.2160, %.loopexit ]
  %.4224 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.bq, %.loopexit ]
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !89
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %bb.f
  %.2222 = phi i32 [ %.1153227, %.preheader ], [ %.3, %bb.f ]
  %.2156221 = phi i32 [ %.1155226, %.preheader ], [ %.3157, %bb.f ]
  %.1159220 = phi i32 [ %.0158225, %.preheader ], [ %.2160, %bb.f ] ; 2 uses
  %.1175219 = phi i32 [ %i.bq, %.preheader ], [ %i.bz, %bb.f ] ; 2 uses
end_hunk_7
