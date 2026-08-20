inline.NumInlined: 100
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 36
begin_hunk_0_@cvAdjustOrder:bb.a
  %indvars.iv143.i = phi i64 [ 1, %.preheader106.i.new ], [ %indvars.iv.next144.i.3, %bb.j ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader106.i.new ], [ %niter.next.3, %bb.j ]
  %indvars.iv.next144.i = add nuw nsw i64 %indvars.iv143.i, 1 ; 2 uses
  %i.co = trunc nuw nsw i64 %indvars.iv.next144.i to i32
  %i.cp = uitofp nneg i32 %i.co to double
  %i.cq = fdiv double %i.cn, %i.cp
  %i.cr = fmul double %i.cq, %i.av                ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next144.i
  store double %i.cr, ptr %i.cs, align 8, !tbaa !49
  %indvars.iv.next144.i.1 = add nuw nsw i64 %indvars.iv143.i, 2 ; 2 uses
  %i.ct = trunc nuw nsw i64 %indvars.iv.next144.i.1 to i32
  %i.cu = uitofp nneg i32 %i.ct to double
  %i.cv = fdiv double %i.cr, %i.cu
  %i.cw = fmul double %i.cv, %i.av                ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next144.i.1
  store double %i.cw, ptr %i.cx, align 8, !tbaa !49
  %indvars.iv.next144.i.2 = add nuw nsw i64 %indvars.iv143.i, 3 ; 2 uses
  %i.cy = trunc nuw nsw i64 %indvars.iv.next144.i.2 to i32
  %i.cz = uitofp nneg i32 %i.cy to double
  %i.da = fdiv double %i.cw, %i.cz
  %i.db = fmul double %i.da, %i.av                ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next144.i.2
  store double %i.db, ptr %i.dc, align 8, !tbaa !49
  %indvars.iv.next144.i.3 = add nuw nsw i64 %indvars.iv143.i, 4 ; 4 uses
  %i.dd = trunc nuw nsw i64 %indvars.iv.next144.i.3 to i32
  %i.de = uitofp nneg i32 %i.dd to double
  %i.df = fdiv double %i.db, %i.de
  %i.dg = fmul double %i.df, %i.av                ; 3 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next144.i.3
  store double %i.dg, ptr %i.dh, align 8, !tbaa !49
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph124.i.unr-lcssa, label %bb.j, !llvm.loop !420

bb.k:                                             ; preds = %bb.k, %.lr.ph124.i
  %indvars.iv148.i = phi i64 [ 2, %.lr.ph124.i ], [ %indvars.iv.next149.i, %bb.k ] ; 3 uses
  %i.di = phi i32 [ %i.b, %.lr.ph124.i ], [ %i.dr, %bb.k ]
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv148.i
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !49
  %i.dl = fneg double %i.dk
  %i.dm = sext i32 %i.di to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.dm
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !46
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv148.i
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !46 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.dl, ptr noundef %i.do, double noundef 1.000000e+00, ptr noundef %i.dq, ptr noundef %i.dq) #12
  %indvars.iv.next149.i = add nuw nsw i64 %indvars.iv148.i, 1 ; 2 uses
  %i.dr = load i32, ptr %i.a, align 8, !tbaa !84  ; 5 uses
  %i.ds = sext i32 %i.dr to i64
  %i.dt = icmp slt i64 %indvars.iv.next149.i, %i.ds
  br i1 %i.dt, label %bb.k, label %._crit_edge125.i, !llvm.loop !421

._crit_edge125.i:                                 ; preds = %bb.k
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !122
  %.not96.i = icmp ne i32 %i.dv, 0
  %i.dw = icmp sgt i32 %i.dr, 2
  %or.cond.i = and i1 %i.dw, %.not96.i
  br i1 %or.cond.i, label %.lr.ph127.i, label %.loopexit104.i

.lr.ph127.i:                                      ; preds = %._crit_edge125.i
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph127.i
  %indvars.iv151.i = phi i64 [ 2, %.lr.ph127.i ], [ %indvars.iv.next152.i, %bb.l ] ; 3 uses
  %i.dy = phi i32 [ %i.dr, %.lr.ph127.i ], [ %i.eh, %bb.l ]
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv151.i
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !49
  %i.eb = fneg double %i.ea
  %i.ec = sext i32 %i.dy to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.ec
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !46
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv151.i
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !46 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.eb, ptr noundef %i.ee, double noundef 1.000000e+00, ptr noundef %i.eg, ptr noundef %i.eg) #12
  %indvars.iv.next152.i = add nuw nsw i64 %indvars.iv151.i, 1 ; 2 uses
  %i.eh = load i32, ptr %i.a, align 8, !tbaa !84  ; 3 uses
  %i.ei = sext i32 %i.eh to i64
  %i.ej = icmp slt i64 %indvars.iv.next152.i, %i.ei
  br i1 %i.ej, label %bb.l, label %.loopexit104.i, !llvm.loop !422

.loopexit104.i:                                   ; preds = %bb.l, %._crit_edge.i, %._crit_edge125.i
  %i.ek = phi i32 [ %i.dr, %._crit_edge125.i ], [ %i.b, %._crit_edge.i ], [ %i.eh, %bb.l ] ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.em = load i32, ptr %i.el, align 8, !tbaa !144
  %.not97.i = icmp eq i32 %i.em, 0
  br i1 %.not97.i, label %cvAdjustAdams.exit, label %.preheader101.i

.preheader101.i:                                  ; preds = %.loopexit104.i
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !130 ; 2 uses
  %i.ep = icmp sgt i32 %i.eo, 0
  br i1 %i.ep, label %.preheader100.lr.ph.i, label %cvAdjustAdams.exit

