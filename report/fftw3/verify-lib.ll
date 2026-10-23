Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/verify-lib?download=true
inline.NumInlined: 53
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 32
begin_hunk_0_@linear:bb.a
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !18
  %i.fr = fadd double %i.fo, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store double %i.fr, ptr %i.fs, align 8, !tbaa !18
  %indvars.iv.next.i83.us = add nuw nsw i64 %indvars.iv.i82.us, 1 ; 3 uses
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next.i83.us ; 2 uses
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !18
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv.next.i83.us ; 2 uses
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !18
  %i.fx = fadd double %i.fu, %i.fw
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv.next.i83.us ; 2 uses
  store double %i.fx, ptr %i.fy, align 8, !tbaa !18
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !18
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !18
  %i.gd = fadd double %i.ga, %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store double %i.gd, ptr %i.ge, align 8, !tbaa !18
  %indvars.iv.next.i83.us.1 = add nuw nsw i64 %indvars.iv.i82.us, 2 ; 2 uses
  %exitcond.not.i84.us.1 = icmp eq i64 %indvars.iv.next.i83.us.1, %wide.trip.count.i
  br i1 %exitcond.not.i84.us.1, label %aadd.exit85.loopexit.us, label %.lr.ph.i81.us, !llvm.loop !153

aadd.exit85.loopexit.us:                          ; preds = %.lr.ph.i81.us.prol.loopexit, %.lr.ph.i81.us, %middle.block
  %i.gf = load ptr, ptr %0, align 8, !tbaa !29
  tail call void %i.gf(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %8) #13
  %i.gg = tail call double @acmp(ptr noundef %8, ptr noundef nonnull %9, i32 noundef %2, ptr noundef nonnull @.str.2, double noundef %11) ; 2 uses
  %i.gh = fcmp ogt double %.0100.us, %i.gg
  %i.gi = select i1 %i.gh, double %.0100.us, double %i.gg ; 2 uses
  %i.gj = add nuw nsw i32 %.04299.us, 1           ; 2 uses
  %exitcond110.not = icmp eq i32 %i.gj, %10
  br i1 %exitcond110.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !154

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not, label %aadd.exit85.critedge.us, label %.critedge

aadd.exit85.critedge.us:                          ; preds = %.lr.ph.split, %aadd.exit85.critedge.us
  %.0100.us101 = phi double [ %i.gt, %aadd.exit85.critedge.us ], [ 0.000000e+00, %.lr.ph.split ] ; 2 uses
  %.04299.us102 = phi i32 [ %i.gu, %aadd.exit85.critedge.us ], [ 0, %.lr.ph.split ]
  %i.gk = tail call double @drand48() #13         ; 0 uses
  %i.gl = tail call double @drand48() #13         ; 0 uses
  %i.gm = tail call double @drand48() #13         ; 0 uses
  %i.gn = tail call double @drand48() #13         ; 0 uses
  %i.go = load ptr, ptr %0, align 8, !tbaa !29
  tail call void %i.go(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %6) #13
  %i.gp = load ptr, ptr %0, align 8, !tbaa !29
  tail call void %i.gp(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %7) #13
  %i.gq = load ptr, ptr %0, align 8, !tbaa !29
  tail call void %i.gq(ptr noundef nonnull %0, ptr noundef %5, ptr noundef %8) #13
  %i.gr = tail call double @acmp(ptr noundef %8, ptr noundef %9, i32 noundef %2, ptr noundef nonnull @.str.2, double noundef %11) ; 2 uses
  %i.gs = fcmp ogt double %.0100.us101, %i.gr
  %i.gt = select i1 %i.gs, double %.0100.us101, double %i.gr ; 2 uses
  %i.gu = add nuw nsw i32 %.04299.us102, 1        ; 2 uses
  %exitcond109.not = icmp eq i32 %i.gu, %10
  br i1 %exitcond109.not, label %._crit_edge, label %aadd.exit85.critedge.us, !llvm.loop !154

