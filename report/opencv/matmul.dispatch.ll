Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/matmul.dispatch?download=true
inline.NumInlined: 1374
inline.NumDeleted: 190
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 224
loop-unroll.NumUnrolled: 233
begin_hunk_0_@_ZN2cv12cpu_baselineL24perspectiveTransform_32fEPKfPfPKdiii:bb.a
  %i.ba = load double, ptr %i.az, align 8, !tbaa !29
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bf = zext nneg i32 %i.as to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph229.i
  %indvars.iv259.i = phi i64 [ 0, %.lr.ph229.i ], [ %indvars.iv.next260.i, %bb.h ] ; 5 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv259.i
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv259.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = add nuw nsw i64 %indvars.iv259.i, 2     ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bj
  %i.bl = load float, ptr %i.bg, align 4, !tbaa !22
  %i.bm = load float, ptr %i.bi, align 4, !tbaa !22
  %i.bn = load float, ptr %i.bk, align 4, !tbaa !22
  %i.bo = fpext float %i.bl to double             ; 3 uses
  %i.bp = fpext float %i.bm to double             ; 3 uses
  %i.bq = fmul double %i.aw, %i.bp
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bo, double %i.au, double %i.bq)
  %i.bs = fpext float %i.bn to double             ; 3 uses
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.ay, double %i.br)
  %i.bu = fadd double %i.ba, %i.bt                ; 2 uses
  %i.bv = tail call double @llvm.fabs.f64(double %i.bu)
  %i.bw = fcmp ogt double %i.bv, f0x3E80000000000000
  br i1 %i.bw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bx = fdiv double 1.000000e+00, %i.bu         ; 2 uses
  %i.by = load <8 x double>, ptr %2, align 8, !tbaa !29 ; 4 uses
  %i.bz = shufflevector <8 x double> %i.by, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.ca = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cc = fmul <2 x double> %i.bz, %i.cb
  %i.cd = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cf = shufflevector <8 x double> %i.by, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.cg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> %i.cf, <2 x double> %i.cc)
  %i.ch = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cj = shufflevector <8 x double> %i.by, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> %i.cj, <2 x double> %i.cg)
  %i.cl = shufflevector <8 x double> %i.by, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.cm = fadd <2 x double> %i.cl, %i.ck
  %i.cn = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cp = fmul <2 x double> %i.co, %i.cm
  %i.cq = fptrunc <2 x double> %i.cp to <2 x float>
  %i.cr = load double, ptr %i.bb, align 8, !tbaa !29
  %i.cs = load double, ptr %i.bc, align 8, !tbaa !29
  %i.ct = fmul double %i.cs, %i.bp
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.bo, double %i.cr, double %i.ct)
  %i.cv = load double, ptr %i.bd, align 8, !tbaa !29
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.cv, double %i.cu)
  %i.cx = load double, ptr %i.be, align 8, !tbaa !29
  %i.cy = fadd double %i.cx, %i.cw
  %i.cz = fmul double %i.bx, %i.cy
  %i.da = fptrunc double %i.cz to float
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink266.i = phi float [ %i.da, %bb.g ], [ 0.000000e+00, %bb.f ]
  %i.db = phi <2 x float> [ %i.cq, %bb.g ], [ zeroinitializer, %bb.f ]
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv259.i
  store <2 x float> %i.db, ptr %i.dc, align 4, !tbaa !22
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bj
  store float %.sink266.i, ptr %i.dd, align 4, !tbaa !22
  %indvars.iv.next260.i = add nuw nsw i64 %indvars.iv259.i, 3 ; 2 uses
  %i.de = icmp samesign ult i64 %indvars.iv.next260.i, %i.bf
  br i1 %i.de, label %bb.f, label %_ZN2cv12cpu_baselineL21perspectiveTransform_IfEEvPKT_PS2_PKdiii.exit, !llvm.loop !310

bb.i:                                             ; preds = %bb.e
  %or.cond5.i = and i1 %i.ap, %i.b
  %i.df = icmp sgt i32 %3, 0                      ; 2 uses
  br i1 %or.cond5.i, label %.preheader195.i, label %.preheader201.i

.preheader201.i:                                  ; preds = %bb.i
  br i1 %i.df, label %.lr.ph223.i, label %_ZN2cv12cpu_baselineL21perspectiveTransform_IfEEvPKT_PS2_PKdiii.exit

.lr.ph223.i:                                      ; preds = %.preheader201.i
  %i.dg = add nsw i32 %4, 1                       ; 2 uses
  %i.dh = mul nsw i32 %5, %i.dg
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.di ; 6 uses
  %i.dk = sext i32 %4 to i64                      ; 8 uses
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.dk
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !29 ; 8 uses
  %i.dn = icmp sgt i32 %4, 0
  %i.do = icmp sgt i32 %5, 0
  %i.dp = sext i32 %i.dg to i64                   ; 6 uses
  %i.dq = sext i32 %5 to i64
  %i.dr = zext i32 %5 to i64                      ; 4 uses
  %i.ds = shl nuw nsw i64 %i.dr, 2
  %wide.trip.count.i = zext i32 %4 to i64         ; 4 uses
  br i1 %i.do, label %.lr.ph223.i.split.us.preheader, label %_ZN2cv12cpu_baselineL21perspectiveTransform_IfEEvPKT_PS2_PKdiii.exit

.lr.ph223.i.split.us.preheader:                   ; preds = %.lr.ph223.i
  %i.dt = tail call double @llvm.fabs.f64(double %i.dm)
  %i.du = fcmp ogt double %i.dt, f0x3E80000000000000
  %xtraiter = and i64 %i.dr, 3                    ; 3 uses
  %i.dv = icmp ult i32 %5, 4
  %unroll_iter = and i64 %i.dr, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod63 = icmp ne i64 %xtraiter, 0
  %xtraiter64 = and i64 %wide.trip.count.i, 3     ; 3 uses
  %i.dw = icmp ult i32 %4, 4
  %unroll_iter69 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod66.not = icmp eq i64 %xtraiter64, 0
  %lcmp.mod68 = icmp ne i64 %xtraiter64, 0
  %xtraiter71 = and i64 %wide.trip.count.i, 3     ; 3 uses
  %i.dx = icmp ult i32 %4, 4
  %unroll_iter76 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod73.not = icmp eq i64 %xtraiter71, 0
  %lcmp.mod75 = icmp ne i64 %xtraiter71, 0
  br label %.lr.ph223.i.split.us

.lr.ph223.i.split.us:                             ; preds = %.lr.ph223.i.split.us.preheader, %.loopexit198.i.us
  %.3222.i.us = phi i32 [ %i.hv, %.loopexit198.i.us ], [ 0, %.lr.ph223.i.split.us.preheader ]
  %.1189219.i.us = phi ptr [ %i.hw, %.loopexit198.i.us ], [ %0, %.lr.ph223.i.split.us.preheader ] ; 11 uses
  %.1191216.i.us = phi ptr [ %i.hx, %.loopexit198.i.us ], [ %1, %.lr.ph223.i.split.us.preheader ] ; 8 uses
  br i1 %i.dn, label %.lr.ph.i.us.preheader, label %._crit_edge.i.us.thread

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph223.i.split.us
  br i1 %i.dw, label %.lr.ph.i.us.epil.preheader, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us.3, %.lr.ph.i.us ], [ 0, %.lr.ph.i.us.preheader ] ; 6 uses
  %.0184203.i.us = phi double [ %i.ev, %.lr.ph.i.us ], [ %i.dm, %.lr.ph.i.us.preheader ]
  %niter70 = phi i64 [ %niter70.next.3, %.lr.ph.i.us ], [ 0, %.lr.ph.i.us.preheader ]
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.i.us
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !29
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.1189219.i.us, i64 %indvars.iv.i.us
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !22
  %i.ec = fpext float %i.eb to double
  %i.ed = tail call double @llvm.fmuladd.f64(double %i.dz, double %i.ec, double %.0184203.i.us)
  %indvars.iv.next.i.us = or disjoint i64 %indvars.iv.i.us, 1 ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.next.i.us
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !29
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %.1189219.i.us, i64 %indvars.iv.next.i.us
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !22
  %i.ei = fpext float %i.eh to double
  %i.ej = tail call double @llvm.fmuladd.f64(double %i.ef, double %i.ei, double %i.ed)
  %indvars.iv.next.i.us.1 = or disjoint i64 %indvars.iv.i.us, 2 ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.next.i.us.1
  %i.el = load double, ptr %i.ek, align 8, !tbaa !29
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.1189219.i.us, i64 %indvars.iv.next.i.us.1
  %i.en = load float, ptr %i.em, align 4, !tbaa !22
  %i.eo = fpext float %i.en to double
  %i.ep = tail call double @llvm.fmuladd.f64(double %i.el, double %i.eo, double %i.ej)
  %indvars.iv.next.i.us.2 = or disjoint i64 %indvars.iv.i.us, 3 ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.next.i.us.2
  %i.er = load double, ptr %i.eq, align 8, !tbaa !29
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.1189219.i.us, i64 %indvars.iv.next.i.us.2
  %i.et = load float, ptr %i.es, align 4, !tbaa !22
  %i.eu = fpext float %i.et to double
  %i.ev = tail call double @llvm.fmuladd.f64(double %i.er, double %i.eu, double %i.ep) ; 3 uses
  %indvars.iv.next.i.us.3 = add nuw nsw i64 %indvars.iv.i.us, 4 ; 2 uses
  %niter70.next.3 = add i64 %niter70, 4           ; 2 uses
  %niter70.ncmp.3 = icmp eq i64 %niter70.next.3, %unroll_iter69
  br i1 %niter70.ncmp.3, label %._crit_edge.i.us.unr-lcssa, label %.lr.ph.i.us, !llvm.loop !311

._crit_edge.i.us.unr-lcssa:                       ; preds = %.lr.ph.i.us
  br i1 %lcmp.mod66.not, label %._crit_edge.i.us, label %.lr.ph.i.us.epil.preheader

.lr.ph.i.us.epil.preheader:                       ; preds = %._crit_edge.i.us.unr-lcssa, %.lr.ph.i.us.preheader
  %indvars.iv.i.us.epil.init = phi i64 [ 0, %.lr.ph.i.us.preheader ], [ %indvars.iv.next.i.us.3, %._crit_edge.i.us.unr-lcssa ]
  %.0184203.i.us.epil.init = phi double [ %i.dm, %.lr.ph.i.us.preheader ], [ %i.ev, %._crit_edge.i.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod68)
  br label %.lr.ph.i.us.epil

.lr.ph.i.us.epil:                                 ; preds = %.lr.ph.i.us.epil, %.lr.ph.i.us.epil.preheader
  %indvars.iv.i.us.epil = phi i64 [ %indvars.iv.next.i.us.epil, %.lr.ph.i.us.epil ], [ %indvars.iv.i.us.epil.init, %.lr.ph.i.us.epil.preheader ] ; 3 uses
  %.0184203.i.us.epil = phi double [ %i.fb, %.lr.ph.i.us.epil ], [ %.0184203.i.us.epil.init, %.lr.ph.i.us.epil.preheader ]
  %epil.iter65 = phi i64 [ %epil.iter65.next, %.lr.ph.i.us.epil ], [ 0, %.lr.ph.i.us.epil.preheader ]
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.i.us.epil
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !29
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.1189219.i.us, i64 %indvars.iv.i.us.epil
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !22
  %i.fa = fpext float %i.ez to double
  %i.fb = tail call double @llvm.fmuladd.f64(double %i.ex, double %i.fa, double %.0184203.i.us.epil) ; 2 uses
  %indvars.iv.next.i.us.epil = add nuw nsw i64 %indvars.iv.i.us.epil, 1
  %epil.iter65.next = add i64 %epil.iter65, 1     ; 2 uses
  %epil.iter65.cmp.not = icmp eq i64 %epil.iter65.next, %xtraiter64
  br i1 %epil.iter65.cmp.not, label %._crit_edge.i.us, label %.lr.ph.i.us.epil, !llvm.loop !312

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us.epil, %._crit_edge.i.us.unr-lcssa
  %.lcssa = phi double [ %i.ev, %._crit_edge.i.us.unr-lcssa ], [ %i.fb, %.lr.ph.i.us.epil ] ; 2 uses
  %i.fc = tail call double @llvm.fabs.f64(double %.lcssa)
  %i.fd = fcmp ogt double %i.fc, f0x3E80000000000000
  br i1 %i.fd, label %.lr.ph210.us.i.us, label %.preheader199.i.us

._crit_edge.i.us.thread:                          ; preds = %.lr.ph223.i.split.us
  br i1 %i.du, label %.lr.ph215.split.i.us.preheader, label %.preheader199.i.us

.lr.ph215.split.i.us.preheader:                   ; preds = %._crit_edge.i.us.thread
  br i1 %i.dv, label %.lr.ph215.split.i.us.epil.preheader, label %.lr.ph215.split.i.us

.preheader199.i.us:                               ; preds = %._crit_edge.i.us.thread, %._crit_edge.i.us
  tail call void @llvm.memset.p0.i64(ptr align 4 %.1191216.i.us, i8 0, i64 %i.ds, i1 false), !tbaa !22
  br label %.loopexit198.i.us

.lr.ph215.split.i.us:                             ; preds = %.lr.ph215.split.i.us.preheader, %.lr.ph215.split.i.us
  %indvars.iv242.i.us = phi i64 [ %indvars.iv.next243.i.us.3, %.lr.ph215.split.i.us ], [ 0, %.lr.ph215.split.i.us.preheader ] ; 5 uses
  %.0185213.i.us = phi ptr [ %i.ge, %.lr.ph215.split.i.us ], [ %2, %.lr.ph215.split.i.us.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph215.split.i.us ], [ 0, %.lr.ph215.split.i.us.preheader ]
  %i.fe = getelementptr inbounds [8 x i8], ptr %.0185213.i.us, i64 %i.dk
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !29
  %i.fg = fmul double %i.dm, %i.ff
  %i.fh = fptrunc double %i.fg to float
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %.1191216.i.us, i64 %indvars.iv242.i.us
  store float %i.fh, ptr %i.fi, align 4, !tbaa !22
  %i.fj = getelementptr inbounds [8 x i8], ptr %.0185213.i.us, i64 %i.dp ; 2 uses
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %i.dk
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !29
  %i.fm = fmul double %i.dm, %i.fl
  %i.fn = fptrunc double %i.fm to float
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.1191216.i.us, i64 %indvars.iv242.i.us
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  store float %i.fn, ptr %i.fp, align 4, !tbaa !22
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %i.dp ; 2 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.dk
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !29
  %i.ft = fmul double %i.dm, %i.fs
  %i.fu = fptrunc double %i.ft to float
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.1191216.i.us, i64 %indvars.iv242.i.us
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store float %i.fu, ptr %i.fw, align 4, !tbaa !22
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.dp ; 2 uses
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %i.dk
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !29
  %i.ga = fmul double %i.dm, %i.fz
  %i.gb = fptrunc double %i.ga to float
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.1191216.i.us, i64 %indvars.iv242.i.us
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  store float %i.gb, ptr %i.gd, align 4, !tbaa !22
  %indvars.iv.next243.i.us.3 = add nuw nsw i64 %indvars.iv242.i.us, 4 ; 2 uses
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %i.dp ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit198.i.us.loopexit60.unr-lcssa, label %.lr.ph215.split.i.us, !llvm.loop !313

.lr.ph210.us.i.us:                                ; preds = %._crit_edge.i.us, %._crit_edge211.us.i.us
  %indvars.iv252.i.us = phi i64 [ %indvars.iv.next253.i.us, %._crit_edge211.us.i.us ], [ 0, %._crit_edge.i.us ] ; 2 uses
  %.0185213.us.i.us = phi ptr [ %i.ho, %._crit_edge211.us.i.us ], [ %2, %._crit_edge.i.us ] ; 7 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %.0185213.us.i.us, i64 %i.dk
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !29 ; 2 uses
  br i1 %i.dx, label %.epil.preheader, label %.lr.ph210.us.i.us.new

.lr.ph210.us.i.us.new:                            ; preds = %.lr.ph210.us.i.us, %.lr.ph210.us.i.us.new
  %indvars.iv247.i.us = phi i64 [ %indvars.iv.next248.i.us.3, %.lr.ph210.us.i.us.new ], [ 0, %.lr.ph210.us.i.us ] ; 6 uses
  %.0208.us.i.us = phi double [ %i.he, %.lr.ph210.us.i.us.new ], [ %i.gg, %.lr.ph210.us.i.us ]
  %niter77 = phi i64 [ %niter77.next.3, %.lr.ph210.us.i.us.new ], [ 0, %.lr.ph210.us.i.us ]
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %.0185213.us.i.us, i64 %indvars.iv247.i.us
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !29
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %.1189219.i.us, i64 %indvars.iv247.i.us
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !22
  %i.gl = fpext float %i.gk to double
  %i.gm = tail call double @llvm.fmuladd.f64(double %i.gi, double %i.gl, double %.0208.us.i.us)
  %indvars.iv.next248.i.us = or disjoint i64 %indvars.iv247.i.us, 1 ; 2 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %.0185213.us.i.us, i64 %indvars.iv.next248.i.us
  %i.go = load double, ptr %i.gn, align 8, !tbaa !29
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %.1189219.i.us, i64 %indvars.iv.next248.i.us
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !22
  %i.gr = fpext float %i.gq to double
  %i.gs = tail call double @llvm.fmuladd.f64(double %i.go, double %i.gr, double %i.gm)
  %indvars.iv.next248.i.us.1 = or disjoint i64 %indvars.iv247.i.us, 2 ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %.0185213.us.i.us, i64 %indvars.iv.next248.i.us.1
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !29
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %.1189219.i.us, i64 %indvars.iv.next248.i.us.1
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !22
  %i.gx = fpext float %i.gw to double
  %i.gy = tail call double @llvm.fmuladd.f64(double %i.gu, double %i.gx, double %i.gs)
  %indvars.iv.next248.i.us.2 = or disjoint i64 %indvars.iv247.i.us, 3 ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %.0185213.us.i.us, i64 %indvars.iv.next248.i.us.2
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !29
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %.1189219.i.us, i64 %indvars.iv.next248.i.us.2
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !22
  %i.hd = fpext float %i.hc to double
  %i.he = tail call double @llvm.fmuladd.f64(double %i.ha, double %i.hd, double %i.gy) ; 3 uses
  %indvars.iv.next248.i.us.3 = add nuw nsw i64 %indvars.iv247.i.us, 4 ; 2 uses
  %niter77.next.3 = add i64 %niter77, 4           ; 2 uses
  %niter77.ncmp.3 = icmp eq i64 %niter77.next.3, %unroll_iter76
  br i1 %niter77.ncmp.3, label %._crit_edge211.us.i.us.unr-lcssa, label %.lr.ph210.us.i.us.new, !llvm.loop !314

._crit_edge211.us.i.us.unr-lcssa:                 ; preds = %.lr.ph210.us.i.us.new
  br i1 %lcmp.mod73.not, label %._crit_edge211.us.i.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge211.us.i.us.unr-lcssa, %.lr.ph210.us.i.us
  %indvars.iv247.i.us.epil.init = phi i64 [ 0, %.lr.ph210.us.i.us ], [ %indvars.iv.next248.i.us.3, %._crit_edge211.us.i.us.unr-lcssa ]
  %.0208.us.i.us.epil.init = phi double [ %i.gg, %.lr.ph210.us.i.us ], [ %i.he, %._crit_edge211.us.i.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod75)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %indvars.iv247.i.us.epil = phi i64 [ %indvars.iv247.i.us.epil.init, %.epil.preheader ], [ %indvars.iv.next248.i.us.epil, %bb.j ] ; 3 uses
  %.0208.us.i.us.epil = phi double [ %.0208.us.i.us.epil.init, %.epil.preheader ], [ %i.hk, %bb.j ]
  %epil.iter72 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter72.next, %bb.j ]
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %.0185213.us.i.us, i64 %indvars.iv247.i.us.epil
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !29
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.1189219.i.us, i64 %indvars.iv247.i.us.epil
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !22
  %i.hj = fpext float %i.hi to double
  %i.hk = tail call double @llvm.fmuladd.f64(double %i.hg, double %i.hj, double %.0208.us.i.us.epil) ; 2 uses
  %indvars.iv.next248.i.us.epil = add nuw nsw i64 %indvars.iv247.i.us.epil, 1
  %epil.iter72.next = add i64 %epil.iter72, 1     ; 2 uses
  %epil.iter72.cmp.not = icmp eq i64 %epil.iter72.next, %xtraiter71
  br i1 %epil.iter72.cmp.not, label %._crit_edge211.us.i.us, label %bb.j, !llvm.loop !315

._crit_edge211.us.i.us:                           ; preds = %bb.j, %._crit_edge211.us.i.us.unr-lcssa
  %.lcssa62 = phi double [ %i.he, %._crit_edge211.us.i.us.unr-lcssa ], [ %i.hk, %bb.j ]
  %i.hl = fmul double %.lcssa, %.lcssa62
  %i.hm = fptrunc double %i.hl to float
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %.1191216.i.us, i64 %indvars.iv252.i.us
  store float %i.hm, ptr %i.hn, align 4, !tbaa !22
  %indvars.iv.next253.i.us = add nuw nsw i64 %indvars.iv252.i.us, 1 ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.0185213.us.i.us, i64 %i.dp
  %exitcond256.not.i.us = icmp eq i64 %indvars.iv.next253.i.us, %i.dr
  br i1 %exitcond256.not.i.us, label %.loopexit198.i.us, label %.lr.ph210.us.i.us, !llvm.loop !313

.loopexit198.i.us.loopexit60.unr-lcssa:           ; preds = %.lr.ph215.split.i.us
  br i1 %lcmp.mod.not, label %.loopexit198.i.us, label %.lr.ph215.split.i.us.epil.preheader

.lr.ph215.split.i.us.epil.preheader:              ; preds = %.loopexit198.i.us.loopexit60.unr-lcssa, %.lr.ph215.split.i.us.preheader
  %indvars.iv242.i.us.epil.init = phi i64 [ 0, %.lr.ph215.split.i.us.preheader ], [ %indvars.iv.next243.i.us.3, %.loopexit198.i.us.loopexit60.unr-lcssa ]
  %.0185213.i.us.epil.init = phi ptr [ %2, %.lr.ph215.split.i.us.preheader ], [ %i.ge, %.loopexit198.i.us.loopexit60.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod63)
  br label %.lr.ph215.split.i.us.epil

.lr.ph215.split.i.us.epil:                        ; preds = %.lr.ph215.split.i.us.epil, %.lr.ph215.split.i.us.epil.preheader
  %indvars.iv242.i.us.epil = phi i64 [ %indvars.iv.next243.i.us.epil, %.lr.ph215.split.i.us.epil ], [ %indvars.iv242.i.us.epil.init, %.lr.ph215.split.i.us.epil.preheader ] ; 2 uses
  %.0185213.i.us.epil = phi ptr [ %i.hu, %.lr.ph215.split.i.us.epil ], [ %.0185213.i.us.epil.init, %.lr.ph215.split.i.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph215.split.i.us.epil ], [ 0, %.lr.ph215.split.i.us.epil.preheader ]
  %i.hp = getelementptr inbounds [8 x i8], ptr %.0185213.i.us.epil, i64 %i.dk
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !29
  %i.hr = fmul double %i.dm, %i.hq
  %i.hs = fptrunc double %i.hr to float
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %.1191216.i.us, i64 %indvars.iv242.i.us.epil
  store float %i.hs, ptr %i.ht, align 4, !tbaa !22
  %indvars.iv.next243.i.us.epil = add nuw nsw i64 %indvars.iv242.i.us.epil, 1
  %i.hu = getelementptr inbounds [8 x i8], ptr %.0185213.i.us.epil, i64 %i.dp
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit198.i.us, label %.lr.ph215.split.i.us.epil, !llvm.loop !316

.loopexit198.i.us:                                ; preds = %.loopexit198.i.us.loopexit60.unr-lcssa, %.lr.ph215.split.i.us.epil, %._crit_edge211.us.i.us, %.preheader199.i.us
  %i.hv = add nuw nsw i32 %.3222.i.us, 1          ; 2 uses
  %i.hw = getelementptr inbounds [4 x i8], ptr %.1189219.i.us, i64 %i.dk
  %i.hx = getelementptr [4 x i8], ptr %.1191216.i.us, i64 %i.dq
  %exitcond257.not.i.us = icmp eq i32 %i.hv, %3
  br i1 %exitcond257.not.i.us, label %_ZN2cv12cpu_baselineL21perspectiveTransform_IfEEvPKT_PS2_PKdiii.exit, label %.lr.ph223.i.split.us, !llvm.loop !317

.preheader195.i:                                  ; preds = %bb.i
  br i1 %i.df, label %.lr.ph227.i, label %_ZN2cv12cpu_baselineL21perspectiveTransform_IfEEvPKT_PS2_PKdiii.exit

.lr.ph227.i:                                      ; preds = %.preheader195.i
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !29
  %i.ia = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !29
  %i.ic = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.id = load double, ptr %i.ic, align 8, !tbaa !29
  %i.ie = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.if = load double, ptr %i.ie, align 8, !tbaa !29
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %.lr.ph227.i
  %.2226.i = phi i32 [ 0, %.lr.ph227.i ], [ %i.jp, %bb.m ]
  %.0188225.i = phi ptr [ %0, %.lr.ph227.i ], [ %i.jq, %bb.m ] ; 4 uses
  %.0190224.i = phi ptr [ %1, %.lr.ph227.i ], [ %i.jr, %bb.m ] ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.0188225.i, i64 4
  %i.ih = getelementptr inbounds nuw i8, ptr %.0188225.i, i64 8
  %i.ii = load float, ptr %.0188225.i, align 4, !tbaa !22
  %i.ij = load float, ptr %i.ig, align 4, !tbaa !22
  %i.ik = load float, ptr %i.ih, align 4, !tbaa !22
  %i.il = fpext float %i.ii to double             ; 2 uses
  %i.im = fpext float %i.ij to double             ; 2 uses
  %i.in = fmul double %i.ib, %i.im
  %i.io = tail call double @llvm.fmuladd.f64(double %i.il, double %i.hz, double %i.in)
  %i.ip = fpext float %i.ik to double             ; 2 uses
  %i.iq = tail call double @llvm.fmuladd.f64(double %i.ip, double %i.id, double %i.io)
  %i.ir = fadd double %i.if, %i.iq                ; 2 uses
  %i.is = tail call double @llvm.fabs.f64(double %i.ir)
  %i.it = fcmp ogt double %i.is, f0x3E80000000000000
  br i1 %i.it, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.iu = fdiv nnan double 1.000000e+00, %i.ir
  %i.iv = load <8 x double>, ptr %2, align 8, !tbaa !29 ; 4 uses
  %i.iw = shufflevector <8 x double> %i.iv, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.ix = insertelement <2 x double> poison, double %i.im, i64 0
  %i.iy = shufflevector <2 x double> %i.ix, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iz = fmul <2 x double> %i.iw, %i.iy
  %i.ja = insertelement <2 x double> poison, double %i.il, i64 0
  %i.jb = shufflevector <2 x double> %i.ja, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jc = shufflevector <8 x double> %i.iv, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.jd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jb, <2 x double> %i.jc, <2 x double> %i.iz)
  %i.je = insertelement <2 x double> poison, double %i.ip, i64 0
  %i.jf = shufflevector <2 x double> %i.je, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jg = shufflevector <8 x double> %i.iv, <8 x double> poison, <2 x i32> <i32 2, i32 6>
end_hunk_0
begin_hunk_1_@_ZN2cv12cpu_baselineL24perspectiveTransform_64fEPKdPdS2_iii:bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bm = zext nneg i32 %i.aw to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %.lr.ph229.i
  %indvars.iv259.i = phi i64 [ 0, %.lr.ph229.i ], [ %indvars.iv.next260.i, %bb.j ] ; 6 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv259.i
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !29 ; 4 uses
  %i.bp = add nuw nsw i64 %indvars.iv259.i, 1     ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bp
  %i.br = load double, ptr %i.bq, align 8, !tbaa !29 ; 4 uses
  %i.bs = add nuw nsw i64 %indvars.iv259.i, 2     ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bs
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !29 ; 4 uses
  %i.bv = load double, ptr %i.ax, align 8, !tbaa !29
  %i.bw = load double, ptr %i.ay, align 8, !tbaa !29
  %i.bx = fmul double %i.br, %i.bw
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bo, double %i.bv, double %i.bx)
  %i.bz = load double, ptr %i.az, align 8, !tbaa !29
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.bz, double %i.by)
  %i.cb = load double, ptr %i.ba, align 8, !tbaa !29
  %i.cc = fadd double %i.cb, %i.ca                ; 2 uses
  %i.cd = tail call double @llvm.fabs.f64(double %i.cc)
  %i.ce = fcmp ogt double %i.cd, f0x3E80000000000000
  br i1 %i.ce, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cf = fdiv double 1.000000e+00, %i.cc         ; 3 uses
  %i.cg = load double, ptr %2, align 8, !tbaa !29
  %i.ch = load double, ptr %i.bb, align 8, !tbaa !29
  %i.ci = fmul double %i.br, %i.ch
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.bo, double %i.cg, double %i.ci)
  %i.ck = load double, ptr %i.bc, align 8, !tbaa !29
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.ck, double %i.cj)
  %i.cm = load double, ptr %i.bd, align 8, !tbaa !29
  %i.cn = fadd double %i.cm, %i.cl
  %i.co = fmul double %i.cf, %i.cn
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv259.i
  store double %i.co, ptr %i.cp, align 8, !tbaa !29
  %i.cq = load double, ptr %i.be, align 8, !tbaa !29
  %i.cr = load double, ptr %i.bf, align 8, !tbaa !29
  %i.cs = fmul double %i.br, %i.cr
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.bo, double %i.cq, double %i.cs)
  %i.cu = load double, ptr %i.bg, align 8, !tbaa !29
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.cu, double %i.ct)
  %i.cw = load double, ptr %i.bh, align 8, !tbaa !29
  %i.cx = fadd double %i.cw, %i.cv
  %i.cy = fmul double %i.cf, %i.cx
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bp
  store double %i.cy, ptr %i.cz, align 8, !tbaa !29
  %i.da = load double, ptr %i.bi, align 8, !tbaa !29
  %i.db = load double, ptr %i.bj, align 8, !tbaa !29
  %i.dc = fmul double %i.br, %i.db
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.bo, double %i.da, double %i.dc)
  %i.de = load double, ptr %i.bk, align 8, !tbaa !29
  %i.df = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.de, double %i.dd)
  %i.dg = load double, ptr %i.bl, align 8, !tbaa !29
  %i.dh = fadd double %i.dg, %i.df
  %i.di = fmul double %i.cf, %i.dh
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv259.i
  store <2 x double> zeroinitializer, ptr %i.dj, align 8, !tbaa !29
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink265.i = phi double [ %i.di, %bb.h ], [ 0.000000e+00, %bb.i ]
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bs
  store double %.sink265.i, ptr %i.dk, align 8, !tbaa !29
  %indvars.iv.next260.i = add nuw nsw i64 %indvars.iv259.i, 3 ; 2 uses
  %i.dl = icmp samesign ult i64 %indvars.iv.next260.i, %i.bm
  br i1 %i.dl, label %bb.g, label %_ZN2cv12cpu_baselineL21perspectiveTransform_IdEEvPKT_PS2_PKdiii.exit, !llvm.loop !320

bb.k:                                             ; preds = %bb.f
  %or.cond5.i = and i1 %i.at, %i.b
  %i.dm = icmp sgt i32 %3, 0                      ; 2 uses
  br i1 %or.cond5.i, label %.preheader195.i, label %.preheader201.i

.preheader201.i:                                  ; preds = %bb.k
  br i1 %i.dm, label %.lr.ph223.i, label %_ZN2cv12cpu_baselineL21perspectiveTransform_IdEEvPKT_PS2_PKdiii.exit

.lr.ph223.i:                                      ; preds = %.preheader201.i
  %i.dn = add nsw i32 %4, 1                       ; 2 uses
  %i.do = mul nsw i32 %5, %i.dn
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dp ; 6 uses
  %i.dr = sext i32 %4 to i64                      ; 8 uses
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.dr
  %i.dt = icmp sgt i32 %4, 0
  %i.du = icmp sgt i32 %5, 0
  %i.dv = sext i32 %i.dn to i64                   ; 6 uses
  %i.dw = sext i32 %5 to i64
  %i.dx = zext i32 %5 to i64                      ; 4 uses
  %i.dy = shl nuw nsw i64 %i.dx, 3
  %wide.trip.count.i = zext i32 %4 to i64         ; 4 uses
  br i1 %i.du, label %.lr.ph223.i.split.us.preheader, label %_ZN2cv12cpu_baselineL21perspectiveTransform_IdEEvPKT_PS2_PKdiii.exit

.lr.ph223.i.split.us.preheader:                   ; preds = %.lr.ph223.i
  %xtraiter = and i64 %i.dx, 3                    ; 3 uses
  %i.dz = icmp ult i32 %5, 4
  %unroll_iter = and i64 %i.dx, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod63 = icmp ne i64 %xtraiter, 0
  %xtraiter64 = and i64 %wide.trip.count.i, 3     ; 3 uses
  %i.ea = icmp ult i32 %4, 4
  %unroll_iter69 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod66.not = icmp eq i64 %xtraiter64, 0
  %lcmp.mod68 = icmp ne i64 %xtraiter64, 0
  %xtraiter71 = and i64 %wide.trip.count.i, 3     ; 3 uses
  %i.eb = icmp ult i32 %4, 4
  %unroll_iter76 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod73.not = icmp eq i64 %xtraiter71, 0
  %lcmp.mod75 = icmp ne i64 %xtraiter71, 0
  br label %.lr.ph223.i.split.us

.lr.ph223.i.split.us:                             ; preds = %.lr.ph223.i.split.us.preheader, %.loopexit198.i.us
  %.3222.i.us = phi i32 [ %i.hm, %.loopexit198.i.us ], [ 0, %.lr.ph223.i.split.us.preheader ]
  %.1189219.i.us = phi ptr [ %i.hn, %.loopexit198.i.us ], [ %0, %.lr.ph223.i.split.us.preheader ] ; 11 uses
  %.1191216.i.us = phi ptr [ %i.ho, %.loopexit198.i.us ], [ %1, %.lr.ph223.i.split.us.preheader ] ; 8 uses
  %i.ec = load double, ptr %i.ds, align 8, !tbaa !29 ; 8 uses
  br i1 %i.dt, label %.lr.ph.i.us.preheader, label %._crit_edge.i.us.thread

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph223.i.split.us
  br i1 %i.ea, label %.lr.ph.i.us.epil.preheader, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us.3, %.lr.ph.i.us ], [ 0, %.lr.ph.i.us.preheader ] ; 6 uses
  %.0184203.i.us = phi double [ %i.ew, %.lr.ph.i.us ], [ %i.ec, %.lr.ph.i.us.preheader ]
  %niter70 = phi i64 [ %niter70.next.3, %.lr.ph.i.us ], [ 0, %.lr.ph.i.us.preheader ]
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv.i.us
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !29
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %.1189219.i.us, i64 %indvars.iv.i.us
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !29
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.ee, double %i.eg, double %.0184203.i.us)
  %indvars.iv.next.i.us = or disjoint i64 %indvars.iv.i.us, 1 ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv.next.i.us
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !29
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %.1189219.i.us, i64 %indvars.iv.next.i.us
  %i.el = load double, ptr %i.ek, align 8, !tbaa !29
  %i.em = tail call double @llvm.fmuladd.f64(double %i.ej, double %i.el, double %i.eh)
  %indvars.iv.next.i.us.1 = or disjoint i64 %indvars.iv.i.us, 2 ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv.next.i.us.1
  %i.eo = load double, ptr %i.en, align 8, !tbaa !29
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.1189219.i.us, i64 %indvars.iv.next.i.us.1
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !29
  %i.er = tail call double @llvm.fmuladd.f64(double %i.eo, double %i.eq, double %i.em)
  %indvars.iv.next.i.us.2 = or disjoint i64 %indvars.iv.i.us, 3 ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv.next.i.us.2
  %i.et = load double, ptr %i.es, align 8, !tbaa !29
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %.1189219.i.us, i64 %indvars.iv.next.i.us.2
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !29
  %i.ew = tail call double @llvm.fmuladd.f64(double %i.et, double %i.ev, double %i.er) ; 3 uses
  %indvars.iv.next.i.us.3 = add nuw nsw i64 %indvars.iv.i.us, 4 ; 2 uses
  %niter70.next.3 = add i64 %niter70, 4           ; 2 uses
  %niter70.ncmp.3 = icmp eq i64 %niter70.next.3, %unroll_iter69
  br i1 %niter70.ncmp.3, label %._crit_edge.i.us.unr-lcssa, label %.lr.ph.i.us, !llvm.loop !321

._crit_edge.i.us.unr-lcssa:                       ; preds = %.lr.ph.i.us
  br i1 %lcmp.mod66.not, label %._crit_edge.i.us, label %.lr.ph.i.us.epil.preheader

.lr.ph.i.us.epil.preheader:                       ; preds = %._crit_edge.i.us.unr-lcssa, %.lr.ph.i.us.preheader
  %indvars.iv.i.us.epil.init = phi i64 [ 0, %.lr.ph.i.us.preheader ], [ %indvars.iv.next.i.us.3, %._crit_edge.i.us.unr-lcssa ]
  %.0184203.i.us.epil.init = phi double [ %i.ec, %.lr.ph.i.us.preheader ], [ %i.ew, %._crit_edge.i.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod68)
  br label %.lr.ph.i.us.epil

.lr.ph.i.us.epil:                                 ; preds = %.lr.ph.i.us.epil, %.lr.ph.i.us.epil.preheader
  %indvars.iv.i.us.epil = phi i64 [ %indvars.iv.next.i.us.epil, %.lr.ph.i.us.epil ], [ %indvars.iv.i.us.epil.init, %.lr.ph.i.us.epil.preheader ] ; 3 uses
  %.0184203.i.us.epil = phi double [ %i.fb, %.lr.ph.i.us.epil ], [ %.0184203.i.us.epil.init, %.lr.ph.i.us.epil.preheader ]
  %epil.iter65 = phi i64 [ %epil.iter65.next, %.lr.ph.i.us.epil ], [ 0, %.lr.ph.i.us.epil.preheader ]
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv.i.us.epil
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !29
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.1189219.i.us, i64 %indvars.iv.i.us.epil
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !29
  %i.fb = tail call double @llvm.fmuladd.f64(double %i.ey, double %i.fa, double %.0184203.i.us.epil) ; 2 uses
  %indvars.iv.next.i.us.epil = add nuw nsw i64 %indvars.iv.i.us.epil, 1
  %epil.iter65.next = add i64 %epil.iter65, 1     ; 2 uses
  %epil.iter65.cmp.not = icmp eq i64 %epil.iter65.next, %xtraiter64
  br i1 %epil.iter65.cmp.not, label %._crit_edge.i.us, label %.lr.ph.i.us.epil, !llvm.loop !322

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us.epil, %._crit_edge.i.us.unr-lcssa
  %.lcssa = phi double [ %i.ew, %._crit_edge.i.us.unr-lcssa ], [ %i.fb, %.lr.ph.i.us.epil ] ; 2 uses
  %i.fc = tail call double @llvm.fabs.f64(double %.lcssa)
  %i.fd = fcmp ogt double %i.fc, f0x3E80000000000000
  br i1 %i.fd, label %.lr.ph210.us.i.us, label %.preheader199.i.us

._crit_edge.i.us.thread:                          ; preds = %.lr.ph223.i.split.us
  %i.fe = tail call double @llvm.fabs.f64(double %i.ec)
  %i.ff = fcmp ogt double %i.fe, f0x3E80000000000000
  br i1 %i.ff, label %.lr.ph215.split.i.us.preheader, label %.preheader199.i.us

.lr.ph215.split.i.us.preheader:                   ; preds = %._crit_edge.i.us.thread
  br i1 %i.dz, label %.lr.ph215.split.i.us.epil.preheader, label %.lr.ph215.split.i.us

.preheader199.i.us:                               ; preds = %._crit_edge.i.us.thread, %._crit_edge.i.us
  tail call void @llvm.memset.p0.i64(ptr align 8 %.1191216.i.us, i8 0, i64 %i.dy, i1 false), !tbaa !29
  br label %.loopexit198.i.us

.lr.ph215.split.i.us:                             ; preds = %.lr.ph215.split.i.us.preheader, %.lr.ph215.split.i.us
  %indvars.iv242.i.us = phi i64 [ %indvars.iv.next243.i.us.3, %.lr.ph215.split.i.us ], [ 0, %.lr.ph215.split.i.us.preheader ] ; 5 uses
  %.0185213.i.us = phi ptr [ %i.gc, %.lr.ph215.split.i.us ], [ %2, %.lr.ph215.split.i.us.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph215.split.i.us ], [ 0, %.lr.ph215.split.i.us.preheader ]
  %i.fg = getelementptr inbounds [8 x i8], ptr %.0185213.i.us, i64 %i.dr
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !29
  %i.fi = fmul double %i.ec, %i.fh
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %.1191216.i.us, i64 %indvars.iv242.i.us
  store double %i.fi, ptr %i.fj, align 8, !tbaa !29
  %i.fk = getelementptr inbounds [8 x i8], ptr %.0185213.i.us, i64 %i.dv ; 2 uses
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %i.dr
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !29
  %i.fn = fmul double %i.ec, %i.fm
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %.1191216.i.us, i64 %indvars.iv242.i.us
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store double %i.fn, ptr %i.fp, align 8, !tbaa !29
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %i.dv ; 2 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.dr
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !29
  %i.ft = fmul double %i.ec, %i.fs
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %.1191216.i.us, i64 %indvars.iv242.i.us
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  store double %i.ft, ptr %i.fv, align 8, !tbaa !29
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.dv ; 2 uses
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %i.dr
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !29
  %i.fz = fmul double %i.ec, %i.fy
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %.1191216.i.us, i64 %indvars.iv242.i.us
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  store double %i.fz, ptr %i.gb, align 8, !tbaa !29
  %indvars.iv.next243.i.us.3 = add nuw nsw i64 %indvars.iv242.i.us, 4 ; 2 uses
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %i.dv ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit198.i.us.loopexit60.unr-lcssa, label %.lr.ph215.split.i.us, !llvm.loop !323

.lr.ph210.us.i.us:                                ; preds = %._crit_edge.i.us, %._crit_edge211.us.i.us
  %indvars.iv252.i.us = phi i64 [ %indvars.iv.next253.i.us, %._crit_edge211.us.i.us ], [ 0, %._crit_edge.i.us ] ; 2 uses
  %.0185213.us.i.us = phi ptr [ %i.hg, %._crit_edge211.us.i.us ], [ %2, %._crit_edge.i.us ] ; 7 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.0185213.us.i.us, i64 %i.dr
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !29 ; 2 uses
  br i1 %i.eb, label %.epil.preheader, label %.lr.ph210.us.i.us.new

.lr.ph210.us.i.us.new:                            ; preds = %.lr.ph210.us.i.us, %.lr.ph210.us.i.us.new
  %indvars.iv247.i.us = phi i64 [ %indvars.iv.next248.i.us.3, %.lr.ph210.us.i.us.new ], [ 0, %.lr.ph210.us.i.us ] ; 6 uses
  %.0208.us.i.us = phi double [ %i.gy, %.lr.ph210.us.i.us.new ], [ %i.ge, %.lr.ph210.us.i.us ]
  %niter77 = phi i64 [ %niter77.next.3, %.lr.ph210.us.i.us.new ], [ 0, %.lr.ph210.us.i.us ]
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %.0185213.us.i.us, i64 %indvars.iv247.i.us
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !29
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %.1189219.i.us, i64 %indvars.iv247.i.us
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !29
  %i.gj = tail call double @llvm.fmuladd.f64(double %i.gg, double %i.gi, double %.0208.us.i.us)
  %indvars.iv.next248.i.us = or disjoint i64 %indvars.iv247.i.us, 1 ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %.0185213.us.i.us, i64 %indvars.iv.next248.i.us
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !29
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %.1189219.i.us, i64 %indvars.iv.next248.i.us
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !29
  %i.go = tail call double @llvm.fmuladd.f64(double %i.gl, double %i.gn, double %i.gj)
  %indvars.iv.next248.i.us.1 = or disjoint i64 %indvars.iv247.i.us, 2 ; 2 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %.0185213.us.i.us, i64 %indvars.iv.next248.i.us.1
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !29
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %.1189219.i.us, i64 %indvars.iv.next248.i.us.1
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !29
  %i.gt = tail call double @llvm.fmuladd.f64(double %i.gq, double %i.gs, double %i.go)
  %indvars.iv.next248.i.us.2 = or disjoint i64 %indvars.iv247.i.us, 3 ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %.0185213.us.i.us, i64 %indvars.iv.next248.i.us.2
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !29
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %.1189219.i.us, i64 %indvars.iv.next248.i.us.2
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !29
  %i.gy = tail call double @llvm.fmuladd.f64(double %i.gv, double %i.gx, double %i.gt) ; 3 uses
  %indvars.iv.next248.i.us.3 = add nuw nsw i64 %indvars.iv247.i.us, 4 ; 2 uses
  %niter77.next.3 = add i64 %niter77, 4           ; 2 uses
  %niter77.ncmp.3 = icmp eq i64 %niter77.next.3, %unroll_iter76
  br i1 %niter77.ncmp.3, label %._crit_edge211.us.i.us.unr-lcssa, label %.lr.ph210.us.i.us.new, !llvm.loop !324

._crit_edge211.us.i.us.unr-lcssa:                 ; preds = %.lr.ph210.us.i.us.new
  br i1 %lcmp.mod73.not, label %._crit_edge211.us.i.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge211.us.i.us.unr-lcssa, %.lr.ph210.us.i.us
  %indvars.iv247.i.us.epil.init = phi i64 [ 0, %.lr.ph210.us.i.us ], [ %indvars.iv.next248.i.us.3, %._crit_edge211.us.i.us.unr-lcssa ]
  %.0208.us.i.us.epil.init = phi double [ %i.ge, %.lr.ph210.us.i.us ], [ %i.gy, %._crit_edge211.us.i.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod75)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %indvars.iv247.i.us.epil = phi i64 [ %indvars.iv247.i.us.epil.init, %.epil.preheader ], [ %indvars.iv.next248.i.us.epil, %bb.l ] ; 3 uses
  %.0208.us.i.us.epil = phi double [ %.0208.us.i.us.epil.init, %.epil.preheader ], [ %i.hd, %bb.l ]
  %epil.iter72 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter72.next, %bb.l ]
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %.0185213.us.i.us, i64 %indvars.iv247.i.us.epil
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !29
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %.1189219.i.us, i64 %indvars.iv247.i.us.epil
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !29
  %i.hd = tail call double @llvm.fmuladd.f64(double %i.ha, double %i.hc, double %.0208.us.i.us.epil) ; 2 uses
  %indvars.iv.next248.i.us.epil = add nuw nsw i64 %indvars.iv247.i.us.epil, 1
  %epil.iter72.next = add i64 %epil.iter72, 1     ; 2 uses
  %epil.iter72.cmp.not = icmp eq i64 %epil.iter72.next, %xtraiter71
  br i1 %epil.iter72.cmp.not, label %._crit_edge211.us.i.us, label %bb.l, !llvm.loop !325

._crit_edge211.us.i.us:                           ; preds = %bb.l, %._crit_edge211.us.i.us.unr-lcssa
  %.lcssa62 = phi double [ %i.gy, %._crit_edge211.us.i.us.unr-lcssa ], [ %i.hd, %bb.l ]
  %i.he = fmul double %.lcssa, %.lcssa62
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %.1191216.i.us, i64 %indvars.iv252.i.us
  store double %i.he, ptr %i.hf, align 8, !tbaa !29
  %indvars.iv.next253.i.us = add nuw nsw i64 %indvars.iv252.i.us, 1 ; 2 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %.0185213.us.i.us, i64 %i.dv
  %exitcond256.not.i.us = icmp eq i64 %indvars.iv.next253.i.us, %i.dx
  br i1 %exitcond256.not.i.us, label %.loopexit198.i.us, label %.lr.ph210.us.i.us, !llvm.loop !323

.loopexit198.i.us.loopexit60.unr-lcssa:           ; preds = %.lr.ph215.split.i.us
  br i1 %lcmp.mod.not, label %.loopexit198.i.us, label %.lr.ph215.split.i.us.epil.preheader

.lr.ph215.split.i.us.epil.preheader:              ; preds = %.loopexit198.i.us.loopexit60.unr-lcssa, %.lr.ph215.split.i.us.preheader
  %indvars.iv242.i.us.epil.init = phi i64 [ 0, %.lr.ph215.split.i.us.preheader ], [ %indvars.iv.next243.i.us.3, %.loopexit198.i.us.loopexit60.unr-lcssa ]
  %.0185213.i.us.epil.init = phi ptr [ %2, %.lr.ph215.split.i.us.preheader ], [ %i.gc, %.loopexit198.i.us.loopexit60.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod63)
  br label %.lr.ph215.split.i.us.epil

.lr.ph215.split.i.us.epil:                        ; preds = %.lr.ph215.split.i.us.epil, %.lr.ph215.split.i.us.epil.preheader
  %indvars.iv242.i.us.epil = phi i64 [ %indvars.iv.next243.i.us.epil, %.lr.ph215.split.i.us.epil ], [ %indvars.iv242.i.us.epil.init, %.lr.ph215.split.i.us.epil.preheader ] ; 2 uses
  %.0185213.i.us.epil = phi ptr [ %i.hl, %.lr.ph215.split.i.us.epil ], [ %.0185213.i.us.epil.init, %.lr.ph215.split.i.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph215.split.i.us.epil ], [ 0, %.lr.ph215.split.i.us.epil.preheader ]
  %i.hh = getelementptr inbounds [8 x i8], ptr %.0185213.i.us.epil, i64 %i.dr
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !29
  %i.hj = fmul double %i.ec, %i.hi
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %.1191216.i.us, i64 %indvars.iv242.i.us.epil
  store double %i.hj, ptr %i.hk, align 8, !tbaa !29
  %indvars.iv.next243.i.us.epil = add nuw nsw i64 %indvars.iv242.i.us.epil, 1
  %i.hl = getelementptr inbounds [8 x i8], ptr %.0185213.i.us.epil, i64 %i.dv
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit198.i.us, label %.lr.ph215.split.i.us.epil, !llvm.loop !326

.loopexit198.i.us:                                ; preds = %.loopexit198.i.us.loopexit60.unr-lcssa, %.lr.ph215.split.i.us.epil, %._crit_edge211.us.i.us, %.preheader199.i.us
  %i.hm = add nuw nsw i32 %.3222.i.us, 1          ; 2 uses
  %i.hn = getelementptr inbounds [8 x i8], ptr %.1189219.i.us, i64 %i.dr
  %i.ho = getelementptr [8 x i8], ptr %.1191216.i.us, i64 %i.dw
  %exitcond257.not.i.us = icmp eq i32 %i.hm, %3
  br i1 %exitcond257.not.i.us, label %_ZN2cv12cpu_baselineL21perspectiveTransform_IdEEvPKT_PS2_PKdiii.exit, label %.lr.ph223.i.split.us, !llvm.loop !327

.preheader195.i:                                  ; preds = %bb.k
  br i1 %i.dm, label %.lr.ph227.i, label %_ZN2cv12cpu_baselineL21perspectiveTransform_IdEEvPKT_PS2_PKdiii.exit

.lr.ph227.i:                                      ; preds = %.preheader195.i
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.hs = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hv = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.hw = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.hx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.hz = getelementptr inbounds nuw i8, ptr %2, i64 56
  br label %bb.m

bb.m:                                             ; preds = %bb.p, %.lr.ph227.i
  %.2226.i = phi i32 [ 0, %.lr.ph227.i ], [ %i.jj, %bb.p ]
  %.0188225.i = phi ptr [ %0, %.lr.ph227.i ], [ %i.jk, %bb.p ] ; 4 uses
  %.0190224.i = phi ptr [ %1, %.lr.ph227.i ], [ %i.jl, %bb.p ] ; 4 uses
  %i.ia = load double, ptr %.0188225.i, align 8, !tbaa !29 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.0188225.i, i64 8
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !29 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.0188225.i, i64 16
  %i.ie = load double, ptr %i.id, align 8, !tbaa !29 ; 3 uses
  %i.if = load double, ptr %i.hp, align 8, !tbaa !29
  %i.ig = load double, ptr %i.hq, align 8, !tbaa !29
  %i.ih = fmul double %i.ic, %i.ig
  %i.ii = tail call double @llvm.fmuladd.f64(double %i.ia, double %i.if, double %i.ih)
  %i.ij = load double, ptr %i.hr, align 8, !tbaa !29
  %i.ik = tail call double @llvm.fmuladd.f64(double %i.ie, double %i.ij, double %i.ii)
  %i.il = load double, ptr %i.hs, align 8, !tbaa !29
  %i.im = fadd double %i.il, %i.ik                ; 2 uses
  %i.in = tail call double @llvm.fabs.f64(double %i.im)
  %i.io = fcmp ogt double %i.in, f0x3E80000000000000
  br i1 %i.io, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ip = fdiv double 1.000000e+00, %i.im         ; 2 uses
  %i.iq = load double, ptr %2, align 8, !tbaa !29
  %i.ir = load double, ptr %i.ht, align 8, !tbaa !29
  %i.is = fmul double %i.ic, %i.ir
  %i.it = tail call double @llvm.fmuladd.f64(double %i.ia, double %i.iq, double %i.is)
  %i.iu = load double, ptr %i.hu, align 8, !tbaa !29
  %i.iv = tail call double @llvm.fmuladd.f64(double %i.ie, double %i.iu, double %i.it)
  %i.iw = load double, ptr %i.hv, align 8, !tbaa !29
  %i.ix = fadd double %i.iw, %i.iv
  %i.iy = fmul double %i.ip, %i.ix
  store double %i.iy, ptr %.0190224.i, align 8, !tbaa !29
  %i.iz = load double, ptr %i.hw, align 8, !tbaa !29
  %i.ja = load double, ptr %i.hx, align 8, !tbaa !29
  %i.jb = fmul double %i.ic, %i.ja
  %i.jc = tail call double @llvm.fmuladd.f64(double %i.ia, double %i.iz, double %i.jb)
  %i.jd = load double, ptr %i.hy, align 8, !tbaa !29
  %i.je = tail call double @llvm.fmuladd.f64(double %i.ie, double %i.jd, double %i.jc)
  %i.jf = load double, ptr %i.hz, align 8, !tbaa !29
  %i.jg = fadd double %i.jf, %i.je
  %i.jh = fmul double %i.ip, %i.jg
end_hunk_1
begin_hunk_2_@_ZN2cv12cpu_baselineL17GEMMSingleMul_32fEPKfmS2_mS2_mPfmNS_5Size_IiEES5_ddi:bb.a
  %indvars.iv.next649.i = add nuw nsw i64 %indvars.iv648.i, 4 ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.3391529.i, i64 %.idx411.i ; 2 uses
  %.not407.i = icmp sgt i64 %indvars.iv.next649.i, %i.ka
  br i1 %.not407.i, label %.preheader459.loopexit.i, label %.lr.ph532.i, !llvm.loop !954

.lr.ph544.i:                                      ; preds = %.lr.ph544.i.prol.loopexit, %bb.ap
  %indvars.iv656.i = phi i64 [ %indvars.iv.next657.i.1, %bb.ap ], [ %indvars.iv656.i.unr, %.lr.ph544.i.prol.loopexit ] ; 3 uses
  %.4392542.i = phi ptr [ %i.qc, %bb.ap ], [ %.4392542.i.unr, %.lr.ph544.i.prol.loopexit ] ; 4 uses
  %.not408.i = icmp eq ptr %.4392542.i, null
  br i1 %.not408.i, label %.lr.ph544.i.1, label %bb.an

bb.an:                                            ; preds = %.lr.ph544.i
  %i.ps = load float, ptr %.4392542.i, align 4, !tbaa !22
  %i.pt = fpext float %i.ps to double
  %i.pu = call double @llvm.fmuladd.f64(double %i.pt, double %11, double %.scalar)
  br label %.lr.ph544.i.1

.lr.ph544.i.1:                                    ; preds = %bb.an, %.lr.ph544.i
  %.sink688.in.i = phi double [ %i.pu, %bb.an ], [ %.scalar, %.lr.ph544.i ]
  %.sink688.i = fptrunc double %.sink688.in.i to float
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %.2396546.i, i64 %indvars.iv656.i
  store float %.sink688.i, ptr %i.pv, align 4, !tbaa !22
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %.4392542.i, i64 %.0356.i ; 2 uses
  %.not408.i.1 = icmp eq ptr %.4392542.i, null
  br i1 %.not408.i.1, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph544.i.1
  %i.px = load float, ptr %i.pw, align 4, !tbaa !22
  %i.py = fpext float %i.px to double
  %i.pz = call double @llvm.fmuladd.f64(double %i.py, double %11, double %.scalar)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.lr.ph544.i.1
  %.sink688.in.i.1 = phi double [ %i.pz, %bb.ao ], [ %.scalar, %.lr.ph544.i.1 ]
  %.sink688.i.1 = fptrunc double %.sink688.in.i.1 to float
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %.2396546.i, i64 %indvars.iv656.i
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 4
  store float %.sink688.i.1, ptr %i.qb, align 4, !tbaa !22
  %indvars.iv.next657.i.1 = add nuw nsw i64 %indvars.iv656.i, 2 ; 2 uses
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %.0356.i
  %exitcond660.not.i.1 = icmp eq i64 %indvars.iv.next657.i.1, %wide.trip.count659.i
  br i1 %exitcond660.not.i.1, label %._crit_edge545.i, label %.lr.ph544.i, !llvm.loop !952

._crit_edge545.i:                                 ; preds = %.lr.ph544.i.prol.loopexit, %bb.ap, %bb.aj, %.preheader459.i
  %i.qd = add nuw nsw i32 %.2383547.i, 1          ; 2 uses
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %.1366548.i, i64 %.0359456.i
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %.2363549.i, i64 %.0357.i
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %.2396546.i, i64 %i.f
  %exitcond661.not.i = icmp eq i32 %i.qd, %.sroa.8.0.extract.trunc.i
  br i1 %exitcond661.not.i, label %.loopexit463.i, label %bb.ag, !llvm.loop !955

bb.aq:                                            ; preds = %bb.af
  %i.qh = ashr exact i64 %sext.i, 32              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.qi = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  store ptr %i.qi, ptr %15, align 8, !tbaa !61
  %i.qj = getelementptr inbounds nuw i8, ptr %15, i64 8
  %.not.i.i438.i = icmp ugt i64 %i.qh, 136
  store i64 %i.qh, ptr %i.qj, align 8, !tbaa !62
  br i1 %.not.i.i438.i, label %bb.ar, label %_ZN2cv10AutoBufferIdLm136EEC2Em.exit.i

bb.ar:                                            ; preds = %bb.aq
  %i.qk = icmp ugt i64 %i.qh, 2305843009213693951
  %i.ql = ashr exact i64 %sext.i, 29
  %i.qm = select i1 %i.qk, i64 -1, i64 %i.ql
  %i.qn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.qm) #28
          to label %.noexc439.i unwind label %bb.at ; 2 uses

.noexc439.i:                                      ; preds = %bb.ar
  store ptr %i.qn, ptr %15, align 8, !tbaa !61
  br label %_ZN2cv10AutoBufferIdLm136EEC2Em.exit.i

_ZN2cv10AutoBufferIdLm136EEC2Em.exit.i:           ; preds = %.noexc439.i, %bb.aq
  %i.qo = phi ptr [ %i.qn, %.noexc439.i ], [ %i.qi, %bb.aq ] ; 10 uses
  %i.qp = icmp sgt i32 %.sroa.8.0.extract.trunc.i, 0
  br i1 %i.qp, label %.lr.ph512.i, label %._crit_edge513.i

.lr.ph512.i:                                      ; preds = %_ZN2cv10AutoBufferIdLm136EEC2Em.exit.i
  %.not404.i = icmp eq ptr %.0360455.i, null      ; 2 uses
  %i.qq = icmp slt i32 %.0368454.i, 1             ; 2 uses
  %i.qr = icmp sgt i32 %.sroa.0.0.extract.trunc.i, 0
  %i.qs = icmp eq i32 %.sroa.0.0.extract.trunc.i, 0
  %i.qt = and i64 %9, 4294967295                  ; 8 uses
  %i.qu = shl nuw nsw i64 %i.qt, 3
  %brmerge576.i = select i1 %.not404.i, i1 true, i1 %i.qq
  %wide.trip.count612.i = zext i32 %.0368454.i to i64 ; 6 uses
  %brmerge579.i = select i1 %i.qq, i1 true, i1 %i.qs
  %min.iters.check119 = icmp ugt i32 %.0368454.i, 7
  %ident.check117.not = icmp eq i64 %.0358457.i, 1
  %or.cond168 = and i1 %min.iters.check119, %ident.check117.not
  %n.vec121 = and i64 %wide.trip.count612.i, 2147483640 ; 3 uses
  %cmp.n128 = icmp eq i64 %n.vec121, %wide.trip.count612.i
  %xtraiter195 = and i64 %wide.trip.count612.i, 3 ; 2 uses
  %lcmp.mod196.not = icmp eq i64 %xtraiter195, 0
  %min.iters.check101 = icmp samesign ult i64 %i.qt, 4
  %n.vec103 = and i64 %9, 2147483644              ; 3 uses
  %cmp.n114 = icmp eq i64 %i.qt, %n.vec103
  %xtraiter198 = and i64 %9, 1
  %i.qv = icmp eq i64 %i.qt, 1
  %unroll_iter201 = and i64 %9, 2147483646
  %lcmp.mod199.not = icmp eq i64 %xtraiter198, 0
  %lcmp.mod200 = trunc i64 %9 to i1
  %min.iters.check89 = icmp samesign ult i64 %i.qt, 4
  %n.vec91 = and i64 %9, 2147483644               ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %10, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n98 = icmp eq i64 %i.qt, %n.vec91
  br label %bb.as

bb.as:                                            ; preds = %.loopexit465.i, %.lr.ph512.i
  %.3364510.i = phi ptr [ %4, %.lr.ph512.i ], [ %i.uh, %.loopexit465.i ] ; 5 uses
  %.2367509.i = phi ptr [ %0, %.lr.ph512.i ], [ %i.ug, %.loopexit465.i ] ; 8 uses
  %.3384508.i = phi i32 [ 0, %.lr.ph512.i ], [ %i.uf, %.loopexit465.i ]
  %.3397506.i = phi ptr [ %6, %.lr.ph512.i ], [ %i.ui, %.loopexit465.i ] ; 6 uses
  %.2367509.mux.i = select i1 %.not404.i, ptr %.2367509.i, ptr %.0360455.i
  br i1 %brmerge576.i, label %.loopexit470.i, label %.lr.ph492.i.preheader

.lr.ph492.i.preheader:                            ; preds = %bb.as
  br i1 %or.cond168, label %vector.body122, label %.lr.ph492.i.preheader176

vector.body122:                                   ; preds = %.lr.ph492.i.preheader, %vector.body122
  %index123 = phi i64 [ %index.next126, %vector.body122 ], [ 0, %.lr.ph492.i.preheader ] ; 3 uses
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %.2367509.i, i64 %index123 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  %wide.load124 = load <4 x float>, ptr %i.qw, align 4, !tbaa !22
  %wide.load125 = load <4 x float>, ptr %i.qx, align 4, !tbaa !22
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %.0360455.i, i64 %index123 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  store <4 x float> %wide.load124, ptr %i.qy, align 4, !tbaa !22
  store <4 x float> %wide.load125, ptr %i.qz, align 4, !tbaa !22
  %index.next126 = add nuw i64 %index123, 8       ; 2 uses
  %i.ra = icmp eq i64 %index.next126, %n.vec121
  br i1 %i.ra, label %middle.block127, label %vector.body122, !llvm.loop !956

middle.block127:                                  ; preds = %vector.body122
  br i1 %cmp.n128, label %.loopexit470.i, label %.lr.ph492.i.preheader176

.lr.ph492.i.preheader176:                         ; preds = %.lr.ph492.i.preheader, %middle.block127
  %indvars.iv609.i.ph = phi i64 [ 0, %.lr.ph492.i.preheader ], [ %n.vec121, %middle.block127 ] ; 3 uses
  br i1 %lcmp.mod196.not, label %.lr.ph492.i.prol.loopexit, label %.lr.ph492.i.prol

.lr.ph492.i.prol:                                 ; preds = %.lr.ph492.i.preheader176, %.lr.ph492.i.prol
  %indvars.iv609.i.prol = phi i64 [ %indvars.iv.next610.i.prol, %.lr.ph492.i.prol ], [ %indvars.iv609.i.ph, %.lr.ph492.i.preheader176 ] ; 3 uses
  %prol.iter197 = phi i64 [ %prol.iter197.next, %.lr.ph492.i.prol ], [ 0, %.lr.ph492.i.preheader176 ]
  %i.rb = mul i64 %indvars.iv609.i.prol, %.0358457.i
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %.2367509.i, i64 %i.rb
  %i.rd = load float, ptr %i.rc, align 4, !tbaa !22
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %.0360455.i, i64 %indvars.iv609.i.prol
  store float %i.rd, ptr %i.re, align 4, !tbaa !22
  %indvars.iv.next610.i.prol = add nuw nsw i64 %indvars.iv609.i.prol, 1 ; 2 uses
  %prol.iter197.next = add i64 %prol.iter197, 1   ; 2 uses
  %prol.iter197.cmp.not = icmp eq i64 %prol.iter197.next, %xtraiter195
  br i1 %prol.iter197.cmp.not, label %.lr.ph492.i.prol.loopexit, label %.lr.ph492.i.prol, !llvm.loop !957

.lr.ph492.i.prol.loopexit:                        ; preds = %.lr.ph492.i.prol, %.lr.ph492.i.preheader176
  %indvars.iv609.i.unr = phi i64 [ %indvars.iv609.i.ph, %.lr.ph492.i.preheader176 ], [ %indvars.iv.next610.i.prol, %.lr.ph492.i.prol ]
  %i.rf = sub nsw i64 %indvars.iv609.i.ph, %wide.trip.count612.i
  %i.rg = icmp ugt i64 %i.rf, -4
  br i1 %i.rg, label %.loopexit470.i, label %.lr.ph492.i

.lr.ph492.i:                                      ; preds = %.lr.ph492.i.prol.loopexit, %.lr.ph492.i
  %indvars.iv609.i = phi i64 [ %indvars.iv.next610.i.3, %.lr.ph492.i ], [ %indvars.iv609.i.unr, %.lr.ph492.i.prol.loopexit ] ; 6 uses
  %i.rh = mul i64 %indvars.iv609.i, %.0358457.i
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %.2367509.i, i64 %i.rh
  %i.rj = load float, ptr %i.ri, align 4, !tbaa !22
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %.0360455.i, i64 %indvars.iv609.i
  store float %i.rj, ptr %i.rk, align 4, !tbaa !22
  %indvars.iv.next610.i = add nuw nsw i64 %indvars.iv609.i, 1 ; 2 uses
  %i.rl = mul i64 %indvars.iv.next610.i, %.0358457.i
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %.2367509.i, i64 %i.rl
  %i.rn = load float, ptr %i.rm, align 4, !tbaa !22
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %.0360455.i, i64 %indvars.iv.next610.i
  store float %i.rn, ptr %i.ro, align 4, !tbaa !22
  %indvars.iv.next610.i.1 = add nuw nsw i64 %indvars.iv609.i, 2 ; 2 uses
  %i.rp = mul i64 %indvars.iv.next610.i.1, %.0358457.i
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %.2367509.i, i64 %i.rp
  %i.rr = load float, ptr %i.rq, align 4, !tbaa !22
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %.0360455.i, i64 %indvars.iv.next610.i.1
  store float %i.rr, ptr %i.rs, align 4, !tbaa !22
  %indvars.iv.next610.i.2 = add nuw nsw i64 %indvars.iv609.i, 3 ; 2 uses
  %i.rt = mul i64 %indvars.iv.next610.i.2, %.0358457.i
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %.2367509.i, i64 %i.rt
  %i.rv = load float, ptr %i.ru, align 4, !tbaa !22
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %.0360455.i, i64 %indvars.iv.next610.i.2
  store float %i.rv, ptr %i.rw, align 4, !tbaa !22
  %indvars.iv.next610.i.3 = add nuw nsw i64 %indvars.iv609.i, 4 ; 2 uses
  %exitcond613.not.i.3 = icmp eq i64 %indvars.iv.next610.i.3, %wide.trip.count612.i
  br i1 %exitcond613.not.i.3, label %.loopexit470.i, label %.lr.ph492.i, !llvm.loop !958

bb.at:                                            ; preds = %bb.ar
  %i.rx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.aw

.loopexit470.i:                                   ; preds = %.lr.ph492.i.prol.loopexit, %.lr.ph492.i, %middle.block127, %bb.as
  %.3.i = phi ptr [ %.2367509.mux.i, %bb.as ], [ %.0360455.i, %middle.block127 ], [ %.0360455.i, %.lr.ph492.i ], [ %.0360455.i, %.lr.ph492.i.prol.loopexit ]
  br i1 %i.qr, label %.preheader468.i, label %.loopexit465.i

.preheader468.i:                                  ; preds = %.loopexit470.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.qo, i8 0, i64 %i.qu, i1 false), !tbaa !29
  br i1 %brmerge579.i, label %._crit_edge500.split.thread710.i, label %.lr.ph496.i

.lr.ph496.i:                                      ; preds = %.preheader468.i, %._crit_edge.i
  %indvars.iv622.i = phi i64 [ %indvars.iv.next623.i, %._crit_edge.i ], [ 0, %.preheader468.i ] ; 2 uses
  %.2387497.i = phi ptr [ %i.sq, %._crit_edge.i ], [ %2, %.preheader468.i ] ; 3 uses
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %.3.i, i64 %indvars.iv622.i
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !22
  %i.sa = fpext float %i.rz to double             ; 2 uses
  br i1 %min.iters.check101, label %scalar.ph100.preheader, label %vector.ph102

vector.ph102:                                     ; preds = %.lr.ph496.i
  %broadcast.splatinsert104 = insertelement <2 x double> poison, double %i.sa, i64 0
  %broadcast.splat105 = shufflevector <2 x double> %broadcast.splatinsert104, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph102
  %index107 = phi i64 [ 0, %vector.ph102 ], [ %index.next112, %vector.body106 ] ; 3 uses
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %.2387497.i, i64 %index107 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  %wide.load108 = load <2 x float>, ptr %i.sb, align 4, !tbaa !22
  %wide.load109 = load <2 x float>, ptr %i.sc, align 4, !tbaa !22
  %i.sd = fpext <2 x float> %wide.load108 to <2 x double>
  %i.se = fpext <2 x float> %wide.load109 to <2 x double>
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %index107 ; 3 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 16 ; 2 uses
  %wide.load110 = load <2 x double>, ptr %i.sf, align 8, !tbaa !29
  %wide.load111 = load <2 x double>, ptr %i.sg, align 8, !tbaa !29
  %i.sh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sd, <2 x double> %broadcast.splat105, <2 x double> %wide.load110)
  %i.si = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.se, <2 x double> %broadcast.splat105, <2 x double> %wide.load111)
  store <2 x double> %i.sh, ptr %i.sf, align 8, !tbaa !29
  store <2 x double> %i.si, ptr %i.sg, align 8, !tbaa !29
  %index.next112 = add nuw i64 %index107, 4       ; 2 uses
  %i.sj = icmp eq i64 %index.next112, %n.vec103
  br i1 %i.sj, label %middle.block113, label %vector.body106, !llvm.loop !959

middle.block113:                                  ; preds = %vector.body106
  br i1 %cmp.n114, label %._crit_edge.i, label %scalar.ph100.preheader

scalar.ph100.preheader:                           ; preds = %.lr.ph496.i, %middle.block113
  %indvars.iv617.i.ph = phi i64 [ 0, %.lr.ph496.i ], [ %n.vec103, %middle.block113 ]
  br label %scalar.ph100

scalar.ph100:                                     ; preds = %scalar.ph100.preheader, %scalar.ph100
  %indvars.iv617.i = phi i64 [ %indvars.iv.next618.i, %scalar.ph100 ], [ %indvars.iv617.i.ph, %scalar.ph100.preheader ] ; 3 uses
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %.2387497.i, i64 %indvars.iv617.i
  %i.sl = load float, ptr %i.sk, align 4, !tbaa !22
  %i.sm = fpext float %i.sl to double
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %indvars.iv617.i ; 2 uses
  %i.so = load double, ptr %i.sn, align 8, !tbaa !29
  %i.sp = call double @llvm.fmuladd.f64(double %i.sm, double %i.sa, double %i.so)
  store double %i.sp, ptr %i.sn, align 8, !tbaa !29
  %indvars.iv.next618.i = add nuw nsw i64 %indvars.iv617.i, 1 ; 2 uses
  %exitcond621.not.i = icmp eq i64 %indvars.iv.next618.i, %i.qt
  br i1 %exitcond621.not.i, label %._crit_edge.i, label %scalar.ph100, !llvm.loop !960

._crit_edge.i:                                    ; preds = %scalar.ph100, %middle.block113
  %indvars.iv.next623.i = add nuw nsw i64 %indvars.iv622.i, 1 ; 2 uses
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %.2387497.i, i64 %i.d
  %exitcond626.not.i = icmp eq i64 %indvars.iv.next623.i, %wide.trip.count612.i
  br i1 %exitcond626.not.i, label %._crit_edge500.split.i, label %.lr.ph496.i, !llvm.loop !961

._crit_edge500.split.i:                           ; preds = %._crit_edge.i
  %.not405.i = icmp eq ptr %.3364510.i, null
  br i1 %.not405.i, label %.lr.ph505.preheader.i, label %.lr.ph503.i.preheader

._crit_edge500.split.thread710.i:                 ; preds = %.preheader468.i
  %.not405711.i = icmp eq ptr %.3364510.i, null
  br i1 %.not405711.i, label %.lr.ph505.preheader.i, label %.lr.ph503.i.preheader

.lr.ph503.i.preheader:                            ; preds = %._crit_edge500.split.i, %._crit_edge500.split.thread710.i
  br i1 %i.qv, label %.lr.ph503.i.epil.preheader, label %.lr.ph503.i

.lr.ph505.preheader.i:                            ; preds = %._crit_edge500.split.i, %._crit_edge500.split.thread710.i
  br i1 %min.iters.check89, label %.lr.ph505.i.preheader, label %vector.body92

vector.body92:                                    ; preds = %.lr.ph505.preheader.i, %vector.body92
  %index93 = phi i64 [ %index.next96, %vector.body92 ], [ 0, %.lr.ph505.preheader.i ] ; 3 uses
  %i.sr = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %index93 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 16
  %wide.load94 = load <2 x double>, ptr %i.sr, align 8, !tbaa !29
  %wide.load95 = load <2 x double>, ptr %i.ss, align 8, !tbaa !29
  %i.st = fmul <2 x double> %broadcast.splat, %wide.load94
  %i.su = fmul <2 x double> %broadcast.splat, %wide.load95
  %i.sv = fptrunc <2 x double> %i.st to <2 x float>
  %i.sw = fptrunc <2 x double> %i.su to <2 x float>
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %.3397506.i, i64 %index93 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  store <2 x float> %i.sv, ptr %i.sx, align 4, !tbaa !22
  store <2 x float> %i.sw, ptr %i.sy, align 4, !tbaa !22
  %index.next96 = add nuw i64 %index93, 4         ; 2 uses
  %i.sz = icmp eq i64 %index.next96, %n.vec91
  br i1 %i.sz, label %middle.block97, label %vector.body92, !llvm.loop !962

middle.block97:                                   ; preds = %vector.body92
  br i1 %cmp.n98, label %.loopexit465.i, label %.lr.ph505.i.preheader

.lr.ph505.i.preheader:                            ; preds = %.lr.ph505.preheader.i, %middle.block97
  %indvars.iv632.i.ph = phi i64 [ 0, %.lr.ph505.preheader.i ], [ %n.vec91, %middle.block97 ]
  br label %.lr.ph505.i

.lr.ph505.i:                                      ; preds = %.lr.ph505.i.preheader, %.lr.ph505.i
  %indvars.iv632.i = phi i64 [ %indvars.iv.next633.i, %.lr.ph505.i ], [ %indvars.iv632.i.ph, %.lr.ph505.i.preheader ] ; 3 uses
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %indvars.iv632.i
  %i.tb = load double, ptr %i.ta, align 8, !tbaa !29
  %i.tc = fmul double %10, %i.tb
  %i.td = fptrunc double %i.tc to float
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %.3397506.i, i64 %indvars.iv632.i
  store float %i.td, ptr %i.te, align 4, !tbaa !22
  %indvars.iv.next633.i = add nuw nsw i64 %indvars.iv632.i, 1 ; 2 uses
  %exitcond636.not.i = icmp eq i64 %indvars.iv.next633.i, %i.qt
  br i1 %exitcond636.not.i, label %.loopexit465.i, label %.lr.ph505.i, !llvm.loop !963

.lr.ph503.i:                                      ; preds = %.lr.ph503.i.preheader, %.lr.ph503.i
  %indvars.iv627.i = phi i64 [ %indvars.iv.next628.i.1, %.lr.ph503.i ], [ 0, %.lr.ph503.i.preheader ] ; 4 uses
  %.5393501.i = phi ptr [ %i.tw, %.lr.ph503.i ], [ %.3364510.i, %.lr.ph503.i.preheader ] ; 2 uses
  %niter202 = phi i64 [ %niter202.next.1, %.lr.ph503.i ], [ 0, %.lr.ph503.i.preheader ]
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %indvars.iv627.i
  %i.tg = load double, ptr %i.tf, align 8, !tbaa !29
  %i.th = fmul double %10, %i.tg
  %i.ti = load float, ptr %.5393501.i, align 4, !tbaa !22
  %i.tj = fpext float %i.ti to double
  %i.tk = call double @llvm.fmuladd.f64(double %i.tj, double %11, double %i.th)
  %i.tl = fptrunc double %i.tk to float
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %.3397506.i, i64 %indvars.iv627.i
  store float %i.tl, ptr %i.tm, align 4, !tbaa !22
  %indvars.iv.next628.i = or disjoint i64 %indvars.iv627.i, 1 ; 2 uses
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %.5393501.i, i64 %.0356.i ; 2 uses
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %indvars.iv.next628.i
  %i.tp = load double, ptr %i.to, align 8, !tbaa !29
  %i.tq = fmul double %10, %i.tp
  %i.tr = load float, ptr %i.tn, align 4, !tbaa !22
  %i.ts = fpext float %i.tr to double
  %i.tt = call double @llvm.fmuladd.f64(double %i.ts, double %11, double %i.tq)
  %i.tu = fptrunc double %i.tt to float
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %.3397506.i, i64 %indvars.iv.next628.i
  store float %i.tu, ptr %i.tv, align 4, !tbaa !22
  %indvars.iv.next628.i.1 = add nuw nsw i64 %indvars.iv627.i, 2 ; 2 uses
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.tn, i64 %.0356.i ; 2 uses
  %niter202.next.1 = add i64 %niter202, 2         ; 2 uses
  %niter202.ncmp.1 = icmp eq i64 %niter202.next.1, %unroll_iter201
  br i1 %niter202.ncmp.1, label %.loopexit465.i.loopexit175.unr-lcssa, label %.lr.ph503.i, !llvm.loop !964

.loopexit465.i.loopexit175.unr-lcssa:             ; preds = %.lr.ph503.i
  br i1 %lcmp.mod199.not, label %.loopexit465.i, label %.lr.ph503.i.epil.preheader

.lr.ph503.i.epil.preheader:                       ; preds = %.loopexit465.i.loopexit175.unr-lcssa, %.lr.ph503.i.preheader
  %indvars.iv627.i.epil.init = phi i64 [ 0, %.lr.ph503.i.preheader ], [ %indvars.iv.next628.i.1, %.loopexit465.i.loopexit175.unr-lcssa ] ; 2 uses
  %.5393501.i.epil.init = phi ptr [ %.3364510.i, %.lr.ph503.i.preheader ], [ %i.tw, %.loopexit465.i.loopexit175.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod200)
  %i.tx = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %indvars.iv627.i.epil.init
  %i.ty = load double, ptr %i.tx, align 8, !tbaa !29
  %i.tz = fmul double %10, %i.ty
  %i.ua = load float, ptr %.5393501.i.epil.init, align 4, !tbaa !22
  %i.ub = fpext float %i.ua to double
  %i.uc = call double @llvm.fmuladd.f64(double %i.ub, double %11, double %i.tz)
  %i.ud = fptrunc double %i.uc to float
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %.3397506.i, i64 %indvars.iv627.i.epil.init
  store float %i.ud, ptr %i.ue, align 4, !tbaa !22
  br label %.loopexit465.i

.loopexit465.i:                                   ; preds = %.lr.ph503.i.epil.preheader, %.loopexit465.i.loopexit175.unr-lcssa, %.lr.ph505.i, %middle.block97, %.loopexit470.i
  %i.uf = add nuw nsw i32 %.3384508.i, 1          ; 2 uses
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %.2367509.i, i64 %.0359456.i
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %.3364510.i, i64 %.0357.i
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %.3397506.i, i64 %i.f
  %exitcond637.not.i = icmp eq i32 %i.uf, %.sroa.8.0.extract.trunc.i
  br i1 %exitcond637.not.i, label %._crit_edge513.i, label %bb.as, !llvm.loop !965

._crit_edge513.i:                                 ; preds = %.loopexit465.i, %_ZN2cv10AutoBufferIdLm136EEC2Em.exit.i
  %.not.i.i440.i = icmp eq ptr %i.qo, %i.qi
  br i1 %.not.i.i440.i, label %_ZN2cv10AutoBufferIdLm136EED2Ev.exit.i, label %bb.au

bb.au:                                            ; preds = %._crit_edge513.i
  call void @_ZdaPv(ptr noundef nonnull %i.qo) #27
  br label %_ZN2cv10AutoBufferIdLm136EED2Ev.exit.i

_ZN2cv10AutoBufferIdLm136EED2Ev.exit.i:           ; preds = %bb.au, %._crit_edge513.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %.loopexit463.i

.loopexit463.i:                                   ; preds = %.loopexit473.i.loopexit, %._crit_edge483.i.loopexit14.us, %._crit_edge483.i.loopexit.us.us, %._crit_edge545.i, %.lr.ph490.i.split, %_ZN2cv10AutoBufferIdLm136EED2Ev.exit.i, %.preheader462.i, %.preheader474.i, %_ZN2cv10AutoBufferIfLm264EED2Ev.exit437.i
  %i.uj = load ptr, ptr %13, align 8, !tbaa !78   ; 3 uses
  %.not.i.i442.i = icmp eq ptr %i.uj, %i.a
  %i.uk = icmp eq ptr %i.uj, null
  %or.cond.i443.i = or i1 %.not.i.i442.i, %i.uk
  br i1 %or.cond.i443.i, label %_ZN2cv12cpu_baselineL13GEMMSingleMulIfdEEvPKT_mS4_mS4_mPS2_mNS_5Size_IiEES7_ddi.exit, label %bb.av

bb.av:                                            ; preds = %.loopexit463.i
  call void @_ZdaPv(ptr noundef nonnull %i.uj) #27
  br label %_ZN2cv12cpu_baselineL13GEMMSingleMulIfdEEvPKT_mS4_mS4_mPS2_mNS_5Size_IiEES7_ddi.exit

bb.aw:                                            ; preds = %bb.at, %_ZN2cv10AutoBufferIfLm264EED2Ev.exit.i, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.ay, %_ZN2cv10AutoBufferIfLm264EED2Ev.exit.i ], [ %i.rx, %bb.at ], [ %i.m, %bb.e ]
  %i.ul = load ptr, ptr %13, align 8, !tbaa !78   ; 3 uses
  %.not.i.i446.i = icmp eq ptr %i.ul, %i.a
  %i.um = icmp eq ptr %i.ul, null
  %or.cond.i447.i = or i1 %.not.i.i446.i, %i.um
  br i1 %or.cond.i447.i, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit449.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
end_hunk_2
begin_hunk_3_@_ZN2cv12cpu_baselineL16GEMMBlockMul_32fEPKfmS2_mPdmNS_5Size_IiEES5_i:bb.a
  %i.y = icmp samesign ult i32 %i.w, %.0170.i
  %i.z = lshr i32 %i.t, 1                         ; 2 uses
  %narrow = add nuw i32 %i.z, 1                   ; 2 uses
  %i.aa = zext i32 %narrow to i64                 ; 2 uses
  %i.ab = add nsw i32 %.0170.i, -3
  %min.iters.check83 = icmp samesign ugt i64 %wide.trip.count354.i, 7
  %ident.check81.not = icmp eq i64 %.0165.i, 1
  %or.cond = and i1 %min.iters.check83, %ident.check81.not
  %n.vec85 = and i64 %.0170.in.i, 2147483640      ; 3 uses
  %cmp.n92 = icmp eq i64 %wide.trip.count354.i, %n.vec85
  %xtraiter150 = and i64 %.0170.in.i, 3           ; 2 uses
  %lcmp.mod151.not = icmp eq i64 %xtraiter150, 0
  %xtraiter153 = and i64 %i.aa, 1
  %i.ac = icmp eq i32 %i.z, 0
  %unroll_iter = and i64 %i.aa, 4294967294
  %lcmp.mod154.not = icmp eq i64 %xtraiter153, 0
  %lcmp.mod156 = trunc i32 %narrow to i1
  %xtraiter157 = and i32 %.0170.i, 1
  %lcmp.mod158.not = icmp eq i32 %xtraiter157, 0
  %indvars.iv.next360.i.prol = or disjoint i64 %i.x, 1
  %i.ad = icmp eq i32 %i.ab, %i.v
  br label %.lr.ph228.split.us.split.i

.lr.ph228.split.us.split.us.i:                    ; preds = %.lr.ph228.split.us.i
  br i1 %i.u, label %.lr.ph228.split.us.split.us.split.us.preheader.i, label %.lr.ph228.split.us.split.us.split.i

.lr.ph228.split.us.split.us.split.us.preheader.i: ; preds = %.lr.ph228.split.us.split.us.i
  %wide.trip.count421.i = and i64 %7, 2147483647  ; 2 uses
  br i1 %.not186.i, label %.lr.ph228.split.us.split.us.split.us.i.us.preheader, label %.lr.ph228.split.us.split.us.split.us.i.preheader

.lr.ph228.split.us.split.us.split.us.i.preheader: ; preds = %.lr.ph228.split.us.split.us.split.us.preheader.i
  %xtraiter171 = and i64 %7, 1
  %i.ae = icmp eq i64 %wide.trip.count421.i, 1
  %unroll_iter175 = and i64 %7, 2147483646
  %lcmp.mod173.not = icmp eq i64 %xtraiter171, 0
  %lcmp.mod174 = trunc i64 %7 to i1
  br label %.lr.ph228.split.us.split.us.split.us.i

.lr.ph228.split.us.split.us.split.us.i.us.preheader: ; preds = %.lr.ph228.split.us.split.us.split.us.preheader.i
  %xtraiter177 = and i64 %7, 1
  %i.af = icmp eq i64 %wide.trip.count421.i, 1
  %unroll_iter181 = and i64 %7, 2147483646
  %lcmp.mod179.not = icmp eq i64 %xtraiter177, 0
  %lcmp.mod180 = trunc i64 %7 to i1
  br label %.lr.ph228.split.us.split.us.split.us.i.us

.lr.ph228.split.us.split.us.split.us.i.us:        ; preds = %.lr.ph228.split.us.split.us.split.us.i.us.preheader, %._crit_edge218.split.us.split.us.us.us.us.i.loopexit.us
  %.0168227.us.us.us.i.us = phi ptr [ %i.ba, %._crit_edge218.split.us.split.us.us.us.us.i.loopexit.us ], [ %0, %.lr.ph228.split.us.split.us.split.us.i.us.preheader ] ; 2 uses
  %.0176226.us.us.us.i.us = phi i32 [ %i.az, %._crit_edge218.split.us.split.us.us.us.us.i.loopexit.us ], [ 0, %.lr.ph228.split.us.split.us.split.us.i.us.preheader ]
  %.0178222.us.us.us.i.us = phi ptr [ %i.bb, %._crit_edge218.split.us.split.us.us.us.us.i.loopexit.us ], [ %4, %.lr.ph228.split.us.split.us.split.us.i.us.preheader ] ; 4 uses
  %.pre39 = load float, ptr %.0168227.us.us.us.i.us, align 4, !tbaa !22 ; 2 uses
  br i1 %.not185.i, label %.lr.ph217.us.us.us.i.us, label %.lr.ph217.us.us.us.loopexit.i.us

.lr.ph217.us.us.us.loopexit.i.us:                 ; preds = %.lr.ph228.split.us.split.us.split.us.i.us
  store float %.pre39, ptr %.0167.i, align 4, !tbaa !22
  br label %.lr.ph217.us.us.us.i.us

.lr.ph217.us.us.us.i.us:                          ; preds = %.lr.ph228.split.us.split.us.split.us.i.us, %.lr.ph217.us.us.us.loopexit.i.us
  %i.ag = fpext float %.pre39 to double           ; 3 uses
  br i1 %i.af, label %._crit_edge.us.us.us.us.us.us.i.us.epil.preheader, label %._crit_edge.us.us.us.us.us.us.i.us

._crit_edge.us.us.us.us.us.us.i.us:               ; preds = %.lr.ph217.us.us.us.i.us, %._crit_edge.us.us.us.us.us.us.i.us
  %indvars.iv428.i.us = phi i64 [ %indvars.iv.next429.i.us.1, %._crit_edge.us.us.us.us.us.us.i.us ], [ 0, %.lr.ph217.us.us.us.i.us ] ; 3 uses
  %.0164215.us.us.us.us.us.us.i.us = phi ptr [ %i.at, %._crit_edge.us.us.us.us.us.us.i.us ], [ %2, %.lr.ph217.us.us.us.i.us ] ; 2 uses
  %niter182 = phi i64 [ %niter182.next.1, %._crit_edge.us.us.us.us.us.us.i.us ], [ 0, %.lr.ph217.us.us.us.i.us ]
  %i.ah = load float, ptr %.0164215.us.us.us.us.us.us.i.us, align 4, !tbaa !22
  %i.ai = fpext float %i.ah to double
  %i.aj = call double @llvm.fmuladd.f64(double %i.ag, double %i.ai, double 0.000000e+00)
  %i.ak = fadd double %i.aj, 0.000000e+00
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.us.us.i.us, i64 %indvars.iv428.i.us
  store double %i.ak, ptr %i.al, align 8, !tbaa !29
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.0164215.us.us.us.us.us.us.i.us, i64 %i.e ; 2 uses
  %i.an = load float, ptr %i.am, align 4, !tbaa !22
  %i.ao = fpext float %i.an to double
  %i.ap = call double @llvm.fmuladd.f64(double %i.ag, double %i.ao, double 0.000000e+00)
  %i.aq = fadd double %i.ap, 0.000000e+00
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.us.us.i.us, i64 %indvars.iv428.i.us
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store double %i.aq, ptr %i.as, align 8, !tbaa !29
  %indvars.iv.next429.i.us.1 = add nuw nsw i64 %indvars.iv428.i.us, 2 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.e ; 2 uses
  %niter182.next.1 = add i64 %niter182, 2         ; 2 uses
  %niter182.ncmp.1 = icmp eq i64 %niter182.next.1, %unroll_iter181
  br i1 %niter182.ncmp.1, label %._crit_edge218.split.us.split.us.us.us.us.i.loopexit.us.unr-lcssa, label %._crit_edge.us.us.us.us.us.us.i.us, !llvm.loop !968

._crit_edge218.split.us.split.us.us.us.us.i.loopexit.us.unr-lcssa: ; preds = %._crit_edge.us.us.us.us.us.us.i.us
  br i1 %lcmp.mod179.not, label %._crit_edge218.split.us.split.us.us.us.us.i.loopexit.us, label %._crit_edge.us.us.us.us.us.us.i.us.epil.preheader

._crit_edge.us.us.us.us.us.us.i.us.epil.preheader: ; preds = %._crit_edge218.split.us.split.us.us.us.us.i.loopexit.us.unr-lcssa, %.lr.ph217.us.us.us.i.us
  %indvars.iv428.i.us.epil.init = phi i64 [ 0, %.lr.ph217.us.us.us.i.us ], [ %indvars.iv.next429.i.us.1, %._crit_edge218.split.us.split.us.us.us.us.i.loopexit.us.unr-lcssa ]
  %.0164215.us.us.us.us.us.us.i.us.epil.init = phi ptr [ %2, %.lr.ph217.us.us.us.i.us ], [ %i.at, %._crit_edge218.split.us.split.us.us.us.us.i.loopexit.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod180)
  %i.au = load float, ptr %.0164215.us.us.us.us.us.us.i.us.epil.init, align 4, !tbaa !22
  %i.av = fpext float %i.au to double
  %i.aw = call double @llvm.fmuladd.f64(double %i.ag, double %i.av, double 0.000000e+00)
  %i.ax = fadd double %i.aw, 0.000000e+00
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.us.us.i.us, i64 %indvars.iv428.i.us.epil.init
  store double %i.ax, ptr %i.ay, align 8, !tbaa !29
  br label %._crit_edge218.split.us.split.us.us.us.us.i.loopexit.us

._crit_edge218.split.us.split.us.us.us.us.i.loopexit.us: ; preds = %._crit_edge218.split.us.split.us.us.us.us.i.loopexit.us.unr-lcssa, %._crit_edge.us.us.us.us.us.us.i.us.epil.preheader
  %i.az = add nuw nsw i32 %.0176226.us.us.us.i.us, 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.0168227.us.us.us.i.us, i64 %.0166.i
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.us.us.i.us, i64 %i.f
  %exitcond433.not.i.us = icmp eq i32 %i.az, %.sroa.3.0.extract.trunc.i
  br i1 %exitcond433.not.i.us, label %.loopexit196.i, label %.lr.ph228.split.us.split.us.split.us.i.us, !llvm.loop !969

.lr.ph228.split.us.split.us.split.us.i:           ; preds = %.lr.ph228.split.us.split.us.split.us.i.preheader, %._crit_edge218.split.us.split.us.us.us.us.i.loopexit9
  %.0168227.us.us.us.i = phi ptr [ %i.bz, %._crit_edge218.split.us.split.us.us.us.us.i.loopexit9 ], [ %0, %.lr.ph228.split.us.split.us.split.us.i.preheader ] ; 2 uses
  %.0176226.us.us.us.i = phi i32 [ %i.by, %._crit_edge218.split.us.split.us.us.us.us.i.loopexit9 ], [ 0, %.lr.ph228.split.us.split.us.split.us.i.preheader ]
  %.0178222.us.us.us.i = phi ptr [ %i.ca, %._crit_edge218.split.us.split.us.us.us.us.i.loopexit9 ], [ %4, %.lr.ph228.split.us.split.us.split.us.i.preheader ] ; 4 uses
  %.pre = load float, ptr %.0168227.us.us.us.i, align 4, !tbaa !22 ; 2 uses
  br i1 %.not185.i, label %.lr.ph217.us.us.us.i, label %.lr.ph217.us.us.us.loopexit.i

.lr.ph217.us.us.us.loopexit.i:                    ; preds = %.lr.ph228.split.us.split.us.split.us.i
  store float %.pre, ptr %.0167.i, align 4, !tbaa !22
  br label %.lr.ph217.us.us.us.i

.lr.ph217.us.us.us.i:                             ; preds = %.lr.ph228.split.us.split.us.split.us.i, %.lr.ph217.us.us.us.loopexit.i
  %i.bc = fpext float %.pre to double             ; 3 uses
  br i1 %i.ae, label %._crit_edge.us.us.us.us.us.i.epil.preheader, label %._crit_edge.us.us.us.us.us.i

._crit_edge.us.us.us.us.us.i:                     ; preds = %.lr.ph217.us.us.us.i, %._crit_edge.us.us.us.us.us.i
  %indvars.iv418.i = phi i64 [ %indvars.iv.next419.i.1, %._crit_edge.us.us.us.us.us.i ], [ 0, %.lr.ph217.us.us.us.i ] ; 3 uses
  %.0164215.us.us.us.us.us.i = phi ptr [ %i.br, %._crit_edge.us.us.us.us.us.i ], [ %2, %.lr.ph217.us.us.us.i ] ; 2 uses
  %niter176 = phi i64 [ %niter176.next.1, %._crit_edge.us.us.us.us.us.i ], [ 0, %.lr.ph217.us.us.us.i ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.us.us.i, i64 %indvars.iv418.i ; 2 uses
  %i.be = load float, ptr %.0164215.us.us.us.us.us.i, align 4, !tbaa !22
  %i.bf = fpext float %i.be to double
  %i.bg = load double, ptr %i.bd, align 8, !tbaa !29
  %i.bh = call double @llvm.fmuladd.f64(double %i.bc, double %i.bf, double %i.bg)
  %i.bi = fadd double %i.bh, 0.000000e+00
  store double %i.bi, ptr %i.bd, align 8, !tbaa !29
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.0164215.us.us.us.us.us.i, i64 %i.e ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.us.us.i, i64 %indvars.iv418.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bm = load float, ptr %i.bj, align 4, !tbaa !22
  %i.bn = fpext float %i.bm to double
  %i.bo = load double, ptr %i.bl, align 8, !tbaa !29
  %i.bp = call double @llvm.fmuladd.f64(double %i.bc, double %i.bn, double %i.bo)
  %i.bq = fadd double %i.bp, 0.000000e+00
  store double %i.bq, ptr %i.bl, align 8, !tbaa !29
  %indvars.iv.next419.i.1 = add nuw nsw i64 %indvars.iv418.i, 2 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.e ; 2 uses
  %niter176.next.1 = add i64 %niter176, 2         ; 2 uses
  %niter176.ncmp.1 = icmp eq i64 %niter176.next.1, %unroll_iter175
  br i1 %niter176.ncmp.1, label %._crit_edge218.split.us.split.us.us.us.us.i.loopexit9.unr-lcssa, label %._crit_edge.us.us.us.us.us.i, !llvm.loop !968

._crit_edge218.split.us.split.us.us.us.us.i.loopexit9.unr-lcssa: ; preds = %._crit_edge.us.us.us.us.us.i
  br i1 %lcmp.mod173.not, label %._crit_edge218.split.us.split.us.us.us.us.i.loopexit9, label %._crit_edge.us.us.us.us.us.i.epil.preheader

._crit_edge.us.us.us.us.us.i.epil.preheader:      ; preds = %._crit_edge218.split.us.split.us.us.us.us.i.loopexit9.unr-lcssa, %.lr.ph217.us.us.us.i
  %indvars.iv418.i.epil.init = phi i64 [ 0, %.lr.ph217.us.us.us.i ], [ %indvars.iv.next419.i.1, %._crit_edge218.split.us.split.us.us.us.us.i.loopexit9.unr-lcssa ]
  %.0164215.us.us.us.us.us.i.epil.init = phi ptr [ %2, %.lr.ph217.us.us.us.i ], [ %i.br, %._crit_edge218.split.us.split.us.us.us.us.i.loopexit9.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod174)
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.us.us.i, i64 %indvars.iv418.i.epil.init ; 2 uses
  %i.bt = load float, ptr %.0164215.us.us.us.us.us.i.epil.init, align 4, !tbaa !22
  %i.bu = fpext float %i.bt to double
  %i.bv = load double, ptr %i.bs, align 8, !tbaa !29
  %i.bw = call double @llvm.fmuladd.f64(double %i.bc, double %i.bu, double %i.bv)
  %i.bx = fadd double %i.bw, 0.000000e+00
  store double %i.bx, ptr %i.bs, align 8, !tbaa !29
  br label %._crit_edge218.split.us.split.us.us.us.us.i.loopexit9

._crit_edge218.split.us.split.us.us.us.us.i.loopexit9: ; preds = %._crit_edge218.split.us.split.us.us.us.us.i.loopexit9.unr-lcssa, %._crit_edge.us.us.us.us.us.i.epil.preheader
  %i.by = add nuw nsw i32 %.0176226.us.us.us.i, 1 ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.0168227.us.us.us.i, i64 %.0166.i
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.us.us.i, i64 %i.f
  %exitcond433.not.i = icmp eq i32 %i.by, %.sroa.3.0.extract.trunc.i
  br i1 %exitcond433.not.i, label %.loopexit196.i, label %.lr.ph228.split.us.split.us.split.us.i, !llvm.loop !969

.lr.ph228.split.us.split.us.split.i:              ; preds = %.lr.ph228.split.us.split.us.i
  br i1 %.not186.i, label %.lr.ph228.split.us.split.us.split.split.us.i, label %.lr.ph228.split.us.split.us.split.split.i

.lr.ph228.split.us.split.us.split.split.us.i:     ; preds = %.lr.ph228.split.us.split.us.split.i
  %i.cb = shl i64 %7, 3
  %i.cc = and i64 %i.cb, 17179869176              ; 18 uses
  br i1 %.not185.i, label %.lr.ph217.us.us.us249.us.i.preheader, label %.preheader198.us.us.us244.i.preheader

.preheader198.us.us.us244.i.preheader:            ; preds = %.lr.ph228.split.us.split.us.split.split.us.i
  %xtraiter160 = and i32 %.sroa.3.0.extract.trunc.i, 7 ; 3 uses
  %i.cd = icmp ult i64 %7, 34359738368
  br i1 %i.cd, label %.preheader198.us.us.us244.i.epil.preheader, label %.preheader198.us.us.us244.i.preheader.new

.preheader198.us.us.us244.i.preheader.new:        ; preds = %.preheader198.us.us.us244.i.preheader
  %unroll_iter163 = and i32 %.sroa.3.0.extract.trunc.i, 2147483640
  br label %.preheader198.us.us.us244.i

.lr.ph217.us.us.us249.us.i.preheader:             ; preds = %.lr.ph228.split.us.split.us.split.split.us.i
  %xtraiter165 = and i32 %.sroa.3.0.extract.trunc.i, 7 ; 3 uses
  %i.ce = icmp ult i64 %7, 34359738368
  br i1 %i.ce, label %.lr.ph217.us.us.us249.us.i.epil.preheader, label %.lr.ph217.us.us.us249.us.i.preheader.new

.lr.ph217.us.us.us249.us.i.preheader.new:         ; preds = %.lr.ph217.us.us.us249.us.i.preheader
  %unroll_iter169 = and i32 %.sroa.3.0.extract.trunc.i, 2147483640
  br label %.lr.ph217.us.us.us249.us.i

.lr.ph217.us.us.us249.us.i:                       ; preds = %.lr.ph217.us.us.us249.us.i, %.lr.ph217.us.us.us249.us.i.preheader.new
  %.0178222.us.us.us243.us.i = phi ptr [ %4, %.lr.ph217.us.us.us249.us.i.preheader.new ], [ %i.cm, %.lr.ph217.us.us.us249.us.i ] ; 2 uses
  %niter170 = phi i32 [ 0, %.lr.ph217.us.us.us249.us.i.preheader.new ], [ %niter170.next.7, %.lr.ph217.us.us.us249.us.i ]
  call void @llvm.memset.p0.i64(ptr align 8 %.0178222.us.us.us243.us.i, i8 0, i64 %i.cc, i1 false), !tbaa !29
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.us.us243.us.i, i64 %i.f ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.cf, i8 0, i64 %i.cc, i1 false), !tbaa !29
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.f ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.cg, i8 0, i64 %i.cc, i1 false), !tbaa !29
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.f ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.ch, i8 0, i64 %i.cc, i1 false), !tbaa !29
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.f ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.ci, i8 0, i64 %i.cc, i1 false), !tbaa !29
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.f ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.cj, i8 0, i64 %i.cc, i1 false), !tbaa !29
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.f ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.ck, i8 0, i64 %i.cc, i1 false), !tbaa !29
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.f ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.cl, i8 0, i64 %i.cc, i1 false), !tbaa !29
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.f ; 2 uses
  %niter170.next.7 = add i32 %niter170, 8         ; 2 uses
  %niter170.ncmp.7 = icmp eq i32 %niter170.next.7, %unroll_iter169
  br i1 %niter170.ncmp.7, label %.loopexit196.i.loopexit140.unr-lcssa, label %.lr.ph217.us.us.us249.us.i, !llvm.loop !969

.preheader198.us.us.us244.i:                      ; preds = %.preheader198.us.us.us244.i, %.preheader198.us.us.us244.i.preheader.new
  %.0178222.us.us.us243.i = phi ptr [ %4, %.preheader198.us.us.us244.i.preheader.new ], [ %i.cu, %.preheader198.us.us.us244.i ] ; 2 uses
  %niter164 = phi i32 [ 0, %.preheader198.us.us.us244.i.preheader.new ], [ %niter164.next.7, %.preheader198.us.us.us244.i ]
  call void @llvm.memset.p0.i64(ptr align 8 %.0178222.us.us.us243.i, i8 0, i64 %i.cc, i1 false), !tbaa !29
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.us.us243.i, i64 %i.f ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.cn, i8 0, i64 %i.cc, i1 false), !tbaa !29
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.f ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.co, i8 0, i64 %i.cc, i1 false), !tbaa !29
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.f ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.cp, i8 0, i64 %i.cc, i1 false), !tbaa !29
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.f ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.cq, i8 0, i64 %i.cc, i1 false), !tbaa !29
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.f ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.cr, i8 0, i64 %i.cc, i1 false), !tbaa !29
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.f ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.cs, i8 0, i64 %i.cc, i1 false), !tbaa !29
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.f ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.ct, i8 0, i64 %i.cc, i1 false), !tbaa !29
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.f ; 2 uses
  %niter164.next.7 = add i32 %niter164, 8         ; 2 uses
  %niter164.ncmp.7 = icmp eq i32 %niter164.next.7, %unroll_iter163
  br i1 %niter164.ncmp.7, label %.loopexit196.i.loopexit141.unr-lcssa, label %.preheader198.us.us.us244.i, !llvm.loop !969

.lr.ph228.split.us.split.us.split.split.i:        ; preds = %.lr.ph228.split.us.split.us.split.i
  %wide.trip.count388.i = and i64 %7, 2147483647  ; 6 uses
  br i1 %.not185.i, label %.lr.ph217.us.us.us253.i.preheader, label %.preheader198.us.us.i.preheader

.preheader198.us.us.i.preheader:                  ; preds = %.lr.ph228.split.us.split.us.split.split.i
  %min.iters.check95 = icmp samesign ult i64 %wide.trip.count388.i, 4
  %n.vec97 = and i64 %7, 2147483644               ; 3 uses
  %cmp.n104 = icmp eq i64 %wide.trip.count388.i, %n.vec97
  br label %.preheader198.us.us.i

.lr.ph217.us.us.us253.i.preheader:                ; preds = %.lr.ph228.split.us.split.us.split.split.i
  %min.iters.check107 = icmp samesign ult i64 %wide.trip.count388.i, 4
  %n.vec109 = and i64 %7, 2147483644              ; 3 uses
  %cmp.n116 = icmp eq i64 %wide.trip.count388.i, %n.vec109
  br label %.lr.ph217.us.us.us253.i

.lr.ph217.us.us.us253.i:                          ; preds = %.lr.ph217.us.us.us253.i.preheader, %._crit_edge218.split.us.split.split.us238.us.us.i
  %.0176226.us.us.us251.i = phi i32 [ %i.dd, %._crit_edge218.split.us.split.split.us238.us.us.i ], [ 0, %.lr.ph217.us.us.us253.i.preheader ]
  %.0178222.us.us.us252.i = phi ptr [ %i.de, %._crit_edge218.split.us.split.split.us238.us.us.i ], [ %4, %.lr.ph217.us.us.us253.i.preheader ] ; 3 uses
  br i1 %min.iters.check107, label %.preheader197.us.us235.us.us.i.preheader, label %vector.body110

vector.body110:                                   ; preds = %.lr.ph217.us.us.us253.i, %vector.body110
  %index111 = phi i64 [ %index.next114, %vector.body110 ], [ 0, %.lr.ph217.us.us.us253.i ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.us.us252.i, i64 %index111 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %wide.load112 = load <2 x double>, ptr %i.cv, align 8, !tbaa !29
  %wide.load113 = load <2 x double>, ptr %i.cw, align 8, !tbaa !29
  %i.cx = fadd <2 x double> %wide.load112, zeroinitializer
  %i.cy = fadd <2 x double> %wide.load113, zeroinitializer
  store <2 x double> %i.cx, ptr %i.cv, align 8, !tbaa !29
  store <2 x double> %i.cy, ptr %i.cw, align 8, !tbaa !29
  %index.next114 = add nuw i64 %index111, 4       ; 2 uses
  %i.cz = icmp eq i64 %index.next114, %n.vec109
  br i1 %i.cz, label %middle.block115, label %vector.body110, !llvm.loop !970

middle.block115:                                  ; preds = %vector.body110
  br i1 %cmp.n116, label %._crit_edge218.split.us.split.split.us238.us.us.i, label %.preheader197.us.us235.us.us.i.preheader

.preheader197.us.us235.us.us.i.preheader:         ; preds = %.lr.ph217.us.us.us253.i, %middle.block115
  %indvars.iv385.i.ph = phi i64 [ 0, %.lr.ph217.us.us.us253.i ], [ %n.vec109, %middle.block115 ]
  br label %.preheader197.us.us235.us.us.i

.preheader197.us.us235.us.us.i:                   ; preds = %.preheader197.us.us235.us.us.i.preheader, %.preheader197.us.us235.us.us.i
  %indvars.iv385.i = phi i64 [ %indvars.iv.next386.i, %.preheader197.us.us235.us.us.i ], [ %indvars.iv385.i.ph, %.preheader197.us.us235.us.us.i.preheader ] ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.us.us252.i, i64 %indvars.iv385.i ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !29
  %i.dc = fadd double %i.db, 0.000000e+00
  store double %i.dc, ptr %i.da, align 8, !tbaa !29
  %indvars.iv.next386.i = add nuw nsw i64 %indvars.iv385.i, 1 ; 2 uses
  %exitcond389.not.i = icmp eq i64 %indvars.iv.next386.i, %wide.trip.count388.i
  br i1 %exitcond389.not.i, label %._crit_edge218.split.us.split.split.us238.us.us.i, label %.preheader197.us.us235.us.us.i, !llvm.loop !971

._crit_edge218.split.us.split.split.us238.us.us.i: ; preds = %.preheader197.us.us235.us.us.i, %middle.block115
  %i.dd = add nuw nsw i32 %.0176226.us.us.us251.i, 1 ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.us.us252.i, i64 %i.f
  %exitcond390.not.i = icmp eq i32 %i.dd, %.sroa.3.0.extract.trunc.i
  br i1 %exitcond390.not.i, label %.loopexit196.i, label %.lr.ph217.us.us.us253.i, !llvm.loop !969

.preheader198.us.us.i:                            ; preds = %.preheader198.us.us.i.preheader, %._crit_edge218.split.us.split.split.us238.us.i
  %.0176226.us.us.i = phi i32 [ %i.dn, %._crit_edge218.split.us.split.split.us238.us.i ], [ 0, %.preheader198.us.us.i.preheader ]
  %.0178222.us.us.i = phi ptr [ %i.do, %._crit_edge218.split.us.split.split.us238.us.i ], [ %4, %.preheader198.us.us.i.preheader ] ; 3 uses
  br i1 %min.iters.check95, label %.preheader197.us.us235.us.i.preheader, label %vector.body98

vector.body98:                                    ; preds = %.preheader198.us.us.i, %vector.body98
  %index99 = phi i64 [ %index.next102, %vector.body98 ], [ 0, %.preheader198.us.us.i ] ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.us.i, i64 %index99 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  %wide.load100 = load <2 x double>, ptr %i.df, align 8, !tbaa !29
  %wide.load101 = load <2 x double>, ptr %i.dg, align 8, !tbaa !29
  %i.dh = fadd <2 x double> %wide.load100, zeroinitializer
  %i.di = fadd <2 x double> %wide.load101, zeroinitializer
  store <2 x double> %i.dh, ptr %i.df, align 8, !tbaa !29
  store <2 x double> %i.di, ptr %i.dg, align 8, !tbaa !29
  %index.next102 = add nuw i64 %index99, 4        ; 2 uses
  %i.dj = icmp eq i64 %index.next102, %n.vec97
  br i1 %i.dj, label %middle.block103, label %vector.body98, !llvm.loop !972

middle.block103:                                  ; preds = %vector.body98
  br i1 %cmp.n104, label %._crit_edge218.split.us.split.split.us238.us.i, label %.preheader197.us.us235.us.i.preheader

.preheader197.us.us235.us.i.preheader:            ; preds = %.preheader198.us.us.i, %middle.block103
  %indvars.iv379.i.ph = phi i64 [ 0, %.preheader198.us.us.i ], [ %n.vec97, %middle.block103 ]
  br label %.preheader197.us.us235.us.i

.preheader197.us.us235.us.i:                      ; preds = %.preheader197.us.us235.us.i.preheader, %.preheader197.us.us235.us.i
  %indvars.iv379.i = phi i64 [ %indvars.iv.next380.i, %.preheader197.us.us235.us.i ], [ %indvars.iv379.i.ph, %.preheader197.us.us235.us.i.preheader ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.us.i, i64 %indvars.iv379.i ; 2 uses
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !29
  %i.dm = fadd double %i.dl, 0.000000e+00
  store double %i.dm, ptr %i.dk, align 8, !tbaa !29
  %indvars.iv.next380.i = add nuw nsw i64 %indvars.iv379.i, 1 ; 2 uses
  %exitcond383.not.i = icmp eq i64 %indvars.iv.next380.i, %wide.trip.count388.i
  br i1 %exitcond383.not.i, label %._crit_edge218.split.us.split.split.us238.us.i, label %.preheader197.us.us235.us.i, !llvm.loop !973

._crit_edge218.split.us.split.split.us238.us.i:   ; preds = %.preheader197.us.us235.us.i, %middle.block103
  %i.dn = add nuw nsw i32 %.0176226.us.us.i, 1    ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.us.i, i64 %i.f
  %exitcond384.not.i = icmp eq i32 %i.dn, %.sroa.3.0.extract.trunc.i
  br i1 %exitcond384.not.i, label %.loopexit196.i, label %.preheader198.us.us.i, !llvm.loop !969

.lr.ph228.split.us.split.i:                       ; preds = %._crit_edge218.split.us232.i, %.lr.ph228.split.us.split.preheader.i
  %.0168227.us.i = phi ptr [ %i.gs, %._crit_edge218.split.us232.i ], [ %0, %.lr.ph228.split.us.split.preheader.i ] ; 8 uses
  %.0176226.us.i = phi i32 [ %i.gr, %._crit_edge218.split.us232.i ], [ 0, %.lr.ph228.split.us.split.preheader.i ]
  %.0178222.us.i = phi ptr [ %i.gt, %._crit_edge218.split.us232.i ], [ %4, %.lr.ph228.split.us.split.preheader.i ] ; 3 uses
  br i1 %.not185.i, label %.lr.ph217.us.i, label %.lr.ph.us.i.preheader

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph228.split.us.split.i
  br i1 %or.cond, label %vector.body86, label %.lr.ph.us.i.preheader145

vector.body86:                                    ; preds = %.lr.ph.us.i.preheader, %vector.body86
  %index87 = phi i64 [ %index.next90, %vector.body86 ], [ 0, %.lr.ph.us.i.preheader ] ; 3 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.0168227.us.i, i64 %index87 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %wide.load88 = load <4 x float>, ptr %i.dp, align 4, !tbaa !22
  %wide.load89 = load <4 x float>, ptr %i.dq, align 4, !tbaa !22
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.0167.i, i64 %index87 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store <4 x float> %wide.load88, ptr %i.dr, align 4, !tbaa !22
  store <4 x float> %wide.load89, ptr %i.ds, align 4, !tbaa !22
  %index.next90 = add nuw i64 %index87, 8         ; 2 uses
  %i.dt = icmp eq i64 %index.next90, %n.vec85
  br i1 %i.dt, label %middle.block91, label %vector.body86, !llvm.loop !974

middle.block91:                                   ; preds = %vector.body86
  br i1 %cmp.n92, label %.lr.ph217.us.i, label %.lr.ph.us.i.preheader145

.lr.ph.us.i.preheader145:                         ; preds = %.lr.ph.us.i.preheader, %middle.block91
  %indvars.iv351.i.ph = phi i64 [ 0, %.lr.ph.us.i.preheader ], [ %n.vec85, %middle.block91 ] ; 3 uses
  br i1 %lcmp.mod151.not, label %.lr.ph.us.i.prol.loopexit, label %.lr.ph.us.i.prol

.lr.ph.us.i.prol:                                 ; preds = %.lr.ph.us.i.preheader145, %.lr.ph.us.i.prol
  %indvars.iv351.i.prol = phi i64 [ %indvars.iv.next352.i.prol, %.lr.ph.us.i.prol ], [ %indvars.iv351.i.ph, %.lr.ph.us.i.preheader145 ] ; 3 uses
  %prol.iter152 = phi i64 [ %prol.iter152.next, %.lr.ph.us.i.prol ], [ 0, %.lr.ph.us.i.preheader145 ]
  %i.du = mul i64 %indvars.iv351.i.prol, %.0165.i
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.0168227.us.i, i64 %i.du
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !22
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.0167.i, i64 %indvars.iv351.i.prol
  store float %i.dw, ptr %i.dx, align 4, !tbaa !22
  %indvars.iv.next352.i.prol = add nuw nsw i64 %indvars.iv351.i.prol, 1 ; 2 uses
  %prol.iter152.next = add i64 %prol.iter152, 1   ; 2 uses
  %prol.iter152.cmp.not = icmp eq i64 %prol.iter152.next, %xtraiter150
  br i1 %prol.iter152.cmp.not, label %.lr.ph.us.i.prol.loopexit, label %.lr.ph.us.i.prol, !llvm.loop !975

.lr.ph.us.i.prol.loopexit:                        ; preds = %.lr.ph.us.i.prol, %.lr.ph.us.i.preheader145
  %indvars.iv351.i.unr = phi i64 [ %indvars.iv351.i.ph, %.lr.ph.us.i.preheader145 ], [ %indvars.iv.next352.i.prol, %.lr.ph.us.i.prol ]
  %i.dy = sub nsw i64 %indvars.iv351.i.ph, %wide.trip.count354.i
  %i.dz = icmp ugt i64 %i.dy, -4
  br i1 %i.dz, label %.lr.ph217.us.i, label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.prol.loopexit, %.lr.ph.us.i
  %indvars.iv351.i = phi i64 [ %indvars.iv.next352.i.3, %.lr.ph.us.i ], [ %indvars.iv351.i.unr, %.lr.ph.us.i.prol.loopexit ] ; 6 uses
  %i.ea = mul i64 %indvars.iv351.i, %.0165.i
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.0168227.us.i, i64 %i.ea
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !22
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.0167.i, i64 %indvars.iv351.i
  store float %i.ec, ptr %i.ed, align 4, !tbaa !22
  %indvars.iv.next352.i = add nuw nsw i64 %indvars.iv351.i, 1 ; 2 uses
  %i.ee = mul i64 %indvars.iv.next352.i, %.0165.i
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.0168227.us.i, i64 %i.ee
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !22
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.0167.i, i64 %indvars.iv.next352.i
  store float %i.eg, ptr %i.eh, align 4, !tbaa !22
  %indvars.iv.next352.i.1 = add nuw nsw i64 %indvars.iv351.i, 2 ; 2 uses
  %i.ei = mul i64 %indvars.iv.next352.i.1, %.0165.i
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.0168227.us.i, i64 %i.ei
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !22
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.0167.i, i64 %indvars.iv.next352.i.1
  store float %i.ek, ptr %i.el, align 4, !tbaa !22
  %indvars.iv.next352.i.2 = add nuw nsw i64 %indvars.iv351.i, 3 ; 2 uses
  %i.em = mul i64 %indvars.iv.next352.i.2, %.0165.i
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.0168227.us.i, i64 %i.em
  %i.eo = load float, ptr %i.en, align 4, !tbaa !22
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.0167.i, i64 %indvars.iv.next352.i.2
  store float %i.eo, ptr %i.ep, align 4, !tbaa !22
  %indvars.iv.next352.i.3 = add nuw nsw i64 %indvars.iv351.i, 4 ; 2 uses
  %exitcond355.not.i.3 = icmp eq i64 %indvars.iv.next352.i.3, %wide.trip.count354.i
  br i1 %exitcond355.not.i.3, label %.lr.ph217.us.i, label %.lr.ph.us.i, !llvm.loop !976

.lr.ph217.us.i:                                   ; preds = %.lr.ph.us.i.prol.loopexit, %.lr.ph.us.i, %middle.block91, %.lr.ph228.split.us.split.i
  %.0151.us.i = phi ptr [ %.0168227.us.i, %.lr.ph228.split.us.split.i ], [ %.0167.i, %middle.block91 ], [ %.0167.i, %.lr.ph.us.i ], [ %.0167.i, %.lr.ph.us.i.prol.loopexit ] ; 6 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.0151.us.i, i64 %i.x
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.us.i, %.lr.ph217.us.i
  %indvars.iv362.i = phi i64 [ %indvars.iv.next363.i, %._crit_edge.us.i ], [ 0, %.lr.ph217.us.i ] ; 3 uses
  %.0164215.us230.i = phi ptr [ %i.gq, %._crit_edge.us.i ], [ %2, %.lr.ph217.us.i ] ; 7 uses
  br i1 %.not186.i, label %.lr.ph207.us.i.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.i, i64 %indvars.iv362.i
  %i.es = load double, ptr %i.er, align 8, !tbaa !29
  %i.et = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.es, i64 0
  br label %.lr.ph207.us.i.preheader

.lr.ph207.us.i.preheader:                         ; preds = %bb.g, %bb.f
end_hunk_3
begin_hunk_4_@_ZN2cv12cpu_baselineL16GEMMBlockMul_32fEPKfmS2_mPdmNS_5Size_IiEES5_i:bb.a
  %i.ie = mul i64 %indvars.iv.next.i.1, %.0165.i
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %.0168227.i, i64 %i.ie
  %i.ig = load float, ptr %i.if, align 4, !tbaa !22
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %.0167.i, i64 %indvars.iv.next.i.1
  store float %i.ig, ptr %i.ih, align 4, !tbaa !22
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.ii = mul i64 %indvars.iv.next.i.2, %.0165.i
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %.0168227.i, i64 %i.ii
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !22
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %.0167.i, i64 %indvars.iv.next.i.2
  store float %i.ik, ptr %i.il, align 4, !tbaa !22
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %..loopexit199_crit_edge.i, label %scalar.ph, !llvm.loop !981

..loopexit199_crit_edge.i:                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.im = add nuw nsw i32 %.0176226.i, 1          ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %.0168227.i, i64 %.0166.i
  %exitcond350.not.i = icmp eq i32 %i.im, %.sroa.3.0.extract.trunc.i
  br i1 %exitcond350.not.i, label %.loopexit196.i, label %.preheader198.i, !llvm.loop !969

bb.h:                                             ; preds = %._crit_edge305.i, %.lr.ph314.i
  %.1169313.i = phi ptr [ %0, %.lr.ph314.i ], [ %i.mx, %._crit_edge305.i ] ; 8 uses
  %.1177312.i = phi i32 [ 0, %.lr.ph314.i ], [ %i.mw, %._crit_edge305.i ]
  %.1179309.i = phi ptr [ %4, %.lr.ph314.i ], [ %i.my, %._crit_edge305.i ] ; 7 uses
  %.1169313.mux.i = select i1 %.not181.i, ptr %.1169313.i, ptr %.0167.i
  br i1 %brmerge321.i, label %.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.h
  br i1 %or.cond133, label %vector.body124, label %.lr.ph.i.preheader135

vector.body124:                                   ; preds = %.lr.ph.i.preheader, %vector.body124
  %index125 = phi i64 [ %index.next128, %vector.body124 ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %.1169313.i, i64 %index125 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %wide.load126 = load <4 x float>, ptr %i.io, align 4, !tbaa !22
  %wide.load127 = load <4 x float>, ptr %i.ip, align 4, !tbaa !22
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.0167.i, i64 %index125 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  store <4 x float> %wide.load126, ptr %i.iq, align 4, !tbaa !22
  store <4 x float> %wide.load127, ptr %i.ir, align 4, !tbaa !22
  %index.next128 = add nuw i64 %index125, 8       ; 2 uses
  %i.is = icmp eq i64 %index.next128, %n.vec123
  br i1 %i.is, label %middle.block129, label %vector.body124, !llvm.loop !982

middle.block129:                                  ; preds = %vector.body124
  br i1 %cmp.n130, label %.loopexit.i, label %.lr.ph.i.preheader135

.lr.ph.i.preheader135:                            ; preds = %.lr.ph.i.preheader, %middle.block129
  %indvars.iv434.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec123, %middle.block129 ] ; 3 uses
  %i.it = sub nsw i64 %i.hi, %indvars.iv434.i.ph
  br i1 %lcmp.mod184.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader135, %.lr.ph.i.prol
  %indvars.iv434.i.prol = phi i64 [ %indvars.iv.next435.i.prol, %.lr.ph.i.prol ], [ %indvars.iv434.i.ph, %.lr.ph.i.preheader135 ] ; 3 uses
  %prol.iter185 = phi i64 [ %prol.iter185.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader135 ]
  %i.iu = mul i64 %indvars.iv434.i.prol, %.0165.i
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %.1169313.i, i64 %i.iu
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !22
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %.0167.i, i64 %indvars.iv434.i.prol
  store float %i.iw, ptr %i.ix, align 4, !tbaa !22
  %indvars.iv.next435.i.prol = add nuw nsw i64 %indvars.iv434.i.prol, 1 ; 2 uses
  %prol.iter185.next = add i64 %prol.iter185, 1   ; 2 uses
  %prol.iter185.cmp.not = icmp eq i64 %prol.iter185.next, %xtraiter183
  br i1 %prol.iter185.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !983

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader135
  %indvars.iv434.i.unr = phi i64 [ %indvars.iv434.i.ph, %.lr.ph.i.preheader135 ], [ %indvars.iv.next435.i.prol, %.lr.ph.i.prol ]
  %i.iy = icmp ult i64 %i.it, 3
  br i1 %i.iy, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv434.i = phi i64 [ %indvars.iv.next435.i.3, %.lr.ph.i ], [ %indvars.iv434.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.iz = mul i64 %indvars.iv434.i, %.0165.i
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.1169313.i, i64 %i.iz
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !22
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %.0167.i, i64 %indvars.iv434.i
  store float %i.jb, ptr %i.jc, align 4, !tbaa !22
  %indvars.iv.next435.i = add nuw nsw i64 %indvars.iv434.i, 1 ; 2 uses
  %i.jd = mul i64 %indvars.iv.next435.i, %.0165.i
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %.1169313.i, i64 %i.jd
  %i.jf = load float, ptr %i.je, align 4, !tbaa !22
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %.0167.i, i64 %indvars.iv.next435.i
  store float %i.jf, ptr %i.jg, align 4, !tbaa !22
  %indvars.iv.next435.i.1 = add nuw nsw i64 %indvars.iv434.i, 2 ; 2 uses
  %i.jh = mul i64 %indvars.iv.next435.i.1, %.0165.i
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %.1169313.i, i64 %i.jh
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !22
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %.0167.i, i64 %indvars.iv.next435.i.1
  store float %i.jj, ptr %i.jk, align 4, !tbaa !22
  %indvars.iv.next435.i.2 = add nuw nsw i64 %indvars.iv434.i, 3 ; 2 uses
  %i.jl = mul i64 %indvars.iv.next435.i.2, %.0165.i
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %.1169313.i, i64 %i.jl
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !22
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %.0167.i, i64 %indvars.iv.next435.i.2
  store float %i.jn, ptr %i.jo, align 4, !tbaa !22
  %indvars.iv.next435.i.3 = add nuw nsw i64 %indvars.iv434.i, 4 ; 2 uses
  %exitcond438.not.i.3 = icmp eq i64 %indvars.iv.next435.i.3, %wide.trip.count437.i
  br i1 %exitcond438.not.i.3, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !984

.loopexit.i:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block129, %bb.h
  %.1.i = phi ptr [ %.1169313.mux.i, %bb.h ], [ %.0167.i, %middle.block129 ], [ %.0167.i, %.lr.ph.i ], [ %.0167.i, %.lr.ph.i.prol.loopexit ] ; 6 uses
  br i1 %.not182284.i, label %.preheader.i, label %.lr.ph287.i

.lr.ph287.i:                                      ; preds = %.loopexit.i
  br i1 %i.gx, label %.lr.ph287.split.us.i, label %.lr.ph287.split.i

.lr.ph287.split.us.i:                             ; preds = %.lr.ph287.i, %._crit_edge.us289.i
  %indvars.iv450.i = phi i64 [ %indvars.iv.next451.i, %._crit_edge.us289.i ], [ 0, %.lr.ph287.i ] ; 4 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv450.i ; 2 uses
  br i1 %.not184.i, label %.lr.ph280.us.i.preheader, label %bb.i

bb.i:                                             ; preds = %.lr.ph287.split.us.i
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %.1179309.i, i64 %indvars.iv450.i ; 2 uses
  %i.jr = load <2 x double>, ptr %i.jq, align 8, !tbaa !29
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %i.jt = load <2 x double>, ptr %i.js, align 8, !tbaa !29
  br label %.lr.ph280.us.i.preheader

.lr.ph280.us.i.preheader:                         ; preds = %bb.i, %.lr.ph287.split.us.i
  %.ph = phi <2 x double> [ zeroinitializer, %.lr.ph287.split.us.i ], [ %i.jr, %bb.i ] ; 2 uses
  %.ph134 = phi <2 x double> [ zeroinitializer, %.lr.ph287.split.us.i ], [ %i.jt, %bb.i ] ; 2 uses
  br i1 %i.hj, label %.lr.ph280.us.i.epil.preheader, label %.lr.ph280.us.i

.lr.ph280.us.i:                                   ; preds = %.lr.ph280.us.i.preheader, %.lr.ph280.us.i
  %indvars.iv445.i = phi i64 [ %indvars.iv.next446.i.1, %.lr.ph280.us.i ], [ 0, %.lr.ph280.us.i.preheader ] ; 3 uses
  %.0152279.us.i = phi ptr [ %i.kw, %.lr.ph280.us.i ], [ %i.jp, %.lr.ph280.us.i.preheader ] ; 3 uses
  %i.ju = phi <2 x double> [ %i.kr, %.lr.ph280.us.i ], [ %.ph, %.lr.ph280.us.i.preheader ]
  %i.jv = phi <2 x double> [ %i.kv, %.lr.ph280.us.i ], [ %.ph134, %.lr.ph280.us.i.preheader ]
  %niter197 = phi i64 [ %niter197.next.1, %.lr.ph280.us.i ], [ 0, %.lr.ph280.us.i.preheader ]
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %.1.i, i64 %indvars.iv445.i
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !22
  %i.jy = fpext float %i.jx to double
  %i.jz = load <2 x float>, ptr %.0152279.us.i, align 4, !tbaa !22
  %i.ka = fpext <2 x float> %i.jz to <2 x double>
  %i.kb = insertelement <2 x double> poison, double %i.jy, i64 0
  %i.kc = shufflevector <2 x double> %i.kb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kc, <2 x double> %i.ka, <2 x double> %i.ju)
  %i.ke = getelementptr inbounds nuw i8, ptr %.0152279.us.i, i64 8
  %i.kf = load <2 x float>, ptr %i.ke, align 4, !tbaa !22
  %i.kg = fpext <2 x float> %i.kf to <2 x double>
  %i.kh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kc, <2 x double> %i.kg, <2 x double> %i.jv)
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %.0152279.us.i, i64 %i.e ; 3 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %.1.i, i64 %indvars.iv445.i
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !22
  %i.km = fpext float %i.kl to double
  %i.kn = load <2 x float>, ptr %i.ki, align 4, !tbaa !22
  %i.ko = fpext <2 x float> %i.kn to <2 x double>
  %i.kp = insertelement <2 x double> poison, double %i.km, i64 0
  %i.kq = shufflevector <2 x double> %i.kp, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kq, <2 x double> %i.ko, <2 x double> %i.kd) ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kt = load <2 x float>, ptr %i.ks, align 4, !tbaa !22
  %i.ku = fpext <2 x float> %i.kt to <2 x double>
  %i.kv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kq, <2 x double> %i.ku, <2 x double> %i.kh) ; 3 uses
  %indvars.iv.next446.i.1 = add nuw nsw i64 %indvars.iv445.i, 2 ; 2 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %i.e ; 2 uses
  %niter197.next.1 = add i64 %niter197, 2         ; 2 uses
  %niter197.ncmp.1 = icmp eq i64 %niter197.next.1, %unroll_iter196
  br i1 %niter197.ncmp.1, label %._crit_edge.us289.i.unr-lcssa, label %.lr.ph280.us.i, !llvm.loop !985

._crit_edge.us289.i.unr-lcssa:                    ; preds = %.lr.ph280.us.i
  br i1 %lcmp.mod192.not, label %._crit_edge.us289.i, label %.lr.ph280.us.i.epil.preheader

.lr.ph280.us.i.epil.preheader:                    ; preds = %._crit_edge.us289.i.unr-lcssa, %.lr.ph280.us.i.preheader
  %indvars.iv445.i.epil.init = phi i64 [ 0, %.lr.ph280.us.i.preheader ], [ %indvars.iv.next446.i.1, %._crit_edge.us289.i.unr-lcssa ]
  %.0152279.us.i.epil.init = phi ptr [ %i.jp, %.lr.ph280.us.i.preheader ], [ %i.kw, %._crit_edge.us289.i.unr-lcssa ] ; 2 uses
  %.epil.init189 = phi <2 x double> [ %.ph, %.lr.ph280.us.i.preheader ], [ %i.kr, %._crit_edge.us289.i.unr-lcssa ]
  %.epil.init191 = phi <2 x double> [ %.ph134, %.lr.ph280.us.i.preheader ], [ %i.kv, %._crit_edge.us289.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod195)
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %.1.i, i64 %indvars.iv445.i.epil.init
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !22
  %i.kz = fpext float %i.ky to double
  %i.la = load <2 x float>, ptr %.0152279.us.i.epil.init, align 4, !tbaa !22
  %i.lb = fpext <2 x float> %i.la to <2 x double>
  %i.lc = insertelement <2 x double> poison, double %i.kz, i64 0
  %i.ld = shufflevector <2 x double> %i.lc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.le = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ld, <2 x double> %i.lb, <2 x double> %.epil.init189)
  %i.lf = getelementptr inbounds nuw i8, ptr %.0152279.us.i.epil.init, i64 8
  %i.lg = load <2 x float>, ptr %i.lf, align 4, !tbaa !22
  %i.lh = fpext <2 x float> %i.lg to <2 x double>
  %i.li = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ld, <2 x double> %i.lh, <2 x double> %.epil.init191)
  br label %._crit_edge.us289.i

._crit_edge.us289.i:                              ; preds = %._crit_edge.us289.i.unr-lcssa, %.lr.ph280.us.i.epil.preheader
  %.lcssa136 = phi <2 x double> [ %i.kr, %._crit_edge.us289.i.unr-lcssa ], [ %i.le, %.lr.ph280.us.i.epil.preheader ]
  %.lcssa = phi <2 x double> [ %i.kv, %._crit_edge.us289.i.unr-lcssa ], [ %i.li, %.lr.ph280.us.i.epil.preheader ]
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %.1179309.i, i64 %indvars.iv450.i ; 2 uses
  store <2 x double> %.lcssa136, ptr %i.lj, align 8, !tbaa !29
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  store <2 x double> %.lcssa, ptr %i.lk, align 8, !tbaa !29
  %indvars.iv.next451.i = add nuw nsw i64 %indvars.iv450.i, 4 ; 3 uses
  %.not182.us.i = icmp sgt i64 %indvars.iv.next451.i, %i.gy
  br i1 %.not182.us.i, label %.preheader.loopexit.i, label %.lr.ph287.split.us.i, !llvm.loop !986

.lr.ph287.split.i:                                ; preds = %.lr.ph287.i
  br i1 %.not184.i, label %.lr.ph287.split.split.us.preheader.i, label %.preheader.i

.lr.ph287.split.split.us.preheader.i:             ; preds = %.lr.ph287.split.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.1179309.i, i8 0, i64 %i.hc, i1 false), !tbaa !29
  br label %.preheader.i

.preheader.loopexit.i:                            ; preds = %._crit_edge.us289.i
  %i.ll = trunc nuw nsw i64 %indvars.iv.next451.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph287.split.i, %.preheader.loopexit.i, %.lr.ph287.split.split.us.preheader.i, %.loopexit.i
  %.1174.lcssa.i = phi i32 [ 0, %.loopexit.i ], [ %i.he, %.lr.ph287.split.split.us.preheader.i ], [ %i.ll, %.preheader.loopexit.i ], [ %i.hh, %.lr.ph287.split.i ] ; 4 uses
  %i.lm = icmp slt i32 %.1174.lcssa.i, %.sroa.0.0.extract.trunc.i
  br i1 %i.lm, label %.lr.ph304.i, label %._crit_edge305.i

.lr.ph304.i:                                      ; preds = %.preheader.i
  br i1 %i.gx, label %.lr.ph304.split.us.preheader.i, label %.lr.ph304.split.i

.lr.ph304.split.us.preheader.i:                   ; preds = %.lr.ph304.i
  %i.ln = zext i32 %.1174.lcssa.i to i64
  br label %.lr.ph304.split.us.i

.lr.ph304.split.us.i:                             ; preds = %._crit_edge.us306.i, %.lr.ph304.split.us.preheader.i
  %indvars.iv461.i = phi i64 [ %i.ln, %.lr.ph304.split.us.preheader.i ], [ %indvars.iv.next462.i, %._crit_edge.us306.i ] ; 4 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv461.i ; 2 uses
  br i1 %.not184.i, label %.lr.ph302.us.i.preheader, label %bb.j

bb.j:                                             ; preds = %.lr.ph304.split.us.i
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %.1179309.i, i64 %indvars.iv461.i
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !29
  br label %.lr.ph302.us.i.preheader

.lr.ph302.us.i.preheader:                         ; preds = %bb.j, %.lr.ph304.split.us.i
  %.0301.us.i.ph = phi double [ 0.000000e+00, %.lr.ph304.split.us.i ], [ %i.lq, %bb.j ] ; 2 uses
  br i1 %i.hk, label %.lr.ph302.us.i.epil.preheader, label %.lr.ph302.us.i

.lr.ph302.us.i:                                   ; preds = %.lr.ph302.us.i.preheader, %.lr.ph302.us.i
  %indvars.iv456.i = phi i64 [ %indvars.iv.next457.i.1, %.lr.ph302.us.i ], [ 0, %.lr.ph302.us.i.preheader ] ; 3 uses
  %.0301.us.i = phi double [ %i.me, %.lr.ph302.us.i ], [ %.0301.us.i.ph, %.lr.ph302.us.i.preheader ]
  %.0150300.us.i = phi ptr [ %i.mf, %.lr.ph302.us.i ], [ %i.lo, %.lr.ph302.us.i.preheader ] ; 2 uses
  %niter204 = phi i64 [ %niter204.next.1, %.lr.ph302.us.i ], [ 0, %.lr.ph302.us.i.preheader ]
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %.1.i, i64 %indvars.iv456.i
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !22
  %i.lt = fpext float %i.ls to double
  %i.lu = load float, ptr %.0150300.us.i, align 4, !tbaa !22
  %i.lv = fpext float %i.lu to double
  %i.lw = call double @llvm.fmuladd.f64(double %i.lt, double %i.lv, double %.0301.us.i)
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %.0150300.us.i, i64 %i.e ; 2 uses
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %.1.i, i64 %indvars.iv456.i
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 4
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !22
  %i.mb = fpext float %i.ma to double
  %i.mc = load float, ptr %i.lx, align 4, !tbaa !22
  %i.md = fpext float %i.mc to double
  %i.me = call double @llvm.fmuladd.f64(double %i.mb, double %i.md, double %i.lw) ; 3 uses
  %indvars.iv.next457.i.1 = add nuw nsw i64 %indvars.iv456.i, 2 ; 2 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.e ; 2 uses
  %niter204.next.1 = add i64 %niter204, 2         ; 2 uses
  %niter204.ncmp.1 = icmp eq i64 %niter204.next.1, %unroll_iter203
  br i1 %niter204.ncmp.1, label %._crit_edge.us306.i.unr-lcssa, label %.lr.ph302.us.i, !llvm.loop !987

._crit_edge.us306.i.unr-lcssa:                    ; preds = %.lr.ph302.us.i
  br i1 %lcmp.mod200.not, label %._crit_edge.us306.i, label %.lr.ph302.us.i.epil.preheader

.lr.ph302.us.i.epil.preheader:                    ; preds = %._crit_edge.us306.i.unr-lcssa, %.lr.ph302.us.i.preheader
  %indvars.iv456.i.epil.init = phi i64 [ 0, %.lr.ph302.us.i.preheader ], [ %indvars.iv.next457.i.1, %._crit_edge.us306.i.unr-lcssa ]
  %.0301.us.i.epil.init = phi double [ %.0301.us.i.ph, %.lr.ph302.us.i.preheader ], [ %i.me, %._crit_edge.us306.i.unr-lcssa ]
  %.0150300.us.i.epil.init = phi ptr [ %i.lo, %.lr.ph302.us.i.preheader ], [ %i.mf, %._crit_edge.us306.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod202)
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %.1.i, i64 %indvars.iv456.i.epil.init
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !22
  %i.mi = fpext float %i.mh to double
  %i.mj = load float, ptr %.0150300.us.i.epil.init, align 4, !tbaa !22
  %i.mk = fpext float %i.mj to double
  %i.ml = call double @llvm.fmuladd.f64(double %i.mi, double %i.mk, double %.0301.us.i.epil.init)
  br label %._crit_edge.us306.i

._crit_edge.us306.i:                              ; preds = %._crit_edge.us306.i.unr-lcssa, %.lr.ph302.us.i.epil.preheader
  %.lcssa137 = phi double [ %i.me, %._crit_edge.us306.i.unr-lcssa ], [ %i.ml, %.lr.ph302.us.i.epil.preheader ]
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %.1179309.i, i64 %indvars.iv461.i
  store double %.lcssa137, ptr %i.mm, align 8, !tbaa !29
  %indvars.iv.next462.i = add nuw nsw i64 %indvars.iv461.i, 1 ; 2 uses
  %i.mn = trunc nuw i64 %indvars.iv.next462.i to i32
  %i.mo = icmp slt i32 %i.mn, %.sroa.0.0.extract.trunc.i
  br i1 %i.mo, label %.lr.ph304.split.us.i, label %._crit_edge305.i, !llvm.loop !988

.lr.ph304.split.i:                                ; preds = %.lr.ph304.i
  br i1 %.not184.i, label %.lr.ph304.split.split.us.preheader.i, label %._crit_edge305.i

.lr.ph304.split.split.us.preheader.i:             ; preds = %.lr.ph304.split.i
  %i.mp = zext i32 %.1174.lcssa.i to i64
  %i.mq = shl nuw nsw i64 %i.mp, 3
  %scevgep.i = getelementptr i8, ptr %.1179309.i, i64 %i.mq
  %i.mr = xor i32 %.1174.lcssa.i, -1
  %i.ms = add i32 %i.mr, %.sroa.0.0.extract.trunc.i
  %i.mt = zext i32 %i.ms to i64
  %i.mu = shl nuw nsw i64 %i.mt, 3
  %i.mv = add nuw nsw i64 %i.mu, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.mv, i1 false), !tbaa !29
  br label %._crit_edge305.i

._crit_edge305.i:                                 ; preds = %._crit_edge.us306.i, %.lr.ph304.split.split.us.preheader.i, %.lr.ph304.split.i, %.preheader.i
  %i.mw = add nuw nsw i32 %.1177312.i, 1          ; 2 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %.1169313.i, i64 %.0166.i
  %i.my = getelementptr [8 x i8], ptr %.1179309.i, i64 %i.f
  %exitcond464.not.i = icmp eq i32 %i.mw, %.sroa.3.0.extract.trunc.i
  br i1 %exitcond464.not.i, label %.loopexit196.i, label %bb.h, !llvm.loop !989

.loopexit196.i.loopexit140.unr-lcssa:             ; preds = %.lr.ph217.us.us.us249.us.i
  %lcmp.mod167.not = icmp eq i32 %xtraiter165, 0
  br i1 %lcmp.mod167.not, label %.loopexit196.i, label %.lr.ph217.us.us.us249.us.i.epil.preheader

.lr.ph217.us.us.us249.us.i.epil.preheader:        ; preds = %.loopexit196.i.loopexit140.unr-lcssa, %.lr.ph217.us.us.us249.us.i.preheader
  %.0178222.us.us.us243.us.i.epil.init = phi ptr [ %4, %.lr.ph217.us.us.us249.us.i.preheader ], [ %i.cm, %.loopexit196.i.loopexit140.unr-lcssa ]
  %lcmp.mod168 = icmp ne i32 %xtraiter165, 0
  call void @llvm.assume(i1 %lcmp.mod168)
  br label %.lr.ph217.us.us.us249.us.i.epil

.lr.ph217.us.us.us249.us.i.epil:                  ; preds = %.lr.ph217.us.us.us249.us.i.epil, %.lr.ph217.us.us.us249.us.i.epil.preheader
  %.0178222.us.us.us243.us.i.epil = phi ptr [ %i.mz, %.lr.ph217.us.us.us249.us.i.epil ], [ %.0178222.us.us.us243.us.i.epil.init, %.lr.ph217.us.us.us249.us.i.epil.preheader ] ; 2 uses
  %epil.iter166 = phi i32 [ %epil.iter166.next, %.lr.ph217.us.us.us249.us.i.epil ], [ 0, %.lr.ph217.us.us.us249.us.i.epil.preheader ]
  call void @llvm.memset.p0.i64(ptr align 8 %.0178222.us.us.us243.us.i.epil, i8 0, i64 %i.cc, i1 false), !tbaa !29
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.us.us243.us.i.epil, i64 %i.f
  %epil.iter166.next = add i32 %epil.iter166, 1   ; 2 uses
  %epil.iter166.cmp.not = icmp eq i32 %epil.iter166.next, %xtraiter165
  br i1 %epil.iter166.cmp.not, label %.loopexit196.i, label %.lr.ph217.us.us.us249.us.i.epil, !llvm.loop !990

.loopexit196.i.loopexit141.unr-lcssa:             ; preds = %.preheader198.us.us.us244.i
  %lcmp.mod161.not = icmp eq i32 %xtraiter160, 0
  br i1 %lcmp.mod161.not, label %.loopexit196.i, label %.preheader198.us.us.us244.i.epil.preheader

.preheader198.us.us.us244.i.epil.preheader:       ; preds = %.loopexit196.i.loopexit141.unr-lcssa, %.preheader198.us.us.us244.i.preheader
  %.0178222.us.us.us243.i.epil.init = phi ptr [ %4, %.preheader198.us.us.us244.i.preheader ], [ %i.cu, %.loopexit196.i.loopexit141.unr-lcssa ]
  %lcmp.mod162 = icmp ne i32 %xtraiter160, 0
  call void @llvm.assume(i1 %lcmp.mod162)
  br label %.preheader198.us.us.us244.i.epil

.preheader198.us.us.us244.i.epil:                 ; preds = %.preheader198.us.us.us244.i.epil, %.preheader198.us.us.us244.i.epil.preheader
  %.0178222.us.us.us243.i.epil = phi ptr [ %i.na, %.preheader198.us.us.us244.i.epil ], [ %.0178222.us.us.us243.i.epil.init, %.preheader198.us.us.us244.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.preheader198.us.us.us244.i.epil ], [ 0, %.preheader198.us.us.us244.i.epil.preheader ]
  call void @llvm.memset.p0.i64(ptr align 8 %.0178222.us.us.us243.i.epil, i8 0, i64 %i.cc, i1 false), !tbaa !29
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.us.us243.i.epil, i64 %i.f
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter160
  br i1 %epil.iter.cmp.not, label %.loopexit196.i, label %.preheader198.us.us.us244.i.epil, !llvm.loop !991

.loopexit196.i:                                   ; preds = %..loopexit199_crit_edge.i, %._crit_edge218.split.us232.i, %._crit_edge218.split.us.split.split.us238.us.i, %._crit_edge218.split.us.split.split.us238.us.us.i, %.loopexit196.i.loopexit141.unr-lcssa, %.preheader198.us.us.us244.i.epil, %.loopexit196.i.loopexit140.unr-lcssa, %.lr.ph217.us.us.us249.us.i.epil, %._crit_edge218.split.us.split.us.us.us.us.i.loopexit9, %._crit_edge218.split.us.split.us.us.us.us.i.loopexit.us, %._crit_edge305.i, %.preheader195.i, %.lr.ph228.split.i, %.preheader200.i
  %.not.i.i190.i = icmp eq ptr %i.p, %i.a
  br i1 %.not.i.i190.i, label %_ZN2cv12cpu_baselineL12GEMMBlockMulIfdEEvPKT_mS4_mPT0_mNS_5Size_IiEES8_i.exit, label %bb.k

bb.k:                                             ; preds = %.loopexit196.i
  call void @_ZdaPv(ptr noundef nonnull %i.p) #27
  br label %_ZN2cv12cpu_baselineL12GEMMBlockMulIfdEEvPKT_mS4_mPT0_mNS_5Size_IiEES8_i.exit

_ZN2cv12cpu_baselineL12GEMMBlockMulIfdEEvPKT_mS4_mPT0_mNS_5Size_IiEES8_i.exit: ; preds = %.loopexit196.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv12cpu_baselineL13GEMMStore_32fEPKfmPKdmPfmNS_5Size_IiEEddi(ptr nofree noundef readonly captures(address) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 %6, double noundef %7, double noundef %8, i32 noundef %9) unnamed_addr #7 {
bb.a:
  %.fr.i = freeze i64 %6                          ; 7 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %.fr.i, 32 ; 2 uses
  %i.a = lshr i64 %1, 2                           ; 2 uses
  %i.b = lshr i64 %3, 3
  %i.c = lshr i64 %5, 2
  %.not.i = icmp eq ptr %0, null                  ; 2 uses
  %i.d = and i32 %9, 4
  %.not41.i = icmp eq i32 %i.d, 0                 ; 2 uses
  %..i = select i1 %.not41.i, i64 %i.a, i64 1
  %.44.i = select i1 %.not41.i, i64 1, i64 %i.a
  %.035.i = select i1 %.not.i, i64 0, i64 %..i
  %.0.i = select i1 %.not.i, i64 0, i64 %.44.i    ; 2 uses
  %.not4251.i = icmp ne i64 %.sroa.3.0.extract.shift.i, 0
  %.sroa.0.0.extract.trunc.i = trunc i64 %.fr.i to i32
  %i.e = icmp sgt i32 %.sroa.0.0.extract.trunc.i, 0
  %or.cond.i = and i1 %.not4251.i, %i.e
  br i1 %or.cond.i, label %.lr.ph58.split.us.split.us.preheader.i, label %_ZN2cv12cpu_baselineL9GEMMStoreIfdEEvPKT_mPKT0_mPS2_mNS_5Size_IiEEddi.exit

.lr.ph58.split.us.split.us.preheader.i:           ; preds = %bb.a
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32
  %wide.trip.count85.i = and i64 %.fr.i, 2147483647 ; 4 uses
  %xtraiter = and i64 %.fr.i, 1
  %i.f = icmp eq i64 %wide.trip.count85.i, 1
  %unroll_iter = and i64 %.fr.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod16 = trunc i64 %.fr.i to i1
  %min.iters.check = icmp samesign ult i64 %wide.trip.count85.i, 4
  %n.vec = and i64 %.fr.i, 2147483644             ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %7, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %wide.trip.count85.i, %n.vec
  br label %.lr.ph58.split.us.split.us.i

.lr.ph58.split.us.split.us.i:                     ; preds = %..loopexit46_crit_edge.us.us.i, %.lr.ph58.split.us.split.us.preheader.i
  %.in.i = phi i32 [ %i.g, %..loopexit46_crit_edge.us.us.i ], [ %.sroa.3.0.extract.trunc.i, %.lr.ph58.split.us.split.us.preheader.i ]
  %.03756.us.us.i = phi ptr [ %i.av, %..loopexit46_crit_edge.us.us.i ], [ %0, %.lr.ph58.split.us.split.us.preheader.i ] ; 4 uses
  %.03954.us.us.i = phi ptr [ %i.aw, %..loopexit46_crit_edge.us.us.i ], [ %2, %.lr.ph58.split.us.split.us.preheader.i ] ; 6 uses
  %.04052.us.us.i = phi ptr [ %i.ax, %..loopexit46_crit_edge.us.us.i ], [ %4, %.lr.ph58.split.us.split.us.preheader.i ] ; 6 uses
  %i.g = add nsw i32 %.in.i, -1                   ; 2 uses
  %.not43.us.us.i = icmp eq ptr %.03756.us.us.i, null
  br i1 %.not43.us.us.i, label %.preheader.us.us.i.preheader, label %.preheader45.us.us.i.preheader

.preheader45.us.us.i.preheader:                   ; preds = %.lr.ph58.split.us.split.us.i
  br i1 %i.f, label %.preheader45.us.us.i.epil.preheader, label %.preheader45.us.us.i

.preheader.us.us.i.preheader:                     ; preds = %.lr.ph58.split.us.split.us.i
  br i1 %min.iters.check, label %.preheader.us.us.i.preheader14, label %vector.body

vector.body:                                      ; preds = %.preheader.us.us.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.us.i.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %.03954.us.us.i, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load = load <2 x double>, ptr %i.h, align 8, !tbaa !29
  %wide.load13 = load <2 x double>, ptr %i.i, align 8, !tbaa !29
  %i.j = fmul <2 x double> %broadcast.splat, %wide.load
  %i.k = fmul <2 x double> %broadcast.splat, %wide.load13
  %i.l = fptrunc <2 x double> %i.j to <2 x float>
  %i.m = fptrunc <2 x double> %i.k to <2 x float>
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.us.i, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store <2 x float> %i.l, ptr %i.n, align 4, !tbaa !22
  store <2 x float> %i.m, ptr %i.o, align 4, !tbaa !22
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !992

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit46_crit_edge.us.us.i, label %.preheader.us.us.i.preheader14

.preheader.us.us.i.preheader14:                   ; preds = %.preheader.us.us.i.preheader, %middle.block
  %indvars.iv87.i.ph = phi i64 [ 0, %.preheader.us.us.i.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader.us.us.i

.preheader45.us.us.i:                             ; preds = %.preheader45.us.us.i.preheader, %.preheader45.us.us.i
  %indvars.iv82.i = phi i64 [ %indvars.iv.next83.i.1, %.preheader45.us.us.i ], [ 0, %.preheader45.us.us.i.preheader ] ; 4 uses
  %.03847.us.us.i = phi ptr [ %i.ah, %.preheader45.us.us.i ], [ %.03756.us.us.i, %.preheader45.us.us.i.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.preheader45.us.us.i ], [ 0, %.preheader45.us.us.i.preheader ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.03954.us.us.i, i64 %indvars.iv82.i
  %i.r = load double, ptr %i.q, align 8, !tbaa !29
  %i.s = fmul double %7, %i.r
  %i.t = load float, ptr %.03847.us.us.i, align 4, !tbaa !22
  %i.u = fpext float %i.t to double
  %i.v = tail call double @llvm.fmuladd.f64(double %i.u, double %8, double %i.s)
  %i.w = fptrunc double %i.v to float
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.us.i, i64 %indvars.iv82.i
  store float %i.w, ptr %i.x, align 4, !tbaa !22
  %indvars.iv.next83.i = or disjoint i64 %indvars.iv82.i, 1 ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.03847.us.us.i, i64 %.0.i ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.03954.us.us.i, i64 %indvars.iv.next83.i
  %i.aa = load double, ptr %i.z, align 8, !tbaa !29
  %i.ab = fmul double %7, %i.aa
  %i.ac = load float, ptr %i.y, align 4, !tbaa !22
  %i.ad = fpext float %i.ac to double
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.ad, double %8, double %i.ab)
  %i.af = fptrunc double %i.ae to float
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.us.i, i64 %indvars.iv.next83.i
  store float %i.af, ptr %i.ag, align 4, !tbaa !22
  %indvars.iv.next83.i.1 = add nuw nsw i64 %indvars.iv82.i, 2 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.0.i ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit46_crit_edge.us.us.i.loopexit15.unr-lcssa, label %.preheader45.us.us.i, !llvm.loop !993

.preheader.us.us.i:                               ; preds = %.preheader.us.us.i.preheader14, %.preheader.us.us.i
  %indvars.iv87.i = phi i64 [ %indvars.iv.next88.i, %.preheader.us.us.i ], [ %indvars.iv87.i.ph, %.preheader.us.us.i.preheader14 ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.03954.us.us.i, i64 %indvars.iv87.i
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !29
  %i.ak = fmul double %7, %i.aj
  %i.al = fptrunc double %i.ak to float
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.us.i, i64 %indvars.iv87.i
  store float %i.al, ptr %i.am, align 4, !tbaa !22
  %indvars.iv.next88.i = add nuw nsw i64 %indvars.iv87.i, 1 ; 2 uses
  %exitcond91.not.i = icmp eq i64 %indvars.iv.next88.i, %wide.trip.count85.i
  br i1 %exitcond91.not.i, label %..loopexit46_crit_edge.us.us.i, label %.preheader.us.us.i, !llvm.loop !994

..loopexit46_crit_edge.us.us.i.loopexit15.unr-lcssa: ; preds = %.preheader45.us.us.i
  br i1 %lcmp.mod.not, label %..loopexit46_crit_edge.us.us.i, label %.preheader45.us.us.i.epil.preheader

.preheader45.us.us.i.epil.preheader:              ; preds = %..loopexit46_crit_edge.us.us.i.loopexit15.unr-lcssa, %.preheader45.us.us.i.preheader
  %indvars.iv82.i.epil.init = phi i64 [ 0, %.preheader45.us.us.i.preheader ], [ %indvars.iv.next83.i.1, %..loopexit46_crit_edge.us.us.i.loopexit15.unr-lcssa ] ; 2 uses
  %.03847.us.us.i.epil.init = phi ptr [ %.03756.us.us.i, %.preheader45.us.us.i.preheader ], [ %i.ah, %..loopexit46_crit_edge.us.us.i.loopexit15.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod16)
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.03954.us.us.i, i64 %indvars.iv82.i.epil.init
  %i.ao = load double, ptr %i.an, align 8, !tbaa !29
  %i.ap = fmul double %7, %i.ao
  %i.aq = load float, ptr %.03847.us.us.i.epil.init, align 4, !tbaa !22
  %i.ar = fpext float %i.aq to double
  %i.as = tail call double @llvm.fmuladd.f64(double %i.ar, double %8, double %i.ap)
  %i.at = fptrunc double %i.as to float
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.us.i, i64 %indvars.iv82.i.epil.init
  store float %i.at, ptr %i.au, align 4, !tbaa !22
  br label %..loopexit46_crit_edge.us.us.i

..loopexit46_crit_edge.us.us.i:                   ; preds = %.preheader45.us.us.i.epil.preheader, %..loopexit46_crit_edge.us.us.i.loopexit15.unr-lcssa, %.preheader.us.us.i, %middle.block
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.03756.us.us.i, i64 %.035.i
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.03954.us.us.i, i64 %i.b
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.us.i, i64 %i.c
  %.not42.us.us.i = icmp eq i32 %i.g, 0
  br i1 %.not42.us.us.i, label %_ZN2cv12cpu_baselineL9GEMMStoreIfdEEvPKT_mPKT0_mPS2_mNS_5Size_IiEEddi.exit, label %.lr.ph58.split.us.split.us.i, !llvm.loop !995

_ZN2cv12cpu_baselineL9GEMMStoreIfdEEvPKT_mPKT0_mPS2_mNS_5Size_IiEEddi.exit: ; preds = %..loopexit46_crit_edge.us.us.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv12cpu_baselineL17GEMMSingleMul_64fEPKdmS2_mS2_mPdmNS_5Size_IiEES5_ddi(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(address) %4, i64 noundef %5, ptr nofree noundef writeonly captures(none) %6, i64 noundef %7, i64 %8, i64 %9, double noundef %10, double noundef %11, i32 noundef %12) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %13 = alloca %"class.cv::AutoBuffer", align 8   ; 10 uses
  %14 = alloca %"class.cv::AutoBuffer", align 8   ; 12 uses
  %15 = alloca %"class.cv::AutoBuffer", align 8   ; 7 uses
  %.sroa.0344.0.extract.trunc.i = trunc i64 %8 to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %8, 32    ; 3 uses
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32 ; 5 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %9 to i32 ; 8 uses
  %.sroa.8.0.extract.shift.i = lshr i64 %9, 32    ; 5 uses
  %.sroa.8.0.extract.trunc.i = trunc nuw i64 %.sroa.8.0.extract.shift.i to i32 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.a = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  store ptr %i.a, ptr %13, align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  store i64 136, ptr %i.b, align 8, !tbaa !62
  %i.c = lshr i64 %1, 3                           ; 9 uses
  %i.d = lshr i64 %3, 3                           ; 14 uses
  %i.e = lshr i64 %5, 3                           ; 2 uses
  %i.f = lshr i64 %7, 3                           ; 5 uses
  %.not.i = icmp eq ptr %4, null                  ; 2 uses
  %i.g = and i32 %12, 4
  %.not401.i = icmp eq i32 %i.g, 0                ; 2 uses
  %..i = select i1 %.not401.i, i64 %i.e, i64 1
  %.421.i = select i1 %.not401.i, i64 1, i64 %i.e
  %.0357.i = select i1 %.not.i, i64 0, i64 %..i   ; 5 uses
  %.0356.i = select i1 %.not.i, i64 0, i64 %.421.i ; 18 uses
  %i.h = and i32 %12, 1
  %.not402.i = icmp eq i32 %i.h, 0
  br i1 %.not402.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %1, 15
  %i.j = icmp sgt i32 %.sroa.2.0.extract.trunc.i, 1
end_hunk_4
begin_hunk_5_@_ZN2cv12cpu_baselineL17GEMMSingleMul_64fEPKdmS2_mS2_mPdmNS_5Size_IiEES5_ddi:bb.a
  %.sink735.i = phi double [ %i.oy, %bb.ap ], [ %i.oe, %bb.ao ]
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %.2396548.i, i64 %indvars.iv652.i
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 24
  store double %.sink735.i, ptr %i.pa, align 8, !tbaa !29
  %indvars.iv.next653.i = add nuw nsw i64 %indvars.iv652.i, 4 ; 3 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.3391531.i, i64 %.idx411.i ; 2 uses
  %.not407.i = icmp sgt i64 %indvars.iv.next653.i, %i.ja
  br i1 %.not407.i, label %.preheader461.loopexit.i, label %.lr.ph534.i, !llvm.loop !1020

.lr.ph546.split.i:                                ; preds = %.lr.ph546.split.i.prol.loopexit, %bb.at
  %indvars.iv655.i = phi i64 [ %indvars.iv.next656.i.1, %bb.at ], [ %indvars.iv655.i.unr, %.lr.ph546.split.i.prol.loopexit ] ; 3 uses
  %.4392544.i = phi ptr [ %i.pk, %bb.at ], [ %.4392544.i.unr, %.lr.ph546.split.i.prol.loopexit ] ; 4 uses
  %.not408.i = icmp eq ptr %.4392544.i, null
  br i1 %.not408.i, label %.lr.ph546.split.i.1, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph546.split.i
  %i.pc = load double, ptr %.4392544.i, align 8, !tbaa !29
  %i.pd = call double @llvm.fmuladd.f64(double %i.pc, double %11, double %i.ji)
  br label %.lr.ph546.split.i.1

.lr.ph546.split.i.1:                              ; preds = %bb.ar, %.lr.ph546.split.i
  %.sink698.i = phi double [ %i.pd, %bb.ar ], [ %i.ji, %.lr.ph546.split.i ]
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %.2396548.i, i64 %indvars.iv655.i
  store double %.sink698.i, ptr %i.pe, align 8, !tbaa !29
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %.4392544.i, i64 %.0356.i ; 2 uses
  %.not408.i.1 = icmp eq ptr %.4392544.i, null
  br i1 %.not408.i.1, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph546.split.i.1
  %i.pg = load double, ptr %i.pf, align 8, !tbaa !29
  %i.ph = call double @llvm.fmuladd.f64(double %i.pg, double %11, double %i.jj)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph546.split.i.1
  %.sink698.i.1 = phi double [ %i.ph, %bb.as ], [ %i.jj, %.lr.ph546.split.i.1 ]
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %.2396548.i, i64 %indvars.iv655.i
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  store double %.sink698.i.1, ptr %i.pj, align 8, !tbaa !29
  %indvars.iv.next656.i.1 = add nuw nsw i64 %indvars.iv655.i, 2 ; 2 uses
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %.0356.i
  %exitcond659.not.i.1 = icmp eq i64 %indvars.iv.next656.i.1, %wide.trip.count658.i
  br i1 %exitcond659.not.i.1, label %._crit_edge547.i, label %.lr.ph546.split.i, !llvm.loop !1017

._crit_edge547.i:                                 ; preds = %.lr.ph546.split.i.prol.loopexit, %bb.at, %bb.am, %.preheader461.i
  %i.pl = add nuw nsw i32 %.2383550.i, 1          ; 2 uses
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %.1366551.i, i64 %.0359458.i
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %.2363552.i, i64 %.0357.i
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %.2396548.i, i64 %i.f
  %exitcond670.not.i = icmp eq i32 %i.pl, %.sroa.8.0.extract.trunc.i
  br i1 %exitcond670.not.i, label %.loopexit465.i, label %bb.aj, !llvm.loop !1021

bb.au:                                            ; preds = %bb.ai
  %i.pp = ashr exact i64 %sext.i, 32              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.pq = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  store ptr %i.pq, ptr %15, align 8, !tbaa !61
  %i.pr = getelementptr inbounds nuw i8, ptr %15, i64 8
  %.not.i.i438.i = icmp ugt i64 %i.pp, 136
  store i64 %i.pp, ptr %i.pr, align 8, !tbaa !62
  br i1 %.not.i.i438.i, label %bb.av, label %_ZN2cv10AutoBufferIdLm136EEC2Em.exit.i

bb.av:                                            ; preds = %bb.au
  %i.ps = icmp ugt i64 %i.pp, 2305843009213693951
  %i.pt = ashr exact i64 %sext.i, 29
  %i.pu = select i1 %i.ps, i64 -1, i64 %i.pt
  %i.pv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.pu) #28
          to label %.noexc439.i unwind label %bb.ax ; 2 uses

.noexc439.i:                                      ; preds = %bb.av
  store ptr %i.pv, ptr %15, align 8, !tbaa !61
  br label %_ZN2cv10AutoBufferIdLm136EEC2Em.exit.i

_ZN2cv10AutoBufferIdLm136EEC2Em.exit.i:           ; preds = %.noexc439.i, %bb.au
  %i.pw = phi ptr [ %i.pv, %.noexc439.i ], [ %i.pq, %bb.au ] ; 10 uses
  %i.px = icmp sgt i32 %.sroa.8.0.extract.trunc.i, 0
  br i1 %i.px, label %.lr.ph514.i, label %._crit_edge515.i

.lr.ph514.i:                                      ; preds = %_ZN2cv10AutoBufferIdLm136EEC2Em.exit.i
  %.not404.i = icmp eq ptr %.0360457.i, null      ; 2 uses
  %i.py = icmp slt i32 %.0368456.i, 1             ; 2 uses
  %i.pz = icmp sgt i32 %.sroa.0.0.extract.trunc.i, 0
  %i.qa = icmp eq i32 %.sroa.0.0.extract.trunc.i, 0
  %i.qb = and i64 %9, 4294967295                  ; 8 uses
  %i.qc = shl nuw nsw i64 %i.qb, 3
  %brmerge579.i = select i1 %.not404.i, i1 true, i1 %i.py
  %wide.trip.count616.i = zext i32 %.0368456.i to i64 ; 6 uses
  %brmerge582.i = select i1 %i.py, i1 true, i1 %i.qa
  %min.iters.check120 = icmp ugt i32 %.0368456.i, 3
  %ident.check118.not = icmp eq i64 %.0358459.i, 1
  %or.cond147 = and i1 %min.iters.check120, %ident.check118.not
  %n.vec122 = and i64 %wide.trip.count616.i, 2147483644 ; 3 uses
  %cmp.n129 = icmp eq i64 %n.vec122, %wide.trip.count616.i
  %xtraiter174 = and i64 %wide.trip.count616.i, 3 ; 2 uses
  %lcmp.mod175.not = icmp eq i64 %xtraiter174, 0
  %min.iters.check102 = icmp samesign ult i64 %i.qb, 4
  %n.vec104 = and i64 %9, 2147483644              ; 3 uses
  %cmp.n115 = icmp eq i64 %i.qb, %n.vec104
  %xtraiter177 = and i64 %9, 1
  %i.qd = icmp eq i64 %i.qb, 1
  %unroll_iter181 = and i64 %9, 2147483646
  %lcmp.mod179.not = icmp eq i64 %xtraiter177, 0
  %lcmp.mod180 = trunc i64 %9 to i1
  %min.iters.check90 = icmp samesign ult i64 %i.qb, 4
  %n.vec92 = and i64 %9, 2147483644               ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %10, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n99 = icmp eq i64 %i.qb, %n.vec92
  br label %bb.aw

bb.aw:                                            ; preds = %.loopexit467.i, %.lr.ph514.i
  %.3364512.i = phi ptr [ %4, %.lr.ph514.i ], [ %i.tc, %.loopexit467.i ] ; 5 uses
  %.2367511.i = phi ptr [ %0, %.lr.ph514.i ], [ %i.tb, %.loopexit467.i ] ; 8 uses
  %.3384510.i = phi i32 [ 0, %.lr.ph514.i ], [ %i.ta, %.loopexit467.i ]
  %.3397508.i = phi ptr [ %6, %.lr.ph514.i ], [ %i.td, %.loopexit467.i ] ; 6 uses
  %.2367511.mux.i = select i1 %.not404.i, ptr %.2367511.i, ptr %.0360457.i
  br i1 %brmerge579.i, label %.loopexit472.i, label %.lr.ph494.i.preheader

.lr.ph494.i.preheader:                            ; preds = %bb.aw
  br i1 %or.cond147, label %vector.body123, label %.lr.ph494.i.preheader155

vector.body123:                                   ; preds = %.lr.ph494.i.preheader, %vector.body123
  %index124 = phi i64 [ %index.next127, %vector.body123 ], [ 0, %.lr.ph494.i.preheader ] ; 3 uses
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %.2367511.i, i64 %index124 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  %wide.load125 = load <2 x double>, ptr %i.qe, align 8, !tbaa !29
  %wide.load126 = load <2 x double>, ptr %i.qf, align 8, !tbaa !29
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %.0360457.i, i64 %index124 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 16
  store <2 x double> %wide.load125, ptr %i.qg, align 8, !tbaa !29
  store <2 x double> %wide.load126, ptr %i.qh, align 8, !tbaa !29
  %index.next127 = add nuw i64 %index124, 4       ; 2 uses
  %i.qi = icmp eq i64 %index.next127, %n.vec122
  br i1 %i.qi, label %middle.block128, label %vector.body123, !llvm.loop !1022

middle.block128:                                  ; preds = %vector.body123
  br i1 %cmp.n129, label %.loopexit472.i, label %.lr.ph494.i.preheader155

.lr.ph494.i.preheader155:                         ; preds = %.lr.ph494.i.preheader, %middle.block128
  %indvars.iv613.i.ph = phi i64 [ 0, %.lr.ph494.i.preheader ], [ %n.vec122, %middle.block128 ] ; 3 uses
  br i1 %lcmp.mod175.not, label %.lr.ph494.i.prol.loopexit, label %.lr.ph494.i.prol

.lr.ph494.i.prol:                                 ; preds = %.lr.ph494.i.preheader155, %.lr.ph494.i.prol
  %indvars.iv613.i.prol = phi i64 [ %indvars.iv.next614.i.prol, %.lr.ph494.i.prol ], [ %indvars.iv613.i.ph, %.lr.ph494.i.preheader155 ] ; 3 uses
  %prol.iter176 = phi i64 [ %prol.iter176.next, %.lr.ph494.i.prol ], [ 0, %.lr.ph494.i.preheader155 ]
  %i.qj = mul i64 %indvars.iv613.i.prol, %.0358459.i
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %.2367511.i, i64 %i.qj
  %i.ql = load double, ptr %i.qk, align 8, !tbaa !29
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %.0360457.i, i64 %indvars.iv613.i.prol
  store double %i.ql, ptr %i.qm, align 8, !tbaa !29
  %indvars.iv.next614.i.prol = add nuw nsw i64 %indvars.iv613.i.prol, 1 ; 2 uses
  %prol.iter176.next = add i64 %prol.iter176, 1   ; 2 uses
  %prol.iter176.cmp.not = icmp eq i64 %prol.iter176.next, %xtraiter174
  br i1 %prol.iter176.cmp.not, label %.lr.ph494.i.prol.loopexit, label %.lr.ph494.i.prol, !llvm.loop !1023

.lr.ph494.i.prol.loopexit:                        ; preds = %.lr.ph494.i.prol, %.lr.ph494.i.preheader155
  %indvars.iv613.i.unr = phi i64 [ %indvars.iv613.i.ph, %.lr.ph494.i.preheader155 ], [ %indvars.iv.next614.i.prol, %.lr.ph494.i.prol ]
  %i.qn = sub nsw i64 %indvars.iv613.i.ph, %wide.trip.count616.i
  %i.qo = icmp ugt i64 %i.qn, -4
  br i1 %i.qo, label %.loopexit472.i, label %.lr.ph494.i

.lr.ph494.i:                                      ; preds = %.lr.ph494.i.prol.loopexit, %.lr.ph494.i
  %indvars.iv613.i = phi i64 [ %indvars.iv.next614.i.3, %.lr.ph494.i ], [ %indvars.iv613.i.unr, %.lr.ph494.i.prol.loopexit ] ; 6 uses
  %i.qp = mul i64 %indvars.iv613.i, %.0358459.i
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %.2367511.i, i64 %i.qp
  %i.qr = load double, ptr %i.qq, align 8, !tbaa !29
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %.0360457.i, i64 %indvars.iv613.i
  store double %i.qr, ptr %i.qs, align 8, !tbaa !29
  %indvars.iv.next614.i = add nuw nsw i64 %indvars.iv613.i, 1 ; 2 uses
  %i.qt = mul i64 %indvars.iv.next614.i, %.0358459.i
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %.2367511.i, i64 %i.qt
  %i.qv = load double, ptr %i.qu, align 8, !tbaa !29
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %.0360457.i, i64 %indvars.iv.next614.i
  store double %i.qv, ptr %i.qw, align 8, !tbaa !29
  %indvars.iv.next614.i.1 = add nuw nsw i64 %indvars.iv613.i, 2 ; 2 uses
  %i.qx = mul i64 %indvars.iv.next614.i.1, %.0358459.i
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %.2367511.i, i64 %i.qx
  %i.qz = load double, ptr %i.qy, align 8, !tbaa !29
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %.0360457.i, i64 %indvars.iv.next614.i.1
  store double %i.qz, ptr %i.ra, align 8, !tbaa !29
  %indvars.iv.next614.i.2 = add nuw nsw i64 %indvars.iv613.i, 3 ; 2 uses
  %i.rb = mul i64 %indvars.iv.next614.i.2, %.0358459.i
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %.2367511.i, i64 %i.rb
  %i.rd = load double, ptr %i.rc, align 8, !tbaa !29
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %.0360457.i, i64 %indvars.iv.next614.i.2
  store double %i.rd, ptr %i.re, align 8, !tbaa !29
  %indvars.iv.next614.i.3 = add nuw nsw i64 %indvars.iv613.i, 4 ; 2 uses
  %exitcond617.not.i.3 = icmp eq i64 %indvars.iv.next614.i.3, %wide.trip.count616.i
  br i1 %exitcond617.not.i.3, label %.loopexit472.i, label %.lr.ph494.i, !llvm.loop !1024

bb.ax:                                            ; preds = %bb.av
  %i.rf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.ba

.loopexit472.i:                                   ; preds = %.lr.ph494.i.prol.loopexit, %.lr.ph494.i, %middle.block128, %bb.aw
  %.3.i = phi ptr [ %.2367511.mux.i, %bb.aw ], [ %.0360457.i, %middle.block128 ], [ %.0360457.i, %.lr.ph494.i ], [ %.0360457.i, %.lr.ph494.i.prol.loopexit ]
  br i1 %i.pz, label %.preheader470.i, label %.loopexit467.i

.preheader470.i:                                  ; preds = %.loopexit472.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.pw, i8 0, i64 %i.qc, i1 false), !tbaa !29
  br i1 %brmerge582.i, label %._crit_edge502.split.thread720.i, label %.lr.ph498.i

.lr.ph498.i:                                      ; preds = %.preheader470.i, %._crit_edge.i
  %indvars.iv626.i = phi i64 [ %indvars.iv.next627.i, %._crit_edge.i ], [ 0, %.preheader470.i ] ; 2 uses
  %.2387499.i = phi ptr [ %i.ru, %._crit_edge.i ], [ %2, %.preheader470.i ] ; 3 uses
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %.3.i, i64 %indvars.iv626.i
  %i.rh = load double, ptr %i.rg, align 8, !tbaa !29 ; 2 uses
  br i1 %min.iters.check102, label %scalar.ph101.preheader, label %vector.ph103

vector.ph103:                                     ; preds = %.lr.ph498.i
  %broadcast.splatinsert105 = insertelement <2 x double> poison, double %i.rh, i64 0
  %broadcast.splat106 = shufflevector <2 x double> %broadcast.splatinsert105, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body107

vector.body107:                                   ; preds = %vector.body107, %vector.ph103
  %index108 = phi i64 [ 0, %vector.ph103 ], [ %index.next113, %vector.body107 ] ; 3 uses
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %.2387499.i, i64 %index108 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  %wide.load109 = load <2 x double>, ptr %i.ri, align 8, !tbaa !29
  %wide.load110 = load <2 x double>, ptr %i.rj, align 8, !tbaa !29
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.pw, i64 %index108 ; 3 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 16 ; 2 uses
  %wide.load111 = load <2 x double>, ptr %i.rk, align 8, !tbaa !29
  %wide.load112 = load <2 x double>, ptr %i.rl, align 8, !tbaa !29
  %i.rm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load109, <2 x double> %broadcast.splat106, <2 x double> %wide.load111)
  %i.rn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load110, <2 x double> %broadcast.splat106, <2 x double> %wide.load112)
  store <2 x double> %i.rm, ptr %i.rk, align 8, !tbaa !29
  store <2 x double> %i.rn, ptr %i.rl, align 8, !tbaa !29
  %index.next113 = add nuw i64 %index108, 4       ; 2 uses
  %i.ro = icmp eq i64 %index.next113, %n.vec104
  br i1 %i.ro, label %middle.block114, label %vector.body107, !llvm.loop !1025

middle.block114:                                  ; preds = %vector.body107
  br i1 %cmp.n115, label %._crit_edge.i, label %scalar.ph101.preheader

scalar.ph101.preheader:                           ; preds = %.lr.ph498.i, %middle.block114
  %indvars.iv621.i.ph = phi i64 [ 0, %.lr.ph498.i ], [ %n.vec104, %middle.block114 ]
  br label %scalar.ph101

scalar.ph101:                                     ; preds = %scalar.ph101.preheader, %scalar.ph101
  %indvars.iv621.i = phi i64 [ %indvars.iv.next622.i, %scalar.ph101 ], [ %indvars.iv621.i.ph, %scalar.ph101.preheader ] ; 3 uses
  %i.rp = getelementptr inbounds nuw [8 x i8], ptr %.2387499.i, i64 %indvars.iv621.i
  %i.rq = load double, ptr %i.rp, align 8, !tbaa !29
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %i.pw, i64 %indvars.iv621.i ; 2 uses
  %i.rs = load double, ptr %i.rr, align 8, !tbaa !29
  %i.rt = call double @llvm.fmuladd.f64(double %i.rq, double %i.rh, double %i.rs)
  store double %i.rt, ptr %i.rr, align 8, !tbaa !29
  %indvars.iv.next622.i = add nuw nsw i64 %indvars.iv621.i, 1 ; 2 uses
  %exitcond625.not.i = icmp eq i64 %indvars.iv.next622.i, %i.qb
  br i1 %exitcond625.not.i, label %._crit_edge.i, label %scalar.ph101, !llvm.loop !1026

._crit_edge.i:                                    ; preds = %scalar.ph101, %middle.block114
  %indvars.iv.next627.i = add nuw nsw i64 %indvars.iv626.i, 1 ; 2 uses
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %.2387499.i, i64 %i.d
  %exitcond630.not.i = icmp eq i64 %indvars.iv.next627.i, %wide.trip.count616.i
  br i1 %exitcond630.not.i, label %._crit_edge502.split.i, label %.lr.ph498.i, !llvm.loop !1027

._crit_edge502.split.i:                           ; preds = %._crit_edge.i
  %.not405.i = icmp eq ptr %.3364512.i, null
  br i1 %.not405.i, label %.lr.ph507.preheader.i, label %.lr.ph505.i.preheader

._crit_edge502.split.thread720.i:                 ; preds = %.preheader470.i
  %.not405721.i = icmp eq ptr %.3364512.i, null
  br i1 %.not405721.i, label %.lr.ph507.preheader.i, label %.lr.ph505.i.preheader

.lr.ph505.i.preheader:                            ; preds = %._crit_edge502.split.i, %._crit_edge502.split.thread720.i
  br i1 %i.qd, label %.lr.ph505.i.epil.preheader, label %.lr.ph505.i

.lr.ph507.preheader.i:                            ; preds = %._crit_edge502.split.i, %._crit_edge502.split.thread720.i
  br i1 %min.iters.check90, label %.lr.ph507.i.preheader, label %vector.body93

vector.body93:                                    ; preds = %.lr.ph507.preheader.i, %vector.body93
  %index94 = phi i64 [ %index.next97, %vector.body93 ], [ 0, %.lr.ph507.preheader.i ] ; 3 uses
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.pw, i64 %index94 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 16
  %wide.load95 = load <2 x double>, ptr %i.rv, align 8, !tbaa !29
  %wide.load96 = load <2 x double>, ptr %i.rw, align 8, !tbaa !29
  %i.rx = fmul <2 x double> %broadcast.splat, %wide.load95
  %i.ry = fmul <2 x double> %broadcast.splat, %wide.load96
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %.3397508.i, i64 %index94 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 16
  store <2 x double> %i.rx, ptr %i.rz, align 8, !tbaa !29
  store <2 x double> %i.ry, ptr %i.sa, align 8, !tbaa !29
  %index.next97 = add nuw i64 %index94, 4         ; 2 uses
  %i.sb = icmp eq i64 %index.next97, %n.vec92
  br i1 %i.sb, label %middle.block98, label %vector.body93, !llvm.loop !1028

middle.block98:                                   ; preds = %vector.body93
  br i1 %cmp.n99, label %.loopexit467.i, label %.lr.ph507.i.preheader

.lr.ph507.i.preheader:                            ; preds = %.lr.ph507.preheader.i, %middle.block98
  %indvars.iv636.i.ph = phi i64 [ 0, %.lr.ph507.preheader.i ], [ %n.vec92, %middle.block98 ]
  br label %.lr.ph507.i

.lr.ph507.i:                                      ; preds = %.lr.ph507.i.preheader, %.lr.ph507.i
  %indvars.iv636.i = phi i64 [ %indvars.iv.next637.i, %.lr.ph507.i ], [ %indvars.iv636.i.ph, %.lr.ph507.i.preheader ] ; 3 uses
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %i.pw, i64 %indvars.iv636.i
  %i.sd = load double, ptr %i.sc, align 8, !tbaa !29
  %i.se = fmul double %10, %i.sd
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %.3397508.i, i64 %indvars.iv636.i
  store double %i.se, ptr %i.sf, align 8, !tbaa !29
  %indvars.iv.next637.i = add nuw nsw i64 %indvars.iv636.i, 1 ; 2 uses
  %exitcond640.not.i = icmp eq i64 %indvars.iv.next637.i, %i.qb
  br i1 %exitcond640.not.i, label %.loopexit467.i, label %.lr.ph507.i, !llvm.loop !1029

.lr.ph505.i:                                      ; preds = %.lr.ph505.i.preheader, %.lr.ph505.i
  %indvars.iv631.i = phi i64 [ %indvars.iv.next632.i.1, %.lr.ph505.i ], [ 0, %.lr.ph505.i.preheader ] ; 4 uses
  %.5393503.i = phi ptr [ %i.st, %.lr.ph505.i ], [ %.3364512.i, %.lr.ph505.i.preheader ] ; 2 uses
  %niter182 = phi i64 [ %niter182.next.1, %.lr.ph505.i ], [ 0, %.lr.ph505.i.preheader ]
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.pw, i64 %indvars.iv631.i
  %i.sh = load double, ptr %i.sg, align 8, !tbaa !29
  %i.si = fmul double %10, %i.sh
  %i.sj = load double, ptr %.5393503.i, align 8, !tbaa !29
  %i.sk = call double @llvm.fmuladd.f64(double %i.sj, double %11, double %i.si)
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %.3397508.i, i64 %indvars.iv631.i
  store double %i.sk, ptr %i.sl, align 8, !tbaa !29
  %indvars.iv.next632.i = or disjoint i64 %indvars.iv631.i, 1 ; 2 uses
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %.5393503.i, i64 %.0356.i ; 2 uses
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %i.pw, i64 %indvars.iv.next632.i
  %i.so = load double, ptr %i.sn, align 8, !tbaa !29
  %i.sp = fmul double %10, %i.so
  %i.sq = load double, ptr %i.sm, align 8, !tbaa !29
  %i.sr = call double @llvm.fmuladd.f64(double %i.sq, double %11, double %i.sp)
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %.3397508.i, i64 %indvars.iv.next632.i
  store double %i.sr, ptr %i.ss, align 8, !tbaa !29
  %indvars.iv.next632.i.1 = add nuw nsw i64 %indvars.iv631.i, 2 ; 2 uses
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %i.sm, i64 %.0356.i ; 2 uses
  %niter182.next.1 = add i64 %niter182, 2         ; 2 uses
  %niter182.ncmp.1 = icmp eq i64 %niter182.next.1, %unroll_iter181
  br i1 %niter182.ncmp.1, label %.loopexit467.i.loopexit154.unr-lcssa, label %.lr.ph505.i, !llvm.loop !1030

.loopexit467.i.loopexit154.unr-lcssa:             ; preds = %.lr.ph505.i
  br i1 %lcmp.mod179.not, label %.loopexit467.i, label %.lr.ph505.i.epil.preheader

.lr.ph505.i.epil.preheader:                       ; preds = %.loopexit467.i.loopexit154.unr-lcssa, %.lr.ph505.i.preheader
  %indvars.iv631.i.epil.init = phi i64 [ 0, %.lr.ph505.i.preheader ], [ %indvars.iv.next632.i.1, %.loopexit467.i.loopexit154.unr-lcssa ] ; 2 uses
  %.5393503.i.epil.init = phi ptr [ %.3364512.i, %.lr.ph505.i.preheader ], [ %i.st, %.loopexit467.i.loopexit154.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod180)
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %i.pw, i64 %indvars.iv631.i.epil.init
  %i.sv = load double, ptr %i.su, align 8, !tbaa !29
  %i.sw = fmul double %10, %i.sv
  %i.sx = load double, ptr %.5393503.i.epil.init, align 8, !tbaa !29
  %i.sy = call double @llvm.fmuladd.f64(double %i.sx, double %11, double %i.sw)
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %.3397508.i, i64 %indvars.iv631.i.epil.init
  store double %i.sy, ptr %i.sz, align 8, !tbaa !29
  br label %.loopexit467.i

.loopexit467.i:                                   ; preds = %.lr.ph505.i.epil.preheader, %.loopexit467.i.loopexit154.unr-lcssa, %.lr.ph507.i, %middle.block98, %.loopexit472.i
  %i.ta = add nuw nsw i32 %.3384510.i, 1          ; 2 uses
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %.2367511.i, i64 %.0359458.i
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %.3364512.i, i64 %.0357.i
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %.3397508.i, i64 %i.f
  %exitcond641.not.i = icmp eq i32 %i.ta, %.sroa.8.0.extract.trunc.i
  br i1 %exitcond641.not.i, label %._crit_edge515.i, label %bb.aw, !llvm.loop !1031

._crit_edge515.i:                                 ; preds = %.loopexit467.i, %_ZN2cv10AutoBufferIdLm136EEC2Em.exit.i
  %.not.i.i440.i = icmp eq ptr %i.pw, %i.pq
  br i1 %.not.i.i440.i, label %_ZN2cv10AutoBufferIdLm136EED2Ev.exit443.i, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge515.i
  call void @_ZdaPv(ptr noundef nonnull %i.pw) #27
  br label %_ZN2cv10AutoBufferIdLm136EED2Ev.exit443.i

_ZN2cv10AutoBufferIdLm136EED2Ev.exit443.i:        ; preds = %bb.ay, %._crit_edge515.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %.loopexit465.i

.loopexit465.i:                                   ; preds = %.loopexit475.i.loopexit, %._crit_edge485.i.loopexit15.us, %._crit_edge485.i.loopexit.us.us, %._crit_edge547.i, %.lr.ph492.i.split, %_ZN2cv10AutoBufferIdLm136EED2Ev.exit443.i, %.preheader464.i, %.preheader476.i, %_ZN2cv10AutoBufferIdLm136EED2Ev.exit437.i
  %i.te = load ptr, ptr %13, align 8, !tbaa !61   ; 3 uses
  %.not.i.i444.i = icmp eq ptr %i.te, %i.a
  %i.tf = icmp eq ptr %i.te, null
  %or.cond.i445.i = or i1 %.not.i.i444.i, %i.tf
  br i1 %or.cond.i445.i, label %_ZN2cv12cpu_baselineL13GEMMSingleMulIddEEvPKT_mS4_mS4_mPS2_mNS_5Size_IiEES7_ddi.exit, label %bb.az

bb.az:                                            ; preds = %.loopexit465.i
  call void @_ZdaPv(ptr noundef nonnull %i.te) #27
  br label %_ZN2cv12cpu_baselineL13GEMMSingleMulIddEEvPKT_mS4_mS4_mPS2_mNS_5Size_IiEES7_ddi.exit

bb.ba:                                            ; preds = %bb.ax, %_ZN2cv10AutoBufferIdLm136EED2Ev.exit.i, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.ar, %_ZN2cv10AutoBufferIdLm136EED2Ev.exit.i ], [ %i.rf, %bb.ax ], [ %i.m, %bb.e ]
  %i.tg = load ptr, ptr %13, align 8, !tbaa !61   ; 3 uses
  %.not.i.i448.i = icmp eq ptr %i.tg, %i.a
  %i.th = icmp eq ptr %i.tg, null
  %or.cond.i449.i = or i1 %.not.i.i448.i, %i.th
  br i1 %or.cond.i449.i, label %_ZN2cv10AutoBufferIdLm136EED2Ev.exit451.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @_ZdaPv(ptr noundef nonnull %i.tg) #27
  br label %_ZN2cv10AutoBufferIdLm136EED2Ev.exit451.i

_ZN2cv10AutoBufferIdLm136EED2Ev.exit451.i:        ; preds = %bb.bb, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  resume { ptr, i32 } %.pn.i

_ZN2cv12cpu_baselineL13GEMMSingleMulIddEEvPKT_mS4_mS4_mPS2_mNS_5Size_IiEES7_ddi.exit: ; preds = %.loopexit465.i, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_5
begin_hunk_6_@_ZN2cv12cpu_baselineL16GEMMBlockMul_64fEPKdmS2_mPdmNS_5Size_IiEES5_i:bb.a
  %i.ae = sub i32 %i.ad, %i.v
  %min.iters.check91 = icmp samesign ugt i64 %wide.trip.count354.i, 3
  %ident.check89.not = icmp eq i64 %.0165.i, 1
  %or.cond = and i1 %min.iters.check91, %ident.check89.not
  %n.vec93 = and i64 %.0170.in.i, 2147483644      ; 3 uses
  %cmp.n100 = icmp eq i64 %wide.trip.count354.i, %n.vec93
  %xtraiter163 = and i64 %.0170.in.i, 3           ; 2 uses
  %lcmp.mod164.not = icmp eq i64 %xtraiter163, 0
  %xtraiter166 = and i64 %i.aa, 3                 ; 3 uses
  %i.af = icmp ult i32 %i.t, 6
  %unroll_iter = and i64 %i.aa, 4294967292
  %lcmp.mod167.not = icmp eq i64 %xtraiter166, 0
  %lcmp.mod169 = icmp ne i64 %xtraiter166, 0
  %xtraiter170 = and i64 %i.aa, 3                 ; 3 uses
  %i.ag = icmp ult i32 %i.t, 6
  %unroll_iter178 = and i64 %i.aa, 4294967292
  %lcmp.mod174.not = icmp eq i64 %xtraiter170, 0
  %lcmp.mod177 = icmp ne i64 %xtraiter170, 0
  %xtraiter180 = and i32 %i.ac, 3                 ; 2 uses
  %lcmp.mod181.not = icmp eq i32 %xtraiter180, 0
  %i.ah = icmp ult i32 %i.ae, 3
  br label %.lr.ph228.split.us.split.i

.lr.ph228.split.us.split.us.i:                    ; preds = %.lr.ph228.split.us.i
  br i1 %i.u, label %.lr.ph228.split.us.split.us.split.us.preheader.i, label %.lr.ph228.split.us.split.us.split.i

.lr.ph228.split.us.split.us.split.us.preheader.i: ; preds = %.lr.ph228.split.us.split.us.i
  %wide.trip.count421.i = and i64 %7, 2147483647  ; 2 uses
  br i1 %.not186.i, label %.lr.ph228.split.us.split.us.split.us.i.us.preheader, label %.lr.ph228.split.us.split.us.split.us.i.preheader

.lr.ph228.split.us.split.us.split.us.i.preheader: ; preds = %.lr.ph228.split.us.split.us.split.us.preheader.i
  %xtraiter195 = and i64 %7, 1
  %i.ai = icmp eq i64 %wide.trip.count421.i, 1
  %unroll_iter199 = and i64 %7, 2147483646
  %lcmp.mod197.not = icmp eq i64 %xtraiter195, 0
  %lcmp.mod198 = trunc i64 %7 to i1
  br label %.lr.ph228.split.us.split.us.split.us.i

.lr.ph228.split.us.split.us.split.us.i.us.preheader: ; preds = %.lr.ph228.split.us.split.us.split.us.preheader.i
  %xtraiter201 = and i64 %7, 1
  %i.aj = icmp eq i64 %wide.trip.count421.i, 1
  %unroll_iter205 = and i64 %7, 2147483646
  %lcmp.mod203.not = icmp eq i64 %xtraiter201, 0
  %lcmp.mod204 = trunc i64 %7 to i1
  br label %.lr.ph228.split.us.split.us.split.us.i.us

.lr.ph228.split.us.split.us.split.us.i.us:        ; preds = %.lr.ph228.split.us.split.us.split.us.i.us.preheader, %._crit_edge218.split.us.split.us.us.us.us.i.loopexit.us
  %.0168227.us.us.us.i.us = phi ptr [ %i.be, %._crit_edge218.split.us.split.us.us.us.us.i.loopexit.us ], [ %0, %.lr.ph228.split.us.split.us.split.us.i.us.preheader ] ; 3 uses
  %.0176226.us.us.us.i.us = phi i32 [ %i.bd, %._crit_edge218.split.us.split.us.us.us.us.i.loopexit.us ], [ 0, %.lr.ph228.split.us.split.us.split.us.i.us.preheader ]
  %.0178222.us.us.us.i.us = phi ptr [ %i.bf, %._crit_edge218.split.us.split.us.us.us.us.i.loopexit.us ], [ %4, %.lr.ph228.split.us.split.us.split.us.i.us.preheader ] ; 4 uses
  br i1 %.not185.i, label %.lr.ph217.us.us.us.i.us, label %.lr.ph217.us.us.us.loopexit.i.us

.lr.ph217.us.us.us.loopexit.i.us:                 ; preds = %.lr.ph228.split.us.split.us.split.us.i.us
  %i.ak = load double, ptr %.0168227.us.us.us.i.us, align 8, !tbaa !29
  store double %i.ak, ptr %.0167.i, align 8, !tbaa !29
  br label %.lr.ph217.us.us.us.i.us

.lr.ph217.us.us.us.i.us:                          ; preds = %.lr.ph217.us.us.us.loopexit.i.us, %.lr.ph228.split.us.split.us.split.us.i.us
  %.0151.us.us.us.i.us = phi ptr [ %.0168227.us.us.us.i.us, %.lr.ph228.split.us.split.us.split.us.i.us ], [ %.0167.i, %.lr.ph217.us.us.us.loopexit.i.us ] ; 3 uses
  br i1 %i.aj, label %._crit_edge.us.us.us.us.us.us.i.us.epil.preheader, label %._crit_edge.us.us.us.us.us.us.i.us

._crit_edge.us.us.us.us.us.us.i.us:               ; preds = %.lr.ph217.us.us.us.i.us, %._crit_edge.us.us.us.us.us.us.i.us
  %indvars.iv428.i.us = phi i64 [ %indvars.iv.next429.i.us.1, %._crit_edge.us.us.us.us.us.us.i.us ], [ 0, %.lr.ph217.us.us.us.i.us ] ; 3 uses
  %.0164215.us.us.us.us.us.us.i.us = phi ptr [ %i.ax, %._crit_edge.us.us.us.us.us.us.i.us ], [ %2, %.lr.ph217.us.us.us.i.us ] ; 2 uses
  %niter206 = phi i64 [ %niter206.next.1, %._crit_edge.us.us.us.us.us.us.i.us ], [ 0, %.lr.ph217.us.us.us.i.us ]
  %i.al = load double, ptr %.0151.us.us.us.i.us, align 8, !tbaa !29
  %i.am = load double, ptr %.0164215.us.us.us.us.us.us.i.us, align 8, !tbaa !29
  %i.an = call double @llvm.fmuladd.f64(double %i.al, double %i.am, double 0.000000e+00)
  %i.ao = fadd double %i.an, 0.000000e+00
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.us.us.i.us, i64 %indvars.iv428.i.us
  store double %i.ao, ptr %i.ap, align 8, !tbaa !29
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.0164215.us.us.us.us.us.us.i.us, i64 %i.e ; 2 uses
  %i.ar = load double, ptr %.0151.us.us.us.i.us, align 8, !tbaa !29
  %i.as = load double, ptr %i.aq, align 8, !tbaa !29
  %i.at = call double @llvm.fmuladd.f64(double %i.ar, double %i.as, double 0.000000e+00)
  %i.au = fadd double %i.at, 0.000000e+00
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.us.us.i.us, i64 %indvars.iv428.i.us
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store double %i.au, ptr %i.aw, align 8, !tbaa !29
  %indvars.iv.next429.i.us.1 = add nuw nsw i64 %indvars.iv428.i.us, 2 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.e ; 2 uses
  %niter206.next.1 = add i64 %niter206, 2         ; 2 uses
  %niter206.ncmp.1 = icmp eq i64 %niter206.next.1, %unroll_iter205
  br i1 %niter206.ncmp.1, label %._crit_edge218.split.us.split.us.us.us.us.i.loopexit.us.unr-lcssa, label %._crit_edge.us.us.us.us.us.us.i.us, !llvm.loop !1032

._crit_edge218.split.us.split.us.us.us.us.i.loopexit.us.unr-lcssa: ; preds = %._crit_edge.us.us.us.us.us.us.i.us
  br i1 %lcmp.mod203.not, label %._crit_edge218.split.us.split.us.us.us.us.i.loopexit.us, label %._crit_edge.us.us.us.us.us.us.i.us.epil.preheader

._crit_edge.us.us.us.us.us.us.i.us.epil.preheader: ; preds = %._crit_edge218.split.us.split.us.us.us.us.i.loopexit.us.unr-lcssa, %.lr.ph217.us.us.us.i.us
  %indvars.iv428.i.us.epil.init = phi i64 [ 0, %.lr.ph217.us.us.us.i.us ], [ %indvars.iv.next429.i.us.1, %._crit_edge218.split.us.split.us.us.us.us.i.loopexit.us.unr-lcssa ]
  %.0164215.us.us.us.us.us.us.i.us.epil.init = phi ptr [ %2, %.lr.ph217.us.us.us.i.us ], [ %i.ax, %._crit_edge218.split.us.split.us.us.us.us.i.loopexit.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod204)
  %i.ay = load double, ptr %.0151.us.us.us.i.us, align 8, !tbaa !29
  %i.az = load double, ptr %.0164215.us.us.us.us.us.us.i.us.epil.init, align 8, !tbaa !29
  %i.ba = call double @llvm.fmuladd.f64(double %i.ay, double %i.az, double 0.000000e+00)
  %i.bb = fadd double %i.ba, 0.000000e+00
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.us.us.i.us, i64 %indvars.iv428.i.us.epil.init
  store double %i.bb, ptr %i.bc, align 8, !tbaa !29
  br label %._crit_edge218.split.us.split.us.us.us.us.i.loopexit.us

._crit_edge218.split.us.split.us.us.us.us.i.loopexit.us: ; preds = %._crit_edge218.split.us.split.us.us.us.us.i.loopexit.us.unr-lcssa, %._crit_edge.us.us.us.us.us.us.i.us.epil.preheader
  %i.bd = add nuw nsw i32 %.0176226.us.us.us.i.us, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.0168227.us.us.us.i.us, i64 %.0166.i
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.us.us.i.us, i64 %i.f
  %exitcond433.not.i.us = icmp eq i32 %i.bd, %.sroa.3.0.extract.trunc.i
  br i1 %exitcond433.not.i.us, label %.loopexit196.i, label %.lr.ph228.split.us.split.us.split.us.i.us, !llvm.loop !1033

.lr.ph228.split.us.split.us.split.us.i:           ; preds = %.lr.ph228.split.us.split.us.split.us.i.preheader, %._crit_edge218.split.us.split.us.us.us.us.i.loopexit9
  %.0168227.us.us.us.i = phi ptr [ %i.cd, %._crit_edge218.split.us.split.us.us.us.us.i.loopexit9 ], [ %0, %.lr.ph228.split.us.split.us.split.us.i.preheader ] ; 3 uses
  %.0176226.us.us.us.i = phi i32 [ %i.cc, %._crit_edge218.split.us.split.us.us.us.us.i.loopexit9 ], [ 0, %.lr.ph228.split.us.split.us.split.us.i.preheader ]
  %.0178222.us.us.us.i = phi ptr [ %i.ce, %._crit_edge218.split.us.split.us.us.us.us.i.loopexit9 ], [ %4, %.lr.ph228.split.us.split.us.split.us.i.preheader ] ; 4 uses
  br i1 %.not185.i, label %.lr.ph217.us.us.us.i, label %.lr.ph217.us.us.us.loopexit.i

.lr.ph217.us.us.us.loopexit.i:                    ; preds = %.lr.ph228.split.us.split.us.split.us.i
  %i.bg = load double, ptr %.0168227.us.us.us.i, align 8, !tbaa !29
  store double %i.bg, ptr %.0167.i, align 8, !tbaa !29
  br label %.lr.ph217.us.us.us.i

.lr.ph217.us.us.us.i:                             ; preds = %.lr.ph217.us.us.us.loopexit.i, %.lr.ph228.split.us.split.us.split.us.i
  %.0151.us.us.us.i = phi ptr [ %.0168227.us.us.us.i, %.lr.ph228.split.us.split.us.split.us.i ], [ %.0167.i, %.lr.ph217.us.us.us.loopexit.i ] ; 3 uses
  br i1 %i.ai, label %._crit_edge.us.us.us.us.us.i.epil.preheader, label %._crit_edge.us.us.us.us.us.i

._crit_edge.us.us.us.us.us.i:                     ; preds = %.lr.ph217.us.us.us.i, %._crit_edge.us.us.us.us.us.i
  %indvars.iv418.i = phi i64 [ %indvars.iv.next419.i.1, %._crit_edge.us.us.us.us.us.i ], [ 0, %.lr.ph217.us.us.us.i ] ; 3 uses
  %.0164215.us.us.us.us.us.i = phi ptr [ %i.bv, %._crit_edge.us.us.us.us.us.i ], [ %2, %.lr.ph217.us.us.us.i ] ; 2 uses
  %niter200 = phi i64 [ %niter200.next.1, %._crit_edge.us.us.us.us.us.i ], [ 0, %.lr.ph217.us.us.us.i ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.us.us.i, i64 %indvars.iv418.i ; 2 uses
  %i.bi = load double, ptr %.0151.us.us.us.i, align 8, !tbaa !29
  %i.bj = load double, ptr %.0164215.us.us.us.us.us.i, align 8, !tbaa !29
  %i.bk = load double, ptr %i.bh, align 8, !tbaa !29
  %i.bl = call double @llvm.fmuladd.f64(double %i.bi, double %i.bj, double %i.bk)
  %i.bm = fadd double %i.bl, 0.000000e+00
  store double %i.bm, ptr %i.bh, align 8, !tbaa !29
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.0164215.us.us.us.us.us.i, i64 %i.e ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.us.us.i, i64 %indvars.iv418.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.bq = load double, ptr %.0151.us.us.us.i, align 8, !tbaa !29
  %i.br = load double, ptr %i.bn, align 8, !tbaa !29
  %i.bs = load double, ptr %i.bp, align 8, !tbaa !29
  %i.bt = call double @llvm.fmuladd.f64(double %i.bq, double %i.br, double %i.bs)
  %i.bu = fadd double %i.bt, 0.000000e+00
  store double %i.bu, ptr %i.bp, align 8, !tbaa !29
  %indvars.iv.next419.i.1 = add nuw nsw i64 %indvars.iv418.i, 2 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.e ; 2 uses
  %niter200.next.1 = add i64 %niter200, 2         ; 2 uses
  %niter200.ncmp.1 = icmp eq i64 %niter200.next.1, %unroll_iter199
  br i1 %niter200.ncmp.1, label %._crit_edge218.split.us.split.us.us.us.us.i.loopexit9.unr-lcssa, label %._crit_edge.us.us.us.us.us.i, !llvm.loop !1032

._crit_edge218.split.us.split.us.us.us.us.i.loopexit9.unr-lcssa: ; preds = %._crit_edge.us.us.us.us.us.i
  br i1 %lcmp.mod197.not, label %._crit_edge218.split.us.split.us.us.us.us.i.loopexit9, label %._crit_edge.us.us.us.us.us.i.epil.preheader

._crit_edge.us.us.us.us.us.i.epil.preheader:      ; preds = %._crit_edge218.split.us.split.us.us.us.us.i.loopexit9.unr-lcssa, %.lr.ph217.us.us.us.i
  %indvars.iv418.i.epil.init = phi i64 [ 0, %.lr.ph217.us.us.us.i ], [ %indvars.iv.next419.i.1, %._crit_edge218.split.us.split.us.us.us.us.i.loopexit9.unr-lcssa ]
  %.0164215.us.us.us.us.us.i.epil.init = phi ptr [ %2, %.lr.ph217.us.us.us.i ], [ %i.bv, %._crit_edge218.split.us.split.us.us.us.us.i.loopexit9.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod198)
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.us.us.i, i64 %indvars.iv418.i.epil.init ; 2 uses
  %i.bx = load double, ptr %.0151.us.us.us.i, align 8, !tbaa !29
  %i.by = load double, ptr %.0164215.us.us.us.us.us.i.epil.init, align 8, !tbaa !29
  %i.bz = load double, ptr %i.bw, align 8, !tbaa !29
  %i.ca = call double @llvm.fmuladd.f64(double %i.bx, double %i.by, double %i.bz)
  %i.cb = fadd double %i.ca, 0.000000e+00
  store double %i.cb, ptr %i.bw, align 8, !tbaa !29
  br label %._crit_edge218.split.us.split.us.us.us.us.i.loopexit9

._crit_edge218.split.us.split.us.us.us.us.i.loopexit9: ; preds = %._crit_edge218.split.us.split.us.us.us.us.i.loopexit9.unr-lcssa, %._crit_edge.us.us.us.us.us.i.epil.preheader
  %i.cc = add nuw nsw i32 %.0176226.us.us.us.i, 1 ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.0168227.us.us.us.i, i64 %.0166.i
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.us.us.i, i64 %i.f
  %exitcond433.not.i = icmp eq i32 %i.cc, %.sroa.3.0.extract.trunc.i
  br i1 %exitcond433.not.i, label %.loopexit196.i, label %.lr.ph228.split.us.split.us.split.us.i, !llvm.loop !1033

.lr.ph228.split.us.split.us.split.i:              ; preds = %.lr.ph228.split.us.split.us.i
  br i1 %.not186.i, label %.lr.ph228.split.us.split.us.split.split.us.i, label %.lr.ph228.split.us.split.us.split.split.i

.lr.ph228.split.us.split.us.split.split.us.i:     ; preds = %.lr.ph228.split.us.split.us.split.i
  %i.cf = shl i64 %7, 3
  %i.cg = and i64 %i.cf, 17179869176              ; 18 uses
  br i1 %.not185.i, label %.lr.ph217.us.us.us249.us.i.preheader, label %.preheader198.us.us.us244.i.preheader

.preheader198.us.us.us244.i.preheader:            ; preds = %.lr.ph228.split.us.split.us.split.split.us.i
  %xtraiter183 = and i32 %.sroa.3.0.extract.trunc.i, 7 ; 3 uses
  %i.ch = icmp ult i64 %7, 34359738368
  br i1 %i.ch, label %.preheader198.us.us.us244.i.epil.preheader, label %.preheader198.us.us.us244.i.preheader.new

.preheader198.us.us.us244.i.preheader.new:        ; preds = %.preheader198.us.us.us244.i.preheader
  %unroll_iter187 = and i32 %.sroa.3.0.extract.trunc.i, 2147483640
  br label %.preheader198.us.us.us244.i

.lr.ph217.us.us.us249.us.i.preheader:             ; preds = %.lr.ph228.split.us.split.us.split.split.us.i
  %xtraiter189 = and i32 %.sroa.3.0.extract.trunc.i, 7 ; 3 uses
  %i.ci = icmp ult i64 %7, 34359738368
  br i1 %i.ci, label %.lr.ph217.us.us.us249.us.i.epil.preheader, label %.lr.ph217.us.us.us249.us.i.preheader.new

.lr.ph217.us.us.us249.us.i.preheader.new:         ; preds = %.lr.ph217.us.us.us249.us.i.preheader
  %unroll_iter193 = and i32 %.sroa.3.0.extract.trunc.i, 2147483640
  br label %.lr.ph217.us.us.us249.us.i

.lr.ph217.us.us.us249.us.i:                       ; preds = %.lr.ph217.us.us.us249.us.i, %.lr.ph217.us.us.us249.us.i.preheader.new
  %.0178222.us.us.us243.us.i = phi ptr [ %4, %.lr.ph217.us.us.us249.us.i.preheader.new ], [ %i.cq, %.lr.ph217.us.us.us249.us.i ] ; 2 uses
  %niter194 = phi i32 [ 0, %.lr.ph217.us.us.us249.us.i.preheader.new ], [ %niter194.next.7, %.lr.ph217.us.us.us249.us.i ]
  call void @llvm.memset.p0.i64(ptr align 8 %.0178222.us.us.us243.us.i, i8 0, i64 %i.cg, i1 false), !tbaa !29
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.us.us243.us.i, i64 %i.f ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.cj, i8 0, i64 %i.cg, i1 false), !tbaa !29
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.f ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.ck, i8 0, i64 %i.cg, i1 false), !tbaa !29
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.f ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.cl, i8 0, i64 %i.cg, i1 false), !tbaa !29
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.f ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.cm, i8 0, i64 %i.cg, i1 false), !tbaa !29
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.f ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.cn, i8 0, i64 %i.cg, i1 false), !tbaa !29
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.f ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.co, i8 0, i64 %i.cg, i1 false), !tbaa !29
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.f ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.cp, i8 0, i64 %i.cg, i1 false), !tbaa !29
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.f ; 2 uses
  %niter194.next.7 = add i32 %niter194, 8         ; 2 uses
  %niter194.ncmp.7 = icmp eq i32 %niter194.next.7, %unroll_iter193
  br i1 %niter194.ncmp.7, label %.loopexit196.i.loopexit149.unr-lcssa, label %.lr.ph217.us.us.us249.us.i, !llvm.loop !1033

.preheader198.us.us.us244.i:                      ; preds = %.preheader198.us.us.us244.i, %.preheader198.us.us.us244.i.preheader.new
  %.0178222.us.us.us243.i = phi ptr [ %4, %.preheader198.us.us.us244.i.preheader.new ], [ %i.cy, %.preheader198.us.us.us244.i ] ; 2 uses
  %niter188 = phi i32 [ 0, %.preheader198.us.us.us244.i.preheader.new ], [ %niter188.next.7, %.preheader198.us.us.us244.i ]
  call void @llvm.memset.p0.i64(ptr align 8 %.0178222.us.us.us243.i, i8 0, i64 %i.cg, i1 false), !tbaa !29
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.us.us243.i, i64 %i.f ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.cr, i8 0, i64 %i.cg, i1 false), !tbaa !29
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.f ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.cs, i8 0, i64 %i.cg, i1 false), !tbaa !29
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.f ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.ct, i8 0, i64 %i.cg, i1 false), !tbaa !29
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.f ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.cu, i8 0, i64 %i.cg, i1 false), !tbaa !29
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.f ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.cv, i8 0, i64 %i.cg, i1 false), !tbaa !29
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.f ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.cw, i8 0, i64 %i.cg, i1 false), !tbaa !29
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.f ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.cx, i8 0, i64 %i.cg, i1 false), !tbaa !29
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.f ; 2 uses
  %niter188.next.7 = add i32 %niter188, 8         ; 2 uses
  %niter188.ncmp.7 = icmp eq i32 %niter188.next.7, %unroll_iter187
  br i1 %niter188.ncmp.7, label %.loopexit196.i.loopexit150.unr-lcssa, label %.preheader198.us.us.us244.i, !llvm.loop !1033

.lr.ph228.split.us.split.us.split.split.i:        ; preds = %.lr.ph228.split.us.split.us.split.i
  %wide.trip.count388.i = and i64 %7, 2147483647  ; 6 uses
  br i1 %.not185.i, label %.lr.ph217.us.us.us253.i.preheader, label %.preheader198.us.us.i.preheader

.preheader198.us.us.i.preheader:                  ; preds = %.lr.ph228.split.us.split.us.split.split.i
  %min.iters.check103 = icmp samesign ult i64 %wide.trip.count388.i, 4
  %n.vec105 = and i64 %7, 2147483644              ; 3 uses
  %cmp.n112 = icmp eq i64 %wide.trip.count388.i, %n.vec105
  br label %.preheader198.us.us.i

.lr.ph217.us.us.us253.i.preheader:                ; preds = %.lr.ph228.split.us.split.us.split.split.i
  %min.iters.check115 = icmp samesign ult i64 %wide.trip.count388.i, 4
  %n.vec117 = and i64 %7, 2147483644              ; 3 uses
  %cmp.n124 = icmp eq i64 %wide.trip.count388.i, %n.vec117
  br label %.lr.ph217.us.us.us253.i

.lr.ph217.us.us.us253.i:                          ; preds = %.lr.ph217.us.us.us253.i.preheader, %._crit_edge218.split.us.split.split.us238.us.us.i
  %.0176226.us.us.us251.i = phi i32 [ %i.dh, %._crit_edge218.split.us.split.split.us238.us.us.i ], [ 0, %.lr.ph217.us.us.us253.i.preheader ]
  %.0178222.us.us.us252.i = phi ptr [ %i.di, %._crit_edge218.split.us.split.split.us238.us.us.i ], [ %4, %.lr.ph217.us.us.us253.i.preheader ] ; 3 uses
  br i1 %min.iters.check115, label %.preheader197.us.us235.us.us.i.preheader, label %vector.body118

vector.body118:                                   ; preds = %.lr.ph217.us.us.us253.i, %vector.body118
  %index119 = phi i64 [ %index.next122, %vector.body118 ], [ 0, %.lr.ph217.us.us.us253.i ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.us.us252.i, i64 %index119 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %wide.load120 = load <2 x double>, ptr %i.cz, align 8, !tbaa !29
  %wide.load121 = load <2 x double>, ptr %i.da, align 8, !tbaa !29
  %i.db = fadd <2 x double> %wide.load120, zeroinitializer
  %i.dc = fadd <2 x double> %wide.load121, zeroinitializer
  store <2 x double> %i.db, ptr %i.cz, align 8, !tbaa !29
  store <2 x double> %i.dc, ptr %i.da, align 8, !tbaa !29
  %index.next122 = add nuw i64 %index119, 4       ; 2 uses
  %i.dd = icmp eq i64 %index.next122, %n.vec117
  br i1 %i.dd, label %middle.block123, label %vector.body118, !llvm.loop !1034

middle.block123:                                  ; preds = %vector.body118
  br i1 %cmp.n124, label %._crit_edge218.split.us.split.split.us238.us.us.i, label %.preheader197.us.us235.us.us.i.preheader

.preheader197.us.us235.us.us.i.preheader:         ; preds = %.lr.ph217.us.us.us253.i, %middle.block123
  %indvars.iv385.i.ph = phi i64 [ 0, %.lr.ph217.us.us.us253.i ], [ %n.vec117, %middle.block123 ]
  br label %.preheader197.us.us235.us.us.i

.preheader197.us.us235.us.us.i:                   ; preds = %.preheader197.us.us235.us.us.i.preheader, %.preheader197.us.us235.us.us.i
  %indvars.iv385.i = phi i64 [ %indvars.iv.next386.i, %.preheader197.us.us235.us.us.i ], [ %indvars.iv385.i.ph, %.preheader197.us.us235.us.us.i.preheader ] ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.us.us252.i, i64 %indvars.iv385.i ; 2 uses
  %i.df = load double, ptr %i.de, align 8, !tbaa !29
  %i.dg = fadd double %i.df, 0.000000e+00
  store double %i.dg, ptr %i.de, align 8, !tbaa !29
  %indvars.iv.next386.i = add nuw nsw i64 %indvars.iv385.i, 1 ; 2 uses
  %exitcond389.not.i = icmp eq i64 %indvars.iv.next386.i, %wide.trip.count388.i
  br i1 %exitcond389.not.i, label %._crit_edge218.split.us.split.split.us238.us.us.i, label %.preheader197.us.us235.us.us.i, !llvm.loop !1035

._crit_edge218.split.us.split.split.us238.us.us.i: ; preds = %.preheader197.us.us235.us.us.i, %middle.block123
  %i.dh = add nuw nsw i32 %.0176226.us.us.us251.i, 1 ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.us.us252.i, i64 %i.f
  %exitcond390.not.i = icmp eq i32 %i.dh, %.sroa.3.0.extract.trunc.i
  br i1 %exitcond390.not.i, label %.loopexit196.i, label %.lr.ph217.us.us.us253.i, !llvm.loop !1033

.preheader198.us.us.i:                            ; preds = %.preheader198.us.us.i.preheader, %._crit_edge218.split.us.split.split.us238.us.i
  %.0176226.us.us.i = phi i32 [ %i.dr, %._crit_edge218.split.us.split.split.us238.us.i ], [ 0, %.preheader198.us.us.i.preheader ]
  %.0178222.us.us.i = phi ptr [ %i.ds, %._crit_edge218.split.us.split.split.us238.us.i ], [ %4, %.preheader198.us.us.i.preheader ] ; 3 uses
  br i1 %min.iters.check103, label %.preheader197.us.us235.us.i.preheader, label %vector.body106

vector.body106:                                   ; preds = %.preheader198.us.us.i, %vector.body106
  %index107 = phi i64 [ %index.next110, %vector.body106 ], [ 0, %.preheader198.us.us.i ] ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.us.i, i64 %index107 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %wide.load108 = load <2 x double>, ptr %i.dj, align 8, !tbaa !29
  %wide.load109 = load <2 x double>, ptr %i.dk, align 8, !tbaa !29
  %i.dl = fadd <2 x double> %wide.load108, zeroinitializer
  %i.dm = fadd <2 x double> %wide.load109, zeroinitializer
  store <2 x double> %i.dl, ptr %i.dj, align 8, !tbaa !29
  store <2 x double> %i.dm, ptr %i.dk, align 8, !tbaa !29
  %index.next110 = add nuw i64 %index107, 4       ; 2 uses
  %i.dn = icmp eq i64 %index.next110, %n.vec105
  br i1 %i.dn, label %middle.block111, label %vector.body106, !llvm.loop !1036

middle.block111:                                  ; preds = %vector.body106
  br i1 %cmp.n112, label %._crit_edge218.split.us.split.split.us238.us.i, label %.preheader197.us.us235.us.i.preheader

.preheader197.us.us235.us.i.preheader:            ; preds = %.preheader198.us.us.i, %middle.block111
  %indvars.iv379.i.ph = phi i64 [ 0, %.preheader198.us.us.i ], [ %n.vec105, %middle.block111 ]
  br label %.preheader197.us.us235.us.i

.preheader197.us.us235.us.i:                      ; preds = %.preheader197.us.us235.us.i.preheader, %.preheader197.us.us235.us.i
  %indvars.iv379.i = phi i64 [ %indvars.iv.next380.i, %.preheader197.us.us235.us.i ], [ %indvars.iv379.i.ph, %.preheader197.us.us235.us.i.preheader ] ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.us.i, i64 %indvars.iv379.i ; 2 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !29
  %i.dq = fadd double %i.dp, 0.000000e+00
  store double %i.dq, ptr %i.do, align 8, !tbaa !29
  %indvars.iv.next380.i = add nuw nsw i64 %indvars.iv379.i, 1 ; 2 uses
  %exitcond383.not.i = icmp eq i64 %indvars.iv.next380.i, %wide.trip.count388.i
  br i1 %exitcond383.not.i, label %._crit_edge218.split.us.split.split.us238.us.i, label %.preheader197.us.us235.us.i, !llvm.loop !1037

._crit_edge218.split.us.split.split.us238.us.i:   ; preds = %.preheader197.us.us235.us.i, %middle.block111
  %i.dr = add nuw nsw i32 %.0176226.us.us.i, 1    ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.us.i, i64 %i.f
  %exitcond384.not.i = icmp eq i32 %i.dr, %.sroa.3.0.extract.trunc.i
  br i1 %exitcond384.not.i, label %.loopexit196.i, label %.preheader198.us.us.i, !llvm.loop !1033

.lr.ph228.split.us.split.i:                       ; preds = %._crit_edge218.split.us232.i, %.lr.ph228.split.us.split.preheader.i
  %.0168227.us.i = phi ptr [ %i.in, %._crit_edge218.split.us232.i ], [ %0, %.lr.ph228.split.us.split.preheader.i ] ; 8 uses
  %.0176226.us.i = phi i32 [ %i.im, %._crit_edge218.split.us232.i ], [ 0, %.lr.ph228.split.us.split.preheader.i ]
  %.0178222.us.i = phi ptr [ %i.io, %._crit_edge218.split.us232.i ], [ %4, %.lr.ph228.split.us.split.preheader.i ] ; 5 uses
  br i1 %.not185.i, label %.lr.ph217.us.i, label %.lr.ph.us.i.preheader

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph228.split.us.split.i
  br i1 %or.cond, label %vector.body94, label %.lr.ph.us.i.preheader156

vector.body94:                                    ; preds = %.lr.ph.us.i.preheader, %vector.body94
  %index95 = phi i64 [ %index.next98, %vector.body94 ], [ 0, %.lr.ph.us.i.preheader ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %.0168227.us.i, i64 %index95 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %wide.load96 = load <2 x double>, ptr %i.dt, align 8, !tbaa !29
  %wide.load97 = load <2 x double>, ptr %i.du, align 8, !tbaa !29
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %.0167.i, i64 %index95 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store <2 x double> %wide.load96, ptr %i.dv, align 8, !tbaa !29
  store <2 x double> %wide.load97, ptr %i.dw, align 8, !tbaa !29
  %index.next98 = add nuw i64 %index95, 4         ; 2 uses
  %i.dx = icmp eq i64 %index.next98, %n.vec93
  br i1 %i.dx, label %middle.block99, label %vector.body94, !llvm.loop !1038

middle.block99:                                   ; preds = %vector.body94
  br i1 %cmp.n100, label %.lr.ph217.us.i, label %.lr.ph.us.i.preheader156

.lr.ph.us.i.preheader156:                         ; preds = %.lr.ph.us.i.preheader, %middle.block99
  %indvars.iv351.i.ph = phi i64 [ 0, %.lr.ph.us.i.preheader ], [ %n.vec93, %middle.block99 ] ; 3 uses
  br i1 %lcmp.mod164.not, label %.lr.ph.us.i.prol.loopexit, label %.lr.ph.us.i.prol

.lr.ph.us.i.prol:                                 ; preds = %.lr.ph.us.i.preheader156, %.lr.ph.us.i.prol
  %indvars.iv351.i.prol = phi i64 [ %indvars.iv.next352.i.prol, %.lr.ph.us.i.prol ], [ %indvars.iv351.i.ph, %.lr.ph.us.i.preheader156 ] ; 3 uses
  %prol.iter165 = phi i64 [ %prol.iter165.next, %.lr.ph.us.i.prol ], [ 0, %.lr.ph.us.i.preheader156 ]
  %i.dy = mul i64 %indvars.iv351.i.prol, %.0165.i
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.0168227.us.i, i64 %i.dy
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !29
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.0167.i, i64 %indvars.iv351.i.prol
  store double %i.ea, ptr %i.eb, align 8, !tbaa !29
  %indvars.iv.next352.i.prol = add nuw nsw i64 %indvars.iv351.i.prol, 1 ; 2 uses
  %prol.iter165.next = add i64 %prol.iter165, 1   ; 2 uses
  %prol.iter165.cmp.not = icmp eq i64 %prol.iter165.next, %xtraiter163
  br i1 %prol.iter165.cmp.not, label %.lr.ph.us.i.prol.loopexit, label %.lr.ph.us.i.prol, !llvm.loop !1039

.lr.ph.us.i.prol.loopexit:                        ; preds = %.lr.ph.us.i.prol, %.lr.ph.us.i.preheader156
  %indvars.iv351.i.unr = phi i64 [ %indvars.iv351.i.ph, %.lr.ph.us.i.preheader156 ], [ %indvars.iv.next352.i.prol, %.lr.ph.us.i.prol ]
  %i.ec = sub nsw i64 %indvars.iv351.i.ph, %wide.trip.count354.i
  %i.ed = icmp ugt i64 %i.ec, -4
  br i1 %i.ed, label %.lr.ph217.us.i, label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.prol.loopexit, %.lr.ph.us.i
  %indvars.iv351.i = phi i64 [ %indvars.iv.next352.i.3, %.lr.ph.us.i ], [ %indvars.iv351.i.unr, %.lr.ph.us.i.prol.loopexit ] ; 6 uses
  %i.ee = mul i64 %indvars.iv351.i, %.0165.i
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %.0168227.us.i, i64 %i.ee
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !29
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.0167.i, i64 %indvars.iv351.i
  store double %i.eg, ptr %i.eh, align 8, !tbaa !29
  %indvars.iv.next352.i = add nuw nsw i64 %indvars.iv351.i, 1 ; 2 uses
  %i.ei = mul i64 %indvars.iv.next352.i, %.0165.i
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %.0168227.us.i, i64 %i.ei
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !29
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %.0167.i, i64 %indvars.iv.next352.i
  store double %i.ek, ptr %i.el, align 8, !tbaa !29
  %indvars.iv.next352.i.1 = add nuw nsw i64 %indvars.iv351.i, 2 ; 2 uses
  %i.em = mul i64 %indvars.iv.next352.i.1, %.0165.i
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %.0168227.us.i, i64 %i.em
  %i.eo = load double, ptr %i.en, align 8, !tbaa !29
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.0167.i, i64 %indvars.iv.next352.i.1
  store double %i.eo, ptr %i.ep, align 8, !tbaa !29
  %indvars.iv.next352.i.2 = add nuw nsw i64 %indvars.iv351.i, 3 ; 2 uses
  %i.eq = mul i64 %indvars.iv.next352.i.2, %.0165.i
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %.0168227.us.i, i64 %i.eq
  %i.es = load double, ptr %i.er, align 8, !tbaa !29
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.0167.i, i64 %indvars.iv.next352.i.2
  store double %i.es, ptr %i.et, align 8, !tbaa !29
  %indvars.iv.next352.i.3 = add nuw nsw i64 %indvars.iv351.i, 4 ; 2 uses
  %exitcond355.not.i.3 = icmp eq i64 %indvars.iv.next352.i.3, %wide.trip.count354.i
  br i1 %exitcond355.not.i.3, label %.lr.ph217.us.i, label %.lr.ph.us.i, !llvm.loop !1040

.lr.ph217.us.i:                                   ; preds = %.lr.ph.us.i.prol.loopexit, %.lr.ph.us.i, %middle.block99, %.lr.ph228.split.us.split.i
  %.0151.us.i = phi ptr [ %.0168227.us.i, %.lr.ph228.split.us.split.i ], [ %.0167.i, %middle.block99 ], [ %.0167.i, %.lr.ph.us.i ], [ %.0167.i, %.lr.ph.us.i.prol.loopexit ] ; 15 uses
  br i1 %i.y, label %.lr.ph217.us.i.split.us, label %.lr.ph217.us.i.split

.lr.ph217.us.i.split.us:                          ; preds = %.lr.ph217.us.i, %._crit_edge.us.i.loopexit.us
  %indvars.iv362.i.us = phi i64 [ %indvars.iv.next363.i.us, %._crit_edge.us.i.loopexit.us ], [ 0, %.lr.ph217.us.i ] ; 3 uses
  %.0164215.us230.i.us = phi ptr [ %i.he, %._crit_edge.us.i.loopexit.us ], [ %2, %.lr.ph217.us.i ] ; 11 uses
  br i1 %.not186.i, label %.lr.ph207.us.i.us.preheader, label %bb.f

bb.f:                                             ; preds = %.lr.ph217.us.i.split.us
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.i, i64 %indvars.iv362.i.us
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !29
  %i.ew = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ev, i64 0
  br label %.lr.ph207.us.i.us.preheader

.lr.ph207.us.i.us.preheader:                      ; preds = %bb.f, %.lr.ph217.us.i.split.us
  %.ph153 = phi <2 x double> [ zeroinitializer, %.lr.ph217.us.i.split.us ], [ %i.ew, %bb.f ] ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN2cv12cpu_baselineL16GEMMBlockMul_64fEPKdmS2_mPdmNS_5Size_IiEES5_i:bb.a
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %.0167.i, i64 %indvars.iv.i
  store double %i.jt, ptr %i.ju, align 8, !tbaa !29
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.jv = mul i64 %indvars.iv.next.i, %.0165.i
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %.0168227.i, i64 %i.jv
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !29
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %.0167.i, i64 %indvars.iv.next.i
  store double %i.jx, ptr %i.jy, align 8, !tbaa !29
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.jz = mul i64 %indvars.iv.next.i.1, %.0165.i
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %.0168227.i, i64 %i.jz
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !29
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %.0167.i, i64 %indvars.iv.next.i.1
  store double %i.kb, ptr %i.kc, align 8, !tbaa !29
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.kd = mul i64 %indvars.iv.next.i.2, %.0165.i
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %.0168227.i, i64 %i.kd
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !29
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %.0167.i, i64 %indvars.iv.next.i.2
  store double %i.kf, ptr %i.kg, align 8, !tbaa !29
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %..loopexit199_crit_edge.i, label %scalar.ph, !llvm.loop !1048

..loopexit199_crit_edge.i:                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.kh = add nuw nsw i32 %.0176226.i, 1          ; 2 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %.0168227.i, i64 %.0166.i
  %exitcond350.not.i = icmp eq i32 %i.kh, %.sroa.3.0.extract.trunc.i
  br i1 %exitcond350.not.i, label %.loopexit196.i, label %.preheader198.i, !llvm.loop !1033

bb.h:                                             ; preds = %._crit_edge305.i, %.lr.ph314.i
  %.1169313.i = phi ptr [ %0, %.lr.ph314.i ], [ %i.oq, %._crit_edge305.i ] ; 8 uses
  %.1177312.i = phi i32 [ 0, %.lr.ph314.i ], [ %i.op, %._crit_edge305.i ]
  %.1179309.i = phi ptr [ %4, %.lr.ph314.i ], [ %i.or, %._crit_edge305.i ] ; 7 uses
  %.1169313.mux.i = select i1 %.not181.i, ptr %.1169313.i, ptr %.0167.i
  br i1 %brmerge321.i, label %.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.h
  br i1 %or.cond141, label %vector.body132, label %.lr.ph.i.preheader144

vector.body132:                                   ; preds = %.lr.ph.i.preheader, %vector.body132
  %index133 = phi i64 [ %index.next136, %vector.body132 ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %.1169313.i, i64 %index133 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %wide.load134 = load <2 x double>, ptr %i.kj, align 8, !tbaa !29
  %wide.load135 = load <2 x double>, ptr %i.kk, align 8, !tbaa !29
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %.0167.i, i64 %index133 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  store <2 x double> %wide.load134, ptr %i.kl, align 8, !tbaa !29
  store <2 x double> %wide.load135, ptr %i.km, align 8, !tbaa !29
  %index.next136 = add nuw i64 %index133, 4       ; 2 uses
  %i.kn = icmp eq i64 %index.next136, %n.vec131
  br i1 %i.kn, label %middle.block137, label %vector.body132, !llvm.loop !1049

middle.block137:                                  ; preds = %vector.body132
  br i1 %cmp.n138, label %.loopexit.i, label %.lr.ph.i.preheader144

.lr.ph.i.preheader144:                            ; preds = %.lr.ph.i.preheader, %middle.block137
  %indvars.iv434.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec131, %middle.block137 ] ; 3 uses
  %i.ko = sub nsw i64 %i.jd, %indvars.iv434.i.ph
  br i1 %lcmp.mod208.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader144, %.lr.ph.i.prol
  %indvars.iv434.i.prol = phi i64 [ %indvars.iv.next435.i.prol, %.lr.ph.i.prol ], [ %indvars.iv434.i.ph, %.lr.ph.i.preheader144 ] ; 3 uses
  %prol.iter209 = phi i64 [ %prol.iter209.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader144 ]
  %i.kp = mul i64 %indvars.iv434.i.prol, %.0165.i
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %.1169313.i, i64 %i.kp
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !29
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %.0167.i, i64 %indvars.iv434.i.prol
  store double %i.kr, ptr %i.ks, align 8, !tbaa !29
  %indvars.iv.next435.i.prol = add nuw nsw i64 %indvars.iv434.i.prol, 1 ; 2 uses
  %prol.iter209.next = add i64 %prol.iter209, 1   ; 2 uses
  %prol.iter209.cmp.not = icmp eq i64 %prol.iter209.next, %xtraiter207
  br i1 %prol.iter209.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1050

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader144
  %indvars.iv434.i.unr = phi i64 [ %indvars.iv434.i.ph, %.lr.ph.i.preheader144 ], [ %indvars.iv.next435.i.prol, %.lr.ph.i.prol ]
  %i.kt = icmp ult i64 %i.ko, 3
  br i1 %i.kt, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv434.i = phi i64 [ %indvars.iv.next435.i.3, %.lr.ph.i ], [ %indvars.iv434.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.ku = mul i64 %indvars.iv434.i, %.0165.i
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %.1169313.i, i64 %i.ku
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !29
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %.0167.i, i64 %indvars.iv434.i
  store double %i.kw, ptr %i.kx, align 8, !tbaa !29
  %indvars.iv.next435.i = add nuw nsw i64 %indvars.iv434.i, 1 ; 2 uses
  %i.ky = mul i64 %indvars.iv.next435.i, %.0165.i
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %.1169313.i, i64 %i.ky
  %i.la = load double, ptr %i.kz, align 8, !tbaa !29
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %.0167.i, i64 %indvars.iv.next435.i
  store double %i.la, ptr %i.lb, align 8, !tbaa !29
  %indvars.iv.next435.i.1 = add nuw nsw i64 %indvars.iv434.i, 2 ; 2 uses
  %i.lc = mul i64 %indvars.iv.next435.i.1, %.0165.i
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %.1169313.i, i64 %i.lc
  %i.le = load double, ptr %i.ld, align 8, !tbaa !29
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %.0167.i, i64 %indvars.iv.next435.i.1
  store double %i.le, ptr %i.lf, align 8, !tbaa !29
  %indvars.iv.next435.i.2 = add nuw nsw i64 %indvars.iv434.i, 3 ; 2 uses
  %i.lg = mul i64 %indvars.iv.next435.i.2, %.0165.i
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %.1169313.i, i64 %i.lg
  %i.li = load double, ptr %i.lh, align 8, !tbaa !29
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %.0167.i, i64 %indvars.iv.next435.i.2
  store double %i.li, ptr %i.lj, align 8, !tbaa !29
  %indvars.iv.next435.i.3 = add nuw nsw i64 %indvars.iv434.i, 4 ; 2 uses
  %exitcond438.not.i.3 = icmp eq i64 %indvars.iv.next435.i.3, %wide.trip.count437.i
  br i1 %exitcond438.not.i.3, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !1051

.loopexit.i:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block137, %bb.h
  %.1.i = phi ptr [ %.1169313.mux.i, %bb.h ], [ %.0167.i, %middle.block137 ], [ %.0167.i, %.lr.ph.i ], [ %.0167.i, %.lr.ph.i.prol.loopexit ] ; 8 uses
  br i1 %.not182284.i, label %.preheader.i, label %.lr.ph287.i

.lr.ph287.i:                                      ; preds = %.loopexit.i
  br i1 %i.is, label %.lr.ph287.split.us.i, label %.lr.ph287.split.i

.lr.ph287.split.us.i:                             ; preds = %.lr.ph287.i, %._crit_edge.us289.i
  %indvars.iv450.i = phi i64 [ %indvars.iv.next451.i, %._crit_edge.us289.i ], [ 0, %.lr.ph287.i ] ; 4 uses
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv450.i ; 2 uses
  br i1 %.not184.i, label %.lr.ph280.us.i.preheader, label %bb.i

bb.i:                                             ; preds = %.lr.ph287.split.us.i
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %.1179309.i, i64 %indvars.iv450.i ; 2 uses
  %i.lm = load <2 x double>, ptr %i.ll, align 8, !tbaa !29
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %i.lo = load <2 x double>, ptr %i.ln, align 8, !tbaa !29
  br label %.lr.ph280.us.i.preheader

.lr.ph280.us.i.preheader:                         ; preds = %bb.i, %.lr.ph287.split.us.i
  %.ph = phi <2 x double> [ zeroinitializer, %.lr.ph287.split.us.i ], [ %i.lm, %bb.i ] ; 2 uses
  %.ph143 = phi <2 x double> [ zeroinitializer, %.lr.ph287.split.us.i ], [ %i.lo, %bb.i ] ; 2 uses
  br i1 %i.je, label %.lr.ph280.us.i.epil.preheader, label %.lr.ph280.us.i

.lr.ph280.us.i:                                   ; preds = %.lr.ph280.us.i.preheader, %.lr.ph280.us.i
  %indvars.iv445.i = phi i64 [ %indvars.iv.next446.i.1, %.lr.ph280.us.i ], [ 0, %.lr.ph280.us.i.preheader ] ; 3 uses
  %.0152279.us.i = phi ptr [ %i.ml, %.lr.ph280.us.i ], [ %i.lk, %.lr.ph280.us.i.preheader ] ; 3 uses
  %i.lp = phi <2 x double> [ %i.mh, %.lr.ph280.us.i ], [ %.ph, %.lr.ph280.us.i.preheader ]
  %i.lq = phi <2 x double> [ %i.mk, %.lr.ph280.us.i ], [ %.ph143, %.lr.ph280.us.i.preheader ]
  %niter221 = phi i64 [ %niter221.next.1, %.lr.ph280.us.i ], [ 0, %.lr.ph280.us.i.preheader ]
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %.1.i, i64 %indvars.iv445.i
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !29
  %i.lt = load <2 x double>, ptr %.0152279.us.i, align 8, !tbaa !29
  %i.lu = insertelement <2 x double> poison, double %i.ls, i64 0
  %i.lv = shufflevector <2 x double> %i.lu, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lv, <2 x double> %i.lt, <2 x double> %i.lp)
  %i.lx = getelementptr inbounds nuw i8, ptr %.0152279.us.i, i64 16
  %i.ly = load <2 x double>, ptr %i.lx, align 8, !tbaa !29
  %i.lz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lv, <2 x double> %i.ly, <2 x double> %i.lq)
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %.0152279.us.i, i64 %i.e ; 3 uses
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %.1.i, i64 %indvars.iv445.i
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.md = load double, ptr %i.mc, align 8, !tbaa !29
  %i.me = load <2 x double>, ptr %i.ma, align 8, !tbaa !29
  %i.mf = insertelement <2 x double> poison, double %i.md, i64 0
  %i.mg = shufflevector <2 x double> %i.mf, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mg, <2 x double> %i.me, <2 x double> %i.lw) ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  %i.mj = load <2 x double>, ptr %i.mi, align 8, !tbaa !29
  %i.mk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mg, <2 x double> %i.mj, <2 x double> %i.lz) ; 3 uses
  %indvars.iv.next446.i.1 = add nuw nsw i64 %indvars.iv445.i, 2 ; 2 uses
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %i.e ; 2 uses
  %niter221.next.1 = add i64 %niter221, 2         ; 2 uses
  %niter221.ncmp.1 = icmp eq i64 %niter221.next.1, %unroll_iter220
  br i1 %niter221.ncmp.1, label %._crit_edge.us289.i.unr-lcssa, label %.lr.ph280.us.i, !llvm.loop !1052

._crit_edge.us289.i.unr-lcssa:                    ; preds = %.lr.ph280.us.i
  br i1 %lcmp.mod216.not, label %._crit_edge.us289.i, label %.lr.ph280.us.i.epil.preheader

.lr.ph280.us.i.epil.preheader:                    ; preds = %._crit_edge.us289.i.unr-lcssa, %.lr.ph280.us.i.preheader
  %indvars.iv445.i.epil.init = phi i64 [ 0, %.lr.ph280.us.i.preheader ], [ %indvars.iv.next446.i.1, %._crit_edge.us289.i.unr-lcssa ]
  %.0152279.us.i.epil.init = phi ptr [ %i.lk, %.lr.ph280.us.i.preheader ], [ %i.ml, %._crit_edge.us289.i.unr-lcssa ] ; 2 uses
  %.epil.init213 = phi <2 x double> [ %.ph, %.lr.ph280.us.i.preheader ], [ %i.mh, %._crit_edge.us289.i.unr-lcssa ]
  %.epil.init215 = phi <2 x double> [ %.ph143, %.lr.ph280.us.i.preheader ], [ %i.mk, %._crit_edge.us289.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod219)
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %.1.i, i64 %indvars.iv445.i.epil.init
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !29
  %i.mo = load <2 x double>, ptr %.0152279.us.i.epil.init, align 8, !tbaa !29
  %i.mp = insertelement <2 x double> poison, double %i.mn, i64 0
  %i.mq = shufflevector <2 x double> %i.mp, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mq, <2 x double> %i.mo, <2 x double> %.epil.init213)
  %i.ms = getelementptr inbounds nuw i8, ptr %.0152279.us.i.epil.init, i64 16
  %i.mt = load <2 x double>, ptr %i.ms, align 8, !tbaa !29
  %i.mu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mq, <2 x double> %i.mt, <2 x double> %.epil.init215)
  br label %._crit_edge.us289.i

._crit_edge.us289.i:                              ; preds = %._crit_edge.us289.i.unr-lcssa, %.lr.ph280.us.i.epil.preheader
  %.lcssa145 = phi <2 x double> [ %i.mh, %._crit_edge.us289.i.unr-lcssa ], [ %i.mr, %.lr.ph280.us.i.epil.preheader ]
  %.lcssa = phi <2 x double> [ %i.mk, %._crit_edge.us289.i.unr-lcssa ], [ %i.mu, %.lr.ph280.us.i.epil.preheader ]
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %.1179309.i, i64 %indvars.iv450.i ; 2 uses
  store <2 x double> %.lcssa145, ptr %i.mv, align 8, !tbaa !29
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  store <2 x double> %.lcssa, ptr %i.mw, align 8, !tbaa !29
  %indvars.iv.next451.i = add nuw nsw i64 %indvars.iv450.i, 4 ; 3 uses
  %.not182.us.i = icmp sgt i64 %indvars.iv.next451.i, %i.it
  br i1 %.not182.us.i, label %.preheader.loopexit.i, label %.lr.ph287.split.us.i, !llvm.loop !1053

.lr.ph287.split.i:                                ; preds = %.lr.ph287.i
  br i1 %.not184.i, label %.lr.ph287.split.split.us.preheader.i, label %.preheader.i

.lr.ph287.split.split.us.preheader.i:             ; preds = %.lr.ph287.split.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.1179309.i, i8 0, i64 %i.ix, i1 false), !tbaa !29
  br label %.preheader.i

.preheader.loopexit.i:                            ; preds = %._crit_edge.us289.i
  %i.mx = trunc nuw nsw i64 %indvars.iv.next451.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph287.split.i, %.preheader.loopexit.i, %.lr.ph287.split.split.us.preheader.i, %.loopexit.i
  %.1174.lcssa.i = phi i32 [ 0, %.loopexit.i ], [ %i.iz, %.lr.ph287.split.split.us.preheader.i ], [ %i.mx, %.preheader.loopexit.i ], [ %i.jc, %.lr.ph287.split.i ] ; 4 uses
  %i.my = icmp slt i32 %.1174.lcssa.i, %.sroa.0.0.extract.trunc.i
  br i1 %i.my, label %.lr.ph304.i, label %._crit_edge305.i

.lr.ph304.i:                                      ; preds = %.preheader.i
  br i1 %i.is, label %.lr.ph304.split.us.preheader.i, label %.lr.ph304.split.i

.lr.ph304.split.us.preheader.i:                   ; preds = %.lr.ph304.i
  %i.mz = zext i32 %.1174.lcssa.i to i64
  br label %.lr.ph304.split.us.i

.lr.ph304.split.us.i:                             ; preds = %._crit_edge.us306.i, %.lr.ph304.split.us.preheader.i
  %indvars.iv461.i = phi i64 [ %i.mz, %.lr.ph304.split.us.preheader.i ], [ %indvars.iv.next462.i, %._crit_edge.us306.i ] ; 4 uses
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv461.i ; 2 uses
  br i1 %.not184.i, label %.lr.ph302.us.i.preheader, label %bb.j

bb.j:                                             ; preds = %.lr.ph304.split.us.i
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %.1179309.i, i64 %indvars.iv461.i
  %i.nc = load double, ptr %i.nb, align 8, !tbaa !29
  br label %.lr.ph302.us.i.preheader

.lr.ph302.us.i.preheader:                         ; preds = %bb.j, %.lr.ph304.split.us.i
  %.0301.us.i.ph = phi double [ 0.000000e+00, %.lr.ph304.split.us.i ], [ %i.nc, %bb.j ] ; 2 uses
  br i1 %i.jf, label %.lr.ph302.us.i.epil.preheader, label %.lr.ph302.us.i

.lr.ph302.us.i:                                   ; preds = %.lr.ph302.us.i.preheader, %.lr.ph302.us.i
  %indvars.iv456.i = phi i64 [ %indvars.iv.next457.i.3, %.lr.ph302.us.i ], [ 0, %.lr.ph302.us.i.preheader ] ; 5 uses
  %.0301.us.i = phi double [ %i.ny, %.lr.ph302.us.i ], [ %.0301.us.i.ph, %.lr.ph302.us.i.preheader ]
  %.0150300.us.i = phi ptr [ %i.nz, %.lr.ph302.us.i ], [ %i.na, %.lr.ph302.us.i.preheader ] ; 2 uses
  %niter228 = phi i64 [ %niter228.next.3, %.lr.ph302.us.i ], [ 0, %.lr.ph302.us.i.preheader ]
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %.1.i, i64 %indvars.iv456.i
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !29
  %i.nf = load double, ptr %.0150300.us.i, align 8, !tbaa !29
  %i.ng = call double @llvm.fmuladd.f64(double %i.ne, double %i.nf, double %.0301.us.i)
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %.0150300.us.i, i64 %i.e ; 2 uses
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %.1.i, i64 %indvars.iv456.i
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !29
  %i.nl = load double, ptr %i.nh, align 8, !tbaa !29
  %i.nm = call double @llvm.fmuladd.f64(double %i.nk, double %i.nl, double %i.ng)
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %i.e ; 2 uses
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %.1.i, i64 %indvars.iv456.i
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  %i.nq = load double, ptr %i.np, align 8, !tbaa !29
  %i.nr = load double, ptr %i.nn, align 8, !tbaa !29
  %i.ns = call double @llvm.fmuladd.f64(double %i.nq, double %i.nr, double %i.nm)
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %i.e ; 2 uses
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %.1.i, i64 %indvars.iv456.i
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 24
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !29
  %i.nx = load double, ptr %i.nt, align 8, !tbaa !29
  %i.ny = call double @llvm.fmuladd.f64(double %i.nw, double %i.nx, double %i.ns) ; 3 uses
  %indvars.iv.next457.i.3 = add nuw nsw i64 %indvars.iv456.i, 4 ; 2 uses
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %i.e ; 2 uses
  %niter228.next.3 = add i64 %niter228, 4         ; 2 uses
  %niter228.ncmp.3 = icmp eq i64 %niter228.next.3, %unroll_iter227
  br i1 %niter228.ncmp.3, label %._crit_edge.us306.i.unr-lcssa, label %.lr.ph302.us.i, !llvm.loop !1054

._crit_edge.us306.i.unr-lcssa:                    ; preds = %.lr.ph302.us.i
  br i1 %lcmp.mod224.not, label %._crit_edge.us306.i, label %.lr.ph302.us.i.epil.preheader

.lr.ph302.us.i.epil.preheader:                    ; preds = %._crit_edge.us306.i.unr-lcssa, %.lr.ph302.us.i.preheader
  %indvars.iv456.i.epil.init = phi i64 [ 0, %.lr.ph302.us.i.preheader ], [ %indvars.iv.next457.i.3, %._crit_edge.us306.i.unr-lcssa ]
  %.0301.us.i.epil.init = phi double [ %.0301.us.i.ph, %.lr.ph302.us.i.preheader ], [ %i.ny, %._crit_edge.us306.i.unr-lcssa ]
  %.0150300.us.i.epil.init = phi ptr [ %i.na, %.lr.ph302.us.i.preheader ], [ %i.nz, %._crit_edge.us306.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod226)
  br label %.lr.ph302.us.i.epil

.lr.ph302.us.i.epil:                              ; preds = %.lr.ph302.us.i.epil, %.lr.ph302.us.i.epil.preheader
  %indvars.iv456.i.epil = phi i64 [ %indvars.iv.next457.i.epil, %.lr.ph302.us.i.epil ], [ %indvars.iv456.i.epil.init, %.lr.ph302.us.i.epil.preheader ] ; 2 uses
  %.0301.us.i.epil = phi double [ %i.od, %.lr.ph302.us.i.epil ], [ %.0301.us.i.epil.init, %.lr.ph302.us.i.epil.preheader ]
  %.0150300.us.i.epil = phi ptr [ %i.oe, %.lr.ph302.us.i.epil ], [ %.0150300.us.i.epil.init, %.lr.ph302.us.i.epil.preheader ] ; 2 uses
  %epil.iter223 = phi i64 [ %epil.iter223.next, %.lr.ph302.us.i.epil ], [ 0, %.lr.ph302.us.i.epil.preheader ]
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %.1.i, i64 %indvars.iv456.i.epil
  %i.ob = load double, ptr %i.oa, align 8, !tbaa !29
  %i.oc = load double, ptr %.0150300.us.i.epil, align 8, !tbaa !29
  %i.od = call double @llvm.fmuladd.f64(double %i.ob, double %i.oc, double %.0301.us.i.epil) ; 2 uses
  %indvars.iv.next457.i.epil = add nuw nsw i64 %indvars.iv456.i.epil, 1
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %.0150300.us.i.epil, i64 %i.e
  %epil.iter223.next = add i64 %epil.iter223, 1   ; 2 uses
  %epil.iter223.cmp.not = icmp eq i64 %epil.iter223.next, %xtraiter222
  br i1 %epil.iter223.cmp.not, label %._crit_edge.us306.i, label %.lr.ph302.us.i.epil, !llvm.loop !1055

._crit_edge.us306.i:                              ; preds = %.lr.ph302.us.i.epil, %._crit_edge.us306.i.unr-lcssa
  %.lcssa146 = phi double [ %i.ny, %._crit_edge.us306.i.unr-lcssa ], [ %i.od, %.lr.ph302.us.i.epil ]
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %.1179309.i, i64 %indvars.iv461.i
  store double %.lcssa146, ptr %i.of, align 8, !tbaa !29
  %indvars.iv.next462.i = add nuw nsw i64 %indvars.iv461.i, 1 ; 2 uses
  %i.og = trunc nuw i64 %indvars.iv.next462.i to i32
  %i.oh = icmp slt i32 %i.og, %.sroa.0.0.extract.trunc.i
  br i1 %i.oh, label %.lr.ph304.split.us.i, label %._crit_edge305.i, !llvm.loop !1056

.lr.ph304.split.i:                                ; preds = %.lr.ph304.i
  br i1 %.not184.i, label %.lr.ph304.split.split.us.preheader.i, label %._crit_edge305.i

.lr.ph304.split.split.us.preheader.i:             ; preds = %.lr.ph304.split.i
  %i.oi = zext i32 %.1174.lcssa.i to i64
  %i.oj = shl nuw nsw i64 %i.oi, 3
  %scevgep.i = getelementptr i8, ptr %.1179309.i, i64 %i.oj
  %i.ok = xor i32 %.1174.lcssa.i, -1
  %i.ol = add i32 %i.ok, %.sroa.0.0.extract.trunc.i
  %i.om = zext i32 %i.ol to i64
  %i.on = shl nuw nsw i64 %i.om, 3
  %i.oo = add nuw nsw i64 %i.on, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.oo, i1 false), !tbaa !29
  br label %._crit_edge305.i

._crit_edge305.i:                                 ; preds = %._crit_edge.us306.i, %.lr.ph304.split.split.us.preheader.i, %.lr.ph304.split.i, %.preheader.i
  %i.op = add nuw nsw i32 %.1177312.i, 1          ; 2 uses
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %.1169313.i, i64 %.0166.i
  %i.or = getelementptr [8 x i8], ptr %.1179309.i, i64 %i.f
  %exitcond464.not.i = icmp eq i32 %i.op, %.sroa.3.0.extract.trunc.i
  br i1 %exitcond464.not.i, label %.loopexit196.i, label %bb.h, !llvm.loop !1057

.loopexit196.i.loopexit149.unr-lcssa:             ; preds = %.lr.ph217.us.us.us249.us.i
  %lcmp.mod191.not = icmp eq i32 %xtraiter189, 0
  br i1 %lcmp.mod191.not, label %.loopexit196.i, label %.lr.ph217.us.us.us249.us.i.epil.preheader

.lr.ph217.us.us.us249.us.i.epil.preheader:        ; preds = %.loopexit196.i.loopexit149.unr-lcssa, %.lr.ph217.us.us.us249.us.i.preheader
  %.0178222.us.us.us243.us.i.epil.init = phi ptr [ %4, %.lr.ph217.us.us.us249.us.i.preheader ], [ %i.cq, %.loopexit196.i.loopexit149.unr-lcssa ]
  %lcmp.mod192 = icmp ne i32 %xtraiter189, 0
  call void @llvm.assume(i1 %lcmp.mod192)
  br label %.lr.ph217.us.us.us249.us.i.epil

.lr.ph217.us.us.us249.us.i.epil:                  ; preds = %.lr.ph217.us.us.us249.us.i.epil, %.lr.ph217.us.us.us249.us.i.epil.preheader
  %.0178222.us.us.us243.us.i.epil = phi ptr [ %i.os, %.lr.ph217.us.us.us249.us.i.epil ], [ %.0178222.us.us.us243.us.i.epil.init, %.lr.ph217.us.us.us249.us.i.epil.preheader ] ; 2 uses
  %epil.iter190 = phi i32 [ %epil.iter190.next, %.lr.ph217.us.us.us249.us.i.epil ], [ 0, %.lr.ph217.us.us.us249.us.i.epil.preheader ]
  call void @llvm.memset.p0.i64(ptr align 8 %.0178222.us.us.us243.us.i.epil, i8 0, i64 %i.cg, i1 false), !tbaa !29
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.us.us243.us.i.epil, i64 %i.f
  %epil.iter190.next = add i32 %epil.iter190, 1   ; 2 uses
  %epil.iter190.cmp.not = icmp eq i32 %epil.iter190.next, %xtraiter189
  br i1 %epil.iter190.cmp.not, label %.loopexit196.i, label %.lr.ph217.us.us.us249.us.i.epil, !llvm.loop !1058

.loopexit196.i.loopexit150.unr-lcssa:             ; preds = %.preheader198.us.us.us244.i
  %lcmp.mod185.not = icmp eq i32 %xtraiter183, 0
  br i1 %lcmp.mod185.not, label %.loopexit196.i, label %.preheader198.us.us.us244.i.epil.preheader

.preheader198.us.us.us244.i.epil.preheader:       ; preds = %.loopexit196.i.loopexit150.unr-lcssa, %.preheader198.us.us.us244.i.preheader
  %.0178222.us.us.us243.i.epil.init = phi ptr [ %4, %.preheader198.us.us.us244.i.preheader ], [ %i.cy, %.loopexit196.i.loopexit150.unr-lcssa ]
  %lcmp.mod186 = icmp ne i32 %xtraiter183, 0
  call void @llvm.assume(i1 %lcmp.mod186)
  br label %.preheader198.us.us.us244.i.epil

.preheader198.us.us.us244.i.epil:                 ; preds = %.preheader198.us.us.us244.i.epil, %.preheader198.us.us.us244.i.epil.preheader
  %.0178222.us.us.us243.i.epil = phi ptr [ %i.ot, %.preheader198.us.us.us244.i.epil ], [ %.0178222.us.us.us243.i.epil.init, %.preheader198.us.us.us244.i.epil.preheader ] ; 2 uses
  %epil.iter184 = phi i32 [ %epil.iter184.next, %.preheader198.us.us.us244.i.epil ], [ 0, %.preheader198.us.us.us244.i.epil.preheader ]
  call void @llvm.memset.p0.i64(ptr align 8 %.0178222.us.us.us243.i.epil, i8 0, i64 %i.cg, i1 false), !tbaa !29
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.us.us243.i.epil, i64 %i.f
  %epil.iter184.next = add i32 %epil.iter184, 1   ; 2 uses
  %epil.iter184.cmp.not = icmp eq i32 %epil.iter184.next, %xtraiter183
  br i1 %epil.iter184.cmp.not, label %.loopexit196.i, label %.preheader198.us.us.us244.i.epil, !llvm.loop !1059

.loopexit196.i:                                   ; preds = %..loopexit199_crit_edge.i, %._crit_edge218.split.us232.i, %._crit_edge218.split.us.split.split.us238.us.i, %._crit_edge218.split.us.split.split.us238.us.us.i, %.loopexit196.i.loopexit150.unr-lcssa, %.preheader198.us.us.us244.i.epil, %.loopexit196.i.loopexit149.unr-lcssa, %.lr.ph217.us.us.us249.us.i.epil, %._crit_edge218.split.us.split.us.us.us.us.i.loopexit9, %._crit_edge218.split.us.split.us.us.us.us.i.loopexit.us, %._crit_edge305.i, %.preheader195.i, %.lr.ph228.split.i, %.preheader200.i
  %.not.i.i190.i = icmp eq ptr %i.p, %i.a
  br i1 %.not.i.i190.i, label %_ZN2cv12cpu_baselineL12GEMMBlockMulIddEEvPKT_mS4_mPT0_mNS_5Size_IiEES8_i.exit, label %bb.k

bb.k:                                             ; preds = %.loopexit196.i
  call void @_ZdaPv(ptr noundef nonnull %i.p) #27
  br label %_ZN2cv12cpu_baselineL12GEMMBlockMulIddEEvPKT_mS4_mPT0_mNS_5Size_IiEES8_i.exit

_ZN2cv12cpu_baselineL12GEMMBlockMulIddEEvPKT_mS4_mPT0_mNS_5Size_IiEES8_i.exit: ; preds = %.loopexit196.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv12cpu_baselineL13GEMMStore_64fEPKdmS2_mPdmNS_5Size_IiEEddi(ptr nofree noundef readonly captures(address) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 %6, double noundef %7, double noundef %8, i32 noundef %9) unnamed_addr #7 {
bb.a:
  %.fr.i = freeze i64 %6                          ; 8 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %.fr.i, 32 ; 3 uses
  %i.a = lshr i64 %1, 3                           ; 2 uses
  %i.b = lshr i64 %3, 3                           ; 2 uses
  %i.c = lshr i64 %5, 3                           ; 2 uses
  %.not.i = icmp eq ptr %0, null                  ; 2 uses
  %i.d = and i32 %9, 4
  %.not41.i = icmp eq i32 %i.d, 0                 ; 2 uses
  %..i = select i1 %.not41.i, i64 %i.a, i64 1
  %.44.i = select i1 %.not41.i, i64 1, i64 %i.a
  %.035.i = select i1 %.not.i, i64 0, i64 %..i
  %.0.i = select i1 %.not.i, i64 0, i64 %.44.i    ; 2 uses
  %.not4251.i = icmp ne i64 %.sroa.3.0.extract.shift.i, 0
  %.sroa.0.0.extract.trunc.i = trunc i64 %.fr.i to i32
  %i.e = icmp sgt i32 %.sroa.0.0.extract.trunc.i, 0
  %or.cond.i = and i1 %.not4251.i, %i.e
  br i1 %or.cond.i, label %.lr.ph58.split.us.split.us.preheader.i, label %_ZN2cv12cpu_baselineL9GEMMStoreIddEEvPKT_mPKT0_mPS2_mNS_5Size_IiEEddi.exit

.lr.ph58.split.us.split.us.preheader.i:           ; preds = %bb.a
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32
  %wide.trip.count85.i = and i64 %.fr.i, 2147483647 ; 7 uses
  %i.f = add nuw nsw i64 %.sroa.3.0.extract.shift.i, 4294967295
  %i.g = and i64 %i.f, 4294967295                 ; 2 uses
  %i.h = mul i64 %i.c, %i.g
  %i.i = add i64 %i.h, %wide.trip.count85.i
  %i.j = shl i64 %i.i, 3
  %scevgep = getelementptr i8, ptr %4, i64 %i.j
  %i.k = mul i64 %i.b, %i.g
  %i.l = add i64 %i.k, %wide.trip.count85.i
  %i.m = shl i64 %i.l, 3
  %scevgep13 = getelementptr i8, ptr %2, i64 %i.m
  %xtraiter = and i64 %.fr.i, 1
  %i.n = icmp eq i64 %wide.trip.count85.i, 1
  %unroll_iter = and i64 %.fr.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod18 = trunc i64 %.fr.i to i1
  %min.iters.check = icmp samesign ult i64 %wide.trip.count85.i, 6
  %bound0 = icmp ult ptr %4, %scevgep13
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.o = or i64 %3, %5
  %i.p = icmp slt i64 %i.o, 0
  %i.q = or i1 %found.conflict, %i.p
  %n.vec = and i64 %.fr.i, 2147483644             ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %7, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %wide.trip.count85.i, %n.vec
  %xtraiter19 = and i64 %.fr.i, 3                 ; 2 uses
  %lcmp.mod20.not = icmp eq i64 %xtraiter19, 0
  br label %.lr.ph58.split.us.split.us.i

.lr.ph58.split.us.split.us.i:                     ; preds = %..loopexit46_crit_edge.us.us.i, %.lr.ph58.split.us.split.us.preheader.i
  %.in.i = phi i32 [ %i.r, %..loopexit46_crit_edge.us.us.i ], [ %.sroa.3.0.extract.trunc.i, %.lr.ph58.split.us.split.us.preheader.i ]
  %.03756.us.us.i = phi ptr [ %i.bp, %..loopexit46_crit_edge.us.us.i ], [ %0, %.lr.ph58.split.us.split.us.preheader.i ] ; 4 uses
  %.03954.us.us.i = phi ptr [ %i.bq, %..loopexit46_crit_edge.us.us.i ], [ %2, %.lr.ph58.split.us.split.us.preheader.i ] ; 10 uses
  %.04052.us.us.i = phi ptr [ %i.br, %..loopexit46_crit_edge.us.us.i ], [ %4, %.lr.ph58.split.us.split.us.preheader.i ] ; 10 uses
  %i.r = add nsw i32 %.in.i, -1                   ; 2 uses
  %.not43.us.us.i = icmp eq ptr %.03756.us.us.i, null
  br i1 %.not43.us.us.i, label %.preheader.us.us.i.preheader, label %.preheader45.us.us.i.preheader

.preheader45.us.us.i.preheader:                   ; preds = %.lr.ph58.split.us.split.us.i
  br i1 %i.n, label %.preheader45.us.us.i.epil.preheader, label %.preheader45.us.us.i

.preheader.us.us.i.preheader:                     ; preds = %.lr.ph58.split.us.split.us.i
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.q
  br i1 %brmerge, label %.preheader.us.us.i.preheader16, label %vector.body

vector.body:                                      ; preds = %.preheader.us.us.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.us.i.preheader ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.03954.us.us.i, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <2 x double>, ptr %i.s, align 8, !tbaa !29, !alias.scope !1068
  %wide.load15 = load <2 x double>, ptr %i.t, align 8, !tbaa !29, !alias.scope !1068
  %i.u = fmul <2 x double> %broadcast.splat, %wide.load
  %i.v = fmul <2 x double> %broadcast.splat, %wide.load15
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.04052.us.us.i, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x double> %i.u, ptr %i.w, align 8, !tbaa !29, !alias.scope !1069, !noalias !1068
  store <2 x double> %i.v, ptr %i.x, align 8, !tbaa !29, !alias.scope !1069, !noalias !1068
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !1063

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit46_crit_edge.us.us.i, label %.preheader.us.us.i.preheader16

.preheader.us.us.i.preheader16:                   ; preds = %.preheader.us.us.i.preheader, %middle.block
  %indvars.iv87.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.us.us.i.preheader ] ; 3 uses
  br i1 %lcmp.mod20.not, label %.preheader.us.us.i.prol.loopexit, label %.preheader.us.us.i.prol

.preheader.us.us.i.prol:                          ; preds = %.preheader.us.us.i.preheader16, %.preheader.us.us.i.prol
  %indvars.iv87.i.prol = phi i64 [ %indvars.iv.next88.i.prol, %.preheader.us.us.i.prol ], [ %indvars.iv87.i.ph, %.preheader.us.us.i.preheader16 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.us.us.i.prol ], [ 0, %.preheader.us.us.i.preheader16 ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.03954.us.us.i, i64 %indvars.iv87.i.prol
  %i.aa = load double, ptr %i.z, align 8, !tbaa !29
  %i.ab = fmul double %7, %i.aa
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.04052.us.us.i, i64 %indvars.iv87.i.prol
  store double %i.ab, ptr %i.ac, align 8, !tbaa !29
  %indvars.iv.next88.i.prol = add nuw nsw i64 %indvars.iv87.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter19
  br i1 %prol.iter.cmp.not, label %.preheader.us.us.i.prol.loopexit, label %.preheader.us.us.i.prol, !llvm.loop !1064

.preheader.us.us.i.prol.loopexit:                 ; preds = %.preheader.us.us.i.prol, %.preheader.us.us.i.preheader16
  %indvars.iv87.i.unr = phi i64 [ %indvars.iv87.i.ph, %.preheader.us.us.i.preheader16 ], [ %indvars.iv.next88.i.prol, %.preheader.us.us.i.prol ]
  %i.ad = sub nsw i64 %indvars.iv87.i.ph, %wide.trip.count85.i
  %i.ae = icmp ugt i64 %i.ad, -4
  br i1 %i.ae, label %..loopexit46_crit_edge.us.us.i, label %.preheader.us.us.i

.preheader45.us.us.i:                             ; preds = %.preheader45.us.us.i.preheader, %.preheader45.us.us.i
  %indvars.iv82.i = phi i64 [ %indvars.iv.next83.i.1, %.preheader45.us.us.i ], [ 0, %.preheader45.us.us.i.preheader ] ; 4 uses
  %.03847.us.us.i = phi ptr [ %i.as, %.preheader45.us.us.i ], [ %.03756.us.us.i, %.preheader45.us.us.i.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.preheader45.us.us.i ], [ 0, %.preheader45.us.us.i.preheader ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.03954.us.us.i, i64 %indvars.iv82.i
  %i.ag = load double, ptr %i.af, align 8, !tbaa !29
  %i.ah = fmul double %7, %i.ag
  %i.ai = load double, ptr %.03847.us.us.i, align 8, !tbaa !29
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ai, double %8, double %i.ah)
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.04052.us.us.i, i64 %indvars.iv82.i
  store double %i.aj, ptr %i.ak, align 8, !tbaa !29
  %indvars.iv.next83.i = or disjoint i64 %indvars.iv82.i, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.03847.us.us.i, i64 %.0.i ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.03954.us.us.i, i64 %indvars.iv.next83.i
  %i.an = load double, ptr %i.am, align 8, !tbaa !29
  %i.ao = fmul double %7, %i.an
  %i.ap = load double, ptr %i.al, align 8, !tbaa !29
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ap, double %8, double %i.ao)
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.04052.us.us.i, i64 %indvars.iv.next83.i
  store double %i.aq, ptr %i.ar, align 8, !tbaa !29
  %indvars.iv.next83.i.1 = add nuw nsw i64 %indvars.iv82.i, 2 ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.0.i ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit46_crit_edge.us.us.i.loopexit17.unr-lcssa, label %.preheader45.us.us.i, !llvm.loop !1065

.preheader.us.us.i:                               ; preds = %.preheader.us.us.i.prol.loopexit, %.preheader.us.us.i
  %indvars.iv87.i = phi i64 [ %indvars.iv.next88.i.3, %.preheader.us.us.i ], [ %indvars.iv87.i.unr, %.preheader.us.us.i.prol.loopexit ] ; 6 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.03954.us.us.i, i64 %indvars.iv87.i
  %i.au = load double, ptr %i.at, align 8, !tbaa !29
  %i.av = fmul double %7, %i.au
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.04052.us.us.i, i64 %indvars.iv87.i
  store double %i.av, ptr %i.aw, align 8, !tbaa !29
  %indvars.iv.next88.i = add nuw nsw i64 %indvars.iv87.i, 1 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.03954.us.us.i, i64 %indvars.iv.next88.i
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !29
  %i.az = fmul double %7, %i.ay
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.04052.us.us.i, i64 %indvars.iv.next88.i
  store double %i.az, ptr %i.ba, align 8, !tbaa !29
  %indvars.iv.next88.i.1 = add nuw nsw i64 %indvars.iv87.i, 2 ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.03954.us.us.i, i64 %indvars.iv.next88.i.1
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !29
  %i.bd = fmul double %7, %i.bc
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.04052.us.us.i, i64 %indvars.iv.next88.i.1
  store double %i.bd, ptr %i.be, align 8, !tbaa !29
  %indvars.iv.next88.i.2 = add nuw nsw i64 %indvars.iv87.i, 3 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.03954.us.us.i, i64 %indvars.iv.next88.i.2
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !29
  %i.bh = fmul double %7, %i.bg
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.04052.us.us.i, i64 %indvars.iv.next88.i.2
  store double %i.bh, ptr %i.bi, align 8, !tbaa !29
  %indvars.iv.next88.i.3 = add nuw nsw i64 %indvars.iv87.i, 4 ; 2 uses
  %exitcond91.not.i.3 = icmp eq i64 %indvars.iv.next88.i.3, %wide.trip.count85.i
  br i1 %exitcond91.not.i.3, label %..loopexit46_crit_edge.us.us.i, label %.preheader.us.us.i, !llvm.loop !1066

..loopexit46_crit_edge.us.us.i.loopexit17.unr-lcssa: ; preds = %.preheader45.us.us.i
  br i1 %lcmp.mod.not, label %..loopexit46_crit_edge.us.us.i, label %.preheader45.us.us.i.epil.preheader

.preheader45.us.us.i.epil.preheader:              ; preds = %..loopexit46_crit_edge.us.us.i.loopexit17.unr-lcssa, %.preheader45.us.us.i.preheader
  %indvars.iv82.i.epil.init = phi i64 [ 0, %.preheader45.us.us.i.preheader ], [ %indvars.iv.next83.i.1, %..loopexit46_crit_edge.us.us.i.loopexit17.unr-lcssa ] ; 2 uses
  %.03847.us.us.i.epil.init = phi ptr [ %.03756.us.us.i, %.preheader45.us.us.i.preheader ], [ %i.as, %..loopexit46_crit_edge.us.us.i.loopexit17.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod18)
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.03954.us.us.i, i64 %indvars.iv82.i.epil.init
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !29
  %i.bl = fmul double %7, %i.bk
  %i.bm = load double, ptr %.03847.us.us.i.epil.init, align 8, !tbaa !29
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bm, double %8, double %i.bl)
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.04052.us.us.i, i64 %indvars.iv82.i.epil.init
  store double %i.bn, ptr %i.bo, align 8, !tbaa !29
  br label %..loopexit46_crit_edge.us.us.i
end_hunk_7
begin_hunk_8_@_ZN2cv12cpu_baselineL18GEMMSingleMul_32fcEPKNS_7ComplexIfEEmS4_mS4_mPS2_mNS_5Size_IiEES7_ddi:bb.a
  %i.sa = phi <2 x double> [ zeroinitializer, %.lr.ph1069.i ], [ %i.rm, %._crit_edge1064.i.loopexit.unr-lcssa ], [ %i.rz, %.lr.ph1063.i.epil.preheader ]
  %i.sb = fmul <2 x double> %i.ls, %i.sa          ; 2 uses
  %.not421.i = icmp eq ptr %.44041067.i, null
  br i1 %.not421.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge1064.i
  %i.sc = load <2 x float>, ptr %.44041067.i, align 4, !tbaa !22
  %i.sd = fpext <2 x float> %i.sc to <2 x double>
  %i.se = fmul <2 x double> %i.lu, %i.sd
  %i.sf = fadd <2 x double> %i.sb, %i.se
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %._crit_edge1064.i
  %i.sg = phi <2 x double> [ %i.sf, %bb.ak ], [ %i.sb, %._crit_edge1064.i ]
  %i.sh = fptrunc <2 x double> %i.sg to <2 x float>
  %i.si = getelementptr inbounds nuw [8 x i8], ptr %.23981071.i, i64 %indvars.iv1181.i
  store <2 x float> %i.sh, ptr %i.si, align 4, !tbaa !22
  %indvars.iv.next1182.i = add nuw nsw i64 %indvars.iv1181.i, 1 ; 2 uses
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %.44041067.i, i64 %.0354.i
  %exitcond1185.not.i = icmp eq i64 %indvars.iv.next1182.i, %wide.trip.count1184.i
  br i1 %exitcond1185.not.i, label %._crit_edge1070.i, label %.lr.ph1069.i, !llvm.loop !1092

._crit_edge1070.i:                                ; preds = %bb.al, %.preheader970.i
  %i.sk = add nuw nsw i32 %.23871072.i, 1         ; 2 uses
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %.13641073.i, i64 %.0357967.i
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %.23611074.i, i64 %.0355.i
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %.23981071.i, i64 %i.e
  %exitcond1186.not.i = icmp eq i32 %i.sk, %.sroa.8.0.extract.trunc.i
  br i1 %exitcond1186.not.i, label %.loopexit974.i, label %bb.ag, !llvm.loop !1093

bb.am:                                            ; preds = %bb.af
  %i.so = ashr exact i64 %sext.i, 32              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %scevgep.i778.i = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1152) %scevgep.i778.i, i8 0, i64 1152, i1 false)
  store ptr %scevgep.i778.i, ptr %15, align 8, !tbaa !86
  %i.sp = getelementptr inbounds nuw i8, ptr %15, i64 8
  %.not.i.i779.i = icmp ugt i64 %i.so, 72
  store i64 %i.so, ptr %i.sp, align 8, !tbaa !87
  br i1 %.not.i.i779.i, label %bb.an, label %_ZN2cv10AutoBufferINS_7ComplexIdEELm72EEC2Em.exit.i

bb.an:                                            ; preds = %bb.am
  %i.sq = icmp ugt i64 %i.so, 1152921504606846975
  %i.sr = ashr exact i64 %sext.i, 28              ; 2 uses
  %i.ss = select i1 %i.sq, i64 -1, i64 %i.sr
  %i.st = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ss) #28
          to label %.noexc780.i unwind label %bb.ap ; 3 uses

.noexc780.i:                                      ; preds = %bb.an
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.st, i8 0, i64 %i.sr, i1 false)
  store ptr %i.st, ptr %15, align 8, !tbaa !86
  br label %_ZN2cv10AutoBufferINS_7ComplexIdEELm72EEC2Em.exit.i

_ZN2cv10AutoBufferINS_7ComplexIdEELm72EEC2Em.exit.i: ; preds = %.noexc780.i, %bb.am
  %i.su = phi ptr [ %i.st, %.noexc780.i ], [ %scevgep.i778.i, %bb.am ] ; 11 uses
  %i.sv = icmp sgt i32 %.sroa.8.0.extract.trunc.i, 0
  br i1 %i.sv, label %.lr.ph1026.i, label %._crit_edge1027.i

.lr.ph1026.i:                                     ; preds = %_ZN2cv10AutoBufferINS_7ComplexIdEELm72EEC2Em.exit.i
  %.not412.i = icmp eq ptr %.0358966.i, null      ; 2 uses
  %i.sw = icmp slt i32 %.0366965.i, 1             ; 2 uses
  %i.sx = icmp sgt i32 %.sroa.0326.0.extract.trunc.i, 0
  %i.sy = icmp eq i32 %.sroa.0326.0.extract.trunc.i, 0
  %i.sz = and i64 %9, 4294967295                  ; 5 uses
  %i.ta = shl nuw nsw i64 %i.sz, 4
  %brmerge1101.i = select i1 %.not412.i, i1 true, i1 %i.sw
  %wide.trip.count1137.i = zext i32 %.0366965.i to i64 ; 6 uses
  %brmerge1104.i = select i1 %i.sw, i1 true, i1 %i.sy
  %i.tb = add nsw i64 %i.sz, -1                   ; 2 uses
  %min.iters.check141 = icmp ugt i32 %.0366965.i, 3
  %ident.check139.not = icmp eq i64 %.0356968.i, 1
  %or.cond168 = and i1 %min.iters.check141, %ident.check139.not
  %n.vec143 = and i64 %wide.trip.count1137.i, 2147483644 ; 3 uses
  %cmp.n150 = icmp eq i64 %n.vec143, %wide.trip.count1137.i
  %xtraiter196 = and i64 %wide.trip.count1137.i, 3 ; 2 uses
  %lcmp.mod197.not = icmp eq i64 %xtraiter196, 0
  %min.iters.check121 = icmp samesign ult i64 %i.sz, 2
  %n.vec123 = and i64 %9, 2147483646              ; 3 uses
  %cmp.n136 = icmp eq i64 %i.sz, %n.vec123
  %xtraiter199 = and i64 %9, 1
  %i.tc = icmp eq i64 %i.tb, 0
  %unroll_iter202 = and i64 %9, 2147483646
  %i.td = insertelement <2 x double> poison, double %10, i64 0
  %i.te = shufflevector <2 x double> %i.td, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tf = insertelement <2 x double> poison, double %11, i64 0
  %i.tg = shufflevector <2 x double> %i.tf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.th = insertelement <2 x double> poison, double %10, i64 0
  %i.ti = shufflevector <2 x double> %i.th, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tj = insertelement <2 x double> poison, double %11, i64 0
  %i.tk = shufflevector <2 x double> %i.tj, <2 x double> poison, <2 x i32> zeroinitializer
  %lcmp.mod200.not = icmp eq i64 %xtraiter199, 0
  %lcmp.mod201 = trunc i64 %9 to i1
  %i.tl = insertelement <2 x double> poison, double %10, i64 0
  %i.tm = shufflevector <2 x double> %i.tl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tn = insertelement <2 x double> poison, double %11, i64 0
  %i.to = shufflevector <2 x double> %i.tn, <2 x double> poison, <2 x i32> zeroinitializer
  %xtraiter204 = and i64 %9, 1
  %i.tp = icmp eq i64 %i.tb, 0
  %unroll_iter207 = and i64 %9, 2147483646
  %i.tq = insertelement <2 x double> poison, double %10, i64 0
  %i.tr = shufflevector <2 x double> %i.tq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ts = insertelement <2 x double> poison, double %10, i64 0
  %i.tt = shufflevector <2 x double> %i.ts, <2 x double> poison, <2 x i32> zeroinitializer
  %lcmp.mod205.not = icmp eq i64 %xtraiter204, 0
  %lcmp.mod206 = trunc i64 %9 to i1
  %i.tu = insertelement <2 x double> poison, double %10, i64 0
  %i.tv = shufflevector <2 x double> %i.tu, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit976.i, %.lr.ph1026.i
  %.33621024.i = phi ptr [ %4, %.lr.ph1026.i ], [ %i.xv, %.loopexit976.i ] ; 5 uses
  %.23651023.i = phi ptr [ %0, %.lr.ph1026.i ], [ %i.xu, %.loopexit976.i ] ; 8 uses
  %.33881022.i = phi i32 [ 0, %.lr.ph1026.i ], [ %i.xt, %.loopexit976.i ]
  %.33991020.i = phi ptr [ %6, %.lr.ph1026.i ], [ %i.xw, %.loopexit976.i ] ; 7 uses
  %.23651023.mux.i = select i1 %.not412.i, ptr %.23651023.i, ptr %.0358966.i
  br i1 %brmerge1101.i, label %.loopexit981.i, label %.lr.ph1003.i.preheader

.lr.ph1003.i.preheader:                           ; preds = %bb.ao
  br i1 %or.cond168, label %vector.body144, label %.lr.ph1003.i.preheader177

vector.body144:                                   ; preds = %.lr.ph1003.i.preheader, %vector.body144
  %index145 = phi i64 [ %index.next148, %vector.body144 ], [ 0, %.lr.ph1003.i.preheader ] ; 3 uses
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %.23651023.i, i64 %index145 ; 2 uses
  %i.tx = getelementptr inbounds nuw [8 x i8], ptr %.0358966.i, i64 %index145 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tw, i64 16
  %wide.load146 = load <2 x i64>, ptr %i.tw, align 4, !tbaa !22
  %wide.load147 = load <2 x i64>, ptr %i.ty, align 4, !tbaa !22
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tx, i64 16
  store <2 x i64> %wide.load146, ptr %i.tx, align 4, !tbaa !22
  store <2 x i64> %wide.load147, ptr %i.tz, align 4, !tbaa !22
  %index.next148 = add nuw i64 %index145, 4       ; 2 uses
  %i.ua = icmp eq i64 %index.next148, %n.vec143
  br i1 %i.ua, label %middle.block149, label %vector.body144, !llvm.loop !1094

middle.block149:                                  ; preds = %vector.body144
  br i1 %cmp.n150, label %.loopexit981.i, label %.lr.ph1003.i.preheader177

.lr.ph1003.i.preheader177:                        ; preds = %.lr.ph1003.i.preheader, %middle.block149
  %indvars.iv1134.i.ph = phi i64 [ 0, %.lr.ph1003.i.preheader ], [ %n.vec143, %middle.block149 ] ; 3 uses
  br i1 %lcmp.mod197.not, label %.lr.ph1003.i.prol.loopexit, label %.lr.ph1003.i.prol

.lr.ph1003.i.prol:                                ; preds = %.lr.ph1003.i.preheader177, %.lr.ph1003.i.prol
  %indvars.iv1134.i.prol = phi i64 [ %indvars.iv.next1135.i.prol, %.lr.ph1003.i.prol ], [ %indvars.iv1134.i.ph, %.lr.ph1003.i.preheader177 ] ; 3 uses
  %prol.iter198 = phi i64 [ %prol.iter198.next, %.lr.ph1003.i.prol ], [ 0, %.lr.ph1003.i.preheader177 ]
  %i.ub = mul i64 %indvars.iv1134.i.prol, %.0356968.i
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %.23651023.i, i64 %i.ub
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %.0358966.i, i64 %indvars.iv1134.i.prol
  %i.ue = load i64, ptr %i.uc, align 4, !tbaa !22
  store i64 %i.ue, ptr %i.ud, align 4, !tbaa !22
  %indvars.iv.next1135.i.prol = add nuw nsw i64 %indvars.iv1134.i.prol, 1 ; 2 uses
  %prol.iter198.next = add i64 %prol.iter198, 1   ; 2 uses
  %prol.iter198.cmp.not = icmp eq i64 %prol.iter198.next, %xtraiter196
  br i1 %prol.iter198.cmp.not, label %.lr.ph1003.i.prol.loopexit, label %.lr.ph1003.i.prol, !llvm.loop !1095

.lr.ph1003.i.prol.loopexit:                       ; preds = %.lr.ph1003.i.prol, %.lr.ph1003.i.preheader177
  %indvars.iv1134.i.unr = phi i64 [ %indvars.iv1134.i.ph, %.lr.ph1003.i.preheader177 ], [ %indvars.iv.next1135.i.prol, %.lr.ph1003.i.prol ]
  %i.uf = sub nsw i64 %indvars.iv1134.i.ph, %wide.trip.count1137.i
  %i.ug = icmp ugt i64 %i.uf, -4
  br i1 %i.ug, label %.loopexit981.i, label %.lr.ph1003.i

.lr.ph1003.i:                                     ; preds = %.lr.ph1003.i.prol.loopexit, %.lr.ph1003.i
  %indvars.iv1134.i = phi i64 [ %indvars.iv.next1135.i.3, %.lr.ph1003.i ], [ %indvars.iv1134.i.unr, %.lr.ph1003.i.prol.loopexit ] ; 6 uses
  %i.uh = mul i64 %indvars.iv1134.i, %.0356968.i
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %.23651023.i, i64 %i.uh
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %.0358966.i, i64 %indvars.iv1134.i
  %i.uk = load i64, ptr %i.ui, align 4, !tbaa !22
  store i64 %i.uk, ptr %i.uj, align 4, !tbaa !22
  %indvars.iv.next1135.i = add nuw nsw i64 %indvars.iv1134.i, 1 ; 2 uses
  %i.ul = mul i64 %indvars.iv.next1135.i, %.0356968.i
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %.23651023.i, i64 %i.ul
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %.0358966.i, i64 %indvars.iv.next1135.i
  %i.uo = load i64, ptr %i.um, align 4, !tbaa !22
  store i64 %i.uo, ptr %i.un, align 4, !tbaa !22
  %indvars.iv.next1135.i.1 = add nuw nsw i64 %indvars.iv1134.i, 2 ; 2 uses
  %i.up = mul i64 %indvars.iv.next1135.i.1, %.0356968.i
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %.23651023.i, i64 %i.up
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %.0358966.i, i64 %indvars.iv.next1135.i.1
  %i.us = load i64, ptr %i.uq, align 4, !tbaa !22
  store i64 %i.us, ptr %i.ur, align 4, !tbaa !22
  %indvars.iv.next1135.i.2 = add nuw nsw i64 %indvars.iv1134.i, 3 ; 2 uses
  %i.ut = mul i64 %indvars.iv.next1135.i.2, %.0356968.i
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %.23651023.i, i64 %i.ut
  %i.uv = getelementptr inbounds nuw [8 x i8], ptr %.0358966.i, i64 %indvars.iv.next1135.i.2
  %i.uw = load i64, ptr %i.uu, align 4, !tbaa !22
  store i64 %i.uw, ptr %i.uv, align 4, !tbaa !22
  %indvars.iv.next1135.i.3 = add nuw nsw i64 %indvars.iv1134.i, 4 ; 2 uses
  %exitcond1138.not.i.3 = icmp eq i64 %indvars.iv.next1135.i.3, %wide.trip.count1137.i
  br i1 %exitcond1138.not.i.3, label %.loopexit981.i, label %.lr.ph1003.i, !llvm.loop !1096

bb.ap:                                            ; preds = %bb.an
  %i.ux = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.as

.loopexit981.i:                                   ; preds = %.lr.ph1003.i.prol.loopexit, %.lr.ph1003.i, %middle.block149, %bb.ao
  %.3392.i = phi ptr [ %.23651023.mux.i, %bb.ao ], [ %.0358966.i, %middle.block149 ], [ %.0358966.i, %.lr.ph1003.i ], [ %.0358966.i, %.lr.ph1003.i.prol.loopexit ]
  br i1 %i.sx, label %.preheader979.i, label %.loopexit976.i

.preheader979.i:                                  ; preds = %.loopexit981.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.su, i8 0, i64 %i.ta, i1 false), !tbaa !29
  br i1 %brmerge1104.i, label %._crit_edge1014.split.thread1226.i, label %.lr.ph1009.i

.lr.ph1009.i:                                     ; preds = %.preheader979.i, %._crit_edge1010.i
  %indvars.iv1147.i = phi i64 [ %indvars.iv.next1148.i, %._crit_edge1010.i ], [ 0, %.preheader979.i ] ; 2 uses
  %.23951011.i = phi ptr [ %i.wa, %._crit_edge1010.i ], [ %2, %.preheader979.i ] ; 3 uses
  %i.uy = getelementptr inbounds nuw [8 x i8], ptr %.3392.i, i64 %indvars.iv1147.i
  %i.uz = load <2 x float>, ptr %i.uy, align 4, !tbaa !22
  %i.va = fpext <2 x float> %i.uz to <2 x double> ; 5 uses
  %i.vb = extractelement <2 x double> %i.va, i64 1
  %i.vc = fneg double %i.vb                       ; 2 uses
  br i1 %min.iters.check121, label %scalar.ph120.preheader, label %vector.ph122

vector.ph122:                                     ; preds = %.lr.ph1009.i
  %broadcast.splat = shufflevector <2 x double> %i.va, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splat125 = shufflevector <2 x double> %i.va, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splatinsert126 = insertelement <2 x double> poison, double %i.vc, i64 0
  %broadcast.splat127 = shufflevector <2 x double> %broadcast.splatinsert126, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body128

vector.body128:                                   ; preds = %vector.body128, %vector.ph122
  %index129 = phi i64 [ 0, %vector.ph122 ], [ %index.next134, %vector.body128 ] ; 3 uses
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %.23951011.i, i64 %index129
  %wide.vec = load <4 x float>, ptr %i.vd, align 4, !tbaa !22 ; 2 uses
  %strided.vec = shufflevector <4 x float> %wide.vec, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec130 = shufflevector <4 x float> %wide.vec, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.ve = fpext <2 x float> %strided.vec to <2 x double> ; 2 uses
  %i.vf = fpext <2 x float> %strided.vec130 to <2 x double> ; 2 uses
  %i.vg = fmul <2 x double> %broadcast.splat127, %i.vf
  %i.vh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ve, <2 x double> %broadcast.splat, <2 x double> %i.vg)
  %i.vi = fmul <2 x double> %broadcast.splat, %i.vf
  %i.vj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ve, <2 x double> %broadcast.splat125, <2 x double> %i.vi)
  %i.vk = getelementptr inbounds nuw [16 x i8], ptr %i.su, i64 %index129 ; 2 uses
  %wide.vec131 = load <4 x double>, ptr %i.vk, align 8, !tbaa !29 ; 2 uses
  %strided.vec132 = shufflevector <4 x double> %wide.vec131, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec133 = shufflevector <4 x double> %wide.vec131, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.vl = fadd <2 x double> %strided.vec132, %i.vh
  %i.vm = fadd <2 x double> %i.vj, %strided.vec133
  %interleaved.vec = shufflevector <2 x double> %i.vl, <2 x double> %i.vm, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.vk, align 8, !tbaa !29
  %index.next134 = add nuw i64 %index129, 2       ; 2 uses
  %i.vn = icmp eq i64 %index.next134, %n.vec123
  br i1 %i.vn, label %middle.block135, label %vector.body128, !llvm.loop !1097

middle.block135:                                  ; preds = %vector.body128
  br i1 %cmp.n136, label %._crit_edge1010.i, label %scalar.ph120.preheader

scalar.ph120.preheader:                           ; preds = %.lr.ph1009.i, %middle.block135
  %indvars.iv1142.i.ph = phi i64 [ 0, %.lr.ph1009.i ], [ %n.vec123, %middle.block135 ]
  %i.vo = shufflevector <2 x double> %i.va, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.vp = insertelement <2 x double> %i.vo, double %i.vc, i64 0
  br label %scalar.ph120

scalar.ph120:                                     ; preds = %scalar.ph120.preheader, %scalar.ph120
  %indvars.iv1142.i = phi i64 [ %indvars.iv.next1143.i, %scalar.ph120 ], [ %indvars.iv1142.i.ph, %scalar.ph120.preheader ] ; 3 uses
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %.23951011.i, i64 %indvars.iv1142.i
  %i.vr = getelementptr inbounds nuw [16 x i8], ptr %i.su, i64 %indvars.iv1142.i ; 2 uses
  %i.vs = load <2 x float>, ptr %i.vq, align 4, !tbaa !22
  %i.vt = fpext <2 x float> %i.vs to <2 x double> ; 2 uses
  %i.vu = shufflevector <2 x double> %i.vt, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.vv = fmul <2 x double> %i.vp, %i.vu
  %i.vw = shufflevector <2 x double> %i.vt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vw, <2 x double> %i.va, <2 x double> %i.vv)
  %i.vy = load <2 x double>, ptr %i.vr, align 8, !tbaa !29
  %i.vz = fadd <2 x double> %i.vy, %i.vx
  store <2 x double> %i.vz, ptr %i.vr, align 8, !tbaa !29
  %indvars.iv.next1143.i = add nuw nsw i64 %indvars.iv1142.i, 1 ; 2 uses
  %exitcond1146.not.i = icmp eq i64 %indvars.iv.next1143.i, %i.sz
  br i1 %exitcond1146.not.i, label %._crit_edge1010.i, label %scalar.ph120, !llvm.loop !1098

._crit_edge1010.i:                                ; preds = %scalar.ph120, %middle.block135
  %indvars.iv.next1148.i = add nuw nsw i64 %indvars.iv1147.i, 1 ; 2 uses
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr %.23951011.i, i64 %i.c
  %exitcond1151.not.i = icmp eq i64 %indvars.iv.next1148.i, %wide.trip.count1137.i
  br i1 %exitcond1151.not.i, label %._crit_edge1014.split.i, label %.lr.ph1009.i, !llvm.loop !1099

._crit_edge1014.split.i:                          ; preds = %._crit_edge1010.i
  %.not413.i = icmp eq ptr %.33621024.i, null
  br i1 %.not413.i, label %.lr.ph1019.i.preheader, label %.lr.ph1017.i.preheader

._crit_edge1014.split.thread1226.i:               ; preds = %.preheader979.i
  %.not4131227.i = icmp eq ptr %.33621024.i, null
  br i1 %.not4131227.i, label %.lr.ph1019.i.preheader, label %.lr.ph1017.i.preheader

.lr.ph1017.i.preheader:                           ; preds = %._crit_edge1014.split.i, %._crit_edge1014.split.thread1226.i
  br i1 %i.tc, label %.lr.ph1017.i.epil.preheader, label %.lr.ph1017.i

.lr.ph1019.i.preheader:                           ; preds = %._crit_edge1014.split.i, %._crit_edge1014.split.thread1226.i
  br i1 %i.tp, label %.lr.ph1019.i.epil.preheader, label %.lr.ph1019.i

.lr.ph1019.i:                                     ; preds = %.lr.ph1019.i.preheader, %.lr.ph1019.i
  %indvars.iv1157.i = phi i64 [ %indvars.iv.next1158.i.1, %.lr.ph1019.i ], [ 0, %.lr.ph1019.i.preheader ] ; 4 uses
  %niter208 = phi i64 [ %niter208.next.1, %.lr.ph1019.i ], [ 0, %.lr.ph1019.i.preheader ]
  %i.wb = getelementptr inbounds nuw [16 x i8], ptr %i.su, i64 %indvars.iv1157.i
  %i.wc = load <2 x double>, ptr %i.wb, align 8, !tbaa !29
  %i.wd = fmul <2 x double> %i.tr, %i.wc
  %i.we = fptrunc <2 x double> %i.wd to <2 x float>
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %.33991020.i, i64 %indvars.iv1157.i
  store <2 x float> %i.we, ptr %i.wf, align 4, !tbaa !22
  %indvars.iv.next1158.i = or disjoint i64 %indvars.iv1157.i, 1 ; 2 uses
  %i.wg = getelementptr inbounds nuw [16 x i8], ptr %i.su, i64 %indvars.iv.next1158.i
  %i.wh = load <2 x double>, ptr %i.wg, align 8, !tbaa !29
  %i.wi = fmul <2 x double> %i.tt, %i.wh
  %i.wj = fptrunc <2 x double> %i.wi to <2 x float>
  %i.wk = getelementptr inbounds nuw [8 x i8], ptr %.33991020.i, i64 %indvars.iv.next1158.i
  store <2 x float> %i.wj, ptr %i.wk, align 4, !tbaa !22
  %indvars.iv.next1158.i.1 = add nuw nsw i64 %indvars.iv1157.i, 2 ; 2 uses
  %niter208.next.1 = add i64 %niter208, 2         ; 2 uses
  %niter208.ncmp.1 = icmp eq i64 %niter208.next.1, %unroll_iter207
  br i1 %niter208.ncmp.1, label %.loopexit976.i.loopexit.unr-lcssa, label %.lr.ph1019.i, !llvm.loop !1100

.lr.ph1017.i:                                     ; preds = %.lr.ph1017.i.preheader, %.lr.ph1017.i
  %indvars.iv1152.i = phi i64 [ %indvars.iv.next1153.i.1, %.lr.ph1017.i ], [ 0, %.lr.ph1017.i.preheader ] ; 4 uses
  %.54051015.i = phi ptr [ %i.xe, %.lr.ph1017.i ], [ %.33621024.i, %.lr.ph1017.i.preheader ] ; 2 uses
  %niter203 = phi i64 [ %niter203.next.1, %.lr.ph1017.i ], [ 0, %.lr.ph1017.i.preheader ]
  %i.wl = getelementptr inbounds nuw [16 x i8], ptr %i.su, i64 %indvars.iv1152.i
  %i.wm = load <2 x double>, ptr %i.wl, align 8, !tbaa !29
  %i.wn = fmul <2 x double> %i.te, %i.wm
  %i.wo = load <2 x float>, ptr %.54051015.i, align 4, !tbaa !22
  %i.wp = fpext <2 x float> %i.wo to <2 x double>
  %i.wq = fmul <2 x double> %i.tg, %i.wp
  %i.wr = fadd <2 x double> %i.wn, %i.wq
  %i.ws = fptrunc <2 x double> %i.wr to <2 x float>
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr %.33991020.i, i64 %indvars.iv1152.i
  store <2 x float> %i.ws, ptr %i.wt, align 4, !tbaa !22
  %indvars.iv.next1153.i = or disjoint i64 %indvars.iv1152.i, 1 ; 2 uses
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %.54051015.i, i64 %.0354.i ; 2 uses
  %i.wv = getelementptr inbounds nuw [16 x i8], ptr %i.su, i64 %indvars.iv.next1153.i
  %i.ww = load <2 x double>, ptr %i.wv, align 8, !tbaa !29
  %i.wx = fmul <2 x double> %i.ti, %i.ww
  %i.wy = load <2 x float>, ptr %i.wu, align 4, !tbaa !22
  %i.wz = fpext <2 x float> %i.wy to <2 x double>
  %i.xa = fmul <2 x double> %i.tk, %i.wz
  %i.xb = fadd <2 x double> %i.wx, %i.xa
  %i.xc = fptrunc <2 x double> %i.xb to <2 x float>
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %.33991020.i, i64 %indvars.iv.next1153.i
  store <2 x float> %i.xc, ptr %i.xd, align 4, !tbaa !22
  %indvars.iv.next1153.i.1 = add nuw nsw i64 %indvars.iv1152.i, 2 ; 2 uses
  %i.xe = getelementptr inbounds nuw [8 x i8], ptr %i.wu, i64 %.0354.i ; 2 uses
  %niter203.next.1 = add i64 %niter203, 2         ; 2 uses
  %niter203.ncmp.1 = icmp eq i64 %niter203.next.1, %unroll_iter202
  br i1 %niter203.ncmp.1, label %.loopexit976.i.loopexit176.unr-lcssa, label %.lr.ph1017.i, !llvm.loop !1101

.loopexit976.i.loopexit.unr-lcssa:                ; preds = %.lr.ph1019.i
  br i1 %lcmp.mod205.not, label %.loopexit976.i, label %.lr.ph1019.i.epil.preheader

.lr.ph1019.i.epil.preheader:                      ; preds = %.loopexit976.i.loopexit.unr-lcssa, %.lr.ph1019.i.preheader
  %indvars.iv1157.i.epil.init = phi i64 [ 0, %.lr.ph1019.i.preheader ], [ %indvars.iv.next1158.i.1, %.loopexit976.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod206)
  %i.xf = getelementptr inbounds nuw [16 x i8], ptr %i.su, i64 %indvars.iv1157.i.epil.init
  %i.xg = load <2 x double>, ptr %i.xf, align 8, !tbaa !29
  %i.xh = fmul <2 x double> %i.tv, %i.xg
  %i.xi = fptrunc <2 x double> %i.xh to <2 x float>
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %.33991020.i, i64 %indvars.iv1157.i.epil.init
  store <2 x float> %i.xi, ptr %i.xj, align 4, !tbaa !22
  br label %.loopexit976.i

.loopexit976.i.loopexit176.unr-lcssa:             ; preds = %.lr.ph1017.i
  br i1 %lcmp.mod200.not, label %.loopexit976.i, label %.lr.ph1017.i.epil.preheader

.lr.ph1017.i.epil.preheader:                      ; preds = %.loopexit976.i.loopexit176.unr-lcssa, %.lr.ph1017.i.preheader
  %indvars.iv1152.i.epil.init = phi i64 [ 0, %.lr.ph1017.i.preheader ], [ %indvars.iv.next1153.i.1, %.loopexit976.i.loopexit176.unr-lcssa ] ; 2 uses
  %.54051015.i.epil.init = phi ptr [ %.33621024.i, %.lr.ph1017.i.preheader ], [ %i.xe, %.loopexit976.i.loopexit176.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod201)
  %i.xk = getelementptr inbounds nuw [16 x i8], ptr %i.su, i64 %indvars.iv1152.i.epil.init
  %i.xl = load <2 x double>, ptr %i.xk, align 8, !tbaa !29
  %i.xm = fmul <2 x double> %i.tm, %i.xl
  %i.xn = load <2 x float>, ptr %.54051015.i.epil.init, align 4, !tbaa !22
  %i.xo = fpext <2 x float> %i.xn to <2 x double>
  %i.xp = fmul <2 x double> %i.to, %i.xo
  %i.xq = fadd <2 x double> %i.xm, %i.xp
  %i.xr = fptrunc <2 x double> %i.xq to <2 x float>
  %i.xs = getelementptr inbounds nuw [8 x i8], ptr %.33991020.i, i64 %indvars.iv1152.i.epil.init
  store <2 x float> %i.xr, ptr %i.xs, align 4, !tbaa !22
  br label %.loopexit976.i

.loopexit976.i:                                   ; preds = %.lr.ph1017.i.epil.preheader, %.loopexit976.i.loopexit176.unr-lcssa, %.lr.ph1019.i.epil.preheader, %.loopexit976.i.loopexit.unr-lcssa, %.loopexit981.i
  %i.xt = add nuw nsw i32 %.33881022.i, 1         ; 2 uses
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %.23651023.i, i64 %.0357967.i
  %i.xv = getelementptr inbounds nuw [8 x i8], ptr %.33621024.i, i64 %.0355.i
  %i.xw = getelementptr inbounds nuw [8 x i8], ptr %.33991020.i, i64 %i.e
  %exitcond1162.not.i = icmp eq i32 %i.xt, %.sroa.8.0.extract.trunc.i
  br i1 %exitcond1162.not.i, label %._crit_edge1027.i, label %bb.ao, !llvm.loop !1102

._crit_edge1027.i:                                ; preds = %.loopexit976.i, %_ZN2cv10AutoBufferINS_7ComplexIdEELm72EEC2Em.exit.i
  %.not.i.i801.i = icmp eq ptr %i.su, %scevgep.i778.i
  br i1 %.not.i.i801.i, label %_ZN2cv10AutoBufferINS_7ComplexIdEELm72EED2Ev.exit.i, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge1027.i
  call void @_ZdaPv(ptr noundef nonnull %i.su) #27
  br label %_ZN2cv10AutoBufferINS_7ComplexIdEELm72EED2Ev.exit.i

_ZN2cv10AutoBufferINS_7ComplexIdEELm72EED2Ev.exit.i: ; preds = %bb.aq, %._crit_edge1027.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %.loopexit974.i

.loopexit974.i:                                   ; preds = %.loopexit984.i.loopexit, %._crit_edge996.i.loopexit.split.us40, %._crit_edge996.i.loopexit.split.us.us.us, %._crit_edge1070.i, %.lr.ph1001.i.split, %_ZN2cv10AutoBufferINS_7ComplexIdEELm72EED2Ev.exit.i, %.preheader973.i, %.preheader985.i, %_ZN2cv10AutoBufferINS_7ComplexIfEELm136EED2Ev.exit.i
  %i.xx = load ptr, ptr %13, align 8, !tbaa !82   ; 3 uses
  %.not.i.i806.i = icmp eq ptr %i.xx, %scevgep.i.i
  %i.xy = icmp eq ptr %i.xx, null
  %or.cond.i807.i = or i1 %.not.i.i806.i, %i.xy
end_hunk_8
begin_hunk_9_@_ZN2cv12cpu_baselineL17GEMMBlockMul_32fcEPKNS_7ComplexIfEEmS4_mPNS1_IdEEmNS_5Size_IiEES8_i:bb.a
  %i.fl = load i64, ptr %i.fj, align 4, !tbaa !22
  store i64 %i.fl, ptr %i.fk, align 4, !tbaa !22
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %..loopexit363_crit_edge.i, label %scalar.ph, !llvm.loop !1112

..loopexit363_crit_edge.i:                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.fm = add nuw nsw i32 %.0156390.i, 1          ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %.0144391.i, i64 %.0142.i
  %exitcond467.not.i = icmp eq i32 %i.fm, %.sroa.3.0.extract.trunc.i
  br i1 %exitcond467.not.i, label %.loopexit360.i, label %.preheader362.i, !llvm.loop !1109

bb.h:                                             ; preds = %._crit_edge429.i, %.lr.ph439.i
  %.1145438.i = phi ptr [ %0, %.lr.ph439.i ], [ %i.lb, %._crit_edge429.i ] ; 8 uses
  %.1157437.i = phi i32 [ 0, %.lr.ph439.i ], [ %i.la, %._crit_edge429.i ]
  %.1161434.i = phi ptr [ %4, %.lr.ph439.i ], [ %i.lc, %._crit_edge429.i ] ; 6 uses
  %.1145438.mux.i = select i1 %.not164.i, ptr %.1145438.i, ptr %.0143.i
  br i1 %brmerge444.i, label %.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.h
  br i1 %or.cond114, label %vector.body105, label %.lr.ph.i.preheader115

vector.body105:                                   ; preds = %.lr.ph.i.preheader, %vector.body105
  %index106 = phi i64 [ %index.next109, %vector.body105 ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %.1145438.i, i64 %index106 ; 2 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %.0143.i, i64 %index106 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %wide.load107 = load <2 x i64>, ptr %i.fo, align 4, !tbaa !22
  %wide.load108 = load <2 x i64>, ptr %i.fq, align 4, !tbaa !22
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store <2 x i64> %wide.load107, ptr %i.fp, align 4, !tbaa !22
  store <2 x i64> %wide.load108, ptr %i.fr, align 4, !tbaa !22
  %index.next109 = add nuw i64 %index106, 4       ; 2 uses
  %i.fs = icmp eq i64 %index.next109, %n.vec104
  br i1 %i.fs, label %middle.block110, label %vector.body105, !llvm.loop !1113

middle.block110:                                  ; preds = %vector.body105
  br i1 %cmp.n111, label %.loopexit.i, label %.lr.ph.i.preheader115

.lr.ph.i.preheader115:                            ; preds = %.lr.ph.i.preheader, %middle.block110
  %indvars.iv485.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec104, %middle.block110 ] ; 3 uses
  %i.ft = sub nsw i64 %i.ej, %indvars.iv485.i.ph
  br i1 %lcmp.mod133.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader115, %.lr.ph.i.prol
  %indvars.iv485.i.prol = phi i64 [ %indvars.iv.next486.i.prol, %.lr.ph.i.prol ], [ %indvars.iv485.i.ph, %.lr.ph.i.preheader115 ] ; 3 uses
  %prol.iter134 = phi i64 [ %prol.iter134.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader115 ]
  %i.fu = mul i64 %indvars.iv485.i.prol, %.0141.i
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %.1145438.i, i64 %i.fu
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %.0143.i, i64 %indvars.iv485.i.prol
  %i.fx = load i64, ptr %i.fv, align 4, !tbaa !22
  store i64 %i.fx, ptr %i.fw, align 4, !tbaa !22
  %indvars.iv.next486.i.prol = add nuw nsw i64 %indvars.iv485.i.prol, 1 ; 2 uses
  %prol.iter134.next = add i64 %prol.iter134, 1   ; 2 uses
  %prol.iter134.cmp.not = icmp eq i64 %prol.iter134.next, %xtraiter132
  br i1 %prol.iter134.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1114

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader115
  %indvars.iv485.i.unr = phi i64 [ %indvars.iv485.i.ph, %.lr.ph.i.preheader115 ], [ %indvars.iv.next486.i.prol, %.lr.ph.i.prol ]
  %i.fy = icmp ult i64 %i.ft, 3
  br i1 %i.fy, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv485.i = phi i64 [ %indvars.iv.next486.i.3, %.lr.ph.i ], [ %indvars.iv485.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.fz = mul i64 %indvars.iv485.i, %.0141.i
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %.1145438.i, i64 %i.fz
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %.0143.i, i64 %indvars.iv485.i
  %i.gc = load i64, ptr %i.ga, align 4, !tbaa !22
  store i64 %i.gc, ptr %i.gb, align 4, !tbaa !22
  %indvars.iv.next486.i = add nuw nsw i64 %indvars.iv485.i, 1 ; 2 uses
  %i.gd = mul i64 %indvars.iv.next486.i, %.0141.i
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %.1145438.i, i64 %i.gd
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %.0143.i, i64 %indvars.iv.next486.i
  %i.gg = load i64, ptr %i.ge, align 4, !tbaa !22
  store i64 %i.gg, ptr %i.gf, align 4, !tbaa !22
  %indvars.iv.next486.i.1 = add nuw nsw i64 %indvars.iv485.i, 2 ; 2 uses
  %i.gh = mul i64 %indvars.iv.next486.i.1, %.0141.i
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %.1145438.i, i64 %i.gh
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %.0143.i, i64 %indvars.iv.next486.i.1
  %i.gk = load i64, ptr %i.gi, align 4, !tbaa !22
  store i64 %i.gk, ptr %i.gj, align 4, !tbaa !22
  %indvars.iv.next486.i.2 = add nuw nsw i64 %indvars.iv485.i, 3 ; 2 uses
  %i.gl = mul i64 %indvars.iv.next486.i.2, %.0141.i
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %.1145438.i, i64 %i.gl
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %.0143.i, i64 %indvars.iv.next486.i.2
  %i.go = load i64, ptr %i.gm, align 4, !tbaa !22
  store i64 %i.go, ptr %i.gn, align 4, !tbaa !22
  %indvars.iv.next486.i.3 = add nuw nsw i64 %indvars.iv485.i, 4 ; 2 uses
  %exitcond489.not.i.3 = icmp eq i64 %indvars.iv.next486.i.3, %wide.trip.count488.i
  br i1 %exitcond489.not.i.3, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !1115

.loopexit.i:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block110, %bb.h
  %.1159.i = phi ptr [ %.1145438.mux.i, %bb.h ], [ %.0143.i, %middle.block110 ], [ %.0143.i, %.lr.ph.i ], [ %.0143.i, %.lr.ph.i.prol.loopexit ] ; 4 uses
  br i1 %.not165413.i, label %.preheader.i, label %.lr.ph416.i

.preheader.loopexit.i:                            ; preds = %._crit_edge.i
  %i.gp = trunc nuw nsw i64 %indvars.iv.next496.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.loopexit.i
  %.1154.lcssa.i = phi i32 [ 0, %.loopexit.i ], [ %i.gp, %.preheader.loopexit.i ] ; 3 uses
  %i.gq = icmp slt i32 %.1154.lcssa.i, %.sroa.0128.0.extract.trunc.i
  br i1 %i.gq, label %.lr.ph428.i, label %._crit_edge429.i

.lr.ph428.i:                                      ; preds = %.preheader.i
  %i.gr = zext nneg i32 %.1154.lcssa.i to i64     ; 2 uses
  br i1 %i.eg, label %.lr.ph428.split.us.i, label %.lr.ph428.split.i

.lr.ph428.split.us.i:                             ; preds = %.lr.ph428.i, %._crit_edge424.us.i
  %indvars.iv511.i = phi i64 [ %indvars.iv.next512.i, %._crit_edge424.us.i ], [ %i.gr, %.lr.ph428.i ] ; 4 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv511.i ; 2 uses
  br i1 %.not168.i, label %.lr.ph423.us.i.preheader, label %bb.i

bb.i:                                             ; preds = %.lr.ph428.split.us.i
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr %.1161434.i, i64 %indvars.iv511.i
  %i.gu = load <2 x double>, ptr %i.gt, align 8, !tbaa !29
  br label %.lr.ph423.us.i.preheader

.lr.ph423.us.i.preheader:                         ; preds = %bb.i, %.lr.ph428.split.us.i
  %.ph = phi <2 x double> [ zeroinitializer, %.lr.ph428.split.us.i ], [ %i.gu, %bb.i ] ; 2 uses
  br i1 %i.ek, label %.lr.ph423.us.i.epil.preheader, label %.lr.ph423.us.i

.lr.ph423.us.i:                                   ; preds = %.lr.ph423.us.i.preheader, %.lr.ph423.us.i
  %indvars.iv506.i = phi i64 [ %indvars.iv.next507.i.1, %.lr.ph423.us.i ], [ 0, %.lr.ph423.us.i.preheader ] ; 3 uses
  %.0421.us.i = phi ptr [ %i.hw, %.lr.ph423.us.i ], [ %i.gs, %.lr.ph423.us.i.preheader ] ; 2 uses
  %i.gv = phi <2 x double> [ %i.hv, %.lr.ph423.us.i ], [ %.ph, %.lr.ph423.us.i.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph423.us.i ], [ 0, %.lr.ph423.us.i.preheader ]
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %.1159.i, i64 %indvars.iv506.i
  %i.gx = load <2 x float>, ptr %i.gw, align 4, !tbaa !22
  %i.gy = fpext <2 x float> %i.gx to <2 x double> ; 2 uses
  %i.gz = load <2 x float>, ptr %.0421.us.i, align 4, !tbaa !22
  %i.ha = fpext <2 x float> %i.gz to <2 x double> ; 3 uses
  %i.hb = shufflevector <2 x double> %i.gy, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hc = fneg <2 x double> %i.ha
  %i.hd = shufflevector <2 x double> %i.hc, <2 x double> %i.ha, <2 x i32> <i32 1, i32 2>
  %i.he = fmul <2 x double> %i.hb, %i.hd
  %i.hf = shufflevector <2 x double> %i.gy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hf, <2 x double> %i.ha, <2 x double> %i.he)
  %i.hh = fadd <2 x double> %i.gv, %i.hg
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %.0421.us.i, i64 %i.d ; 2 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %.1159.i, i64 %indvars.iv506.i
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hl = load <2 x float>, ptr %i.hk, align 4, !tbaa !22
  %i.hm = fpext <2 x float> %i.hl to <2 x double> ; 2 uses
  %i.hn = load <2 x float>, ptr %i.hi, align 4, !tbaa !22
  %i.ho = fpext <2 x float> %i.hn to <2 x double> ; 3 uses
  %i.hp = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hq = fneg <2 x double> %i.ho
  %i.hr = shufflevector <2 x double> %i.hq, <2 x double> %i.ho, <2 x i32> <i32 1, i32 2>
  %i.hs = fmul <2 x double> %i.hp, %i.hr
  %i.ht = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ht, <2 x double> %i.ho, <2 x double> %i.hs)
  %i.hv = fadd <2 x double> %i.hh, %i.hu          ; 3 uses
  %indvars.iv.next507.i.1 = add nuw nsw i64 %indvars.iv506.i, 2 ; 2 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.d ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge424.us.i.unr-lcssa, label %.lr.ph423.us.i, !llvm.loop !1116

._crit_edge424.us.i.unr-lcssa:                    ; preds = %.lr.ph423.us.i
  br i1 %lcmp.mod137.not, label %._crit_edge424.us.i, label %.lr.ph423.us.i.epil.preheader

.lr.ph423.us.i.epil.preheader:                    ; preds = %._crit_edge424.us.i.unr-lcssa, %.lr.ph423.us.i.preheader
  %indvars.iv506.i.epil.init = phi i64 [ 0, %.lr.ph423.us.i.preheader ], [ %indvars.iv.next507.i.1, %._crit_edge424.us.i.unr-lcssa ]
  %.0421.us.i.epil.init = phi ptr [ %i.gs, %.lr.ph423.us.i.preheader ], [ %i.hw, %._crit_edge424.us.i.unr-lcssa ]
  %.epil.init = phi <2 x double> [ %.ph, %.lr.ph423.us.i.preheader ], [ %i.hv, %._crit_edge424.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod139)
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %.1159.i, i64 %indvars.iv506.i.epil.init
  %i.hy = load <2 x float>, ptr %i.hx, align 4, !tbaa !22
  %i.hz = fpext <2 x float> %i.hy to <2 x double> ; 2 uses
  %i.ia = load <2 x float>, ptr %.0421.us.i.epil.init, align 4, !tbaa !22
  %i.ib = fpext <2 x float> %i.ia to <2 x double> ; 3 uses
  %i.ic = shufflevector <2 x double> %i.hz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.id = fneg <2 x double> %i.ib
  %i.ie = shufflevector <2 x double> %i.id, <2 x double> %i.ib, <2 x i32> <i32 1, i32 2>
  %i.if = fmul <2 x double> %i.ic, %i.ie
  %i.ig = shufflevector <2 x double> %i.hz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ih = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ig, <2 x double> %i.ib, <2 x double> %i.if)
  %i.ii = fadd <2 x double> %.epil.init, %i.ih
  br label %._crit_edge424.us.i

._crit_edge424.us.i:                              ; preds = %._crit_edge424.us.i.unr-lcssa, %.lr.ph423.us.i.epil.preheader
  %.lcssa119 = phi <2 x double> [ %i.hv, %._crit_edge424.us.i.unr-lcssa ], [ %i.ii, %.lr.ph423.us.i.epil.preheader ]
  %i.ij = getelementptr inbounds nuw [16 x i8], ptr %.1161434.i, i64 %indvars.iv511.i
  store <2 x double> %.lcssa119, ptr %i.ij, align 8, !tbaa !29
  %indvars.iv.next512.i = add nuw nsw i64 %indvars.iv511.i, 1 ; 2 uses
  %exitcond515.not.i = icmp eq i64 %indvars.iv.next512.i, %wide.trip.count501.i
  br i1 %exitcond515.not.i, label %._crit_edge429.i, label %.lr.ph428.split.us.i, !llvm.loop !1117

.lr.ph428.split.i:                                ; preds = %.lr.ph428.i
  br i1 %.not168.i, label %.lr.ph428.split.split.us.preheader.i, label %._crit_edge429.i

.lr.ph428.split.split.us.preheader.i:             ; preds = %.lr.ph428.split.i
  %i.ik = shl nuw nsw i64 %i.gr, 4
  %scevgep.i = getelementptr i8, ptr %.1161434.i, i64 %i.ik
  %i.il = xor i32 %.1154.lcssa.i, -1
  %i.im = add i32 %i.il, %.sroa.0128.0.extract.trunc.i
  %i.in = zext i32 %i.im to i64
  %i.io = shl nuw nsw i64 %i.in, 4
  %i.ip = add nuw nsw i64 %i.io, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.ip, i1 false), !tbaa !29
  br label %._crit_edge429.i

.lr.ph416.i:                                      ; preds = %.loopexit.i, %._crit_edge.i
  %indvars.iv495.i = phi i64 [ %indvars.iv.next496.i, %._crit_edge.i ], [ 0, %.loopexit.i ] ; 4 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv495.i
  br i1 %.not168.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph416.i
  %i.ir = getelementptr inbounds nuw [16 x i8], ptr %.1161434.i, i64 %indvars.iv495.i ; 4 uses
  %i.is = load <2 x double>, ptr %i.ir, align 8, !tbaa !29
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.iu = load <2 x double>, ptr %i.it, align 8, !tbaa !29
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 32
  %i.iw = load <2 x double>, ptr %i.iv, align 8, !tbaa !29
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ir, i64 48
  %i.iy = load <2 x double>, ptr %i.ix, align 8, !tbaa !29
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph416.i
  %i.iz = phi <2 x double> [ %i.is, %bb.j ], [ zeroinitializer, %.lr.ph416.i ] ; 2 uses
  %i.ja = phi <2 x double> [ %i.iu, %bb.j ], [ zeroinitializer, %.lr.ph416.i ] ; 2 uses
  %i.jb = phi <2 x double> [ %i.iw, %bb.j ], [ zeroinitializer, %.lr.ph416.i ] ; 2 uses
  %i.jc = phi <2 x double> [ %i.iy, %bb.j ], [ zeroinitializer, %.lr.ph416.i ] ; 2 uses
  br i1 %i.eg, label %.lr.ph405.i, label %._crit_edge.i

.lr.ph405.i:                                      ; preds = %bb.k, %.lr.ph405.i
  %indvars.iv490.i = phi i64 [ %indvars.iv.next491.i, %.lr.ph405.i ], [ 0, %bb.k ] ; 2 uses
  %.0132404.i = phi ptr [ %i.kr, %.lr.ph405.i ], [ %i.iq, %bb.k ] ; 5 uses
  %i.jd = phi <2 x double> [ %i.jw, %.lr.ph405.i ], [ %i.iz, %bb.k ]
  %i.je = phi <2 x double> [ %i.ka, %.lr.ph405.i ], [ %i.ja, %bb.k ]
  %i.jf = phi <2 x double> [ %i.km, %.lr.ph405.i ], [ %i.jb, %bb.k ]
  %i.jg = phi <2 x double> [ %i.kq, %.lr.ph405.i ], [ %i.jc, %bb.k ]
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %.1159.i, i64 %indvars.iv490.i
  %i.ji = load <2 x float>, ptr %i.jh, align 4, !tbaa !22
  %i.jj = fpext <2 x float> %i.ji to <2 x double> ; 2 uses
  %i.jk = load <2 x float>, ptr %.0132404.i, align 4, !tbaa !22
  %i.jl = fpext <2 x float> %i.jk to <2 x double> ; 3 uses
  %i.jm = shufflevector <2 x double> %i.jj, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.jn = shufflevector <2 x double> %i.jj, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.0132404.i, i64 8
  %i.jp = load <2 x float>, ptr %i.jo, align 4, !tbaa !22
  %i.jq = fpext <2 x float> %i.jp to <2 x double> ; 3 uses
  %i.jr = shufflevector <2 x double> %i.jl, <2 x double> %i.jq, <2 x i32> <i32 1, i32 3>
  %i.js = fneg <2 x double> %i.jr                 ; 2 uses
  %i.jt = shufflevector <2 x double> %i.js, <2 x double> %i.jl, <2 x i32> <i32 0, i32 2>
  %i.ju = fmul <2 x double> %i.jm, %i.jt
  %i.jv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jn, <2 x double> %i.jl, <2 x double> %i.ju)
  %i.jw = fadd <2 x double> %i.jd, %i.jv          ; 2 uses
  %i.jx = shufflevector <2 x double> %i.js, <2 x double> %i.jq, <2 x i32> <i32 1, i32 2>
  %i.jy = fmul <2 x double> %i.jm, %i.jx
  %i.jz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jn, <2 x double> %i.jq, <2 x double> %i.jy)
  %i.ka = fadd <2 x double> %i.je, %i.jz          ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.0132404.i, i64 16
  %i.kc = load <2 x float>, ptr %i.kb, align 4, !tbaa !22
  %i.kd = fpext <2 x float> %i.kc to <2 x double> ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.0132404.i, i64 24
  %i.kf = load <2 x float>, ptr %i.ke, align 4, !tbaa !22
  %i.kg = fpext <2 x float> %i.kf to <2 x double> ; 3 uses
  %i.kh = shufflevector <2 x double> %i.kd, <2 x double> %i.kg, <2 x i32> <i32 1, i32 3>
  %i.ki = fneg <2 x double> %i.kh                 ; 2 uses
  %i.kj = shufflevector <2 x double> %i.ki, <2 x double> %i.kd, <2 x i32> <i32 0, i32 2>
  %i.kk = fmul <2 x double> %i.jm, %i.kj
  %i.kl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jn, <2 x double> %i.kd, <2 x double> %i.kk)
  %i.km = fadd <2 x double> %i.jf, %i.kl          ; 2 uses
  %i.kn = shufflevector <2 x double> %i.ki, <2 x double> %i.kg, <2 x i32> <i32 1, i32 2>
  %i.ko = fmul <2 x double> %i.jm, %i.kn
  %i.kp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jn, <2 x double> %i.kg, <2 x double> %i.ko)
  %i.kq = fadd <2 x double> %i.jg, %i.kp          ; 2 uses
  %indvars.iv.next491.i = add nuw nsw i64 %indvars.iv490.i, 1 ; 2 uses
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %.0132404.i, i64 %i.d
  %exitcond494.not.i = icmp eq i64 %indvars.iv.next491.i, %wide.trip.count488.i
  br i1 %exitcond494.not.i, label %._crit_edge.i, label %.lr.ph405.i, !llvm.loop !1118

._crit_edge.i:                                    ; preds = %.lr.ph405.i, %bb.k
  %i.ks = phi <2 x double> [ %i.iz, %bb.k ], [ %i.jw, %.lr.ph405.i ]
  %i.kt = phi <2 x double> [ %i.ja, %bb.k ], [ %i.ka, %.lr.ph405.i ]
  %i.ku = phi <2 x double> [ %i.jb, %bb.k ], [ %i.km, %.lr.ph405.i ]
  %i.kv = phi <2 x double> [ %i.jc, %bb.k ], [ %i.kq, %.lr.ph405.i ]
  %i.kw = getelementptr inbounds nuw [16 x i8], ptr %.1161434.i, i64 %indvars.iv495.i ; 4 uses
  store <2 x double> %i.ks, ptr %i.kw, align 8, !tbaa !29
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  store <2 x double> %i.kt, ptr %i.kx, align 8, !tbaa !29
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 32
  store <2 x double> %i.ku, ptr %i.ky, align 8, !tbaa !29
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 48
  store <2 x double> %i.kv, ptr %i.kz, align 8, !tbaa !29
  %indvars.iv.next496.i = add nuw nsw i64 %indvars.iv495.i, 4 ; 3 uses
  %.not165.i = icmp sgt i64 %indvars.iv.next496.i, %i.ei
  br i1 %.not165.i, label %.preheader.loopexit.i, label %.lr.ph416.i, !llvm.loop !1119

._crit_edge429.i:                                 ; preds = %._crit_edge424.us.i, %.lr.ph428.split.i, %.lr.ph428.split.split.us.preheader.i, %.preheader.i
  %i.la = add nuw nsw i32 %.1157437.i, 1          ; 2 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %.1145438.i, i64 %.0142.i
  %i.lc = getelementptr [16 x i8], ptr %.1161434.i, i64 %i.e
  %exitcond516.not.i = icmp eq i32 %i.la, %.sroa.3.0.extract.trunc.i
  br i1 %exitcond516.not.i, label %.loopexit360.i, label %bb.h, !llvm.loop !1120

.loopexit360.i:                                   ; preds = %..loopexit363_crit_edge.i, %._crit_edge388.us.i, %._crit_edge429.i, %.preheader359.i, %.lr.ph392.split.i, %.preheader364.i
  %.not.i.i275.i = icmp eq ptr %i.o, %scevgep.i.i
  br i1 %.not.i.i275.i, label %_ZN2cv12cpu_baselineL12GEMMBlockMulINS_7ComplexIfEENS2_IdEEEEvPKT_mS7_mPT0_mNS_5Size_IiEESB_i.exit, label %bb.l

bb.l:                                             ; preds = %.loopexit360.i
  call void @_ZdaPv(ptr noundef nonnull %i.o) #27
  br label %_ZN2cv12cpu_baselineL12GEMMBlockMulINS_7ComplexIfEENS2_IdEEEEvPKT_mS7_mPT0_mNS_5Size_IiEESB_i.exit

bb.m:                                             ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.m) #27
  br label %_ZN2cv10AutoBufferINS_7ComplexIfEELm136EED2Ev.exit280.i

_ZN2cv10AutoBufferINS_7ComplexIfEELm136EED2Ev.exit280.i: ; preds = %bb.m, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  resume { ptr, i32 } %i.l

_ZN2cv12cpu_baselineL12GEMMBlockMulINS_7ComplexIfEENS2_IdEEEEvPKT_mS7_mPT0_mNS_5Size_IiEESB_i.exit: ; preds = %.loopexit360.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv12cpu_baselineL14GEMMStore_32fcEPKNS_7ComplexIfEEmPKNS1_IdEEmPS2_mNS_5Size_IiEEddi(ptr nofree noundef readonly captures(address) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 %6, double noundef %7, double noundef %8, i32 noundef %9) unnamed_addr #21 {
bb.a:
  %.fr.i = freeze i64 %6                          ; 9 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %.fr.i, 32 ; 2 uses
  %i.a = lshr i64 %1, 3                           ; 2 uses
  %i.b = lshr i64 %3, 4
  %i.c = lshr i64 %5, 3
  %.not.i = icmp eq ptr %0, null                  ; 2 uses
  %i.d = and i32 %9, 4
  %.not42.i = icmp eq i32 %i.d, 0                 ; 2 uses
  %..i = select i1 %.not42.i, i64 %i.a, i64 1
  %.45.i = select i1 %.not42.i, i64 1, i64 %i.a
  %.037.i = select i1 %.not.i, i64 0, i64 %..i
  %.036.i = select i1 %.not.i, i64 0, i64 %.45.i  ; 2 uses
  %.not4379.i = icmp ne i64 %.sroa.3.0.extract.shift.i, 0
  %.sroa.034.0.extract.trunc.i = trunc i64 %.fr.i to i32
  %i.e = icmp sgt i32 %.sroa.034.0.extract.trunc.i, 0
  %or.cond.i = and i1 %.not4379.i, %i.e
  br i1 %or.cond.i, label %.lr.ph86.split.us.split.us.preheader.i, label %_ZN2cv12cpu_baselineL9GEMMStoreINS_7ComplexIfEENS2_IdEEEEvPKT_mPKT0_mPS5_mNS_5Size_IiEEddi.exit

.lr.ph86.split.us.split.us.preheader.i:           ; preds = %bb.a
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32
  %wide.trip.count117.i = and i64 %.fr.i, 2147483647
  %i.f = add nsw i64 %wide.trip.count117.i, -1    ; 2 uses
  %xtraiter = and i64 %.fr.i, 1
  %i.g = icmp eq i64 %i.f, 0
  %unroll_iter = and i64 %.fr.i, 2147483646
  %i.h = insertelement <2 x double> poison, double %7, i64 0
  %i.i = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %i.j = insertelement <2 x double> poison, double %8, i64 0
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = insertelement <2 x double> poison, double %7, i64 0
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = insertelement <2 x double> poison, double %8, i64 0
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod14 = trunc i64 %.fr.i to i1
  %i.p = insertelement <2 x double> poison, double %7, i64 0
  %i.q = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  %i.r = insertelement <2 x double> poison, double %8, i64 0
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %xtraiter15 = and i64 %.fr.i, 1
  %i.t = icmp eq i64 %i.f, 0
  %unroll_iter18 = and i64 %.fr.i, 2147483646
  %i.u = insertelement <2 x double> poison, double %7, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = insertelement <2 x double> poison, double %7, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %lcmp.mod16.not = icmp eq i64 %xtraiter15, 0
  %lcmp.mod17 = trunc i64 %.fr.i to i1
  %i.y = insertelement <2 x double> poison, double %7, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph86.split.us.split.us.i

.lr.ph86.split.us.split.us.i:                     ; preds = %..loopexit74_crit_edge.us.us.i, %.lr.ph86.split.us.split.us.preheader.i
  %.in.i = phi i32 [ %i.aa, %..loopexit74_crit_edge.us.us.i ], [ %.sroa.3.0.extract.trunc.i, %.lr.ph86.split.us.split.us.preheader.i ]
  %.03984.us.us.i = phi ptr [ %i.bt, %..loopexit74_crit_edge.us.us.i ], [ %0, %.lr.ph86.split.us.split.us.preheader.i ] ; 4 uses
  %.04082.us.us.i = phi ptr [ %i.bu, %..loopexit74_crit_edge.us.us.i ], [ %2, %.lr.ph86.split.us.split.us.preheader.i ] ; 7 uses
  %.04180.us.us.i = phi ptr [ %i.bv, %..loopexit74_crit_edge.us.us.i ], [ %4, %.lr.ph86.split.us.split.us.preheader.i ] ; 7 uses
  %i.aa = add nsw i32 %.in.i, -1                  ; 2 uses
  %.not44.us.us.i = icmp eq ptr %.03984.us.us.i, null
  br i1 %.not44.us.us.i, label %.preheader.us.us.i.preheader, label %.preheader73.us.us.i.preheader

.preheader73.us.us.i.preheader:                   ; preds = %.lr.ph86.split.us.split.us.i
  br i1 %i.g, label %.preheader73.us.us.i.epil.preheader, label %.preheader73.us.us.i

.preheader.us.us.i.preheader:                     ; preds = %.lr.ph86.split.us.split.us.i
  br i1 %i.t, label %.preheader.us.us.i.epil.preheader, label %.preheader.us.us.i

.preheader73.us.us.i:                             ; preds = %.preheader73.us.us.i.preheader, %.preheader73.us.us.i
  %indvars.iv114.i = phi i64 [ %indvars.iv.next115.i.1, %.preheader73.us.us.i ], [ 0, %.preheader73.us.us.i.preheader ] ; 4 uses
  %.076.us.us.i = phi ptr [ %i.au, %.preheader73.us.us.i ], [ %.03984.us.us.i, %.preheader73.us.us.i.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.preheader73.us.us.i ], [ 0, %.preheader73.us.us.i.preheader ]
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.04082.us.us.i, i64 %indvars.iv114.i
  %i.ac = load <2 x double>, ptr %i.ab, align 8, !tbaa !29
  %i.ad = fmul <2 x double> %i.i, %i.ac
  %i.ae = load <2 x float>, ptr %.076.us.us.i, align 4, !tbaa !22
  %i.af = fpext <2 x float> %i.ae to <2 x double>
  %i.ag = fmul <2 x double> %i.k, %i.af
  %i.ah = fadd <2 x double> %i.ad, %i.ag
  %i.ai = fptrunc <2 x double> %i.ah to <2 x float>
end_hunk_9
begin_hunk_10_@_ZN2cv12cpu_baselineL18GEMMSingleMul_64fcEPKNS_7ComplexIdEEmS4_mS4_mPS2_mNS_5Size_IiEES7_ddi:bb.a
  %i.ko = fadd <2 x double> %i.ju, %i.kn
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.kp = phi <2 x double> [ %i.ko, %bb.aj ], [ %i.jt, %bb.ai ]
  %i.kq = getelementptr inbounds nuw [16 x i8], ptr %.2405966.i, i64 %indvars.iv1068.i
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 48
  store <2 x double> %i.kp, ptr %i.kr, align 8, !tbaa !29
  %indvars.iv.next1069.i = add nuw nsw i64 %indvars.iv1068.i, 4 ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.3410947.i, i64 %.idx432.i ; 2 uses
  %.not426.i = icmp sgt i64 %indvars.iv.next1069.i, %i.gx
  br i1 %.not426.i, label %.preheader865.loopexit.i, label %.lr.ph950.i, !llvm.loop !1135

.lr.ph964.i:                                      ; preds = %bb.am, %.lr.ph964.preheader.i
  %indvars.iv1076.i = phi i64 [ %i.hs, %.lr.ph964.preheader.i ], [ %indvars.iv.next1077.i, %bb.am ] ; 3 uses
  %.4411962.i = phi ptr [ %.3410.lcssa.i, %.lr.ph964.preheader.i ], [ %i.lp, %bb.am ] ; 3 uses
  br i1 %i.gw, label %.lr.ph958.preheader.i, label %._crit_edge959.i

.lr.ph958.preheader.i:                            ; preds = %.lr.ph964.i
  %i.kt = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv1076.i
  br label %.lr.ph958.i

.lr.ph958.i:                                      ; preds = %.lr.ph958.i, %.lr.ph958.preheader.i
  %indvars.iv1071.i = phi i64 [ 0, %.lr.ph958.preheader.i ], [ %indvars.iv.next1072.i, %.lr.ph958.i ] ; 2 uses
  %.0956.i = phi ptr [ %i.kt, %.lr.ph958.preheader.i ], [ %i.lh, %.lr.ph958.i ] ; 3 uses
  %i.ku = phi <2 x double> [ zeroinitializer, %.lr.ph958.preheader.i ], [ %i.lg, %.lr.ph958.i ]
  %i.kv = getelementptr inbounds nuw [16 x i8], ptr %.2398.i, i64 %indvars.iv1071.i ; 2 uses
  %.sroa.5751.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  %.sroa.5749.0..0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0956.i, i64 8
  %.sroa.0750.0.copyload.i = load double, ptr %i.kv, align 8, !tbaa !29
  %.sroa.5751.0.copyload.i = load double, ptr %.sroa.5751.0..sroa_idx.i, align 8, !tbaa !29
  %.sroa.5749.0.copyload.i = load double, ptr %.sroa.5749.0..0.sroa_idx.i, align 8, !tbaa !29
  %i.kw = load <2 x double>, ptr %.0956.i, align 8, !tbaa !29 ; 2 uses
  %i.kx = fneg double %.sroa.5749.0.copyload.i
  %i.ky = insertelement <2 x double> poison, double %.sroa.5751.0.copyload.i, i64 0
  %i.kz = shufflevector <2 x double> %i.ky, <2 x double> poison, <2 x i32> zeroinitializer
  %i.la = shufflevector <2 x double> %i.kw, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.lb = insertelement <2 x double> %i.la, double %i.kx, i64 0
  %i.lc = fmul <2 x double> %i.kz, %i.lb
  %i.ld = insertelement <2 x double> poison, double %.sroa.0750.0.copyload.i, i64 0
  %i.le = shufflevector <2 x double> %i.ld, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.le, <2 x double> %i.kw, <2 x double> %i.lc)
  %i.lg = fadd <2 x double> %i.ku, %i.lf          ; 2 uses
  %indvars.iv.next1072.i = add nuw nsw i64 %indvars.iv1071.i, 1 ; 2 uses
  %i.lh = getelementptr inbounds nuw [16 x i8], ptr %.0956.i, i64 %i.c
  %exitcond1075.not.i = icmp eq i64 %indvars.iv.next1072.i, %wide.trip.count1061.i
  br i1 %exitcond1075.not.i, label %._crit_edge959.i, label %.lr.ph958.i, !llvm.loop !1136

._crit_edge959.i:                                 ; preds = %.lr.ph958.i, %.lr.ph964.i
  %i.li = phi <2 x double> [ zeroinitializer, %.lr.ph964.i ], [ %i.lg, %.lr.ph958.i ]
  %i.lj = fmul <2 x double> %i.he, %i.li          ; 2 uses
  %.not427.i = icmp eq ptr %.4411962.i, null
  br i1 %.not427.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %._crit_edge959.i
  %i.lk = load <2 x double>, ptr %.4411962.i, align 8, !tbaa !29
  %i.ll = fmul <2 x double> %i.hg, %i.lk
  %i.lm = fadd <2 x double> %i.lj, %i.ll
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge959.i
  %i.ln = phi <2 x double> [ %i.lm, %bb.al ], [ %i.lj, %._crit_edge959.i ]
  %i.lo = getelementptr inbounds nuw [16 x i8], ptr %.2405966.i, i64 %indvars.iv1076.i
  store <2 x double> %i.ln, ptr %i.lo, align 8, !tbaa !29
  %indvars.iv.next1077.i = add nuw nsw i64 %indvars.iv1076.i, 1 ; 2 uses
  %i.lp = getelementptr inbounds nuw [16 x i8], ptr %.4411962.i, i64 %.0361.i
  %exitcond1080.not.i = icmp eq i64 %indvars.iv.next1077.i, %wide.trip.count1079.i
  br i1 %exitcond1080.not.i, label %._crit_edge965.i, label %.lr.ph964.i, !llvm.loop !1137

._crit_edge965.i:                                 ; preds = %bb.am, %.preheader865.i
  %i.lq = add nuw nsw i32 %.2394967.i, 1          ; 2 uses
  %i.lr = getelementptr inbounds nuw [16 x i8], ptr %.1371968.i, i64 %.0364862.i
  %i.ls = getelementptr inbounds nuw [16 x i8], ptr %.2368969.i, i64 %.0362.i
  %i.lt = getelementptr inbounds nuw [16 x i8], ptr %.2405966.i, i64 %i.e
  %exitcond1081.not.i = icmp eq i32 %i.lq, %.sroa.8.0.extract.trunc.i
  br i1 %exitcond1081.not.i, label %.loopexit869.i, label %bb.ah, !llvm.loop !1138

bb.an:                                            ; preds = %bb.ag
  %i.lu = ashr exact i64 %sext.i, 32              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %scevgep.i704.i = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1152) %scevgep.i704.i, i8 0, i64 1152, i1 false)
  store ptr %scevgep.i704.i, ptr %15, align 8, !tbaa !86
  %i.lv = getelementptr inbounds nuw i8, ptr %15, i64 8
  %.not.i.i705.i = icmp ugt i64 %i.lu, 72
  store i64 %i.lu, ptr %i.lv, align 8, !tbaa !87
  br i1 %.not.i.i705.i, label %bb.ao, label %_ZN2cv10AutoBufferINS_7ComplexIdEELm72EEC2Em.exit.i

bb.ao:                                            ; preds = %bb.an
  %i.lw = icmp ugt i64 %i.lu, 1152921504606846975
  %i.lx = ashr exact i64 %sext.i, 28              ; 2 uses
  %i.ly = select i1 %i.lw, i64 -1, i64 %i.lx
  %i.lz = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ly) #28
          to label %.noexc706.i unwind label %bb.aq ; 3 uses

.noexc706.i:                                      ; preds = %bb.ao
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.lz, i8 0, i64 %i.lx, i1 false)
  store ptr %i.lz, ptr %15, align 8, !tbaa !86
  br label %_ZN2cv10AutoBufferINS_7ComplexIdEELm72EEC2Em.exit.i

_ZN2cv10AutoBufferINS_7ComplexIdEELm72EEC2Em.exit.i: ; preds = %.noexc706.i, %bb.an
  %.pre.i = phi ptr [ %i.lz, %.noexc706.i ], [ %scevgep.i704.i, %bb.an ] ; 11 uses
  %i.ma = icmp sgt i32 %.sroa.8.0.extract.trunc.i, 0
  br i1 %i.ma, label %.lr.ph921.i, label %._crit_edge922.i

.lr.ph921.i:                                      ; preds = %_ZN2cv10AutoBufferINS_7ComplexIdEELm72EEC2Em.exit.i
  %.not419.i = icmp eq ptr %.0365861.i, null      ; 2 uses
  %i.mb = icmp slt i32 %.0373860.i, 1             ; 2 uses
  %i.mc = icmp sgt i32 %.sroa.0336.0.extract.trunc.i, 0
  %i.md = icmp eq i32 %.sroa.0336.0.extract.trunc.i, 0
  %i.me = and i64 %9, 4294967295                  ; 8 uses
  %i.mf = shl nuw nsw i64 %i.me, 4
  %brmerge996.i = select i1 %.not419.i, i1 true, i1 %i.mb
  %wide.trip.count1032.i = zext i32 %.0373860.i to i64 ; 3 uses
  %brmerge999.i = select i1 %i.mb, i1 true, i1 %i.md
  %xtraiter126 = and i64 %wide.trip.count1032.i, 1
  %i.mg = icmp eq i32 %.0373860.i, 1
  %unroll_iter129 = and i64 %wide.trip.count1032.i, 2147483646
  %lcmp.mod127.not = icmp eq i64 %xtraiter126, 0
  %lcmp.mod128 = trunc i32 %.0373860.i to i1
  %min.iters.check90 = icmp samesign ult i64 %i.me, 2
  %n.vec92 = and i64 %9, 2147483646               ; 3 uses
  %cmp.n107 = icmp eq i64 %i.me, %n.vec92
  %xtraiter131 = and i64 %9, 1
  %i.mh = icmp eq i64 %i.me, 1
  %unroll_iter134 = and i64 %9, 2147483646
  %i.mi = insertelement <2 x double> poison, double %10, i64 0
  %i.mj = shufflevector <2 x double> %i.mi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mk = insertelement <2 x double> poison, double %11, i64 0
  %i.ml = shufflevector <2 x double> %i.mk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mm = insertelement <2 x double> poison, double %10, i64 0
  %i.mn = shufflevector <2 x double> %i.mm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mo = insertelement <2 x double> poison, double %11, i64 0
  %i.mp = shufflevector <2 x double> %i.mo, <2 x double> poison, <2 x i32> zeroinitializer
  %lcmp.mod132.not = icmp eq i64 %xtraiter131, 0
  %lcmp.mod133 = trunc i64 %9 to i1
  %i.mq = insertelement <2 x double> poison, double %10, i64 0
  %i.mr = shufflevector <2 x double> %i.mq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ms = insertelement <2 x double> poison, double %11, i64 0
  %i.mt = shufflevector <2 x double> %i.ms, <2 x double> poison, <2 x i32> zeroinitializer
  %min.iters.check = icmp samesign ult i64 %i.me, 4
  %n.vec = and i64 %9, 2147483646                 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %10, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %i.me, %n.vec
  %i.mu = insertelement <2 x double> poison, double %10, i64 0
  %i.mv = shufflevector <2 x double> %i.mu, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit871.i, %.lr.ph921.i
  %.3369919.i = phi ptr [ %4, %.lr.ph921.i ], [ %i.pr, %.loopexit871.i ] ; 5 uses
  %.2372918.i = phi ptr [ %0, %.lr.ph921.i ], [ %i.pq, %.loopexit871.i ] ; 5 uses
  %.3395917.i = phi i32 [ 0, %.lr.ph921.i ], [ %i.pp, %.loopexit871.i ]
  %.3406915.i = phi ptr [ %6, %.lr.ph921.i ], [ %i.ps, %.loopexit871.i ] ; 7 uses
  %.2372918.mux.i = select i1 %.not419.i, ptr %.2372918.i, ptr %.0365861.i
  br i1 %brmerge996.i, label %.loopexit876.i, label %.lr.ph898.i.preheader

.lr.ph898.i.preheader:                            ; preds = %bb.ap
  br i1 %i.mg, label %.lr.ph898.i.epil.preheader, label %.lr.ph898.i

.lr.ph898.i:                                      ; preds = %.lr.ph898.i.preheader, %.lr.ph898.i
  %indvars.iv1029.i = phi i64 [ %indvars.iv.next1030.i.1, %.lr.ph898.i ], [ 0, %.lr.ph898.i.preheader ] ; 4 uses
  %niter130 = phi i64 [ %niter130.next.1, %.lr.ph898.i ], [ 0, %.lr.ph898.i.preheader ]
  %i.mw = mul i64 %indvars.iv1029.i, %.0363863.i
  %i.mx = getelementptr inbounds nuw [16 x i8], ptr %.2372918.i, i64 %i.mw
  %i.my = getelementptr inbounds nuw [16 x i8], ptr %.0365861.i, i64 %indvars.iv1029.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.my, ptr noundef nonnull align 8 dereferenceable(16) %i.mx, i64 16, i1 false), !tbaa.struct !88
  %indvars.iv.next1030.i = or disjoint i64 %indvars.iv1029.i, 1 ; 2 uses
  %i.mz = mul i64 %indvars.iv.next1030.i, %.0363863.i
  %i.na = getelementptr inbounds nuw [16 x i8], ptr %.2372918.i, i64 %i.mz
  %i.nb = getelementptr inbounds nuw [16 x i8], ptr %.0365861.i, i64 %indvars.iv.next1030.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nb, ptr noundef nonnull align 8 dereferenceable(16) %i.na, i64 16, i1 false), !tbaa.struct !88
  %indvars.iv.next1030.i.1 = add nuw nsw i64 %indvars.iv1029.i, 2 ; 2 uses
  %niter130.next.1 = add i64 %niter130, 2         ; 2 uses
  %niter130.ncmp.1 = icmp eq i64 %niter130.next.1, %unroll_iter129
  br i1 %niter130.ncmp.1, label %.loopexit876.i.loopexit.unr-lcssa, label %.lr.ph898.i, !llvm.loop !1139

bb.aq:                                            ; preds = %bb.ao
  %i.nc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.at

.loopexit876.i.loopexit.unr-lcssa:                ; preds = %.lr.ph898.i
  br i1 %lcmp.mod127.not, label %.loopexit876.i, label %.lr.ph898.i.epil.preheader

.lr.ph898.i.epil.preheader:                       ; preds = %.loopexit876.i.loopexit.unr-lcssa, %.lr.ph898.i.preheader
  %indvars.iv1029.i.epil.init = phi i64 [ 0, %.lr.ph898.i.preheader ], [ %indvars.iv.next1030.i.1, %.loopexit876.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod128)
  %i.nd = mul i64 %indvars.iv1029.i.epil.init, %.0363863.i
  %i.ne = getelementptr inbounds nuw [16 x i8], ptr %.2372918.i, i64 %i.nd
  %i.nf = getelementptr inbounds nuw [16 x i8], ptr %.0365861.i, i64 %indvars.iv1029.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nf, ptr noundef nonnull align 8 dereferenceable(16) %i.ne, i64 16, i1 false), !tbaa.struct !88
  br label %.loopexit876.i

.loopexit876.i:                                   ; preds = %.lr.ph898.i.epil.preheader, %.loopexit876.i.loopexit.unr-lcssa, %bb.ap
  %.3399.i = phi ptr [ %.2372918.mux.i, %bb.ap ], [ %.0365861.i, %.loopexit876.i.loopexit.unr-lcssa ], [ %.0365861.i, %.lr.ph898.i.epil.preheader ]
  br i1 %i.mc, label %.preheader874.i, label %.loopexit871.i

.preheader874.i:                                  ; preds = %.loopexit876.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.pre.i, i8 0, i64 %i.mf, i1 false), !tbaa !29
  br i1 %brmerge999.i, label %._crit_edge909.split.thread1122.i, label %.lr.ph904.i

.lr.ph904.i:                                      ; preds = %.preheader874.i, %._crit_edge905.i
  %indvars.iv1042.i = phi i64 [ %indvars.iv.next1043.i, %._crit_edge905.i ], [ 0, %.preheader874.i ] ; 2 uses
  %.2402906.i = phi ptr [ %i.of, %._crit_edge905.i ], [ %2, %.preheader874.i ] ; 3 uses
  %i.ng = getelementptr inbounds nuw [16 x i8], ptr %.3399.i, i64 %indvars.iv1042.i
  %i.nh = load <2 x double>, ptr %i.ng, align 8, !tbaa !29 ; 5 uses
  %i.ni = extractelement <2 x double> %i.nh, i64 1
  %i.nj = fneg double %i.ni                       ; 2 uses
  br i1 %min.iters.check90, label %scalar.ph89.preheader, label %vector.ph91

vector.ph91:                                      ; preds = %.lr.ph904.i
  %broadcast.splat94 = shufflevector <2 x double> %i.nh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splat96 = shufflevector <2 x double> %i.nh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splatinsert97 = insertelement <2 x double> poison, double %i.nj, i64 0
  %broadcast.splat98 = shufflevector <2 x double> %broadcast.splatinsert97, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body99

vector.body99:                                    ; preds = %vector.body99, %vector.ph91
  %index100 = phi i64 [ 0, %vector.ph91 ], [ %index.next105, %vector.body99 ] ; 3 uses
  %i.nk = getelementptr inbounds nuw [16 x i8], ptr %.2402906.i, i64 %index100
  %wide.vec = load <4 x double>, ptr %i.nk, align 8, !tbaa !29 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec101 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.nl = fmul <2 x double> %strided.vec101, %broadcast.splat98
  %i.nm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %broadcast.splat94, <2 x double> %i.nl)
  %i.nn = fmul <2 x double> %broadcast.splat94, %strided.vec101
  %i.no = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %broadcast.splat96, <2 x double> %i.nn)
  %i.np = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %index100 ; 2 uses
  %wide.vec102 = load <4 x double>, ptr %i.np, align 8, !tbaa !29 ; 2 uses
  %strided.vec103 = shufflevector <4 x double> %wide.vec102, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec104 = shufflevector <4 x double> %wide.vec102, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.nq = fadd <2 x double> %strided.vec103, %i.nm
  %i.nr = fadd <2 x double> %i.no, %strided.vec104
  %interleaved.vec = shufflevector <2 x double> %i.nq, <2 x double> %i.nr, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.np, align 8, !tbaa !29
  %index.next105 = add nuw i64 %index100, 2       ; 2 uses
  %i.ns = icmp eq i64 %index.next105, %n.vec92
  br i1 %i.ns, label %middle.block106, label %vector.body99, !llvm.loop !1140

middle.block106:                                  ; preds = %vector.body99
  br i1 %cmp.n107, label %._crit_edge905.i, label %scalar.ph89.preheader

scalar.ph89.preheader:                            ; preds = %.lr.ph904.i, %middle.block106
  %indvars.iv1037.i.ph = phi i64 [ 0, %.lr.ph904.i ], [ %n.vec92, %middle.block106 ]
  %i.nt = shufflevector <2 x double> %i.nh, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.nu = insertelement <2 x double> %i.nt, double %i.nj, i64 0
  br label %scalar.ph89

scalar.ph89:                                      ; preds = %scalar.ph89.preheader, %scalar.ph89
  %indvars.iv1037.i = phi i64 [ %indvars.iv.next1038.i, %scalar.ph89 ], [ %indvars.iv1037.i.ph, %scalar.ph89.preheader ] ; 3 uses
  %i.nv = getelementptr inbounds nuw [16 x i8], ptr %.2402906.i, i64 %indvars.iv1037.i ; 2 uses
  %.sroa.5738.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  %i.nw = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %indvars.iv1037.i ; 2 uses
  %.sroa.0737.0.copyload.i = load double, ptr %i.nv, align 8, !tbaa !29
  %.sroa.5738.0.copyload.i = load double, ptr %.sroa.5738.0..sroa_idx.i, align 8, !tbaa !29
  %i.nx = insertelement <2 x double> poison, double %.sroa.5738.0.copyload.i, i64 0
  %i.ny = shufflevector <2 x double> %i.nx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nz = fmul <2 x double> %i.ny, %i.nu
  %i.oa = insertelement <2 x double> poison, double %.sroa.0737.0.copyload.i, i64 0
  %i.ob = shufflevector <2 x double> %i.oa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ob, <2 x double> %i.nh, <2 x double> %i.nz)
  %i.od = load <2 x double>, ptr %i.nw, align 8, !tbaa !29
  %i.oe = fadd <2 x double> %i.od, %i.oc
  store <2 x double> %i.oe, ptr %i.nw, align 8, !tbaa !29
  %indvars.iv.next1038.i = add nuw nsw i64 %indvars.iv1037.i, 1 ; 2 uses
  %exitcond1041.not.i = icmp eq i64 %indvars.iv.next1038.i, %i.me
  br i1 %exitcond1041.not.i, label %._crit_edge905.i, label %scalar.ph89, !llvm.loop !1141

._crit_edge905.i:                                 ; preds = %scalar.ph89, %middle.block106
  %indvars.iv.next1043.i = add nuw nsw i64 %indvars.iv1042.i, 1 ; 2 uses
  %i.of = getelementptr inbounds nuw [16 x i8], ptr %.2402906.i, i64 %i.c
  %exitcond1046.not.i = icmp eq i64 %indvars.iv.next1043.i, %wide.trip.count1032.i
  br i1 %exitcond1046.not.i, label %._crit_edge909.split.i, label %.lr.ph904.i, !llvm.loop !1142

._crit_edge909.split.i:                           ; preds = %._crit_edge905.i
  %.not420.i = icmp eq ptr %.3369919.i, null
  br i1 %.not420.i, label %.lr.ph914.preheader.i, label %.lr.ph912.i.preheader

._crit_edge909.split.thread1122.i:                ; preds = %.preheader874.i
  %.not4201123.i = icmp eq ptr %.3369919.i, null
  br i1 %.not4201123.i, label %.lr.ph914.preheader.i, label %.lr.ph912.i.preheader

.lr.ph912.i.preheader:                            ; preds = %._crit_edge909.split.i, %._crit_edge909.split.thread1122.i
  br i1 %i.mh, label %.lr.ph912.i.epil.preheader, label %.lr.ph912.i

.lr.ph914.preheader.i:                            ; preds = %._crit_edge909.split.i, %._crit_edge909.split.thread1122.i
  br i1 %min.iters.check, label %.lr.ph914.i.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph914.preheader.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph914.preheader.i ] ; 4 uses
  %i.og = or disjoint i64 %index, 1               ; 2 uses
  %i.oh = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %index
  %i.oi = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %i.og
  %wide.load = load <2 x double>, ptr %i.oh, align 8
  %wide.load88 = load <2 x double>, ptr %i.oi, align 8
  %i.oj = fmul <2 x double> %broadcast.splat, %wide.load
  %i.ok = fmul <2 x double> %broadcast.splat, %wide.load88
  %i.ol = getelementptr inbounds nuw [16 x i8], ptr %.3406915.i, i64 %index
  %i.om = getelementptr inbounds nuw [16 x i8], ptr %.3406915.i, i64 %i.og
  store <2 x double> %i.oj, ptr %i.ol, align 8, !tbaa !29
  store <2 x double> %i.ok, ptr %i.om, align 8, !tbaa !29
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.on = icmp eq i64 %index.next, %n.vec
  br i1 %i.on, label %middle.block, label %vector.body, !llvm.loop !1143

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit871.i, label %.lr.ph914.i.preheader

.lr.ph914.i.preheader:                            ; preds = %.lr.ph914.preheader.i, %middle.block
  %indvars.iv1052.i.ph = phi i64 [ 0, %.lr.ph914.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph914.i

.lr.ph914.i:                                      ; preds = %.lr.ph914.i.preheader, %.lr.ph914.i
  %indvars.iv1052.i = phi i64 [ %indvars.iv.next1053.i, %.lr.ph914.i ], [ %indvars.iv1052.i.ph, %.lr.ph914.i.preheader ] ; 3 uses
  %i.oo = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %indvars.iv1052.i
  %i.op = getelementptr inbounds nuw [16 x i8], ptr %.3406915.i, i64 %indvars.iv1052.i
  %i.oq = load <2 x double>, ptr %i.oo, align 8, !tbaa !29
  %i.or = fmul <2 x double> %i.mv, %i.oq
  store <2 x double> %i.or, ptr %i.op, align 8, !tbaa !29
  %indvars.iv.next1053.i = add nuw nsw i64 %indvars.iv1052.i, 1 ; 2 uses
  %exitcond1056.not.i = icmp eq i64 %indvars.iv.next1053.i, %i.me
  br i1 %exitcond1056.not.i, label %.loopexit871.i, label %.lr.ph914.i, !llvm.loop !1144

.lr.ph912.i:                                      ; preds = %.lr.ph912.i.preheader, %.lr.ph912.i
  %indvars.iv1047.i = phi i64 [ %indvars.iv.next1048.i.1, %.lr.ph912.i ], [ 0, %.lr.ph912.i.preheader ] ; 4 uses
  %.5412910.i = phi ptr [ %i.ph, %.lr.ph912.i ], [ %.3369919.i, %.lr.ph912.i.preheader ] ; 2 uses
  %niter135 = phi i64 [ %niter135.next.1, %.lr.ph912.i ], [ 0, %.lr.ph912.i.preheader ]
  %i.os = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %indvars.iv1047.i
  %i.ot = getelementptr inbounds nuw [16 x i8], ptr %.3406915.i, i64 %indvars.iv1047.i
  %i.ou = load <2 x double>, ptr %i.os, align 8, !tbaa !29
  %i.ov = fmul <2 x double> %i.mj, %i.ou
  %i.ow = load <2 x double>, ptr %.5412910.i, align 8, !tbaa !29
  %i.ox = fmul <2 x double> %i.ml, %i.ow
  %i.oy = fadd <2 x double> %i.ov, %i.ox
  store <2 x double> %i.oy, ptr %i.ot, align 8, !tbaa !29
  %indvars.iv.next1048.i = or disjoint i64 %indvars.iv1047.i, 1 ; 2 uses
  %i.oz = getelementptr inbounds nuw [16 x i8], ptr %.5412910.i, i64 %.0361.i ; 2 uses
  %i.pa = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %indvars.iv.next1048.i
  %i.pb = getelementptr inbounds nuw [16 x i8], ptr %.3406915.i, i64 %indvars.iv.next1048.i
  %i.pc = load <2 x double>, ptr %i.pa, align 8, !tbaa !29
  %i.pd = fmul <2 x double> %i.mn, %i.pc
  %i.pe = load <2 x double>, ptr %i.oz, align 8, !tbaa !29
  %i.pf = fmul <2 x double> %i.mp, %i.pe
  %i.pg = fadd <2 x double> %i.pd, %i.pf
  store <2 x double> %i.pg, ptr %i.pb, align 8, !tbaa !29
  %indvars.iv.next1048.i.1 = add nuw nsw i64 %indvars.iv1047.i, 2 ; 2 uses
  %i.ph = getelementptr inbounds nuw [16 x i8], ptr %i.oz, i64 %.0361.i ; 2 uses
  %niter135.next.1 = add i64 %niter135, 2         ; 2 uses
  %niter135.ncmp.1 = icmp eq i64 %niter135.next.1, %unroll_iter134
  br i1 %niter135.ncmp.1, label %.loopexit871.i.loopexit115.unr-lcssa, label %.lr.ph912.i, !llvm.loop !1145

.loopexit871.i.loopexit115.unr-lcssa:             ; preds = %.lr.ph912.i
  br i1 %lcmp.mod132.not, label %.loopexit871.i, label %.lr.ph912.i.epil.preheader

.lr.ph912.i.epil.preheader:                       ; preds = %.loopexit871.i.loopexit115.unr-lcssa, %.lr.ph912.i.preheader
  %indvars.iv1047.i.epil.init = phi i64 [ 0, %.lr.ph912.i.preheader ], [ %indvars.iv.next1048.i.1, %.loopexit871.i.loopexit115.unr-lcssa ] ; 2 uses
  %.5412910.i.epil.init = phi ptr [ %.3369919.i, %.lr.ph912.i.preheader ], [ %i.ph, %.loopexit871.i.loopexit115.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod133)
  %i.pi = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %indvars.iv1047.i.epil.init
  %i.pj = getelementptr inbounds nuw [16 x i8], ptr %.3406915.i, i64 %indvars.iv1047.i.epil.init
  %i.pk = load <2 x double>, ptr %i.pi, align 8, !tbaa !29
  %i.pl = fmul <2 x double> %i.mr, %i.pk
  %i.pm = load <2 x double>, ptr %.5412910.i.epil.init, align 8, !tbaa !29
  %i.pn = fmul <2 x double> %i.mt, %i.pm
  %i.po = fadd <2 x double> %i.pl, %i.pn
  store <2 x double> %i.po, ptr %i.pj, align 8, !tbaa !29
  br label %.loopexit871.i

.loopexit871.i:                                   ; preds = %.lr.ph912.i.epil.preheader, %.loopexit871.i.loopexit115.unr-lcssa, %.lr.ph914.i, %middle.block, %.loopexit876.i
  %i.pp = add nuw nsw i32 %.3395917.i, 1          ; 2 uses
  %i.pq = getelementptr inbounds nuw [16 x i8], ptr %.2372918.i, i64 %.0364862.i
  %i.pr = getelementptr inbounds nuw [16 x i8], ptr %.3369919.i, i64 %.0362.i
  %i.ps = getelementptr inbounds nuw [16 x i8], ptr %.3406915.i, i64 %i.e
  %exitcond1057.not.i = icmp eq i32 %i.pp, %.sroa.8.0.extract.trunc.i
  br i1 %exitcond1057.not.i, label %._crit_edge922.i, label %bb.ap, !llvm.loop !1146

._crit_edge922.i:                                 ; preds = %.loopexit871.i, %_ZN2cv10AutoBufferINS_7ComplexIdEELm72EEC2Em.exit.i
  %.not.i.i717.i = icmp eq ptr %.pre.i, %scevgep.i704.i
  br i1 %.not.i.i717.i, label %_ZN2cv10AutoBufferINS_7ComplexIdEELm72EED2Ev.exit720.i, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge922.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i) #27
  br label %_ZN2cv10AutoBufferINS_7ComplexIdEELm72EED2Ev.exit720.i

_ZN2cv10AutoBufferINS_7ComplexIdEELm72EED2Ev.exit720.i: ; preds = %bb.ar, %._crit_edge922.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %.loopexit869.i

.loopexit869.i:                                   ; preds = %._crit_edge891.i, %._crit_edge965.i, %_ZN2cv10AutoBufferINS_7ComplexIdEELm72EED2Ev.exit720.i, %.preheader868.i, %.preheader880.i, %_ZN2cv10AutoBufferINS_7ComplexIdEELm72EED2Ev.exit.i
  %i.pt = load ptr, ptr %13, align 8, !tbaa !86   ; 3 uses
  %.not.i.i725.i = icmp eq ptr %i.pt, %scevgep.i.i
  %i.pu = icmp eq ptr %i.pt, null
  %or.cond.i726.i = or i1 %.not.i.i725.i, %i.pu
  br i1 %or.cond.i726.i, label %_ZN2cv12cpu_baselineL13GEMMSingleMulINS_7ComplexIdEES3_EEvPKT_mS6_mS6_mPS4_mNS_5Size_IiEES9_ddi.exit, label %bb.as

bb.as:                                            ; preds = %.loopexit869.i
  call void @_ZdaPv(ptr noundef nonnull %i.pt) #27
  br label %_ZN2cv12cpu_baselineL13GEMMSingleMulINS_7ComplexIdEES3_EEvPKT_mS6_mS6_mPS4_mNS_5Size_IiEES9_ddi.exit

end_hunk_10
begin_hunk_11_@_ZN2cv12cpu_baselineL17GEMMBlockMul_64fcEPKNS_7ComplexIdEEmS4_mPS2_mNS_5Size_IiEES7_i:bb.a
.lr.ph341.us.preheader.i:                         ; preds = %.preheader321.us.i
  %i.cj = zext i32 %.1144.lcssa.us.i to i64
  br label %.lr.ph341.us.i

._crit_edge348.us.i:                              ; preds = %._crit_edge.us.i
  %i.ck = add nuw nsw i32 %.0149350.us.i, 1       ; 2 uses
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %.0140351.us.i, i64 %.0138.i
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %.0153349.us.i, i64 %i.e
  %exitcond444.not.i = icmp eq i32 %i.ck, %.sroa.3.0.extract.trunc.i
  br i1 %exitcond444.not.i, label %.loopexit320.i, label %.lr.ph352.split.us.i, !llvm.loop !1151

.lr.ph352.split.i:                                ; preds = %.lr.ph352.i
  %brmerge402.i = select i1 %.not162.i, i1 true, i1 %i.q
  br i1 %brmerge402.i, label %.loopexit320.i, label %.preheader322.preheader.i

.preheader322.preheader.i:                        ; preds = %.lr.ph352.split.i
  %wide.trip.count.i = and i64 %.0142.in.i, 2147483647
  %xtraiter = and i64 %.0142.in.i, 1
  %i.cn = icmp eq i64 %wide.trip.count.i, 1
  %unroll_iter = and i64 %.0142.in.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod93 = trunc i64 %.0142.in.i to i1
  br label %.preheader322.i

.preheader319.i:                                  ; preds = %_ZN2cv10AutoBufferINS_7ComplexIdEELm72EE8allocateEm.exit.i
  br i1 %i.p, label %.lr.ph399.i, label %.loopexit320.i

.lr.ph399.i:                                      ; preds = %.preheader319.i
  %.not157.i = icmp eq ptr %.0139.i, null         ; 2 uses
  %i.co = icmp slt i32 %.0142.i, 1
  %.not158373.i = icmp slt i32 %.sroa.0128.0.extract.trunc.i, 4
  %.not160.i = icmp eq i32 %i.b, 0                ; 3 uses
  %i.cp = icmp sgt i32 %.0142.i, 0                ; 2 uses
  %i.cq = shl i64 %7, 32
  %sext.i = add i64 %i.cq, -17179869184
  %i.cr = ashr exact i64 %sext.i, 32
  %brmerge404.i = select i1 %.not157.i, i1 true, i1 %i.co
  %wide.trip.count448.i = and i64 %.0142.in.i, 2147483647 ; 3 uses
  %wide.trip.count461.i = and i64 %7, 4294967295
  %xtraiter99 = and i64 %.0142.in.i, 1
  %i.cs = icmp eq i64 %wide.trip.count448.i, 1
  %unroll_iter102 = and i64 %.0142.in.i, 2147483646
  %lcmp.mod100.not = icmp eq i64 %xtraiter99, 0
  %lcmp.mod101 = trunc i64 %.0142.in.i to i1
  br label %bb.h

.preheader322.i:                                  ; preds = %..loopexit323_crit_edge.i, %.preheader322.preheader.i
  %.0140351.i = phi ptr [ %i.dd, %..loopexit323_crit_edge.i ], [ %0, %.preheader322.preheader.i ] ; 4 uses
  %.0149350.i = phi i32 [ %i.dc, %..loopexit323_crit_edge.i ], [ 0, %.preheader322.preheader.i ]
  br i1 %i.cn, label %.epil.preheader, label %.preheader322.i.new

.preheader322.i.new:                              ; preds = %.preheader322.i, %.preheader322.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader322.i.new ], [ 0, %.preheader322.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader322.i.new ], [ 0, %.preheader322.i ]
  %i.ct = mul i64 %indvars.iv.i, %.0137.i
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %.0140351.i, i64 %i.ct
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %.0139.i, i64 %indvars.iv.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 8 dereferenceable(16) %i.cu, i64 16, i1 false), !tbaa.struct !88
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.cw = mul i64 %indvars.iv.next.i, %.0137.i
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %.0140351.i, i64 %i.cw
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %.0139.i, i64 %indvars.iv.next.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull align 8 dereferenceable(16) %i.cx, i64 16, i1 false), !tbaa.struct !88
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit323_crit_edge.i.unr-lcssa, label %.preheader322.i.new, !llvm.loop !1147

..loopexit323_crit_edge.i.unr-lcssa:              ; preds = %.preheader322.i.new
  br i1 %lcmp.mod.not, label %..loopexit323_crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit323_crit_edge.i.unr-lcssa, %.preheader322.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader322.i ], [ %indvars.iv.next.i.1, %..loopexit323_crit_edge.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod93)
  %i.cz = mul i64 %indvars.iv.i.epil.init, %.0137.i
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %.0140351.i, i64 %i.cz
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %.0139.i, i64 %indvars.iv.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.db, ptr noundef nonnull align 8 dereferenceable(16) %i.da, i64 16, i1 false), !tbaa.struct !88
  br label %..loopexit323_crit_edge.i

..loopexit323_crit_edge.i:                        ; preds = %..loopexit323_crit_edge.i.unr-lcssa, %.epil.preheader
  %i.dc = add nuw nsw i32 %.0149350.i, 1          ; 2 uses
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %.0140351.i, i64 %.0138.i
  %exitcond427.not.i = icmp eq i32 %i.dc, %.sroa.3.0.extract.trunc.i
  br i1 %exitcond427.not.i, label %.loopexit320.i, label %.preheader322.i, !llvm.loop !1151

bb.h:                                             ; preds = %._crit_edge389.i, %.lr.ph399.i
  %.1141398.i = phi ptr [ %0, %.lr.ph399.i ], [ %i.gz, %._crit_edge389.i ] ; 5 uses
  %.1150397.i = phi i32 [ 0, %.lr.ph399.i ], [ %i.gy, %._crit_edge389.i ]
  %.1154394.i = phi ptr [ %4, %.lr.ph399.i ], [ %i.ha, %._crit_edge389.i ] ; 6 uses
  %.1141398.mux.i = select i1 %.not157.i, ptr %.1141398.i, ptr %.0139.i
  br i1 %brmerge404.i, label %.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.h
  br i1 %i.cs, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv445.i = phi i64 [ %indvars.iv.next446.i.1, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 4 uses
  %niter103 = phi i64 [ %niter103.next.1, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.de = mul i64 %indvars.iv445.i, %.0137.i
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %.1141398.i, i64 %i.de
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %.0139.i, i64 %indvars.iv445.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 8 dereferenceable(16) %i.df, i64 16, i1 false), !tbaa.struct !88
  %indvars.iv.next446.i = or disjoint i64 %indvars.iv445.i, 1 ; 2 uses
  %i.dh = mul i64 %indvars.iv.next446.i, %.0137.i
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %.1141398.i, i64 %i.dh
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %.0139.i, i64 %indvars.iv.next446.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, ptr noundef nonnull align 8 dereferenceable(16) %i.di, i64 16, i1 false), !tbaa.struct !88
  %indvars.iv.next446.i.1 = add nuw nsw i64 %indvars.iv445.i, 2 ; 2 uses
  %niter103.next.1 = add i64 %niter103, 2         ; 2 uses
  %niter103.ncmp.1 = icmp eq i64 %niter103.next.1, %unroll_iter102
  br i1 %niter103.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1152

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i
  br i1 %lcmp.mod100.not, label %.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv445.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next446.i.1, %.loopexit.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod101)
  %i.dk = mul i64 %indvars.iv445.i.epil.init, %.0137.i
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %.1141398.i, i64 %i.dk
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %.0139.i, i64 %indvars.iv445.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i64 16, i1 false), !tbaa.struct !88
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %bb.h
  %.1152.i = phi ptr [ %.1141398.mux.i, %bb.h ], [ %.0139.i, %.loopexit.i.loopexit.unr-lcssa ], [ %.0139.i, %.lr.ph.i.epil.preheader ] ; 2 uses
  br i1 %.not158373.i, label %.preheader.i, label %.lr.ph376.i

.preheader.loopexit.i:                            ; preds = %._crit_edge.i
  %i.dn = trunc nuw nsw i64 %indvars.iv.next456.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.loopexit.i
  %.1147.lcssa.i = phi i32 [ 0, %.loopexit.i ], [ %i.dn, %.preheader.loopexit.i ] ; 3 uses
  %i.do = icmp slt i32 %.1147.lcssa.i, %.sroa.0128.0.extract.trunc.i
  br i1 %i.do, label %.lr.ph388.i, label %._crit_edge389.i

.lr.ph388.i:                                      ; preds = %.preheader.i
  %i.dp = zext nneg i32 %.1147.lcssa.i to i64     ; 2 uses
  br i1 %i.cp, label %.lr.ph388.split.us.i, label %.lr.ph388.split.i

.lr.ph388.split.us.i:                             ; preds = %.lr.ph388.i, %._crit_edge384.us.i
  %indvars.iv471.i = phi i64 [ %indvars.iv.next472.i, %._crit_edge384.us.i ], [ %i.dp, %.lr.ph388.i ] ; 4 uses
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv471.i
  br i1 %.not160.i, label %.lr.ph383.us.i.preheader, label %bb.i

bb.i:                                             ; preds = %.lr.ph388.split.us.i
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %.1154394.i, i64 %indvars.iv471.i
  %i.ds = load <2 x double>, ptr %i.dr, align 8, !tbaa !29
  br label %.lr.ph383.us.i.preheader

.lr.ph383.us.i.preheader:                         ; preds = %bb.i, %.lr.ph388.split.us.i
  %.ph = phi <2 x double> [ zeroinitializer, %.lr.ph388.split.us.i ], [ %i.ds, %bb.i ]
  br label %.lr.ph383.us.i

.lr.ph383.us.i:                                   ; preds = %.lr.ph383.us.i.preheader, %.lr.ph383.us.i
  %indvars.iv466.i = phi i64 [ %indvars.iv.next467.i, %.lr.ph383.us.i ], [ 0, %.lr.ph383.us.i.preheader ] ; 2 uses
  %.0381.us.i = phi ptr [ %i.eg, %.lr.ph383.us.i ], [ %i.dq, %.lr.ph383.us.i.preheader ] ; 3 uses
  %i.dt = phi <2 x double> [ %i.ef, %.lr.ph383.us.i ], [ %.ph, %.lr.ph383.us.i.preheader ]
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %.1152.i, i64 %indvars.iv466.i ; 2 uses
  %.sroa.5242.0..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %.sroa.5.0..0.sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %.0381.us.i, i64 8
  %.sroa.0241.0.copyload.us.i = load double, ptr %i.du, align 8, !tbaa !29
  %.sroa.5242.0.copyload.us.i = load double, ptr %.sroa.5242.0..sroa_idx.us.i, align 8, !tbaa !29
  %.sroa.5.0.copyload.us.i = load double, ptr %.sroa.5.0..0.sroa_idx.us.i, align 8, !tbaa !29
  %i.dv = load <2 x double>, ptr %.0381.us.i, align 8, !tbaa !29 ; 2 uses
  %i.dw = fneg double %.sroa.5.0.copyload.us.i
  %i.dx = insertelement <2 x double> poison, double %.sroa.5242.0.copyload.us.i, i64 0
  %i.dy = shufflevector <2 x double> %i.dx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dz = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ea = insertelement <2 x double> %i.dz, double %i.dw, i64 0
  %i.eb = fmul <2 x double> %i.dy, %i.ea
  %i.ec = insertelement <2 x double> poison, double %.sroa.0241.0.copyload.us.i, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ed, <2 x double> %i.dv, <2 x double> %i.eb)
  %i.ef = fadd <2 x double> %i.dt, %i.ee          ; 2 uses
  %indvars.iv.next467.i = add nuw nsw i64 %indvars.iv466.i, 1 ; 2 uses
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %.0381.us.i, i64 %i.d
  %exitcond470.not.i = icmp eq i64 %indvars.iv.next467.i, %wide.trip.count448.i
  br i1 %exitcond470.not.i, label %._crit_edge384.us.i, label %.lr.ph383.us.i, !llvm.loop !1153

._crit_edge384.us.i:                              ; preds = %.lr.ph383.us.i
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %.1154394.i, i64 %indvars.iv471.i
  store <2 x double> %i.ef, ptr %i.eh, align 8, !tbaa !29
  %indvars.iv.next472.i = add nuw nsw i64 %indvars.iv471.i, 1 ; 2 uses
  %exitcond475.not.i = icmp eq i64 %indvars.iv.next472.i, %wide.trip.count461.i
  br i1 %exitcond475.not.i, label %._crit_edge389.i, label %.lr.ph388.split.us.i, !llvm.loop !1154

.lr.ph388.split.i:                                ; preds = %.lr.ph388.i
  br i1 %.not160.i, label %.lr.ph388.split.split.us.preheader.i, label %._crit_edge389.i

.lr.ph388.split.split.us.preheader.i:             ; preds = %.lr.ph388.split.i
  %i.ei = shl nuw nsw i64 %i.dp, 4
  %scevgep.i = getelementptr i8, ptr %.1154394.i, i64 %i.ei
  %i.ej = xor i32 %.1147.lcssa.i, -1
  %i.ek = add i32 %i.ej, %.sroa.0128.0.extract.trunc.i
  %i.el = zext i32 %i.ek to i64
  %i.em = shl nuw nsw i64 %i.el, 4
  %i.en = add nuw nsw i64 %i.em, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.en, i1 false), !tbaa !29
  br label %._crit_edge389.i

.lr.ph376.i:                                      ; preds = %.loopexit.i, %._crit_edge.i
  %indvars.iv455.i = phi i64 [ %indvars.iv.next456.i, %._crit_edge.i ], [ 0, %.loopexit.i ] ; 4 uses
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv455.i
  br i1 %.not160.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph376.i
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %.1154394.i, i64 %indvars.iv455.i ; 4 uses
  %i.eq = load <2 x double>, ptr %i.ep, align 8, !tbaa !29
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.es = load <2 x double>, ptr %i.er, align 8, !tbaa !29
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.eu = load <2 x double>, ptr %i.et, align 8, !tbaa !29
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 48
  %i.ew = load <2 x double>, ptr %i.ev, align 8, !tbaa !29
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph376.i
  %i.ex = phi <2 x double> [ %i.eq, %bb.j ], [ zeroinitializer, %.lr.ph376.i ] ; 2 uses
  %i.ey = phi <2 x double> [ %i.es, %bb.j ], [ zeroinitializer, %.lr.ph376.i ] ; 2 uses
  %i.ez = phi <2 x double> [ %i.eu, %bb.j ], [ zeroinitializer, %.lr.ph376.i ] ; 2 uses
  %i.fa = phi <2 x double> [ %i.ew, %bb.j ], [ zeroinitializer, %.lr.ph376.i ] ; 2 uses
  br i1 %i.cp, label %.lr.ph365.i, label %._crit_edge.i

.lr.ph365.i:                                      ; preds = %bb.k, %.lr.ph365.i
  %indvars.iv450.i = phi i64 [ %indvars.iv.next451.i, %.lr.ph365.i ], [ 0, %bb.k ] ; 2 uses
  %.0132364.i = phi ptr [ %i.gp, %.lr.ph365.i ], [ %i.eo, %bb.k ] ; 9 uses
  %i.fb = phi <2 x double> [ %i.gb, %.lr.ph365.i ], [ %i.ex, %bb.k ]
  %i.fc = phi <2 x double> [ %i.ge, %.lr.ph365.i ], [ %i.ey, %bb.k ]
  %i.fd = phi <2 x double> [ %i.gh, %.lr.ph365.i ], [ %i.ez, %bb.k ]
  %i.fe = phi <2 x double> [ %i.go, %.lr.ph365.i ], [ %i.fa, %bb.k ]
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %.1152.i, i64 %indvars.iv450.i ; 2 uses
  %.sroa.8266.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %.sroa.5262.0..0132.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0132364.i, i64 8
  %.sroa.5262.0.copyload.i = load double, ptr %.sroa.5262.0..0132.sroa_idx.i, align 8, !tbaa !29
  %i.fg = load <2 x double>, ptr %.0132364.i, align 8, !tbaa !29 ; 2 uses
  %i.fh = fneg double %.sroa.5262.0.copyload.i
  %i.fi = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.fj = insertelement <2 x double> %i.fi, double %i.fh, i64 0
  %i.fk = getelementptr inbounds nuw i8, ptr %.0132364.i, i64 16
  %.sroa.5258.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0132364.i, i64 24
  %.sroa.5258.0.copyload.i = load double, ptr %.sroa.5258.0..sroa_idx.i, align 8, !tbaa !29
  %i.fl = load <2 x double>, ptr %i.fk, align 8, !tbaa !29 ; 2 uses
  %i.fm = fneg double %.sroa.5258.0.copyload.i
  %i.fn = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.fo = insertelement <2 x double> %i.fn, double %i.fm, i64 0
  %i.fp = getelementptr inbounds nuw i8, ptr %.0132364.i, i64 32
  %.sroa.5254.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0132364.i, i64 40
  %.sroa.5254.0.copyload.i = load double, ptr %.sroa.5254.0..sroa_idx.i, align 8, !tbaa !29
  %i.fq = load <2 x double>, ptr %i.fp, align 8, !tbaa !29 ; 2 uses
  %i.fr = fneg double %.sroa.5254.0.copyload.i
  %i.fs = shufflevector <2 x double> %i.fq, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ft = insertelement <2 x double> %i.fs, double %i.fr, i64 0
  %i.fu = getelementptr inbounds nuw i8, ptr %.0132364.i, i64 48
  %.sroa.5250.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0132364.i, i64 56
  %.sroa.0265.0.copyload.i = load double, ptr %i.ff, align 8, !tbaa !29
  %.sroa.8266.0.copyload.i = load double, ptr %.sroa.8266.0..sroa_idx.i, align 8, !tbaa !29
  %i.fv = insertelement <2 x double> poison, double %.sroa.8266.0.copyload.i, i64 0
  %i.fw = shufflevector <2 x double> %i.fv, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.fx = fmul <2 x double> %i.fw, %i.fj
  %i.fy = insertelement <2 x double> poison, double %.sroa.0265.0.copyload.i, i64 0
  %i.fz = shufflevector <2 x double> %i.fy, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ga = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fz, <2 x double> %i.fg, <2 x double> %i.fx)
  %i.gb = fadd <2 x double> %i.fb, %i.ga          ; 2 uses
  %i.gc = fmul <2 x double> %i.fw, %i.fo
  %i.gd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fz, <2 x double> %i.fl, <2 x double> %i.gc)
  %i.ge = fadd <2 x double> %i.fc, %i.gd          ; 2 uses
  %i.gf = fmul <2 x double> %i.fw, %i.ft
  %i.gg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fz, <2 x double> %i.fq, <2 x double> %i.gf)
  %i.gh = fadd <2 x double> %i.fd, %i.gg          ; 2 uses
  %.sroa.5250.0.copyload.i = load double, ptr %.sroa.5250.0..sroa_idx.i, align 8, !tbaa !29
  %i.gi = load <2 x double>, ptr %i.fu, align 8, !tbaa !29 ; 2 uses
  %i.gj = fneg double %.sroa.5250.0.copyload.i
  %i.gk = shufflevector <2 x double> %i.gi, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.gl = insertelement <2 x double> %i.gk, double %i.gj, i64 0
  %i.gm = fmul <2 x double> %i.fw, %i.gl
  %i.gn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fz, <2 x double> %i.gi, <2 x double> %i.gm)
  %i.go = fadd <2 x double> %i.fe, %i.gn          ; 2 uses
  %indvars.iv.next451.i = add nuw nsw i64 %indvars.iv450.i, 1 ; 2 uses
  %i.gp = getelementptr inbounds nuw [16 x i8], ptr %.0132364.i, i64 %i.d
  %exitcond454.not.i = icmp eq i64 %indvars.iv.next451.i, %wide.trip.count448.i
  br i1 %exitcond454.not.i, label %._crit_edge.i, label %.lr.ph365.i, !llvm.loop !1155

._crit_edge.i:                                    ; preds = %.lr.ph365.i, %bb.k
  %i.gq = phi <2 x double> [ %i.ex, %bb.k ], [ %i.gb, %.lr.ph365.i ]
  %i.gr = phi <2 x double> [ %i.ey, %bb.k ], [ %i.ge, %.lr.ph365.i ]
  %i.gs = phi <2 x double> [ %i.ez, %bb.k ], [ %i.gh, %.lr.ph365.i ]
  %i.gt = phi <2 x double> [ %i.fa, %bb.k ], [ %i.go, %.lr.ph365.i ]
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %.1154394.i, i64 %indvars.iv455.i ; 4 uses
  store <2 x double> %i.gq, ptr %i.gu, align 8, !tbaa !29
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  store <2 x double> %i.gr, ptr %i.gv, align 8, !tbaa !29
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 32
  store <2 x double> %i.gs, ptr %i.gw, align 8, !tbaa !29
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 48
  store <2 x double> %i.gt, ptr %i.gx, align 8, !tbaa !29
  %indvars.iv.next456.i = add nuw nsw i64 %indvars.iv455.i, 4 ; 3 uses
  %.not158.i = icmp sgt i64 %indvars.iv.next456.i, %i.cr
  br i1 %.not158.i, label %.preheader.loopexit.i, label %.lr.ph376.i, !llvm.loop !1156

._crit_edge389.i:                                 ; preds = %._crit_edge384.us.i, %.lr.ph388.split.i, %.lr.ph388.split.split.us.preheader.i, %.preheader.i
  %i.gy = add nuw nsw i32 %.1150397.i, 1          ; 2 uses
  %i.gz = getelementptr inbounds nuw [16 x i8], ptr %.1141398.i, i64 %.0138.i
  %i.ha = getelementptr [16 x i8], ptr %.1154394.i, i64 %i.e
  %exitcond476.not.i = icmp eq i32 %i.gy, %.sroa.3.0.extract.trunc.i
  br i1 %exitcond476.not.i, label %.loopexit320.i, label %bb.h, !llvm.loop !1157

.loopexit320.i:                                   ; preds = %..loopexit323_crit_edge.i, %._crit_edge348.us.i, %._crit_edge389.i, %.preheader319.i, %.lr.ph352.split.i, %.preheader324.i
  %i.hb = load ptr, ptr %9, align 8, !tbaa !86    ; 3 uses
  %.not.i.i235.i = icmp eq ptr %i.hb, %scevgep.i.i
  %i.hc = icmp eq ptr %i.hb, null
  %or.cond.i.i = or i1 %.not.i.i235.i, %i.hc
  br i1 %or.cond.i.i, label %_ZN2cv12cpu_baselineL12GEMMBlockMulINS_7ComplexIdEES3_EEvPKT_mS6_mPT0_mNS_5Size_IiEESA_i.exit, label %bb.l

bb.l:                                             ; preds = %.loopexit320.i
  call void @_ZdaPv(ptr noundef nonnull %i.hb) #27
  br label %_ZN2cv12cpu_baselineL12GEMMBlockMulINS_7ComplexIdEES3_EEvPKT_mS6_mPT0_mNS_5Size_IiEESA_i.exit

bb.m:                                             ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.m) #27
  br label %_ZN2cv10AutoBufferINS_7ComplexIdEELm72EED2Ev.exit240.i

_ZN2cv10AutoBufferINS_7ComplexIdEELm72EED2Ev.exit240.i: ; preds = %bb.m, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  resume { ptr, i32 } %i.l

_ZN2cv12cpu_baselineL12GEMMBlockMulINS_7ComplexIdEES3_EEvPKT_mS6_mPT0_mNS_5Size_IiEESA_i.exit: ; preds = %.loopexit320.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv12cpu_baselineL14GEMMStore_64fcEPKNS_7ComplexIdEEmS4_mPS2_mNS_5Size_IiEEddi(ptr nofree noundef readonly captures(address) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 %6, double noundef %7, double noundef %8, i32 noundef %9) unnamed_addr #7 {
bb.a:
  %.fr.i = freeze i64 %6                          ; 8 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %.fr.i, 32 ; 3 uses
  %i.a = lshr i64 %1, 4                           ; 2 uses
  %i.b = lshr i64 %3, 4                           ; 2 uses
  %i.c = lshr i64 %5, 4                           ; 2 uses
  %.not.i = icmp eq ptr %0, null                  ; 2 uses
  %i.d = and i32 %9, 4
  %.not43.i = icmp eq i32 %i.d, 0                 ; 2 uses
  %..i = select i1 %.not43.i, i64 %i.a, i64 1
  %.46.i = select i1 %.not43.i, i64 1, i64 %i.a
  %.039.i = select i1 %.not.i, i64 0, i64 %..i
  %.038.i = select i1 %.not.i, i64 0, i64 %.46.i  ; 2 uses
  %.not4472.i = icmp ne i64 %.sroa.3.0.extract.shift.i, 0
  %.sroa.035.0.extract.trunc.i = trunc i64 %.fr.i to i32
  %i.e = icmp sgt i32 %.sroa.035.0.extract.trunc.i, 0
  %or.cond.i = and i1 %.not4472.i, %i.e
  br i1 %or.cond.i, label %.lr.ph79.split.us.split.us.preheader.i, label %_ZN2cv12cpu_baselineL9GEMMStoreINS_7ComplexIdEES3_EEvPKT_mPKT0_mPS4_mNS_5Size_IiEEddi.exit

.lr.ph79.split.us.split.us.preheader.i:           ; preds = %bb.a
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32
  %wide.trip.count109.i = and i64 %.fr.i, 2147483647 ; 7 uses
  %i.f = add nuw nsw i64 %.sroa.3.0.extract.shift.i, 4294967295
  %i.g = and i64 %i.f, 4294967295                 ; 2 uses
  %i.h = mul i64 %i.c, %i.g
  %i.i = add i64 %i.h, %wide.trip.count109.i
  %i.j = shl i64 %i.i, 4
  %scevgep = getelementptr i8, ptr %4, i64 %i.j
  %i.k = mul i64 %i.b, %i.g
  %i.l = add i64 %i.k, %wide.trip.count109.i
  %i.m = shl i64 %i.l, 4
  %scevgep13 = getelementptr i8, ptr %2, i64 %i.m
  %xtraiter = and i64 %.fr.i, 1
  %i.n = icmp eq i64 %wide.trip.count109.i, 1
  %unroll_iter = and i64 %.fr.i, 2147483646
  %i.o = insertelement <2 x double> poison, double %7, i64 0
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = insertelement <2 x double> poison, double %8, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = insertelement <2 x double> poison, double %7, i64 0
  %i.t = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> zeroinitializer
  %i.u = insertelement <2 x double> poison, double %8, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod18 = trunc i64 %.fr.i to i1
  %i.w = insertelement <2 x double> poison, double %7, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = insertelement <2 x double> poison, double %8, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %min.iters.check = icmp samesign ult i64 %wide.trip.count109.i, 4
  %bound0 = icmp ult ptr %4, %scevgep13
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.aa = or i64 %3, %5
  %i.ab = icmp slt i64 %i.aa, 0
  %i.ac = or i1 %found.conflict, %i.ab
  %n.vec = and i64 %.fr.i, 2147483646             ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %7, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %wide.trip.count109.i, %n.vec
  %xtraiter19 = and i64 %.fr.i, 1
  %lcmp.mod20.not = icmp eq i64 %xtraiter19, 0
  %i.ad = insertelement <2 x double> poison, double %7, i64 0
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer
  %i.af = insertelement <2 x double> poison, double %7, i64 0
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
end_hunk_11
