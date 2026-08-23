Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/nrjac?download=true
inline.NumInlined: 168
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_Z6jacobiPPdiS_S0_Pi:bb.a
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader201.us.preheader.i ], [ %indvars.iv.next.i.7, %.lr.ph.i.preheader.unr-lcssa ]
  %lcmp.mod58 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod58)
  br label %.preheader201.us.i.epil

.preheader201.us.i.epil:                          ; preds = %.preheader201.us.i.epil, %.preheader201.us.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.preheader201.us.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.preheader201.us.i.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.preheader201.us.i.epil.preheader ], [ %epil.iter.next, %.preheader201.us.i.epil ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i.epil
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !9  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ah, i8 0, i64 %i.f, i1 false), !tbaa !12
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i.epil
  store double 1.000000e+00, ptr %i.ai, align 8, !tbaa !12
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.i.preheader, label %.preheader201.us.i.epil, !llvm.loop !16

.lr.ph.i.preheader:                               ; preds = %.preheader201.us.i.epil, %.lr.ph.i.preheader.unr-lcssa
  %xtraiter59 = and i64 %i.e, 3                   ; 3 uses
  %i.aj = icmp ult i32 %1, 4
  br i1 %i.aj, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter63 = and i64 %i.e, 2147483644
  br label %.lr.ph.i