.critedge:                                        ; preds = %.lr.ph.split, %.critedge
  %.0100 = phi double [ %i.hc, %.critedge ], [ 0.000000e+00, %.lr.ph.split ] ; 2 uses
  %.04299 = phi i32 [ %i.hd, %.critedge ], [ 0, %.lr.ph.split ]
  %i.gv = tail call double @drand48() #13         ; 0 uses
  %i.gw = tail call double @drand48() #13         ; 0 uses
  %i.gx = load ptr, ptr %0, align 8, !tbaa !29
  tail call void %i.gx(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %6) #13
  %i.gy = load ptr, ptr %0, align 8, !tbaa !29
  tail call void %i.gy(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %7) #13
  %i.gz = load ptr, ptr %0, align 8, !tbaa !29
  tail call void %i.gz(ptr noundef nonnull %0, ptr noundef %5, ptr noundef %8) #13
  %i.ha = tail call double @acmp(ptr noundef %8, ptr noundef %9, i32 noundef %2, ptr noundef nonnull @.str.2, double noundef %11) ; 2 uses
  %i.hb = fcmp ogt double %.0100, %i.ha
  %i.hc = select i1 %i.hb, double %.0100, double %i.ha ; 2 uses
  %i.hd = add nuw nsw i32 %.04299, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.hd, %10
  br i1 %exitcond.not, label %._crit_edge, label %.critedge, !llvm.loop !154

._crit_edge:                                      ; preds = %.critedge, %aadd.exit85.critedge.us, %aadd.exit85.loopexit.us, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.gi, %aadd.exit85.loopexit.us ], [ %i.gt, %aadd.exit85.critedge.us ], [ %i.hc, %.critedge ]
  ret double %.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local double @tf_shift(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, double noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr nofree noundef captures(none) %10, i32 noundef %11, double noundef %12, i32 noundef %13) local_unnamed_addr #1 {
bb.a:
  %i.a = mul nsw i32 %4, %3                       ; 5 uses
  %i.b = load i32, ptr %2, align 8, !tbaa !31
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph249, label %._crit_edge250

.lr.ph249:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = icmp sgt i32 %11, 0
  %i.f = icmp sgt i32 %i.a, 0                     ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.a to i64  ; 3 uses
  %i.g = icmp eq i32 %13, 0
  %i.h = icmp sgt i32 %4, 0                       ; 2 uses
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  %i.i = fneg double %5
  %i.j = icmp slt i32 %4, 1                       ; 2 uses
  %i.k = icmp sgt i32 %i.a, 300                   ; 2 uses
  %i.l = icmp sgt i32 %3, 0
  %wide.trip.count.i116 = zext i32 %3 to i64      ; 2 uses
  br i1 %i.e, label %.lr.ph242.us.preheader, label %._crit_edge250

.lr.ph242.us.preheader:                           ; preds = %.lr.ph249
  %i.m = sext i32 %3 to i64                       ; 10 uses
  %wide.trip.count = zext nneg i32 %4 to i64
  %wide.trip.count271 = zext nneg i32 %4 to i64
  %wide.trip.count276 = zext nneg i32 %4 to i64
  %wide.trip.count281 = zext nneg i32 %4 to i64
  %i.n = shl nsw i64 %i.m, 4
  %i.o = shl nsw i64 %i.m, 4
  %i.p = shl nsw i64 %i.m, 4
  %i.q = shl nsw i64 %i.m, 4
  %i.r = shl nsw i64 %i.m, 4
  %i.s = shl nsw i64 %i.m, 4
  %xtraiter504 = and i64 %wide.trip.count.i116, 7 ; 3 uses
  %i.t = icmp ult i32 %3, 8
  %unroll_iter508 = and i64 %wide.trip.count.i116, 2147483640
  %lcmp.mod506.not = icmp eq i64 %xtraiter504, 0
  %lcmp.mod507 = icmp ne i64 %xtraiter504, 0
  br label %.lr.ph242.us

