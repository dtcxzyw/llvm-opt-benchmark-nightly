Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/complexity?download=true
inline.NumInlined: 528
inline.NumDeleted: 263
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEENS_4BigOE:bb.a
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !35
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #21
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit20

_ZN9benchmark8internal18GetNullLogInstanceEv.exit20: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, %bb.d, %bb.e
  %i.g = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.f, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit22, !prof !32

bb.f:                                             ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit20
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #21
  %.not.i21 = icmp eq i32 %i.i, 0
  br i1 %.not.i21, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit22, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !35
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #21
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit22

_ZN9benchmark8internal18GetNullLogInstanceEv.exit22: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit20, %bb.f, %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  switch i32 %3, label %bb.p [
    i32 7, label %bb.h
    i32 2, label %_ZN9benchmark12FittingCurveENS_4BigOE.exit49
    i32 3, label %bb.l
    i32 4, label %bb.m
    i32 5, label %bb.n
    i32 6, label %bb.o
  ]

bb.h:                                             ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit22
  %i.j = tail call noalias noundef nonnull dereferenceable(20) ptr @_Znwm(i64 noundef 20) #22 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.j, ptr noundef nonnull align 4 dereferenceable(20) @constinit, i64 20, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20, !noalias !91 ; 3 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !21, !noalias !91 ; 3 uses
  %.not.i23 = icmp eq ptr %i.l, %i.m
  br i1 %.not.i23, label %.loopexit86, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.h
  %i.n = load ptr, ptr %2, align 8, !tbaa !29, !noalias !91 ; 10 uses
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3                   ; 7 uses
  %xtraiter = and i64 %i.r, 3                     ; 3 uses
  %i.s = icmp ult i64 %i.r, 4
  br i1 %i.s, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.r, -4
  br label %.lr.ph.i

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i.preheader
  %.03539.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.ba, %._crit_edge.i.unr-lcssa ]
  %.03638.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bb, %._crit_edge.i.unr-lcssa ]
  %.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph.i.preheader ], [ %i.az, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod199 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod199)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.03539.i.epil = phi double [ %i.y, %.lr.ph.i.epil ], [ %.03539.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.03638.i.epil = phi i64 [ %i.z, %.lr.ph.i.epil ], [ %.03638.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %i.t = phi <2 x double> [ %i.x, %.lr.ph.i.epil ], [ %.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.03638.i.epil
  %i.v = load double, ptr %i.u, align 8, !tbaa !30, !noalias !91 ; 2 uses
  %i.w = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.v, i64 1
  %i.x = fadd <2 x double> %i.t, %i.w             ; 2 uses
  %i.y = fadd double %.03539.i.epil, %i.v         ; 2 uses
  %i.z = add nuw i64 %.03638.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !85

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil, %._crit_edge.i.unr-lcssa
  %.lcssa196 = phi <2 x double> [ %i.az, %._crit_edge.i.unr-lcssa ], [ %i.x, %.lr.ph.i.epil ] ; 2 uses
  %.lcssa195 = phi double [ %i.ba, %._crit_edge.i.unr-lcssa ], [ %i.y, %.lr.ph.i.epil ]
  %i.aa = extractelement <2 x double> %.lcssa196, i64 0
  %i.ab = fdiv double %.lcssa195, %i.aa           ; 6 uses
  %xtraiter200 = and i64 %i.r, 3                  ; 3 uses
  %i.ac = icmp ult i64 %i.r, 4
  br i1 %i.ac, label %.lr.ph47.i.epil.preheader, label %._crit_edge.i.new

._crit_edge.i.new:                                ; preds = %._crit_edge.i
  %unroll_iter205 = and i64 %i.r, -4
  br label %.lr.ph47.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.03539.i = phi double [ 0.000000e+00, %.lr.ph.i.preheader.new ], [ %i.ba, %.lr.ph.i ]
  %.03638.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.bb, %.lr.ph.i ] ; 5 uses
  %i.ad = phi <2 x double> [ zeroinitializer, %.lr.ph.i.preheader.new ], [ %i.az, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.03638.i
  %i.af = load double, ptr %i.ae, align 8, !tbaa !30, !noalias !91 ; 2 uses
  %i.ag = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.af, i64 1
  %i.ah = fadd <2 x double> %i.ad, %i.ag
  %i.ai = fadd double %.03539.i, %i.af
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.03638.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load double, ptr %i.ak, align 8, !tbaa !30, !noalias !91 ; 2 uses
  %i.am = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.al, i64 1
  %i.an = fadd <2 x double> %i.ah, %i.am
  %i.ao = fadd double %i.ai, %i.al
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.03638.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !30, !noalias !91 ; 2 uses
  %i.as = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.ar, i64 1
  %i.at = fadd <2 x double> %i.an, %i.as
  %i.au = fadd double %i.ao, %i.ar
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.03638.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !30, !noalias !91 ; 2 uses
  %i.ay = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.ax, i64 1
  %i.az = fadd <2 x double> %i.at, %i.ay          ; 3 uses
  %i.ba = fadd double %i.au, %i.ax                ; 3 uses
  %i.bb = add nuw i64 %.03638.i, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

.lr.ph47.i:                                       ; preds = %.lr.ph47.i, %._crit_edge.i.new
  %.03345.i = phi i64 [ 0, %._crit_edge.i.new ], [ %i.bz, %.lr.ph47.i ] ; 5 uses
  %.03444.i = phi double [ 0.000000e+00, %._crit_edge.i.new ], [ %i.by, %.lr.ph47.i ]
  %niter206 = phi i64 [ 0, %._crit_edge.i.new ], [ %niter206.next.3, %.lr.ph47.i ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.03345.i
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !30, !noalias !91
  %i.be = fsub double %i.bd, %i.ab
  %i.bf = tail call noundef double @pow(double noundef %i.be, double noundef 2.000000e+00) #21, !tbaa !9, !noalias !91
  %i.bg = fadd double %.03444.i, %i.bf
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.03345.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !30, !noalias !91
  %i.bk = fsub double %i.bj, %i.ab
  %i.bl = tail call noundef double @pow(double noundef %i.bk, double noundef 2.000000e+00) #21, !tbaa !9, !noalias !91
  %i.bm = fadd double %i.bg, %i.bl
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.03345.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !30, !noalias !91
  %i.bq = fsub double %i.bp, %i.ab
  %i.br = tail call noundef double @pow(double noundef %i.bq, double noundef 2.000000e+00) #21, !tbaa !9, !noalias !91
  %i.bs = fadd double %i.bm, %i.br
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.03345.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !30, !noalias !91
  %i.bw = fsub double %i.bv, %i.ab
  %i.bx = tail call noundef double @pow(double noundef %i.bw, double noundef 2.000000e+00) #21, !tbaa !9, !noalias !91
  %i.by = fadd double %i.bs, %i.bx                ; 3 uses
  %i.bz = add nuw i64 %.03345.i, 4                ; 2 uses
  %niter206.next.3 = add i64 %niter206, 4         ; 2 uses
  %niter206.ncmp.3 = icmp eq i64 %niter206.next.3, %unroll_iter205
  br i1 %niter206.ncmp.3, label %.loopexit86.loopexit.unr-lcssa, label %.lr.ph47.i, !llvm.loop !1

.loopexit86.loopexit.unr-lcssa:                   ; preds = %.lr.ph47.i
  %lcmp.mod202.not = icmp eq i64 %xtraiter200, 0
  br i1 %lcmp.mod202.not, label %.loopexit86.loopexit, label %.lr.ph47.i.epil.preheader

.lr.ph47.i.epil.preheader:                        ; preds = %.loopexit86.loopexit.unr-lcssa, %._crit_edge.i
  %.03345.i.epil.init = phi i64 [ 0, %._crit_edge.i ], [ %i.bz, %.loopexit86.loopexit.unr-lcssa ]
  %.03444.i.epil.init = phi double [ 0.000000e+00, %._crit_edge.i ], [ %i.by, %.loopexit86.loopexit.unr-lcssa ]
  %lcmp.mod204 = icmp ne i64 %xtraiter200, 0
  tail call void @llvm.assume(i1 %lcmp.mod204)
  br label %.lr.ph47.i.epil

.lr.ph47.i.epil:                                  ; preds = %.lr.ph47.i.epil, %.lr.ph47.i.epil.preheader
  %.03345.i.epil = phi i64 [ %i.cf, %.lr.ph47.i.epil ], [ %.03345.i.epil.init, %.lr.ph47.i.epil.preheader ] ; 2 uses
  %.03444.i.epil = phi double [ %i.ce, %.lr.ph47.i.epil ], [ %.03444.i.epil.init, %.lr.ph47.i.epil.preheader ]
  %epil.iter201 = phi i64 [ %epil.iter201.next, %.lr.ph47.i.epil ], [ 0, %.lr.ph47.i.epil.preheader ]
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.03345.i.epil
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !30, !noalias !91
  %i.cc = fsub double %i.cb, %i.ab
  %i.cd = tail call noundef double @pow(double noundef %i.cc, double noundef 2.000000e+00) #21, !tbaa !9, !noalias !91
  %i.ce = fadd double %.03444.i.epil, %i.cd       ; 2 uses
  %i.cf = add nuw i64 %.03345.i.epil, 1
  %epil.iter201.next = add i64 %epil.iter201, 1   ; 2 uses
  %epil.iter201.cmp.not = icmp eq i64 %epil.iter201.next, %xtraiter200
  br i1 %epil.iter201.cmp.not, label %.loopexit86.loopexit, label %.lr.ph47.i.epil, !llvm.loop !86

.loopexit86.loopexit:                             ; preds = %.lr.ph47.i.epil, %.loopexit86.loopexit.unr-lcssa
  %.lcssa194 = phi double [ %i.by, %.loopexit86.loopexit.unr-lcssa ], [ %i.ce, %.lr.ph47.i.epil ]
  %i.cg = uitofp i64 %i.r to double
  %i.ch = shufflevector <2 x double> %.lcssa196, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ci = insertelement <2 x double> %i.ch, double %.lcssa194, i64 1
  br label %.loopexit86

.loopexit86:                                      ; preds = %bb.h, %.loopexit86.loopexit
  %.sroa.076.0 = phi double [ %i.ab, %.loopexit86.loopexit ], [ +qnan, %bb.h ]
  %.lcssa.i = phi double [ %i.cg, %.loopexit86.loopexit ], [ 0.000000e+00, %bb.h ]
  %i.cj = phi <2 x double> [ %i.ci, %.loopexit86.loopexit ], [ zeroinitializer, %bb.h ]
  %i.ck = insertelement <2 x double> poison, double %.lcssa.i, i64 0
  %i.cl = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cm = fdiv <2 x double> %i.cj, %i.cl          ; 2 uses
  %i.cn = extractelement <2 x double> %i.cm, i64 1
  %i.co = tail call double @sqrt(double noundef %i.cn) #21, !tbaa !9, !noalias !91
  %i.cp = extractelement <2 x double> %i.cm, i64 0
  %i.cq = fdiv double %i.co, %i.cp                ; 2 uses
  store double %.sroa.076.0, ptr %0, align 8, !tbaa !30
  %.sroa.677.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store double %i.cq, ptr %.sroa.677.0..sroa_idx, align 8, !tbaa !30
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 1, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !25
  br label %bb.i

_ZNSt6vectorIN9benchmark4BigOESaIS1_EED2Ev.exit:  ; preds = %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 20) #23
  br label %bb.q

bb.i:                                             ; preds = %.loopexit86, %bb.k
  %i.cr = phi ptr [ %i.m, %.loopexit86 ], [ %i.eq, %bb.k ] ; 4 uses
  %i.cs = phi ptr [ %i.l, %.loopexit86 ], [ %i.er, %bb.k ]
  %.sroa.073.0.idx106 = phi i64 [ 0, %.loopexit86 ], [ %.sroa.073.0.add, %bb.k ] ; 2 uses
  %i.ct = phi double [ %i.cq, %.loopexit86 ], [ %i.fd, %bb.k ] ; 2 uses
  %.sroa.073.0.ptr107 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.073.0.idx106 ; 2 uses
  %i.cu = load i32, ptr %.sroa.073.0.ptr107, align 4, !tbaa !36
  %switch.tableidx = add i32 %i.cu, -2            ; 2 uses
  %i.cv = icmp ult i32 %switch.tableidx, 5
  br i1 %i.cv, label %switch.lookup, label %_ZN9benchmark12FittingCurveENS_4BigOE.exit

switch.lookup:                                    ; preds = %bb.i
  %i.cw = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEENS_4BigOE, i64 %i.cw
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN9benchmark12FittingCurveENS_4BigOE.exit

_ZN9benchmark12FittingCurveENS_4BigOE.exit:       ; preds = %bb.i, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @"_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_58__invokeEl", %bb.i ] ; 2 uses
  %.not.i25 = icmp eq ptr %i.cs, %i.cr
  br i1 %.not.i25, label %.loopexit, label %.lr.ph.i26

._crit_edge.i31:                                  ; preds = %.noexc
  %i.cx = extractelement <2 x double> %i.dn, i64 0
  %i.cy = extractelement <2 x double> %i.dn, i64 1
  %i.cz = fdiv double %i.cy, %i.cx                ; 3 uses
  %i.da = icmp eq ptr %i.dp, %i.dq
  br i1 %i.da, label %.loopexit, label %.lr.ph47.i32

.lr.ph.i26:                                       ; preds = %_ZN9benchmark12FittingCurveENS_4BigOE.exit, %.noexc
  %i.db = phi ptr [ %i.dq, %.noexc ], [ %i.cr, %_ZN9benchmark12FittingCurveENS_4BigOE.exit ]
  %.03240.i28 = phi double [ %i.dj, %.noexc ], [ 0.000000e+00, %_ZN9benchmark12FittingCurveENS_4BigOE.exit ]
  %.03638.i30 = phi i64 [ %i.do, %.noexc ], [ 0, %_ZN9benchmark12FittingCurveENS_4BigOE.exit ] ; 3 uses
  %i.dc = phi <2 x double> [ %i.dn, %.noexc ], [ zeroinitializer, %_ZN9benchmark12FittingCurveENS_4BigOE.exit ]
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.03638.i30
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !26, !noalias !93
  %i.df = invoke noundef double %.0.i(i64 noundef %i.de)
          to label %.noexc unwind label %_ZNSt6vectorIN9benchmark4BigOESaIS1_EED2Ev.exit47.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !37

.noexc:                                           ; preds = %.lr.ph.i26
  %i.dg = load ptr, ptr %2, align 8, !tbaa !29, !noalias !93
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.03638.i30
  %i.di = load double, ptr %i.dh, align 8, !tbaa !30, !noalias !93 ; 2 uses
  %i.dj = fadd double %.03240.i28, %i.di          ; 3 uses
  %i.dk = insertelement <2 x double> poison, double %i.df, i64 0 ; 2 uses
  %i.dl = insertelement <2 x double> %i.dk, double %i.di, i64 1
  %i.dm = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dl, <2 x double> %i.dm, <2 x double> %i.dc) ; 3 uses
  %i.do = add nuw i64 %.03638.i30, 1              ; 2 uses
  %i.dp = load ptr, ptr %i.k, align 8, !tbaa !20, !noalias !93 ; 3 uses
  %i.dq = load ptr, ptr %1, align 8, !tbaa !21, !noalias !93 ; 5 uses
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = ashr exact i64 %i.dt, 3
  %i.dv = icmp ult i64 %i.do, %i.du
  br i1 %i.dv, label %.lr.ph.i26, label %._crit_edge.i31, !llvm.loop !0

.lr.ph47.i32:                                     ; preds = %._crit_edge.i31, %.noexc43
  %i.dw = phi ptr [ %i.ej, %.noexc43 ], [ %i.dq, %._crit_edge.i31 ]
  %.03345.i33 = phi i64 [ %i.eh, %.noexc43 ], [ 0, %._crit_edge.i31 ] ; 3 uses
  %.03444.i34 = phi double [ %i.eg, %.noexc43 ], [ 0.000000e+00, %._crit_edge.i31 ]
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %.03345.i33
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !26, !noalias !93
  %i.dz = invoke noundef double %.0.i(i64 noundef %i.dy)
          to label %.noexc43 unwind label %_ZNSt6vectorIN9benchmark4BigOESaIS1_EED2Ev.exit47.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !37

.noexc43:                                         ; preds = %.lr.ph47.i32
  %i.ea = fmul double %i.cz, %i.dz
  %i.eb = load ptr, ptr %2, align 8, !tbaa !29, !noalias !93
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.03345.i33
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !30, !noalias !93
  %i.ee = fsub double %i.ed, %i.ea
  %i.ef = tail call noundef double @pow(double noundef %i.ee, double noundef 2.000000e+00) #21, !tbaa !9, !noalias !93
  %i.eg = fadd double %.03444.i34, %i.ef          ; 2 uses
  %i.eh = add nuw i64 %.03345.i33, 1              ; 2 uses
  %i.ei = load ptr, ptr %i.k, align 8, !tbaa !20, !noalias !93 ; 2 uses
  %i.ej = load ptr, ptr %1, align 8, !tbaa !21, !noalias !93 ; 3 uses
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = ashr exact i64 %i.em, 3                 ; 2 uses
  %i.eo = icmp ult i64 %i.eh, %i.en
  br i1 %i.eo, label %.lr.ph47.i32, label %.loopexit.loopexit, !llvm.loop !1

.loopexit.loopexit:                               ; preds = %.noexc43
  %i.ep = uitofp i64 %i.en to double
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN9benchmark12FittingCurveENS_4BigOE.exit, %.loopexit.loopexit, %._crit_edge.i31
  %i.eq = phi ptr [ %i.ej, %.loopexit.loopexit ], [ %i.dq, %._crit_edge.i31 ], [ %i.cr, %_ZN9benchmark12FittingCurveENS_4BigOE.exit ]
  %i.er = phi ptr [ %i.ei, %.loopexit.loopexit ], [ %i.dp, %._crit_edge.i31 ], [ %i.cr, %_ZN9benchmark12FittingCurveENS_4BigOE.exit ]
  %.sroa.069.0 = phi double [ %i.cz, %.loopexit.loopexit ], [ %i.cz, %._crit_edge.i31 ], [ +qnan, %_ZN9benchmark12FittingCurveENS_4BigOE.exit ]
  %.032.lcssa70.i35 = phi double [ %i.dj, %.loopexit.loopexit ], [ %i.dj, %._crit_edge.i31 ], [ 0.000000e+00, %_ZN9benchmark12FittingCurveENS_4BigOE.exit ]
  %.034.lcssa.i36 = phi double [ %i.eg, %.loopexit.loopexit ], [ 0.000000e+00, %._crit_edge.i31 ], [ 0.000000e+00, %_ZN9benchmark12FittingCurveENS_4BigOE.exit ]
  %.lcssa.i37 = phi double [ %i.ep, %.loopexit.loopexit ], [ 0.000000e+00, %._crit_edge.i31 ], [ 0.000000e+00, %_ZN9benchmark12FittingCurveENS_4BigOE.exit ]
  %i.es = insertelement <2 x double> poison, double %.032.lcssa70.i35, i64 0
  %i.et = insertelement <2 x double> %i.es, double %.034.lcssa.i36, i64 1
  %i.eu = insertelement <2 x double> poison, double %.lcssa.i37, i64 0
  %i.ev = shufflevector <2 x double> %i.eu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ew = fdiv <2 x double> %i.et, %i.ev          ; 2 uses
  %i.ex = extractelement <2 x double> %i.ew, i64 1
  %i.ey = tail call double @sqrt(double noundef %i.ex) #21, !tbaa !9, !noalias !93
  %i.ez = extractelement <2 x double> %i.ew, i64 0
  %i.fa = fdiv double %i.ey, %i.ez                ; 3 uses
  %i.fb = fcmp olt double %i.fa, %i.ct
  br i1 %i.fb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit
  store double %.sroa.069.0, ptr %0, align 8, !tbaa !30
  store double %i.fa, ptr %.sroa.677.0..sroa_idx, align 8, !tbaa !30
  %i.fc = load i32, ptr %.sroa.073.0.ptr107, align 4, !tbaa !36
  store i32 %i.fc, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !25
  br label %bb.k

_ZNSt6vectorIN9benchmark4BigOESaIS1_EED2Ev.exit47.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph47.i32, %.lr.ph.i26
  %lpad.loopexit.split-lp185 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 20) #23
  resume { ptr, i32 } %lpad.loopexit.split-lp185