.preheader100.lr.ph.i:                            ; preds = %.preheader101.i
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.er = icmp sgt i32 %i.ek, 2
  br i1 %i.er, label %.preheader100.i, label %cvAdjustAdams.exit

.preheader100.i:                                  ; preds = %.preheader100.lr.ph.i, %._crit_edge130.i
  %i.es = phi i32 [ %i.fl, %._crit_edge130.i ], [ %i.eo, %.preheader100.lr.ph.i ]
  %i.et = phi i32 [ %i.fm, %._crit_edge130.i ], [ %i.ek, %.preheader100.lr.ph.i ] ; 3 uses
  %indvars.iv157.i = phi i64 [ %indvars.iv.next158.i, %._crit_edge130.i ], [ 0, %.preheader100.lr.ph.i ] ; 3 uses
  %i.eu = icmp sgt i32 %i.et, 2
  br i1 %i.eu, label %.lr.ph129.i, label %._crit_edge130.i

.lr.ph129.i:                                      ; preds = %.preheader100.i, %.lr.ph129.i
  %indvars.iv154.i = phi i64 [ %indvars.iv.next155.i, %.lr.ph129.i ], [ 2, %.preheader100.i ] ; 3 uses
  %i.ev = phi i32 [ %i.fi, %.lr.ph129.i ], [ %i.et, %.preheader100.i ]
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv154.i
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !49
  %i.ey = fneg double %i.ex
  %i.ez = sext i32 %i.ev to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.ez
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !134
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv157.i
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !46
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv154.i
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !134
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %indvars.iv157.i
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !46 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.ey, ptr noundef %i.fd, double noundef 1.000000e+00, ptr noundef %i.fh, ptr noundef %i.fh) #12
  %indvars.iv.next155.i = add nuw nsw i64 %indvars.iv154.i, 1 ; 2 uses
  %i.fi = load i32, ptr %i.a, align 8, !tbaa !84  ; 3 uses
  %i.fj = sext i32 %i.fi to i64
  %i.fk = icmp slt i64 %indvars.iv.next155.i, %i.fj
  br i1 %i.fk, label %.lr.ph129.i, label %._crit_edge130.loopexit.i, !llvm.loop !423

._crit_edge130.loopexit.i:                        ; preds = %.lr.ph129.i
  %.pre163.i = load i32, ptr %i.en, align 4, !tbaa !130
  br label %._crit_edge130.i

._crit_edge130.i:                                 ; preds = %._crit_edge130.loopexit.i, %.preheader100.i
  %i.fl = phi i32 [ %.pre163.i, %._crit_edge130.loopexit.i ], [ %i.es, %.preheader100.i ] ; 2 uses
  %i.fm = phi i32 [ %i.fi, %._crit_edge130.loopexit.i ], [ %i.et, %.preheader100.i ]
  %indvars.iv.next158.i = add nuw nsw i64 %indvars.iv157.i, 1 ; 2 uses
  %i.fn = sext i32 %i.fl to i64
  %i.fo = icmp slt i64 %indvars.iv.next158.i, %i.fn
  br i1 %i.fo, label %.preheader100.i, label %cvAdjustAdams.exit, !llvm.loop !424

bb.m:                                             ; preds = %bb.b
  switch i32 %1, label %cvAdjustAdams.exit [
    i32 1, label %bb.n
    i32 -1, label %bb.s
  ]

bb.n:                                             ; preds = %bb.m
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !27 ; 2 uses
  %.not142.i.i = icmp slt i32 %i.fq, 0
  br i1 %.not142.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.n
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.fs = add nuw i32 %i.fq, 1
  %i.ft = zext i32 %i.fs to i64
  %i.fu = shl nuw nsw i64 %i.ft, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fr, i8 0, i64 %i.fu, i1 false), !tbaa !49
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.n
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 6 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 1176
  store double 1.000000e+00, ptr %i.fw, align 8, !tbaa !49
  %i.fx = icmp sgt i32 %i.b, 1
  br i1 %i.fx, label %bb.o, label %.loopexit141.i.i

bb.o:                                             ; preds = %._crit_edge.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !232 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %wide.trip.count.i.i = zext nneg i32 %i.b to i64
  br label %.lr.ph146.preheader.i.i

.loopexit140.i.i:                                 ; preds = %.lr.ph146.i.i, %middle.block108
  %i.gb = fadd double %.0122151.i.i, %i.gs        ; 2 uses
  %i.gc = fdiv double %i.gb, %i.fz                ; 3 uses
  %i.gd = fmul double %.0124149.i.i, %i.gc        ; 2 uses
  %i.ge = trunc nuw nsw i64 %indvars.iv.next183.i.i to i32
  %i.gf = uitofp nneg i32 %i.ge to double
  %i.gg = insertelement <2 x double> poison, double %i.gc, i64 0
  %i.gh = insertelement <2 x double> %i.gg, double %i.gf, i64 1
  %i.gi = fdiv <2 x double> splat (double 1.000000e+00), %i.gh ; 2 uses
  %i.gj = fadd <2 x double> %i.gm, %i.gi
  %i.gk = fsub <2 x double> %i.gm, %i.gi
  %i.gl = shufflevector <2 x double> %i.gj, <2 x double> %i.gk, <2 x i32> <i32 0, i32 3> ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next183.i.i, %wide.trip.count.i.i
  %indvar.next88 = add i32 %indvar87, 1
  br i1 %exitcond.not.i.i, label %.loopexit141.i.i, label %.lr.ph146.preheader.i.i, !llvm.loop !425