.lr.ph242.us:                                     ; preds = %.lr.ph242.us.preheader, %._crit_edge243.us
  %indvars.iv284 = phi i64 [ 0, %.lr.ph242.us.preheader ], [ %indvars.iv.next285, %._crit_edge243.us ] ; 2 uses
  %.0247.us = phi double [ 0.000000e+00, %.lr.ph242.us.preheader ], [ %i.ach, %._crit_edge243.us ]
  %.0110245.us = phi i32 [ %3, %.lr.ph242.us.preheader ], [ %i.x, %._crit_edge243.us ]
  %.0111244.us = phi i32 [ 1, %.lr.ph242.us.preheader ], [ %i.acj, %._crit_edge243.us ] ; 6 uses
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %indvars.iv284
  %i.w = load i32, ptr %i.v, align 4, !tbaa !22   ; 21 uses
  %i.x = sdiv i32 %.0110245.us, %i.w              ; 23 uses
  %i.y = sitofp i32 %i.w to double
  %i.z = fdiv nnan double f0x401921FB54442D18, %i.y ; 12 uses
  %i.aa = icmp sgt i32 %.0111244.us, 0            ; 2 uses
  %i.ab = icmp sgt i32 %i.w, 0
  %or.cond.i135.us = and i1 %i.aa, %i.ab
  %i.ac = icmp sgt i32 %i.x, 0                    ; 6 uses
  %i.ad = zext i32 %i.x to i64                    ; 72 uses
  %i.ae = zext i32 %i.w to i64                    ; 12 uses
  %wide.trip.count58.i144.us = zext i32 %.0111244.us to i64 ; 10 uses
  %i.af = icmp slt i32 %.0111244.us, 1            ; 2 uses
  %i.ag = icmp sgt i32 %i.w, 1                    ; 2 uses
  %i.ah = add i32 %i.w, -1                        ; 9 uses
  %i.ai = sext i32 %i.w to i64                    ; 6 uses
  %wide.trip.count69.i175.us = zext i32 %i.ah to i64 ; 4 uses
  %i.aj = icmp slt i32 %i.w, 1
  %or.cond.i.us.not258 = or i1 %i.af, %i.aj
  %brmerge = select i1 %i.j, i1 true, i1 %i.af
  %brmerge255 = select i1 %i.j, i1 true, i1 %or.cond.i.us.not258
  %i.ak = shl nuw nsw i64 %i.ae, 4
  %i.al = mul i64 %i.ak, %i.ad                    ; 2 uses
  %i.am = shl nuw nsw i64 %i.ad, 4
  %i.an = mul i32 %i.x, %i.ah
  %i.ao = mul i32 %i.w, %i.x
  %i.ap = shl nuw nsw i64 %wide.trip.count58.i144.us, 4
  %i.aq = add nsw i64 %i.ap, -16
  %i.ar = mul i64 %i.aq, %i.ae
  %i.as = add i64 %i.ar, 16
  %i.at = mul i64 %i.as, %i.ad
  %i.au = shl nuw nsw i64 %i.ae, 4
  %i.av = mul i64 %i.au, %i.ad
  %i.aw = shl nuw nsw i64 %i.ad, 4
  %i.ax = shl nuw nsw i64 %wide.trip.count69.i175.us, 4 ; 2 uses
  %i.ay = shl nuw nsw i64 %i.ad, 4
  %i.az = add nuw nsw i64 %i.ax, 16
  %i.ba = shl nuw nsw i64 %i.ad, 4
  %i.bb = mul i32 %i.x, %i.ah
  %i.bc = mul i32 %i.w, %i.x
  %i.bd = shl nuw nsw i64 %wide.trip.count58.i144.us, 4
  %i.be = add nsw i64 %i.bd, -16
  %i.bf = mul i64 %i.be, %i.ai
  %i.bg = add i64 %i.bf, 16
  %i.bh = mul i64 %i.bg, %i.ad
  %i.bi = shl nsw i64 %i.ai, 4
  %i.bj = mul i64 %i.bi, %i.ad
  %i.bk = shl nuw nsw i64 %i.ad, 4
  %i.bl = mul i32 %i.x, %i.ah
  %i.bm = mul i32 %i.w, %i.x
  %i.bn = shl nuw nsw i64 %wide.trip.count58.i144.us, 4
  %i.bo = add nsw i64 %i.bn, -16
  %i.bp = mul i64 %i.bo, %i.ae
  %i.bq = add i64 %i.bp, 16
  %i.br = mul i64 %i.bq, %i.ad
  %i.bs = shl nuw nsw i64 %i.ae, 4
  %i.bt = mul i64 %i.bs, %i.ad
  %i.bu = shl nuw nsw i64 %i.ad, 4
  %i.bv = shl nuw nsw i64 %wide.trip.count69.i175.us, 4 ; 2 uses
  %i.bw = shl nuw nsw i64 %i.ad, 4
  %i.bx = add nuw nsw i64 %i.bv, 16
  %i.by = shl nuw nsw i64 %i.ad, 4
  %i.bz = mul i32 %i.x, %i.ah
  %i.ca = mul i32 %i.w, %i.x
  %i.cb = shl nuw nsw i64 %wide.trip.count58.i144.us, 4
  %i.cc = add nsw i64 %i.cb, -16
  %i.cd = mul i64 %i.cc, %i.ai
  %i.ce = add i64 %i.cd, 16
  %i.cf = mul i64 %i.ce, %i.ad
  %i.cg = shl nsw i64 %i.ai, 4
  %i.ch = mul i64 %i.cg, %i.ad
  %i.ci = shl nuw nsw i64 %i.ae, 4
  %i.cj = mul i64 %i.ci, %i.ad                    ; 2 uses
  %14 = add i32 %i.w, -1
  %xtraiter = and i32 %i.w, 3                     ; 3 uses
  %i.ck = icmp ult i32 %i.w, 4
  %unroll_iter = and i32 %i.w, 2147483644
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod493 = icmp ne i32 %xtraiter, 0
  %min.iters.check464 = icmp eq i32 %i.x, 1
  %n.vec466 = and i64 %i.ad, 2147483646           ; 3 uses
  %cmp.n484 = icmp eq i64 %n.vec466, %i.ad
  %xtraiter494 = and i64 %i.ad, 1
  %lcmp.mod495.not = icmp eq i64 %xtraiter494, 0
  %i.cl = add nsw i64 %i.ad, -1
  %i.cm = getelementptr i8, ptr %10, i64 %i.by
  %i.cn = getelementptr i8, ptr %9, i64 %i.cf
  %i.co = getelementptr i8, ptr %10, i64 %i.bk
  %i.cp = getelementptr i8, ptr %9, i64 %i.br
  %min.iters.check444 = icmp ult i32 %i.x, 4
  %stride.check442 = icmp slt i64 %i.ch, 0
  %n.vec446 = and i64 %i.ad, 2147483646           ; 3 uses
  %cmp.n453 = icmp eq i64 %n.vec446, %i.ad
  %min.iters.check424 = icmp ult i32 %i.x, 4
  %n.vec426 = and i64 %i.ad, 2147483646           ; 3 uses
  %cmp.n433 = icmp eq i64 %n.vec426, %i.ad
  %min.iters.check404 = icmp ult i32 %i.x, 4
  %stride.check402 = icmp slt i64 %i.bt, 0
  %n.vec406 = and i64 %i.ad, 2147483646           ; 3 uses
  %cmp.n413 = icmp eq i64 %n.vec406, %i.ad
  %i.cq = getelementptr i8, ptr %7, i64 %i.ba
  %i.cr = getelementptr i8, ptr %6, i64 %i.bh
  %i.cs = getelementptr i8, ptr %7, i64 %i.am
  %i.ct = getelementptr i8, ptr %6, i64 %i.at
  %min.iters.check384 = icmp ult i32 %i.x, 4
  %stride.check382 = icmp slt i64 %i.bj, 0
  %n.vec386 = and i64 %i.ad, 2147483646           ; 3 uses
  %cmp.n393 = icmp eq i64 %n.vec386, %i.ad
  %min.iters.check364 = icmp ult i32 %i.x, 4
  %n.vec366 = and i64 %i.ad, 2147483646           ; 3 uses
  %cmp.n373 = icmp eq i64 %n.vec366, %i.ad
  %min.iters.check345 = icmp ult i32 %i.x, 4
  %stride.check = icmp slt i64 %i.av, 0
  %n.vec347 = and i64 %i.ad, 2147483646           ; 3 uses
  %cmp.n353 = icmp eq i64 %n.vec347, %i.ad
  %xtraiter520 = and i32 %i.w, 3                  ; 3 uses
  %i.cu = icmp ult i32 %14, 3
  %unroll_iter524 = and i32 %i.w, 2147483644
  %lcmp.mod522.not = icmp eq i32 %xtraiter520, 0
  %lcmp.mod523 = icmp ne i32 %xtraiter520, 0
  %min.iters.check = icmp eq i32 %i.x, 1
  %n.vec = and i64 %i.ad, 2147483646              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ad
  %xtraiter526 = and i64 %i.ad, 1
  %lcmp.mod527.not = icmp eq i64 %xtraiter526, 0
  %i.cv = add nsw i64 %i.ad, -1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph242.us, %acmp.exit212.us
  %.1240.us = phi double [ %.0247.us, %.lr.ph242.us ], [ %i.ach, %acmp.exit212.us ] ; 2 uses
  %.0105239.us = phi i32 [ 0, %.lr.ph242.us ], [ %i.aci, %acmp.exit212.us ]
  br i1 %i.f, label %.lr.ph.i.us, label %arand.exit.us

