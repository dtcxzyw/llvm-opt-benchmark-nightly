Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/cvodes?download=true
inline.NumInlined: 100
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 36
begin_hunk_0_@cvAdjustOrder:bb.a
  tail call void @llvm.assume(i1 %lcmp.mod145)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %i.cg = phi double [ %.epil.init, %.epil.preheader ], [ %i.ck, %bb.i ]
  %indvars.iv143.i.epil = phi i64 [ %indvars.iv143.i.epil.init, %.epil.preheader ], [ %indvars.iv.next144.i.epil, %bb.i ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %indvars.iv.next144.i.epil = add nuw nsw i64 %indvars.iv143.i.epil, 1 ; 3 uses
  %i.ch = trunc nuw nsw i64 %indvars.iv.next144.i.epil to i32
  %i.ci = uitofp nneg i32 %i.ch to double
  %i.cj = fdiv double %i.cg, %i.ci
  %i.ck = fmul double %i.cj, %i.av                ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next144.i.epil
  store double %i.ck, ptr %i.cl, align 8, !tbaa !49
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph124.i, label %bb.i, !llvm.loop !419

.lr.ph124.i:                                      ; preds = %bb.i, %.lr.ph124.i.unr-lcssa
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.j, %.preheader106.i.new
  %i.cn = phi double [ %.pre.i, %.preheader106.i.new ], [ %i.dg, %bb.j ]
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
  %i.gb = fadd double %.0122151.i.i, %6           ; 2 uses
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
  %2 = sub i32 %i.gn, %smin                       ; 2 uses
  %3 = zext i32 %2 to i64
  %4 = add nuw nsw i64 %3, 1                      ; 2 uses
  %indvars.iv.next183.i.i = add nuw nsw i64 %indvars.iv182.i.i, 1 ; 4 uses
  %5 = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %indvars.iv.next183.i.i
  %6 = load double, ptr %5, align 8, !tbaa !49
  %min.iters.check90 = icmp ult i32 %2, 3
  br i1 %min.iters.check90, label %.lr.ph146.i.i.preheader, label %vector.ph91

vector.ph91:                                      ; preds = %.lr.ph146.preheader.i.i
  %n.vec92 = and i64 %4, 8589934588               ; 3 uses
  %i.go = sub nsw i64 %indvars.iv.i.i, %n.vec92
  %broadcast.splatinsert93 = insertelement <2 x double> poison, double %.0123150.i.i, i64 0 ; 2 uses
  %i.gp = shufflevector <2 x double> %broadcast.splatinsert93, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gq = shufflevector <2 x double> %broadcast.splatinsert93, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph91
  %index96 = phi i64 [ 0, %vector.ph91 ], [ %index.next107, %vector.body95 ] ; 2 uses
  %i.gr = sub i64 %indvars.iv.i.i, %index96
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.gr ; 4 uses
  %i.gt = getelementptr inbounds i8, ptr %i.gs, i64 -8 ; 2 uses
  %i.gu = getelementptr inbounds i8, ptr %i.gs, i64 -24 ; 2 uses
  %wide.load97 = load <2 x double>, ptr %i.gt, align 8, !tbaa !49
  %wide.load98 = load <2 x double>, ptr %i.gu, align 8, !tbaa !49
  %i.gv = getelementptr i8, ptr %i.gs, i64 -16
  %i.gw = getelementptr i8, ptr %i.gs, i64 -32
  %wide.load101 = load <2 x double>, ptr %i.gv, align 8, !tbaa !49
  %wide.load102 = load <2 x double>, ptr %i.gw, align 8, !tbaa !49
  %reverse105 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load97, <2 x double> %i.gp, <2 x double> %wide.load101)
  %reverse106 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load98, <2 x double> %i.gq, <2 x double> %wide.load102)
  store <2 x double> %reverse105, ptr %i.gt, align 8, !tbaa !49
  store <2 x double> %reverse106, ptr %i.gu, align 8, !tbaa !49
  %index.next107 = add nuw i64 %index96, 4        ; 2 uses
  %i.gx = icmp eq i64 %index.next107, %n.vec92
  br i1 %i.gx, label %middle.block108, label %vector.body95, !llvm.loop !426

