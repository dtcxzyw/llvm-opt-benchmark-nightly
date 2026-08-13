inline.NumInlined: 268
inline.NumDeleted: 166
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3g2o30OptimizationAlgorithmLevenberg5solveEib:bb.a
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = tail call noundef double @_ZN3g2o18get_monotonic_timeEv()
  %i.y = fsub double %i.x, %.047
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store double %i.y, ptr %i.z, align 8, !tbaa !73
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aa = icmp eq i32 %1, 0
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !47
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !13 ; 2 uses
  %i.af = fcmp ogt double %i.ae, 0.000000e+00
  br i1 %i.af, label %_ZNK3g2o30OptimizationAlgorithmLevenberg17computeLambdaInitEv.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %i.ag = load ptr, ptr %i.i, align 8, !tbaa !68  ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 304
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 312
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !74
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !78 ; 2 uses
  %.not.i = icmp eq ptr %i.aj, %i.ak
  br i1 %.not.i, label %._crit_edge20.i, label %.lr.ph19.i

._crit_edge20.i:                                  ; preds = %._crit_edge.i, %.preheader.i
  %.014.lcssa.i = phi double [ 0.000000e+00, %.preheader.i ], [ %.1.lcssa.i, %._crit_edge.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.am = load double, ptr %i.al, align 8, !tbaa !79
  %i.an = fmul double %.014.lcssa.i, %i.am
  br label %_ZNK3g2o30OptimizationAlgorithmLevenberg17computeLambdaInitEv.exit

.lr.ph19.i:                                       ; preds = %.preheader.i, %._crit_edge.i
  %i.ao = phi ptr [ %i.av, %._crit_edge.i ], [ %i.ag, %.preheader.i ]
  %i.ap = phi ptr [ %i.ba, %._crit_edge.i ], [ %i.ak, %.preheader.i ]
  %.01218.i = phi i64 [ %i.aw, %._crit_edge.i ], [ 0, %.preheader.i ] ; 2 uses
  %.01417.i = phi double [ %.1.lcssa.i, %._crit_edge.i ], [ 0.000000e+00, %.preheader.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.01218.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !80 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 104
  %i.at = load i32, ptr %i.as, align 8, !tbaa !82 ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !68
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.lr.ph19.i
  %i.av = phi ptr [ %i.ao, %.lr.ph19.i ], [ %.pre.i, %._crit_edge.loopexit.i ] ; 3 uses
  %.1.lcssa.i = phi double [ %.01417.i, %.lr.ph19.i ], [ %.sroa.speculated.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.aw = add nuw i64 %.01218.i, 1                ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 304
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 312
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !74
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !78 ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 3
  %i.bf = icmp ult i64 %i.aw, %i.be
  br i1 %i.bf, label %.lr.ph19.i, label %._crit_edge20.i, !llvm.loop !97

.lr.ph.i:                                         ; preds = %.lr.ph19.i, %.lr.ph.i
  %.016.i = phi i32 [ %i.bn, %.lr.ph.i ], [ 0, %.lr.ph19.i ] ; 3 uses
  %.115.i = phi double [ %.sroa.speculated.i, %.lr.ph.i ], [ %.01417.i, %.lr.ph19.i ] ; 2 uses
  %i.bg = load ptr, ptr %i.ar, align 8, !tbaa !11
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.bi(ptr noundef nonnull align 8 dereferenceable(128) %i.ar, i32 noundef %.016.i, i32 noundef %.016.i), !inline_history !98
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !13
  %i.bl = tail call double @llvm.fabs.f64(double %i.bk) ; 2 uses
  %i.bm = fcmp olt double %i.bl, %.115.i
  %.sroa.speculated.i = select i1 %i.bm, double %.115.i, double %i.bl ; 2 uses
  %i.bn = add nuw nsw i32 %.016.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bn, %i.at
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !99

_ZNK3g2o30OptimizationAlgorithmLevenberg17computeLambdaInitEv.exit: ; preds = %bb.h, %._crit_edge20.i
  %.011.i = phi double [ %i.an, %._crit_edge20.i ], [ %i.ae, %bb.h ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 96
  store double %.011.i, ptr %i.bo, align 8, !tbaa !100
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 128
  store double 2.000000e+00, ptr %i.bp, align 8, !tbaa !15
  br label %bb.i

bb.i:                                             ; preds = %_ZNK3g2o30OptimizationAlgorithmLevenberg17computeLambdaInitEv.exit, %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  store i32 0, ptr %i.bq, align 8, !tbaa !50
  %i.br = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 8 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.k, i64 80 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !68
  br label %_ZN3g2o15SparseOptimizer9terminateEv.exit

_ZN3g2o15SparseOptimizer9terminateEv.exit:        ; preds = %_ZN3g2o15SparseOptimizer9terminateEv.exit.backedge, %bb.i
  %i.bz = phi ptr [ %.pre, %bb.i ], [ %i.fx, %_ZN3g2o15SparseOptimizer9terminateEv.exit.backedge ] ; 2 uses
  %.050 = phi double [ %i.q, %bb.i ], [ %.151, %_ZN3g2o15SparseOptimizer9terminateEv.exit.backedge ] ; 3 uses
  %.148 = phi double [ %.047, %bb.i ], [ %.3, %_ZN3g2o15SparseOptimizer9terminateEv.exit.backedge ]
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !11
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 120
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(409) %i.bz)
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN3g2o15SparseOptimizer9terminateEv.exit
  %i.cd = load i32, ptr %i.br, align 8, !tbaa !101
  %i.ce = add nsw i32 %i.cd, 1
  store i32 %i.ce, ptr %i.br, align 8, !tbaa !101
  %i.cf = tail call noundef double @_ZN3g2o18get_monotonic_timeEv()
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN3g2o15SparseOptimizer9terminateEv.exit
  %.249 = phi double [ %i.cf, %bb.j ], [ %.148, %_ZN3g2o15SparseOptimizer9terminateEv.exit ] ; 2 uses
  %i.cg = load ptr, ptr %i.r, align 8, !tbaa !65, !nonnull !66, !align !67 ; 2 uses
  %i.ch = load double, ptr %i.bs, align 8, !tbaa !100
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !11
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = tail call noundef zeroext i1 %i.ck(ptr noundef nonnull align 8 dereferenceable(64) %i.cg, double noundef %i.ch, i1 noundef zeroext true) ; 0 uses
  %i.cm = load ptr, ptr %i.r, align 8, !tbaa !65, !nonnull !66, !align !67 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !11
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = tail call noundef zeroext i1 %i.cp(ptr noundef nonnull align 8 dereferenceable(64) %i.cm) ; 2 uses
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cr = tail call noundef double @_ZN3g2o18get_monotonic_timeEv()
  %i.cs = fsub double %i.cr, %.249
  %i.ct = load double, ptr %i.bt, align 8, !tbaa !102
  %i.cu = fadd double %i.ct, %i.cs
  store double %i.cu, ptr %i.bt, align 8, !tbaa !102
  %i.cv = tail call noundef double @_ZN3g2o18get_monotonic_timeEv()
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.3 = phi double [ %i.cv, %bb.l ], [ %.249, %bb.k ] ; 2 uses
  %i.cw = load ptr, ptr %i.i, align 8, !tbaa !68
  %i.cx = load ptr, ptr %i.r, align 8, !tbaa !65, !nonnull !66, !align !67
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !103
  tail call void @_ZN3g2o15SparseOptimizer6updateEPKd(ptr noundef nonnull align 8 dereferenceable(409) %i.cw, ptr noundef %i.cz)
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.da = tail call noundef double @_ZN3g2o18get_monotonic_timeEv()
  %i.db = fsub double %i.da, %.3
  store double %i.db, ptr %i.bu, align 8, !tbaa !106
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dc = load ptr, ptr %i.r, align 8, !tbaa !65, !nonnull !66, !align !67 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !11
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 72
  %i.df = load ptr, ptr %i.de, align 8
  tail call void %i.df(ptr noundef nonnull align 8 dereferenceable(64) %i.dc)
  %i.dg = load ptr, ptr %i.i, align 8, !tbaa !68
  tail call void @_ZN3g2o15SparseOptimizer19computeActiveErrorsEv(ptr noundef nonnull align 8 dereferenceable(409) %i.dg)
  %i.dh = load ptr, ptr %i.i, align 8, !tbaa !68
  %i.di = tail call noundef double @_ZNK3g2o15SparseOptimizer16activeRobustChi2Ev(ptr noundef nonnull align 8 dereferenceable(409) %i.dh) ; 3 uses
  br i1 %i.cq, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dj = fadd double %.050, f0xFFEFFFFFFFFFFFFF
  br label %_ZNK3g2o30OptimizationAlgorithmLevenberg12computeScaleEv.exit

bb.q:                                             ; preds = %bb.o
  %i.dk = fsub double %.050, %i.di                ; 2 uses
  %i.dl = load ptr, ptr %i.r, align 8, !tbaa !65, !nonnull !66, !align !67 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !107 ; 5 uses
  %.not.i58 = icmp eq i64 %i.dn, 0
  br i1 %.not.i58, label %_ZNK3g2o30OptimizationAlgorithmLevenberg12computeScaleEv.exit, label %.lr.ph.i59

.lr.ph.i59:                                       ; preds = %bb.q
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !103 ; 3 uses
  %i.dq = load double, ptr %i.bs, align 8, !tbaa !100 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !108 ; 3 uses
  %xtraiter = and i64 %i.dn, 1
  %i.dt = icmp eq i64 %i.dn, 1
  br i1 %i.dt, label %.epil.preheader, label %.lr.ph.i59.new

.lr.ph.i59.new:                                   ; preds = %.lr.ph.i59
  %unroll_iter = and i64 %i.dn, -2
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i59.new
  %.09.i = phi i64 [ 0, %.lr.ph.i59.new ], [ %i.ef, %bb.r ] ; 4 uses
  %.078.i = phi double [ 0.000000e+00, %.lr.ph.i59.new ], [ %i.ee, %bb.r ]
  %niter = phi i64 [ 0, %.lr.ph.i59.new ], [ %niter.next.1, %bb.r ]
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.09.i
  %i.dv = load double, ptr %i.du, align 8, !tbaa !13 ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %.09.i
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !13
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.dq, double %i.dv, double %i.dx)
  %i.dz = tail call double @llvm.fmuladd.f64(double %i.dv, double %i.dy, double %.078.i)
  %3 = or disjoint i64 %.09.i, 1                  ; 2 uses
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %3
  %i.ea = load double, ptr %4, align 8, !tbaa !13 ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %3
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !13
  %i.ed = tail call double @llvm.fmuladd.f64(double %i.dq, double %i.ea, double %i.ec)
  %i.ee = tail call double @llvm.fmuladd.f64(double %i.ea, double %i.ed, double %i.dz) ; 3 uses
  %i.ef = add nuw i64 %.09.i, 2                   ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK3g2o30OptimizationAlgorithmLevenberg12computeScaleEv.exit.loopexit.unr-lcssa, label %bb.r, !llvm.loop !109

_ZNK3g2o30OptimizationAlgorithmLevenberg12computeScaleEv.exit.loopexit.unr-lcssa: ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK3g2o30OptimizationAlgorithmLevenberg12computeScaleEv.exit.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK3g2o30OptimizationAlgorithmLevenberg12computeScaleEv.exit.loopexit.unr-lcssa, %.lr.ph.i59
  %.09.i.epil.init = phi i64 [ 0, %.lr.ph.i59 ], [ %i.ef, %_ZNK3g2o30OptimizationAlgorithmLevenberg12computeScaleEv.exit.loopexit.unr-lcssa ] ; 2 uses
  %.078.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i59 ], [ %i.ee, %_ZNK3g2o30OptimizationAlgorithmLevenberg12computeScaleEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod98 = trunc i64 %i.dn to i1
  tail call void @llvm.assume(i1 %lcmp.mod98)
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.09.i.epil.init
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !13 ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %.09.i.epil.init
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !13
  %i.ek = tail call double @llvm.fmuladd.f64(double %i.dq, double %i.eh, double %i.ej)
  %i.el = tail call double @llvm.fmuladd.f64(double %i.eh, double %i.ek, double %.078.i.epil.init)
  br label %_ZNK3g2o30OptimizationAlgorithmLevenberg12computeScaleEv.exit.loopexit

_ZNK3g2o30OptimizationAlgorithmLevenberg12computeScaleEv.exit.loopexit: ; preds = %_ZNK3g2o30OptimizationAlgorithmLevenberg12computeScaleEv.exit.loopexit.unr-lcssa, %.epil.preheader
  %.lcssa = phi double [ %i.ee, %_ZNK3g2o30OptimizationAlgorithmLevenberg12computeScaleEv.exit.loopexit.unr-lcssa ], [ %i.el, %.epil.preheader ]
  %i.em = fadd double %.lcssa, 1.000000e-03
  br label %_ZNK3g2o30OptimizationAlgorithmLevenberg12computeScaleEv.exit

_ZNK3g2o30OptimizationAlgorithmLevenberg12computeScaleEv.exit: ; preds = %bb.q, %_ZNK3g2o30OptimizationAlgorithmLevenberg12computeScaleEv.exit.loopexit, %bb.p
  %i.en = phi double [ %i.dj, %bb.p ], [ %i.dk, %_ZNK3g2o30OptimizationAlgorithmLevenberg12computeScaleEv.exit.loopexit ], [ %i.dk, %bb.q ]
  %.04669 = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.p ], [ %i.di, %_ZNK3g2o30OptimizationAlgorithmLevenberg12computeScaleEv.exit.loopexit ], [ %i.di, %bb.q ] ; 2 uses
  %i.eo = phi double [ 1.000000e+00, %bb.p ], [ %i.em, %_ZNK3g2o30OptimizationAlgorithmLevenberg12computeScaleEv.exit.loopexit ], [ 1.000000e-03, %bb.q ]
  %i.ep = fdiv double %i.en, %i.eo                ; 4 uses
  %i.eq = fcmp ogt double %i.ep, 0.000000e+00
  br i1 %i.eq, label %bb.s, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK3g2o30OptimizationAlgorithmLevenberg12computeScaleEv.exit
  %.pre78 = load double, ptr %i.bs, align 8, !tbaa !100
  br label %bb.u

bb.s:                                             ; preds = %_ZNK3g2o30OptimizationAlgorithmLevenberg12computeScaleEv.exit
  %i.er = tail call double @llvm.fabs.f64(double %.04669)
  %i.es = fcmp one double %i.er, +inf
  %or.cond3 = and i1 %i.cq, %i.es
  %.pre79 = load double, ptr %i.bs, align 8, !tbaa !100 ; 2 uses
  br i1 %or.cond3, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.et = tail call double @llvm.fmuladd.f64(double %i.ep, double 2.000000e+00, double -1.000000e+00)
  %i.eu = tail call noundef double @pow(double noundef %i.et, double noundef 3.000000e+00) #16
  %i.ev = fsub double 1.000000e+00, %i.eu         ; 2 uses
  %i.ew = load double, ptr %i.bw, align 8, !tbaa !13 ; 2 uses
  %i.ex = fcmp olt double %i.ew, %i.ev
  %.sroa.speculated67 = select i1 %i.ex, double %i.ew, double %i.ev ; 2 uses
  %i.ey = load double, ptr %i.bx, align 8, !tbaa !13 ; 2 uses
  %i.ez = fcmp olt double %i.ey, %.sroa.speculated67
  %.sroa.speculated = select i1 %i.ez, double %.sroa.speculated67, double %i.ey
  %i.fa = fmul double %.pre79, %.sroa.speculated
  store double %i.fa, ptr %i.bs, align 8, !tbaa !100
  store double 2.000000e+00, ptr %i.bv, align 8, !tbaa !15
  %i.fb = load ptr, ptr %i.i, align 8, !tbaa !68  ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !11
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 136
  %i.fe = load ptr, ptr %i.fd, align 8
  tail call void %i.fe(ptr noundef nonnull align 8 dereferenceable(409) %i.fb)
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge, %bb.s
  %i.ff = phi double [ %.pre78, %._crit_edge ], [ %.pre79, %bb.s ]
  %i.fg = load double, ptr %i.bv, align 8, !tbaa !15 ; 2 uses
  %i.fh = fmul double %i.fg, %i.ff
  store double %i.fh, ptr %i.bs, align 8, !tbaa !100
  %i.fi = fmul double %i.fg, 2.000000e+00
  store double %i.fi, ptr %i.bv, align 8, !tbaa !15
  %i.fj = load ptr, ptr %i.i, align 8, !tbaa !68  ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !11
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 128
  %i.fm = load ptr, ptr %i.fl, align 8
  tail call void %i.fm(ptr noundef nonnull align 8 dereferenceable(409) %i.fj)
  %i.fn = load double, ptr %i.bs, align 8, !tbaa !100
  %i.fo = tail call double @llvm.fabs.f64(double %i.fn)
  %i.fp = fcmp ueq double %i.fo, +inf
  br i1 %i.fp, label %..critedge_crit_edge, label %bb.v

..critedge_crit_edge:                             ; preds = %bb.u
  %.pre80 = load i32, ptr %i.bq, align 8, !tbaa !50
  br label %.critedge

bb.v:                                             ; preds = %bb.t, %bb.u
  %.151 = phi double [ %.04669, %bb.t ], [ %.050, %bb.u ]
  %i.fq = load i32, ptr %i.bq, align 8, !tbaa !50
  %i.fr = add nsw i32 %i.fq, 1                    ; 5 uses
  store i32 %i.fr, ptr %i.bq, align 8, !tbaa !50
  %i.fs = fcmp olt double %i.ep, 0.000000e+00
  br i1 %i.fs, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.ft = load ptr, ptr %i.by, align 8, !tbaa !51
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 40
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !50
  %i.fw = icmp slt i32 %i.fr, %i.fv
  br i1 %i.fw, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.fx = load ptr, ptr %i.i, align 8, !tbaa !68  ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 288
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !110 ; 2 uses
  %.not.i63 = icmp eq ptr %i.fz, null
  br i1 %.not.i63, label %_ZN3g2o15SparseOptimizer9terminateEv.exit.backedge, label %.split

.split:                                           ; preds = %bb.x
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !156, !range !157, !noundef !66
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %.critedge, label %_ZN3g2o15SparseOptimizer9terminateEv.exit.backedge

_ZN3g2o15SparseOptimizer9terminateEv.exit.backedge: ; preds = %.split, %bb.x
  br label %_ZN3g2o15SparseOptimizer9terminateEv.exit, !llvm.loop !158

.critedge:                                        ; preds = %.split, %bb.v, %bb.w, %..critedge_crit_edge
  %i.gc = phi i32 [ %.pre80, %..critedge_crit_edge ], [ %i.fr, %bb.w ], [ %i.fr, %bb.v ], [ %i.fr, %.split ]
  %i.gd = load ptr, ptr %i.by, align 8, !tbaa !51
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 40
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !50
  %i.gg = icmp eq i32 %i.gc, %i.gf
  %i.gh = fcmp oeq double %i.ep, 0.000000e+00
  %or.cond5 = or i1 %i.gh, %i.gg
  br i1 %or.cond5, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.gi = load double, ptr %i.bs, align 8, !tbaa !100
  %i.gj = tail call double @llvm.fabs.f64(double %i.gi)
  %i.gk = fcmp one double %i.gj, +inf
  %spec.select = select i1 %i.gk, i32 1, i32 2
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.b, %.critedge
  %.2 = phi i32 [ -1, %bb.b ], [ 2, %.critedge ], [ %spec.select, %bb.y ]
  ret i32 %.2
}

