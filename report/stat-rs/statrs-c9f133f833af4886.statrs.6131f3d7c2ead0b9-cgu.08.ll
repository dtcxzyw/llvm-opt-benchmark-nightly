Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stat-rs/original/statrs-c9f133f833af4886.statrs.6131f3d7c2ead0b9-cgu.08?download=true
inline.NumInlined: 297
inline.NumDeleted: 118
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution8internal23newton_raphson_quantileNCNvXs3_NtB4_13inverse_gammaNtB1l_12InverseGammaINtB4_13ContinuousCDFddE11inverse_cdf0NCB1f_s_0NCB1f_s0_0EB6_:bb.a
  %.sroa.023.2..sroa.09.0 = select i1 %i.av, double %.sroa.023.263, double %.sroa.09.065 ; 3 uses
  %i.aw = tail call double @llvm.fabs.f64(double %i.ao)
  %i.ax = fcmp ueq double %i.aw, +inf
  %i.ay = fcmp ule double %i.ao, %.sroa.09.0..sroa.030.2
  %or.cond.not54 = select i1 %i.ax, i1 true, i1 %i.ay
  %i.az = fcmp uge double %i.ao, %.sroa.023.2..sroa.09.0
  %or.cond42.not51 = select i1 %or.cond.not54, i1 true, i1 %i.az
  %i.ba = fmul double %i.aq, 2.000000e+00
  %i.bb = fcmp ugt double %i.ba, %.sroa.019.064
  %or.cond44 = select i1 %or.cond42.not51, i1 true, i1 %i.bb ; 2 uses
  %i.bc = fsub double %.sroa.023.2..sroa.09.0, %.sroa.09.0..sroa.030.2
  %i.bd = fmul double %i.bc, 5.000000e-01         ; 2 uses
  %i.be = fadd double %.sroa.09.0..sroa.030.2, %i.bd
  %.sroa.019.1 = select i1 %or.cond44, double %i.bd, double %i.aq
  %.sroa.09.1 = select i1 %or.cond44, double %i.be, double %i.ao ; 2 uses
  %exitcond.not = icmp eq i64 %i.au, 100
  br i1 %exitcond.not, label %.split67.us, label %.split
}

