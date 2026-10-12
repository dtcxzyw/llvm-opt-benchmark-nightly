Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/cvodes?download=true
inline.NumInlined: 100
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 36
begin_hunk_0_@cvAdjustOrder:bb.a
  %indvars.iv143.i = phi i64 [ 1, %.preheader106.i.new ], [ %indvars.iv.next144.i.3, %bb.j ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader106.i.new ], [ %niter.next.3, %bb.j ]
  %indvars.iv.next144.i = add nuw nsw i64 %indvars.iv143.i, 1 ; 2 uses
  %i.cn = trunc nuw nsw i64 %indvars.iv.next144.i to i32
  %i.co = uitofp nneg i32 %i.cn to double
  %i.cp = fdiv double %i.cm, %i.co
  %i.cq = fmul double %i.cp, %i.au                ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next144.i
  store double %i.cq, ptr %i.cr, align 8, !tbaa !53
  %indvars.iv.next144.i.1 = add nuw nsw i64 %indvars.iv143.i, 2 ; 2 uses
  %i.cs = trunc nuw nsw i64 %indvars.iv.next144.i.1 to i32
  %i.ct = uitofp nneg i32 %i.cs to double
  %i.cu = fdiv double %i.cq, %i.ct
  %i.cv = fmul double %i.cu, %i.au                ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next144.i.1
  store double %i.cv, ptr %i.cw, align 8, !tbaa !53
  %indvars.iv.next144.i.2 = add nuw nsw i64 %indvars.iv143.i, 3 ; 2 uses
  %i.cx = trunc nuw nsw i64 %indvars.iv.next144.i.2 to i32
  %i.cy = uitofp nneg i32 %i.cx to double
  %i.cz = fdiv double %i.cv, %i.cy
  %i.da = fmul double %i.cz, %i.au                ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next144.i.2
  store double %i.da, ptr %i.db, align 8, !tbaa !53
  %indvars.iv.next144.i.3 = add nuw nsw i64 %indvars.iv143.i, 4 ; 4 uses
  %i.dc = trunc nuw nsw i64 %indvars.iv.next144.i.3 to i32
  %i.dd = uitofp nneg i32 %i.dc to double
  %i.de = fdiv double %i.da, %i.dd
  %i.df = fmul double %i.de, %i.au                ; 3 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next144.i.3
  store double %i.df, ptr %i.dg, align 8, !tbaa !53
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph124.i.unr-lcssa, label %bb.j, !llvm.loop !420

bb.k:                                             ; preds = %bb.k, %.lr.ph124.i
  %indvars.iv148.i = phi i64 [ 2, %.lr.ph124.i ], [ %indvars.iv.next149.i, %bb.k ] ; 3 uses
  %i.dh = phi i32 [ %i.b, %.lr.ph124.i ], [ %i.dq, %bb.k ]
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv148.i
  %i.dj = load double, ptr %i.di, align 8, !tbaa !53
  %i.dk = fneg double %i.dj
  %i.dl = sext i32 %i.dh to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.dl
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !50
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv148.i
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !50 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.dk, ptr noundef %i.dn, double noundef 1.000000e+00, ptr noundef %i.dp, ptr noundef %i.dp) #12
  %indvars.iv.next149.i = add nuw nsw i64 %indvars.iv148.i, 1 ; 2 uses
  %i.dq = load i32, ptr %i.a, align 8, !tbaa !66  ; 5 uses
  %i.dr = sext i32 %i.dq to i64
  %i.ds = icmp slt i64 %indvars.iv.next149.i, %i.dr
  br i1 %i.ds, label %bb.k, label %._crit_edge125.i, !llvm.loop !421

._crit_edge125.i:                                 ; preds = %bb.k
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !102
  %.not96.i = icmp ne i32 %i.du, 0
  %i.dv = icmp sgt i32 %i.dq, 2
  %or.cond.i = and i1 %i.dv, %.not96.i
  br i1 %or.cond.i, label %.lr.ph127.i, label %.loopexit104.i

.lr.ph127.i:                                      ; preds = %._crit_edge125.i
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph127.i
  %indvars.iv151.i = phi i64 [ 2, %.lr.ph127.i ], [ %indvars.iv.next152.i, %bb.l ] ; 3 uses
  %i.dx = phi i32 [ %i.dq, %.lr.ph127.i ], [ %i.eg, %bb.l ]
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv151.i
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !53
  %i.ea = fneg double %i.dz
  %i.eb = sext i32 %i.dx to i64
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.eb
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !50
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv151.i
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !50 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.ea, ptr noundef %i.ed, double noundef 1.000000e+00, ptr noundef %i.ef, ptr noundef %i.ef) #12
  %indvars.iv.next152.i = add nuw nsw i64 %indvars.iv151.i, 1 ; 2 uses
  %i.eg = load i32, ptr %i.a, align 8, !tbaa !66  ; 3 uses
  %i.eh = sext i32 %i.eg to i64
  %i.ei = icmp slt i64 %indvars.iv.next152.i, %i.eh
  br i1 %i.ei, label %bb.l, label %.loopexit104.i, !llvm.loop !422

