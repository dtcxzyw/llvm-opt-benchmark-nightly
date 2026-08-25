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
  br i1 %i.h, label %bb.f, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit22, !prof !34

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
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16, !noalias !38 ; 3 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !19, !noalias !38 ; 3 uses
  %.not.i23 = icmp eq ptr %i.l, %i.m
  br i1 %.not.i23, label %.loopexit86, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.h
  %i.n = load ptr, ptr %2, align 8, !tbaa !26, !noalias !38 ; 10 uses
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
  %lcmp.mod253 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod253)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.03539.i.epil = phi double [ %i.y, %.lr.ph.i.epil ], [ %.03539.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.03638.i.epil = phi i64 [ %i.z, %.lr.ph.i.epil ], [ %.03638.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %i.t = phi <2 x double> [ %i.x, %.lr.ph.i.epil ], [ %.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.03638.i.epil
  %i.v = load double, ptr %i.u, align 8, !tbaa !29, !noalias !38 ; 2 uses
  %i.w = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.v, i64 1
  %i.x = fadd <2 x double> %i.t, %i.w             ; 2 uses
  %i.y = fadd double %.03539.i.epil, %i.v         ; 2 uses
  %i.z = add nuw i64 %.03638.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !41

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil, %._crit_edge.i.unr-lcssa
  %.lcssa250 = phi <2 x double> [ %i.az, %._crit_edge.i.unr-lcssa ], [ %i.x, %.lr.ph.i.epil ] ; 2 uses
  %.lcssa249 = phi double [ %i.ba, %._crit_edge.i.unr-lcssa ], [ %i.y, %.lr.ph.i.epil ]
  %i.aa = extractelement <2 x double> %.lcssa250, i64 0
  %i.ab = fdiv double %.lcssa249, %i.aa           ; 6 uses
  %xtraiter254 = and i64 %i.r, 3                  ; 3 uses
  %i.ac = icmp ult i64 %i.r, 4
  br i1 %i.ac, label %.lr.ph47.i.epil.preheader, label %._crit_edge.i.new

._crit_edge.i.new:                                ; preds = %._crit_edge.i
  %unroll_iter259 = and i64 %i.r, -4
  br label %.lr.ph47.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.03539.i = phi double [ 0.000000e+00, %.lr.ph.i.preheader.new ], [ %i.ba, %.lr.ph.i ]
  %.03638.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.bb, %.lr.ph.i ] ; 5 uses
  %i.ad = phi <2 x double> [ zeroinitializer, %.lr.ph.i.preheader.new ], [ %i.az, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.03638.i
  %i.af = load double, ptr %i.ae, align 8, !tbaa !29, !noalias !38 ; 2 uses
  %i.ag = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.af, i64 1
  %i.ah = fadd <2 x double> %i.ad, %i.ag
  %i.ai = fadd double %.03539.i, %i.af
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.03638.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load double, ptr %i.ak, align 8, !tbaa !29, !noalias !38 ; 2 uses
  %i.am = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.al, i64 1
  %i.an = fadd <2 x double> %i.ah, %i.am
  %i.ao = fadd double %i.ai, %i.al
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.03638.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !29, !noalias !38 ; 2 uses
  %i.as = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.ar, i64 1
  %i.at = fadd <2 x double> %i.an, %i.as
  %i.au = fadd double %i.ao, %i.ar
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.03638.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !29, !noalias !38 ; 2 uses
  %i.ay = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.ax, i64 1
  %i.az = fadd <2 x double> %i.at, %i.ay          ; 3 uses
  %i.ba = fadd double %i.au, %i.ax                ; 3 uses
  %i.bb = add nuw i64 %.03638.i, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !30

.lr.ph47.i:                                       ; preds = %.lr.ph47.i, %._crit_edge.i.new
  %.03345.i = phi i64 [ 0, %._crit_edge.i.new ], [ %i.bz, %.lr.ph47.i ] ; 5 uses
  %.03444.i = phi double [ 0.000000e+00, %._crit_edge.i.new ], [ %i.by, %.lr.ph47.i ]
  %niter260 = phi i64 [ 0, %._crit_edge.i.new ], [ %niter260.next.3, %.lr.ph47.i ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.03345.i
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !29, !noalias !38
  %i.be = fsub double %i.bd, %i.ab
  %i.bf = tail call noundef double @pow(double noundef %i.be, double noundef 2.000000e+00) #21, !tbaa !4, !noalias !38
  %i.bg = fadd double %.03444.i, %i.bf
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.03345.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !29, !noalias !38
  %i.bk = fsub double %i.bj, %i.ab
  %i.bl = tail call noundef double @pow(double noundef %i.bk, double noundef 2.000000e+00) #21, !tbaa !4, !noalias !38
  %i.bm = fadd double %i.bg, %i.bl
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.03345.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !29, !noalias !38
  %i.bq = fsub double %i.bp, %i.ab
  %i.br = tail call noundef double @pow(double noundef %i.bq, double noundef 2.000000e+00) #21, !tbaa !4, !noalias !38
  %i.bs = fadd double %i.bm, %i.br
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.03345.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !29, !noalias !38
  %i.bw = fsub double %i.bv, %i.ab
  %i.bx = tail call noundef double @pow(double noundef %i.bw, double noundef 2.000000e+00) #21, !tbaa !4, !noalias !38
  %i.by = fadd double %i.bs, %i.bx                ; 3 uses
  %i.bz = add nuw i64 %.03345.i, 4                ; 2 uses
  %niter260.next.3 = add i64 %niter260, 4         ; 2 uses
  %niter260.ncmp.3 = icmp eq i64 %niter260.next.3, %unroll_iter259
  br i1 %niter260.ncmp.3, label %.loopexit86.loopexit.unr-lcssa, label %.lr.ph47.i, !llvm.loop !33

.loopexit86.loopexit.unr-lcssa:                   ; preds = %.lr.ph47.i
  %lcmp.mod256.not = icmp eq i64 %xtraiter254, 0
  br i1 %lcmp.mod256.not, label %.loopexit86.loopexit, label %.lr.ph47.i.epil.preheader

.lr.ph47.i.epil.preheader:                        ; preds = %.loopexit86.loopexit.unr-lcssa, %._crit_edge.i
  %.03345.i.epil.init = phi i64 [ 0, %._crit_edge.i ], [ %i.bz, %.loopexit86.loopexit.unr-lcssa ]
  %.03444.i.epil.init = phi double [ 0.000000e+00, %._crit_edge.i ], [ %i.by, %.loopexit86.loopexit.unr-lcssa ]
  %lcmp.mod258 = icmp ne i64 %xtraiter254, 0
  tail call void @llvm.assume(i1 %lcmp.mod258)
  br label %.lr.ph47.i.epil

.lr.ph47.i.epil:                                  ; preds = %.lr.ph47.i.epil, %.lr.ph47.i.epil.preheader
  %.03345.i.epil = phi i64 [ %i.cf, %.lr.ph47.i.epil ], [ %.03345.i.epil.init, %.lr.ph47.i.epil.preheader ] ; 2 uses
  %.03444.i.epil = phi double [ %i.ce, %.lr.ph47.i.epil ], [ %.03444.i.epil.init, %.lr.ph47.i.epil.preheader ]
  %epil.iter255 = phi i64 [ %epil.iter255.next, %.lr.ph47.i.epil ], [ 0, %.lr.ph47.i.epil.preheader ]
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.03345.i.epil
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !29, !noalias !38
  %i.cc = fsub double %i.cb, %i.ab
  %i.cd = tail call noundef double @pow(double noundef %i.cc, double noundef 2.000000e+00) #21, !tbaa !4, !noalias !38
  %i.ce = fadd double %.03444.i.epil, %i.cd       ; 2 uses
  %i.cf = add nuw i64 %.03345.i.epil, 1
  %epil.iter255.next = add i64 %epil.iter255, 1   ; 2 uses
  %epil.iter255.cmp.not = icmp eq i64 %epil.iter255.next, %xtraiter254
  br i1 %epil.iter255.cmp.not, label %.loopexit86.loopexit, label %.lr.ph47.i.epil, !llvm.loop !43

.loopexit86.loopexit:                             ; preds = %.lr.ph47.i.epil, %.loopexit86.loopexit.unr-lcssa
  %.lcssa248 = phi double [ %i.by, %.loopexit86.loopexit.unr-lcssa ], [ %i.ce, %.lr.ph47.i.epil ]
  %i.cg = uitofp i64 %i.r to double
  %i.ch = shufflevector <2 x double> %.lcssa250, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ci = insertelement <2 x double> %i.ch, double %.lcssa248, i64 1
  br label %.loopexit86

.loopexit86:                                      ; preds = %bb.h, %.loopexit86.loopexit
  %.sroa.076.0 = phi double [ %i.ab, %.loopexit86.loopexit ], [ +qnan, %bb.h ]
  %.lcssa.i = phi double [ %i.cg, %.loopexit86.loopexit ], [ 0.000000e+00, %bb.h ]
  %i.cj = phi <2 x double> [ %i.ci, %.loopexit86.loopexit ], [ zeroinitializer, %bb.h ]
  %i.ck = insertelement <2 x double> poison, double %.lcssa.i, i64 0
  %i.cl = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cm = fdiv <2 x double> %i.cj, %i.cl          ; 2 uses
  %i.cn = extractelement <2 x double> %i.cm, i64 1
  %i.co = tail call double @sqrt(double noundef %i.cn) #21, !tbaa !4, !noalias !38
  %i.cp = extractelement <2 x double> %i.cm, i64 0
  %i.cq = fdiv double %i.co, %i.cp
  %.sroa.677.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.i

_ZNSt6vectorIN9benchmark4BigOESaIS1_EED2Ev.exit:  ; preds = %bb.k
  store double %i.fc, ptr %.sroa.677.0..sroa_idx, align 8
  store double %.sroa.069.0109, ptr %0, align 8
  store i32 %6, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 20) #23
  br label %bb.q

bb.i:                                             ; preds = %.loopexit86, %bb.k
  %i.cr = phi ptr [ %i.m, %.loopexit86 ], [ %i.ep, %bb.k ] ; 4 uses
  %i.cs = phi ptr [ %i.l, %.loopexit86 ], [ %i.eq, %bb.k ]
  %.sroa.073.0.idx117 = phi i64 [ 0, %.loopexit86 ], [ %.sroa.073.0.add, %bb.k ] ; 2 uses
  %4 = phi double [ %i.cq, %.loopexit86 ], [ %i.fc, %bb.k ] ; 3 uses
  %.sroa.069.0110116 = phi double [ %.sroa.076.0, %.loopexit86 ], [ %.sroa.069.0109, %bb.k ] ; 2 uses
  %5 = phi i32 [ 1, %.loopexit86 ], [ %6, %bb.k ] ; 2 uses
  %.sroa.073.0.ptr118 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.073.0.idx117 ; 2 uses
  %i.ct = load i32, ptr %.sroa.073.0.ptr118, align 4, !tbaa !44
  %switch.tableidx = add i32 %i.ct, -2            ; 2 uses
  %i.cu = icmp ult i32 %switch.tableidx, 5
  br i1 %i.cu, label %switch.lookup, label %_ZN9benchmark12FittingCurveENS_4BigOE.exit

switch.lookup:                                    ; preds = %bb.i
  %i.cv = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEENS_4BigOE, i64 %i.cv
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN9benchmark12FittingCurveENS_4BigOE.exit

_ZN9benchmark12FittingCurveENS_4BigOE.exit:       ; preds = %bb.i, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @"_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_58__invokeEl", %bb.i ] ; 2 uses
  %.not.i25 = icmp eq ptr %i.cs, %i.cr
  br i1 %.not.i25, label %.loopexit, label %.lr.ph.i26

._crit_edge.i31:                                  ; preds = %.noexc
  %i.cw = extractelement <2 x double> %i.dm, i64 0
  %i.cx = extractelement <2 x double> %i.dm, i64 1
  %i.cy = fdiv double %i.cx, %i.cw                ; 3 uses
  %i.cz = icmp eq ptr %i.do, %i.dp
  br i1 %i.cz, label %.loopexit, label %.lr.ph47.i32

.lr.ph.i26:                                       ; preds = %_ZN9benchmark12FittingCurveENS_4BigOE.exit, %.noexc
  %i.da = phi ptr [ %i.dp, %.noexc ], [ %i.cr, %_ZN9benchmark12FittingCurveENS_4BigOE.exit ]
  %.03240.i28 = phi double [ %i.di, %.noexc ], [ 0.000000e+00, %_ZN9benchmark12FittingCurveENS_4BigOE.exit ]
  %.03638.i30 = phi i64 [ %i.dn, %.noexc ], [ 0, %_ZN9benchmark12FittingCurveENS_4BigOE.exit ] ; 3 uses
  %i.db = phi <2 x double> [ %i.dm, %.noexc ], [ zeroinitializer, %_ZN9benchmark12FittingCurveENS_4BigOE.exit ]
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %.03638.i30
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !25, !noalias !45
  %i.de = invoke noundef double %.0.i(i64 noundef %i.dd)
          to label %.noexc unwind label %_ZNSt6vectorIN9benchmark4BigOESaIS1_EED2Ev.exit47.loopexit.split-lp, !inline_history !48

.noexc:                                           ; preds = %.lr.ph.i26
  %i.df = load ptr, ptr %2, align 8, !tbaa !26, !noalias !45
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.03638.i30
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !29, !noalias !45 ; 2 uses
  %i.di = fadd double %.03240.i28, %i.dh          ; 3 uses
  %i.dj = insertelement <2 x double> poison, double %i.de, i64 0 ; 2 uses
  %i.dk = insertelement <2 x double> %i.dj, double %i.dh, i64 1
  %i.dl = shufflevector <2 x double> %i.dj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> %i.dl, <2 x double> %i.db) ; 3 uses
  %i.dn = add nuw i64 %.03638.i30, 1              ; 2 uses
  %i.do = load ptr, ptr %i.k, align 8, !tbaa !16, !noalias !45 ; 3 uses
  %i.dp = load ptr, ptr %1, align 8, !tbaa !19, !noalias !45 ; 5 uses
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = ashr exact i64 %i.ds, 3
  %i.du = icmp ult i64 %i.dn, %i.dt
  br i1 %i.du, label %.lr.ph.i26, label %._crit_edge.i31, !llvm.loop !30

.lr.ph47.i32:                                     ; preds = %._crit_edge.i31, %.noexc43
  %i.dv = phi ptr [ %i.ei, %.noexc43 ], [ %i.dp, %._crit_edge.i31 ]
  %.03345.i33 = phi i64 [ %i.eg, %.noexc43 ], [ 0, %._crit_edge.i31 ] ; 3 uses
  %.03444.i34 = phi double [ %i.ef, %.noexc43 ], [ 0.000000e+00, %._crit_edge.i31 ]
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.03345.i33
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !25, !noalias !45
  %i.dy = invoke noundef double %.0.i(i64 noundef %i.dx)
          to label %.noexc43 unwind label %_ZNSt6vectorIN9benchmark4BigOESaIS1_EED2Ev.exit47.loopexit, !inline_history !48

.noexc43:                                         ; preds = %.lr.ph47.i32
  %i.dz = fmul double %i.cy, %i.dy
  %i.ea = load ptr, ptr %2, align 8, !tbaa !26, !noalias !45
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.03345.i33
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !29, !noalias !45
  %i.ed = fsub double %i.ec, %i.dz
  %i.ee = tail call noundef double @pow(double noundef %i.ed, double noundef 2.000000e+00) #21, !tbaa !4, !noalias !45
  %i.ef = fadd double %.03444.i34, %i.ee          ; 2 uses
  %i.eg = add nuw i64 %.03345.i33, 1              ; 2 uses
  %i.eh = load ptr, ptr %i.k, align 8, !tbaa !16, !noalias !45 ; 2 uses
  %i.ei = load ptr, ptr %1, align 8, !tbaa !19, !noalias !45 ; 3 uses
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = ashr exact i64 %i.el, 3                 ; 2 uses
  %i.en = icmp ult i64 %i.eg, %i.em
  br i1 %i.en, label %.lr.ph47.i32, label %.loopexit.loopexit, !llvm.loop !33

.loopexit.loopexit:                               ; preds = %.noexc43
  %i.eo = uitofp i64 %i.em to double
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN9benchmark12FittingCurveENS_4BigOE.exit, %.loopexit.loopexit, %._crit_edge.i31
  %i.ep = phi ptr [ %i.ei, %.loopexit.loopexit ], [ %i.dp, %._crit_edge.i31 ], [ %i.cr, %_ZN9benchmark12FittingCurveENS_4BigOE.exit ]
  %i.eq = phi ptr [ %i.eh, %.loopexit.loopexit ], [ %i.do, %._crit_edge.i31 ], [ %i.cr, %_ZN9benchmark12FittingCurveENS_4BigOE.exit ]
  %.sroa.069.0 = phi double [ %i.cy, %.loopexit.loopexit ], [ %i.cy, %._crit_edge.i31 ], [ +qnan, %_ZN9benchmark12FittingCurveENS_4BigOE.exit ]
  %.032.lcssa70.i35 = phi double [ %i.di, %.loopexit.loopexit ], [ %i.di, %._crit_edge.i31 ], [ 0.000000e+00, %_ZN9benchmark12FittingCurveENS_4BigOE.exit ]
  %.034.lcssa.i36 = phi double [ %i.ef, %.loopexit.loopexit ], [ 0.000000e+00, %._crit_edge.i31 ], [ 0.000000e+00, %_ZN9benchmark12FittingCurveENS_4BigOE.exit ]
  %.lcssa.i37 = phi double [ %i.eo, %.loopexit.loopexit ], [ 0.000000e+00, %._crit_edge.i31 ], [ 0.000000e+00, %_ZN9benchmark12FittingCurveENS_4BigOE.exit ]
  %i.er = insertelement <2 x double> poison, double %.032.lcssa70.i35, i64 0
  %i.es = insertelement <2 x double> %i.er, double %.034.lcssa.i36, i64 1
  %i.et = insertelement <2 x double> poison, double %.lcssa.i37, i64 0
  %i.eu = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ev = fdiv <2 x double> %i.es, %i.eu          ; 2 uses
  %i.ew = extractelement <2 x double> %i.ev, i64 1
  %i.ex = tail call double @sqrt(double noundef %i.ew) #21, !tbaa !4, !noalias !45
  %i.ey = extractelement <2 x double> %i.ev, i64 0
  %i.ez = fdiv double %i.ex, %i.ey                ; 2 uses
  %i.fa = fcmp olt double %i.ez, %4
  br i1 %i.fa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit
  %i.fb = load i32, ptr %.sroa.073.0.ptr118, align 4, !tbaa !44
  br label %bb.k

_ZNSt6vectorIN9benchmark4BigOESaIS1_EED2Ev.exit47.loopexit: ; preds = %.lr.ph47.i32
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN9benchmark4BigOESaIS1_EED2Ev.exit47

_ZNSt6vectorIN9benchmark4BigOESaIS1_EED2Ev.exit47.loopexit.split-lp: ; preds = %.lr.ph.i26
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN9benchmark4BigOESaIS1_EED2Ev.exit47

_ZNSt6vectorIN9benchmark4BigOESaIS1_EED2Ev.exit47: ; preds = %_ZNSt6vectorIN9benchmark4BigOESaIS1_EED2Ev.exit47.loopexit.split-lp, %_ZNSt6vectorIN9benchmark4BigOESaIS1_EED2Ev.exit47.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %_ZNSt6vectorIN9benchmark4BigOESaIS1_EED2Ev.exit47.loopexit.split-lp ], [ %lpad.loopexit, %_ZNSt6vectorIN9benchmark4BigOESaIS1_EED2Ev.exit47.loopexit ]
  store double %4, ptr %.sroa.677.0..sroa_idx, align 8
  store double %.sroa.069.0110116, ptr %0, align 8
  store i32 %5, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 20) #23
  resume { ptr, i32 } %lpad.phi

