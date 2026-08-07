inline.NumInlined: 100
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 36
begin_hunk_0_@cvStep:bb.a
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.preheader104.i
  %indvars.iv.i = phi i64 [ %i.fd, %.preheader104.i ], [ %indvars.iv.next.i, %bb.k ] ; 3 uses
  %i.fe = getelementptr [8 x i8], ptr %i.bi, i64 %indvars.iv.i ; 2 uses
  %i.ff = getelementptr i8, ptr %i.fe, i64 -8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !46 ; 2 uses
  %i.fh = load ptr, ptr %i.fe, align 8, !tbaa !46
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.fg, double noundef 1.000000e+00, ptr noundef %i.fh, ptr noundef %i.fg) #12
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not94.not.i = icmp sgt i64 %indvars.iv.i, %indvars.iv124.i
  br i1 %.not94.not.i, label %bb.k, label %bb.l, !llvm.loop !297

bb.l:                                             ; preds = %bb.k
  %indvars.iv.next125.i = add nuw nsw i64 %indvars.iv124.i, 1
  %i.fi = load i32, ptr %i.bg, align 8, !tbaa !84 ; 5 uses
  %i.fj = sext i32 %i.fi to i64
  %.not84.not.i = icmp slt i64 %indvars.iv124.i, %i.fj
  br i1 %.not84.not.i, label %.preheader104.i, label %._crit_edge.i, !llvm.loop !298

._crit_edge.i:                                    ; preds = %bb.l
  %i.fk = load i32, ptr %i.bj, align 8, !tbaa !122
  %.not85.i = icmp eq i32 %i.fk, 0
  %.not86109.i = icmp slt i32 %i.fi, 1
  %or.cond.i = or i1 %.not86109.i, %.not85.i
  br i1 %or.cond.i, label %.loopexit103.i, label %.preheader101.i

.preheader101.i:                                  ; preds = %._crit_edge.i, %bb.n
  %indvars.iv130.i = phi i64 [ %indvars.iv.next131.i, %bb.n ], [ 1, %._crit_edge.i ] ; 3 uses
  %i.fl = phi i32 [ %i.fr, %bb.n ], [ %i.fi, %._crit_edge.i ]
  %i.fm = sext i32 %i.fl to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader101.i
  %indvars.iv127.i = phi i64 [ %i.fm, %.preheader101.i ], [ %indvars.iv.next128.i, %bb.m ] ; 3 uses
  %i.fn = getelementptr [8 x i8], ptr %i.bk, i64 %indvars.iv127.i ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 -8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !46 ; 2 uses
  %i.fq = load ptr, ptr %i.fn, align 8, !tbaa !46
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.fp, double noundef 1.000000e+00, ptr noundef %i.fq, ptr noundef %i.fp) #12
  %indvars.iv.next128.i = add nsw i64 %indvars.iv127.i, -1
  %.not93.not.i = icmp sgt i64 %indvars.iv127.i, %indvars.iv130.i
  br i1 %.not93.not.i, label %bb.m, label %bb.n, !llvm.loop !299

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next131.i = add nuw nsw i64 %indvars.iv130.i, 1
  %i.fr = load i32, ptr %i.bg, align 8, !tbaa !84 ; 3 uses
  %i.fs = sext i32 %i.fr to i64
  %.not86.not.i = icmp slt i64 %indvars.iv130.i, %i.fs
  br i1 %.not86.not.i, label %.preheader101.i, label %.loopexit103.i, !llvm.loop !300

.loopexit103.i:                                   ; preds = %bb.n, %bb.j, %._crit_edge.i
  %i.ft = phi i32 [ %i.fi, %._crit_edge.i ], [ %i.fb, %bb.j ], [ %i.fr, %bb.n ] ; 4 uses
  %i.fu = load i32, ptr %i.u, align 8, !tbaa !144
  %.not87.i = icmp eq i32 %i.fu, 0
  br i1 %.not87.i, label %.loopexit100.i, label %.preheader99.i

.preheader99.i:                                   ; preds = %.loopexit103.i
  %i.fv = load i32, ptr %i.bl, align 4, !tbaa !130 ; 2 uses
  %i.fw = icmp slt i32 %i.fv, 1
  %i.fx = icmp slt i32 %i.ft, 1
  %or.cond444 = or i1 %i.fw, %i.fx
  br i1 %or.cond444, label %.loopexit100.i, label %.preheader98.i

.preheader98.i:                                   ; preds = %.preheader99.i, %._crit_edge114.i
  %i.fy = phi i32 [ %i.gm, %._crit_edge114.i ], [ %i.fv, %.preheader99.i ]
  %i.fz = phi i32 [ %i.gn, %._crit_edge114.i ], [ %i.ft, %.preheader99.i ] ; 3 uses
  %indvars.iv139.i = phi i64 [ %indvars.iv.next140.i, %._crit_edge114.i ], [ 0, %.preheader99.i ] ; 3 uses
  %.not91112.i = icmp slt i32 %i.fz, 1
  br i1 %.not91112.i, label %._crit_edge114.i, label %.preheader97.i