; Function Attrs: nonlazybind uwtable
define hidden noundef double @_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution8internal23newton_raphson_quantileNCNvXs3_NtB4_3chiNtB1l_3ChiINtB4_13ContinuousCDFddE11inverse_cdf0NCB1f_s_0NCB1f_s0_0EB6_(double noundef %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution3chiNtB5_3ChiINtB7_13ContinuousCDFddE3cdf(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, double noundef 1.000000e+00)
  %i.b = fcmp ogt double %i.a, %0
  br i1 %i.b, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.sroa.030.0.lcssa = phi double [ 1.000000e+00, %bb.a ], [ %i.e, %.lr.ph ]
  %.sroa.023.0.lcssa = phi double [ 2.000000e+00, %bb.a ], [ %.sroa.030.055, %.lr.ph ] ; 3 uses
  %i.c = tail call noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution3chiNtB5_3ChiINtB7_13ContinuousCDFddE3cdf(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, double noundef %.sroa.023.0.lcssa)
  %i.d = fcmp olt double %i.c, %0
  br i1 %i.d, label %.lr.ph58, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.030.055 = phi double [ %i.e, %.lr.ph ], [ 1.000000e+00, %bb.a ] ; 2 uses
  %i.e = fmul double %.sroa.030.055, 5.000000e-01 ; 3 uses
  %i.f = tail call noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution3chiNtB5_3ChiINtB7_13ContinuousCDFddE3cdf(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, double noundef %i.e)
  %i.g = fcmp ogt double %i.f, %0
  br i1 %i.g, label %.lr.ph, label %.preheader

._crit_edge:                                      ; preds = %.lr.ph58, %.preheader
  %.sroa.030.1.lcssa = phi double [ %.sroa.030.0.lcssa, %.preheader ], [ %.sroa.023.157, %.lr.ph58 ] ; 4 uses
  %.sroa.023.1.lcssa = phi double [ %.sroa.023.0.lcssa, %.preheader ], [ %i.ah, %.lr.ph58 ] ; 4 uses
  %i.h = fcmp ogt double %0, 5.000000e-01
  %i.i = fsub double 1.000000e+00, %0
  %i.j = fadd double %.sroa.030.1.lcssa, %.sroa.023.1.lcssa
  %i.k = fmul double %i.j, 5.000000e-01           ; 2 uses
  %i.l = fsub double %.sroa.023.1.lcssa, %.sroa.030.1.lcssa ; 2 uses
  br i1 %i.h, label %.split.us, label %.split

.split.us:                                        ; preds = %._crit_edge, %bb.b
  %.sroa.09.065.us = phi double [ %.sroa.09.1.us, %bb.b ], [ %i.k, %._crit_edge ] ; 7 uses
  %.sroa.019.064.us = phi double [ %.sroa.019.1.us, %bb.b ], [ %i.l, %._crit_edge ]
  %.sroa.023.263.us = phi double [ %.sroa.023.2..sroa.09.0.us, %bb.b ], [ %.sroa.023.1.lcssa, %._crit_edge ]
  %.sroa.030.262.us = phi double [ %.sroa.09.0..sroa.030.2.us, %bb.b ], [ %.sroa.030.1.lcssa, %._crit_edge ]
  %.sroa.038.061.us = phi i64 [ %i.w, %bb.b ], [ 0, %._crit_edge ]
  %i.m = tail call noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution3chiNtB5_3ChiINtB7_13ContinuousCDFddE2sf(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, double noundef %.sroa.09.065.us)
  %i.n = fsub double %i.i, %i.m                   ; 2 uses
  %i.o = tail call noundef double @_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution3chiNtB5_3ChiINtB7_10ContinuousddE3pdf(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3, double noundef %.sroa.09.065.us)
  %i.p = fdiv double %i.n, %i.o
  %i.q = fsub double %.sroa.09.065.us, %i.p       ; 6 uses
  %i.r = fsub double %i.q, %.sroa.09.065.us
  %i.s = tail call double @llvm.fabs.f64(double %i.r) ; 3 uses
  %i.t = tail call double @llvm.fabs.f64(double %.sroa.09.065.us)
  %i.u = fmul double %i.t, f0x3D06849B86A12B9B
  %i.v = fcmp ugt double %i.s, %i.u
  br i1 %i.v, label %bb.b, label %.split67.us

bb.b:                                             ; preds = %.split.us
  %i.w = add nuw nsw i64 %.sroa.038.061.us, 1     ; 2 uses
  %i.x = fcmp ult double %i.n, 0.000000e+00       ; 2 uses
  %.sroa.09.0..sroa.030.2.us = select i1 %i.x, double %.sroa.09.065.us, double %.sroa.030.262.us ; 4 uses
  %.sroa.023.2..sroa.09.0.us = select i1 %i.x, double %.sroa.023.263.us, double %.sroa.09.065.us ; 3 uses
  %i.y = tail call double @llvm.fabs.f64(double %i.q)
  %i.z = fcmp ueq double %i.y, +inf
  %i.aa = fcmp ule double %i.q, %.sroa.09.0..sroa.030.2.us
  %or.cond.not54.us = select i1 %i.z, i1 true, i1 %i.aa
  %i.ab = fcmp uge double %i.q, %.sroa.023.2..sroa.09.0.us
  %or.cond42.not51.us = select i1 %or.cond.not54.us, i1 true, i1 %i.ab
  %i.ac = fmul double %i.s, 2.000000e+00
  %i.ad = fcmp ugt double %i.ac, %.sroa.019.064.us
  %or.cond44.us = select i1 %or.cond42.not51.us, i1 true, i1 %i.ad ; 2 uses
  %i.ae = fsub double %.sroa.023.2..sroa.09.0.us, %.sroa.09.0..sroa.030.2.us
  %i.af = fmul double %i.ae, 5.000000e-01         ; 2 uses
  %i.ag = fadd double %.sroa.09.0..sroa.030.2.us, %i.af
  %.sroa.019.1.us = select i1 %or.cond44.us, double %i.af, double %i.s
  %.sroa.09.1.us = select i1 %or.cond44.us, double %i.ag, double %i.q ; 2 uses
  %exitcond71.not = icmp eq i64 %i.w, 100
  br i1 %exitcond71.not, label %.split67.us, label %.split.us

.lr.ph58:                                         ; preds = %.preheader, %.lr.ph58
  %.sroa.023.157 = phi double [ %i.ah, %.lr.ph58 ], [ %.sroa.023.0.lcssa, %.preheader ] ; 2 uses
  %i.ah = fmul double %.sroa.023.157, 2.000000e+00 ; 3 uses
  %i.ai = tail call noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution3chiNtB5_3ChiINtB7_13ContinuousCDFddE3cdf(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, double noundef %i.ah)
  %i.aj = fcmp olt double %i.ai, %0
  br i1 %i.aj, label %.lr.ph58, label %._crit_edge

.split:                                           ; preds = %._crit_edge, %bb.c
  %.sroa.09.065 = phi double [ %.sroa.09.1, %bb.c ], [ %i.k, %._crit_edge ] ; 7 uses
  %.sroa.019.064 = phi double [ %.sroa.019.1, %bb.c ], [ %i.l, %._crit_edge ]
  %.sroa.023.263 = phi double [ %.sroa.023.2..sroa.09.0, %bb.c ], [ %.sroa.023.1.lcssa, %._crit_edge ]
  %.sroa.030.262 = phi double [ %.sroa.09.0..sroa.030.2, %bb.c ], [ %.sroa.030.1.lcssa, %._crit_edge ]
  %.sroa.038.061 = phi i64 [ %i.au, %bb.c ], [ 0, %._crit_edge ]
  %i.ak = tail call noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution3chiNtB5_3ChiINtB7_13ContinuousCDFddE3cdf(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, double noundef %.sroa.09.065)
  %i.al = fsub double %i.ak, %0                   ; 2 uses
  %i.am = tail call noundef double @_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution3chiNtB5_3ChiINtB7_10ContinuousddE3pdf(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3, double noundef %.sroa.09.065)
  %i.an = fdiv double %i.al, %i.am
  %i.ao = fsub double %.sroa.09.065, %i.an        ; 6 uses
  %i.ap = fsub double %i.ao, %.sroa.09.065
  %i.aq = tail call double @llvm.fabs.f64(double %i.ap) ; 3 uses
  %i.ar = tail call double @llvm.fabs.f64(double %.sroa.09.065)
  %i.as = fmul double %i.ar, f0x3D06849B86A12B9B
  %i.at = fcmp ugt double %i.aq, %i.as
  br i1 %i.at, label %bb.c, label %.split67.us

.split67.us:                                      ; preds = %bb.c, %.split, %.split.us, %bb.b
  %.us-phi = phi double [ %i.q, %.split.us ], [ %.sroa.09.1.us, %bb.b ], [ %.sroa.09.1, %bb.c ], [ %i.ao, %.split ]
  ret double %.us-phi

bb.c:                                             ; preds = %.split
  %i.au = add nuw nsw i64 %.sroa.038.061, 1       ; 2 uses
  %i.av = fcmp ult double %i.al, 0.000000e+00     ; 2 uses
  %.sroa.09.0..sroa.030.2 = select i1 %i.av, double %.sroa.09.065, double %.sroa.030.262 ; 4 uses
  %.sroa.023.2..sroa.09.0 = select i1 %i.av, double %.sroa.023.263, double %.sroa.09.065 ; 3 uses
  %i.aw = tail call double @llvm.fabs.f64(double %i.ao)
  %i.ax = fcmp ueq double %i.aw, +inf
  %i.ay = fcmp ule double %i.ao, %.sroa.09.0..sroa.030.2
  %or.cond.not54 = select i1 %i.ax, i1 true, i1 %i.ay
  %i.az = fcmp uge double %i.ao, %.sroa.023.2..sroa.09.0
  %or.cond42.not51 = select i1 %or.cond.not54, i1 true, i1 %i.az
  %i.ba = fmul double %i.aq, 2.000000e+00
  %i.bb = fcmp ugt double %i.ba, %.sroa.019.064
  %or.cond44 = select i1 %or.cond42.not51, i1 true, i1 %i.bb ; 2 uses
  %i.bc = fsub double %.sroa.023.2..sroa.09.0, %.sroa.09.0..sroa.030.2
  %i.bd = fmul double %i.bc, 5.000000e-01         ; 2 uses
  %i.be = fadd double %.sroa.09.0..sroa.030.2, %i.bd
  %.sroa.019.1 = select i1 %or.cond44, double %i.bd, double %i.aq
  %.sroa.09.1 = select i1 %or.cond44, double %i.be, double %i.ao ; 2 uses
  %exitcond.not = icmp eq i64 %i.au, 100
  br i1 %exitcond.not, label %.split67.us, label %.split
}