bb.k:                                             ; preds = %bb.j, %.loopexit
  %6 = phi i32 [ %i.fb, %bb.j ], [ %5, %.loopexit ] ; 2 uses
  %.sroa.069.0109 = phi double [ %.sroa.069.0, %bb.j ], [ %.sroa.069.0110116, %.loopexit ] ; 2 uses
  %i.fc = phi double [ %i.ez, %bb.j ], [ %4, %.loopexit ] ; 2 uses
  %.sroa.073.0.add = add nuw nsw i64 %.sroa.073.0.idx117, 4 ; 2 uses
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
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !16, !noalias !49
  %i.ff = load ptr, ptr %1, align 8, !tbaa !19, !noalias !49 ; 2 uses
  %.not.i50 = icmp eq ptr %i.fe, %i.ff
  br i1 %.not.i50, label %_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE.exit68, label %.lr.ph.i51

._crit_edge.i56:                                  ; preds = %.lr.ph.i51
  %i.fg = extractelement <2 x double> %i.fw, i64 0
  %i.fh = extractelement <2 x double> %i.fw, i64 1
  %i.fi = fdiv double %i.fh, %i.fg                ; 3 uses
  %i.fj = icmp eq ptr %i.fy, %i.fz
  br i1 %i.fj, label %_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE.exit68, label %.lr.ph47.i57