.preheader97.i:                                   ; preds = %.preheader98.i, %bb.p
  %indvars.iv136.i = phi i64 [ %indvars.iv.next137.i, %bb.p ], [ 1, %.preheader98.i ] ; 3 uses
  %i.ga = phi i32 [ %i.gk, %bb.p ], [ %i.fz, %.preheader98.i ]
  %i.gb = sext i32 %i.ga to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.preheader97.i
  %indvars.iv133.i = phi i64 [ %i.gb, %.preheader97.i ], [ %indvars.iv.next134.i, %bb.o ] ; 3 uses
  %i.gc = getelementptr [8 x i8], ptr %i.bm, i64 %indvars.iv133.i ; 2 uses
  %i.gd = getelementptr i8, ptr %i.gc, i64 -8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !134
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv139.i
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !46 ; 2 uses
  %i.gh = load ptr, ptr %i.gc, align 8, !tbaa !134
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv139.i
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !46
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.gg, double noundef 1.000000e+00, ptr noundef %i.gj, ptr noundef %i.gg) #12
  %indvars.iv.next134.i = add nsw i64 %indvars.iv133.i, -1
  %.not92.not.i = icmp sgt i64 %indvars.iv133.i, %indvars.iv136.i
  br i1 %.not92.not.i, label %bb.o, label %bb.p, !llvm.loop !301

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next137.i = add nuw nsw i64 %indvars.iv136.i, 1
  %i.gk = load i32, ptr %i.bg, align 8, !tbaa !84 ; 3 uses
  %i.gl = sext i32 %i.gk to i64
  %.not91.not.i = icmp slt i64 %indvars.iv136.i, %i.gl
  br i1 %.not91.not.i, label %.preheader97.i, label %._crit_edge114.loopexit.i, !llvm.loop !302

._crit_edge114.loopexit.i:                        ; preds = %bb.p
  %.pre.i = load i32, ptr %i.bl, align 4, !tbaa !130
  br label %._crit_edge114.i

._crit_edge114.i:                                 ; preds = %._crit_edge114.loopexit.i, %.preheader98.i
  %i.gm = phi i32 [ %.pre.i, %._crit_edge114.loopexit.i ], [ %i.fy, %.preheader98.i ] ; 2 uses
  %i.gn = phi i32 [ %i.gk, %._crit_edge114.loopexit.i ], [ %i.fz, %.preheader98.i ] ; 2 uses
  %indvars.iv.next140.i = add nuw nsw i64 %indvars.iv139.i, 1 ; 2 uses
  %i.go = sext i32 %i.gm to i64
  %i.gp = icmp slt i64 %indvars.iv.next140.i, %i.go
  br i1 %i.gp, label %.preheader98.i, label %.loopexit100.i, !llvm.loop !303

.loopexit100.i:                                   ; preds = %._crit_edge114.i, %.preheader99.i, %.loopexit103.i
  %i.gq = phi i32 [ %i.ft, %.preheader99.i ], [ %i.ft, %.loopexit103.i ], [ %i.gn, %._crit_edge114.i ] ; 4 uses
  %i.gr = load i32, ptr %i.bn, align 8, !tbaa !186
  %.not88.i = icmp eq i32 %i.gr, 0
  br i1 %.not88.i, label %cvPredict.exit, label %.preheader96.i

.preheader96.i:                                   ; preds = %.loopexit100.i
  %i.gs = load i32, ptr %i.bl, align 4, !tbaa !130 ; 2 uses
  %i.gt = icmp slt i32 %i.gs, 1
  %i.gu = icmp slt i32 %i.gq, 1
  %or.cond445 = or i1 %i.gt, %i.gu
  br i1 %or.cond445, label %cvPredict.exit, label %.preheader95.i

.preheader95.i:                                   ; preds = %.preheader96.i, %._crit_edge119.i
  %i.gv = phi i32 [ %i.hj, %._crit_edge119.i ], [ %i.gs, %.preheader96.i ]
  %i.gw = phi i32 [ %i.hk, %._crit_edge119.i ], [ %i.gq, %.preheader96.i ] ; 3 uses
  %indvars.iv148.i = phi i64 [ %indvars.iv.next149.i, %._crit_edge119.i ], [ 0, %.preheader96.i ] ; 3 uses
  %.not89117.i = icmp slt i32 %i.gw, 1
  br i1 %.not89117.i, label %._crit_edge119.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader95.i, %bb.r
  %indvars.iv145.i = phi i64 [ %indvars.iv.next146.i, %bb.r ], [ 1, %.preheader95.i ] ; 3 uses
  %i.gx = phi i32 [ %i.hh, %bb.r ], [ %i.gw, %.preheader95.i ]
  %i.gy = sext i32 %i.gx to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.preheader.i
  %indvars.iv142.i = phi i64 [ %i.gy, %.preheader.i ], [ %indvars.iv.next143.i, %bb.q ] ; 3 uses
  %i.gz = getelementptr [8 x i8], ptr %i.bo, i64 %indvars.iv142.i ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gz, i64 -8
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !134
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %indvars.iv148.i
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !46 ; 2 uses
  %i.he = load ptr, ptr %i.gz, align 8, !tbaa !134
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %indvars.iv148.i
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !46
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.hd, double noundef 1.000000e+00, ptr noundef %i.hg, ptr noundef %i.hd) #12
  %indvars.iv.next143.i = add nsw i64 %indvars.iv142.i, -1
  %.not90.not.i = icmp sgt i64 %indvars.iv142.i, %indvars.iv145.i
  br i1 %.not90.not.i, label %bb.q, label %bb.r, !llvm.loop !305

bb.r:                                             ; preds = %bb.q
  %indvars.iv.next146.i = add nuw nsw i64 %indvars.iv145.i, 1
  %i.hh = load i32, ptr %i.bg, align 8, !tbaa !84 ; 3 uses
  %i.hi = sext i32 %i.hh to i64
  %.not89.not.i = icmp slt i64 %indvars.iv145.i, %i.hi
  br i1 %.not89.not.i, label %.preheader.i, label %._crit_edge119.loopexit.i, !llvm.loop !306

._crit_edge119.loopexit.i:                        ; preds = %bb.r
  %.pre151.i = load i32, ptr %i.bl, align 4, !tbaa !130
  br label %._crit_edge119.i

._crit_edge119.i:                                 ; preds = %._crit_edge119.loopexit.i, %.preheader95.i
  %i.hj = phi i32 [ %.pre151.i, %._crit_edge119.loopexit.i ], [ %i.gv, %.preheader95.i ] ; 2 uses
  %i.hk = phi i32 [ %i.hh, %._crit_edge119.loopexit.i ], [ %i.gw, %.preheader95.i ] ; 2 uses
  %indvars.iv.next149.i = add nuw nsw i64 %indvars.iv148.i, 1 ; 2 uses
  %i.hl = sext i32 %i.hj to i64
  %i.hm = icmp slt i64 %indvars.iv.next149.i, %i.hl
  br i1 %i.hm, label %.preheader95.i, label %cvPredict.exit, !llvm.loop !307