.loopexit104.i:                                   ; preds = %bb.l, %._crit_edge.i, %._crit_edge125.i
  %i.ej = phi i32 [ %i.dq, %._crit_edge125.i ], [ %i.b, %._crit_edge.i ], [ %i.eg, %bb.l ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !121
  %.not97.i = icmp eq i32 %i.el, 0
  br i1 %.not97.i, label %cvAdjustAdams.exit, label %.preheader101.i

.preheader101.i:                                  ; preds = %.loopexit104.i
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !110 ; 2 uses
  %i.eo = icmp sgt i32 %i.en, 0
  br i1 %i.eo, label %.preheader100.lr.ph.i, label %cvAdjustAdams.exit

.preheader100.lr.ph.i:                            ; preds = %.preheader101.i
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.eq = icmp sgt i32 %i.ej, 2
  br i1 %i.eq, label %.preheader100.i, label %cvAdjustAdams.exit

.preheader100.i:                                  ; preds = %.preheader100.lr.ph.i, %._crit_edge130.i
  %i.er = phi i32 [ %i.fk, %._crit_edge130.i ], [ %i.en, %.preheader100.lr.ph.i ]
  %i.es = phi i32 [ %i.fl, %._crit_edge130.i ], [ %i.ej, %.preheader100.lr.ph.i ] ; 3 uses
  %indvars.iv157.i = phi i64 [ %indvars.iv.next158.i, %._crit_edge130.i ], [ 0, %.preheader100.lr.ph.i ] ; 3 uses
  %i.et = icmp sgt i32 %i.es, 2
  br i1 %i.et, label %.lr.ph129.i, label %._crit_edge130.i

.lr.ph129.i:                                      ; preds = %.preheader100.i, %.lr.ph129.i
  %indvars.iv154.i = phi i64 [ %indvars.iv.next155.i, %.lr.ph129.i ], [ 2, %.preheader100.i ] ; 3 uses
  %i.eu = phi i32 [ %i.fh, %.lr.ph129.i ], [ %i.es, %.preheader100.i ]
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv154.i
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !53
  %i.ex = fneg double %i.ew
  %i.ey = sext i32 %i.eu to i64
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.ey
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !114
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv157.i
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !50
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv154.i
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !114
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv157.i
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !50 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.ex, ptr noundef %i.fc, double noundef 1.000000e+00, ptr noundef %i.fg, ptr noundef %i.fg) #12
  %indvars.iv.next155.i = add nuw nsw i64 %indvars.iv154.i, 1 ; 2 uses
  %i.fh = load i32, ptr %i.a, align 8, !tbaa !66  ; 3 uses
  %i.fi = sext i32 %i.fh to i64
  %i.fj = icmp slt i64 %indvars.iv.next155.i, %i.fi
  br i1 %i.fj, label %.lr.ph129.i, label %._crit_edge130.loopexit.i, !llvm.loop !423

._crit_edge130.loopexit.i:                        ; preds = %.lr.ph129.i
  %.pre163.i = load i32, ptr %i.em, align 4, !tbaa !110
  br label %._crit_edge130.i

._crit_edge130.i:                                 ; preds = %._crit_edge130.loopexit.i, %.preheader100.i
  %i.fk = phi i32 [ %.pre163.i, %._crit_edge130.loopexit.i ], [ %i.er, %.preheader100.i ] ; 2 uses
  %i.fl = phi i32 [ %i.fh, %._crit_edge130.loopexit.i ], [ %i.es, %.preheader100.i ]
  %indvars.iv.next158.i = add nuw nsw i64 %indvars.iv157.i, 1 ; 2 uses
  %i.fm = sext i32 %i.fk to i64
  %i.fn = icmp slt i64 %indvars.iv.next158.i, %i.fm
  br i1 %i.fn, label %.preheader100.i, label %cvAdjustAdams.exit, !llvm.loop !424

bb.m:                                             ; preds = %bb.b
  switch i32 %1, label %cvAdjustAdams.exit [
    i32 1, label %bb.n
    i32 -1, label %bb.s
  ]

bb.n:                                             ; preds = %bb.m
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !32 ; 2 uses
  %.not142.i.i = icmp slt i32 %i.fp, 0
  br i1 %.not142.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.n
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.fr = add nuw i32 %i.fp, 1
  %i.fs = zext i32 %i.fr to i64
  %i.ft = shl nuw nsw i64 %i.fs, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fq, i8 0, i64 %i.ft, i1 false), !tbaa !53
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.n
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 6 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 1176
  store double 1.000000e+00, ptr %i.fv, align 8, !tbaa !53
  %i.fw = icmp sgt i32 %i.b, 1
  br i1 %i.fw, label %bb.o, label %.loopexit141.i.i

bb.o:                                             ; preds = %._crit_edge.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !177 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %wide.trip.count.i.i = zext nneg i32 %i.b to i64
  br label %.lr.ph146.preheader.i.i

.loopexit140.i.i:                                 ; preds = %.lr.ph146.i.i, %middle.block108
  %i.ga = fadd double %.0122151.i.i, %i.gn        ; 2 uses
  %i.gb = fdiv double %i.ga, %i.fy                ; 3 uses
  %i.gc = fmul double %.0124149.i.i, %i.gb        ; 2 uses
  %i.gd = trunc nuw nsw i64 %indvars.iv.next183.i.i to i32
  %i.ge = uitofp nneg i32 %i.gd to double
  %i.gf = insertelement <2 x double> poison, double %i.gb, i64 0
  %i.gg = insertelement <2 x double> %i.gf, double %i.ge, i64 1
  %i.gh = fdiv <2 x double> splat (double 1.000000e+00), %i.gg ; 2 uses
  %i.gi = fadd <2 x double> %i.gl, %i.gh
  %i.gj = fsub <2 x double> %i.gl, %i.gh
  %i.gk = shufflevector <2 x double> %i.gi, <2 x double> %i.gj, <2 x i32> <i32 0, i32 3> ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next183.i.i, %wide.trip.count.i.i
  %indvar.next88 = add i32 %indvar87, 1
  br i1 %exitcond.not.i.i, label %.loopexit141.i.i, label %.lr.ph146.preheader.i.i, !llvm.loop !425