.lr.ph.i51:                                       ; preds = %_ZN9benchmark12FittingCurveENS_4BigOE.exit49, %.lr.ph.i51
  %i.fk = phi ptr [ %i.fz, %.lr.ph.i51 ], [ %i.ff, %_ZN9benchmark12FittingCurveENS_4BigOE.exit49 ]
  %.03240.i53 = phi double [ %i.fs, %.lr.ph.i51 ], [ 0.000000e+00, %_ZN9benchmark12FittingCurveENS_4BigOE.exit49 ]
  %.03638.i55 = phi i64 [ %i.fx, %.lr.ph.i51 ], [ 0, %_ZN9benchmark12FittingCurveENS_4BigOE.exit49 ] ; 3 uses
  %i.fl = phi <2 x double> [ %i.fw, %.lr.ph.i51 ], [ zeroinitializer, %_ZN9benchmark12FittingCurveENS_4BigOE.exit49 ]
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %.03638.i55
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !25, !noalias !49
  %i.fo = tail call noundef double %.0.i48(i64 noundef %i.fn), !noalias !49, !inline_history !48
  %i.fp = load ptr, ptr %2, align 8, !tbaa !26, !noalias !49
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %.03638.i55
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !29, !noalias !49 ; 2 uses
  %i.fs = fadd double %.03240.i53, %i.fr          ; 3 uses
  %i.ft = insertelement <2 x double> poison, double %i.fo, i64 0
  %i.fu = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fv = insertelement <2 x double> %i.fu, double %i.fr, i64 1
  %i.fw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fu, <2 x double> %i.fv, <2 x double> %i.fl) ; 3 uses
  %i.fx = add nuw i64 %.03638.i55, 1              ; 2 uses
  %i.fy = load ptr, ptr %i.fd, align 8, !tbaa !16, !noalias !49 ; 2 uses
  %i.fz = load ptr, ptr %1, align 8, !tbaa !19, !noalias !49 ; 4 uses
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = ashr exact i64 %i.gc, 3
  %i.ge = icmp ult i64 %i.fx, %i.gd
  br i1 %i.ge, label %.lr.ph.i51, label %._crit_edge.i56, !llvm.loop !30