cvPredict.exit:                                   ; preds = %._crit_edge119.i, %.loopexit100.i, %.preheader96.i
  %i.hn = phi i32 [ %i.gq, %.preheader96.i ], [ %i.gq, %.loopexit100.i ], [ %i.hk, %._crit_edge119.i ] ; 22 uses
  %i.ho = load i32, ptr %i.bp, align 8, !tbaa !8
  switch i32 %i.ho, label %bb.ab [
    i32 1, label %bb.s
    i32 2, label %bb.x
  ]

bb.s:                                             ; preds = %cvPredict.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  %i.hp = icmp eq i32 %i.hn, 1
  br i1 %i.hp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store double 1.000000e+00, ptr %i.br, align 8, !tbaa !49
  store <2 x double> splat (double 1.000000e+00), ptr %i.bt, align 8, !tbaa !49
  store <2 x double> <double 1.000000e+00, double 5.000000e-01>, ptr %i.bv, align 8, !tbaa !49
  store double f0x3FB5555555555555, ptr %i.bx, align 8, !tbaa !49
  %i.hq = load double, ptr %i.by, align 8, !tbaa !30
  %i.hr = fmul double %i.hq, 2.000000e+00
  br label %cvSetAdams.exit.i

bb.u:                                             ; preds = %bb.s
  %i.hs = load double, ptr %i.be, align 8, !tbaa !229 ; 4 uses
  store double 1.000000e+00, ptr %i.i, align 16, !tbaa !49
  %.not37.i.i.i = icmp slt i32 %i.hn, 1
  br i1 %.not37.i.i.i, label %cvAltSum.exit28.thread.i.i, label %.lr.ph42.split.preheader.i.i.i

.lr.ph42.split.preheader.i.i.i:                   ; preds = %bb.u
  %i.ht = zext nneg i32 %i.hn to i64              ; 7 uses
  %i.hu = shl nuw nsw i64 %i.ht, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.i.i.i, i8 0, i64 %i.hu, i1 false), !tbaa !49
  %i.hv = add nsw i32 %i.hn, -1                   ; 3 uses
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.hv to i64 ; 3 uses
  %i.hw = uitofp nneg i32 %i.hn to double
  %i.hx = getelementptr [8 x i8], ptr %i.i, i64 %i.ht
  %i.hy = getelementptr i8, ptr %i.hx, i64 -16
  %xtraiter = and i64 %wide.trip.count.i.i.i.i, 1
  %i.hz = icmp eq i32 %i.hv, 1
  %unroll_iter = and i64 %wide.trip.count.i.i.i.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1039 = trunc i32 %i.hv to i1
  br label %.lr.ph42.split.i.i.i

.lr.ph42.split.i.i.i:                             ; preds = %.loopexit943, %.lr.ph42.split.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 1, %.lr.ph42.split.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %.loopexit943 ] ; 9 uses
  %.03440.i.i.i = phi double [ %i.hs, %.lr.ph42.split.preheader.i.i.i ], [ %i.kh, %.loopexit943 ] ; 2 uses
  %i.ia = icmp eq i64 %indvars.iv.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %i.ia, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph42.split.i.i.i
  %i.ib = load i32, ptr %i.bu, align 4, !tbaa !86
  %i.ic = icmp eq i32 %i.ib, 1
  br i1 %i.ic, label %.preheader.i.i.i.i.preheader, label %bb.w

.preheader.i.i.i.i.preheader:                     ; preds = %bb.v
  br i1 %i.hz, label %.preheader.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.preheader, %.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.1, %.preheader.i.i.i.i ], [ 0, %.preheader.i.i.i.i.preheader ] ; 4 uses
  %.018.i.i.i.i = phi double [ %i.iq, %.preheader.i.i.i.i ], [ 0.000000e+00, %.preheader.i.i.i.i.preheader ]
  %niter = phi i64 [ %niter.next.1, %.preheader.i.i.i.i ], [ 0, %.preheader.i.i.i.i.preheader ]
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i.i.i.i
  %i.ie = load double, ptr %i.id, align 16, !tbaa !49
  %i.if = trunc i64 %indvars.iv.i.i.i.i to i32
  %i.ig = add i32 %i.if, 2
  %i.ih = uitofp nneg i32 %i.ig to double
  %i.ii = fdiv double %i.ie, %i.ih
  %i.ij = fadd double %i.ii, %.018.i.i.i.i
  %indvars.iv.next.i.i.i.i = or disjoint i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i.i.i.i
  %i.il = load double, ptr %i.ik, align 8, !tbaa !49
  %i.im = trunc i64 %indvars.iv.next.i.i.i.i to i32
  %i.in = add i32 %i.im, 2
  %i.io = uitofp nneg i32 %i.in to double
  %i.ip = fdiv double %i.il, %i.io
  %i.iq = fsub double %i.ij, %i.ip                ; 3 uses
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %cvAltSum.exit.loopexit.i.i.i.unr-lcssa, label %.preheader.i.i.i.i, !llvm.loop !308

cvAltSum.exit.loopexit.i.i.i.unr-lcssa:           ; preds = %.preheader.i.i.i.i
  br i1 %lcmp.mod.not, label %cvAltSum.exit.loopexit.i.i.i, label %.preheader.i.i.i.i.epil.preheader