; Function Attrs: nonlazybind uwtable
define hidden noundef double @_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra6linalg2luINtB5_2LUdNtNtNtB9_4base9dimension3DynBQ_E11determinantCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val7 = load i64, ptr %i.a, align 8, !noundef !4 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val8 = load i64, ptr %i.b, align 8, !noundef !4
  %i.c = icmp eq i64 %.val7, %.val8
  br i1 %i.c, label %.preheader, label %bb.b, !prof !5

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %.val7, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val9 = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %xtraiter = and i64 %.val7, 3                   ; 3 uses
  %i.e = icmp ult i64 %.val7, 4
  br i1 %i.e, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %.val7, -4
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @11, ptr noundef nonnull inttoptr (i64 147 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #14
  unreachable

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.sroa.04.013.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ah, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.0.012.epil.init = phi double [ 1.000000e+00, %.lr.ph ], [ %i.am, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.sroa.04.013.epil = phi i64 [ %.sroa.04.013.epil.init, %.epil.preheader ], [ %i.f, %bb.c ] ; 3 uses
  %.sroa.0.012.epil = phi double [ %.sroa.0.012.epil.init, %.epil.preheader ], [ %i.k, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.f = add nuw i64 %.sroa.04.013.epil, 1
  %i.g = mul i64 %.sroa.04.013.epil, %.val7
  %i.h = getelementptr [8 x i8], ptr %.val9, i64 %i.g
  %i.i = getelementptr [8 x i8], ptr %i.h, i64 %.sroa.04.013.epil
  %i.j = load double, ptr %i.i, align 8, !alias.scope !11, !noundef !4
  %i.k = fmul double %.sroa.0.012.epil, %i.j      ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !10

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %.preheader
  %.sroa.0.0.lcssa = phi double [ 1.000000e+00, %.preheader ], [ %i.am, %._crit_edge.loopexit.unr-lcssa ], [ %i.k, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load i64, ptr %i.l, align 8, !noundef !4
  %1 = trunc i64 %i.m to i1
  %i.n = fneg double %.sroa.0.0.lcssa
  %i.o = select i1 %1, double %i.n, double %.sroa.0.0.lcssa
  ret double %i.o

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %.sroa.04.013 = phi i64 [ 0, %.lr.ph.new ], [ %i.ah, %bb.d ] ; 6 uses
  %.sroa.0.012 = phi double [ 1.000000e+00, %.lr.ph.new ], [ %i.am, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.d ]
  %i.p = or disjoint i64 %.sroa.04.013, 1         ; 2 uses
  %i.q = mul i64 %.sroa.04.013, %.val7
  %i.r = getelementptr [8 x i8], ptr %.val9, i64 %i.q
  %i.s = getelementptr [8 x i8], ptr %i.r, i64 %.sroa.04.013
  %i.t = load double, ptr %i.s, align 8, !alias.scope !11, !noundef !4
  %i.u = fmul double %.sroa.0.012, %i.t
  %i.v = or disjoint i64 %.sroa.04.013, 2         ; 2 uses
  %i.w = mul i64 %i.p, %.val7
  %i.x = getelementptr [8 x i8], ptr %.val9, i64 %i.w
  %i.y = getelementptr [8 x i8], ptr %i.x, i64 %i.p
  %i.z = load double, ptr %i.y, align 8, !alias.scope !11, !noundef !4
  %i.aa = fmul double %i.u, %i.z
  %i.ab = or disjoint i64 %.sroa.04.013, 3        ; 2 uses
  %i.ac = mul i64 %i.v, %.val7
  %i.ad = getelementptr [8 x i8], ptr %.val9, i64 %i.ac
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %i.v
  %i.af = load double, ptr %i.ae, align 8, !alias.scope !11, !noundef !4
  %i.ag = fmul double %i.aa, %i.af
  %i.ah = add nuw i64 %.sroa.04.013, 4            ; 2 uses
  %i.ai = mul i64 %i.ab, %.val7
  %i.aj = getelementptr [8 x i8], ptr %.val9, i64 %i.ai
  %i.ak = getelementptr [8 x i8], ptr %i.aj, i64 %i.ab
  %i.al = load double, ptr %i.ak, align 8, !alias.scope !11, !noundef !4
  %i.am = fmul double %i.ag, %i.al                ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCsbADZB03g5jP_8nalgebra6linalg2luINtB4_2LUdNtNtNtB8_4base9dimension3DynBP_E3newCs8lmMd0ZksV9_6statrs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [40 x i8], align 8                ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.val = load i64, ptr %i.p, align 8, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.val7 = load i64, ptr %i.q, align 8, !noundef !4
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %.val7, i64 %.val) ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !78
  invoke void @_RNvMNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB2_12RepeatNInnerTjjEE3newCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef 0, i64 noundef 0, i64 noundef %..i.i)
          to label %.noexc unwind label %bb.b

.body:                                            ; preds = %bb.e, %bb.j, %bb.b, %.loopexit.split-lp
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.loopexit.split-lp ], [ %i.r, %bb.b ], [ %i.ac, %bb.j ], [ %i.aa, %bb.e ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(40) %1) #15
          to label %bb.aa unwind label %bb.z

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !79
  invoke void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecTjjEEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNBU_EE9from_iterCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
          to label %.noexc11 unwind label %bb.b

.noexc11:                                         ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !78
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noalias !79, !noundef !4 ; 2 uses
  %i.u = icmp ult i64 %i.t, 576460752303423488
  call void @llvm.assume(i1 %i.u)
  %i.v = icmp eq i64 %i.t, %..i.i
  br i1 %i.v, label %bb.d, label %bb.c, !prof !5

bb.c:                                             ; preds = %.noexc11
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 181 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #16
          to label %bb.i unwind label %bb.j, !noalias !79

bb.d:                                             ; preds = %.noexc11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !79
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !80, !noalias !81, !noundef !4 ; 2 uses
  %i.y = icmp ult i64 %i.x, 576460752303423488
  call void @llvm.assume(i1 %i.y)
  %i.z = icmp eq i64 %..i.i, %i.x
  br i1 %i.z, label %bb.m, label %bb.f, !prof !5

bb.e:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTjjEEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #15
          to label %.body unwind label %bb.h, !noalias !81

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @16, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #16
          to label %bb.g unwind label %bb.e, !noalias !82

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13, !noalias !81
  unreachable

bb.i:                                             ; preds = %bb.c
  unreachable

bb.j:                                             ; preds = %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTjjEEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #15
          to label %.body unwind label %bb.k, !noalias !79

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13, !noalias !79
  unreachable

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.l ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit57, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit60, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra6linalg20permutation_sequence19PermutationSequenceNtNtNtBI_4base9dimension3DynEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(40) %i.o) #15
          to label %.body unwind label %bb.z

bb.l:                                             ; preds = %.invoke
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.m:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !79
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  store i64 0, ptr %i.af, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 %..i.i, ptr %.sroa.455.0..sroa_idx, align 8
  %i.ag = icmp eq i64 %..i.i, 0
  br i1 %i.ag, label %.loopexit165, label %.preheader.split

.preheader.split:                                 ; preds = %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.531.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.not5.i = icmp eq i64 %..i.i, 1
  br label %bb.n

.loopexit165:                                     ; preds = %.backedge, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.au, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret void

bb.n:                                             ; preds = %.preheader.split, %.backedge
  %i.av = phi i64 [ 0, %.preheader.split ], [ %i.dd, %.backedge ] ; 5 uses
  %.sroa.02.084 = phi i64 [ 0, %.preheader.split ], [ %i.ax, %.backedge ] ; 18 uses
  %i.aw = xor i64 %.sroa.02.084, -1
  %i.ax = add nuw i64 %.sroa.02.084, 1            ; 2 uses
  %.val.i = load i64, ptr %i.p, align 8, !alias.scope !83, !noalias !84, !noundef !4 ; 5 uses
  %.val1.i = load i64, ptr %i.q, align 8, !alias.scope !83, !noalias !84, !noundef !4
  %.not1.i.i.i.not = icmp ult i64 %.sroa.02.084, %.val1.i
  br i1 %.not1.i.i.i.not, label %bb.o, label %.invoke, !prof !5