.lr.ph.i.us:                                      ; preds = %bb.b, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %.lr.ph.i.us ], [ 0, %bb.b ] ; 2 uses
  %i.cw = tail call double @drand48() #13
  %i.cx = fadd double %i.cw, -5.000000e-01
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %indvars.iv.i.us ; 2 uses
  store double %i.cx, ptr %i.cy, align 8, !tbaa !18
  %i.cz = tail call double @drand48() #13
  %i.da = fadd double %i.cz, -5.000000e-01
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store double %i.da, ptr %i.db, align 8, !tbaa !18
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %arand.exit.us, label %.lr.ph.i.us, !llvm.loop !0

arand.exit.us:                                    ; preds = %.lr.ph.i.us, %bb.b
  br i1 %i.g, label %.preheader.us, label %.preheader223.us

.lr.ph.us:                                        ; preds = %.preheader223.us, %aphase_shift.exit158.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %aphase_shift.exit158.us ], [ 0, %.preheader223.us ] ; 3 uses
  %i.dc = mul i64 %i.s, %indvars.iv               ; 2 uses
  %i.dd = add i64 %i.cj, %i.dc
  %.pre287 = mul nsw i64 %indvars.iv, %i.m        ; 3 uses
  br i1 %.not, label %.lr.ph.us._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph.us
  %i.de = getelementptr inbounds [16 x i8], ptr %6, i64 %.pre287
  %i.df = load i32, ptr %2, align 8, !tbaa !31
  %i.dg = load ptr, ptr %i.d, align 8, !tbaa !32
  tail call void @mkhermitian(ptr noundef %i.de, i32 noundef %i.df, ptr noundef %i.dg, i32 noundef 1)
  br label %.lr.ph.us._crit_edge