.preheader.i.i.i.i.epil.preheader:                ; preds = %cvAltSum.exit.loopexit.i.i.i.unr-lcssa, %.preheader.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.1, %cvAltSum.exit.loopexit.i.i.i.unr-lcssa ] ; 2 uses
  %.018.i.i.i.i.epil.init = phi double [ 0.000000e+00, %.preheader.i.i.i.i.preheader ], [ %i.iq, %cvAltSum.exit.loopexit.i.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1039)
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i.i.i.i.epil.init
  %i.is = load double, ptr %i.ir, align 8, !tbaa !49
  %i.it = trunc i64 %indvars.iv.i.i.i.i.epil.init to i32
  %i.iu = add i32 %i.it, 2
  %i.iv = uitofp nneg i32 %i.iu to double
  %i.iw = fdiv double %i.is, %i.iv
  %i.ix = fadd double %i.iw, %.018.i.i.i.i.epil.init
  br label %cvAltSum.exit.loopexit.i.i.i

cvAltSum.exit.loopexit.i.i.i:                     ; preds = %cvAltSum.exit.loopexit.i.i.i.unr-lcssa, %.preheader.i.i.i.i.epil.preheader
  %.lcssa978 = phi double [ %i.iq, %cvAltSum.exit.loopexit.i.i.i.unr-lcssa ], [ %i.ix, %.preheader.i.i.i.i.epil.preheader ]
  %i.iy = fmul double %.lcssa978, %i.hw
  %i.iz = load double, ptr %i.hy, align 8, !tbaa !49
  %i.ja = fdiv double %i.iy, %i.iz
  store double %i.ja, ptr %i.bv, align 8, !tbaa !49
  br label %bb.w

bb.w:                                             ; preds = %cvAltSum.exit.loopexit.i.i.i, %bb.v, %.lr.ph42.split.i.i.i
  %i.jb = fdiv double %i.hs, %.03440.i.i.i        ; 4 uses
  %min.iters.check861 = icmp samesign ult i64 %indvars.iv.i.i.i, 4
  br i1 %min.iters.check861, label %scalar.ph860, label %vector.ph862

vector.ph862:                                     ; preds = %bb.w
  %n.vec864 = and i64 %indvars.iv.i.i.i, 9223372036854775804 ; 2 uses
  %i.jc = and i64 %indvars.iv.i.i.i, 3
  %broadcast.splatinsert865 = insertelement <2 x double> poison, double %i.jb, i64 0 ; 2 uses
  %i.jd = shufflevector <2 x double> %broadcast.splatinsert865, <2 x double> poison, <2 x i32> zeroinitializer
  %i.je = shufflevector <2 x double> %broadcast.splatinsert865, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body867

vector.body867:                                   ; preds = %vector.body867, %vector.ph862
  %index868 = phi i64 [ 0, %vector.ph862 ], [ %index.next879, %vector.body867 ] ; 2 uses
  %i.jf = sub i64 %indvars.iv.i.i.i, %index868
  %i.jg = getelementptr [8 x i8], ptr %i.i, i64 %i.jf ; 4 uses
  %i.jh = getelementptr i8, ptr %i.jg, i64 -16
  %i.ji = getelementptr i8, ptr %i.jg, i64 -32
  %wide.load869 = load <2 x double>, ptr %i.jh, align 8, !tbaa !49
  %wide.load870 = load <2 x double>, ptr %i.ji, align 8, !tbaa !49
  %i.jj = getelementptr i8, ptr %i.jg, i64 -8     ; 2 uses
  %i.jk = getelementptr i8, ptr %i.jg, i64 -24    ; 2 uses
  %wide.load873 = load <2 x double>, ptr %i.jj, align 8, !tbaa !49
  %wide.load874 = load <2 x double>, ptr %i.jk, align 8, !tbaa !49
  %reverse877 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load869, <2 x double> %i.jd, <2 x double> %wide.load873)
  %reverse878 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load870, <2 x double> %i.je, <2 x double> %wide.load874)
  store <2 x double> %reverse877, ptr %i.jj, align 8, !tbaa !49
  store <2 x double> %reverse878, ptr %i.jk, align 8, !tbaa !49
  %index.next879 = add nuw i64 %index868, 4       ; 2 uses
  %i.jl = icmp eq i64 %index.next879, %n.vec864
  br i1 %i.jl, label %middle.block880, label %vector.body867, !llvm.loop !309

middle.block880:                                  ; preds = %vector.body867
  %cmp.n881 = icmp eq i64 %indvars.iv.i.i.i, %n.vec864
  br i1 %cmp.n881, label %.loopexit943, label %scalar.ph860

scalar.ph860:                                     ; preds = %middle.block880, %bb.w
  %indvars.iv47.i.i.i.ph = phi i64 [ %indvars.iv.i.i.i, %bb.w ], [ %i.jc, %middle.block880 ] ; 5 uses
  %i.jm = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv47.i.i.i.ph ; 3 uses
  %i.jn = getelementptr i8, ptr %i.jm, i64 -8
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !49
  %i.jp = load double, ptr %i.jm, align 8, !tbaa !49
  %i.jq = tail call double @llvm.fmuladd.f64(double %i.jo, double %i.jb, double %i.jp)
  store double %i.jq, ptr %i.jm, align 8, !tbaa !49
  %i.jr = icmp samesign ugt i64 %indvars.iv47.i.i.i.ph, 1
  br i1 %i.jr, label %scalar.ph860.1, label %.loopexit943

scalar.ph860.1:                                   ; preds = %scalar.ph860
  %i.js = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv47.i.i.i.ph ; 2 uses
  %i.jt = getelementptr i8, ptr %i.js, i64 -8     ; 2 uses
  %i.ju = getelementptr i8, ptr %i.js, i64 -16
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !49
  %i.jw = load double, ptr %i.jt, align 8, !tbaa !49
  %i.jx = tail call double @llvm.fmuladd.f64(double %i.jv, double %i.jb, double %i.jw)
  store double %i.jx, ptr %i.jt, align 8, !tbaa !49
  %i.jy = icmp eq i64 %indvars.iv47.i.i.i.ph, 3
  br i1 %i.jy, label %scalar.ph860.2, label %.loopexit943