bb.o:                                             ; preds = %bb.n
  %i.ay = sub i64 %.val.i, %.sroa.02.084
  %.val4.i.i = load ptr, ptr %i.ah, align 8, !alias.scope !85, !noalias !86, !nonnull !4, !noundef !4
  %i.az = mul i64 %.val.i, %.sroa.02.084
  %i.ba = getelementptr [8 x i8], ptr %.val4.i.i, i64 %i.az ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %i.ba, i64 %.sroa.02.084 ; 4 uses
  switch i64 %i.ay, label %.lr.ph.preheader.i [
    i64 0, label %.invoke
    i64 1, label %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit
  ], !prof !87

.lr.ph.preheader.i:                               ; preds = %bb.o
  %i.bc = load double, ptr %i.bb, align 8, !alias.scope !88, !noalias !89, !noundef !4
  %i.bd = call noundef double @llvm.fabs.f64(double %i.bc) ; 2 uses
  %i.be = add i64 %.val.i, %i.aw                  ; 3 uses
  %reass.sub = sub i64 %.val.i, %.sroa.02.084
  %i.bf = icmp eq i64 %reass.sub, 2
  br i1 %i.bf, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.be, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %.sroa.0.015.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %.sroa.0.1.i.1, %.lr.ph.i ]
  %.sroa.03.014.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %i.bl, %.lr.ph.i ] ; 4 uses
  %.sroa.0.01113.i = phi double [ %i.bd, %.lr.ph.preheader.i.new ], [ %.sroa.0.112.i.1, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.bg = add nuw i64 %.sroa.03.014.i, 1          ; 2 uses
  %i.bh = getelementptr [8 x i8], ptr %i.bb, i64 %.sroa.03.014.i
  %i.bi = load double, ptr %i.bh, align 8, !alias.scope !90, !noalias !89, !noundef !4
  %i.bj = call noundef double @llvm.fabs.f64(double %i.bi) ; 2 uses
  %i.bk = fcmp ogt double %i.bj, %.sroa.0.01113.i ; 2 uses
  %.sroa.0.112.i = select i1 %i.bk, double %i.bj, double %.sroa.0.01113.i ; 2 uses
  %.sroa.0.1.i = select i1 %i.bk, i64 %.sroa.03.014.i, i64 %.sroa.0.015.i
  %i.bl = add nuw i64 %.sroa.03.014.i, 2          ; 2 uses
  %i.bm = getelementptr [8 x i8], ptr %i.bb, i64 %i.bg
  %i.bn = load double, ptr %i.bm, align 8, !alias.scope !90, !noalias !89, !noundef !4
  %i.bo = call noundef double @llvm.fabs.f64(double %i.bn) ; 2 uses
  %i.bp = fcmp ogt double %i.bo, %.sroa.0.112.i   ; 2 uses
  %.sroa.0.112.i.1 = select i1 %i.bp, double %i.bo, double %.sroa.0.112.i ; 2 uses
  %.sroa.0.1.i.1 = select i1 %i.bp, i64 %i.bg, i64 %.sroa.0.1.i ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa, label %.lr.ph.i

_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %2 = trunc i64 %i.be to i1
  br i1 %2, label %.lr.ph.i.epil.preheader, label %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit

.lr.ph.i.epil.preheader:                          ; preds = %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.sroa.0.015.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %.sroa.0.1.i.1, %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa ]
  %.sroa.03.014.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %i.bl, %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.0.01113.i.epil.init = phi double [ %i.bd, %.lr.ph.preheader.i ], [ %.sroa.0.112.i.1, %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa ]
  %lcmp.mod181 = trunc i64 %i.be to i1
  call void @llvm.assume(i1 %lcmp.mod181)
  %i.bq = getelementptr [8 x i8], ptr %i.bb, i64 %.sroa.03.014.i.epil.init
  %i.br = load double, ptr %i.bq, align 8, !alias.scope !90, !noalias !89, !noundef !4
  %i.bs = call noundef double @llvm.fabs.f64(double %i.br)
  %i.bt = fcmp ogt double %i.bs, %.sroa.0.01113.i.epil.init
  %.sroa.0.1.i.epil = select i1 %i.bt, i64 %.sroa.03.014.i.epil.init, i64 %.sroa.0.015.i.epil.init
  br label %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit

_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit: ; preds = %.lr.ph.i.epil.preheader, %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa, %bb.o
  %.sroa.0.0.lcssa.i = phi i64 [ 0, %bb.o ], [ %.sroa.0.1.i.1, %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa ], [ %.sroa.0.1.i.epil, %.lr.ph.i.epil.preheader ] ; 6 uses
  %i.bu = add i64 %.sroa.0.0.lcssa.i, %.sroa.02.084 ; 7 uses
  %i.bv = icmp ult i64 %i.bu, %.val.i
  br i1 %i.bv, label %bb.p, label %.invoke, !prof !91

.invoke:                                          ; preds = %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit, %bb.o, %bb.n
  %i.bw = phi ptr [ @8, %bb.o ], [ @27, %bb.n ], [ @29, %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit ]
  %i.bx = phi ptr [ inttoptr (i64 71 to ptr), %bb.o ], [ inttoptr (i64 59 to ptr), %bb.n ], [ inttoptr (i64 55 to ptr), %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit ]
  %i.by = phi ptr [ @10, %bb.o ], [ @28, %bb.n ], [ @26, %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull %i.bw, ptr noundef nonnull %i.bx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.by) #14
          to label %.cont unwind label %bb.l

.cont:                                            ; preds = %.invoke
  unreachable