.lr.ph.us._crit_edge:                             ; preds = %.lr.ph.us, %bb.c
  %i.dh = getelementptr inbounds [16 x i8], ptr %7, i64 %.pre287 ; 4 uses
  %i.di = getelementptr inbounds [16 x i8], ptr %6, i64 %.pre287 ; 4 uses
  br i1 %or.cond.i135.us, label %.preheader.lr.ph.split.i136.us, label %aphase_shift.exit158.us

.preheader.lr.ph.split.i136.us:                   ; preds = %.lr.ph.us._crit_edge
  br i1 %i.ac, label %.preheader.us.i145.us, label %.preheader.i137.us

.preheader.i137.us:                               ; preds = %.preheader.lr.ph.split.i136.us, %._crit_edge42.split.i141.us
  %.03643.i138.us = phi i32 [ %i.en, %._crit_edge42.split.i141.us ], [ 0, %.preheader.lr.ph.split.i136.us ]
  br i1 %i.ck, label %.epil.preheader, label %.preheader.i137.us.new

.preheader.i137.us.new:                           ; preds = %.preheader.i137.us, %cdce.end218.us.3
  %.040.i139.us = phi i32 [ %i.eg, %cdce.end218.us.3 ], [ 0, %.preheader.i137.us ] ; 5 uses
  %niter = phi i32 [ %niter.next.3, %cdce.end218.us.3 ], [ 0, %.preheader.i137.us ]
  %i.dj = uitofp nneg i32 %.040.i139.us to double
  %i.dk = fmul double %i.z, %i.dj
  %i.dl = fcmp oeq double %i.dk, +inf
  br i1 %i.dl, label %cdce.call217.us, label %cdce.end218.us, !prof !218

cdce.call217.us:                                  ; preds = %.preheader.i137.us.new
  %i.dm = tail call double @sin(double noundef +inf) #13 ; 0 uses
  %i.dn = tail call double @cos(double noundef +inf) #13 ; 0 uses
  br label %cdce.end218.us

cdce.end218.us:                                   ; preds = %.preheader.i137.us.new, %cdce.call217.us
  %i.do = or disjoint i32 %.040.i139.us, 1
  %i.dp = uitofp nneg i32 %i.do to double
  %i.dq = fmul nnan double %i.z, %i.dp
  %i.dr = fcmp oeq double %i.dq, +inf
  br i1 %i.dr, label %cdce.call217.us.1, label %cdce.end218.us.1, !prof !218