scalar.ph860.2:                                   ; preds = %scalar.ph860.1
  %i.jz = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv47.i.i.i.ph ; 2 uses
  %i.ka = getelementptr i8, ptr %i.jz, i64 -16    ; 2 uses
  %i.kb = getelementptr i8, ptr %i.jz, i64 -24
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !49
  %i.kd = load double, ptr %i.ka, align 8, !tbaa !49
  %i.ke = tail call double @llvm.fmuladd.f64(double %i.kc, double %i.jb, double %i.kd)
  store double %i.ke, ptr %i.ka, align 8, !tbaa !49
  br label %.loopexit943

.loopexit943:                                     ; preds = %scalar.ph860, %scalar.ph860.1, %scalar.ph860.2, %middle.block880
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv.i.i.i
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !49
  %i.kh = fadd double %.03440.i.i.i, %i.kg        ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.ht
  br i1 %exitcond.not.i.i.i, label %.preheader.i15.i.i.preheader, label %.lr.ph42.split.i.i.i, !llvm.loop !310

.preheader.i15.i.i.preheader:                     ; preds = %.loopexit943
  %xtraiter1040 = and i64 %i.ht, 1
  %unroll_iter1044 = and i64 %i.ht, 2147483646
  br label %.preheader.i15.i.i

cvAltSum.exit28.thread.i.i:                       ; preds = %bb.u
  store double 1.000000e+00, ptr %i.bq, align 8, !tbaa !49
  br label %._crit_edge.i.i.i

.preheader.i15.i.i:                               ; preds = %.preheader.i15.i.i, %.preheader.i15.i.i.preheader
  %indvars.iv.i16.i.i = phi i64 [ 0, %.preheader.i15.i.i.preheader ], [ %indvars.iv.next.i17.i.i.1, %.preheader.i15.i.i ] ; 4 uses
  %.018.i.i.i = phi double [ 0.000000e+00, %.preheader.i15.i.i.preheader ], [ %i.kv, %.preheader.i15.i.i ]
  %niter1045 = phi i64 [ 0, %.preheader.i15.i.i.preheader ], [ %niter1045.next.1, %.preheader.i15.i.i ]
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i16.i.i
  %i.kj = load double, ptr %i.ki, align 16, !tbaa !49
  %i.kk = trunc i64 %indvars.iv.i16.i.i to i32
  %i.kl = or disjoint i32 %i.kk, 1
  %i.km = uitofp nneg i32 %i.kl to double
  %i.kn = fdiv double %i.kj, %i.km
  %i.ko = fadd double %i.kn, %.018.i.i.i
  %indvars.iv.next.i17.i.i = or disjoint i64 %indvars.iv.i16.i.i, 1 ; 2 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i17.i.i
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !49
  %i.kr = trunc i64 %indvars.iv.next.i17.i.i to i32
  %i.ks = add i32 %i.kr, 1
  %i.kt = uitofp nneg i32 %i.ks to double
  %i.ku = fdiv double %i.kq, %i.kt
  %i.kv = fsub double %i.ko, %i.ku                ; 3 uses
  %indvars.iv.next.i17.i.i.1 = add nuw nsw i64 %indvars.iv.i16.i.i, 2 ; 3 uses
  %niter1045.next.1 = add i64 %niter1045, 2       ; 2 uses
  %niter1045.ncmp.1 = icmp eq i64 %niter1045.next.1, %unroll_iter1044
  br i1 %niter1045.ncmp.1, label %.preheader.i21.i.i.preheader.unr-lcssa, label %.preheader.i15.i.i, !llvm.loop !308

.preheader.i21.i.i.preheader.unr-lcssa:           ; preds = %.preheader.i15.i.i
  %lcmp.mod1041.not = icmp eq i64 %xtraiter1040, 0
  br i1 %lcmp.mod1041.not, label %.preheader.i21.i.i.preheader, label %.preheader.i15.i.i.epil.preheader

.preheader.i15.i.i.epil.preheader:                ; preds = %.preheader.i21.i.i.preheader.unr-lcssa
  %lcmp.mod1043 = trunc i32 %i.hn to i1
  tail call void @llvm.assume(i1 %lcmp.mod1043)
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i17.i.i.1
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !49
  %i.ky = trunc i64 %indvars.iv.next.i17.i.i.1 to i32
  %i.kz = add i32 %i.ky, 1
  %i.la = uitofp nneg i32 %i.kz to double
  %i.lb = fdiv double %i.kx, %i.la
  %i.lc = fadd double %i.lb, %i.kv
  br label %.preheader.i21.i.i.preheader

.preheader.i21.i.i.preheader:                     ; preds = %.preheader.i21.i.i.preheader.unr-lcssa, %.preheader.i15.i.i.epil.preheader
  %.lcssa980 = phi double [ %i.kv, %.preheader.i21.i.i.preheader.unr-lcssa ], [ %i.lc, %.preheader.i15.i.i.epil.preheader ]
  %xtraiter1046 = and i64 %i.ht, 1
  %unroll_iter1050 = and i64 %i.ht, 2147483646
  br label %.preheader.i21.i.i