middle.block108:                                  ; preds = %vector.body95
  %cmp.n109 = icmp eq i64 %4, %n.vec92
  br i1 %cmp.n109, label %.loopexit140.i.i, label %.lr.ph146.i.i.preheader

.lr.ph146.i.i.preheader:                          ; preds = %.lr.ph146.preheader.i.i, %middle.block108
  %indvars.iv179.i.i.ph = phi i64 [ %indvars.iv.i.i, %.lr.ph146.preheader.i.i ], [ %i.go, %middle.block108 ]
  br label %.lr.ph146.i.i

.lr.ph146.i.i:                                    ; preds = %.lr.ph146.i.i.preheader, %.lr.ph146.i.i
  %indvars.iv179.i.i = phi i64 [ %indvars.iv.next180.i.i, %.lr.ph146.i.i ], [ %indvars.iv179.i.i.ph, %.lr.ph146.i.i.preheader ] ; 3 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv179.i.i ; 3 uses
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !49
  %i.ha = getelementptr i8, ptr %i.gy, i64 -8
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !49
  %i.hc = tail call double @llvm.fmuladd.f64(double %i.gz, double %.0123150.i.i, double %i.hb)
  store double %i.hc, ptr %i.gy, align 8, !tbaa !49
  %indvars.iv.next180.i.i = add nsw i64 %indvars.iv179.i.i, -1
  %i.hd = trunc nuw i64 %indvars.iv179.i.i to i32
  %i.he = icmp sgt i32 %i.hd, 2
  br i1 %i.he, label %.lr.ph146.i.i, label %.loopexit140.i.i, !llvm.loop !427

.loopexit141.i.i:                                 ; preds = %.loopexit140.i.i, %._crit_edge.i.i
  %.1125.i.i = phi double [ 1.000000e+00, %._crit_edge.i.i ], [ %i.gd, %.loopexit140.i.i ]
  %i.hf = phi <2 x double> [ <double 1.000000e+00, double -1.000000e+00>, %._crit_edge.i.i ], [ %i.gl, %.loopexit140.i.i ] ; 2 uses
  %i.hg = extractelement <2 x double> %i.hf, i64 1
  %i.hh = fneg double %i.hg
  %i.hi = extractelement <2 x double> %i.hf, i64 0
  %i.hj = fsub double %i.hh, %i.hi
  %i.hk = fdiv double %i.hj, %.1125.i.i           ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 1776 ; 4 uses
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !384
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.hl, i64 %i.ho
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !46
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 8 uses
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !85
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.hl, i64 %i.ht
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !46
  tail call void @N_VScale(double noundef %i.hk, ptr noundef %i.hq, ptr noundef %i.hv) #12
  %i.hw = load i32, ptr %i.a, align 8, !tbaa !84
  %.not130153.i.i = icmp slt i32 %i.hw, 2
  br i1 %.not130153.i.i, label %._crit_edge157.i.i, label %.lr.ph156.i.i

.lr.ph156.i.i:                                    ; preds = %.loopexit141.i.i, %.lr.ph156.i.i
  %indvars.iv185.i.i = phi i64 [ %indvars.iv.next186.i.i, %.lr.ph156.i.i ], [ 2, %.loopexit141.i.i ] ; 4 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv185.i.i
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !49
  %i.hz = load i32, ptr %i.hr, align 8, !tbaa !85
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.hl, i64 %i.ia
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !46
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %indvars.iv185.i.i
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !46 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.hy, ptr noundef %i.ic, double noundef 1.000000e+00, ptr noundef %i.ie, ptr noundef %i.ie) #12
  %indvars.iv.next186.i.i = add nuw nsw i64 %indvars.iv185.i.i, 1
  %i.if = load i32, ptr %i.a, align 8, !tbaa !84
  %i.ig = sext i32 %i.if to i64
  %.not130.not.i.i = icmp slt i64 %indvars.iv185.i.i, %i.ig
  br i1 %.not130.not.i.i, label %.lr.ph156.i.i, label %._crit_edge157.i.i, !llvm.loop !428