.lr.ph146.preheader.i.i:                          ; preds = %.loopexit140.i.i, %bb.o
  %indvar87 = phi i32 [ %indvar.next88, %.loopexit140.i.i ], [ 0, %bb.o ] ; 2 uses
  %indvars.iv182.i.i = phi i64 [ %indvars.iv.next183.i.i, %.loopexit140.i.i ], [ 1, %bb.o ]
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.loopexit140.i.i ], [ 3, %bb.o ] ; 4 uses
  %.0122151.i.i = phi double [ %i.gb, %.loopexit140.i.i ], [ %i.fz, %bb.o ]
  %.0123150.i.i = phi double [ %i.gc, %.loopexit140.i.i ], [ 1.000000e+00, %bb.o ] ; 2 uses
  %.0124149.i.i = phi double [ %i.gd, %.loopexit140.i.i ], [ 1.000000e+00, %bb.o ]
  %i.gm = phi <2 x double> [ %i.gl, %.loopexit140.i.i ], [ <double 1.000000e+00, double -1.000000e+00>, %bb.o ] ; 2 uses
  %i.gn = add i32 %indvar87, 3                    ; 2 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %i.gn, i32 2)
  %i.go = sub i32 %i.gn, %smin                    ; 2 uses
  %i.gp = zext i32 %i.go to i64
  %i.gq = add nuw nsw i64 %i.gp, 1                ; 2 uses
  %indvars.iv.next183.i.i = add nuw nsw i64 %indvars.iv182.i.i, 1 ; 4 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %indvars.iv.next183.i.i
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !49
  %min.iters.check90 = icmp ult i32 %i.go, 3
  br i1 %min.iters.check90, label %.lr.ph146.i.i.preheader, label %vector.ph91

vector.ph91:                                      ; preds = %.lr.ph146.preheader.i.i
  %n.vec92 = and i64 %i.gq, 8589934588            ; 3 uses
  %i.gt = sub nsw i64 %indvars.iv.i.i, %n.vec92
  %broadcast.splatinsert93 = insertelement <2 x double> poison, double %.0123150.i.i, i64 0 ; 2 uses
  %i.gu = shufflevector <2 x double> %broadcast.splatinsert93, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gv = shufflevector <2 x double> %broadcast.splatinsert93, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph91
  %index96 = phi i64 [ 0, %vector.ph91 ], [ %index.next107, %vector.body95 ] ; 2 uses
  %i.gw = sub i64 %indvars.iv.i.i, %index96
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.gw ; 4 uses
  %i.gy = getelementptr inbounds i8, ptr %i.gx, i64 -8 ; 2 uses
  %i.gz = getelementptr inbounds i8, ptr %i.gx, i64 -24 ; 2 uses
  %wide.load97 = load <2 x double>, ptr %i.gy, align 8, !tbaa !49
  %wide.load98 = load <2 x double>, ptr %i.gz, align 8, !tbaa !49
  %i.ha = getelementptr i8, ptr %i.gx, i64 -16
  %i.hb = getelementptr i8, ptr %i.gx, i64 -32
  %wide.load101 = load <2 x double>, ptr %i.ha, align 8, !tbaa !49
  %wide.load102 = load <2 x double>, ptr %i.hb, align 8, !tbaa !49
  %reverse105 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load97, <2 x double> %i.gu, <2 x double> %wide.load101)
  %reverse106 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load98, <2 x double> %i.gv, <2 x double> %wide.load102)
  store <2 x double> %reverse105, ptr %i.gy, align 8, !tbaa !49
  store <2 x double> %reverse106, ptr %i.gz, align 8, !tbaa !49
  %index.next107 = add nuw i64 %index96, 4        ; 2 uses
  %i.hc = icmp eq i64 %index.next107, %n.vec92
  br i1 %i.hc, label %middle.block108, label %vector.body95, !llvm.loop !426

middle.block108:                                  ; preds = %vector.body95
  %cmp.n109 = icmp eq i64 %i.gq, %n.vec92
  br i1 %cmp.n109, label %.loopexit140.i.i, label %.lr.ph146.i.i.preheader

.lr.ph146.i.i.preheader:                          ; preds = %.lr.ph146.preheader.i.i, %middle.block108
  %indvars.iv179.i.i.ph = phi i64 [ %indvars.iv.i.i, %.lr.ph146.preheader.i.i ], [ %i.gt, %middle.block108 ]
  br label %.lr.ph146.i.i

.lr.ph146.i.i:                                    ; preds = %.lr.ph146.i.i.preheader, %.lr.ph146.i.i
  %indvars.iv179.i.i = phi i64 [ %indvars.iv.next180.i.i, %.lr.ph146.i.i ], [ %indvars.iv179.i.i.ph, %.lr.ph146.i.i.preheader ] ; 3 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv179.i.i ; 3 uses
  %i.he = load double, ptr %i.hd, align 8, !tbaa !49
  %i.hf = getelementptr i8, ptr %i.hd, i64 -8
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !49
  %i.hh = tail call double @llvm.fmuladd.f64(double %i.he, double %.0123150.i.i, double %i.hg)
  store double %i.hh, ptr %i.hd, align 8, !tbaa !49
  %indvars.iv.next180.i.i = add nsw i64 %indvars.iv179.i.i, -1
  %i.hi = trunc nuw i64 %indvars.iv179.i.i to i32
  %i.hj = icmp sgt i32 %i.hi, 2
  br i1 %i.hj, label %.lr.ph146.i.i, label %.loopexit140.i.i, !llvm.loop !427