.preheader.i21.i.i:                               ; preds = %.preheader.i21.i.i, %.preheader.i21.i.i.preheader
  %indvars.iv.i22.i.i = phi i64 [ 0, %.preheader.i21.i.i.preheader ], [ %indvars.iv.next.i25.i.i.1, %.preheader.i21.i.i ] ; 4 uses
  %.018.i23.i.i = phi double [ 0.000000e+00, %.preheader.i21.i.i.preheader ], [ %i.lq, %.preheader.i21.i.i ]
  %niter1051 = phi i64 [ 0, %.preheader.i21.i.i.preheader ], [ %niter1051.next.1, %.preheader.i21.i.i ]
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i22.i.i
  %i.le = load double, ptr %i.ld, align 16, !tbaa !49
  %i.lf = trunc i64 %indvars.iv.i22.i.i to i32
  %i.lg = add i32 %i.lf, 2
  %i.lh = uitofp nneg i32 %i.lg to double
  %i.li = fdiv double %i.le, %i.lh
  %i.lj = fadd double %i.li, %.018.i23.i.i
  %indvars.iv.next.i25.i.i = or disjoint i64 %indvars.iv.i22.i.i, 1 ; 2 uses
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i25.i.i
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !49
  %i.lm = trunc i64 %indvars.iv.next.i25.i.i to i32
  %i.ln = add i32 %i.lm, 2
  %i.lo = uitofp nneg i32 %i.ln to double
  %i.lp = fdiv double %i.ll, %i.lo
  %i.lq = fsub double %i.lj, %i.lp                ; 3 uses
  %indvars.iv.next.i25.i.i.1 = add nuw nsw i64 %indvars.iv.i22.i.i, 2 ; 3 uses
  %niter1051.next.1 = add i64 %niter1051, 2       ; 2 uses
  %niter1051.ncmp.1 = icmp eq i64 %niter1051.next.1, %unroll_iter1050
  br i1 %niter1051.ncmp.1, label %cvAltSum.exit28.i.i.unr-lcssa, label %.preheader.i21.i.i, !llvm.loop !308

cvAltSum.exit28.i.i.unr-lcssa:                    ; preds = %.preheader.i21.i.i
  %lcmp.mod1047.not = icmp eq i64 %xtraiter1046, 0
  br i1 %lcmp.mod1047.not, label %cvAltSum.exit28.i.i, label %.preheader.i21.i.i.epil.preheader

.preheader.i21.i.i.epil.preheader:                ; preds = %cvAltSum.exit28.i.i.unr-lcssa
  %lcmp.mod1049 = trunc i32 %i.hn to i1
  tail call void @llvm.assume(i1 %lcmp.mod1049)
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i25.i.i.1
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !49
  %i.lt = trunc i64 %indvars.iv.next.i25.i.i.1 to i32
  %i.lu = add i32 %i.lt, 2
  %i.lv = uitofp nneg i32 %i.lu to double
  %i.lw = fdiv double %i.ls, %i.lv
  %i.lx = fadd double %i.lw, %i.lq
  br label %cvAltSum.exit28.i.i

cvAltSum.exit28.i.i:                              ; preds = %cvAltSum.exit28.i.i.unr-lcssa, %.preheader.i21.i.i.epil.preheader
  %.lcssa981 = phi double [ %i.lq, %cvAltSum.exit28.i.i.unr-lcssa ], [ %i.lx, %.preheader.i21.i.i.epil.preheader ]
  %i.ly = fdiv double 1.000000e+00, %.lcssa980    ; 4 uses
  store double 1.000000e+00, ptr %i.bq, align 8, !tbaa !49
  %i.lz = add nuw i32 %i.hn, 1
  %wide.trip.count.i29.i.i = zext i32 %i.lz to i64
  %i.ma = zext nneg i32 %i.hn to i64              ; 3 uses
  %n.vec850 = and i64 %i.ma, 2147483646           ; 2 uses
  %i.mb = or i64 %i.ma, 1
  %broadcast.splatinsert851 = insertelement <2 x double> poison, double %i.ly, i64 0
  %broadcast.splat852 = shufflevector <2 x double> %broadcast.splatinsert851, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body853

vector.body853:                                   ; preds = %vector.body853, %cvAltSum.exit28.i.i
  %index854 = phi i64 [ 0, %cvAltSum.exit28.i.i ], [ %index.next856, %vector.body853 ] ; 2 uses
  %vec.ind = phi <2 x i32> [ <i32 1, i32 2>, %cvAltSum.exit28.i.i ], [ %vec.ind.next, %vector.body853 ] ; 2 uses
  %i.mc = or disjoint i64 %index854, 1            ; 2 uses
  %i.md = getelementptr [8 x i8], ptr %i.i, i64 %i.mc
  %i.me = getelementptr i8, ptr %i.md, i64 -8
  %wide.load855 = load <2 x double>, ptr %i.me, align 16, !tbaa !49
  %i.mf = uitofp nneg <2 x i32> %vec.ind to <2 x double>
  %i.mg = fdiv <2 x double> %wide.load855, %i.mf
  %i.mh = fmul <2 x double> %broadcast.splat852, %i.mg
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.mc
  store <2 x double> %i.mh, ptr %i.mi, align 8, !tbaa !49
  %index.next856 = add nuw i64 %index854, 2       ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 2)
  %i.mj = icmp eq i64 %index.next856, %n.vec850
  br i1 %i.mj, label %middle.block857, label %vector.body853, !llvm.loop !311

middle.block857:                                  ; preds = %vector.body853
  %cmp.n858 = icmp eq i64 %n.vec850, %i.ma
  br i1 %cmp.n858, label %._crit_edge.i.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %middle.block857, %.lr.ph.i.i.i
  %indvars.iv.i30.i.i = phi i64 [ %indvars.iv.next.i31.i.i, %.lr.ph.i.i.i ], [ %i.mb, %middle.block857 ] ; 4 uses
  %i.mk = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv.i30.i.i
  %i.ml = getelementptr i8, ptr %i.mk, i64 -8
  %i.mm = load double, ptr %i.ml, align 8, !tbaa !49
  %i.mn = trunc nuw nsw i64 %indvars.iv.i30.i.i to i32
  %i.mo = uitofp nneg i32 %i.mn to double
  %i.mp = fdiv double %i.mm, %i.mo
  %i.mq = fmul double %i.ly, %i.mp
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.i30.i.i
  store double %i.mq, ptr %i.mr, align 8, !tbaa !49
  %indvars.iv.next.i31.i.i = add nuw nsw i64 %indvars.iv.i30.i.i, 1 ; 2 uses
  %exitcond.not.i32.i.i = icmp eq i64 %indvars.iv.next.i31.i.i, %wide.trip.count.i29.i.i
  br i1 %exitcond.not.i32.i.i, label %._crit_edge.i.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !312