.lr.ph146.preheader.i.i:                          ; preds = %.loopexit140.i.i, %bb.o
  %indvar87 = phi i32 [ %indvar.next88, %.loopexit140.i.i ], [ 0, %bb.o ] ; 2 uses
  %indvars.iv182.i.i = phi i64 [ %indvars.iv.next183.i.i, %.loopexit140.i.i ], [ 1, %bb.o ]
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.loopexit140.i.i ], [ 3, %bb.o ] ; 4 uses
  %.0122151.i.i = phi double [ %i.ga, %.loopexit140.i.i ], [ %i.fy, %bb.o ]
  %.0123150.i.i = phi double [ %i.gb, %.loopexit140.i.i ], [ 1.000000e+00, %bb.o ] ; 2 uses
  %.0124149.i.i = phi double [ %i.gc, %.loopexit140.i.i ], [ 1.000000e+00, %bb.o ]
  %i.gl = phi <2 x double> [ %i.gk, %.loopexit140.i.i ], [ <double 1.000000e+00, double -1.000000e+00>, %bb.o ] ; 2 uses
  %indvars.iv.next183.i.i = add nuw nsw i64 %indvars.iv182.i.i, 1 ; 4 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %indvars.iv.next183.i.i
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !53
  %2 = add nuw i32 %indvar87, 3                   ; 2 uses
  %i.go = tail call i32 @llvm.smin.i32(i32 %2, i32 2)
  %i.gp = sub i32 %2, %i.go                       ; 2 uses
  %i.gq = zext i32 %i.gp to i64
  %i.gr = add nuw nsw i64 %i.gq, 1                ; 2 uses
  %min.iters.check90 = icmp ult i32 %i.gp, 3
  br i1 %min.iters.check90, label %.lr.ph146.i.i.preheader, label %vector.ph91

vector.ph91:                                      ; preds = %.lr.ph146.preheader.i.i
  %n.vec92 = and i64 %i.gr, 8589934588            ; 3 uses
  %i.gs = sub nsw i64 %indvars.iv.i.i, %n.vec92
  %broadcast.splatinsert93 = insertelement <2 x double> poison, double %.0123150.i.i, i64 0 ; 2 uses
  %i.gt = shufflevector <2 x double> %broadcast.splatinsert93, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gu = shufflevector <2 x double> %broadcast.splatinsert93, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph91
  %index96 = phi i64 [ 0, %vector.ph91 ], [ %index.next107, %vector.body95 ] ; 2 uses
  %i.gv = sub i64 %indvars.iv.i.i, %index96
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.gv ; 4 uses
  %i.gx = getelementptr inbounds i8, ptr %i.gw, i64 -8 ; 2 uses
  %i.gy = getelementptr inbounds i8, ptr %i.gw, i64 -24 ; 2 uses
  %wide.load97 = load <2 x double>, ptr %i.gx, align 8, !tbaa !53
  %wide.load98 = load <2 x double>, ptr %i.gy, align 8, !tbaa !53
  %i.gz = getelementptr i8, ptr %i.gw, i64 -16
  %i.ha = getelementptr i8, ptr %i.gw, i64 -32
  %wide.load101 = load <2 x double>, ptr %i.gz, align 8, !tbaa !53
  %wide.load102 = load <2 x double>, ptr %i.ha, align 8, !tbaa !53
  %reverse105 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load97, <2 x double> %i.gt, <2 x double> %wide.load101)
  %reverse106 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load98, <2 x double> %i.gu, <2 x double> %wide.load102)
  store <2 x double> %reverse105, ptr %i.gx, align 8, !tbaa !53
  store <2 x double> %reverse106, ptr %i.gy, align 8, !tbaa !53
  %index.next107 = add nuw i64 %index96, 4        ; 2 uses
  %i.hb = icmp eq i64 %index.next107, %n.vec92
  br i1 %i.hb, label %middle.block108, label %vector.body95, !llvm.loop !426

middle.block108:                                  ; preds = %vector.body95
  %cmp.n109 = icmp eq i64 %i.gr, %n.vec92
  br i1 %cmp.n109, label %.loopexit140.i.i, label %.lr.ph146.i.i.preheader

.lr.ph146.i.i.preheader:                          ; preds = %.lr.ph146.preheader.i.i, %middle.block108
  %indvars.iv179.i.i.ph = phi i64 [ %indvars.iv.i.i, %.lr.ph146.preheader.i.i ], [ %i.gs, %middle.block108 ]
  br label %.lr.ph146.i.i

.lr.ph146.i.i:                                    ; preds = %.lr.ph146.i.i.preheader, %.lr.ph146.i.i
  %indvars.iv179.i.i = phi i64 [ %indvars.iv.next180.i.i, %.lr.ph146.i.i ], [ %indvars.iv179.i.i.ph, %.lr.ph146.i.i.preheader ] ; 3 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv179.i.i ; 3 uses
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !53
  %i.he = getelementptr i8, ptr %i.hc, i64 -8
  %i.hf = load double, ptr %i.he, align 8, !tbaa !53
  %i.hg = tail call double @llvm.fmuladd.f64(double %i.hd, double %.0123150.i.i, double %i.hf)
  store double %i.hg, ptr %i.hc, align 8, !tbaa !53
  %indvars.iv.next180.i.i = add nsw i64 %indvars.iv179.i.i, -1
  %i.hh = trunc nuw i64 %indvars.iv179.i.i to i32
  %i.hi = icmp sgt i32 %i.hh, 2
  br i1 %i.hi, label %.lr.ph146.i.i, label %.loopexit140.i.i, !llvm.loop !427