bb.k:                                             ; preds = %bb.j, %.loopexit
  %i.fd = phi double [ %i.fa, %bb.j ], [ %i.ct, %.loopexit ]
  %.sroa.073.0.add = add nuw nsw i64 %.sroa.073.0.idx106, 4 ; 2 uses
  %.not = icmp eq i64 %.sroa.073.0.add, 20
  br i1 %.not, label %_ZNSt6vectorIN9benchmark4BigOESaIS1_EED2Ev.exit, label %bb.i

bb.l:                                             ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit22
  br label %_ZN9benchmark12FittingCurveENS_4BigOE.exit49

bb.m:                                             ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit22
  br label %_ZN9benchmark12FittingCurveENS_4BigOE.exit49

bb.n:                                             ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit22
  br label %_ZN9benchmark12FittingCurveENS_4BigOE.exit49

bb.o:                                             ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit22
  br label %_ZN9benchmark12FittingCurveENS_4BigOE.exit49

bb.p:                                             ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit22
  br label %_ZN9benchmark12FittingCurveENS_4BigOE.exit49

_ZN9benchmark12FittingCurveENS_4BigOE.exit49:     ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit22, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.0.i48 = phi ptr [ @"_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_58__invokeEl", %bb.p ], [ @"_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_48__invokeEl", %bb.o ], [ @"_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_18__invokeEl", %bb.l ], [ @"_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_28__invokeEl", %bb.m ], [ @"_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_38__invokeEl", %bb.n ], [ @"_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_08__invokeEl", %_ZN9benchmark8internal18GetNullLogInstanceEv.exit22 ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !20, !noalias !94
  %i.fg = load ptr, ptr %1, align 8, !tbaa !21, !noalias !94 ; 2 uses
  %.not.i50 = icmp eq ptr %i.ff, %i.fg
  br i1 %.not.i50, label %_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE.exit68, label %.lr.ph.i51

._crit_edge.i56:                                  ; preds = %.lr.ph.i51
  %i.fh = extractelement <2 x double> %i.fx, i64 0
  %i.fi = extractelement <2 x double> %i.fx, i64 1
  %i.fj = fdiv double %i.fi, %i.fh                ; 3 uses
  %i.fk = icmp eq ptr %i.fz, %i.ga
  br i1 %i.fk, label %_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE.exit68, label %.lr.ph47.i57

.lr.ph.i51:                                       ; preds = %_ZN9benchmark12FittingCurveENS_4BigOE.exit49, %.lr.ph.i51
  %i.fl = phi ptr [ %i.ga, %.lr.ph.i51 ], [ %i.fg, %_ZN9benchmark12FittingCurveENS_4BigOE.exit49 ]
  %.03240.i53 = phi double [ %i.ft, %.lr.ph.i51 ], [ 0.000000e+00, %_ZN9benchmark12FittingCurveENS_4BigOE.exit49 ]
  %.03638.i55 = phi i64 [ %i.fy, %.lr.ph.i51 ], [ 0, %_ZN9benchmark12FittingCurveENS_4BigOE.exit49 ] ; 3 uses
  %i.fm = phi <2 x double> [ %i.fx, %.lr.ph.i51 ], [ zeroinitializer, %_ZN9benchmark12FittingCurveENS_4BigOE.exit49 ]
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %.03638.i55
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !26, !noalias !94
  %i.fp = tail call noundef double %.0.i48(i64 noundef %i.fo), !noalias !94, !inline_history !37
  %i.fq = load ptr, ptr %2, align 8, !tbaa !29, !noalias !94
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %.03638.i55
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !30, !noalias !94 ; 2 uses
  %i.ft = fadd double %.03240.i53, %i.fs          ; 3 uses
  %i.fu = insertelement <2 x double> poison, double %i.fp, i64 0
  %i.fv = shufflevector <2 x double> %i.fu, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fw = insertelement <2 x double> %i.fv, double %i.fs, i64 1
  %i.fx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> %i.fw, <2 x double> %i.fm) ; 3 uses
  %i.fy = add nuw i64 %.03638.i55, 1              ; 2 uses
  %i.fz = load ptr, ptr %i.fe, align 8, !tbaa !20, !noalias !94 ; 2 uses
  %i.ga = load ptr, ptr %1, align 8, !tbaa !21, !noalias !94 ; 4 uses
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = ashr exact i64 %i.gd, 3
  %i.gf = icmp ult i64 %i.fy, %i.ge
  br i1 %i.gf, label %.lr.ph.i51, label %._crit_edge.i56, !llvm.loop !0