._crit_edge157.i.i:                               ; preds = %.lr.ph156.i.i, %.loopexit141.i.i
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !122
  %.not131.i.i = icmp eq i32 %i.ii, 0
  br i1 %.not131.i.i, label %.loopexit139.i.i, label %bb.p

bb.p:                                             ; preds = %._crit_edge157.i.i
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 4 uses
  %i.ik = load i32, ptr %i.hm, align 8, !tbaa !384
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [8 x i8], ptr %i.ij, i64 %i.il
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !46
  %i.io = load i32, ptr %i.hr, align 8, !tbaa !85
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.ij, i64 %i.ip
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !46
  tail call void @N_VScale(double noundef %i.hk, ptr noundef %i.in, ptr noundef %i.ir) #12
  %i.is = load i32, ptr %i.a, align 8, !tbaa !84
  %.not132158.i.i = icmp slt i32 %i.is, 2
  br i1 %.not132158.i.i, label %.loopexit139.i.i, label %.lr.ph161.i.i

.lr.ph161.i.i:                                    ; preds = %bb.p, %.lr.ph161.i.i
  %indvars.iv188.i.i = phi i64 [ %indvars.iv.next189.i.i, %.lr.ph161.i.i ], [ 2, %bb.p ] ; 4 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv188.i.i
  %i.iu = load double, ptr %i.it, align 8, !tbaa !49
  %i.iv = load i32, ptr %i.hr, align 8, !tbaa !85
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.ij, i64 %i.iw
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !46
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv188.i.i
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !46 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.iu, ptr noundef %i.iy, double noundef 1.000000e+00, ptr noundef %i.ja, ptr noundef %i.ja) #12
  %indvars.iv.next189.i.i = add nuw nsw i64 %indvars.iv188.i.i, 1
  %i.jb = load i32, ptr %i.a, align 8, !tbaa !84
  %i.jc = sext i32 %i.jb to i64
  %.not132.not.i.i = icmp slt i64 %indvars.iv188.i.i, %i.jc
  br i1 %.not132.not.i.i, label %.lr.ph161.i.i, label %.loopexit139.i.i, !llvm.loop !429

.loopexit139.i.i:                                 ; preds = %.lr.ph161.i.i, %bb.p, %._crit_edge157.i.i
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !144
  %.not133.i.i = icmp eq i32 %i.je, 0
  br i1 %.not133.i.i, label %.loopexit138.i.i, label %.preheader137.i.i

.preheader137.i.i:                                ; preds = %.loopexit139.i.i
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !130
  %i.jh = icmp sgt i32 %i.jg, 0
  br i1 %i.jh, label %.lr.ph168.i.i, label %.loopexit138.i.i

.lr.ph168.i.i:                                    ; preds = %.preheader137.i.i
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 4 uses
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge166.i.i, %.lr.ph168.i.i
  %indvars.iv194.i.i = phi i64 [ 0, %.lr.ph168.i.i ], [ %indvars.iv.next195.i.i, %._crit_edge166.i.i ] ; 5 uses
  %i.jj = load i32, ptr %i.hm, align 8, !tbaa !384
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr inbounds [8 x i8], ptr %i.ji, i64 %i.jk
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !134
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %indvars.iv194.i.i
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !46
  %i.jp = load i32, ptr %i.hr, align 8, !tbaa !85
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds [8 x i8], ptr %i.ji, i64 %i.jq
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !134
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %indvars.iv194.i.i
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !46
  tail call void @N_VScale(double noundef %i.hk, ptr noundef %i.jo, ptr noundef %i.ju) #12
  %i.jv = load i32, ptr %i.a, align 8, !tbaa !84
  %.not136162.i.i = icmp slt i32 %i.jv, 2
  br i1 %.not136162.i.i, label %._crit_edge166.i.i, label %.lr.ph165.i.i