.loopexit141.i.i:                                 ; preds = %.loopexit140.i.i, %._crit_edge.i.i
  %.1125.i.i = phi double [ 1.000000e+00, %._crit_edge.i.i ], [ %i.gc, %.loopexit140.i.i ]
  %i.hj = phi <2 x double> [ <double 1.000000e+00, double -1.000000e+00>, %._crit_edge.i.i ], [ %i.gk, %.loopexit140.i.i ] ; 2 uses
  %i.hk = extractelement <2 x double> %i.hj, i64 1
  %i.hl = fneg double %i.hk
  %i.hm = extractelement <2 x double> %i.hj, i64 0
  %i.hn = fsub double %i.hl, %i.hm
  %i.ho = fdiv double %i.hn, %.1125.i.i           ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 1776 ; 4 uses
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !186
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.hp, i64 %i.hs
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !50
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 8 uses
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !67
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.hp, i64 %i.hx
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !50
  tail call void @N_VScale(double noundef %i.ho, ptr noundef %i.hu, ptr noundef %i.hz) #12
  %i.ia = load i32, ptr %i.a, align 8, !tbaa !66
  %.not130153.i.i = icmp slt i32 %i.ia, 2
  br i1 %.not130153.i.i, label %._crit_edge157.i.i, label %.lr.ph156.i.i

.lr.ph156.i.i:                                    ; preds = %.loopexit141.i.i, %.lr.ph156.i.i
  %indvars.iv185.i.i = phi i64 [ %indvars.iv.next186.i.i, %.lr.ph156.i.i ], [ 2, %.loopexit141.i.i ] ; 4 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv185.i.i
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !53
  %i.id = load i32, ptr %i.hv, align 8, !tbaa !67
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr inbounds [8 x i8], ptr %i.hp, i64 %i.ie
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !50
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %indvars.iv185.i.i
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !50 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.ic, ptr noundef %i.ig, double noundef 1.000000e+00, ptr noundef %i.ii, ptr noundef %i.ii) #12
  %indvars.iv.next186.i.i = add nuw nsw i64 %indvars.iv185.i.i, 1
  %i.ij = load i32, ptr %i.a, align 8, !tbaa !66
  %i.ik = sext i32 %i.ij to i64
  %.not130.not.i.i = icmp slt i64 %indvars.iv185.i.i, %i.ik
  br i1 %.not130.not.i.i, label %.lr.ph156.i.i, label %._crit_edge157.i.i, !llvm.loop !428

._crit_edge157.i.i:                               ; preds = %.lr.ph156.i.i, %.loopexit141.i.i
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.im = load i32, ptr %i.il, align 8, !tbaa !102
  %.not131.i.i = icmp eq i32 %i.im, 0
  br i1 %.not131.i.i, label %.loopexit139.i.i, label %bb.p

bb.p:                                             ; preds = %._crit_edge157.i.i
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 4 uses
  %i.io = load i32, ptr %i.hq, align 8, !tbaa !186
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.in, i64 %i.ip
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !50
  %i.is = load i32, ptr %i.hv, align 8, !tbaa !67
  %i.it = sext i32 %i.is to i64
  %i.iu = getelementptr inbounds [8 x i8], ptr %i.in, i64 %i.it
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !50
  tail call void @N_VScale(double noundef %i.ho, ptr noundef %i.ir, ptr noundef %i.iv) #12
  %i.iw = load i32, ptr %i.a, align 8, !tbaa !66
  %.not132158.i.i = icmp slt i32 %i.iw, 2
  br i1 %.not132158.i.i, label %.loopexit139.i.i, label %.lr.ph161.i.i

.lr.ph161.i.i:                                    ; preds = %bb.p, %.lr.ph161.i.i
  %indvars.iv188.i.i = phi i64 [ %indvars.iv.next189.i.i, %.lr.ph161.i.i ], [ 2, %bb.p ] ; 4 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv188.i.i
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !53
  %i.iz = load i32, ptr %i.hv, align 8, !tbaa !67
  %i.ja = sext i32 %i.iz to i64
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.in, i64 %i.ja
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !50
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %indvars.iv188.i.i
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !50 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.iy, ptr noundef %i.jc, double noundef 1.000000e+00, ptr noundef %i.je, ptr noundef %i.je) #12
  %indvars.iv.next189.i.i = add nuw nsw i64 %indvars.iv188.i.i, 1
  %i.jf = load i32, ptr %i.a, align 8, !tbaa !66
  %i.jg = sext i32 %i.jf to i64
  %.not132.not.i.i = icmp slt i64 %indvars.iv188.i.i, %i.jg
  br i1 %.not132.not.i.i, label %.lr.ph161.i.i, label %.loopexit139.i.i, !llvm.loop !429

.loopexit139.i.i:                                 ; preds = %.lr.ph161.i.i, %bb.p, %._crit_edge157.i.i
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !121
  %.not133.i.i = icmp eq i32 %i.ji, 0
  br i1 %.not133.i.i, label %.loopexit138.i.i, label %.preheader137.i.i

.preheader137.i.i:                                ; preds = %.loopexit139.i.i
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !110
  %i.jl = icmp sgt i32 %i.jk, 0
  br i1 %i.jl, label %.lr.ph168.i.i, label %.loopexit138.i.i