.lr.ph47.i57:                                     ; preds = %._crit_edge.i56, %.lr.ph47.i57
  %i.gg = phi ptr [ %i.gt, %.lr.ph47.i57 ], [ %i.ga, %._crit_edge.i56 ]
  %.03345.i58 = phi i64 [ %i.gr, %.lr.ph47.i57 ], [ 0, %._crit_edge.i56 ] ; 3 uses
  %.03444.i59 = phi double [ %i.gq, %.lr.ph47.i57 ], [ 0.000000e+00, %._crit_edge.i56 ]
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.03345.i58
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !26, !noalias !94
  %i.gj = tail call noundef double %.0.i48(i64 noundef %i.gi), !noalias !94, !inline_history !37
  %i.gk = fmul double %i.fj, %i.gj
  %i.gl = load ptr, ptr %2, align 8, !tbaa !29, !noalias !94
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %.03345.i58
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !30, !noalias !94
  %i.go = fsub double %i.gn, %i.gk
  %i.gp = tail call noundef double @pow(double noundef %i.go, double noundef 2.000000e+00) #21, !tbaa !9, !noalias !94
  %i.gq = fadd double %.03444.i59, %i.gp          ; 2 uses
  %i.gr = add nuw i64 %.03345.i58, 1              ; 2 uses
  %i.gs = load ptr, ptr %i.fe, align 8, !tbaa !20, !noalias !94
  %i.gt = load ptr, ptr %1, align 8, !tbaa !21, !noalias !94 ; 2 uses
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = sub i64 %i.gu, %i.gv
  %i.gx = ashr exact i64 %i.gw, 3                 ; 2 uses
  %i.gy = icmp ult i64 %i.gr, %i.gx
  br i1 %i.gy, label %.lr.ph47.i57, label %_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE.exit68.loopexit, !llvm.loop !1