declare noundef double @_ZN3g2o18get_monotonic_timeEv() local_unnamed_addr #1

declare void @_ZN3g2o15SparseOptimizer19computeActiveErrorsEv(ptr noundef nonnull align 8 dereferenceable(409)) local_unnamed_addr #1

declare noundef double @_ZNK3g2o15SparseOptimizer16activeRobustChi2Ev(ptr noundef nonnull align 8 dereferenceable(409)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef double @_ZNK3g2o30OptimizationAlgorithmLevenberg17computeLambdaInitEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load double, ptr %i.c, align 8, !tbaa !13 ; 2 uses
  %i.e = fcmp ogt double %i.d, 0.000000e+00
  br i1 %i.e, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !68   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !74
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !78   ; 2 uses
  %.not = icmp eq ptr %i.j, %i.k
  br i1 %.not, label %._crit_edge20, label %.lr.ph19

._crit_edge20:                                    ; preds = %._crit_edge, %.preheader
  %.014.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %.1.lcssa, %._crit_edge ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load double, ptr %i.l, align 8, !tbaa !79
  %i.n = fmul double %.014.lcssa, %i.m
  br label %bb.b

.lr.ph19:                                         ; preds = %.preheader, %._crit_edge
  %i.o = phi ptr [ %i.v, %._crit_edge ], [ %i.g, %.preheader ]
  %i.p = phi ptr [ %i.aa, %._crit_edge ], [ %i.k, %.preheader ]
  %.01218 = phi i64 [ %i.w, %._crit_edge ], [ 0, %.preheader ] ; 2 uses
  %.01417 = phi double [ %.1.lcssa, %._crit_edge ], [ 0.000000e+00, %.preheader ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.01218
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !80   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  %i.t = load i32, ptr %i.s, align 8, !tbaa !82   ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !68
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph19
  %i.v = phi ptr [ %i.o, %.lr.ph19 ], [ %.pre, %._crit_edge.loopexit ] ; 3 uses
  %.1.lcssa = phi double [ %.01417, %.lr.ph19 ], [ %.sroa.speculated, %._crit_edge.loopexit ] ; 2 uses
  %i.w = add nuw i64 %.01218, 1                   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 304
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 312
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !74
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !78  ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.w, %i.ae
  br i1 %i.af, label %.lr.ph19, label %._crit_edge20, !llvm.loop !97

.lr.ph:                                           ; preds = %.lr.ph19, %.lr.ph
  %.016 = phi i32 [ %i.an, %.lr.ph ], [ 0, %.lr.ph19 ] ; 3 uses
  %.115 = phi double [ %.sroa.speculated, %.lr.ph ], [ %.01417, %.lr.ph19 ] ; 2 uses
  %i.ag = load ptr, ptr %i.r, align 8, !tbaa !11
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.ai(ptr noundef nonnull align 8 dereferenceable(128) %i.r, i32 noundef %.016, i32 noundef %.016)
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !13
  %i.al = tail call double @llvm.fabs.f64(double %i.ak) ; 2 uses
  %i.am = fcmp olt double %i.al, %.115
  %.sroa.speculated = select i1 %i.am, double %.115, double %i.al ; 2 uses
  %i.an = add nuw nsw i32 %.016, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.an, %i.t
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !99

bb.b:                                             ; preds = %bb.a, %._crit_edge20
  %.011 = phi double [ %i.n, %._crit_edge20 ], [ %i.d, %bb.a ]
  ret double %.011
}

declare void @_ZN3g2o15SparseOptimizer6updateEPKd(ptr noundef nonnull align 8 dereferenceable(409), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef double @_ZNK3g2o30OptimizationAlgorithmLevenberg12computeScaleEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65, !nonnull !66, !align !67 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !107  ; 5 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !103  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load double, ptr %i.g, align 8, !tbaa !100 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !108  ; 3 uses
  %xtraiter = and i64 %i.d, 1
  %i.k = icmp eq i64 %i.d, 1
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.d, -2
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.09.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ac, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.078.epil.init = phi double [ 0.000000e+00, %.lr.ph ], [ %i.ab, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod11 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.09.epil.init
  %i.m = load double, ptr %i.l, align 8, !tbaa !13 ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.09.epil.init
  %i.o = load double, ptr %i.n, align 8, !tbaa !13
  %i.p = tail call double @llvm.fmuladd.f64(double %i.h, double %i.m, double %i.o)
  %i.q = tail call double @llvm.fmuladd.f64(double %i.m, double %i.p, double %.078.epil.init)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.07.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.ab, %._crit_edge.loopexit.unr-lcssa ], [ %i.q, %.epil.preheader ]
  ret double %.07.lcssa

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.09 = phi i64 [ 0, %.lr.ph.new ], [ %i.ac, %bb.b ] ; 4 uses
  %.078 = phi double [ 0.000000e+00, %.lr.ph.new ], [ %i.ab, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.09
  %i.s = load double, ptr %i.r, align 8, !tbaa !13 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.09
  %i.u = load double, ptr %i.t, align 8, !tbaa !13
  %i.v = tail call double @llvm.fmuladd.f64(double %i.h, double %i.s, double %i.u)
  %i.w = tail call double @llvm.fmuladd.f64(double %i.s, double %i.v, double %.078)
  %1 = or disjoint i64 %.09, 1                    ; 2 uses
  %2 = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %1
  %i.x = load double, ptr %2, align 8, !tbaa !13  ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %1
  %i.z = load double, ptr %i.y, align 8, !tbaa !13
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.h, double %i.x, double %i.z)
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.x, double %i.aa, double %i.w) ; 3 uses
  %i.ac = add nuw i64 %.09, 2                     ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !109
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3g2o30OptimizationAlgorithmLevenberg24setMaxTrialsAfterFailureEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, i32 noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %1, ptr %i.c, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3g2o30OptimizationAlgorithmLevenberg17setUserLambdaInitEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, double noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store double %1, ptr %i.c, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK3g2o30OptimizationAlgorithmLevenberg12printVerboseERSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4, i64 noundef 9) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65, !nonnull !66, !align !67 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(64) %i.c)
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %i.g) ; 4 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.5, i64 noundef 10) ; 0 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !159
  %i.p = and i32 %i.o, -261
  %i.q = or disjoint i32 %i.p, 4
  store i32 %i.q, ptr %i.n, align 8, !tbaa !168
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = load double, ptr %i.r, align 8, !tbaa !100
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.h, double noundef %i.s) ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !11
  %i.v = getelementptr i8, ptr %i.u, i64 -24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %i.t, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !159
  %i.aa = and i32 %i.z, -5
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !168
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @.str.6, i64 noundef 17) ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !40
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.t, i32 noundef %i.ad) ; 0 uses
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN3g2o32OptimizationAlgorithmWithHessian4initEb(ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) unnamed_addr #1