.preheader199.i.unr-lcssa:                        ; preds = %.lr.ph.i
  %lcmp.mod61.not = icmp eq i64 %xtraiter59, 0
  br i1 %lcmp.mod61.not, label %.preheader199.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader199.i.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv244.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next245.i.3, %.preheader199.i.unr-lcssa ]
  %lcmp.mod62 = icmp ne i64 %xtraiter59, 0
  tail call void @llvm.assume(i1 %lcmp.mod62)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv244.i.epil = phi i64 [ %indvars.iv.next245.i.epil, %.lr.ph.i.epil ], [ %indvars.iv244.i.epil.init, %.lr.ph.i.epil.preheader ] ; 6 uses
  %epil.iter60 = phi i64 [ %epil.iter60.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv244.i.epil
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !9
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv244.i.epil
  %i.an = load double, ptr %i.am, align 8, !tbaa !12 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv244.i.epil
  store double %i.an, ptr %i.ao, align 8, !tbaa !12
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv244.i.epil
  store double %i.an, ptr %i.ap, align 8, !tbaa !12
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv244.i.epil
  store double 0.000000e+00, ptr %i.aq, align 8, !tbaa !12
  %indvars.iv.next245.i.epil = add nuw nsw i64 %indvars.iv244.i.epil, 1
  %epil.iter60.next = add i64 %epil.iter60, 1     ; 2 uses
  %epil.iter60.cmp.not = icmp eq i64 %epil.iter60.next, %xtraiter59
  br i1 %epil.iter60.cmp.not, label %.preheader199.i, label %.lr.ph.i.epil, !llvm.loop !18

.preheader199.i:                                  ; preds = %.lr.ph.i.epil, %.preheader199.i.unr-lcssa
  %i.ar = add nsw i32 %1, -1
  %.not16 = icmp eq i32 %1, 1
  %i.as = mul nuw nsw i32 %1, %1
  %i.at = uitofp nneg i32 %i.as to double
  %wide.trip.count259.i = zext nneg i32 %i.ar to i64 ; 2 uses
  br i1 %.not16, label %_ZL6jacobiIPPdEiT_iS0_S2_.exit, label %.preheader198.i.us.preheader

.preheader198.i.us.preheader:                     ; preds = %.preheader199.i
  %i.au = shl nuw nsw i64 %i.e, 3                 ; 3 uses
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.au ; 2 uses
  %scevgep18 = getelementptr i8, ptr %2, i64 %i.au ; 2 uses
  %scevgep19 = getelementptr i8, ptr %i.c, i64 %i.au ; 2 uses
  %i.av = add nsw i32 %1, -3                      ; 2 uses
  %i.aw = add nsw i64 %i.e, -2
  %xtraiter82 = and i64 %i.e, 1
  %i.ax = icmp eq i64 %i.g, 0
  %unroll_iter86 = and i64 %i.e, 2147483646
  %lcmp.mod84.not = icmp eq i64 %xtraiter82, 0
  %lcmp.mod85 = trunc i32 %1 to i1
  %min.iters.check = icmp ult i32 %1, 8
  %bound0 = icmp ult ptr %i.b, %scevgep18
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound020 = icmp ult ptr %i.b, %scevgep19
  %bound121 = icmp ult ptr %i.c, %scevgep
  %found.conflict22 = and i1 %bound020, %bound121
  %conflict.rdx = or i1 %found.conflict, %found.conflict22
  %bound023 = icmp ult ptr %2, %scevgep19
  %bound124 = icmp ult ptr %i.c, %scevgep18
  %found.conflict25 = and i1 %bound023, %bound124
  %conflict.rdx26 = or i1 %conflict.rdx, %found.conflict25
  %n.vec = and i64 %i.e, 2147483640               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.e
  %xtraiter88 = and i64 %i.e, 3                   ; 2 uses
  %lcmp.mod89.not = icmp eq i64 %xtraiter88, 0
  br label %.preheader198.i.us

.preheader198.i.us:                               ; preds = %.preheader198.i.us.preheader, %._crit_edge238.i.loopexit.us
  %.0167240.i.us = phi i32 [ %i.nw, %._crit_edge238.i.loopexit.us ], [ 1, %.preheader198.i.us.preheader ] ; 3 uses
  %.0168239.i.us = phi i32 [ %.3171.i.us, %._crit_edge238.i.loopexit.us ], [ 0, %.preheader198.i.us.preheader ] ; 2 uses
  br label %.lr.ph208.i.us

.lr.ph208.i.us:                                   ; preds = %.preheader198.i.us, %.loopexit196.i.us
  %indvars.iv256.i.us = phi i64 [ %indvars.iv.next257.i.us, %.loopexit196.i.us ], [ 0, %.preheader198.i.us ] ; 4 uses
  %indvars.iv249.i.us = phi i64 [ %indvars.iv.next250.i.us, %.loopexit196.i.us ], [ 1, %.preheader198.i.us ] ; 3 uses
  %.0172210.i.us = phi double [ %.lcssa, %.loopexit196.i.us ], [ 0.000000e+00, %.preheader198.i.us ] ; 2 uses
  %i.ay = sub i64 %i.g, %indvars.iv256.i.us
  %i.az = sub i64 %i.aw, %indvars.iv256.i.us
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv256.i.us
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !9  ; 9 uses
  %xtraiter65 = and i64 %i.ay, 7                  ; 2 uses
  %lcmp.mod66.not = icmp eq i64 %xtraiter65, 0
  br i1 %lcmp.mod66.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph208.i.us, %.prol.preheader
  %indvars.iv251.i.us.prol = phi i64 [ %indvars.iv.next252.i.us.prol, %.prol.preheader ], [ %indvars.iv249.i.us, %.lr.ph208.i.us ] ; 2 uses
  %.1173207.i.us.prol = phi double [ %i.bf, %.prol.preheader ], [ %.0172210.i.us, %.lr.ph208.i.us ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph208.i.us ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv251.i.us.prol
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !12
  %i.be = tail call noundef double @llvm.fabs.f64(double %i.bd)
  %i.bf = fadd double %.1173207.i.us.prol, %i.be  ; 3 uses
  %indvars.iv.next252.i.us.prol = add nuw nsw i64 %indvars.iv251.i.us.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter65
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !19

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph208.i.us
  %.lcssa.unr = phi double [ poison, %.lr.ph208.i.us ], [ %i.bf, %.prol.preheader ]
  %indvars.iv251.i.us.unr = phi i64 [ %indvars.iv249.i.us, %.lr.ph208.i.us ], [ %indvars.iv.next252.i.us.prol, %.prol.preheader ]
  %.1173207.i.us.unr = phi double [ %.0172210.i.us, %.lr.ph208.i.us ], [ %i.bf, %.prol.preheader ]
  %i.bg = icmp ult i64 %i.az, 7
  br i1 %i.bg, label %.loopexit196.i.us, label %.lr.ph208.i.us.new

.lr.ph208.i.us.new:                               ; preds = %.prol.loopexit, %.lr.ph208.i.us.new
  %indvars.iv251.i.us = phi i64 [ %indvars.iv.next252.i.us.7, %.lr.ph208.i.us.new ], [ %indvars.iv251.i.us.unr, %.prol.loopexit ] ; 9 uses
  %.1173207.i.us = phi double [ %i.ct, %.lr.ph208.i.us.new ], [ %.1173207.i.us.unr, %.prol.loopexit ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv251.i.us
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !12
  %i.bj = tail call noundef double @llvm.fabs.f64(double %i.bi)
  %i.bk = fadd double %.1173207.i.us, %i.bj
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv251.i.us
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !12
  %i.bo = tail call noundef double @llvm.fabs.f64(double %i.bn)
  %i.bp = fadd double %i.bk, %i.bo
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv251.i.us
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load double, ptr %i.br, align 8, !tbaa !12
  %i.bt = tail call noundef double @llvm.fabs.f64(double %i.bs)
  %i.bu = fadd double %i.bp, %i.bt
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv251.i.us
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !12
  %i.by = tail call noundef double @llvm.fabs.f64(double %i.bx)
  %i.bz = fadd double %i.bu, %i.by
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv251.i.us
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !12
  %i.cd = tail call noundef double @llvm.fabs.f64(double %i.cc)
  %i.ce = fadd double %i.bz, %i.cd
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv251.i.us
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !12
  %i.ci = tail call noundef double @llvm.fabs.f64(double %i.ch)
  %i.cj = fadd double %i.ce, %i.ci
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv251.i.us
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !12
  %i.cn = tail call noundef double @llvm.fabs.f64(double %i.cm)
  %i.co = fadd double %i.cj, %i.cn
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv251.i.us
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !12
  %i.cs = tail call noundef double @llvm.fabs.f64(double %i.cr)
  %i.ct = fadd double %i.co, %i.cs                ; 2 uses
  %indvars.iv.next252.i.us.7 = add nuw nsw i64 %indvars.iv251.i.us, 8 ; 2 uses
  %exitcond255.not.i.us.7 = icmp eq i64 %indvars.iv.next252.i.us.7, %i.e
  br i1 %exitcond255.not.i.us.7, label %.loopexit196.i.us, label %.lr.ph208.i.us.new, !llvm.loop !20

.loopexit196.i.us:                                ; preds = %.lr.ph208.i.us.new, %.prol.loopexit
  %.lcssa = phi double [ %.lcssa.unr, %.prol.loopexit ], [ %i.ct, %.lr.ph208.i.us.new ] ; 3 uses
  %indvars.iv.next257.i.us = add nuw nsw i64 %indvars.iv256.i.us, 1 ; 2 uses
  %indvars.iv.next250.i.us = add nuw nsw i64 %indvars.iv249.i.us, 1
  %exitcond260.not.i.us = icmp eq i64 %indvars.iv.next257.i.us, %wide.trip.count259.i
  br i1 %exitcond260.not.i.us, label %._crit_edge.i.us, label %.lr.ph208.i.us, !llvm.loop !21

._crit_edge.i.us:                                 ; preds = %.loopexit196.i.us
  %i.cu = fcmp oeq double %.lcssa, 0.000000e+00
  br i1 %i.cu, label %_ZL6jacobiIPPdEiT_iS0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.us
  %i.cv = icmp samesign ult i32 %.0167240.i.us, 4
  %i.cw = fmul double %.lcssa, 2.000000e-01
  %i.cx = fdiv double %i.cw, %i.at
  %.0175.i.us = select i1 %i.cv, double %i.cx, double 0.000000e+00
  %i.cy = icmp samesign ugt i32 %.0167240.i.us, 4
  br label %.lr.ph229.i.us

.lr.ph229.i.us:                                   ; preds = %.loopexit.i.us, %bb.b
  %indvars.iv292.i.us = phi i64 [ 0, %bb.b ], [ %indvars.iv.next293.i.us, %.loopexit.i.us ] ; 18 uses
  %indvars.iv273.i.us = phi i64 [ 2, %bb.b ], [ %indvars.iv.next274.i.us, %.loopexit.i.us ] ; 2 uses
  %indvars.iv266.i.us = phi i64 [ 1, %bb.b ], [ %indvars.iv.next267.i.us, %.loopexit.i.us ] ; 6 uses
  %.1169232.i.us = phi i32 [ %.0168239.i.us, %bb.b ], [ %.3171.i.us, %.loopexit.i.us ]
  %6 = shl i64 %indvars.iv292.i.us, 3             ; 2 uses
  %7 = add i64 %6, 16
  %8 = add i64 %6, 24
  %indvars.iv.next293.i.us = add nuw nsw i64 %indvars.iv292.i.us, 1 ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv292.i.us
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !9  ; 12 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv292.i.us ; 4 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv292.i.us ; 2 uses
  %.not.i.us = icmp eq i64 %indvars.iv292.i.us, 0
  %xtraiter67 = and i64 %indvars.iv292.i.us, 1
  %i.dd = icmp eq i64 %indvars.iv292.i.us, 1
  %unroll_iter71 = and i64 %indvars.iv292.i.us, 9223372036854775806
  %lcmp.mod69.not = icmp eq i64 %xtraiter67, 0
  %lcmp.mod70 = trunc i64 %indvars.iv292.i.us to i1
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv266.i.us ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv266.i.us
  %indvars.iv.next269.i.us.prol = add nuw nsw i64 %indvars.iv266.i.us, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.m, %.lr.ph229.i.us
  %indvar = phi i64 [ %indvar.next, %bb.m ], [ 0, %.lr.ph229.i.us ] ; 6 uses
  %indvars.iv286.i.us = phi i64 [ %indvars.iv.next287.i.us, %bb.m ], [ %indvars.iv266.i.us, %.lr.ph229.i.us ] ; 18 uses
  %indvars.iv275.i.us = phi i64 [ %indvars.iv.next276.i.us, %bb.m ], [ %indvars.iv273.i.us, %.lr.ph229.i.us ] ; 5 uses
  %.2170227.i.us = phi i32 [ %.3171.i.us, %bb.m ], [ %.1169232.i.us, %.lr.ph229.i.us ] ; 3 uses
  %i.dg = add i64 %indvars.iv292.i.us, %indvar
  %i.dh = trunc i64 %i.dg to i32
  %i.di = sub i32 %i.av, %i.dh                    ; 2 uses
  %i.dj = zext i32 %i.di to i64
  %i.dk = add nuw nsw i64 %i.dj, 1                ; 2 uses
  %i.dl = shl i64 %indvar, 3                      ; 2 uses
  %i.dm = add i64 %7, %i.dl                       ; 2 uses
  %scevgep31 = getelementptr i8, ptr %i.da, i64 %i.dm
  %i.dn = add i64 %8, %i.dl                       ; 2 uses
  %scevgep32 = getelementptr i8, ptr %i.da, i64 %i.dn
  %i.do = add i64 %indvars.iv292.i.us, %indvar
  %i.dp = trunc i64 %i.do to i32
  %i.dq = sub i32 %i.av, %i.dp
  %i.dr = zext i32 %i.dq to i64
  %i.ds = shl nuw nsw i64 %i.dr, 3                ; 2 uses
  %scevgep33 = getelementptr i8, ptr %scevgep32, i64 %i.ds
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv286.i.us ; 3 uses
  %i.du = load double, ptr %i.dt, align 8, !tbaa !12 ; 4 uses
  %i.dv = tail call noundef double @llvm.fabs.f64(double %i.du) ; 2 uses
  %i.dw = fmul double %i.dv, 1.000000e+02         ; 3 uses
  br i1 %i.cy, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.dx = load double, ptr %i.db, align 8, !tbaa !12
  %i.dy = tail call noundef double @llvm.fabs.f64(double %i.dx) ; 2 uses
  %i.dz = fadd double %i.dw, %i.dy
  %i.ea = fcmp oeq double %i.dz, %i.dy
  br i1 %i.ea, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv286.i.us
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !12
  %i.ed = tail call noundef double @llvm.fabs.f64(double %i.ec) ; 2 uses
  %i.ee = fadd double %i.dw, %i.ed
  %i.ef = fcmp oeq double %i.ee, %i.ed
  br i1 %i.ef, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.eg = fcmp ogt double %i.dv, %.0175.i.us
  br i1 %i.eg, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv286.i.us ; 3 uses
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !12
  %i.ej = load double, ptr %i.db, align 8, !tbaa !12
  %i.ek = fsub double %i.ei, %i.ej                ; 3 uses
  %i.el = tail call noundef double @llvm.fabs.f64(double %i.ek) ; 2 uses
  %i.em = fadd double %i.dw, %i.el
  %i.en = fcmp oeq double %i.em, %i.el
  br i1 %i.en, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.eo = fmul double %i.ek, 5.000000e-01
  %i.ep = fdiv double %i.eo, %i.du                ; 4 uses
  %i.eq = tail call noundef double @llvm.fabs.f64(double %i.ep)
  %i.er = tail call double @llvm.fmuladd.f64(double %i.ep, double %i.ep, double 1.000000e+00)
  %sqrt.i.us = tail call double @llvm.sqrt.f64(double %i.er)
  %i.es = fadd double %i.eq, %sqrt.i.us
  %i.et = fdiv double 1.000000e+00, %i.es         ; 2 uses
  %i.eu = fcmp olt double %i.ep, 0.000000e+00
  br i1 %i.eu, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ev = fneg double %i.et
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.ew = fdiv double %i.du, %i.ek
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.0174.i.us = phi double [ %i.ew, %bb.j ], [ %i.ev, %bb.i ], [ %i.et, %bb.h ] ; 4 uses
  %i.ex = tail call double @llvm.fmuladd.f64(double %.0174.i.us, double %.0174.i.us, double 1.000000e+00)
  %sqrt193.i.us = tail call double @llvm.sqrt.f64(double %i.ex)
  %i.ey = fdiv double 1.000000e+00, %sqrt193.i.us ; 2 uses
  %i.ez = fmul double %.0174.i.us, %i.ey          ; 20 uses
  %i.fa = fadd double %i.ey, 1.000000e+00
  %i.fb = fdiv double %i.ez, %i.fa                ; 29 uses
  %i.fc = fmul double %i.du, %.0174.i.us          ; 4 uses
  %i.fd = load double, ptr %i.dc, align 8, !tbaa !12
  %i.fe = fsub double %i.fd, %i.fc
  store double %i.fe, ptr %i.dc, align 8, !tbaa !12
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv286.i.us ; 2 uses
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !12
  %i.fh = fadd double %i.fc, %i.fg
  store double %i.fh, ptr %i.ff, align 8, !tbaa !12
  %i.fi = load double, ptr %i.db, align 8, !tbaa !12
  %i.fj = fsub double %i.fi, %i.fc
  store double %i.fj, ptr %i.db, align 8, !tbaa !12
  %i.fk = load double, ptr %i.eh, align 8, !tbaa !12
  %i.fl = fadd double %i.fc, %i.fk
  store double %i.fl, ptr %i.eh, align 8, !tbaa !12
  store double 0.000000e+00, ptr %i.dt, align 8, !tbaa !12
  br i1 %.not.i.us, label %.preheader195.i.us, label %.lr.ph216.i.us

.lr.ph216.i.us:                                   ; preds = %bb.k
  %i.fm = fneg double %i.ez                       ; 3 uses
  br i1 %i.dd, label %.epil.preheader, label %.lr.ph216.i.us.new

.lr.ph216.i.us.new:                               ; preds = %.lr.ph216.i.us, %.lr.ph216.i.us.new
  %indvars.iv261.i.us = phi i64 [ %indvars.iv.next262.i.us.1, %.lr.ph216.i.us.new ], [ 0, %.lr.ph216.i.us ] ; 3 uses
  %niter72 = phi i64 [ %niter72.next.1, %.lr.ph216.i.us.new ], [ 0, %.lr.ph216.i.us ]
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv261.i.us
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !9  ; 2 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %indvars.iv292.i.us ; 2 uses
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !12 ; 3 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %indvars.iv286.i.us ; 2 uses
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !12 ; 3 uses
  %i.ft = tail call double @llvm.fmuladd.f64(double %i.fq, double %i.fb, double %i.fs)
  %i.fu = tail call double @llvm.fmuladd.f64(double %i.fm, double %i.ft, double %i.fq)
  store double %i.fu, ptr %i.fp, align 8, !tbaa !12
  %i.fv = fneg double %i.fs
  %i.fw = tail call double @llvm.fmuladd.f64(double %i.fv, double %i.fb, double %i.fq)
  %i.fx = tail call double @llvm.fmuladd.f64(double %i.ez, double %i.fw, double %i.fs)
  store double %i.fx, ptr %i.fr, align 8, !tbaa !12
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv261.i.us
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !9  ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %indvars.iv292.i.us ; 2 uses
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !12 ; 3 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %indvars.iv286.i.us ; 2 uses
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !12 ; 3 uses
  %i.gf = tail call double @llvm.fmuladd.f64(double %i.gc, double %i.fb, double %i.ge)
  %i.gg = tail call double @llvm.fmuladd.f64(double %i.fm, double %i.gf, double %i.gc)
  store double %i.gg, ptr %i.gb, align 8, !tbaa !12
  %i.gh = fneg double %i.ge
  %i.gi = tail call double @llvm.fmuladd.f64(double %i.gh, double %i.fb, double %i.gc)
  %i.gj = tail call double @llvm.fmuladd.f64(double %i.ez, double %i.gi, double %i.ge)
  store double %i.gj, ptr %i.gd, align 8, !tbaa !12
  %indvars.iv.next262.i.us.1 = add nuw nsw i64 %indvars.iv261.i.us, 2 ; 2 uses
  %niter72.next.1 = add i64 %niter72, 2           ; 2 uses
  %niter72.ncmp.1 = icmp eq i64 %niter72.next.1, %unroll_iter71
  br i1 %niter72.ncmp.1, label %.preheader195.i.us.loopexit.unr-lcssa, label %.lr.ph216.i.us.new, !llvm.loop !22

.preheader195.i.us.loopexit.unr-lcssa:            ; preds = %.lr.ph216.i.us.new
  br i1 %lcmp.mod69.not, label %.preheader195.i.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader195.i.us.loopexit.unr-lcssa, %.lr.ph216.i.us
  %indvars.iv261.i.us.epil.init = phi i64 [ 0, %.lr.ph216.i.us ], [ %indvars.iv.next262.i.us.1, %.preheader195.i.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod70)
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv261.i.us.epil.init
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !9  ; 2 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %indvars.iv292.i.us ; 2 uses
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !12 ; 3 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %indvars.iv286.i.us ; 2 uses
  %i.gp = load double, ptr %i.go, align 8, !tbaa !12 ; 3 uses
  %i.gq = tail call double @llvm.fmuladd.f64(double %i.gn, double %i.fb, double %i.gp)
  %i.gr = tail call double @llvm.fmuladd.f64(double %i.fm, double %i.gq, double %i.gn)
  store double %i.gr, ptr %i.gm, align 8, !tbaa !12
  %i.gs = fneg double %i.gp
  %i.gt = tail call double @llvm.fmuladd.f64(double %i.gs, double %i.fb, double %i.gn)
  %i.gu = tail call double @llvm.fmuladd.f64(double %i.ez, double %i.gt, double %i.gp)
  store double %i.gu, ptr %i.go, align 8, !tbaa !12
  br label %.preheader195.i.us

.preheader195.i.us:                               ; preds = %.epil.preheader, %.preheader195.i.us.loopexit.unr-lcssa, %bb.k
  %i.gv = icmp samesign ult i64 %indvars.iv.next293.i.us, %indvars.iv286.i.us
  br i1 %i.gv, label %.lr.ph218.i.us, label %.preheader194.i.us

.lr.ph218.i.us:                                   ; preds = %.preheader195.i.us
  %i.gw = fneg double %i.ez                       ; 3 uses
  %xtraiter75 = and i64 %indvar, 1
  %lcmp.mod76.not = icmp eq i64 %xtraiter75, 0
  br i1 %lcmp.mod76.not, label %.prol.loopexit74, label %.prol.loopexit74.unr-lcssa

.prol.loopexit74.unr-lcssa:                       ; preds = %.lr.ph218.i.us
  %i.gx = load double, ptr %i.de, align 8, !tbaa !12 ; 3 uses
  %i.gy = load ptr, ptr %i.df, align 8, !tbaa !9
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv286.i.us ; 2 uses
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !12 ; 3 uses
  %i.hb = tail call double @llvm.fmuladd.f64(double %i.gx, double %i.fb, double %i.ha)
  %i.hc = tail call double @llvm.fmuladd.f64(double %i.gw, double %i.hb, double %i.gx)
  store double %i.hc, ptr %i.de, align 8, !tbaa !12
  %i.hd = fneg double %i.ha
  %i.he = tail call double @llvm.fmuladd.f64(double %i.hd, double %i.fb, double %i.gx)
  %i.hf = tail call double @llvm.fmuladd.f64(double %i.ez, double %i.he, double %i.ha)
  store double %i.hf, ptr %i.gz, align 8, !tbaa !12
  br label %.prol.loopexit74

.prol.loopexit74:                                 ; preds = %.prol.loopexit74.unr-lcssa, %.lr.ph218.i.us
  %indvars.iv268.i.us.unr = phi i64 [ %indvars.iv266.i.us, %.lr.ph218.i.us ], [ %indvars.iv.next269.i.us.prol, %.prol.loopexit74.unr-lcssa ]
  %i.hg = icmp eq i64 %indvar, 1
  br i1 %i.hg, label %.preheader194.i.us, label %.lr.ph218.i.us.new

.lr.ph218.i.us.new:                               ; preds = %.prol.loopexit74, %.lr.ph218.i.us.new
  %indvars.iv268.i.us = phi i64 [ %indvars.iv.next269.i.us.1, %.lr.ph218.i.us.new ], [ %indvars.iv268.i.us.unr, %.prol.loopexit74 ] ; 4 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv268.i.us ; 2 uses
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !12 ; 3 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv268.i.us
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !9
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %indvars.iv286.i.us ; 2 uses
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !12 ; 3 uses
  %i.hn = tail call double @llvm.fmuladd.f64(double %i.hi, double %i.fb, double %i.hm)
  %i.ho = tail call double @llvm.fmuladd.f64(double %i.gw, double %i.hn, double %i.hi)
  store double %i.ho, ptr %i.hh, align 8, !tbaa !12
  %i.hp = fneg double %i.hm
  %i.hq = tail call double @llvm.fmuladd.f64(double %i.hp, double %i.fb, double %i.hi)
  %i.hr = tail call double @llvm.fmuladd.f64(double %i.ez, double %i.hq, double %i.hm)
  store double %i.hr, ptr %i.hl, align 8, !tbaa !12
  %indvars.iv.next269.i.us = add nuw nsw i64 %indvars.iv268.i.us, 1 ; 2 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.next269.i.us ; 2 uses
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !12 ; 3 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next269.i.us
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !9
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %indvars.iv286.i.us ; 2 uses
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !12 ; 3 uses
  %i.hy = tail call double @llvm.fmuladd.f64(double %i.ht, double %i.fb, double %i.hx)
  %i.hz = tail call double @llvm.fmuladd.f64(double %i.gw, double %i.hy, double %i.ht)
  store double %i.hz, ptr %i.hs, align 8, !tbaa !12
  %i.ia = fneg double %i.hx
  %i.ib = tail call double @llvm.fmuladd.f64(double %i.ia, double %i.fb, double %i.ht)
  %i.ic = tail call double @llvm.fmuladd.f64(double %i.ez, double %i.ib, double %i.hx)
  store double %i.ic, ptr %i.hw, align 8, !tbaa !12
  %indvars.iv.next269.i.us.1 = add nuw nsw i64 %indvars.iv268.i.us, 2 ; 2 uses
  %exitcond272.not.i.us.1 = icmp eq i64 %indvars.iv.next269.i.us.1, %indvars.iv286.i.us
  br i1 %exitcond272.not.i.us.1, label %.preheader194.i.us, label %.lr.ph218.i.us.new, !llvm.loop !23

.preheader194.i.us:                               ; preds = %.prol.loopexit74, %.lr.ph218.i.us.new, %.preheader195.i.us
  %i.id = trunc i64 %indvars.iv286.i.us to i32
  %i.ie = add i32 %i.id, 1
  %i.if = icmp slt i32 %i.ie, %1
  br i1 %i.if, label %.lr.ph221.i.us, label %.preheader194.i.us..preheader.i.us_crit_edge

.preheader194.i.us..preheader.i.us_crit_edge:     ; preds = %.preheader194.i.us
  %.pre8 = fneg double %i.ez
  br label %.preheader.i.us

.lr.ph221.i.us:                                   ; preds = %.preheader194.i.us
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv286.i.us
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !9  ; 8 uses
  %i.ii = fneg double %i.ez                       ; 9 uses
  %min.iters.check40 = icmp ult i32 %i.di, 7
  br i1 %min.iters.check40, label %scalar.ph39.preheader, label %vector.memcheck30

vector.memcheck30:                                ; preds = %.lr.ph221.i.us
  %scevgep34 = getelementptr nuw i8, ptr %i.ih, i64 %i.dm
  %i.ij = getelementptr i8, ptr %i.ih, i64 %i.dn
  %scevgep35 = getelementptr i8, ptr %i.ij, i64 %i.ds
  %bound036 = icmp ult ptr %scevgep31, %scevgep35
  %bound137 = icmp ult ptr %scevgep34, %scevgep33
  %found.conflict38 = and i1 %bound036, %bound137
  br i1 %found.conflict38, label %scalar.ph39.preheader, label %vector.ph41

vector.ph41:                                      ; preds = %vector.memcheck30
  %n.vec42 = and i64 %i.dk, 8589934584            ; 3 uses
  %i.ik = add nuw i64 %indvars.iv275.i.us, %n.vec42
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.ii, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert43 = insertelement <4 x double> poison, double %i.fb, i64 0
  %broadcast.splat44 = shufflevector <4 x double> %broadcast.splatinsert43, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert45 = insertelement <4 x double> poison, double %i.ez, i64 0
  %broadcast.splat46 = shufflevector <4 x double> %broadcast.splatinsert45, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body47

vector.body47:                                    ; preds = %vector.body47, %vector.ph41
  %index48 = phi i64 [ 0, %vector.ph41 ], [ %index.next53, %vector.body47 ] ; 2 uses
  %i.il = add nuw i64 %indvars.iv275.i.us, %index48 ; 2 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.il ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 32 ; 2 uses
  %wide.load49 = load <4 x double>, ptr %i.im, align 8, !tbaa !12, !alias.scope !24, !noalias !27 ; 3 uses
  %wide.load50 = load <4 x double>, ptr %i.in, align 8, !tbaa !12, !alias.scope !24, !noalias !27 ; 3 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %i.il ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 32 ; 2 uses
  %wide.load51 = load <4 x double>, ptr %i.io, align 8, !tbaa !12, !alias.scope !27 ; 3 uses
  %wide.load52 = load <4 x double>, ptr %i.ip, align 8, !tbaa !12, !alias.scope !27 ; 3 uses
  %i.iq = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load49, <4 x double> %broadcast.splat44, <4 x double> %wide.load51)
  %i.ir = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load50, <4 x double> %broadcast.splat44, <4 x double> %wide.load52)
  %i.is = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %i.iq, <4 x double> %wide.load49)
  %i.it = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %i.ir, <4 x double> %wide.load50)
  store <4 x double> %i.is, ptr %i.im, align 8, !tbaa !12, !alias.scope !24, !noalias !27
  store <4 x double> %i.it, ptr %i.in, align 8, !tbaa !12, !alias.scope !24, !noalias !27
  %i.iu = fneg <4 x double> %wide.load51
  %i.iv = fneg <4 x double> %wide.load52
  %i.iw = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iu, <4 x double> %broadcast.splat44, <4 x double> %wide.load49)
  %i.ix = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iv, <4 x double> %broadcast.splat44, <4 x double> %wide.load50)
  %i.iy = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat46, <4 x double> %i.iw, <4 x double> %wide.load51)
  %i.iz = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat46, <4 x double> %i.ix, <4 x double> %wide.load52)
  store <4 x double> %i.iy, ptr %i.io, align 8, !tbaa !12, !alias.scope !27
  store <4 x double> %i.iz, ptr %i.ip, align 8, !tbaa !12, !alias.scope !27
  %index.next53 = add nuw i64 %index48, 8         ; 2 uses
  %i.ja = icmp eq i64 %index.next53, %n.vec42
  br i1 %i.ja, label %middle.block54, label %vector.body47, !llvm.loop !29