.lr.ph168.i.i:                                    ; preds = %.preheader137.i.i
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 4 uses
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge166.i.i, %.lr.ph168.i.i
  %indvars.iv194.i.i = phi i64 [ 0, %.lr.ph168.i.i ], [ %indvars.iv.next195.i.i, %._crit_edge166.i.i ] ; 5 uses
  %i.jn = load i32, ptr %i.hq, align 8, !tbaa !186
  %i.jo = sext i32 %i.jn to i64
  %i.jp = getelementptr inbounds [8 x i8], ptr %i.jm, i64 %i.jo
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !114
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %indvars.iv194.i.i
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !50
  %i.jt = load i32, ptr %i.hv, align 8, !tbaa !67
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [8 x i8], ptr %i.jm, i64 %i.ju
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !114
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv194.i.i
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !50
  tail call void @N_VScale(double noundef %i.ho, ptr noundef %i.js, ptr noundef %i.jy) #12
  %i.jz = load i32, ptr %i.a, align 8, !tbaa !66
  %.not136162.i.i = icmp slt i32 %i.jz, 2
  br i1 %.not136162.i.i, label %._crit_edge166.i.i, label %.lr.ph165.i.i

.lr.ph165.i.i:                                    ; preds = %bb.q, %.lr.ph165.i.i
  %indvars.iv191.i.i = phi i64 [ %indvars.iv.next192.i.i, %.lr.ph165.i.i ], [ 2, %bb.q ] ; 4 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv191.i.i
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !53
  %i.kc = load i32, ptr %i.hv, align 8, !tbaa !67
  %i.kd = sext i32 %i.kc to i64
  %i.ke = getelementptr inbounds [8 x i8], ptr %i.jm, i64 %i.kd
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !114
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %indvars.iv194.i.i
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !50
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %indvars.iv191.i.i
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !114
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %indvars.iv194.i.i
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !50 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.kb, ptr noundef %i.kh, double noundef 1.000000e+00, ptr noundef %i.kl, ptr noundef %i.kl) #12
  %indvars.iv.next192.i.i = add nuw nsw i64 %indvars.iv191.i.i, 1
  %i.km = load i32, ptr %i.a, align 8, !tbaa !66
  %i.kn = sext i32 %i.km to i64
  %.not136.not.i.i = icmp slt i64 %indvars.iv191.i.i, %i.kn
  br i1 %.not136.not.i.i, label %.lr.ph165.i.i, label %._crit_edge166.i.i, !llvm.loop !430

._crit_edge166.i.i:                               ; preds = %.lr.ph165.i.i, %bb.q
  %indvars.iv.next195.i.i = add nuw nsw i64 %indvars.iv194.i.i, 1 ; 2 uses
  %i.ko = load i32, ptr %i.jj, align 4, !tbaa !110
  %i.kp = sext i32 %i.ko to i64
  %i.kq = icmp slt i64 %indvars.iv.next195.i.i, %i.kp
  br i1 %i.kq, label %bb.q, label %.loopexit138.i.i, !llvm.loop !431

.loopexit138.i.i:                                 ; preds = %._crit_edge166.i.i, %.preheader137.i.i, %.loopexit139.i.i
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ks = load i32, ptr %i.kr, align 8, !tbaa !146
  %.not134.i.i = icmp eq i32 %i.ks, 0
  br i1 %.not134.i.i, label %cvAdjustAdams.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.loopexit138.i.i
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !110
  %i.kv = icmp sgt i32 %i.ku, 0
  br i1 %i.kv, label %.lr.ph175.i.i, label %cvAdjustAdams.exit

.lr.ph175.i.i:                                    ; preds = %.preheader.i.i
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 4 uses
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge173.i.i, %.lr.ph175.i.i
  %indvars.iv200.i.i = phi i64 [ 0, %.lr.ph175.i.i ], [ %indvars.iv.next201.i.i, %._crit_edge173.i.i ] ; 5 uses
  %i.kx = load i32, ptr %i.hq, align 8, !tbaa !186
  %i.ky = sext i32 %i.kx to i64
  %i.kz = getelementptr inbounds [8 x i8], ptr %i.kw, i64 %i.ky
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !114
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %indvars.iv200.i.i
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !50
  %i.ld = load i32, ptr %i.hv, align 8, !tbaa !67
  %i.le = sext i32 %i.ld to i64
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.kw, i64 %i.le
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !114
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %indvars.iv200.i.i
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !50
  tail call void @N_VScale(double noundef %i.ho, ptr noundef %i.lc, ptr noundef %i.li) #12
  %i.lj = load i32, ptr %i.a, align 8, !tbaa !66
  %.not135169.i.i = icmp slt i32 %i.lj, 2
  br i1 %.not135169.i.i, label %._crit_edge173.i.i, label %.lr.ph172.i.i

.lr.ph172.i.i:                                    ; preds = %bb.r, %.lr.ph172.i.i
  %indvars.iv197.i.i = phi i64 [ %indvars.iv.next198.i.i, %.lr.ph172.i.i ], [ 2, %bb.r ] ; 4 uses
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv197.i.i
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !53
  %i.lm = load i32, ptr %i.hv, align 8, !tbaa !67
  %i.ln = sext i32 %i.lm to i64
  %i.lo = getelementptr inbounds [8 x i8], ptr %i.kw, i64 %i.ln
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !114
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %indvars.iv200.i.i
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !50
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %indvars.iv197.i.i
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !114
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %indvars.iv200.i.i
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !50 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.ll, ptr noundef %i.lr, double noundef 1.000000e+00, ptr noundef %i.lv, ptr noundef %i.lv) #12
  %indvars.iv.next198.i.i = add nuw nsw i64 %indvars.iv197.i.i, 1
  %i.lw = load i32, ptr %i.a, align 8, !tbaa !66
  %i.lx = sext i32 %i.lw to i64
  %.not135.not.i.i = icmp slt i64 %indvars.iv197.i.i, %i.lx
  br i1 %.not135.not.i.i, label %.lr.ph172.i.i, label %._crit_edge173.i.i, !llvm.loop !432