.loopexit141.i.i:                                 ; preds = %.loopexit140.i.i, %._crit_edge.i.i
  %.1125.i.i = phi double [ 1.000000e+00, %._crit_edge.i.i ], [ %i.gd, %.loopexit140.i.i ]
  %i.hk = phi <2 x double> [ <double 1.000000e+00, double -1.000000e+00>, %._crit_edge.i.i ], [ %i.gl, %.loopexit140.i.i ] ; 2 uses
  %i.hl = extractelement <2 x double> %i.hk, i64 1
  %i.hm = fneg double %i.hl
  %i.hn = extractelement <2 x double> %i.hk, i64 0
  %i.ho = fsub double %i.hm, %i.hn
  %i.hp = fdiv double %i.ho, %.1125.i.i           ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 1776 ; 4 uses
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !384
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.hq, i64 %i.ht
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !46
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 8 uses
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !85
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.hq, i64 %i.hy
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !46
  tail call void @N_VScale(double noundef %i.hp, ptr noundef %i.hv, ptr noundef %i.ia) #12
  %i.ib = load i32, ptr %i.a, align 8, !tbaa !84
  %.not130153.i.i = icmp slt i32 %i.ib, 2
  br i1 %.not130153.i.i, label %._crit_edge157.i.i, label %.lr.ph156.i.i

.lr.ph156.i.i:                                    ; preds = %.loopexit141.i.i, %.lr.ph156.i.i
  %indvars.iv185.i.i = phi i64 [ %indvars.iv.next186.i.i, %.lr.ph156.i.i ], [ 2, %.loopexit141.i.i ] ; 4 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv185.i.i
  %i.id = load double, ptr %i.ic, align 8, !tbaa !49
  %i.ie = load i32, ptr %i.hw, align 8, !tbaa !85
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.hq, i64 %i.if
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !46
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv185.i.i
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !46 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.id, ptr noundef %i.ih, double noundef 1.000000e+00, ptr noundef %i.ij, ptr noundef %i.ij) #12
  %indvars.iv.next186.i.i = add nuw nsw i64 %indvars.iv185.i.i, 1
  %i.ik = load i32, ptr %i.a, align 8, !tbaa !84
  %i.il = sext i32 %i.ik to i64
  %.not130.not.i.i = icmp slt i64 %indvars.iv185.i.i, %i.il
  br i1 %.not130.not.i.i, label %.lr.ph156.i.i, label %._crit_edge157.i.i, !llvm.loop !428

._crit_edge157.i.i:                               ; preds = %.lr.ph156.i.i, %.loopexit141.i.i
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.in = load i32, ptr %i.im, align 8, !tbaa !122
  %.not131.i.i = icmp eq i32 %i.in, 0
  br i1 %.not131.i.i, label %.loopexit139.i.i, label %bb.p

bb.p:                                             ; preds = %._crit_edge157.i.i
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 4 uses
  %i.ip = load i32, ptr %i.hr, align 8, !tbaa !384
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.io, i64 %i.iq
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !46
  %i.it = load i32, ptr %i.hw, align 8, !tbaa !85
  %i.iu = sext i32 %i.it to i64
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.io, i64 %i.iu
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !46
  tail call void @N_VScale(double noundef %i.hp, ptr noundef %i.is, ptr noundef %i.iw) #12
  %i.ix = load i32, ptr %i.a, align 8, !tbaa !84
  %.not132158.i.i = icmp slt i32 %i.ix, 2
  br i1 %.not132158.i.i, label %.loopexit139.i.i, label %.lr.ph161.i.i

.lr.ph161.i.i:                                    ; preds = %bb.p, %.lr.ph161.i.i
  %indvars.iv188.i.i = phi i64 [ %indvars.iv.next189.i.i, %.lr.ph161.i.i ], [ 2, %bb.p ] ; 4 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv188.i.i
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !49
  %i.ja = load i32, ptr %i.hw, align 8, !tbaa !85
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.io, i64 %i.jb
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !46
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %indvars.iv188.i.i
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !46 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.iz, ptr noundef %i.jd, double noundef 1.000000e+00, ptr noundef %i.jf, ptr noundef %i.jf) #12
  %indvars.iv.next189.i.i = add nuw nsw i64 %indvars.iv188.i.i, 1
  %i.jg = load i32, ptr %i.a, align 8, !tbaa !84
  %i.jh = sext i32 %i.jg to i64
  %.not132.not.i.i = icmp slt i64 %indvars.iv188.i.i, %i.jh
  br i1 %.not132.not.i.i, label %.lr.ph161.i.i, label %.loopexit139.i.i, !llvm.loop !429

.loopexit139.i.i:                                 ; preds = %.lr.ph161.i.i, %bb.p, %._crit_edge157.i.i
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !144
  %.not133.i.i = icmp eq i32 %i.jj, 0
  br i1 %.not133.i.i, label %.loopexit138.i.i, label %.preheader137.i.i

.preheader137.i.i:                                ; preds = %.loopexit139.i.i
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !130
  %i.jm = icmp sgt i32 %i.jl, 0
  br i1 %i.jm, label %.lr.ph168.i.i, label %.loopexit138.i.i