_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE.exit68.loopexit: ; preds = %.lr.ph47.i57
  %i.gz = uitofp i64 %i.gx to double
  br label %_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE.exit68

_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE.exit68: ; preds = %_ZN9benchmark12FittingCurveENS_4BigOE.exit49, %_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE.exit68.loopexit, %._crit_edge.i56
  %.sroa.0.0 = phi double [ %i.fj, %_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE.exit68.loopexit ], [ %i.fj, %._crit_edge.i56 ], [ +qnan, %_ZN9benchmark12FittingCurveENS_4BigOE.exit49 ]
  %.032.lcssa70.i60 = phi double [ %i.ft, %_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE.exit68.loopexit ], [ %i.ft, %._crit_edge.i56 ], [ 0.000000e+00, %_ZN9benchmark12FittingCurveENS_4BigOE.exit49 ]
  %.034.lcssa.i61 = phi double [ %i.gq, %_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE.exit68.loopexit ], [ 0.000000e+00, %._crit_edge.i56 ], [ 0.000000e+00, %_ZN9benchmark12FittingCurveENS_4BigOE.exit49 ]
  %.lcssa.i62 = phi double [ %i.gz, %_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE.exit68.loopexit ], [ 0.000000e+00, %._crit_edge.i56 ], [ 0.000000e+00, %_ZN9benchmark12FittingCurveENS_4BigOE.exit49 ]
  %i.ha = insertelement <2 x double> poison, double %.032.lcssa70.i60, i64 0
  %i.hb = insertelement <2 x double> %i.ha, double %.034.lcssa.i61, i64 1
  %i.hc = insertelement <2 x double> poison, double %.lcssa.i62, i64 0
  %i.hd = shufflevector <2 x double> %i.hc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.he = fdiv <2 x double> %i.hb, %i.hd          ; 2 uses
  %i.hf = extractelement <2 x double> %i.he, i64 1
  %i.hg = tail call double @sqrt(double noundef %i.hf) #21, !tbaa !9, !noalias !94
  %i.hh = extractelement <2 x double> %i.he, i64 0
  %i.hi = fdiv double %i.hg, %i.hh
  store double %.sroa.0.0, ptr %0, align 8, !tbaa !30
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.hi, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !30
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %3, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !25
  br label %bb.q