._crit_edge173.i.i:                               ; preds = %.lr.ph172.i.i, %bb.r
  %indvars.iv.next201.i.i = add nuw nsw i64 %indvars.iv200.i.i, 1 ; 2 uses
  %i.ly = load i32, ptr %i.kt, align 4, !tbaa !110
  %i.lz = sext i32 %i.ly to i64
  %i.ma = icmp slt i64 %indvars.iv.next201.i.i, %i.lz
  br i1 %i.ma, label %bb.r, label %cvAdjustAdams.exit, !llvm.loop !433

bb.s:                                             ; preds = %bb.m
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.mc = load i32, ptr %i.mb, align 8, !tbaa !32 ; 2 uses
  %.not102.i.i = icmp slt i32 %i.mc, 0
  br i1 %.not102.i.i, label %._crit_edge.i3.i, label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %bb.s
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.me = add nuw i32 %i.mc, 1
  %i.mf = zext i32 %i.me to i64
  %i.mg = shl nuw nsw i64 %i.mf, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.md, i8 0, i64 %i.mg, i1 false), !tbaa !53
  br label %._crit_edge.i3.i

._crit_edge.i3.i:                                 ; preds = %.lr.ph.i2.i, %bb.s
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 6 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 1176
  store double 1.000000e+00, ptr %i.mi, align 8, !tbaa !53
  %.not91108.i.i = icmp slt i32 %i.b, 3
  br i1 %.not91108.i.i, label %.loopexit100.i.i, label %.lr.ph112.i.i

.lr.ph112.i.i:                                    ; preds = %._crit_edge.i3.i
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !177
  %i.mm = add nsw i32 %i.b, -1
  %wide.trip.count.i4.i = zext nneg i32 %i.mm to i64
  br label %.lr.ph106.preheader.i.i

.preheader101.i.i:                                ; preds = %._crit_edge107.i.i
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  br label %bb.t

.lr.ph106.preheader.i.i:                          ; preds = %._crit_edge107.i.i, %.lr.ph112.i.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge107.i.i ], [ 0, %.lr.ph112.i.i ] ; 3 uses
  %indvars.iv132.i.i = phi i64 [ %indvars.iv.next133.i.i, %._crit_edge107.i.i ], [ 1, %.lr.ph112.i.i ] ; 2 uses
  %indvars.iv.i5.i = phi i64 [ %indvars.iv.next.i6.i, %._crit_edge107.i.i ], [ 3, %.lr.ph112.i.i ] ; 4 uses
  %.086109.i.i = phi double [ %i.mq, %._crit_edge107.i.i ], [ 0.000000e+00, %.lr.ph112.i.i ]
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.mj, i64 %indvars.iv132.i.i
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !53
  %i.mq = fadd double %.086109.i.i, %i.mp         ; 2 uses
  %i.mr = fdiv double %i.mq, %i.ml                ; 2 uses
  %3 = add nuw i64 %indvar, 2                     ; 2 uses
  %min.iters.check = icmp ult i64 %indvar, 2
  br i1 %min.iters.check, label %.lr.ph106.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph106.preheader.i.i
  %n.vec = and i64 %3, -4                         ; 3 uses
  %i.ms = sub i64 %indvars.iv.i5.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.mr, i64 0 ; 2 uses
  %i.mt = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mu = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.mv = sub i64 %indvars.iv.i5.i, %index
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %i.mv ; 4 uses
  %i.mx = getelementptr inbounds i8, ptr %i.mw, i64 -8 ; 2 uses
  %i.my = getelementptr inbounds i8, ptr %i.mw, i64 -24 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.mx, align 8, !tbaa !53
  %wide.load79 = load <2 x double>, ptr %i.my, align 8, !tbaa !53
  %i.mz = getelementptr i8, ptr %i.mw, i64 -16
  %i.na = getelementptr i8, ptr %i.mw, i64 -32
  %wide.load81 = load <2 x double>, ptr %i.mz, align 8, !tbaa !53
  %wide.load82 = load <2 x double>, ptr %i.na, align 8, !tbaa !53
  %reverse85 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %i.mt, <2 x double> %wide.load81)
  %reverse86 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load79, <2 x double> %i.mu, <2 x double> %wide.load82)
  store <2 x double> %reverse85, ptr %i.mx, align 8, !tbaa !53
  store <2 x double> %reverse86, ptr %i.my, align 8, !tbaa !53
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.nb = icmp eq i64 %index.next, %n.vec
  br i1 %i.nb, label %middle.block, label %vector.body, !llvm.loop !434

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge107.i.i, label %.lr.ph106.i.i.preheader

.lr.ph106.i.i.preheader:                          ; preds = %.lr.ph106.preheader.i.i, %middle.block
  %indvars.iv129.i.i.ph = phi i64 [ %indvars.iv.i5.i, %.lr.ph106.preheader.i.i ], [ %i.ms, %middle.block ]
  br label %.lr.ph106.i.i

.lr.ph106.i.i:                                    ; preds = %.lr.ph106.i.i.preheader, %.lr.ph106.i.i
  %indvars.iv129.i.i = phi i64 [ %indvars.iv.next130.i.i, %.lr.ph106.i.i ], [ %indvars.iv129.i.i.ph, %.lr.ph106.i.i.preheader ] ; 3 uses
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %indvars.iv129.i.i ; 3 uses
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !53
  %i.ne = getelementptr i8, ptr %i.nc, i64 -8
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !53
  %i.ng = tail call double @llvm.fmuladd.f64(double %i.nd, double %i.mr, double %i.nf)
  store double %i.ng, ptr %i.nc, align 8, !tbaa !53
  %indvars.iv.next130.i.i = add nsw i64 %indvars.iv129.i.i, -1
  %i.nh = icmp sgt i64 %indvars.iv129.i.i, 2
  br i1 %i.nh, label %.lr.ph106.i.i, label %._crit_edge107.i.i, !llvm.loop !435