cdce.call217.us.1:                                ; preds = %cdce.end218.us
  %i.ds = tail call double @sin(double noundef +inf) #13 ; 0 uses
  %i.dt = tail call double @cos(double noundef +inf) #13 ; 0 uses
  br label %cdce.end218.us.1

cdce.end218.us.1:                                 ; preds = %cdce.call217.us.1, %cdce.end218.us
  %i.du = or disjoint i32 %.040.i139.us, 2
  %i.dv = uitofp nneg i32 %i.du to double
  %i.dw = fmul nnan double %i.z, %i.dv
  %i.dx = fcmp oeq double %i.dw, +inf
  br i1 %i.dx, label %cdce.call217.us.2, label %cdce.end218.us.2, !prof !218

cdce.call217.us.2:                                ; preds = %cdce.end218.us.1
  %i.dy = tail call double @sin(double noundef +inf) #13 ; 0 uses
  %i.dz = tail call double @cos(double noundef +inf) #13 ; 0 uses
  br label %cdce.end218.us.2

cdce.end218.us.2:                                 ; preds = %cdce.call217.us.2, %cdce.end218.us.1
  %i.ea = or disjoint i32 %.040.i139.us, 3
  %i.eb = uitofp nneg i32 %i.ea to double
  %i.ec = fmul nnan double %i.z, %i.eb
  %i.ed = fcmp oeq double %i.ec, +inf
  br i1 %i.ed, label %cdce.call217.us.3, label %cdce.end218.us.3, !prof !218

cdce.call217.us.3:                                ; preds = %cdce.end218.us.2
  %i.ee = tail call double @sin(double noundef +inf) #13 ; 0 uses
  %i.ef = tail call double @cos(double noundef +inf) #13 ; 0 uses
  br label %cdce.end218.us.3

cdce.end218.us.3:                                 ; preds = %cdce.call217.us.3, %cdce.end218.us.2
  %i.eg = add nuw nsw i32 %.040.i139.us, 4        ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge42.split.i141.us.unr-lcssa, label %.preheader.i137.us.new, !llvm.loop !4

._crit_edge42.split.i141.us.unr-lcssa:            ; preds = %cdce.end218.us.3
  br i1 %lcmp.mod.not, label %._crit_edge42.split.i141.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge42.split.i141.us.unr-lcssa, %.preheader.i137.us
  %.040.i139.us.epil.init = phi i32 [ 0, %.preheader.i137.us ], [ %i.eg, %._crit_edge42.split.i141.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod493)
  br label %bb.d

bb.d:                                             ; preds = %cdce.end218.us.epil, %.epil.preheader
  %.040.i139.us.epil = phi i32 [ %.040.i139.us.epil.init, %.epil.preheader ], [ %i.em, %cdce.end218.us.epil ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %cdce.end218.us.epil ]
  %i.eh = uitofp nneg i32 %.040.i139.us.epil to double
  %i.ei = fmul double %i.z, %i.eh
  %i.ej = fcmp oeq double %i.ei, +inf
  br i1 %i.ej, label %cdce.call217.us.epil, label %cdce.end218.us.epil, !prof !218

cdce.call217.us.epil:                             ; preds = %bb.d
  %i.ek = tail call double @sin(double noundef +inf) #13 ; 0 uses
  %i.el = tail call double @cos(double noundef +inf) #13 ; 0 uses
  br label %cdce.end218.us.epil

cdce.end218.us.epil:                              ; preds = %cdce.call217.us.epil, %bb.d
  %i.em = add nuw nsw i32 %.040.i139.us.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge42.split.i141.us, label %bb.d, !llvm.loop !163

._crit_edge42.split.i141.us:                      ; preds = %cdce.end218.us.epil, %._crit_edge42.split.i141.us.unr-lcssa
  %i.en = add nuw nsw i32 %.03643.i138.us, 1      ; 2 uses
  %exitcond47.not.i142.us = icmp eq i32 %i.en, %.0111244.us
  br i1 %exitcond47.not.i142.us, label %aphase_shift.exit158.us, label %.preheader.i137.us, !llvm.loop !5