.lr.ph168.i.i:                                    ; preds = %.preheader137.i.i
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 4 uses
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge166.i.i, %.lr.ph168.i.i
  %indvars.iv194.i.i = phi i64 [ 0, %.lr.ph168.i.i ], [ %indvars.iv.next195.i.i, %._crit_edge166.i.i ] ; 5 uses
  %i.jo = load i32, ptr %i.hr, align 8, !tbaa !384
  %i.jp = sext i32 %i.jo to i64
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.jn, i64 %i.jp
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !134
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %indvars.iv194.i.i
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !46
  %i.ju = load i32, ptr %i.hw, align 8, !tbaa !85
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr inbounds [8 x i8], ptr %i.jn, i64 %i.jv
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !134
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %indvars.iv194.i.i
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !46
  tail call void @N_VScale(double noundef %i.hp, ptr noundef %i.jt, ptr noundef %i.jz) #12
  %i.ka = load i32, ptr %i.a, align 8, !tbaa !84
  %.not136162.i.i = icmp slt i32 %i.ka, 2
  br i1 %.not136162.i.i, label %._crit_edge166.i.i, label %.lr.ph165.i.i

.lr.ph165.i.i:                                    ; preds = %bb.q, %.lr.ph165.i.i
  %indvars.iv191.i.i = phi i64 [ %indvars.iv.next192.i.i, %.lr.ph165.i.i ], [ 2, %bb.q ] ; 4 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv191.i.i
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !49
  %i.kd = load i32, ptr %i.hw, align 8, !tbaa !85
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.jn, i64 %i.ke
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !134
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %indvars.iv194.i.i
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !46
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %indvars.iv191.i.i
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !134
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %indvars.iv194.i.i
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !46 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.kc, ptr noundef %i.ki, double noundef 1.000000e+00, ptr noundef %i.km, ptr noundef %i.km) #12
  %indvars.iv.next192.i.i = add nuw nsw i64 %indvars.iv191.i.i, 1
  %i.kn = load i32, ptr %i.a, align 8, !tbaa !84
  %i.ko = sext i32 %i.kn to i64
  %.not136.not.i.i = icmp slt i64 %indvars.iv191.i.i, %i.ko
  br i1 %.not136.not.i.i, label %.lr.ph165.i.i, label %._crit_edge166.i.i, !llvm.loop !430

._crit_edge166.i.i:                               ; preds = %.lr.ph165.i.i, %bb.q
  %indvars.iv.next195.i.i = add nuw nsw i64 %indvars.iv194.i.i, 1 ; 2 uses
  %i.kp = load i32, ptr %i.jk, align 4, !tbaa !130
  %i.kq = sext i32 %i.kp to i64
  %i.kr = icmp slt i64 %indvars.iv.next195.i.i, %i.kq
  br i1 %i.kr, label %bb.q, label %.loopexit138.i.i, !llvm.loop !431

.loopexit138.i.i:                                 ; preds = %._crit_edge166.i.i, %.preheader137.i.i, %.loopexit139.i.i
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !186
  %.not134.i.i = icmp eq i32 %i.kt, 0
  br i1 %.not134.i.i, label %cvAdjustAdams.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.loopexit138.i.i
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !130
  %i.kw = icmp sgt i32 %i.kv, 0
  br i1 %i.kw, label %.lr.ph175.i.i, label %cvAdjustAdams.exit

.lr.ph175.i.i:                                    ; preds = %.preheader.i.i
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 4 uses
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge173.i.i, %.lr.ph175.i.i
  %indvars.iv200.i.i = phi i64 [ 0, %.lr.ph175.i.i ], [ %indvars.iv.next201.i.i, %._crit_edge173.i.i ] ; 5 uses
  %i.ky = load i32, ptr %i.hr, align 8, !tbaa !384
  %i.kz = sext i32 %i.ky to i64
  %i.la = getelementptr inbounds [8 x i8], ptr %i.kx, i64 %i.kz
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !134
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %indvars.iv200.i.i
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !46
  %i.le = load i32, ptr %i.hw, align 8, !tbaa !85
  %i.lf = sext i32 %i.le to i64
  %i.lg = getelementptr inbounds [8 x i8], ptr %i.kx, i64 %i.lf
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !134
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %indvars.iv200.i.i
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !46
  tail call void @N_VScale(double noundef %i.hp, ptr noundef %i.ld, ptr noundef %i.lj) #12
  %i.lk = load i32, ptr %i.a, align 8, !tbaa !84
  %.not135169.i.i = icmp slt i32 %i.lk, 2
  br i1 %.not135169.i.i, label %._crit_edge173.i.i, label %.lr.ph172.i.i

.lr.ph172.i.i:                                    ; preds = %bb.r, %.lr.ph172.i.i
  %indvars.iv197.i.i = phi i64 [ %indvars.iv.next198.i.i, %.lr.ph172.i.i ], [ 2, %bb.r ] ; 4 uses
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv197.i.i
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !49
  %i.ln = load i32, ptr %i.hw, align 8, !tbaa !85
  %i.lo = sext i32 %i.ln to i64
  %i.lp = getelementptr inbounds [8 x i8], ptr %i.kx, i64 %i.lo
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !134
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %indvars.iv200.i.i
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !46
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %indvars.iv197.i.i
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !134
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %indvars.iv200.i.i
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !46 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.lm, ptr noundef %i.ls, double noundef 1.000000e+00, ptr noundef %i.lw, ptr noundef %i.lw) #12
  %indvars.iv.next198.i.i = add nuw nsw i64 %indvars.iv197.i.i, 1
  %i.lx = load i32, ptr %i.a, align 8, !tbaa !84
  %i.ly = sext i32 %i.lx to i64
  %.not135.not.i.i = icmp slt i64 %indvars.iv197.i.i, %i.ly
  br i1 %.not135.not.i.i, label %.lr.ph172.i.i, label %._crit_edge173.i.i, !llvm.loop !432