._crit_edge107.i.i:                               ; preds = %.lr.ph106.i.i, %middle.block
  %indvars.iv.next133.i.i = add nuw nsw i64 %indvars.iv132.i.i, 1 ; 2 uses
  %indvars.iv.next.i6.i = add nuw nsw i64 %indvars.iv.i5.i, 1
  %exitcond.not.i7.i = icmp eq i64 %indvars.iv.next133.i.i, %wide.trip.count.i4.i
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not.i7.i, label %.preheader101.i.i, label %.lr.ph106.preheader.i.i, !llvm.loop !436

bb.t:                                             ; preds = %bb.t, %.preheader101.i.i
  %indvars.iv135.i.i = phi i64 [ 2, %.preheader101.i.i ], [ %indvars.iv.next136.i.i, %bb.t ] ; 3 uses
  %i.ni = phi i32 [ %i.b, %.preheader101.i.i ], [ %i.nr, %bb.t ]
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %indvars.iv135.i.i
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !53
  %i.nl = fneg double %i.nk
  %i.nm = sext i32 %i.ni to i64
  %i.nn = getelementptr inbounds [8 x i8], ptr %i.mn, i64 %i.nm
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !50
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %indvars.iv135.i.i
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !50 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.nl, ptr noundef %i.no, double noundef 1.000000e+00, ptr noundef %i.nq, ptr noundef %i.nq) #12
  %indvars.iv.next136.i.i = add nuw nsw i64 %indvars.iv135.i.i, 1 ; 2 uses
  %i.nr = load i32, ptr %i.a, align 8, !tbaa !66  ; 5 uses
  %i.ns = sext i32 %i.nr to i64
  %i.nt = icmp slt i64 %indvars.iv.next136.i.i, %i.ns
  br i1 %i.nt, label %bb.t, label %._crit_edge115.i.i, !llvm.loop !437

._crit_edge115.i.i:                               ; preds = %bb.t
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.nv = load i32, ptr %i.nu, align 8, !tbaa !102
  %.not92.i.i = icmp ne i32 %i.nv, 0
  %i.nw = icmp sgt i32 %i.nr, 2
  %or.cond.i.i = and i1 %i.nw, %.not92.i.i
  br i1 %or.cond.i.i, label %.lr.ph117.i.i, label %.loopexit100.i.i

.lr.ph117.i.i:                                    ; preds = %._crit_edge115.i.i
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph117.i.i
  %indvars.iv138.i.i = phi i64 [ 2, %.lr.ph117.i.i ], [ %indvars.iv.next139.i.i, %bb.u ] ; 3 uses
  %i.ny = phi i32 [ %i.nr, %.lr.ph117.i.i ], [ %i.oh, %bb.u ]
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %indvars.iv138.i.i
  %i.oa = load double, ptr %i.nz, align 8, !tbaa !53
  %i.ob = fneg double %i.oa
  %i.oc = sext i32 %i.ny to i64
  %i.od = getelementptr inbounds [8 x i8], ptr %i.nx, i64 %i.oc
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !50
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %indvars.iv138.i.i
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !50 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.ob, ptr noundef %i.oe, double noundef 1.000000e+00, ptr noundef %i.og, ptr noundef %i.og) #12
  %indvars.iv.next139.i.i = add nuw nsw i64 %indvars.iv138.i.i, 1 ; 2 uses
  %i.oh = load i32, ptr %i.a, align 8, !tbaa !66  ; 3 uses
  %i.oi = sext i32 %i.oh to i64
  %i.oj = icmp slt i64 %indvars.iv.next139.i.i, %i.oi
  br i1 %i.oj, label %bb.u, label %.loopexit100.i.i, !llvm.loop !438

.loopexit100.i.i:                                 ; preds = %bb.u, %._crit_edge115.i.i, %._crit_edge.i3.i
  %i.ok = phi i32 [ %i.nr, %._crit_edge115.i.i ], [ %i.b, %._crit_edge.i3.i ], [ %i.oh, %bb.u ] ; 5 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.om = load i32, ptr %i.ol, align 8, !tbaa !121
  %.not93.i.i = icmp eq i32 %i.om, 0
  br i1 %.not93.i.i, label %.loopexit98.i.i, label %.preheader97.i.i

.preheader97.i.i:                                 ; preds = %.loopexit100.i.i
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !110 ; 2 uses
  %i.op = icmp sgt i32 %i.oo, 0
  br i1 %i.op, label %.preheader96.lr.ph.i.i, label %.loopexit98.i.i

.preheader96.lr.ph.i.i:                           ; preds = %.preheader97.i.i
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.or = icmp sgt i32 %i.ok, 2
  br i1 %i.or, label %.preheader96.i.i, label %.loopexit98.i.i

.preheader96.i.i:                                 ; preds = %.preheader96.lr.ph.i.i, %._crit_edge120.i.i
  %i.os = phi i32 [ %i.pl, %._crit_edge120.i.i ], [ %i.oo, %.preheader96.lr.ph.i.i ]
  %i.ot = phi i32 [ %i.pm, %._crit_edge120.i.i ], [ %i.ok, %.preheader96.lr.ph.i.i ] ; 3 uses
  %indvars.iv144.i.i = phi i64 [ %indvars.iv.next145.i.i, %._crit_edge120.i.i ], [ 0, %.preheader96.lr.ph.i.i ] ; 3 uses
  %i.ou = icmp sgt i32 %i.ot, 2
  br i1 %i.ou, label %.lr.ph119.i.i, label %._crit_edge120.i.i