.loopexit:                                        ; preds = %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.us.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.us.i
  %lpad.loopexit57 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.t, %bb.r, %.noexc18, %_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit, %_RNvMs9_NtNtCsbADZB03g5jP_8nalgebra4base6matrixINtB5_6MatrixdNtNtB7_9dimension3DynINtBY_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdBW_B1h_B1h_BW_EE4swapCs8lmMd0ZksV9_6statrs.exit.i
  %lpad.loopexit60 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke132, %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i.invoke, %bb.v
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.p:                                             ; preds = %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit
  %i.bz = getelementptr [8 x i8], ptr %i.ba, i64 %i.bu
  %i.ca = load double, ptr %i.bz, align 8, !alias.scope !92, !noundef !4 ; 3 uses
  %i.cb = fcmp oeq double %i.ca, 0.000000e+00
  br i1 %i.cb, label %.backedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not = icmp eq i64 %.sroa.0.0.lcssa.i, 0
  br i1 %.not, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !93
  invoke void @_RINvMsl_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynB1c_INtNtB8_11vec_storage10VecStoragedB1c_B1c_EE14view_range_mutINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEB2z_ECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %.sroa.02.084, i64 noundef %.sroa.02.084)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc18:                                         ; preds = %bb.r
  %i.cc = fdiv double 1.000000e+00, %i.ca         ; 2 uses
  %.val13.i.i = load i64, ptr %i.j, align 8, !alias.scope !94, !noalias !95, !noundef !4 ; 2 uses
  %.val14.i.i = load i64, ptr %i.aq, align 8, !alias.scope !94, !noalias !95, !noundef !4
  %.val15.i.i = load i64, ptr %i.ar, align 8, !alias.scope !94, !noalias !95, !noundef !4 ; 3 uses
  %i.cd = add i64 %.val14.i.i, -1                 ; 2 uses
  %.val18.i.i = load ptr, ptr %i.as, align 8, !alias.scope !94, !noalias !95, !noundef !4 ; 2 uses
  %i.ce = getelementptr [8 x i8], ptr %.val18.i.i, i64 %.val15.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !93
  store ptr %.val18.i.i, ptr %i.i, align 8, !noalias !93
  store i64 %.val13.i.i, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !93
  store i64 %.val15.i.i, ptr %.sroa.520.0..sroa_idx.i, align 8, !noalias !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !93
  invoke void @_RINvMsl_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynINtB1e_5ConstKj1_EINtB6_14ViewStorageMutdB1c_B1x_B1x_B1c_EE14view_range_mutINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjENtB2N_9RangeFullECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef 1)
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc19:                                         ; preds = %.noexc18
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %.val7.i.i = load i64, ptr %i.at, align 8, !alias.scope !96, !noalias !93, !noundef !4 ; 10 uses
  %.not.i.i = icmp eq i64 %.val7.i.i, 0
  %.val8.i.i = load ptr, ptr %i.h, align 8, !alias.scope !96, !noalias !93 ; 3 uses
  br i1 %.not.i.i, label %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.noexc19
  %min.iters.check = icmp ult i64 %.val7.i.i, 4
  br i1 %min.iters.check, label %.preheader.i.i.preheader163, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i.preheader
  %n.vec = and i64 %.val7.i.i, -4                 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cc, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cf = getelementptr [8 x i8], ptr %.val8.i.i, i64 %index ; 3 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 16     ; 2 uses
  %wide.load = load <2 x double>, ptr %i.cf, align 8, !alias.scope !97, !noalias !96
  %wide.load148 = load <2 x double>, ptr %i.cg, align 8, !alias.scope !97, !noalias !96
  %i.ch = fmul <2 x double> %broadcast.splat, %wide.load
  %i.ci = fmul <2 x double> %broadcast.splat, %wide.load148
  store <2 x double> %i.ch, ptr %i.cf, align 8, !alias.scope !97, !noalias !96
  store <2 x double> %i.ci, ptr %i.cg, align 8, !alias.scope !97, !noalias !96
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.val7.i.i, %n.vec
  br i1 %cmp.n, label %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i, label %.preheader.i.i.preheader163

.preheader.i.i.preheader163:                      ; preds = %.preheader.i.i.preheader, %middle.block
  %.sroa.05.010.i.i.ph = phi i64 [ 0, %.preheader.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader163, %.preheader.i.i
  %.sroa.05.010.i.i = phi i64 [ %i.ck, %.preheader.i.i ], [ %.sroa.05.010.i.i.ph, %.preheader.i.i.preheader163 ] ; 2 uses
  %i.ck = add nuw i64 %.sroa.05.010.i.i, 1        ; 2 uses
  %i.cl = getelementptr [8 x i8], ptr %.val8.i.i, i64 %.sroa.05.010.i.i ; 2 uses
  %i.cm = load double, ptr %i.cl, align 8, !alias.scope !97, !noalias !96, !noundef !4
  %i.cn = fmul double %i.cc, %i.cm
  store double %i.cn, ptr %i.cl, align 8, !alias.scope !97, !noalias !96
  %exitcond.not.i.i = icmp eq i64 %i.ck, %.val7.i.i
  br i1 %exitcond.not.i.i, label %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i, label %.preheader.i.i, !llvm.loop !50

_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i: ; preds = %.preheader.i.i, %middle.block, %.noexc19
  %i.co = getelementptr i8, ptr %i.ce, i64 8
  %.not.i16 = icmp eq i64 %i.cd, 0
  br i1 %.not.i16, label %_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu10gauss_stepdNtNtNtB6_4base9dimension3DynBQ_INtNtBU_11vec_storage10VecStoragedBQ_BQ_EECs8lmMd0ZksV9_6statrs.exit, label %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.lr.ph.i

_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.lr.ph.i: ; preds = %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i
  %i.cp = add i64 %.val13.i.i, -1                 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, %.val7.i.i
  br i1 %i.cq, label %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.us.i, label %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i, !prof !5

_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.us.i: ; preds = %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.lr.ph.i, %.noexc20
  %.sroa.04.037.us.i = phi i64 [ %i.cw, %.noexc20 ], [ 0, %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.lr.ph.i ] ; 2 uses
  %i.cr = mul i64 %.sroa.04.037.us.i, %.val15.i.i ; 2 uses
  %i.cs = getelementptr [8 x i8], ptr %i.ce, i64 %i.cr
  %i.ct = load double, ptr %i.cs, align 8, !alias.scope !100, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !101
  %i.cu = fneg double %i.ct
  %i.cv = getelementptr [8 x i8], ptr %i.co, i64 %i.cr ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !101
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cv) ]
  invoke void @_RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit11array_axcpyNtNtB4_6uninit4InitdECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 %i.cv, i64 noundef %.val7.i.i, double noundef %i.cu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val8.i.i, i64 noundef %.val7.i.i, double noundef 1.000000e+00, double noundef 1.000000e+00, i64 noundef 1, i64 noundef 1, i64 noundef %.val7.i.i)
          to label %.noexc20 unwind label %.loopexit

.noexc20:                                         ; preds = %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.us.i
  %i.cw = add nuw i64 %.sroa.04.037.us.i, 1       ; 2 uses
  %exitcond.not.i17 = icmp eq i64 %i.cw, %i.cd
  br i1 %exitcond.not.i17, label %_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu10gauss_stepdNtNtNtB6_4base9dimension3DynBQ_INtNtBU_11vec_storage10VecStoragedBQ_BQ_EECs8lmMd0ZksV9_6statrs.exit, label %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.us.i

_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i: ; preds = %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !101
  store i64 %i.cp, ptr %i.g, align 8, !noalias !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !101
  store i64 %.val7.i.i, ptr %i.f, align 8, !noalias !101
  br label %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i.invoke