.lr.ph165.i.i:                                    ; preds = %bb.q, %.lr.ph165.i.i
  %indvars.iv191.i.i = phi i64 [ %indvars.iv.next192.i.i, %.lr.ph165.i.i ], [ 2, %bb.q ] ; 4 uses
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv191.i.i
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !49
  %i.jy = load i32, ptr %i.hr, align 8, !tbaa !85
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.ji, i64 %i.jz
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !134
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %indvars.iv194.i.i
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !46
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %indvars.iv191.i.i
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !134
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %indvars.iv194.i.i
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !46 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.jx, ptr noundef %i.kd, double noundef 1.000000e+00, ptr noundef %i.kh, ptr noundef %i.kh) #12
  %indvars.iv.next192.i.i = add nuw nsw i64 %indvars.iv191.i.i, 1
  %i.ki = load i32, ptr %i.a, align 8, !tbaa !84
  %i.kj = sext i32 %i.ki to i64
  %.not136.not.i.i = icmp slt i64 %indvars.iv191.i.i, %i.kj
  br i1 %.not136.not.i.i, label %.lr.ph165.i.i, label %._crit_edge166.i.i, !llvm.loop !430

._crit_edge166.i.i:                               ; preds = %.lr.ph165.i.i, %bb.q
  %indvars.iv.next195.i.i = add nuw nsw i64 %indvars.iv194.i.i, 1 ; 2 uses
  %i.kk = load i32, ptr %i.jf, align 4, !tbaa !130
  %i.kl = sext i32 %i.kk to i64
  %i.km = icmp slt i64 %indvars.iv.next195.i.i, %i.kl
  br i1 %i.km, label %bb.q, label %.loopexit138.i.i, !llvm.loop !431

.loopexit138.i.i:                                 ; preds = %._crit_edge166.i.i, %.preheader137.i.i, %.loopexit139.i.i
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ko = load i32, ptr %i.kn, align 8, !tbaa !186
  %.not134.i.i = icmp eq i32 %i.ko, 0
  br i1 %.not134.i.i, label %cvAdjustAdams.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.loopexit138.i.i
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !130
  %i.kr = icmp sgt i32 %i.kq, 0
  br i1 %i.kr, label %.lr.ph175.i.i, label %cvAdjustAdams.exit

.lr.ph175.i.i:                                    ; preds = %.preheader.i.i
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 4 uses
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge173.i.i, %.lr.ph175.i.i
  %indvars.iv200.i.i = phi i64 [ 0, %.lr.ph175.i.i ], [ %indvars.iv.next201.i.i, %._crit_edge173.i.i ] ; 5 uses
  %i.kt = load i32, ptr %i.hm, align 8, !tbaa !384
  %i.ku = sext i32 %i.kt to i64
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.ks, i64 %i.ku
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !134
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %indvars.iv200.i.i
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !46
  %i.kz = load i32, ptr %i.hr, align 8, !tbaa !85
  %i.la = sext i32 %i.kz to i64
  %i.lb = getelementptr inbounds [8 x i8], ptr %i.ks, i64 %i.la
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !134
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %indvars.iv200.i.i
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !46
  tail call void @N_VScale(double noundef %i.hk, ptr noundef %i.ky, ptr noundef %i.le) #12
  %i.lf = load i32, ptr %i.a, align 8, !tbaa !84
  %.not135169.i.i = icmp slt i32 %i.lf, 2
  br i1 %.not135169.i.i, label %._crit_edge173.i.i, label %.lr.ph172.i.i

.lr.ph172.i.i:                                    ; preds = %bb.r, %.lr.ph172.i.i
  %indvars.iv197.i.i = phi i64 [ %indvars.iv.next198.i.i, %.lr.ph172.i.i ], [ 2, %bb.r ] ; 4 uses
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv197.i.i
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !49
end_hunk_0