.preheader.us.i145.us:                            ; preds = %.preheader.lr.ph.split.i136.us, %._crit_edge42.split.us.us.i155.us
  %indvars.iv55.i146.us = phi i64 [ %indvars.iv.next56.i156.us, %._crit_edge42.split.us.us.i155.us ], [ 0, %.preheader.lr.ph.split.i136.us ] ; 3 uses
  %i.eo = mul i64 %i.cj, %indvars.iv55.i146.us    ; 2 uses
  %i.ep = add i64 %i.dc, %i.eo                    ; 2 uses
  %scevgep456 = getelementptr i8, ptr %7, i64 %i.ep
  %i.eq = add i64 %i.dd, %i.eo                    ; 2 uses
  %scevgep457 = getelementptr i8, ptr %7, i64 %i.eq
  %scevgep458 = getelementptr i8, ptr %6, i64 %i.ep
  %scevgep459 = getelementptr i8, ptr %6, i64 %i.eq
  %i.er = mul nuw nsw i64 %indvars.iv55.i146.us, %i.ae
  %bound0460 = icmp ult ptr %scevgep456, %scevgep459
  %bound1461 = icmp ult ptr %scevgep458, %scevgep457
  %found.conflict462 = and i1 %bound0460, %bound1461
  br label %.lr.ph.us.us.i147.us

.lr.ph.us.us.i147.us:                             ; preds = %._crit_edge.us.us.i152.us, %.preheader.us.i145.us
  %indvars.iv50.i148.us = phi i64 [ %indvars.iv.next51.i153.us, %._crit_edge.us.us.i152.us ], [ 0, %.preheader.us.i145.us ] ; 3 uses
  %i.es = trunc nuw nsw i64 %indvars.iv50.i148.us to i32
  %i.et = uitofp nneg i32 %i.es to double
  %i.eu = fmul double %i.z, %i.et                 ; 2 uses
  %i.ev = tail call double @sin(double noundef %i.eu) #13
  %i.ew = fmul double %i.ev, %i.i                 ; 5 uses
  %i.ex = tail call double @cos(double noundef %i.eu) #13 ; 7 uses
  %i.ey = add nuw nsw i64 %indvars.iv50.i148.us, %i.er
  %i.ez = mul nuw nsw i64 %i.ey, %i.ad            ; 4 uses
  %i.fa = fneg double %i.ew                       ; 4 uses
  %brmerge535 = select i1 %min.iters.check464, i1 true, i1 %found.conflict462
  br i1 %brmerge535, label %scalar.ph463.preheader, label %vector.ph465

vector.ph465:                                     ; preds = %.lr.ph.us.us.i147.us
  %broadcast.splatinsert467 = insertelement <2 x double> poison, double %i.ew, i64 0
  %broadcast.splat468 = shufflevector <2 x double> %broadcast.splatinsert467, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert469 = insertelement <2 x double> poison, double %i.ex, i64 0
  %broadcast.splat470 = shufflevector <2 x double> %broadcast.splatinsert469, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert471 = insertelement <2 x double> poison, double %i.fa, i64 0
  %broadcast.splat472 = shufflevector <2 x double> %broadcast.splatinsert471, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body473

vector.body473:                                   ; preds = %vector.body473, %vector.ph465
  %index474 = phi i64 [ 0, %vector.ph465 ], [ %index.next482, %vector.body473 ] ; 2 uses
  %i.fb = add nuw nsw i64 %index474, %i.ez        ; 2 uses
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.di, i64 %i.fb
  %wide.vec475 = load <4 x double>, ptr %i.fc, align 8, !tbaa !18, !alias.scope !219 ; 4 uses
  %strided.vec476 = shufflevector <4 x double> %wide.vec475, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec477 = shufflevector <4 x double> %wide.vec475, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.fd = fmul <2 x double> %strided.vec477, %broadcast.splat472
  %i.fe = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec476, <2 x double> %broadcast.splat470, <2 x double> %i.fd)
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.fb
  %strided.vec479 = shufflevector <4 x double> %wide.vec475, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec480 = shufflevector <4 x double> %wide.vec475, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.fg = fmul <2 x double> %broadcast.splat470, %strided.vec480
  %i.fh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec479, <2 x double> %broadcast.splat468, <2 x double> %i.fg)
  %interleaved.vec481 = shufflevector <2 x double> %i.fe, <2 x double> %i.fh, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec481, ptr %i.ff, align 8, !tbaa !18, !alias.scope !220, !noalias !219
end_hunk_0