._crit_edge.i.loopexit.i.i:                       ; preds = %.lr.ph.i.i.i, %middle.block857
  %i.ms = fmul double %i.ly, %.lcssa981
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.loopexit.i.i, %cvAltSum.exit28.thread.i.i
  %.034.lcssa.i57.i.i = phi double [ %i.hs, %cvAltSum.exit28.thread.i.i ], [ %i.kh, %._crit_edge.i.loopexit.i.i ]
  %i.mt = phi double [ +inf, %cvAltSum.exit28.thread.i.i ], [ %i.ly, %._crit_edge.i.loopexit.i.i ]
  %.014.i2747.i.i = phi double [ +qnan, %cvAltSum.exit28.thread.i.i ], [ %i.ms, %._crit_edge.i.loopexit.i.i ]
  %i.mu = fdiv double %.034.lcssa.i57.i.i, %i.hs  ; 3 uses
  %i.mv = fdiv double 1.000000e+00, %i.mu         ; 2 uses
  %i.mw = fdiv double %.014.i2747.i.i, %i.mu      ; 2 uses
  store double %i.mw, ptr %i.bs, align 8, !tbaa !49
  %i.mx = sext i32 %i.hn to i64
  %i.my = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.mx
  %i.mz = load double, ptr %i.my, align 8, !tbaa !49
  %i.na = fdiv double %i.mu, %i.mz
  store double %i.na, ptr %i.bt, align 8, !tbaa !49
  %i.nb = load i32, ptr %i.bu, align 4, !tbaa !86
  %i.nc = icmp eq i32 %i.nb, 1
  br i1 %i.nc, label %.preheader.i33.i.i, label %cvAdamsFinish.exit.i.i

.preheader.i33.i.i:                               ; preds = %._crit_edge.i.i.i
  %i.nd = icmp sgt i32 %i.hn, 0
  br i1 %i.nd, label %.lr.ph44.preheader.i.i.i, label %._crit_edge45.i.i.i

.lr.ph44.preheader.i.i.i:                         ; preds = %.preheader.i33.i.i
  %i.ne = zext nneg i32 %i.hn to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.hn, 4
  br i1 %min.iters.check, label %.lr.ph44.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph44.preheader.i.i.i
  %n.vec = and i64 %i.ne, 2147483644              ; 2 uses
  %i.nf = and i64 %i.ne, 3
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.mv, i64 0 ; 2 uses
  %i.ng = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nh = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ni = sub i64 %i.ne, %index
  %i.nj = getelementptr [8 x i8], ptr %i.i, i64 %i.ni ; 4 uses
  %i.nk = getelementptr i8, ptr %i.nj, i64 -16
  %i.nl = getelementptr i8, ptr %i.nj, i64 -32
  %wide.load = load <2 x double>, ptr %i.nk, align 8, !tbaa !49
  %wide.load838 = load <2 x double>, ptr %i.nl, align 8, !tbaa !49
  %i.nm = getelementptr i8, ptr %i.nj, i64 -8     ; 2 uses
  %i.nn = getelementptr i8, ptr %i.nj, i64 -24    ; 2 uses
  %wide.load840 = load <2 x double>, ptr %i.nm, align 8, !tbaa !49
  %wide.load841 = load <2 x double>, ptr %i.nn, align 8, !tbaa !49
  %reverse844 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %i.ng, <2 x double> %wide.load840)
  %reverse845 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load838, <2 x double> %i.nh, <2 x double> %wide.load841)
  store <2 x double> %reverse844, ptr %i.nm, align 8, !tbaa !49
  store <2 x double> %reverse845, ptr %i.nn, align 8, !tbaa !49
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.no = icmp eq i64 %index.next, %n.vec
  br i1 %i.no, label %middle.block, label %vector.body, !llvm.loop !313

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ne
  br i1 %cmp.n, label %.preheader.preheader.i.i.i.i, label %.lr.ph44.i.i.i.preheader

.lr.ph44.i.i.i.preheader:                         ; preds = %.lr.ph44.preheader.i.i.i, %middle.block
  %indvars.iv47.i41.i.i.ph = phi i64 [ %i.ne, %.lr.ph44.preheader.i.i.i ], [ %i.nf, %middle.block ]
  br label %.lr.ph44.i.i.i

.lr.ph44.i.i.i:                                   ; preds = %.lr.ph44.i.i.i.preheader, %.lr.ph44.i.i.i
  %indvars.iv47.i41.i.i = phi i64 [ %indvars.iv.next48.i42.i.i, %.lr.ph44.i.i.i ], [ %indvars.iv47.i41.i.i.ph, %.lr.ph44.i.i.i.preheader ] ; 3 uses
  %i.np = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv47.i41.i.i ; 3 uses
  %i.nq = getelementptr i8, ptr %i.np, i64 -8
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !49
  %i.ns = load double, ptr %i.np, align 8, !tbaa !49
  %i.nt = tail call double @llvm.fmuladd.f64(double %i.nr, double %i.mv, double %i.ns)
  store double %i.nt, ptr %i.np, align 8, !tbaa !49
  %indvars.iv.next48.i42.i.i = add nsw i64 %indvars.iv47.i41.i.i, -1
  %i.nu = icmp samesign ugt i64 %indvars.iv47.i41.i.i, 1
  br i1 %i.nu, label %.lr.ph44.i.i.i, label %.preheader.preheader.i.i.i.i, !llvm.loop !314

._crit_edge45.i.i.i:                              ; preds = %.preheader.i33.i.i
  %i.nv = icmp slt i32 %i.hn, 0
  br i1 %i.nv, label %cvAltSum.exit.i.i.i, label %.preheader.preheader.i.i.i.i