middle.block54:                                   ; preds = %vector.body47
  %cmp.n55 = icmp eq i64 %i.dk, %n.vec42
  br i1 %cmp.n55, label %.preheader.i.us, label %scalar.ph39.preheader

scalar.ph39.preheader:                            ; preds = %vector.memcheck30, %.lr.ph221.i.us, %middle.block54
  %indvars.iv277.i.us.ph = phi i64 [ %indvars.iv275.i.us, %vector.memcheck30 ], [ %indvars.iv275.i.us, %.lr.ph221.i.us ], [ %i.ik, %middle.block54 ] ; 3 uses
  %i.jb = trunc i64 %indvars.iv277.i.us.ph to i32 ; 2 uses
  %i.jc = sub i32 %1, %i.jb
  %xtraiter78 = and i32 %i.jc, 3                  ; 2 uses
  %lcmp.mod79.not = icmp eq i32 %xtraiter78, 0
  br i1 %lcmp.mod79.not, label %scalar.ph39.prol.loopexit, label %scalar.ph39.prol

scalar.ph39.prol:                                 ; preds = %scalar.ph39.preheader, %scalar.ph39.prol
  %indvars.iv277.i.us.prol = phi i64 [ %indvars.iv.next278.i.us.prol, %scalar.ph39.prol ], [ %indvars.iv277.i.us.ph, %scalar.ph39.preheader ] ; 3 uses
  %prol.iter80 = phi i32 [ %prol.iter80.next, %scalar.ph39.prol ], [ 0, %scalar.ph39.preheader ]
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv277.i.us.prol ; 2 uses
  %i.je = load double, ptr %i.jd, align 8, !tbaa !12 ; 3 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %indvars.iv277.i.us.prol ; 2 uses
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !12 ; 3 uses
  %i.jh = tail call double @llvm.fmuladd.f64(double %i.je, double %i.fb, double %i.jg)
  %i.ji = tail call double @llvm.fmuladd.f64(double %i.ii, double %i.jh, double %i.je)
  store double %i.ji, ptr %i.jd, align 8, !tbaa !12
  %i.jj = fneg double %i.jg
  %i.jk = tail call double @llvm.fmuladd.f64(double %i.jj, double %i.fb, double %i.je)
  %i.jl = tail call double @llvm.fmuladd.f64(double %i.ez, double %i.jk, double %i.jg)
  store double %i.jl, ptr %i.jf, align 8, !tbaa !12
  %indvars.iv.next278.i.us.prol = add nuw nsw i64 %indvars.iv277.i.us.prol, 1 ; 2 uses
  %prol.iter80.next = add i32 %prol.iter80, 1     ; 2 uses
  %prol.iter80.cmp.not = icmp eq i32 %prol.iter80.next, %xtraiter78
  br i1 %prol.iter80.cmp.not, label %scalar.ph39.prol.loopexit, label %scalar.ph39.prol, !llvm.loop !32