.lr.ph47.i57:                                     ; preds = %._crit_edge.i56, %.lr.ph47.i57
  %i.gf = phi ptr [ %i.gs, %.lr.ph47.i57 ], [ %i.fz, %._crit_edge.i56 ]
  %.03345.i58 = phi i64 [ %i.gq, %.lr.ph47.i57 ], [ 0, %._crit_edge.i56 ] ; 3 uses
  %.03444.i59 = phi double [ %i.gp, %.lr.ph47.i57 ], [ 0.000000e+00, %._crit_edge.i56 ]
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %.03345.i58
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !25, !noalias !49
  %i.gi = tail call noundef double %.0.i48(i64 noundef %i.gh), !noalias !49, !inline_history !48
  %i.gj = fmul double %i.fi, %i.gi
  %i.gk = load ptr, ptr %2, align 8, !tbaa !26, !noalias !49
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %.03345.i58
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !29, !noalias !49
  %i.gn = fsub double %i.gm, %i.gj
  %i.go = tail call noundef double @pow(double noundef %i.gn, double noundef 2.000000e+00) #21, !tbaa !4, !noalias !49
  %i.gp = fadd double %.03444.i59, %i.go          ; 2 uses
  %i.gq = add nuw i64 %.03345.i58, 1              ; 2 uses
  %i.gr = load ptr, ptr %i.fd, align 8, !tbaa !16, !noalias !49
  %i.gs = load ptr, ptr %1, align 8, !tbaa !19, !noalias !49 ; 2 uses
  %i.gt = ptrtoint ptr %i.gr to i64
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = sub i64 %i.gt, %i.gu
  %i.gw = ashr exact i64 %i.gv, 3                 ; 2 uses
  %i.gx = icmp ult i64 %i.gq, %i.gw
  br i1 %i.gx, label %.lr.ph47.i57, label %_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE.exit68.loopexit, !llvm.loop !33