_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i.invoke: ; preds = %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i, %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i
  %i.cx = phi ptr [ %i.g, %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i ], [ %i.b, %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i ]
  %i.cy = phi ptr [ %i.f, %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i ], [ %i.a, %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cy, ptr noundef nonnull @0, ptr nonnull inttoptr (i64 63 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
          to label %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i.cont: ; preds = %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i.invoke
  unreachable

_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu10gauss_stepdNtNtNtB6_4base9dimension3DynBQ_INtNtBU_11vec_storage10VecStoragedBQ_BQ_EECs8lmMd0ZksV9_6statrs.exit: ; preds = %.noexc20, %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !93
  br label %.backedge

bb.s:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.cz = icmp ult i64 %i.av, %..i.i
  br i1 %i.cz, label %bb.t, label %.invoke132, !prof !5

.invoke132:                                       ; preds = %bb.y, %.noexc44, %bb.s
  %i.da = phi ptr [ @23, %.noexc44 ], [ @14, %bb.s ], [ @23, %bb.y ]
  %i.db = phi ptr [ inttoptr (i64 83 to ptr), %.noexc44 ], [ inttoptr (i64 81 to ptr), %bb.s ], [ inttoptr (i64 83 to ptr), %bb.y ]
  %i.dc = phi ptr [ @24, %.noexc44 ], [ @15, %bb.s ], [ @25, %bb.y ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull %i.da, ptr noundef nonnull %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dc) #14
          to label %.cont133 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont133:                                         ; preds = %.invoke132
  unreachable

.backedge:                                        ; preds = %_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu10gauss_stepdNtNtNtB6_4base9dimension3DynBQ_INtNtBU_11vec_storage10VecStoragedBQ_BQ_EECs8lmMd0ZksV9_6statrs.exit, %_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu15gauss_step_swapdNtNtNtB6_4base9dimension3DynBV_INtNtBZ_11vec_storage10VecStoragedBV_BV_EECs8lmMd0ZksV9_6statrs.exit, %bb.p
  %i.dd = phi i64 [ %i.av, %_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu10gauss_stepdNtNtNtB6_4base9dimension3DynBQ_INtNtBU_11vec_storage10VecStoragedBQ_BQ_EECs8lmMd0ZksV9_6statrs.exit ], [ %i.dg, %_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu15gauss_step_swapdNtNtNtB6_4base9dimension3DynBV_INtNtBZ_11vec_storage10VecStoragedBV_BV_EECs8lmMd0ZksV9_6statrs.exit ], [ %i.av, %bb.p ]
  %exitcond.not = icmp eq i64 %i.ax, %..i.i
  br i1 %exitcond.not, label %.loopexit165, label %bb.n

bb.t:                                             ; preds = %bb.s
  %.val3.i24 = load ptr, ptr %i.ai, align 8, !alias.scope !102, !nonnull !4, !noundef !4
  %.sroa.0.0.i.i = select i1 %.not5.i, i64 0, i64 %i.av
  %i.de = getelementptr [16 x i8], ptr %.val3.i24, i64 %.sroa.0.0.i.i ; 2 uses
  store i64 %.sroa.02.084, ptr %i.de, align 8, !noalias !102
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i64 %i.bu, ptr %i.df, align 8, !noalias !102
  %i.dg = add nuw nsw i64 %i.av, 1                ; 2 uses
  store i64 %i.dg, ptr %i.af, align 8, !alias.scope !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RINvMsl_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynB1c_INtNtB8_11vec_storage10VecStoragedB1c_B1c_EE14view_range_mutNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullINtB2B_7RangeTojEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %.sroa.02.084)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %.val7.i = load i64, ptr %i.n, align 8, !alias.scope !103, !noundef !4 ; 2 uses
  %.val8.i = load i64, ptr %i.aj, align 8, !alias.scope !103, !noundef !4 ; 5 uses
  %i.dh = icmp ult i64 %.sroa.02.084, %.val7.i
  %i.di = icmp ult i64 %i.bu, %.val7.i
  %or.cond.i26 = and i1 %i.dh, %i.di
  br i1 %or.cond.i26, label %bb.w, label %bb.v, !prof !91

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 62, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #14
          to label %.noexc31 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc31:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.u
  %.not56 = icmp eq i64 %.val8.i, 0
  br i1 %.not56, label %_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %bb.w
  %.val9.i29 = load ptr, ptr %i.ak, align 8, !alias.scope !103, !noundef !4 ; 3 uses
  %.val10.i = load i64, ptr %i.al, align 8, !alias.scope !103, !noundef !4 ; 3 uses
  %i.dj = icmp eq i64 %.val8.i, 1
  br i1 %i.dj, label %.epil.preheader, label %.lr.ph.i28.new

.lr.ph.i28.new:                                   ; preds = %.lr.ph.i28
  %unroll_iter185 = and i64 %.val8.i, -2
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph.i28.new
  %.sroa.01.011.i = phi i64 [ 0, %.lr.ph.i28.new ], [ %i.dq, %bb.x ] ; 3 uses
  %niter186 = phi i64 [ 0, %.lr.ph.i28.new ], [ %niter186.next.1, %bb.x ]
  %i.dk = or disjoint i64 %.sroa.01.011.i, 1
  %i.dl = mul i64 %.sroa.01.011.i, %.val10.i
  %i.dm = getelementptr [8 x i8], ptr %.val9.i29, i64 %i.dl ; 2 uses
  %i.dn = getelementptr [8 x i8], ptr %i.dm, i64 %.sroa.02.084 ; 2 uses
  %i.do = getelementptr [8 x i8], ptr %i.dm, i64 %i.bu ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.dn, align 8, !noalias !103
  %i.dp = load i64, ptr %i.do, align 8, !noalias !103
  store i64 %i.dp, ptr %i.dn, align 8, !noalias !103
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.do, align 8, !noalias !103
  %i.dq = add nuw i64 %.sroa.01.011.i, 2          ; 2 uses
  %i.dr = mul i64 %i.dk, %.val10.i
  %i.ds = getelementptr [8 x i8], ptr %.val9.i29, i64 %i.dr ; 2 uses
  %i.dt = getelementptr [8 x i8], ptr %i.ds, i64 %.sroa.02.084 ; 2 uses
  %i.du = getelementptr [8 x i8], ptr %i.ds, i64 %i.bu ; 2 uses
  %.sroa.0.0.copyload.i.i.i.1 = load i64, ptr %i.dt, align 8, !noalias !103
  %i.dv = load i64, ptr %i.du, align 8, !noalias !103
  store i64 %i.dv, ptr %i.dt, align 8, !noalias !103
  store i64 %.sroa.0.0.copyload.i.i.i.1, ptr %i.du, align 8, !noalias !103
  %niter186.next.1 = add nuw i64 %niter186, 2     ; 2 uses
  %niter186.ncmp.1 = icmp eq i64 %niter186.next.1, %unroll_iter185
  br i1 %niter186.ncmp.1, label %_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa, label %bb.x

_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa: ; preds = %bb.x
  %3 = trunc i64 %.val8.i to i1
  br i1 %3, label %.epil.preheader, label %_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit

.epil.preheader:                                  ; preds = %_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa, %.lr.ph.i28
  %.sroa.01.011.i.epil.init = phi i64 [ 0, %.lr.ph.i28 ], [ %i.dq, %_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa ]
  %lcmp.mod184 = trunc i64 %.val8.i to i1
  call void @llvm.assume(i1 %lcmp.mod184)
  %i.dw = mul i64 %.sroa.01.011.i.epil.init, %.val10.i
  %i.dx = getelementptr [8 x i8], ptr %.val9.i29, i64 %i.dw ; 2 uses
  %i.dy = getelementptr [8 x i8], ptr %i.dx, i64 %.sroa.02.084 ; 2 uses
  %i.dz = getelementptr [8 x i8], ptr %i.dx, i64 %i.bu ; 2 uses
  %.sroa.0.0.copyload.i.i.i.epil = load i64, ptr %i.dy, align 8, !noalias !103
  %i.ea = load i64, ptr %i.dz, align 8, !noalias !103
  store i64 %i.ea, ptr %i.dy, align 8, !noalias !103
  store i64 %.sroa.0.0.copyload.i.i.i.epil, ptr %i.dz, align 8, !noalias !103
  br label %_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit

_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit: ; preds = %.epil.preheader, %_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !104
  invoke void @_RINvMsl_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynB1c_INtNtB8_11vec_storage10VecStoragedB1c_B1c_EE14view_range_mutINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEB2z_ECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %.sroa.02.084, i64 noundef %.sroa.02.084)
          to label %.noexc44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc44:                                         ; preds = %_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit
  %i.eb = fdiv double 1.000000e+00, %i.ca         ; 2 uses
  %.val13.i.i32 = load i64, ptr %i.e, align 8, !alias.scope !105, !noalias !106, !noundef !4 ; 4 uses
  %.val14.i.i33 = load i64, ptr %i.am, align 8, !alias.scope !105, !noalias !106, !noundef !4
  %.val15.i.i34 = load i64, ptr %i.an, align 8, !alias.scope !105, !noalias !106, !noundef !4 ; 3 uses
  %i.ec = add i64 %.val14.i.i33, -1               ; 2 uses
  %.val18.i.i35 = load ptr, ptr %i.ao, align 8, !alias.scope !105, !noalias !106, !noundef !4 ; 5 uses
  %i.ed = getelementptr [8 x i8], ptr %.val18.i.i35, i64 %.val15.i.i34 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !104
  store ptr %.val18.i.i35, ptr %i.d, align 8, !noalias !104
  store i64 %.val13.i.i32, ptr %.sroa.430.0..sroa_idx.i, align 8, !noalias !104
  store i64 %.val15.i.i34, ptr %.sroa.531.0..sroa_idx.i, align 8, !noalias !104
  %.not.i.i36 = icmp eq i64 %.val13.i.i32, 0
  br i1 %.not.i.i36, label %.invoke132, label %bb.y, !prof !107