bb.q:                                             ; preds = %_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE.exit68, %_ZNSt6vectorIN9benchmark4BigOESaIS1_EED2Ev.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN9benchmark11ComputeBigOERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.23") align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 17 uses
  %3 = alloca %"class.std::vector.13", align 8    ; 16 uses
  %4 = alloca %"class.std::vector.13", align 8    ; 11 uses
  %5 = alloca %"struct.benchmark::LeastSq", align 8 ; 7 uses
  %6 = alloca %"struct.benchmark::LeastSq", align 8 ; 7 uses
  %7 = alloca %"struct.benchmark::LeastSq", align 8 ; 6 uses
  %8 = alloca %"struct.benchmark::BenchmarkName", align 8 ; 16 uses
  %9 = alloca %"struct.benchmark::BenchmarkReporter::Run", align 8 ; 36 uses
  %10 = alloca %"struct.benchmark::BenchmarkReporter::Run", align 8 ; 36 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !41     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 560
  %i.h = icmp ult i64 %i.g, 2
  br i1 %i.h, label %bb.be, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.not205 = icmp eq ptr %i.c, %i.b
  br i1 %.not205, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70
  store ptr %i.be, ptr %i.i, align 8
  store ptr %i.bc, ptr %i.j, align 8
  store ptr %i.cb, ptr %i.k, align 8
  store ptr %i.bz, ptr %i.l, align 8
  store ptr %i.cv, ptr %i.m, align 8
  store ptr %i.ct, ptr %i.n, align 8
  %.pre323 = load ptr, ptr %1, align 8, !tbaa !41
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.o = phi ptr [ %i.ct, %._crit_edge ], [ null, %bb.b ] ; 7 uses
  %i.p = phi ptr [ %i.be, %._crit_edge ], [ null, %bb.b ] ; 3 uses
  %i.q = phi ptr [ %.pre323, %._crit_edge ], [ %i.c, %bb.b ] ; 3 uses
  %i.r = phi ptr [ %i.cu, %._crit_edge ], [ null, %bb.b ] ; 12 uses
  %i.s = phi ptr [ %i.ca, %._crit_edge ], [ null, %bb.b ] ; 9 uses
  %i.t = phi ptr [ %i.bd, %._crit_edge ], [ null, %bb.b ] ; 8 uses
  store ptr %i.t, ptr %2, align 8
  store ptr %i.s, ptr %3, align 8
  store ptr %i.r, ptr %4, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 460
  %i.v = load i32, ptr %i.u, align 4, !tbaa !99   ; 3 uses
  %i.w = icmp eq i32 %i.v, 8
  br i1 %i.w, label %bb.u, label %bb.v

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70
  %i.x = phi ptr [ null, %.lr.ph ], [ %i.ct, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 8 uses
  %i.y = phi ptr [ null, %.lr.ph ], [ %i.cv, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 6 uses
  %i.z = phi ptr [ null, %.lr.ph ], [ %i.bz, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 7 uses
  %i.aa = phi ptr [ null, %.lr.ph ], [ %i.cb, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 7 uses
  %i.ab = phi ptr [ null, %.lr.ph ], [ %i.bc, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 6 uses
  %i.ac = phi ptr [ null, %.lr.ph ], [ %i.be, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 6 uses
  %.sroa.0164.0206 = phi ptr [ %i.c, %.lr.ph ], [ %i.cw, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 5 uses
  %i.ad = phi ptr [ null, %.lr.ph ], [ %i.bd, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 8 uses
  %i.ae = phi ptr [ null, %.lr.ph ], [ %i.ca, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 10 uses
  %i.af = phi ptr [ null, %.lr.ph ], [ %i.cu, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 10 uses
  %i.ag = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.e, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, !prof !32

bb.e:                                             ; preds = %bb.d
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #21
end_hunk_0