scalar.ph39.prol.loopexit:                        ; preds = %scalar.ph39.prol, %scalar.ph39.preheader
  %indvars.iv277.i.us.unr = phi i64 [ %indvars.iv277.i.us.ph, %scalar.ph39.preheader ], [ %indvars.iv.next278.i.us.prol, %scalar.ph39.prol ]
  %i.jm = sub i32 %i.jb, %1
  %i.jn = icmp ugt i32 %i.jm, -4
  br i1 %i.jn, label %.preheader.i.us, label %scalar.ph39

scalar.ph39:                                      ; preds = %scalar.ph39.prol.loopexit, %scalar.ph39
  %indvars.iv277.i.us = phi i64 [ %indvars.iv.next278.i.us.3, %scalar.ph39 ], [ %indvars.iv277.i.us.unr, %scalar.ph39.prol.loopexit ] ; 6 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv277.i.us ; 2 uses
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !12 ; 3 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %indvars.iv277.i.us ; 2 uses
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !12 ; 3 uses
  %i.js = tail call double @llvm.fmuladd.f64(double %i.jp, double %i.fb, double %i.jr)
  %i.jt = tail call double @llvm.fmuladd.f64(double %i.ii, double %i.js, double %i.jp)
  store double %i.jt, ptr %i.jo, align 8, !tbaa !12
  %i.ju = fneg double %i.jr
  %i.jv = tail call double @llvm.fmuladd.f64(double %i.ju, double %i.fb, double %i.jp)
  %i.jw = tail call double @llvm.fmuladd.f64(double %i.ez, double %i.jv, double %i.jr)
  store double %i.jw, ptr %i.jq, align 8, !tbaa !12
  %indvars.iv.next278.i.us = add nuw nsw i64 %indvars.iv277.i.us, 1 ; 2 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.next278.i.us ; 2 uses
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !12 ; 3 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %indvars.iv.next278.i.us ; 2 uses
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !12 ; 3 uses
  %i.kb = tail call double @llvm.fmuladd.f64(double %i.jy, double %i.fb, double %i.ka)
  %i.kc = tail call double @llvm.fmuladd.f64(double %i.ii, double %i.kb, double %i.jy)
  store double %i.kc, ptr %i.jx, align 8, !tbaa !12
  %i.kd = fneg double %i.ka
  %i.ke = tail call double @llvm.fmuladd.f64(double %i.kd, double %i.fb, double %i.jy)
  %i.kf = tail call double @llvm.fmuladd.f64(double %i.ez, double %i.ke, double %i.ka)
  store double %i.kf, ptr %i.jz, align 8, !tbaa !12
  %indvars.iv.next278.i.us.1 = add nuw nsw i64 %indvars.iv277.i.us, 2 ; 2 uses
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.next278.i.us.1 ; 2 uses
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !12 ; 3 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %indvars.iv.next278.i.us.1 ; 2 uses
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !12 ; 3 uses
  %i.kk = tail call double @llvm.fmuladd.f64(double %i.kh, double %i.fb, double %i.kj)
  %i.kl = tail call double @llvm.fmuladd.f64(double %i.ii, double %i.kk, double %i.kh)
  store double %i.kl, ptr %i.kg, align 8, !tbaa !12
  %i.km = fneg double %i.kj
  %i.kn = tail call double @llvm.fmuladd.f64(double %i.km, double %i.fb, double %i.kh)
  %i.ko = tail call double @llvm.fmuladd.f64(double %i.ez, double %i.kn, double %i.kj)
  store double %i.ko, ptr %i.ki, align 8, !tbaa !12
  %indvars.iv.next278.i.us.2 = add nuw nsw i64 %indvars.iv277.i.us, 3 ; 2 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.next278.i.us.2 ; 2 uses
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !12 ; 3 uses
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %indvars.iv.next278.i.us.2 ; 2 uses
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !12 ; 3 uses
  %i.kt = tail call double @llvm.fmuladd.f64(double %i.kq, double %i.fb, double %i.ks)
  %i.ku = tail call double @llvm.fmuladd.f64(double %i.ii, double %i.kt, double %i.kq)
  store double %i.ku, ptr %i.kp, align 8, !tbaa !12
  %i.kv = fneg double %i.ks
  %i.kw = tail call double @llvm.fmuladd.f64(double %i.kv, double %i.fb, double %i.kq)
  %i.kx = tail call double @llvm.fmuladd.f64(double %i.ez, double %i.kw, double %i.ks)
  store double %i.kx, ptr %i.kr, align 8, !tbaa !12
  %indvars.iv.next278.i.us.3 = add nuw nsw i64 %indvars.iv277.i.us, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next278.i.us.3 to i32
  %exitcond.3 = icmp eq i32 %1, %lftr.wideiv.3
  br i1 %exitcond.3, label %.preheader.i.us, label %scalar.ph39, !llvm.loop !33