.lr.ph119.i.i:                                    ; preds = %.preheader96.i.i, %.lr.ph119.i.i
  %indvars.iv141.i.i = phi i64 [ %indvars.iv.next142.i.i, %.lr.ph119.i.i ], [ 2, %.preheader96.i.i ] ; 3 uses
  %i.ov = phi i32 [ %i.pi, %.lr.ph119.i.i ], [ %i.ot, %.preheader96.i.i ]
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %indvars.iv141.i.i
  %i.ox = load double, ptr %i.ow, align 8, !tbaa !53
  %i.oy = fneg double %i.ox
  %i.oz = sext i32 %i.ov to i64
  %i.pa = getelementptr inbounds [8 x i8], ptr %i.oq, i64 %i.oz
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !114
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.pb, i64 %indvars.iv144.i.i
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !50
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.oq, i64 %indvars.iv141.i.i
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !114
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %indvars.iv144.i.i
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !50 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.oy, ptr noundef %i.pd, double noundef 1.000000e+00, ptr noundef %i.ph, ptr noundef %i.ph) #12
  %indvars.iv.next142.i.i = add nuw nsw i64 %indvars.iv141.i.i, 1 ; 2 uses
  %i.pi = load i32, ptr %i.a, align 8, !tbaa !66  ; 3 uses
  %i.pj = sext i32 %i.pi to i64
  %i.pk = icmp slt i64 %indvars.iv.next142.i.i, %i.pj
  br i1 %i.pk, label %.lr.ph119.i.i, label %._crit_edge120.loopexit.i.i, !llvm.loop !439

._crit_edge120.loopexit.i.i:                      ; preds = %.lr.ph119.i.i
  %.pre.i.i = load i32, ptr %i.on, align 4, !tbaa !110
  br label %._crit_edge120.i.i

._crit_edge120.i.i:                               ; preds = %._crit_edge120.loopexit.i.i, %.preheader96.i.i
  %i.pl = phi i32 [ %.pre.i.i, %._crit_edge120.loopexit.i.i ], [ %i.os, %.preheader96.i.i ] ; 2 uses
  %i.pm = phi i32 [ %i.pi, %._crit_edge120.loopexit.i.i ], [ %i.ot, %.preheader96.i.i ] ; 2 uses
  %indvars.iv.next145.i.i = add nuw nsw i64 %indvars.iv144.i.i, 1 ; 2 uses
  %i.pn = sext i32 %i.pl to i64
  %i.po = icmp slt i64 %indvars.iv.next145.i.i, %i.pn
  br i1 %i.po, label %.preheader96.i.i, label %.loopexit98.i.i, !llvm.loop !440

.loopexit98.i.i:                                  ; preds = %._crit_edge120.i.i, %.preheader96.lr.ph.i.i, %.preheader97.i.i, %.loopexit100.i.i
  %i.pp = phi i32 [ %i.ok, %.loopexit100.i.i ], [ %i.ok, %.preheader96.lr.ph.i.i ], [ %i.ok, %.preheader97.i.i ], [ %i.pm, %._crit_edge120.i.i ] ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.pr = load i32, ptr %i.pq, align 8, !tbaa !146
  %.not94.i.i = icmp eq i32 %i.pr, 0
  br i1 %.not94.i.i, label %cvAdjustAdams.exit, label %.preheader95.i.i

.preheader95.i.i:                                 ; preds = %.loopexit98.i.i
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !110 ; 2 uses
  %i.pu = icmp sgt i32 %i.pt, 0
  br i1 %i.pu, label %.preheader.lr.ph.i.i, label %cvAdjustAdams.exit

.preheader.lr.ph.i.i:                             ; preds = %.preheader95.i.i
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  %i.pw = icmp sgt i32 %i.pp, 2
  br i1 %i.pw, label %.preheader.i8.i, label %cvAdjustAdams.exit

.preheader.i8.i:                                  ; preds = %.preheader.lr.ph.i.i, %._crit_edge124.i.i
  %i.px = phi i32 [ %i.qq, %._crit_edge124.i.i ], [ %i.pt, %.preheader.lr.ph.i.i ]
  %i.py = phi i32 [ %i.qr, %._crit_edge124.i.i ], [ %i.pp, %.preheader.lr.ph.i.i ] ; 3 uses
  %indvars.iv150.i.i = phi i64 [ %indvars.iv.next151.i.i, %._crit_edge124.i.i ], [ 0, %.preheader.lr.ph.i.i ] ; 3 uses
  %i.pz = icmp sgt i32 %i.py, 2
  br i1 %i.pz, label %.lr.ph123.i.i, label %._crit_edge124.i.i

.lr.ph123.i.i:                                    ; preds = %.preheader.i8.i, %.lr.ph123.i.i
  %indvars.iv147.i.i = phi i64 [ %indvars.iv.next148.i.i, %.lr.ph123.i.i ], [ 2, %.preheader.i8.i ] ; 3 uses
  %i.qa = phi i32 [ %i.qn, %.lr.ph123.i.i ], [ %i.py, %.preheader.i8.i ]
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %indvars.iv147.i.i
  %i.qc = load double, ptr %i.qb, align 8, !tbaa !53
  %i.qd = fneg double %i.qc
  %i.qe = sext i32 %i.qa to i64
  %i.qf = getelementptr inbounds [8 x i8], ptr %i.pv, i64 %i.qe
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !114
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %i.qg, i64 %indvars.iv150.i.i
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !50
end_hunk_0