._crit_edge173.i.i:                               ; preds = %.lr.ph172.i.i, %bb.r
  %indvars.iv.next201.i.i = add nuw nsw i64 %indvars.iv200.i.i, 1 ; 2 uses
  %i.lz = load i32, ptr %i.ku, align 4, !tbaa !130
  %i.ma = sext i32 %i.lz to i64
  %i.mb = icmp slt i64 %indvars.iv.next201.i.i, %i.ma
  br i1 %i.mb, label %bb.r, label %cvAdjustAdams.exit, !llvm.loop !433

bb.s:                                             ; preds = %bb.m
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.md = load i32, ptr %i.mc, align 8, !tbaa !27 ; 2 uses
  %.not102.i.i = icmp slt i32 %i.md, 0
  br i1 %.not102.i.i, label %._crit_edge.i3.i, label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %bb.s
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.mf = add nuw i32 %i.md, 1
  %i.mg = zext i32 %i.mf to i64
  %i.mh = shl nuw nsw i64 %i.mg, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.me, i8 0, i64 %i.mh, i1 false), !tbaa !49
  br label %._crit_edge.i3.i

._crit_edge.i3.i:                                 ; preds = %.lr.ph.i2.i, %bb.s
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 6 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 1176
  store double 1.000000e+00, ptr %i.mj, align 8, !tbaa !49
  %.not91108.i.i = icmp slt i32 %i.b, 3
  br i1 %.not91108.i.i, label %.loopexit100.i.i, label %.lr.ph112.i.i

.lr.ph112.i.i:                                    ; preds = %._crit_edge.i3.i
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.mm = load double, ptr %i.ml, align 8, !tbaa !232
  %i.mn = add nsw i32 %i.b, -1
  %wide.trip.count.i4.i = zext nneg i32 %i.mn to i64
  br label %.lr.ph106.preheader.i.i

.preheader101.i.i:                                ; preds = %._crit_edge107.i.i
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  br label %bb.t

.lr.ph106.preheader.i.i:                          ; preds = %._crit_edge107.i.i, %.lr.ph112.i.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge107.i.i ], [ 0, %.lr.ph112.i.i ] ; 2 uses
  %indvars.iv132.i.i = phi i64 [ %indvars.iv.next133.i.i, %._crit_edge107.i.i ], [ 1, %.lr.ph112.i.i ] ; 2 uses
  %indvars.iv.i5.i = phi i64 [ %indvars.iv.next.i6.i, %._crit_edge107.i.i ], [ 3, %.lr.ph112.i.i ] ; 4 uses
  %.086109.i.i = phi double [ %i.ms, %._crit_edge107.i.i ], [ 0.000000e+00, %.lr.ph112.i.i ]
  %i.mp = add i64 %indvar, 2                      ; 3 uses
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.mk, i64 %indvars.iv132.i.i
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !49
  %i.ms = fadd double %.086109.i.i, %i.mr         ; 2 uses
  %i.mt = fdiv double %i.ms, %i.mm                ; 2 uses
  %min.iters.check = icmp ult i64 %i.mp, 4
  br i1 %min.iters.check, label %.lr.ph106.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph106.preheader.i.i
  %n.vec = and i64 %i.mp, -4                      ; 3 uses
  %i.mu = sub i64 %indvars.iv.i5.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.mt, i64 0 ; 2 uses
  %i.mv = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mw = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.mx = sub i64 %indvars.iv.i5.i, %index
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.mi, i64 %i.mx ; 4 uses
  %i.mz = getelementptr inbounds i8, ptr %i.my, i64 -8 ; 2 uses
  %i.na = getelementptr inbounds i8, ptr %i.my, i64 -24 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.mz, align 8, !tbaa !49
  %wide.load79 = load <2 x double>, ptr %i.na, align 8, !tbaa !49
  %i.nb = getelementptr i8, ptr %i.my, i64 -16
  %i.nc = getelementptr i8, ptr %i.my, i64 -32
  %wide.load81 = load <2 x double>, ptr %i.nb, align 8, !tbaa !49
  %wide.load82 = load <2 x double>, ptr %i.nc, align 8, !tbaa !49
  %reverse85 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %i.mv, <2 x double> %wide.load81)
  %reverse86 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load79, <2 x double> %i.mw, <2 x double> %wide.load82)
  store <2 x double> %reverse85, ptr %i.mz, align 8, !tbaa !49
  store <2 x double> %reverse86, ptr %i.na, align 8, !tbaa !49
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.nd = icmp eq i64 %index.next, %n.vec
  br i1 %i.nd, label %middle.block, label %vector.body, !llvm.loop !434

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.mp, %n.vec
  br i1 %cmp.n, label %._crit_edge107.i.i, label %.lr.ph106.i.i.preheader

.lr.ph106.i.i.preheader:                          ; preds = %.lr.ph106.preheader.i.i, %middle.block
  %indvars.iv129.i.i.ph = phi i64 [ %indvars.iv.i5.i, %.lr.ph106.preheader.i.i ], [ %i.mu, %middle.block ]
  br label %.lr.ph106.i.i

.lr.ph106.i.i:                                    ; preds = %.lr.ph106.i.i.preheader, %.lr.ph106.i.i
  %indvars.iv129.i.i = phi i64 [ %indvars.iv.next130.i.i, %.lr.ph106.i.i ], [ %indvars.iv129.i.i.ph, %.lr.ph106.i.i.preheader ] ; 3 uses
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.mi, i64 %indvars.iv129.i.i ; 3 uses
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !49
  %i.ng = getelementptr i8, ptr %i.ne, i64 -8
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !49
  %i.ni = tail call double @llvm.fmuladd.f64(double %i.nf, double %i.mt, double %i.nh)
  store double %i.ni, ptr %i.ne, align 8, !tbaa !49
  %indvars.iv.next130.i.i = add nsw i64 %indvars.iv129.i.i, -1
  %i.nj = icmp sgt i64 %indvars.iv129.i.i, 2
  br i1 %i.nj, label %.lr.ph106.i.i, label %._crit_edge107.i.i, !llvm.loop !435