.preheader.i.us:                                  ; preds = %scalar.ph39.prol.loopexit, %scalar.ph39, %middle.block54, %.preheader194.i.us..preheader.i.us_crit_edge
  %.pre-phi = phi double [ %.pre8, %.preheader194.i.us..preheader.i.us_crit_edge ], [ %i.ii, %middle.block54 ], [ %i.ii, %scalar.ph39 ], [ %i.ii, %scalar.ph39.prol.loopexit ] ; 3 uses
  br i1 %i.ax, label %.epil.preheader81, label %.preheader.i.us.new

.preheader.i.us.new:                              ; preds = %.preheader.i.us, %.preheader.i.us.new
  %indvars.iv281.i.us = phi i64 [ %indvars.iv.next282.i.us.1, %.preheader.i.us.new ], [ 0, %.preheader.i.us ] ; 3 uses
  %niter87 = phi i64 [ %niter87.next.1, %.preheader.i.us.new ], [ 0, %.preheader.i.us ]
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv281.i.us
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !9  ; 2 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %indvars.iv292.i.us ; 2 uses
  %i.lb = load double, ptr %i.la, align 8, !tbaa !12 ; 3 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %indvars.iv286.i.us ; 2 uses
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !12 ; 3 uses
  %i.le = tail call double @llvm.fmuladd.f64(double %i.lb, double %i.fb, double %i.ld)
  %i.lf = tail call double @llvm.fmuladd.f64(double %.pre-phi, double %i.le, double %i.lb)
  store double %i.lf, ptr %i.la, align 8, !tbaa !12
  %i.lg = fneg double %i.ld
  %i.lh = tail call double @llvm.fmuladd.f64(double %i.lg, double %i.fb, double %i.lb)
  %i.li = tail call double @llvm.fmuladd.f64(double %i.ez, double %i.lh, double %i.ld)
  store double %i.li, ptr %i.lc, align 8, !tbaa !12
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv281.i.us
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !9  ; 2 uses
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %indvars.iv292.i.us ; 2 uses
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !12 ; 3 uses
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %indvars.iv286.i.us ; 2 uses
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !12 ; 3 uses
  %i.lq = tail call double @llvm.fmuladd.f64(double %i.ln, double %i.fb, double %i.lp)
  %i.lr = tail call double @llvm.fmuladd.f64(double %.pre-phi, double %i.lq, double %i.ln)
  store double %i.lr, ptr %i.lm, align 8, !tbaa !12
  %i.ls = fneg double %i.lp
  %i.lt = tail call double @llvm.fmuladd.f64(double %i.ls, double %i.fb, double %i.ln)
  %i.lu = tail call double @llvm.fmuladd.f64(double %i.ez, double %i.lt, double %i.lp)
  store double %i.lu, ptr %i.lo, align 8, !tbaa !12
  %indvars.iv.next282.i.us.1 = add nuw nsw i64 %indvars.iv281.i.us, 2 ; 2 uses
  %niter87.next.1 = add i64 %niter87, 2           ; 2 uses
  %niter87.ncmp.1 = icmp eq i64 %niter87.next.1, %unroll_iter86
  br i1 %niter87.ncmp.1, label %._crit_edge224.i.loopexit.us.unr-lcssa, label %.preheader.i.us.new, !llvm.loop !34