_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE.exit68.loopexit: ; preds = %.lr.ph47.i57
  %i.gy = uitofp i64 %i.gw to double
  br label %_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE.exit68

_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE.exit68: ; preds = %_ZN9benchmark12FittingCurveENS_4BigOE.exit49, %_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE.exit68.loopexit, %._crit_edge.i56
  %.sroa.0.0 = phi double [ %i.fi, %_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE.exit68.loopexit ], [ %i.fi, %._crit_edge.i56 ], [ +qnan, %_ZN9benchmark12FittingCurveENS_4BigOE.exit49 ]
  %.032.lcssa70.i60 = phi double [ %i.fs, %_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE.exit68.loopexit ], [ %i.fs, %._crit_edge.i56 ], [ 0.000000e+00, %_ZN9benchmark12FittingCurveENS_4BigOE.exit49 ]
  %.034.lcssa.i61 = phi double [ %i.gp, %_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE.exit68.loopexit ], [ 0.000000e+00, %._crit_edge.i56 ], [ 0.000000e+00, %_ZN9benchmark12FittingCurveENS_4BigOE.exit49 ]
  %.lcssa.i62 = phi double [ %i.gy, %_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE.exit68.loopexit ], [ 0.000000e+00, %._crit_edge.i56 ], [ 0.000000e+00, %_ZN9benchmark12FittingCurveENS_4BigOE.exit49 ]
  %i.gz = insertelement <2 x double> poison, double %.032.lcssa70.i60, i64 0
  %i.ha = insertelement <2 x double> %i.gz, double %.034.lcssa.i61, i64 1
  %i.hb = insertelement <2 x double> poison, double %.lcssa.i62, i64 0
  %i.hc = shufflevector <2 x double> %i.hb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hd = fdiv <2 x double> %i.ha, %i.hc          ; 2 uses
  %i.he = extractelement <2 x double> %i.hd, i64 1
  %i.hf = tail call double @sqrt(double noundef %i.he) #21, !tbaa !4, !noalias !49
  %i.hg = extractelement <2 x double> %i.hd, i64 0
  %i.hh = fdiv double %i.hf, %i.hg
  store double %.sroa.0.0, ptr %0, align 8, !tbaa !29
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.hh, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !29
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %3, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !20
  br label %bb.q