._crit_edge107.i.i:                               ; preds = %.lr.ph106.i.i, %middle.block
  %indvars.iv.next133.i.i = add nuw nsw i64 %indvars.iv132.i.i, 1 ; 2 uses
  %indvars.iv.next.i6.i = add nuw nsw i64 %indvars.iv.i5.i, 1
  %exitcond.not.i7.i = icmp eq i64 %indvars.iv.next133.i.i, %wide.trip.count.i4.i
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not.i7.i, label %.preheader101.i.i, label %.lr.ph106.preheader.i.i, !llvm.loop !436

bb.t:                                             ; preds = %bb.t, %.preheader101.i.i
  %indvars.iv135.i.i = phi i64 [ 2, %.preheader101.i.i ], [ %indvars.iv.next136.i.i, %bb.t ] ; 3 uses
  %i.nk = phi i32 [ %i.b, %.preheader101.i.i ], [ %i.nt, %bb.t ]
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.mi, i64 %indvars.iv135.i.i
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !49
  %i.nn = fneg double %i.nm
  %i.no = sext i32 %i.nk to i64
  %i.np = getelementptr inbounds [8 x i8], ptr %i.mo, i64 %i.no
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !46
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %indvars.iv135.i.i
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !46 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.nn, ptr noundef %i.nq, double noundef 1.000000e+00, ptr noundef %i.ns, ptr noundef %i.ns) #12
  %indvars.iv.next136.i.i = add nuw nsw i64 %indvars.iv135.i.i, 1 ; 2 uses
  %i.nt = load i32, ptr %i.a, align 8, !tbaa !84  ; 5 uses
  %i.nu = sext i32 %i.nt to i64
  %i.nv = icmp slt i64 %indvars.iv.next136.i.i, %i.nu
  br i1 %i.nv, label %bb.t, label %._crit_edge115.i.i, !llvm.loop !437

._crit_edge115.i.i:                               ; preds = %bb.t
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.nx = load i32, ptr %i.nw, align 8, !tbaa !122
  %.not92.i.i = icmp ne i32 %i.nx, 0
  %i.ny = icmp sgt i32 %i.nt, 2
  %or.cond.i.i = and i1 %i.ny, %.not92.i.i
  br i1 %or.cond.i.i, label %.lr.ph117.i.i, label %.loopexit100.i.i

.lr.ph117.i.i:                                    ; preds = %._crit_edge115.i.i
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph117.i.i
  %indvars.iv138.i.i = phi i64 [ 2, %.lr.ph117.i.i ], [ %indvars.iv.next139.i.i, %bb.u ] ; 3 uses
  %i.oa = phi i32 [ %i.nt, %.lr.ph117.i.i ], [ %i.oj, %bb.u ]
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.mi, i64 %indvars.iv138.i.i
  %i.oc = load double, ptr %i.ob, align 8, !tbaa !49
  %i.od = fneg double %i.oc
  %i.oe = sext i32 %i.oa to i64
  %i.of = getelementptr inbounds [8 x i8], ptr %i.nz, i64 %i.oe
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !46
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %indvars.iv138.i.i
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !46 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.od, ptr noundef %i.og, double noundef 1.000000e+00, ptr noundef %i.oi, ptr noundef %i.oi) #12
  %indvars.iv.next139.i.i = add nuw nsw i64 %indvars.iv138.i.i, 1 ; 2 uses
  %i.oj = load i32, ptr %i.a, align 8, !tbaa !84  ; 3 uses
  %i.ok = sext i32 %i.oj to i64
  %i.ol = icmp slt i64 %indvars.iv.next139.i.i, %i.ok
  br i1 %i.ol, label %bb.u, label %.loopexit100.i.i, !llvm.loop !438

.loopexit100.i.i:                                 ; preds = %bb.u, %._crit_edge115.i.i, %._crit_edge.i3.i
  %i.om = phi i32 [ %i.nt, %._crit_edge115.i.i ], [ %i.b, %._crit_edge.i3.i ], [ %i.oj, %bb.u ] ; 5 uses
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.oo = load i32, ptr %i.on, align 8, !tbaa !144
  %.not93.i.i = icmp eq i32 %i.oo, 0
  br i1 %.not93.i.i, label %.loopexit98.i.i, label %.preheader97.i.i

.preheader97.i.i:                                 ; preds = %.loopexit100.i.i
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !130 ; 2 uses
  %i.or = icmp sgt i32 %i.oq, 0
  br i1 %i.or, label %.preheader96.lr.ph.i.i, label %.loopexit98.i.i

.preheader96.lr.ph.i.i:                           ; preds = %.preheader97.i.i
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.ot = icmp sgt i32 %i.om, 2
  br i1 %i.ot, label %.preheader96.i.i, label %.loopexit98.i.i

.preheader96.i.i:                                 ; preds = %.preheader96.lr.ph.i.i, %._crit_edge120.i.i
  %i.ou = phi i32 [ %i.pn, %._crit_edge120.i.i ], [ %i.oq, %.preheader96.lr.ph.i.i ]
  %i.ov = phi i32 [ %i.po, %._crit_edge120.i.i ], [ %i.om, %.preheader96.lr.ph.i.i ] ; 3 uses
  %indvars.iv144.i.i = phi i64 [ %indvars.iv.next145.i.i, %._crit_edge120.i.i ], [ 0, %.preheader96.lr.ph.i.i ] ; 3 uses
  %i.ow = icmp sgt i32 %i.ov, 2
  br i1 %i.ow, label %.lr.ph119.i.i, label %._crit_edge120.i.i