bb.l:                                             ; preds = %bb.e
  store double 0.000000e+00, ptr %i.dt, align 8, !tbaa !12
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge224.i.loopexit.us, %bb.l, %bb.f
  %.3171.i.us = phi i32 [ %.2170227.i.us, %bb.l ], [ %i.nv, %._crit_edge224.i.loopexit.us ], [ %.2170227.i.us, %bb.f ] ; 3 uses
  %indvars.iv.next287.i.us = add nuw nsw i64 %indvars.iv286.i.us, 1 ; 2 uses
  %indvars.iv.next276.i.us = add nuw nsw i64 %indvars.iv275.i.us, 1
  %exitcond291.not.i.us = icmp eq i64 %indvars.iv.next287.i.us, %i.e
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond291.not.i.us, label %.loopexit.i.us, label %bb.c, !llvm.loop !35

.loopexit.i.us:                                   ; preds = %bb.m
  %indvars.iv.next267.i.us = add nuw nsw i64 %indvars.iv266.i.us, 1
  %indvars.iv.next274.i.us = add nuw nsw i64 %indvars.iv273.i.us, 1
  %exitcond296.not.i.us = icmp eq i64 %indvars.iv.next293.i.us, %wide.trip.count259.i
  br i1 %exitcond296.not.i.us, label %.preheader197.i.us, label %.lr.ph229.i.us, !llvm.loop !36