bb.y:                                             ; preds = %.noexc44
  %i.ee = icmp ult i64 %.sroa.0.0.lcssa.i, %.val13.i.i32
  br i1 %i.ee, label %_RNvMs9_NtNtCsbADZB03g5jP_8nalgebra4base6matrixINtB5_6MatrixdNtNtB7_9dimension3DynINtBY_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdBW_B1h_B1h_BW_EE4swapCs8lmMd0ZksV9_6statrs.exit.i, label %.invoke132, !prof !91

_RNvMs9_NtNtCsbADZB03g5jP_8nalgebra4base6matrixINtB5_6MatrixdNtNtB7_9dimension3DynINtBY_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdBW_B1h_B1h_BW_EE4swapCs8lmMd0ZksV9_6statrs.exit.i: ; preds = %bb.y
  %i.ef = getelementptr [8 x i8], ptr %.val18.i.i35, i64 %.sroa.0.0.lcssa.i ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %.val18.i.i35, align 8, !noalias !108
  %i.eg = load i64, ptr %i.ef, align 8, !noalias !108
  store i64 %i.eg, ptr %.val18.i.i35, align 8, !noalias !108
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %i.ef, align 8, !noalias !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !104
  invoke void @_RINvMsl_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynINtB1e_5ConstKj1_EINtB6_14ViewStorageMutdB1c_B1x_B1x_B1c_EE14view_range_mutINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjENtB2N_9RangeFullECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 1)
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc47:                                         ; preds = %_RNvMs9_NtNtCsbADZB03g5jP_8nalgebra4base6matrixINtB5_6MatrixdNtNtB7_9dimension3DynINtBY_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdBW_B1h_B1h_BW_EE4swapCs8lmMd0ZksV9_6statrs.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %.val7.i8.i = load i64, ptr %i.ap, align 8, !alias.scope !109, !noalias !104, !noundef !4 ; 10 uses
  %.not.i9.i = icmp eq i64 %.val7.i8.i, 0
  %.val8.i.i37 = load ptr, ptr %i.c, align 8, !alias.scope !109, !noalias !104 ; 3 uses
  br i1 %.not.i9.i, label %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i41, label %.preheader.i.i38.preheader

.preheader.i.i38.preheader:                       ; preds = %.noexc47
  %min.iters.check150 = icmp ult i64 %.val7.i8.i, 4
  br i1 %min.iters.check150, label %.preheader.i.i38.preheader164, label %vector.ph151

vector.ph151:                                     ; preds = %.preheader.i.i38.preheader
  %n.vec152 = and i64 %.val7.i8.i, -4             ; 3 uses
  %broadcast.splatinsert153 = insertelement <2 x double> poison, double %i.eb, i64 0
  %broadcast.splat154 = shufflevector <2 x double> %broadcast.splatinsert153, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph151
  %index156 = phi i64 [ 0, %vector.ph151 ], [ %index.next159, %vector.body155 ] ; 2 uses
  %i.eh = getelementptr [8 x i8], ptr %.val8.i.i37, i64 %index156 ; 3 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 16     ; 2 uses
  %wide.load157 = load <2 x double>, ptr %i.eh, align 8, !alias.scope !110, !noalias !109
  %wide.load158 = load <2 x double>, ptr %i.ei, align 8, !alias.scope !110, !noalias !109
  %i.ej = fmul <2 x double> %broadcast.splat154, %wide.load157
  %i.ek = fmul <2 x double> %broadcast.splat154, %wide.load158
  store <2 x double> %i.ej, ptr %i.eh, align 8, !alias.scope !110, !noalias !109
  store <2 x double> %i.ek, ptr %i.ei, align 8, !alias.scope !110, !noalias !109
  %index.next159 = add nuw i64 %index156, 4       ; 2 uses
  %i.el = icmp eq i64 %index.next159, %n.vec152
  br i1 %i.el, label %middle.block160, label %vector.body155, !llvm.loop !71

middle.block160:                                  ; preds = %vector.body155
  %cmp.n161 = icmp eq i64 %.val7.i8.i, %n.vec152
  br i1 %cmp.n161, label %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i41, label %.preheader.i.i38.preheader164

.preheader.i.i38.preheader164:                    ; preds = %.preheader.i.i38.preheader, %middle.block160
  %.sroa.05.010.i.i39.ph = phi i64 [ 0, %.preheader.i.i38.preheader ], [ %n.vec152, %middle.block160 ]
  br label %.preheader.i.i38