.preheader.preheader.i.i.i.i:                     ; preds = %.lr.ph44.i.i.i, %middle.block, %._crit_edge45.i.i.i
  %i.nw = add nuw i32 %i.hn, 1                    ; 2 uses
  %wide.trip.count.i.i34.i.i = zext i32 %i.nw to i64 ; 2 uses
  %xtraiter1052 = and i64 %wide.trip.count.i.i34.i.i, 1
  %i.nx = icmp eq i32 %i.hn, 0
  br i1 %i.nx, label %.preheader.i.i35.i.i.epil.preheader, label %.preheader.preheader.i.i.i.i.new

.preheader.preheader.i.i.i.i.new:                 ; preds = %.preheader.preheader.i.i.i.i
  %unroll_iter1056 = and i64 %wide.trip.count.i.i34.i.i, 4294967294
  br label %.preheader.i.i35.i.i

.preheader.i.i35.i.i:                             ; preds = %.preheader.i.i35.i.i, %.preheader.preheader.i.i.i.i.new
  %indvars.iv.i.i36.i.i = phi i64 [ 0, %.preheader.preheader.i.i.i.i.new ], [ %indvars.iv.next.i.i39.i.i.1, %.preheader.i.i35.i.i ] ; 4 uses
  %.018.i.i37.i.i = phi double [ 0.000000e+00, %.preheader.preheader.i.i.i.i.new ], [ %i.ol, %.preheader.i.i35.i.i ]
  %niter1057 = phi i64 [ 0, %.preheader.preheader.i.i.i.i.new ], [ %niter1057.next.1, %.preheader.i.i35.i.i ]
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i.i36.i.i
  %i.nz = load double, ptr %i.ny, align 16, !tbaa !49
  %i.oa = trunc i64 %indvars.iv.i.i36.i.i to i32
  %i.ob = add i32 %i.oa, 2
  %i.oc = uitofp nneg i32 %i.ob to double
  %i.od = fdiv double %i.nz, %i.oc
  %i.oe = fadd double %i.od, %.018.i.i37.i.i
  %indvars.iv.next.i.i39.i.i = or disjoint i64 %indvars.iv.i.i36.i.i, 1 ; 2 uses
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i.i39.i.i
  %i.og = load double, ptr %i.of, align 8, !tbaa !49
  %i.oh = trunc i64 %indvars.iv.next.i.i39.i.i to i32
  %i.oi = add i32 %i.oh, 2
  %i.oj = uitofp nneg i32 %i.oi to double
  %i.ok = fdiv double %i.og, %i.oj
  %i.ol = fsub double %i.oe, %i.ok                ; 3 uses
  %indvars.iv.next.i.i39.i.i.1 = add nuw nsw i64 %indvars.iv.i.i36.i.i, 2 ; 2 uses
  %niter1057.next.1 = add i64 %niter1057, 2       ; 2 uses
  %niter1057.ncmp.1 = icmp eq i64 %niter1057.next.1, %unroll_iter1056
  br i1 %niter1057.ncmp.1, label %cvAltSum.exit.i.i.i.loopexit.unr-lcssa, label %.preheader.i.i35.i.i, !llvm.loop !308

cvAltSum.exit.i.i.i.loopexit.unr-lcssa:           ; preds = %.preheader.i.i35.i.i
  %lcmp.mod1053.not = icmp eq i64 %xtraiter1052, 0
  br i1 %lcmp.mod1053.not, label %cvAltSum.exit.i.i.i, label %.preheader.i.i35.i.i.epil.preheader

.preheader.i.i35.i.i.epil.preheader:              ; preds = %cvAltSum.exit.i.i.i.loopexit.unr-lcssa, %.preheader.preheader.i.i.i.i
  %indvars.iv.i.i36.i.i.epil.init = phi i64 [ 0, %.preheader.preheader.i.i.i.i ], [ %indvars.iv.next.i.i39.i.i.1, %cvAltSum.exit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.018.i.i37.i.i.epil.init = phi double [ 0.000000e+00, %.preheader.preheader.i.i.i.i ], [ %i.ol, %cvAltSum.exit.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod1055 = trunc i32 %i.nw to i1
  tail call void @llvm.assume(i1 %lcmp.mod1055)
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i.i36.i.i.epil.init
  %i.on = load double, ptr %i.om, align 8, !tbaa !49
  %i.oo = trunc i64 %indvars.iv.i.i36.i.i.epil.init to i32
  %i.op = add i32 %i.oo, 2
  %i.oq = uitofp nneg i32 %i.op to double
  %i.or = fdiv double %i.on, %i.oq
  %i.os = fadd double %i.or, %.018.i.i37.i.i.epil.init
  br label %cvAltSum.exit.i.i.i

cvAltSum.exit.i.i.i:                              ; preds = %.preheader.i.i35.i.i.epil.preheader, %cvAltSum.exit.i.i.i.loopexit.unr-lcssa, %._crit_edge45.i.i.i
  %.014.i.i.i.i = phi double [ 0.000000e+00, %._crit_edge45.i.i.i ], [ %i.ol, %cvAltSum.exit.i.i.i.loopexit.unr-lcssa ], [ %i.os, %.preheader.i.i35.i.i.epil.preheader ]
  %i.ot = fmul double %i.mt, %.014.i.i.i.i
  %i.ou = load i32, ptr %i.ca, align 8, !tbaa !85
  %i.ov = sitofp i32 %i.ou to double
  %i.ow = fdiv double %i.ot, %i.ov
  store double %i.ow, ptr %i.bx, align 8, !tbaa !49
  br label %cvAdamsFinish.exit.i.i

cvAdamsFinish.exit.i.i:                           ; preds = %cvAltSum.exit.i.i.i, %._crit_edge.i.i.i
  %i.ox = load double, ptr %i.by, align 8, !tbaa !30
  %i.oy = fdiv double %i.ox, %i.mw
  br label %cvSetAdams.exit.i

end_hunk_0