.preheader197.i.us:                               ; preds = %.loopexit.i.us
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx26
  br i1 %brmerge, label %.lr.ph237.i.us.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader197.i.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader197.i.us ] ; 4 uses
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 32 ; 2 uses
  %wide.load = load <4 x double>, ptr %i.lv, align 8, !tbaa !12, !alias.scope !37
  %wide.load27 = load <4 x double>, ptr %i.lw, align 8, !tbaa !12, !alias.scope !37
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 32 ; 2 uses
  %wide.load28 = load <4 x double>, ptr %i.lx, align 8, !tbaa !12, !alias.scope !40, !noalias !42
  %wide.load29 = load <4 x double>, ptr %i.ly, align 8, !tbaa !12, !alias.scope !40, !noalias !42
  %i.lz = fadd <4 x double> %wide.load, %wide.load28 ; 2 uses
  %i.ma = fadd <4 x double> %wide.load27, %wide.load29 ; 2 uses
  store <4 x double> %i.lz, ptr %i.lx, align 8, !tbaa !12, !alias.scope !40, !noalias !42
  store <4 x double> %i.ma, ptr %i.ly, align 8, !tbaa !12, !alias.scope !40, !noalias !42
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 32
  store <4 x double> %i.lz, ptr %i.mb, align 8, !tbaa !12, !alias.scope !44, !noalias !37
  store <4 x double> %i.ma, ptr %i.mc, align 8, !tbaa !12, !alias.scope !44, !noalias !37
  store <4 x double> zeroinitializer, ptr %i.lv, align 8, !tbaa !12, !alias.scope !37
  store <4 x double> zeroinitializer, ptr %i.lw, align 8, !tbaa !12, !alias.scope !37
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.md = icmp eq i64 %index.next, %n.vec
  br i1 %i.md, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge238.i.loopexit.us, label %.lr.ph237.i.us.preheader

.lr.ph237.i.us.preheader:                         ; preds = %.preheader197.i.us, %middle.block
  %indvars.iv297.i.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader197.i.us ] ; 3 uses
  br i1 %lcmp.mod89.not, label %.lr.ph237.i.us.prol.loopexit, label %.lr.ph237.i.us.prol

.lr.ph237.i.us.prol:                              ; preds = %.lr.ph237.i.us.preheader, %.lr.ph237.i.us.prol
  %indvars.iv297.i.us.prol = phi i64 [ %indvars.iv.next298.i.us.prol, %.lr.ph237.i.us.prol ], [ %indvars.iv297.i.us.ph, %.lr.ph237.i.us.preheader ] ; 4 uses
  %prol.iter90 = phi i64 [ %prol.iter90.next, %.lr.ph237.i.us.prol ], [ 0, %.lr.ph237.i.us.preheader ]
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv297.i.us.prol ; 2 uses
  %i.mf = load double, ptr %i.me, align 8, !tbaa !12
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv297.i.us.prol ; 2 uses
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !12
  %i.mi = fadd double %i.mf, %i.mh                ; 2 uses
  store double %i.mi, ptr %i.mg, align 8, !tbaa !12
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv297.i.us.prol
  store double %i.mi, ptr %i.mj, align 8, !tbaa !12
  store double 0.000000e+00, ptr %i.me, align 8, !tbaa !12
  %indvars.iv.next298.i.us.prol = add nuw nsw i64 %indvars.iv297.i.us.prol, 1 ; 2 uses
  %prol.iter90.next = add i64 %prol.iter90, 1     ; 2 uses
  %prol.iter90.cmp.not = icmp eq i64 %prol.iter90.next, %xtraiter88
  br i1 %prol.iter90.cmp.not, label %.lr.ph237.i.us.prol.loopexit, label %.lr.ph237.i.us.prol, !llvm.loop !46

.lr.ph237.i.us.prol.loopexit:                     ; preds = %.lr.ph237.i.us.prol, %.lr.ph237.i.us.preheader
  %indvars.iv297.i.us.unr = phi i64 [ %indvars.iv297.i.us.ph, %.lr.ph237.i.us.preheader ], [ %indvars.iv.next298.i.us.prol, %.lr.ph237.i.us.prol ]
  %i.mk = sub nsw i64 %indvars.iv297.i.us.ph, %i.e
  %i.ml = icmp ugt i64 %i.mk, -4
  br i1 %i.ml, label %._crit_edge238.i.loopexit.us, label %.lr.ph237.i.us