.preheader.i.i38:                                 ; preds = %.preheader.i.i38.preheader164, %.preheader.i.i38
  %.sroa.05.010.i.i39 = phi i64 [ %i.em, %.preheader.i.i38 ], [ %.sroa.05.010.i.i39.ph, %.preheader.i.i38.preheader164 ] ; 2 uses
  %i.em = add nuw i64 %.sroa.05.010.i.i39, 1      ; 2 uses
  %i.en = getelementptr [8 x i8], ptr %.val8.i.i37, i64 %.sroa.05.010.i.i39 ; 2 uses
  %i.eo = load double, ptr %i.en, align 8, !alias.scope !110, !noalias !109, !noundef !4
  %i.ep = fmul double %i.eb, %i.eo
  store double %i.ep, ptr %i.en, align 8, !alias.scope !110, !noalias !109
  %exitcond.not.i.i40 = icmp eq i64 %i.em, %.val7.i8.i
  br i1 %exitcond.not.i.i40, label %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i41, label %.preheader.i.i38, !llvm.loop !72

_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i41: ; preds = %.preheader.i.i38, %middle.block160, %.noexc47
  %i.eq = getelementptr i8, ptr %i.ed, i64 8
  %.not.i42 = icmp eq i64 %i.ec, 0
  br i1 %.not.i42, label %_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu15gauss_step_swapdNtNtNtB6_4base9dimension3DynBV_INtNtBZ_11vec_storage10VecStoragedBV_BV_EECs8lmMd0ZksV9_6statrs.exit, label %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.lr.ph.i

_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.lr.ph.i: ; preds = %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i41
  %i.er = add i64 %.val13.i.i32, -1               ; 2 uses
  %i.es = icmp eq i64 %i.er, %.val7.i8.i
  br i1 %i.es, label %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.us.i, label %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i, !prof !5

_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.us.i: ; preds = %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.lr.ph.i, %.noexc48
  %.sroa.04.049.us.i = phi i64 [ %i.fc, %.noexc48 ], [ 0, %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.lr.ph.i ] ; 2 uses
  %i.et = mul i64 %.sroa.04.049.us.i, %.val15.i.i34 ; 2 uses
  %i.eu = getelementptr [8 x i8], ptr %i.ed, i64 %i.et ; 3 uses
  %i.ev = getelementptr [8 x i8], ptr %i.eq, i64 %i.et ; 3 uses
  %i.ew = getelementptr [8 x i8], ptr %i.ev, i64 %.sroa.0.0.lcssa.i
  %i.ex = getelementptr i8, ptr %i.ew, i64 -8     ; 2 uses
  %i.ey = load double, ptr %i.eu, align 8, !noundef !4
  %i.ez = load i64, ptr %i.ex, align 8
  store i64 %i.ez, ptr %i.eu, align 8
  store double %i.ey, ptr %i.ex, align 8
  %i.fa = load double, ptr %i.eu, align 8, !alias.scope !111, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !112
  %i.fb = fneg double %i.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !112
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ev) ]
  invoke void @_RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit11array_axcpyNtNtB4_6uninit4InitdECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 %i.ev, i64 noundef %.val7.i8.i, double noundef %i.fb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val8.i.i37, i64 noundef %.val7.i8.i, double noundef 1.000000e+00, double noundef 1.000000e+00, i64 noundef 1, i64 noundef 1, i64 noundef %.val7.i8.i)
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit

.noexc48:                                         ; preds = %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.us.i
  %i.fc = add nuw i64 %.sroa.04.049.us.i, 1       ; 2 uses
  %exitcond.not.i43 = icmp eq i64 %i.fc, %i.ec
  br i1 %exitcond.not.i43, label %_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu15gauss_step_swapdNtNtNtB6_4base9dimension3DynBV_INtNtBZ_11vec_storage10VecStoragedBV_BV_EECs8lmMd0ZksV9_6statrs.exit, label %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.us.i

_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i: ; preds = %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.lr.ph.i
  %i.fd = getelementptr [8 x i8], ptr %i.ed, i64 %.sroa.0.0.lcssa.i ; 2 uses
  %i.fe = load double, ptr %i.ed, align 8, !noundef !4
  %i.ff = load i64, ptr %i.fd, align 8
  store i64 %i.ff, ptr %i.ed, align 8
  store double %i.fe, ptr %i.fd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !112
  store i64 %i.er, ptr %i.b, align 8, !noalias !112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !112
  store i64 %.val7.i8.i, ptr %i.a, align 8, !noalias !112
  br label %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i.invoke

_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu15gauss_step_swapdNtNtNtB6_4base9dimension3DynBV_INtNtBZ_11vec_storage10VecStoragedBV_BV_EECs8lmMd0ZksV9_6statrs.exit: ; preds = %.noexc48, %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !104
  br label %.backedge

bb.z:                                             ; preds = %.loopexit.split-lp, %.body
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.aa:                                            ; preds = %.body
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvNtCs8lmMd0ZksV9_6statrs4prec11convergence(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0, double noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val = load double, ptr %0, align 8, !noundef !4 ; 3 uses
  %i.a = fcmp oeq double %.val, %1
  br i1 %i.a, label %_RNvXs4_NtCs3u8M9drud7n_6approx11relative_eqdNtB5_10RelativeEq11relative_eq.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call double @llvm.fabs.f64(double %.val) ; 3 uses
  %i.c = fcmp oeq double %i.b, +inf
  %i.d = tail call double @llvm.fabs.f64(double %1) ; 3 uses
  %i.e = fcmp oeq double %i.d, +inf
  %or.cond.i = or i1 %i.e, %i.c
  br i1 %or.cond.i, label %_RNvXs4_NtCs3u8M9drud7n_6approx11relative_eqdNtB5_10RelativeEq11relative_eq.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = fsub double %.val, %1
  %i.g = tail call double @llvm.fabs.f64(double %i.f) ; 2 uses
  %i.h = fcmp ugt double %i.g, 1.000000e-09
  br i1 %i.h, label %bb.d, label %_RNvXs4_NtCs3u8M9drud7n_6approx11relative_eqdNtB5_10RelativeEq11relative_eq.exit

bb.d:                                             ; preds = %bb.c
  %i.i = fcmp ogt double %i.d, %i.b
  %spec.store.select.i = select i1 %i.i, double %i.d, double %i.b
  %i.j = fmul double %spec.store.select.i, f0x3D06849B86A12B9B
  %i.k = fcmp ole double %i.g, %i.j
  br label %_RNvXs4_NtCs3u8M9drud7n_6approx11relative_eqdNtB5_10RelativeEq11relative_eq.exit

_RNvXs4_NtCs3u8M9drud7n_6approx11relative_eqdNtB5_10RelativeEq11relative_eq.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i = phi i1 [ %i.k, %bb.d ], [ true, %bb.a ], [ false, %bb.b ], [ true, %bb.c ]
  store double %1, ptr %0, align 8
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function3erf12erf_inv_impl(double noundef %0, double noundef %1, double noundef nofpclass(nan inf zero sub) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
end_hunk_0