.lr.ph119.i.i:                                    ; preds = %.preheader96.i.i, %.lr.ph119.i.i
  %indvars.iv141.i.i = phi i64 [ %indvars.iv.next142.i.i, %.lr.ph119.i.i ], [ 2, %.preheader96.i.i ] ; 3 uses
  %i.ox = phi i32 [ %i.pk, %.lr.ph119.i.i ], [ %i.ov, %.preheader96.i.i ]
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.mi, i64 %indvars.iv141.i.i
  %i.oz = load double, ptr %i.oy, align 8, !tbaa !49
  %i.pa = fneg double %i.oz
  %i.pb = sext i32 %i.ox to i64
  %i.pc = getelementptr inbounds [8 x i8], ptr %i.os, i64 %i.pb
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !134
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %indvars.iv144.i.i
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !46
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.os, i64 %indvars.iv141.i.i
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !134
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.ph, i64 %indvars.iv144.i.i
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !46 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.pa, ptr noundef %i.pf, double noundef 1.000000e+00, ptr noundef %i.pj, ptr noundef %i.pj) #12
  %indvars.iv.next142.i.i = add nuw nsw i64 %indvars.iv141.i.i, 1 ; 2 uses
  %i.pk = load i32, ptr %i.a, align 8, !tbaa !84  ; 3 uses
  %i.pl = sext i32 %i.pk to i64
  %i.pm = icmp slt i64 %indvars.iv.next142.i.i, %i.pl
  br i1 %i.pm, label %.lr.ph119.i.i, label %._crit_edge120.loopexit.i.i, !llvm.loop !439

._crit_edge120.loopexit.i.i:                      ; preds = %.lr.ph119.i.i
  %.pre.i.i = load i32, ptr %i.op, align 4, !tbaa !130
  br label %._crit_edge120.i.i

._crit_edge120.i.i:                               ; preds = %._crit_edge120.loopexit.i.i, %.preheader96.i.i
  %i.pn = phi i32 [ %.pre.i.i, %._crit_edge120.loopexit.i.i ], [ %i.ou, %.preheader96.i.i ] ; 2 uses
  %i.po = phi i32 [ %i.pk, %._crit_edge120.loopexit.i.i ], [ %i.ov, %.preheader96.i.i ] ; 2 uses
  %indvars.iv.next145.i.i = add nuw nsw i64 %indvars.iv144.i.i, 1 ; 2 uses
  %i.pp = sext i32 %i.pn to i64
  %i.pq = icmp slt i64 %indvars.iv.next145.i.i, %i.pp
  br i1 %i.pq, label %.preheader96.i.i, label %.loopexit98.i.i, !llvm.loop !440

.loopexit98.i.i:                                  ; preds = %._crit_edge120.i.i, %.preheader96.lr.ph.i.i, %.preheader97.i.i, %.loopexit100.i.i
  %i.pr = phi i32 [ %i.om, %.loopexit100.i.i ], [ %i.om, %.preheader96.lr.ph.i.i ], [ %i.om, %.preheader97.i.i ], [ %i.po, %._crit_edge120.i.i ] ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.pt = load i32, ptr %i.ps, align 8, !tbaa !186
  %.not94.i.i = icmp eq i32 %i.pt, 0
  br i1 %.not94.i.i, label %cvAdjustAdams.exit, label %.preheader95.i.i

.preheader95.i.i:                                 ; preds = %.loopexit98.i.i
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !130 ; 2 uses
  %i.pw = icmp sgt i32 %i.pv, 0
  br i1 %i.pw, label %.preheader.lr.ph.i.i, label %cvAdjustAdams.exit

.preheader.lr.ph.i.i:                             ; preds = %.preheader95.i.i
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  %i.py = icmp sgt i32 %i.pr, 2
  br i1 %i.py, label %.preheader.i8.i, label %cvAdjustAdams.exit

.preheader.i8.i:                                  ; preds = %.preheader.lr.ph.i.i, %._crit_edge124.i.i
  %i.pz = phi i32 [ %i.qs, %._crit_edge124.i.i ], [ %i.pv, %.preheader.lr.ph.i.i ]
  %i.qa = phi i32 [ %i.qt, %._crit_edge124.i.i ], [ %i.pr, %.preheader.lr.ph.i.i ] ; 3 uses
  %indvars.iv150.i.i = phi i64 [ %indvars.iv.next151.i.i, %._crit_edge124.i.i ], [ 0, %.preheader.lr.ph.i.i ] ; 3 uses
  %i.qb = icmp sgt i32 %i.qa, 2
  br i1 %i.qb, label %.lr.ph123.i.i, label %._crit_edge124.i.i

.lr.ph123.i.i:                                    ; preds = %.preheader.i8.i, %.lr.ph123.i.i
  %indvars.iv147.i.i = phi i64 [ %indvars.iv.next148.i.i, %.lr.ph123.i.i ], [ 2, %.preheader.i8.i ] ; 3 uses
  %i.qc = phi i32 [ %i.qp, %.lr.ph123.i.i ], [ %i.qa, %.preheader.i8.i ]
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.mi, i64 %indvars.iv147.i.i
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !49
  %i.qf = fneg double %i.qe
  %i.qg = sext i32 %i.qc to i64
  %i.qh = getelementptr inbounds [8 x i8], ptr %i.px, i64 %i.qg
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !134
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.qi, i64 %indvars.iv150.i.i
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !46
end_hunk_0