.lr.ph237.i.us:                                   ; preds = %.lr.ph237.i.us.prol.loopexit, %.lr.ph237.i.us
  %indvars.iv297.i.us = phi i64 [ %indvars.iv.next298.i.us.3, %.lr.ph237.i.us ], [ %indvars.iv297.i.us.unr, %.lr.ph237.i.us.prol.loopexit ] ; 7 uses
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv297.i.us ; 2 uses
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !12
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv297.i.us ; 2 uses
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !12
  %i.mq = fadd double %i.mn, %i.mp                ; 2 uses
  store double %i.mq, ptr %i.mo, align 8, !tbaa !12
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv297.i.us
  store double %i.mq, ptr %i.mr, align 8, !tbaa !12
  store double 0.000000e+00, ptr %i.mm, align 8, !tbaa !12
  %indvars.iv.next298.i.us = add nuw nsw i64 %indvars.iv297.i.us, 1 ; 3 uses
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next298.i.us ; 2 uses
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !12
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next298.i.us ; 2 uses
  %i.mv = load double, ptr %i.mu, align 8, !tbaa !12
  %i.mw = fadd double %i.mt, %i.mv                ; 2 uses
  store double %i.mw, ptr %i.mu, align 8, !tbaa !12
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next298.i.us
  store double %i.mw, ptr %i.mx, align 8, !tbaa !12
  store double 0.000000e+00, ptr %i.ms, align 8, !tbaa !12
  %indvars.iv.next298.i.us.1 = add nuw nsw i64 %indvars.iv297.i.us, 2 ; 3 uses
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next298.i.us.1 ; 2 uses
  %i.mz = load double, ptr %i.my, align 8, !tbaa !12
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next298.i.us.1 ; 2 uses
  %i.nb = load double, ptr %i.na, align 8, !tbaa !12
  %i.nc = fadd double %i.mz, %i.nb                ; 2 uses
  store double %i.nc, ptr %i.na, align 8, !tbaa !12
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next298.i.us.1
  store double %i.nc, ptr %i.nd, align 8, !tbaa !12
  store double 0.000000e+00, ptr %i.my, align 8, !tbaa !12
  %indvars.iv.next298.i.us.2 = add nuw nsw i64 %indvars.iv297.i.us, 3 ; 3 uses
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next298.i.us.2 ; 2 uses
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !12
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next298.i.us.2 ; 2 uses
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !12
  %i.ni = fadd double %i.nf, %i.nh                ; 2 uses
  store double %i.ni, ptr %i.ng, align 8, !tbaa !12
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next298.i.us.2
  store double %i.ni, ptr %i.nj, align 8, !tbaa !12
  store double 0.000000e+00, ptr %i.ne, align 8, !tbaa !12
  %indvars.iv.next298.i.us.3 = add nuw nsw i64 %indvars.iv297.i.us, 4 ; 2 uses
  %exitcond301.not.i.us.3 = icmp eq i64 %indvars.iv.next298.i.us.3, %i.e
  br i1 %exitcond301.not.i.us.3, label %._crit_edge238.i.loopexit.us, label %.lr.ph237.i.us, !llvm.loop !47

._crit_edge224.i.loopexit.us.unr-lcssa:           ; preds = %.preheader.i.us.new
  br i1 %lcmp.mod84.not, label %._crit_edge224.i.loopexit.us, label %.epil.preheader81

.epil.preheader81:                                ; preds = %._crit_edge224.i.loopexit.us.unr-lcssa, %.preheader.i.us
  %indvars.iv281.i.us.epil.init = phi i64 [ 0, %.preheader.i.us ], [ %indvars.iv.next282.i.us.1, %._crit_edge224.i.loopexit.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod85)
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv281.i.us.epil.init
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !9  ; 2 uses
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %indvars.iv292.i.us ; 2 uses
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !12 ; 3 uses
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %indvars.iv286.i.us ; 2 uses
  %i.np = load double, ptr %i.no, align 8, !tbaa !12 ; 3 uses
  %i.nq = tail call double @llvm.fmuladd.f64(double %i.nn, double %i.fb, double %i.np)
  %i.nr = tail call double @llvm.fmuladd.f64(double %.pre-phi, double %i.nq, double %i.nn)
  store double %i.nr, ptr %i.nm, align 8, !tbaa !12
  %i.ns = fneg double %i.np
  %i.nt = tail call double @llvm.fmuladd.f64(double %i.ns, double %i.fb, double %i.nn)
  %i.nu = tail call double @llvm.fmuladd.f64(double %i.ez, double %i.nt, double %i.np)
  store double %i.nu, ptr %i.no, align 8, !tbaa !12
  br label %._crit_edge224.i.loopexit.us

._crit_edge224.i.loopexit.us:                     ; preds = %._crit_edge224.i.loopexit.us.unr-lcssa, %.epil.preheader81
  %i.nv = add nsw i32 %.2170227.i.us, 1
  br label %bb.m

._crit_edge238.i.loopexit.us:                     ; preds = %.lr.ph237.i.us.prol.loopexit, %.lr.ph237.i.us, %middle.block
  %i.nw = add nuw nsw i32 %.0167240.i.us, 1       ; 2 uses
  %exitcond302.not.i.us = icmp eq i32 %i.nw, 51
  br i1 %exitcond302.not.i.us, label %.split.us, label %.preheader198.i.us, !llvm.loop !48

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv244.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %indvars.iv.next245.i.3, %.lr.ph.i ] ; 9 uses
  %niter64 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter64.next.3, %.lr.ph.i ]
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv244.i
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !9
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %indvars.iv244.i
  %i.oa = load double, ptr %i.nz, align 8, !tbaa !12 ; 2 uses
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv244.i
  store double %i.oa, ptr %i.ob, align 8, !tbaa !12
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv244.i
  store double %i.oa, ptr %i.oc, align 8, !tbaa !12
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv244.i
  store double 0.000000e+00, ptr %i.od, align 8, !tbaa !12
  %indvars.iv.next245.i = or disjoint i64 %indvars.iv244.i, 1 ; 5 uses
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next245.i
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !9
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %indvars.iv.next245.i
  %i.oh = load double, ptr %i.og, align 8, !tbaa !12 ; 2 uses
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next245.i
  store double %i.oh, ptr %i.oi, align 8, !tbaa !12
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next245.i
  store double %i.oh, ptr %i.oj, align 8, !tbaa !12
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next245.i
  store double 0.000000e+00, ptr %i.ok, align 8, !tbaa !12
  %indvars.iv.next245.i.1 = or disjoint i64 %indvars.iv244.i, 2 ; 5 uses
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next245.i.1
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !9
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.om, i64 %indvars.iv.next245.i.1
  %i.oo = load double, ptr %i.on, align 8, !tbaa !12 ; 2 uses
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next245.i.1
  store double %i.oo, ptr %i.op, align 8, !tbaa !12
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next245.i.1
  store double %i.oo, ptr %i.oq, align 8, !tbaa !12
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next245.i.1
  store double 0.000000e+00, ptr %i.or, align 8, !tbaa !12
  %indvars.iv.next245.i.2 = or disjoint i64 %indvars.iv244.i, 3 ; 5 uses
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next245.i.2
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !9
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %indvars.iv.next245.i.2
  %i.ov = load double, ptr %i.ou, align 8, !tbaa !12 ; 2 uses
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next245.i.2
  store double %i.ov, ptr %i.ow, align 8, !tbaa !12
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next245.i.2
  store double %i.ov, ptr %i.ox, align 8, !tbaa !12
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next245.i.2
  store double 0.000000e+00, ptr %i.oy, align 8, !tbaa !12
  %indvars.iv.next245.i.3 = add nuw nsw i64 %indvars.iv244.i, 4 ; 2 uses
  %niter64.next.3 = add i64 %niter64, 4           ; 2 uses
  %niter64.ncmp.3 = icmp eq i64 %niter64.next.3, %unroll_iter63
  br i1 %niter64.ncmp.3, label %.preheader199.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !49

.split.us:                                        ; preds = %._crit_edge238.i.loopexit.us
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @_ZNSt10filesystem7__cxx114pathC2IA59_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 1 dereferenceable(59) @.str.1, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 177, ptr noundef nonnull @.str.3) #12
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %.split.us
  unreachable

bb.o:                                             ; preds = %.split.us
  %i.oz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #11
end_hunk_0