bb.q:                                             ; preds = %_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE.exit68, %_ZNSt6vectorIN9benchmark4BigOESaIS1_EED2Ev.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN9benchmark11ComputeBigOERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.23") align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 20 uses
  %3 = alloca %"class.std::vector.13", align 8    ; 19 uses
  %4 = alloca %"class.std::vector.13", align 8    ; 14 uses
  %5 = alloca %"struct.benchmark::LeastSq", align 8 ; 7 uses
  %6 = alloca %"struct.benchmark::LeastSq", align 8 ; 7 uses
  %7 = alloca %"struct.benchmark::LeastSq", align 8 ; 6 uses
  %8 = alloca %"struct.benchmark::BenchmarkName", align 8 ; 16 uses
  %9 = alloca %"struct.benchmark::BenchmarkReporter::Run", align 8 ; 36 uses
  %10 = alloca %"struct.benchmark::BenchmarkReporter::Run", align 8 ; 36 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !55     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 560
  %i.h = icmp ult i64 %i.g, 2
  br i1 %i.h, label %bb.bh, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.not223 = icmp eq ptr %i.c, %i.b
  br i1 %.not223, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70
  store ptr %i.be, ptr %i.i, align 8
  store ptr %i.bc, ptr %i.j, align 8
  store ptr %i.cb, ptr %i.k, align 8
  store ptr %i.bz, ptr %i.l, align 8
  store ptr %i.cv, ptr %i.m, align 8
  store ptr %i.ct, ptr %i.n, align 8
  %.pre378 = load ptr, ptr %1, align 8, !tbaa !55
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.o = phi ptr [ %i.ct, %._crit_edge ], [ null, %bb.b ] ; 9 uses
  %i.p = phi ptr [ %i.be, %._crit_edge ], [ null, %bb.b ] ; 3 uses
  %i.q = phi ptr [ %.pre378, %._crit_edge ], [ %i.c, %bb.b ] ; 3 uses
  %i.r = phi ptr [ %i.cu, %._crit_edge ], [ null, %bb.b ] ; 14 uses
  %i.s = phi ptr [ %i.ca, %._crit_edge ], [ null, %bb.b ] ; 11 uses
  %i.t = phi ptr [ %i.bd, %._crit_edge ], [ null, %bb.b ] ; 8 uses
  store ptr %i.t, ptr %2, align 8
  store ptr %i.s, ptr %3, align 8
  store ptr %i.r, ptr %4, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 460
  %i.v = load i32, ptr %i.u, align 4, !tbaa !56   ; 3 uses
  %i.w = icmp eq i32 %i.v, 8
  br i1 %i.w, label %bb.w, label %bb.x

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70
  %i.x = phi ptr [ null, %.lr.ph ], [ %i.ct, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 15 uses
  %i.y = phi ptr [ null, %.lr.ph ], [ %i.cv, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 9 uses
  %i.z = phi ptr [ null, %.lr.ph ], [ %i.bz, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 7 uses
  %i.aa = phi ptr [ null, %.lr.ph ], [ %i.cb, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 7 uses
  %i.ab = phi ptr [ null, %.lr.ph ], [ %i.bc, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 5 uses
  %i.ac = phi ptr [ null, %.lr.ph ], [ %i.be, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 5 uses
  %.sroa.0164.0224 = phi ptr [ %i.c, %.lr.ph ], [ %i.cw, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 5 uses
  %i.ad = phi ptr [ null, %.lr.ph ], [ %i.bd, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 7 uses
  %i.ae = phi ptr [ null, %.lr.ph ], [ %i.ca, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 13 uses
  %i.af = phi ptr [ null, %.lr.ph ], [ %i.cu, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 17 uses
  %i.ag = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.e, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, !prof !34

bb.e:                                             ; preds = %bb.d
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #21
end_hunk_0