declare noundef zeroext i1 @_ZN3g2o32OptimizationAlgorithmWithHessian16computeMarginalsERNS_17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEERKSt6vectorISt4pairIiiESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 1, ptr noundef nonnull align 1) unnamed_addr #1

declare noundef zeroext i1 @_ZN3g2o32OptimizationAlgorithmWithHessian15updateStructureERKSt6vectorIPNS_10HyperGraph6VertexESaIS4_EERKSt3setIPNS2_4EdgeESt4lessISB_ESaISB_EE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare noundef zeroext i1 @_ZN3g2o32OptimizationAlgorithmWithHessian20buildLinearStructureEv(ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #1

declare void @_ZN3g2o32OptimizationAlgorithmWithHessian18updateLinearSystemEv(ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #1

declare void @_ZN3g2o32OptimizationAlgorithmWithHessian13setWriteDebugEb(ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o32OptimizationAlgorithmWithHessian10writeDebugEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i8, ptr %i.c, align 1, !tbaa !156, !range !157, !noundef !66
  %i.e = trunc nuw i8 %i.d to i1
  ret i1 %i.e
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

declare noundef zeroext i1 @_ZN3g2o11PropertyMap11addPropertyEPNS_12BasePropertyE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #12

declare void @_ZN3g2o12BasePropertyC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o8PropertyIdED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o12BasePropertyD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK3g2o8PropertyIdE8toStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load double, ptr %i.b, align 8, !tbaa !57
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, double noundef %i.c)
          to label %_ZNSolsEd.exit unwind label %bb.e ; 0 uses

_ZNSolsEd.exit:                                   ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !170)
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !41, !alias.scope !176
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !44, !alias.scope !176
  store i8 0, ptr %i.e, align 8, !tbaa !46, !alias.scope !176
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !177, !noalias !176 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !noalias !176 ; 2 uses
  %i.k = icmp ugt ptr %i.h, %i.j
  %.08.i.i.i = select i1 %i.k, ptr %i.h, ptr %i.j ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEd.exit
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !179, !noalias !176 ; 2 uses
  %i.n = ptrtoint ptr %.08.i.i.i to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.m, i64 noundef %i.p)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !48, !alias.scope !176 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.e
  br i1 %i.t, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.u = load i64, ptr %i.e, align 8, !tbaa !46, !alias.scope !176
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #17
  br label %.body

bb.d:                                             ; preds = %_ZNSolsEd.exit
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.x = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.x, ptr %2, align 8, !tbaa !11
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.z = getelementptr i8, ptr %i.x, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %2, i64 %i.aa
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !11
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !11
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ad, align 8, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !48 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
end_hunk_0
