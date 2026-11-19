Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stat-rs/original/statrs-c9f133f833af4886.statrs.6131f3d7c2ead0b9-cgu.08?download=true
inline.NumInlined: 297
inline.NumDeleted: 118
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution8internal23newton_raphson_quantileNCNvXs3_NtB4_3chiNtB1l_3ChiINtB4_13ContinuousCDFddE11inverse_cdf0NCB1f_s_0NCB1f_s0_0EB6_:bb.a
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
  %.sroa.04.013.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.aj, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.0.012.epil.init = phi double [ 1.000000e+00, %.lr.ph ], [ %i.ao, %._crit_edge.loopexit.unr-lcssa ]
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
  %.sroa.0.0.lcssa = phi double [ 1.000000e+00, %.preheader ], [ %i.ao, %._crit_edge.loopexit.unr-lcssa ], [ %i.k, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load i64, ptr %i.l, align 8, !noundef !4
  %i.n = and i64 %i.m, 1
  %i.o = icmp eq i64 %i.n, 0
  %i.p = fneg double %.sroa.0.0.lcssa
  %i.q = select i1 %i.o, double %.sroa.0.0.lcssa, double %i.p
  ret double %i.q

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %.sroa.04.013 = phi i64 [ 0, %.lr.ph.new ], [ %i.aj, %bb.d ] ; 6 uses
  %.sroa.0.012 = phi double [ 1.000000e+00, %.lr.ph.new ], [ %i.ao, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.d ]
  %i.r = or disjoint i64 %.sroa.04.013, 1         ; 2 uses
  %i.s = mul i64 %.sroa.04.013, %.val7
  %i.t = getelementptr [8 x i8], ptr %.val9, i64 %i.s
  %i.u = getelementptr [8 x i8], ptr %i.t, i64 %.sroa.04.013
  %i.v = load double, ptr %i.u, align 8, !alias.scope !11, !noundef !4
  %i.w = fmul double %.sroa.0.012, %i.v
  %i.x = or disjoint i64 %.sroa.04.013, 2         ; 2 uses
  %i.y = mul i64 %i.r, %.val7
  %i.z = getelementptr [8 x i8], ptr %.val9, i64 %i.y
  %i.aa = getelementptr [8 x i8], ptr %i.z, i64 %i.r
  %i.ab = load double, ptr %i.aa, align 8, !alias.scope !11, !noundef !4
  %i.ac = fmul double %i.w, %i.ab
  %i.ad = or disjoint i64 %.sroa.04.013, 3        ; 2 uses
  %i.ae = mul i64 %i.x, %.val7
  %i.af = getelementptr [8 x i8], ptr %.val9, i64 %i.ae
  %i.ag = getelementptr [8 x i8], ptr %i.af, i64 %i.x
  %i.ah = load double, ptr %i.ag, align 8, !alias.scope !11, !noundef !4
  %i.ai = fmul double %i.ac, %i.ah
  %i.aj = add nuw i64 %.sroa.04.013, 4            ; 2 uses
  %i.ak = mul i64 %i.ad, %.val7
  %i.al = getelementptr [8 x i8], ptr %.val9, i64 %i.ak
  %i.am = getelementptr [8 x i8], ptr %i.al, i64 %i.ad
  %i.an = load double, ptr %i.am, align 8, !alias.scope !11, !noundef !4
  %i.ao = fmul double %i.ai, %i.an                ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCsbADZB03g5jP_8nalgebra6linalg2luINtB4_2LUdNtNtNtB8_4base9dimension3DynBP_E3newCs8lmMd0ZksV9_6statrs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !79
  invoke void @_RNvMNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB2_12RepeatNInnerTjjEE3newCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef 0, i64 noundef 0, i64 noundef %..i.i)
          to label %.noexc unwind label %bb.b

.body:                                            ; preds = %bb.e, %bb.j, %bb.b, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp176, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.r, %bb.b ], [ %i.ac, %bb.j ], [ %i.aa, %bb.e ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(40) %1) #15
          to label %bb.z unwind label %bb.y

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !80
  invoke void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecTjjEEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNBU_EE9from_iterCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
          to label %.noexc11 unwind label %bb.b

.noexc11:                                         ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !79
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noalias !80, !noundef !4 ; 2 uses
  %i.u = icmp ult i64 %i.t, 576460752303423488
  call void @llvm.assume(i1 %i.u)
  %i.v = icmp eq i64 %i.t, %..i.i
  br i1 %i.v, label %bb.d, label %bb.c, !prof !5

bb.c:                                             ; preds = %.noexc11
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 181 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #16
          to label %bb.i unwind label %bb.j, !noalias !80

bb.d:                                             ; preds = %.noexc11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !80
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !81, !noalias !80, !noundef !4 ; 2 uses
  %i.y = icmp ult i64 %i.x, 576460752303423488
  call void @llvm.assume(i1 %i.y)
  %i.z = icmp eq i64 %..i.i, %i.x
  br i1 %i.z, label %bb.l, label %bb.f, !prof !5

bb.e:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTjjEEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #15
          to label %.body unwind label %bb.h, !noalias !82

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @16, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #16
          to label %bb.g unwind label %bb.e, !noalias !83

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13, !noalias !82
  unreachable

bb.i:                                             ; preds = %bb.c
  unreachable

bb.j:                                             ; preds = %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTjjEEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #15
          to label %.body unwind label %bb.k, !noalias !80

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13, !noalias !80
  unreachable

bb.l:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !80
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  store i64 0, ptr %i.ae, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 %..i.i, ptr %.sroa.456.0..sroa_idx, align 8
  %i.af = icmp eq i64 %..i.i, 0
  br i1 %i.af, label %.loopexit, label %.preheader.split

.preheader.split:                                 ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.531.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.not5.i = icmp eq i64 %..i.i, 1
  br label %bb.m

.loopexit:                                        ; preds = %.backedge, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.at, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret void

bb.m:                                             ; preds = %.preheader.split, %.backedge
  %i.au = phi i64 [ 0, %.preheader.split ], [ %i.cu, %.backedge ] ; 5 uses
  %.sroa.02.085 = phi i64 [ 0, %.preheader.split ], [ %i.aw, %.backedge ] ; 20 uses
  %i.av = xor i64 %.sroa.02.085, -1
  %i.aw = add nuw i64 %.sroa.02.085, 1            ; 2 uses
  %.val.i = load i64, ptr %i.p, align 8, !alias.scope !84, !noundef !4 ; 5 uses
  %.val1.i = load i64, ptr %i.q, align 8, !alias.scope !84, !noundef !4
  %.not1.i.i.i.not = icmp ult i64 %.sroa.02.085, %.val1.i
  br i1 %.not1.i.i.i.not, label %bb.n, label %.invoke, !prof !5

bb.n:                                             ; preds = %bb.m
  %i.ax = sub i64 %.val.i, %.sroa.02.085
  %.val4.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !85, !nonnull !4, !noundef !4
  %i.ay = mul i64 %.val.i, %.sroa.02.085
  %i.az = getelementptr [8 x i8], ptr %.val4.i.i, i64 %i.ay ; 2 uses
  %i.ba = getelementptr [8 x i8], ptr %i.az, i64 %.sroa.02.085 ; 4 uses
  switch i64 %i.ax, label %.lr.ph.preheader.i [
    i64 0, label %.invoke
    i64 1, label %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit
  ], !prof !86

.lr.ph.preheader.i:                               ; preds = %bb.n
  %i.bb = load double, ptr %i.ba, align 8, !alias.scope !87, !noalias !88, !noundef !4
  %i.bc = call noundef double @llvm.fabs.f64(double %i.bb) ; 2 uses
  %i.bd = add i64 %.val.i, %i.av                  ; 3 uses
  %reass.sub = sub i64 %.val.i, %.sroa.02.085
  %xtraiter = and i64 %i.bd, 1
  %i.be = icmp eq i64 %reass.sub, 2
  br i1 %i.be, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.bd, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %.sroa.0.015.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %.sroa.0.1.i.1, %.lr.ph.i ]
  %.sroa.03.014.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %i.bk, %.lr.ph.i ] ; 4 uses
  %.sroa.0.01113.i = phi double [ %i.bc, %.lr.ph.preheader.i.new ], [ %.sroa.0.112.i.1, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.bf = add nuw i64 %.sroa.03.014.i, 1          ; 2 uses
  %i.bg = getelementptr [8 x i8], ptr %i.ba, i64 %.sroa.03.014.i
  %i.bh = load double, ptr %i.bg, align 8, !alias.scope !89, !noalias !88, !noundef !4
  %i.bi = call noundef double @llvm.fabs.f64(double %i.bh) ; 2 uses
  %i.bj = fcmp ogt double %i.bi, %.sroa.0.01113.i ; 2 uses
  %.sroa.0.112.i = select i1 %i.bj, double %i.bi, double %.sroa.0.01113.i ; 2 uses
  %.sroa.0.1.i = select i1 %i.bj, i64 %.sroa.03.014.i, i64 %.sroa.0.015.i
  %i.bk = add nuw i64 %.sroa.03.014.i, 2          ; 2 uses
  %i.bl = getelementptr [8 x i8], ptr %i.ba, i64 %i.bf
  %i.bm = load double, ptr %i.bl, align 8, !alias.scope !89, !noalias !88, !noundef !4
  %i.bn = call noundef double @llvm.fabs.f64(double %i.bm) ; 2 uses
  %i.bo = fcmp ogt double %i.bn, %.sroa.0.112.i   ; 2 uses
  %.sroa.0.112.i.1 = select i1 %i.bo, double %i.bn, double %.sroa.0.112.i ; 2 uses
  %.sroa.0.1.i.1 = select i1 %i.bo, i64 %i.bf, i64 %.sroa.0.1.i ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa, label %.lr.ph.i

_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.sroa.0.015.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %.sroa.0.1.i.1, %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa ]
  %.sroa.03.014.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %i.bk, %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.0.01113.i.epil.init = phi double [ %i.bc, %.lr.ph.preheader.i ], [ %.sroa.0.112.i.1, %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa ]
  %lcmp.mod192 = trunc i64 %i.bd to i1
  call void @llvm.assume(i1 %lcmp.mod192)
  %i.bp = getelementptr [8 x i8], ptr %i.ba, i64 %.sroa.03.014.i.epil.init
  %i.bq = load double, ptr %i.bp, align 8, !alias.scope !89, !noalias !88, !noundef !4
  %i.br = call noundef double @llvm.fabs.f64(double %i.bq)
  %i.bs = fcmp ogt double %i.br, %.sroa.0.01113.i.epil.init
  %.sroa.0.1.i.epil = select i1 %i.bs, i64 %.sroa.03.014.i.epil.init, i64 %.sroa.0.015.i.epil.init
  br label %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit

_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit: ; preds = %.lr.ph.i.epil.preheader, %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa, %bb.n
  %.sroa.0.0.lcssa.i = phi i64 [ 0, %bb.n ], [ %.sroa.0.1.i.1, %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa ], [ %.sroa.0.1.i.epil, %.lr.ph.i.epil.preheader ] ; 6 uses
  %i.bt = add i64 %.sroa.0.0.lcssa.i, %.sroa.02.085 ; 9 uses
  %i.bu = icmp ult i64 %i.bt, %.val.i
  br i1 %i.bu, label %bb.o, label %.invoke, !prof !90

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.us.i, %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.us.i, %_RNvMs9_NtNtCsbADZB03g5jP_8nalgebra4base6matrixINtB5_6MatrixdNtNtB7_9dimension3DynINtBY_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdBW_B1h_B1h_BW_EE4swapCs8lmMd0ZksV9_6statrs.exit.i, %_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit, %.noexc18, %bb.q, %bb.s, %.invoke, %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i.invoke, %bb.u
  %lpad.loopexit.split-lp176 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra6linalg20permutation_sequence19PermutationSequenceNtNtNtBI_4base9dimension3DynEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(40) %i.o) #15
          to label %.body unwind label %bb.y

bb.o:                                             ; preds = %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit
  %i.bv = getelementptr [8 x i8], ptr %i.az, i64 %i.bt
  %i.bw = load double, ptr %i.bv, align 8, !alias.scope !91, !noundef !4 ; 3 uses
  %i.bx = fcmp oeq double %i.bw, 0.000000e+00
  br i1 %i.bx, label %.backedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not = icmp eq i64 %.sroa.0.0.lcssa.i, 0
  br i1 %.not, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !92
  invoke void @_RINvMsl_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynB1c_INtNtB8_11vec_storage10VecStoragedB1c_B1c_EE14view_range_mutINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEB2z_ECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %.sroa.02.085, i64 noundef %.sroa.02.085)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %bb.q
  %i.by = fdiv double 1.000000e+00, %i.bw         ; 2 uses
  %.val13.i.i = load i64, ptr %i.j, align 8, !alias.scope !93, !noalias !92, !noundef !4 ; 2 uses
  %.val14.i.i = load i64, ptr %i.ap, align 8, !alias.scope !93, !noalias !92, !noundef !4
  %.val15.i.i = load i64, ptr %i.aq, align 8, !alias.scope !93, !noalias !92, !noundef !4 ; 3 uses
  %i.bz = add i64 %.val14.i.i, -1                 ; 2 uses
  %.val18.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !93, !noalias !92, !noundef !4 ; 2 uses
  %i.ca = getelementptr [8 x i8], ptr %.val18.i.i, i64 %.val15.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !92
  store ptr %.val18.i.i, ptr %i.i, align 8, !noalias !92
  store i64 %.val13.i.i, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !92
  store i64 %.val15.i.i, ptr %.sroa.520.0..sroa_idx.i, align 8, !noalias !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !92
  invoke void @_RINvMsl_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynINtB1e_5ConstKj1_EINtB6_14ViewStorageMutdB1c_B1x_B1x_B1c_EE14view_range_mutINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjENtB2N_9RangeFullECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef 1)
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc19:                                         ; preds = %.noexc18
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %.val7.i.i = load i64, ptr %i.as, align 8, !alias.scope !94, !noalias !92, !noundef !4 ; 10 uses
  %.not.i.i = icmp eq i64 %.val7.i.i, 0
  br i1 %.not.i.i, label %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc19
  %.val8.i.i = load ptr, ptr %i.h, align 8, !alias.scope !94, !noalias !92, !noundef !4 ; 2 uses
  %min.iters.check = icmp ult i64 %.val7.i.i, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %.val7.i.i, -4                 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.by, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cb = getelementptr [8 x i8], ptr %.val8.i.i, i64 %index ; 3 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 16     ; 2 uses
  %wide.load = load <2 x double>, ptr %i.cb, align 8, !alias.scope !95, !noalias !94
  %wide.load157 = load <2 x double>, ptr %i.cc, align 8, !alias.scope !95, !noalias !94
  %i.cd = fmul <2 x double> %broadcast.splat, %wide.load
  %i.ce = fmul <2 x double> %broadcast.splat, %wide.load157
  store <2 x double> %i.cd, ptr %i.cb, align 8, !alias.scope !95, !noalias !94
  store <2 x double> %i.ce, ptr %i.cc, align 8, !alias.scope !95, !noalias !94
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.val7.i.i, %n.vec
  br i1 %cmp.n, label %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %.sroa.05.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.05.010.i.i = phi i64 [ %i.cg, %scalar.ph ], [ %.sroa.05.010.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cg = add nuw i64 %.sroa.05.010.i.i, 1        ; 2 uses
  %i.ch = getelementptr [8 x i8], ptr %.val8.i.i, i64 %.sroa.05.010.i.i ; 2 uses
  %i.ci = load double, ptr %i.ch, align 8, !alias.scope !95, !noalias !94, !noundef !4
  %i.cj = fmul double %i.by, %i.ci
  store double %i.cj, ptr %i.ch, align 8, !alias.scope !95, !noalias !94
  %exitcond.not.i.i = icmp eq i64 %i.cg, %.val7.i.i
  br i1 %exitcond.not.i.i, label %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i, label %scalar.ph, !llvm.loop !47

_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i: ; preds = %scalar.ph, %middle.block, %.noexc19
  %i.ck = getelementptr i8, ptr %i.ca, i64 8
  %.not.i16 = icmp eq i64 %i.bz, 0
  br i1 %.not.i16, label %_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu10gauss_stepdNtNtNtB6_4base9dimension3DynBQ_INtNtBU_11vec_storage10VecStoragedBQ_BQ_EECs8lmMd0ZksV9_6statrs.exit, label %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.lr.ph.i

_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.lr.ph.i: ; preds = %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i
  %i.cl = add i64 %.val13.i.i, -1                 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, %.val7.i.i
  %.sroa.0.0.i9.i.i = load ptr, ptr %i.h, align 8, !noalias !92, !nonnull !4
  br i1 %i.cm, label %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.us.i, label %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i, !prof !5

_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.us.i: ; preds = %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.lr.ph.i, %.noexc20
  %.sroa.04.037.us.i = phi i64 [ %i.cs, %.noexc20 ], [ 0, %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.lr.ph.i ] ; 2 uses
  %i.cn = mul i64 %.sroa.04.037.us.i, %.val15.i.i ; 2 uses
  %i.co = getelementptr [8 x i8], ptr %i.ca, i64 %i.cn
  %i.cp = load double, ptr %i.co, align 8, !alias.scope !98, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !99
  %i.cq = fneg double %i.cp
  %i.cr = getelementptr [8 x i8], ptr %i.ck, i64 %i.cn ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !99
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cr) ]
  invoke void @_RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit11array_axcpyNtNtB4_6uninit4InitdECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 %i.cr, i64 noundef %.val7.i.i, double noundef %i.cq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.0.0.i9.i.i, i64 noundef %.val7.i.i, double noundef 1.000000e+00, double noundef 1.000000e+00, i64 noundef 1, i64 noundef 1, i64 noundef %.val7.i.i)
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc20:                                         ; preds = %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.us.i
  %i.cs = add nuw i64 %.sroa.04.037.us.i, 1       ; 2 uses
  %exitcond.not.i17 = icmp eq i64 %i.cs, %i.bz
  br i1 %exitcond.not.i17, label %_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu10gauss_stepdNtNtNtB6_4base9dimension3DynBQ_INtNtBU_11vec_storage10VecStoragedBQ_BQ_EECs8lmMd0ZksV9_6statrs.exit, label %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.us.i

_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i: ; preds = %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !99
  store i64 %i.cl, ptr %i.g, align 8, !noalias !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !99
  store i64 %.val7.i.i, ptr %i.f, align 8, !noalias !99
  br label %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i.invoke

_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu10gauss_stepdNtNtNtB6_4base9dimension3DynBQ_INtNtBU_11vec_storage10VecStoragedBQ_BQ_EECs8lmMd0ZksV9_6statrs.exit: ; preds = %.noexc20, %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !92
  br label %.backedge

bb.r:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.ct = icmp ult i64 %i.au, %..i.i
  br i1 %i.ct, label %bb.s, label %.invoke, !prof !5

.backedge:                                        ; preds = %_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu10gauss_stepdNtNtNtB6_4base9dimension3DynBQ_INtNtBU_11vec_storage10VecStoragedBQ_BQ_EECs8lmMd0ZksV9_6statrs.exit, %_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu15gauss_step_swapdNtNtNtB6_4base9dimension3DynBV_INtNtBZ_11vec_storage10VecStoragedBV_BV_EECs8lmMd0ZksV9_6statrs.exit, %bb.o
  %i.cu = phi i64 [ %i.au, %_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu10gauss_stepdNtNtNtB6_4base9dimension3DynBQ_INtNtBU_11vec_storage10VecStoragedBQ_BQ_EECs8lmMd0ZksV9_6statrs.exit ], [ %i.cx, %_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu15gauss_step_swapdNtNtNtB6_4base9dimension3DynBV_INtNtBZ_11vec_storage10VecStoragedBV_BV_EECs8lmMd0ZksV9_6statrs.exit ], [ %i.au, %bb.o ]
  %exitcond.not = icmp eq i64 %i.aw, %..i.i
  br i1 %exitcond.not, label %.loopexit, label %bb.m

bb.s:                                             ; preds = %bb.r
  %.val3.i24 = load ptr, ptr %i.ah, align 8, !alias.scope !100, !nonnull !4, !noundef !4
  %.sroa.0.0.i.i = select i1 %.not5.i, i64 0, i64 %i.au
  %i.cv = getelementptr [16 x i8], ptr %.val3.i24, i64 %.sroa.0.0.i.i ; 2 uses
  store i64 %.sroa.02.085, ptr %i.cv, align 8, !noalias !100
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.bt, ptr %i.cw, align 8, !noalias !100
  %i.cx = add nuw nsw i64 %i.au, 1                ; 2 uses
  store i64 %i.cx, ptr %i.ae, align 8, !alias.scope !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RINvMsl_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynB1c_INtNtB8_11vec_storage10VecStoragedB1c_B1c_EE14view_range_mutNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullINtB2B_7RangeTojEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %.sroa.02.085)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %.val7.i = load i64, ptr %i.n, align 8, !alias.scope !101, !noundef !4 ; 2 uses
  %.val8.i = load i64, ptr %i.ai, align 8, !alias.scope !101, !noundef !4 ; 8 uses
  %i.cy = icmp ult i64 %.sroa.02.085, %.val7.i
  %i.cz = icmp ult i64 %i.bt, %.val7.i
  %or.cond.i26 = and i1 %i.cy, %i.cz
  br i1 %or.cond.i26, label %bb.v, label %bb.u, !prof !90

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 62, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #14
          to label %.noexc31 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc31:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.t
  %.not57 = icmp eq i64 %.val8.i, 0
  br i1 %.not57, label %_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %bb.v
  %.val9.i29 = load ptr, ptr %i.aj, align 8, !alias.scope !101, !noundef !4 ; 8 uses
  %.val10.i = load i64, ptr %i.ak, align 8, !alias.scope !101, !noundef !4 ; 4 uses
  %min.iters.check176 = icmp ugt i64 %.val8.i, 7
  %i.da = icmp eq i64 %.val10.i, 1
  %or.cond = and i1 %min.iters.check176, %i.da
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph175.preheader

vector.memcheck:                                  ; preds = %.lr.ph.i28
  %2 = shl i64 %.sroa.02.085, 3                   ; 2 uses
  %3 = getelementptr i8, ptr %.val9.i29, i64 %2
  %4 = shl i64 %.val8.i, 3                        ; 2 uses
  %5 = getelementptr i8, ptr %.val9.i29, i64 %2
  %6 = getelementptr i8, ptr %5, i64 %4
  %7 = shl i64 %i.bt, 3                           ; 2 uses
  %8 = getelementptr i8, ptr %.val9.i29, i64 %7
  %9 = getelementptr i8, ptr %.val9.i29, i64 %4
  %10 = getelementptr i8, ptr %9, i64 %7
  %bound0 = icmp ult ptr %3, %10
  %bound1 = icmp ult ptr %8, %6
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph175.preheader, label %.lr.ph.i28.new

.lr.ph.i28.new:                                   ; preds = %vector.memcheck
  %unroll_iter196 = and i64 %.val8.i, -4          ; 3 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph.i28.new
  %niter197 = phi i64 [ 0, %.lr.ph.i28.new ], [ %niter197.next.1, %bb.w ] ; 2 uses
  %i.db = getelementptr [8 x i8], ptr %.val9.i29, i64 %niter197 ; 2 uses
  %i.dc = getelementptr [8 x i8], ptr %i.db, i64 %.sroa.02.085 ; 3 uses
  %i.dd = getelementptr [8 x i8], ptr %i.db, i64 %i.bt ; 3 uses
  %11 = getelementptr i8, ptr %i.dc, i64 16       ; 2 uses
  %wide.load181 = load <2 x i64>, ptr %i.dc, align 8, !alias.scope !102, !noalias !103
  %wide.load182 = load <2 x i64>, ptr %11, align 8, !alias.scope !102, !noalias !103
  %12 = getelementptr i8, ptr %i.dd, i64 16       ; 2 uses
  %wide.load183 = load <2 x i64>, ptr %i.dd, align 8, !alias.scope !104, !noalias !101
  %wide.load184 = load <2 x i64>, ptr %12, align 8, !alias.scope !104, !noalias !101
  store <2 x i64> %wide.load183, ptr %i.dc, align 8, !alias.scope !102, !noalias !103
  store <2 x i64> %wide.load184, ptr %11, align 8, !alias.scope !102, !noalias !103
  store <2 x i64> %wide.load181, ptr %i.dd, align 8, !alias.scope !104, !noalias !101
  store <2 x i64> %wide.load182, ptr %12, align 8, !alias.scope !104, !noalias !101
  %niter197.next.1 = add nuw i64 %niter197, 4     ; 2 uses
  %niter197.ncmp.1 = icmp eq i64 %niter197.next.1, %unroll_iter196
  br i1 %niter197.ncmp.1, label %middle.block186, label %bb.w, !llvm.loop !60

middle.block186:                                  ; preds = %bb.w
  %cmp.n187 = icmp eq i64 %.val8.i, %unroll_iter196
  br i1 %cmp.n187, label %_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit, label %scalar.ph175.preheader

scalar.ph175.preheader:                           ; preds = %vector.memcheck, %.lr.ph.i28, %middle.block186
  %.sroa.01.011.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i28 ], [ %unroll_iter196, %middle.block186 ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.011.i.ph, 1
  %xtraiter210 = and i64 %.val8.i, 1
  %lcmp.mod211.not = icmp eq i64 %xtraiter210, 0
  br i1 %lcmp.mod211.not, label %_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa, label %scalar.ph175.prol

scalar.ph175.prol:                                ; preds = %scalar.ph175.preheader
  %13 = or disjoint i64 %.sroa.01.011.i.ph, 1
  %14 = mul i64 %.sroa.01.011.i.ph, %.val10.i
  %15 = getelementptr [8 x i8], ptr %.val9.i29, i64 %14 ; 2 uses
  %16 = getelementptr [8 x i8], ptr %15, i64 %.sroa.02.085 ; 2 uses
  %17 = getelementptr [8 x i8], ptr %15, i64 %i.bt ; 2 uses
  %.sroa.0.0.copyload.i.i.i.prol = load i64, ptr %16, align 8, !noalias !101
  %18 = load i64, ptr %17, align 8, !noalias !101
  store i64 %18, ptr %16, align 8, !noalias !101
  store i64 %.sroa.0.0.copyload.i.i.i.prol, ptr %17, align 8, !noalias !101
  br label %_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa

_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa: ; preds = %scalar.ph175.prol, %scalar.ph175.preheader
  %.sroa.01.011.i.unr = phi i64 [ %.sroa.01.011.i.ph, %scalar.ph175.preheader ], [ %13, %scalar.ph175.prol ]
  %lcmp.mod194.not = icmp eq i64 %.val8.i, %.neg
  br i1 %lcmp.mod194.not, label %_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa, %.epil.preheader
  %.sroa.01.011.i.epil.init = phi i64 [ %25, %.epil.preheader ], [ %.sroa.01.011.i.unr, %_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa ] ; 3 uses
  %19 = add nuw i64 %.sroa.01.011.i.epil.init, 1
  %20 = mul i64 %.sroa.01.011.i.epil.init, %.val10.i
  %21 = getelementptr [8 x i8], ptr %.val9.i29, i64 %20 ; 2 uses
  %22 = getelementptr [8 x i8], ptr %21, i64 %.sroa.02.085 ; 2 uses
  %23 = getelementptr [8 x i8], ptr %21, i64 %i.bt ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %22, align 8, !noalias !101
  %24 = load i64, ptr %23, align 8, !noalias !101
  store i64 %24, ptr %22, align 8, !noalias !101
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %23, align 8, !noalias !101
  %25 = add nuw i64 %.sroa.01.011.i.epil.init, 2  ; 2 uses
  %i.de = mul i64 %19, %.val10.i
  %i.df = getelementptr [8 x i8], ptr %.val9.i29, i64 %i.de ; 2 uses
  %i.dg = getelementptr [8 x i8], ptr %i.df, i64 %.sroa.02.085 ; 2 uses
  %i.dh = getelementptr [8 x i8], ptr %i.df, i64 %i.bt ; 2 uses
  %.sroa.0.0.copyload.i.i.i.epil = load i64, ptr %i.dg, align 8, !noalias !101
  %i.di = load i64, ptr %i.dh, align 8, !noalias !101
  store i64 %i.di, ptr %i.dg, align 8, !noalias !101
  store i64 %.sroa.0.0.copyload.i.i.i.epil, ptr %i.dh, align 8, !noalias !101
  %exitcond.not.i30.1 = icmp eq i64 %25, %.val8.i
  br i1 %exitcond.not.i30.1, label %_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit, label %.epil.preheader, !llvm.loop !61

_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit: ; preds = %_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa, %.epil.preheader, %middle.block186, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !105
  invoke void @_RINvMsl_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynB1c_INtNtB8_11vec_storage10VecStoragedB1c_B1c_EE14view_range_mutINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEB2z_ECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %.sroa.02.085, i64 noundef %.sroa.02.085)
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc45:                                         ; preds = %_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit
  %i.dj = fdiv double 1.000000e+00, %i.bw         ; 2 uses
  %.val13.i.i32 = load i64, ptr %i.e, align 8, !alias.scope !106, !noalias !105, !noundef !4 ; 4 uses
  %.val14.i.i33 = load i64, ptr %i.al, align 8, !alias.scope !106, !noalias !105, !noundef !4
  %.val15.i.i34 = load i64, ptr %i.am, align 8, !alias.scope !106, !noalias !105, !noundef !4 ; 3 uses
  %i.dk = add i64 %.val14.i.i33, -1               ; 2 uses
  %.val18.i.i35 = load ptr, ptr %i.an, align 8, !alias.scope !106, !noalias !105, !noundef !4 ; 5 uses
  %i.dl = getelementptr [8 x i8], ptr %.val18.i.i35, i64 %.val15.i.i34 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !105
  store ptr %.val18.i.i35, ptr %i.d, align 8, !noalias !105
  store i64 %.val13.i.i32, ptr %.sroa.430.0..sroa_idx.i, align 8, !noalias !105
  store i64 %.val15.i.i34, ptr %.sroa.531.0..sroa_idx.i, align 8, !noalias !105
  %.not.i.i36 = icmp eq i64 %.val13.i.i32, 0
  br i1 %.not.i.i36, label %.invoke, label %bb.x, !prof !107

bb.x:                                             ; preds = %.noexc45
  %i.dm = icmp ult i64 %.sroa.0.0.lcssa.i, %.val13.i.i32
  br i1 %i.dm, label %_RNvMs9_NtNtCsbADZB03g5jP_8nalgebra4base6matrixINtB5_6MatrixdNtNtB7_9dimension3DynINtBY_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdBW_B1h_B1h_BW_EE4swapCs8lmMd0ZksV9_6statrs.exit.i, label %.invoke, !prof !90

.invoke:                                          ; preds = %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit, %bb.n, %bb.m, %bb.x, %.noexc45, %bb.r
  %i.dn = phi ptr [ @23, %.noexc45 ], [ @14, %bb.r ], [ @23, %bb.x ], [ @8, %bb.n ], [ @27, %bb.m ], [ @29, %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit ]
  %i.do = phi ptr [ inttoptr (i64 83 to ptr), %.noexc45 ], [ inttoptr (i64 81 to ptr), %bb.r ], [ inttoptr (i64 83 to ptr), %bb.x ], [ inttoptr (i64 71 to ptr), %bb.n ], [ inttoptr (i64 59 to ptr), %bb.m ], [ inttoptr (i64 55 to ptr), %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit ]
  %i.dp = phi ptr [ @24, %.noexc45 ], [ @15, %bb.r ], [ @25, %bb.x ], [ @10, %bb.n ], [ @28, %bb.m ], [ @26, %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull %i.dn, ptr noundef nonnull %i.do, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dp) #14
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs9_NtNtCsbADZB03g5jP_8nalgebra4base6matrixINtB5_6MatrixdNtNtB7_9dimension3DynINtBY_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdBW_B1h_B1h_BW_EE4swapCs8lmMd0ZksV9_6statrs.exit.i: ; preds = %bb.x
  %i.dq = getelementptr [8 x i8], ptr %.val18.i.i35, i64 %.sroa.0.0.lcssa.i ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %.val18.i.i35, align 8, !noalias !108
  %i.dr = load i64, ptr %i.dq, align 8, !noalias !108
  store i64 %i.dr, ptr %.val18.i.i35, align 8, !noalias !108
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %i.dq, align 8, !noalias !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !105
  invoke void @_RINvMsl_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynINtB1e_5ConstKj1_EINtB6_14ViewStorageMutdB1c_B1x_B1x_B1c_EE14view_range_mutINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjENtB2N_9RangeFullECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 1)
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc48:                                         ; preds = %_RNvMs9_NtNtCsbADZB03g5jP_8nalgebra4base6matrixINtB5_6MatrixdNtNtB7_9dimension3DynINtBY_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdBW_B1h_B1h_BW_EE4swapCs8lmMd0ZksV9_6statrs.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %.val7.i8.i = load i64, ptr %i.ao, align 8, !alias.scope !109, !noalias !105, !noundef !4 ; 10 uses
  %.not.i9.i = icmp eq i64 %.val7.i8.i, 0
  br i1 %.not.i9.i, label %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i41, label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %.noexc48
  %.val8.i.i38 = load ptr, ptr %i.c, align 8, !alias.scope !109, !noalias !105, !noundef !4 ; 2 uses
  %min.iters.check159 = icmp ult i64 %.val7.i8.i, 4
  br i1 %min.iters.check159, label %scalar.ph158.preheader, label %vector.ph160

vector.ph160:                                     ; preds = %.lr.ph.i.i37
  %n.vec161 = and i64 %.val7.i8.i, -4             ; 3 uses
  %broadcast.splatinsert162 = insertelement <2 x double> poison, double %i.dj, i64 0
  %broadcast.splat163 = shufflevector <2 x double> %broadcast.splatinsert162, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph160
  %index165 = phi i64 [ 0, %vector.ph160 ], [ %index.next168, %vector.body164 ] ; 2 uses
  %i.ds = getelementptr [8 x i8], ptr %.val8.i.i38, i64 %index165 ; 3 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 16     ; 2 uses
  %wide.load166 = load <2 x double>, ptr %i.ds, align 8, !alias.scope !110, !noalias !109
  %wide.load167 = load <2 x double>, ptr %i.dt, align 8, !alias.scope !110, !noalias !109
  %i.du = fmul <2 x double> %broadcast.splat163, %wide.load166
  %i.dv = fmul <2 x double> %broadcast.splat163, %wide.load167
  store <2 x double> %i.du, ptr %i.ds, align 8, !alias.scope !110, !noalias !109
  store <2 x double> %i.dv, ptr %i.dt, align 8, !alias.scope !110, !noalias !109
  %index.next168 = add nuw i64 %index165, 4       ; 2 uses
  %i.dw = icmp eq i64 %index.next168, %n.vec161
  br i1 %i.dw, label %middle.block169, label %vector.body164, !llvm.loop !72

middle.block169:                                  ; preds = %vector.body164
  %cmp.n170 = icmp eq i64 %.val7.i8.i, %n.vec161
  br i1 %cmp.n170, label %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i41, label %scalar.ph158.preheader

scalar.ph158.preheader:                           ; preds = %.lr.ph.i.i37, %middle.block169
  %.sroa.05.010.i.i39.ph = phi i64 [ 0, %.lr.ph.i.i37 ], [ %n.vec161, %middle.block169 ]
  br label %scalar.ph158

scalar.ph158:                                     ; preds = %scalar.ph158.preheader, %scalar.ph158
  %.sroa.05.010.i.i39 = phi i64 [ %i.dx, %scalar.ph158 ], [ %.sroa.05.010.i.i39.ph, %scalar.ph158.preheader ] ; 2 uses
  %i.dx = add nuw i64 %.sroa.05.010.i.i39, 1      ; 2 uses
  %i.dy = getelementptr [8 x i8], ptr %.val8.i.i38, i64 %.sroa.05.010.i.i39 ; 2 uses
  %i.dz = load double, ptr %i.dy, align 8, !alias.scope !110, !noalias !109, !noundef !4
  %i.ea = fmul double %i.dj, %i.dz
  store double %i.ea, ptr %i.dy, align 8, !alias.scope !110, !noalias !109
  %exitcond.not.i.i40 = icmp eq i64 %i.dx, %.val7.i8.i
  br i1 %exitcond.not.i.i40, label %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i41, label %scalar.ph158, !llvm.loop !73

_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i41: ; preds = %scalar.ph158, %middle.block169, %.noexc48
  %i.eb = getelementptr i8, ptr %i.dl, i64 8
  %.not.i42 = icmp eq i64 %i.dk, 0
  br i1 %.not.i42, label %_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu15gauss_step_swapdNtNtNtB6_4base9dimension3DynBV_INtNtBZ_11vec_storage10VecStoragedBV_BV_EECs8lmMd0ZksV9_6statrs.exit, label %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.lr.ph.i

_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.lr.ph.i: ; preds = %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i41
  %i.ec = add i64 %.val13.i.i32, -1               ; 2 uses
  %.sroa.0.0.i9.i.i43 = load ptr, ptr %i.c, align 8, !noalias !105, !nonnull !4
  %i.ed = icmp eq i64 %i.ec, %.val7.i8.i
  br i1 %i.ed, label %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.us.i, label %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i, !prof !5

_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.us.i: ; preds = %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.lr.ph.i, %.noexc49
  %.sroa.04.049.us.i = phi i64 [ %i.en, %.noexc49 ], [ 0, %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.lr.ph.i ] ; 2 uses
  %i.ee = mul i64 %.sroa.04.049.us.i, %.val15.i.i34 ; 2 uses
  %i.ef = getelementptr [8 x i8], ptr %i.dl, i64 %i.ee ; 3 uses
  %i.eg = getelementptr [8 x i8], ptr %i.eb, i64 %i.ee ; 3 uses
  %i.eh = getelementptr [8 x i8], ptr %i.eg, i64 %.sroa.0.0.lcssa.i
  %i.ei = getelementptr i8, ptr %i.eh, i64 -8     ; 2 uses
  %i.ej = load double, ptr %i.ef, align 8, !noundef !4
  %i.ek = load i64, ptr %i.ei, align 8
  store i64 %i.ek, ptr %i.ef, align 8
  store double %i.ej, ptr %i.ei, align 8
  %i.el = load double, ptr %i.ef, align 8, !alias.scope !111, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !112
  %i.em = fneg double %i.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !112
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eg) ]
  invoke void @_RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit11array_axcpyNtNtB4_6uninit4InitdECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 %i.eg, i64 noundef %.val7.i8.i, double noundef %i.em, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.0.0.i9.i.i43, i64 noundef %.val7.i8.i, double noundef 1.000000e+00, double noundef 1.000000e+00, i64 noundef 1, i64 noundef 1, i64 noundef %.val7.i8.i)
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc49:                                         ; preds = %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.us.i
  %i.en = add nuw i64 %.sroa.04.049.us.i, 1       ; 2 uses
  %exitcond.not.i44 = icmp eq i64 %i.en, %i.dk
  br i1 %exitcond.not.i44, label %_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu15gauss_step_swapdNtNtNtB6_4base9dimension3DynBV_INtNtBZ_11vec_storage10VecStoragedBV_BV_EECs8lmMd0ZksV9_6statrs.exit, label %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.us.i

_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i: ; preds = %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.lr.ph.i
  %i.eo = getelementptr [8 x i8], ptr %i.dl, i64 %.sroa.0.0.lcssa.i ; 2 uses
  %i.ep = load double, ptr %i.dl, align 8, !noundef !4
  %i.eq = load i64, ptr %i.eo, align 8
  store i64 %i.eq, ptr %i.dl, align 8
  store double %i.ep, ptr %i.eo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !112
  store i64 %i.ec, ptr %i.b, align 8, !noalias !112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !112
  store i64 %.val7.i8.i, ptr %i.a, align 8, !noalias !112
  br label %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i.invoke

_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i.invoke: ; preds = %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i, %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i
  %i.er = phi ptr [ %i.b, %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i ], [ %i.g, %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i ]
  %i.es = phi ptr [ %i.a, %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i ], [ %i.f, %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.er, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.es, ptr noundef nonnull @0, ptr nonnull inttoptr (i64 63 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
          to label %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i.cont: ; preds = %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i.invoke
  unreachable

_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu15gauss_step_swapdNtNtNtB6_4base9dimension3DynBV_INtNtBZ_11vec_storage10VecStoragedBV_BV_EECs8lmMd0ZksV9_6statrs.exit: ; preds = %.noexc49, %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !105
  br label %.backedge

bb.y:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.z:                                             ; preds = %.body
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
  %i.a = fcmp ugt double %0, 5.000000e-01
  br i1 %i.a, label %bb.b, label %.lr.ph.i.i

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp ult double %1, 2.500000e-01
  br i1 %i.b, label %bb.c, label %.lr.ph.i.i9

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.c = fmul double %0, 0.000000e+00             ; 2 uses
  %i.d = fadd ninf double %i.c, f0x3F4D0A1F35042971
  %i.e = fmul double %0, %i.d
  %i.f = fadd double %i.e, f0xBF631E9F345A5407
  %i.g = fmul double %0, %i.f
  %i.h = fadd double %i.g, f0x3FB45BF89ED1435A
  %i.i = fmul double %0, %i.h
  %i.j = fadd double %i.i, f0xBFAB00B09AD5FCC2
  %i.k = fmul double %0, %i.j
  %i.l = fadd double %i.k, f0xBFE6CB12599BCF34
  %i.m = fmul double %0, %i.l
  %i.n = fadd double %i.m, f0x3FE531CC40A0CB9B
  %i.o = fmul double %0, %i.n
  %i.p = fadd double %i.o, f0x3FF8FED5C4A83891
  %i.q = fmul double %0, %i.p
  %i.r = fadd double %i.q, f0xBFF90D4B3D603AB0
  %i.s = fmul double %0, %i.r
  %i.t = fadd double %i.s, f0xBFEF0A48043E2A93
  %i.u = fmul double %0, %i.t
  %i.v = fadd double %i.u, 1.000000e+00
  %i.w = fadd ninf double %i.c, f0xBF761171AA645978
  %i.x = fmul double %0, %i.w
  %i.y = fadd double %i.x, f0x3F80D940F95301EA
  %i.z = fmul double %0, %i.y
  %i.aa = fadd double %i.z, f0x3F9683FCD9C8B669
  %i.ab = fmul double %0, %i.aa
  %i.ac = fadd double %i.ab, f0xBFA2B87D71E0BB7B
  %i.ad = fmul double %0, %i.ac
  %i.ae = fadd double %i.ad, f0xBF89FE95EA93671F
  %i.af = fmul double %0, %i.ae
  %i.ag = fadd double %i.af, f0x3FA124609D52E43D
  %i.ah = fmul double %0, %i.ag
  %i.ai = fadd double %i.ah, f0xBF8123A25E87EB2F
  %i.aj = fmul double %0, %i.ai
  %i.ak = fadd double %i.aj, f0xBF40ABF8EAD36EF0
  %i.al = fadd nnan double %0, 1.000000e+01
  %i.am = fmul double %0, %i.al                   ; 2 uses
  %i.an = fdiv double %i.ak, %i.v
  %i.ao = fmul double %i.am, f0x3FB6D15200000000
  %i.ap = fmul double %i.am, %i.an
  %i.aq = fadd double %i.ao, %i.ap
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.ar = tail call double @llvm.log.f64(double %1)
  %i.as = fneg double %i.ar
  %i.at = tail call double @llvm.sqrt.f64(double %i.as) ; 19 uses
  %i.au = fcmp olt double %i.at, 3.000000e+00
  br i1 %i.au, label %.lr.ph.i.i19, label %bb.d

.lr.ph.i.i9:                                      ; preds = %bb.b
  %i.av = fadd double %1, -2.500000e-01           ; 17 uses
  %i.aw = fmul double %i.av, 0.000000e+00         ; 2 uses
  %i.ax = fadd ninf double %i.aw, f0x3FFB89D220507D2A
  %i.ay = fmul double %i.av, %i.ax
  %i.az = fadd double %i.ay, f0xC036A4C9163998B3
  %i.ba = fmul double %i.av, %i.az
  %i.bb = fadd double %i.ba, f0x4025A75B13A6A40E
  %i.bc = fmul double %i.av, %i.bb
  %i.bd = fadd double %i.bc, f0x404847CC44FEEAA8
  %i.be = fmul double %i.av, %i.bd
  %i.bf = fadd double %i.be, f0xC03424ACEA25FADD
  %i.bg = fmul double %i.av, %i.bf
  %i.bh = fadd double %i.bg, f0xC03CA92B5F294546
  %i.bi = fmul double %i.av, %i.bh
  %i.bj = fadd double %i.bi, f0x400FC54FE55111D6
  %i.bk = fmul double %i.av, %i.bj
  %i.bl = fadd double %i.bk, f0x4018F876F28C9A27
  %i.bm = fmul double %i.av, %i.bl
  %i.bn = fadd double %i.bm, 1.000000e+00
  %i.bo = fadd ninf double %i.aw, f0xC00D6018EDA922CF
  %i.bp = fmul double %i.av, %i.bo
  %i.bq = fadd double %i.bp, f0x40352124A7690565
  %i.br = fmul double %i.av, %i.bq
  %i.bs = fadd double %i.br, f0x40317204D0E21FA4
  %i.bt = fmul double %i.av, %i.bs
  %i.bu = fadd double %i.bt, f0xC04651B199C97F30
  %i.bv = fmul double %i.av, %i.bu
  %i.bw = fadd double %i.bv, f0xC032D9DF6213FE8E
  %i.bx = fmul double %i.av, %i.bw
  %i.by = fadd double %i.bx, f0x4031A50D03CD26E5
  %i.bz = fmul double %i.av, %i.by
  %i.ca = fadd double %i.bz, f0x4020BDB29B3ACB95
  %i.cb = fmul double %i.av, %i.ca
  %i.cc = fadd double %i.cb, f0x3FBAF2A049071BEC
  %i.cd = fmul double %i.av, %i.cc
  %i.ce = fadd double %i.cd, f0xBFC9E95759006C20
  %i.cf = tail call nnan double @llvm.log.f64(double %1)
  %i.cg = fmul nnan double %i.cf, -2.000000e+00
  %i.ch = tail call double @llvm.sqrt.f64(double %i.cg)
  %i.ci = fdiv double %i.ce, %i.bn
  %i.cj = fadd double %i.ci, f0x4001FEF000000000
  %i.ck = fdiv double %i.ch, %i.cj
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.cl = fcmp olt double %i.at, 6.000000e+00
  br i1 %i.cl, label %.lr.ph.i.i29, label %bb.e

.lr.ph.i.i19:                                     ; preds = %bb.c
  %i.cm = fadd double %i.at, -1.125000e+00        ; 18 uses
  %i.cn = tail call double @llvm.copysign.f64(double 0.000000e+00, double %i.cm) ; 2 uses
  %i.co = fadd nnan ninf double %i.cn, f0x3F86A63A5FC07442
  %i.cp = fmul nnan double %i.cm, %i.co
  %i.cq = fadd nnan double %i.cp, f0x3FC37D65D8A9AAFB
  %i.cr = fmul double %i.cm, %i.cq
  %i.cs = fadd double %i.cr, f0x3FEB29D095870405
  %i.ct = fmul double %i.cm, %i.cs
  %i.cu = fadd double %i.ct, f0x4004BE80DBDD1285
  %i.cv = fmul double %i.cm, %i.cu
  %i.cw = fadd double %i.cv, f0x40131D262C304C04
  %i.cx = fmul double %i.cm, %i.cw
  %i.cy = fadd double %i.cx, f0x401586D807362921
  %i.cz = fmul double %i.cm, %i.cy
  %i.da = fadd double %i.cz, f0x400BBAE36A458F85
  %i.db = fmul double %i.cm, %i.da
  %i.dc = fadd double %i.db, 1.000000e+00
  %i.dd = fadd nnan ninf double %i.cn, f0xBE076775588F330D
  %i.de = fmul nnan double %i.cm, %i.dd
  %i.df = fadd nnan double %i.de, f0x3E5EA036D72C22E6
  %i.dg = fmul double %i.cm, %i.df
  %i.dh = fadd double %i.dg, f0xBEA6CC9099E64C30
  %i.di = fmul double %i.cm, %i.dh
  %i.dj = fadd double %i.di, f0x3F6193A0D5D7A83A
  %i.dk = fmul double %i.cm, %i.dj
  %i.dl = fadd double %i.dk, f0x3F9DB650C5A8D10C
  %i.dm = fmul double %i.cm, %i.dl
  %i.dn = fadd double %i.dm, f0x3FC2498C84F05B27
  %i.do = fmul double %i.cm, %i.dn
  %i.dp = fadd double %i.do, f0x3FD59E473CAC176C
  %i.dq = fmul double %i.cm, %i.dp
  %i.dr = fadd double %i.dq, f0x3FD8C5EA18F53827
  %i.ds = fmul double %i.cm, %i.dr
  %i.dt = fadd double %i.ds, f0x3FBDF5B03622778B
  %i.du = fmul double %i.cm, %i.dt
  %i.dv = fadd double %i.du, f0xBFC4F7340DFCC581
  %i.dw = fmul double %i.cm, %i.dv
  %i.dx = fadd double %i.dw, f0xBFC0C7F9D7DD7157
  %i.dy = fdiv double %i.dx, %i.dc
  %i.dz = fmul nnan double %i.at, f0x3FE9D4C000000000
  %i.ea = fmul double %i.at, %i.dy
  %i.eb = fadd double %i.dz, %i.ea
  br label %bb.g
end_hunk_0
begin_hunk_1_@_RNvNtNtCs8lmMd0ZksV9_6statrs8function3erf8erf_impl:bb.a
  %i.kc = fadd double %i.kb, 1.000000e+00
  %i.kd = fadd nnan ninf double %i.jt, f0x3DD1F675D5233006
  %i.ke = fmul nnan double %i.js, %i.kd
  %i.kf = fadd nnan double %i.ke, f0x3E4555152B908C58
  %i.kg = fmul double %i.js, %i.kf
  %i.kh = fadd double %i.kg, f0x3E9CFA1C8F541561
  %i.ki = fmul double %i.js, %i.kh
  %i.kj = fadd double %i.ki, f0x3ED14D4BBF614388
  %i.kk = fmul double %i.js, %i.kj
  %i.kl = fadd double %i.kk, f0xBF0E9D0D0B373EE1
  %i.km = fdiv double %i.kl, %i.kc
  br label %bb.r

.lr.ph.i.i109:                                    ; preds = %bb.q
  %i.kn = fadd double %0, -8.500000e+01           ; 7 uses
  %i.ko = tail call double @llvm.copysign.f64(double 0.000000e+00, double %i.kn) ; 2 uses
  %i.kp = fadd nnan ninf double %i.ko, f0x3EC042D55E53F73E
  %i.kq = fmul nnan double %i.kn, %i.kp
  %i.kr = fadd nnan double %i.kq, f0x3F3EAA631AAAEB2B
  %i.ks = fmul double %i.kn, %i.kr
  %i.kt = fadd double %i.ks, f0x3FA33782A011B308
  %i.ku = fmul double %i.kn, %i.kt
  %i.kv = fadd double %i.ku, 1.000000e+00
  %i.kw = fadd nnan ninf double %i.ko, f0x3DD098452B9A172F
  %i.kx = fmul nnan double %i.kn, %i.kw
  %i.ky = fadd nnan double %i.kx, f0x3E4F4B818AEB0BF7
  %i.kz = fmul double %i.kn, %i.ky
  %i.la = fadd double %i.kz, f0x3EA4DFB2F8E2F0ED
  %i.lb = fmul double %i.kn, %i.la
  %i.lc = fadd double %i.lb, f0xBEE08D1E2C7700D9
  %i.ld = fdiv double %i.lc, %i.kv
  br label %bb.r

.lr.ph.i.i119:                                    ; preds = %bb.q
  %i.le = fadd double %0, -6.000000e+01           ; 8 uses
  %i.lf = tail call double @llvm.copysign.f64(double 0.000000e+00, double %i.le) ; 2 uses
  %i.lg = fadd nnan ninf double %i.lf, f0x3CC3475E9F0DF0D7
  %i.lh = fmul nnan double %i.le, %i.lg
  %i.li = fadd nnan double %i.lh, f0x3ED6B111B37D0F96
  %i.lj = fmul double %i.le, %i.li
  %i.lk = fadd double %i.lj, f0x3F4E5F3333C513BB
  %i.ll = fmul double %i.le, %i.lk
  %i.lm = fadd double %i.ll, f0x3FAB091FDDC6C88F
  %i.ln = fmul double %i.le, %i.lm
  %i.lo = fadd double %i.ln, 1.000000e+00
  %i.lp = fadd nnan ninf double %i.lf, f0x3DF5D108FF92D02C
  %i.lq = fmul nnan double %i.le, %i.lp
  %i.lr = fadd nnan double %i.lq, f0x3E6D3356D558BF09
  %i.ls = fmul double %i.le, %i.lr
  %i.lt = fadd double %i.ls, f0x3EBA6192D4306610
  %i.lu = fmul double %i.le, %i.lt
  %i.lv = fadd double %i.lu, f0xBEF4999FB48AB20A
  %i.lw = fdiv double %i.lv, %i.lo
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i9, %.lr.ph.i.i29, %.lr.ph.i.i49, %.lr.ph.i.i69, %.lr.ph.i.i89, %.lr.ph.i.i109, %.lr.ph.i.i119, %.lr.ph.i.i99, %.lr.ph.i.i79, %.lr.ph.i.i59, %.lr.ph.i.i39, %.lr.ph.i.i19, %.lr.ph.i.i
  %.sroa.03.0 = phi double [ f0x3FD6047E2008B773, %.lr.ph.i.i ], [ f0x3FDAE121A0053AF5, %.lr.ph.i.i9 ], [ f0x3FDF59E83FFA28EC, %.lr.ph.i.i19 ], [ f0x3FE103FD8005E540, %.lr.ph.i.i29 ], [ f0x3FE19162E001DA61, %.lr.ph.i.i39 ], [ f0x3FE1D45EC0040581, %.lr.ph.i.i49 ], [ f0x3FE1F38DFFFE14A8, %.lr.ph.i.i59 ], [ f0x3FE201393FFA8769, %.lr.ph.i.i69 ], [ f0x3FE207DCE000B652, %.lr.ph.i.i79 ], [ f0x3FE20B0A7FFC32C3, %.lr.ph.i.i89 ], [ f0x3FE20CB87FFF37DB, %.lr.ph.i.i99 ], [ f0x3FE20D5C400153BB, %.lr.ph.i.i119 ], [ f0x3FE20D95FFFB0541, %.lr.ph.i.i109 ]
  %.sroa.02.0 = phi double [ %i.ae, %.lr.ph.i.i ], [ %i.bi, %.lr.ph.i.i9 ], [ %i.co, %.lr.ph.i.i19 ], [ %i.ds, %.lr.ph.i.i29 ], [ %i.ey, %.lr.ph.i.i39 ], [ %i.ga, %.lr.ph.i.i49 ], [ %i.ha, %.lr.ph.i.i59 ], [ %i.hy, %.lr.ph.i.i69 ], [ %i.iu, %.lr.ph.i.i79 ], [ %i.jq, %.lr.ph.i.i89 ], [ %i.km, %.lr.ph.i.i99 ], [ %i.lw, %.lr.ph.i.i119 ], [ %i.ld, %.lr.ph.i.i109 ]
  %i.lx = fneg double %0
  %i.ly = fmul nnan double %0, %i.lx
  %i.lz = tail call double @llvm.exp.f64(double %i.ly)
  %i.ma = fdiv double %i.lz, %0                   ; 2 uses
  %i.mb = fmul nnan double %i.ma, %.sroa.03.0
  %i.mc = fmul double %i.ma, %.sroa.02.0
  %i.md = fadd double %i.mb, %i.mc
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %.lr.ph.i.i129, %bb.t, %bb.r
  %.sroa.0.0 = phi double [ %i.nn, %bb.t ], [ %i.nk, %.lr.ph.i.i129 ], [ %i.md, %bb.r ], [ 0.000000e+00, %bb.d ] ; 3 uses
  %i.me = fcmp ult double %0, 5.000000e-01        ; 2 uses
  br i1 %1, label %bb.v, label %bb.u

.lr.ph.i.i129:                                    ; preds = %bb.e
  %i.mf = fmul nnan double %0, f0xBF442E8CBA744654
  %i.mg = fadd nnan double %i.mf, f0x3F70B7ED144F85E0
  %i.mh = fmul nnan double %0, %i.mg
  %i.mi = fadd nnan double %i.mh, f0xBF88947BDCCF6D81
  %i.mj = fmul nnan double %0, %i.mi
  %i.mk = fadd nnan double %i.mj, f0x3FB0C6D4279A8C98
  %i.ml = fmul nnan double %0, %i.mk
  %i.mm = fadd nnan double %i.ml, f0xBFB58D6AF6B0D104
  %i.mn = fmul nnan double %0, %i.mm
  %i.mo = fadd nnan double %i.mn, f0x3FDA671AA40339A7
  %i.mp = fmul nnan double %0, %i.mo
  %i.mq = fadd nnan double %i.mp, f0xBFCBEA50922A4F87
  %i.mr = fmul nnan double %0, %i.mq
  %i.ms = fadd double %i.mr, 1.000000e+00
  %i.mt = fmul nnan double %0, f0x3F4C8FE6D17A0F95
  %i.mu = fadd nnan double %i.mt, f0xBF744768787A10DB
  %i.mv = fmul nnan double %0, %i.mu
  %i.mw = fadd nnan double %i.mv, f0x3F7CBD686C3F8617
  %i.mx = fmul nnan double %0, %i.mw
  %i.my = fadd nnan double %i.mx, f0xBFA58F4D4B908133
  %i.mz = fmul nnan double %0, %i.my
  %i.na = fadd nnan double %i.mz, f0x3FB4ED30DA5E06CF
  %i.nb = fmul nnan double %0, %i.na
  %i.nc = fadd nnan double %i.nb, f0xBFD7FB9D5776CC6F
  %i.nd = fmul nnan double %0, %i.nc
  %i.ne = fadd nnan double %i.nd, f0xBF48260A19370C5D
  %i.nf = fmul nnan double %0, %i.ne
  %i.ng = fadd nnan double %i.nf, f0x3F6BAEA08536DA23
  %i.nh = fmul nnan double %0, 1.125000e+00
  %i.ni = fmul nnan double %0, %i.ng
  %i.nj = fdiv double %i.ni, %i.ms
  %i.nk = fadd double %i.nh, %i.nj
  br label %bb.s

bb.t:                                             ; preds = %bb.e
  %i.nl = fmul nnan double %0, 1.125000e+00
  %i.nm = fmul nnan double %0, f0x3F6BAEA08536DA23
  %i.nn = fadd double %i.nl, %i.nm
  br label %bb.s

bb.u:                                             ; preds = %bb.s
  br i1 %i.me, label %common.ret193, label %bb.w

bb.v:                                             ; preds = %bb.s
  br i1 %i.me, label %bb.w, label %common.ret193

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.no = fsub double 1.000000e+00, %.sroa.0.0
  br label %common.ret193

common.ret193:                                    ; preds = %bb.u, %bb.w, %bb.v, %bb.aa, %bb.z, %bb.x
  %common.ret193.op = phi double [ %i.nx, %bb.aa ], [ %i.nr, %bb.x ], [ %i.nv, %bb.z ], [ %.sroa.0.0, %bb.v ], [ %.sroa.0.0, %bb.u ], [ %i.no, %bb.w ]
  ret double %common.ret193.op

bb.x:                                             ; preds = %bb.c
  %i.np = fneg double %0
  %i.nq = tail call fastcc noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function3erf8erf_impl(double noundef %i.np, i1 noundef zeroext false)
  %i.nr = fneg double %i.nq
  br label %common.ret193

bb.y:                                             ; preds = %bb.c
  %i.ns = fcmp olt double %0, -5.000000e-01
  %i.nt = fneg double %0                          ; 2 uses
  br i1 %i.ns, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.nu = tail call fastcc noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function3erf8erf_impl(double noundef %i.nt, i1 noundef zeroext false)
  %i.nv = fadd double %i.nu, 1.000000e+00
  br label %common.ret193

bb.aa:                                            ; preds = %bb.y
  %i.nw = tail call fastcc noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function3erf8erf_impl(double noundef %i.nt, i1 noundef zeroext true)
  %i.nx = fsub double 2.000000e+00, %i.nw
  br label %common.ret193
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function3erf8erfc_inv(double noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = fcmp ugt double %0, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp ult double %0, 2.000000e+00
  br i1 %i.b, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = fcmp ogt double %0, 1.000000e+00
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = fsub double 1.000000e+00, %0
  %i.e = tail call fastcc noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function3erf12erf_inv_impl(double noundef %i.d, double noundef %0, double noundef 1.000000e+00)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = fadd double %0, -1.000000e+00
  %i.g = fsub double 2.000000e+00, %0
  %i.h = tail call fastcc noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function3erf12erf_inv_impl(double noundef %i.f, double noundef %i.g, double noundef -1.000000e+00)
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.e, %bb.d
  %.sroa.0.0 = phi double [ %i.e, %bb.d ], [ +inf, %bb.a ], [ %i.h, %bb.e ], [ -inf, %bb.b ]
  ret double %.sroa.0.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function8evaluate10polynomial(double noundef %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 1152921504606846976) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterdENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolddNCNvNtNtCs8lmMd0ZksV9_6statrs8function8evaluate10polynomial0EB1W_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  %i.c = add nsw i64 %.idx, -8                    ; 2 uses
  %i.d = lshr exact i64 %i.c, 3
  %i.e = add nuw nsw i64 %i.d, 1
  %xtraiter = and i64 %i.e, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.0.011.i.prol = phi double [ %i.h, %.lr.ph.i.prol ], [ 0.000000e+00, %.lr.ph.i.preheader ]
  %.sroa.2.010.i.prol = phi ptr [ %i.f, %.lr.ph.i.prol ], [ %i.b, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.f = getelementptr inbounds i8, ptr %.sroa.2.010.i.prol, i64 -8 ; 3 uses
  %.val5.i.prol = load double, ptr %i.f, align 8, !noalias !116, !noundef !4
  %i.g = fmul double %0, %.sroa.0.011.i.prol
  %i.h = fadd double %i.g, %.val5.i.prol          ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !115

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph.i.preheader ], [ %i.h, %.lr.ph.i.prol ]
  %.sroa.0.011.i.unr = phi double [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.h, %.lr.ph.i.prol ]
  %.sroa.2.010.i.unr = phi ptr [ %i.b, %.lr.ph.i.preheader ], [ %i.f, %.lr.ph.i.prol ]
  %i.i = icmp ult i64 %i.c, 56
  br i1 %i.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterdENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolddNCNvNtNtCs8lmMd0ZksV9_6statrs8function8evaluate10polynomial0EB1W_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.0.011.i = phi double [ %i.ag, %.lr.ph.i ], [ %.sroa.0.011.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.2.010.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.sroa.2.010.i.unr, %.lr.ph.i.prol.loopexit ] ; 8 uses
  %i.j = getelementptr inbounds i8, ptr %.sroa.2.010.i, i64 -8
  %.val5.i = load double, ptr %i.j, align 8, !noalias !116, !noundef !4
  %i.k = fmul double %0, %.sroa.0.011.i
  %i.l = fadd double %i.k, %.val5.i
  %i.m = getelementptr inbounds i8, ptr %.sroa.2.010.i, i64 -16
  %.val5.i.1 = load double, ptr %i.m, align 8, !noalias !116, !noundef !4
  %i.n = fmul double %0, %i.l
  %i.o = fadd double %i.n, %.val5.i.1
  %i.p = getelementptr inbounds i8, ptr %.sroa.2.010.i, i64 -24
  %.val5.i.2 = load double, ptr %i.p, align 8, !noalias !116, !noundef !4
  %i.q = fmul double %0, %i.o
  %i.r = fadd double %i.q, %.val5.i.2
  %i.s = getelementptr inbounds i8, ptr %.sroa.2.010.i, i64 -32
  %.val5.i.3 = load double, ptr %i.s, align 8, !noalias !116, !noundef !4
  %i.t = fmul double %0, %i.r
  %i.u = fadd double %i.t, %.val5.i.3
  %i.v = getelementptr inbounds i8, ptr %.sroa.2.010.i, i64 -40
  %.val5.i.4 = load double, ptr %i.v, align 8, !noalias !116, !noundef !4
  %i.w = fmul double %0, %i.u
  %i.x = fadd double %i.w, %.val5.i.4
  %i.y = getelementptr inbounds i8, ptr %.sroa.2.010.i, i64 -48
  %.val5.i.5 = load double, ptr %i.y, align 8, !noalias !116, !noundef !4
  %i.z = fmul double %0, %i.x
  %i.aa = fadd double %i.z, %.val5.i.5
  %i.ab = getelementptr inbounds i8, ptr %.sroa.2.010.i, i64 -56
  %.val5.i.6 = load double, ptr %i.ab, align 8, !noalias !116, !noundef !4
  %i.ac = fmul double %0, %i.aa
  %i.ad = fadd double %i.ac, %.val5.i.6
  %i.ae = getelementptr inbounds i8, ptr %.sroa.2.010.i, i64 -64 ; 3 uses
  %.val5.i.7 = load double, ptr %i.ae, align 8, !noalias !116, !noundef !4
  %i.af = fmul double %0, %i.ad
  %i.ag = fadd double %i.af, %.val5.i.7           ; 2 uses
  %i.ah = icmp eq ptr %1, %i.ae
  br i1 %i.ah, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterdENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolddNCNvNtNtCs8lmMd0ZksV9_6statrs8function8evaluate10polynomial0EB1W_.exit, label %.lr.ph.i

_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterdENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolddNCNvNtNtCs8lmMd0ZksV9_6statrs8function8evaluate10polynomial0EB1W_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %.sroa.0.0.lcssa.i = phi double [ 0.000000e+00, %bb.a ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.ag, %.lr.ph.i ]
  ret double %.sroa.0.0.lcssa.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -2, 2) i8 @_RNvXs1_NtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nanINtB5_6NonNandENtNtCs3oUPovFnLWP_4core3cmp10PartialOrd11partial_cmpBb_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %.val.i = load double, ptr %0, align 8, !alias.scope !120, !noundef !4 ; 3 uses
  %.val2.i = load double, ptr %1, align 8, !alias.scope !121, !noundef !4 ; 3 uses
  %.not.i = fcmp uno double %.val.i, %.val2.i
  br i1 %.not.i, label %bb.b, label %_RNvXs2_NtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nanINtB5_6NonNandENtNtCs3oUPovFnLWP_4core3cmp3Ord3cmpBb_.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #14, !noalias !122
  unreachable

_RNvXs2_NtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nanINtB5_6NonNandENtNtCs3oUPovFnLWP_4core3cmp3Ord3cmpBb_.exit: ; preds = %bb.a
  %i.a = fcmp ult double %.val.i, %.val2.i        ; 2 uses
  %i.b = fcmp ugt double %.val.i, %.val2.i
  %..i.i = select i1 %i.a, i8 -2, i8 1
  %.1.i.i = sext i1 %i.a to i8
  %.sroa.0.0.i.i = select i1 %i.b, i8 %..i.i, i8 %.1.i.i
  ret i8 %.sroa.0.0.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 2) i8 @_RNvXs2_NtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nanINtB5_6NonNandENtNtCs3oUPovFnLWP_4core3cmp3Ord3cmpBb_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %.val = load double, ptr %0, align 8, !noundef !4 ; 3 uses
  %.val2 = load double, ptr %1, align 8, !noundef !4 ; 3 uses
  %.not = fcmp uno double %.val, %.val2
  br i1 %.not, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.a = fcmp ult double %.val, %.val2            ; 2 uses
  %i.b = fcmp ugt double %.val, %.val2
  %..i = select i1 %i.a, i8 -2, i8 1
  %.1.i = sext i1 %i.a to i8
  %.sroa.0.0.i = select i1 %i.b, i8 %..i, i8 %.1.i
  ret i8 %.sroa.0.0.i

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #14
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef range(i8 0, 3), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTjjEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit11array_axcpyNtNtB4_6uninit4InitdECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), double noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976), double noundef, double noundef, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsl_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynB1c_INtNtB8_11vec_storage10VecStoragedB1c_B1c_EE14view_range_mutINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEB2z_ECs8lmMd0ZksV9_6statrs(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(40), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsl_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynINtB1e_5ConstKj1_EINtB6_14ViewStorageMutdB1c_B1x_B1x_B1c_EE14view_range_mutINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjENtB2N_9RangeFullECs8lmMd0ZksV9_6statrs(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecTjjEEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNBU_EE9from_iterCs8lmMd0ZksV9_6statrs(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution13inverse_gammaNtB5_12InverseGammaINtB7_13ContinuousCDFddE3cdf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef double @_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution13inverse_gammaNtB5_12InverseGammaINtB7_10ContinuousddE3pdf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution13inverse_gammaNtB5_12InverseGammaINtB7_13ContinuousCDFddE2sf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution3chiNtB5_3ChiINtB7_13ContinuousCDFddE3cdf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef double @_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution3chiNtB5_3ChiINtB7_10ContinuousddE3pdf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution3chiNtB5_3ChiINtB7_13ContinuousCDFddE2sf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), double noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB2_12RepeatNInnerTjjEE3newCs8lmMd0ZksV9_6statrs(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsl_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynB1c_INtNtB8_11vec_storage10VecStoragedB1c_B1c_EE14view_range_mutNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullINtB2B_7RangeTojEECs8lmMd0ZksV9_6statrs(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(40), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp.f64(double) #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #11

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree nosync nounwind nonlazybind memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { noinline noreturn }
attributes #15 = { cold }
attributes #16 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!4 = !{}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = distinct !{!8, i1 true, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone"}
!9 = distinct !{!9, !8, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone: argument 0"}
!10 = distinct !{!10, !6}
!11 = !{!9}
!12 = distinct !{!12, i1 true, !"_RNvMs_NtNtCsbADZB03g5jP_8nalgebra4base12constructionINtNtB6_6matrix6MatrixTjjENtNtB6_9dimension3DynINtB1g_5ConstKj1_EINtNtB6_11vec_storage10VecStorageB1a_B1e_B1z_EE14repeat_genericCs8lmMd0ZksV9_6statrs"}
!13 = distinct !{!13, !12, !"_RNvMs_NtNtCsbADZB03g5jP_8nalgebra4base12constructionINtNtB6_6matrix6MatrixTjjENtNtB6_9dimension3DynINtB1g_5ConstKj1_EINtNtB6_11vec_storage10VecStorageB1a_B1e_B1z_EE14repeat_genericCs8lmMd0ZksV9_6statrs: argument 0"}
!14 = distinct !{!14, i1 true, !"_RINvXs_NtNtCsbADZB03g5jP_8nalgebra4base17default_allocatorNtB5_16DefaultAllocatorINtNtB7_9allocator9AllocatorNtNtB7_9dimension3DynE22allocate_from_iteratorTjjEINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNB2t_EECs8lmMd0ZksV9_6statrs"}
!15 = distinct !{!15, !14, !"_RINvXs_NtNtCsbADZB03g5jP_8nalgebra4base17default_allocatorNtB5_16DefaultAllocatorINtNtB7_9allocator9AllocatorNtNtB7_9dimension3DynE22allocate_from_iteratorTjjEINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNB2t_EECs8lmMd0ZksV9_6statrs: argument 1"}
!16 = distinct !{!16, !14, !"_RINvXs_NtNtCsbADZB03g5jP_8nalgebra4base17default_allocatorNtB5_16DefaultAllocatorINtNtB7_9allocator9AllocatorNtNtB7_9dimension3DynE22allocate_from_iteratorTjjEINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNB2t_EECs8lmMd0ZksV9_6statrs: argument 0"}
!17 = distinct !{!17, i1 true, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNTjjEENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs1xwejQucwHj_5alloc3vec3VecBZ_EECs8lmMd0ZksV9_6statrs"}
!18 = distinct !{!18, !17, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNTjjEENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs1xwejQucwHj_5alloc3vec3VecBZ_EECs8lmMd0ZksV9_6statrs: argument 1"}
!19 = distinct !{!19, !17, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNTjjEENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs1xwejQucwHj_5alloc3vec3VecBZ_EECs8lmMd0ZksV9_6statrs: argument 0"}
!20 = distinct !{!20, i1 true, !"_RINvXsf_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecTjjEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtBS_7sources8repeat_n7RepeatNBG_EECs8lmMd0ZksV9_6statrs"}
!21 = distinct !{!21, !20, !"_RINvXsf_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecTjjEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtBS_7sources8repeat_n7RepeatNBG_EECs8lmMd0ZksV9_6statrs: argument 1"}
!22 = distinct !{!22, !20, !"_RINvXsf_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecTjjEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtBS_7sources8repeat_n7RepeatNBG_EECs8lmMd0ZksV9_6statrs: argument 0"}
!23 = distinct !{!23, i1 true, !"_RNvMs2_NtNtCsbADZB03g5jP_8nalgebra4base11vec_storageINtB5_10VecStorageTjjENtNtB7_9dimension3DynINtB1c_5ConstKj1_EE3newCs8lmMd0ZksV9_6statrs"}
!24 = distinct !{!24, !23, !"_RNvMs2_NtNtCsbADZB03g5jP_8nalgebra4base11vec_storageINtB5_10VecStorageTjjENtNtB7_9dimension3DynINtB1c_5ConstKj1_EE3newCs8lmMd0ZksV9_6statrs: argument 1"}
!25 = distinct !{!25, !23, !"_RNvMs2_NtNtCsbADZB03g5jP_8nalgebra4base11vec_storageINtB5_10VecStorageTjjENtNtB7_9dimension3DynINtB1c_5ConstKj1_EE3newCs8lmMd0ZksV9_6statrs: argument 0"}
!26 = distinct !{!26, i1 true, !"_RINvMsk_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynB1c_INtNtB8_11vec_storage10VecStoragedB1c_B1c_EE10view_rangeINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEjECs8lmMd0ZksV9_6statrs"}
!27 = distinct !{!27, !26, !"_RINvMsk_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynB1c_INtNtB8_11vec_storage10VecStoragedB1c_B1c_EE10view_rangeINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEjECs8lmMd0ZksV9_6statrs: argument 1"}
!28 = distinct !{!28, i1 true, !"_RINvMsb_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynB1c_INtNtB8_11vec_storage10VecStoragedB1c_B1c_EE12generic_viewB1c_INtB1e_5ConstKj1_EECs8lmMd0ZksV9_6statrs"}
!29 = distinct !{!29, !28, !"_RINvMsb_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynB1c_INtNtB8_11vec_storage10VecStoragedB1c_B1c_EE12generic_viewB1c_INtB1e_5ConstKj1_EECs8lmMd0ZksV9_6statrs: argument 1"}
!30 = distinct !{!30, i1 true, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone"}
!31 = distinct !{!31, !30, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone: argument 0"}
!32 = distinct !{!32, i1 true, !"_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs"}
!33 = distinct !{!33, !32, !"_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs: argument 0"}
!34 = distinct !{!34, i1 true, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone"}
!35 = distinct !{!35, !34, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone: argument 0"}
!36 = distinct !{!36, i1 true, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone"}
!37 = distinct !{!37, !36, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone: argument 0"}
!38 = distinct !{!38, i1 true, !"_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu10gauss_stepdNtNtNtB6_4base9dimension3DynBQ_INtNtBU_11vec_storage10VecStoragedBQ_BQ_EECs8lmMd0ZksV9_6statrs"}
!39 = distinct !{!39, !38, !"_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu10gauss_stepdNtNtNtB6_4base9dimension3DynBQ_INtNtBU_11vec_storage10VecStoragedBQ_BQ_EECs8lmMd0ZksV9_6statrs: argument 0"}
!40 = distinct !{!40, i1 true, !"_RINvMsc_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynB1c_INtB6_14ViewStorageMutdB1c_B1c_INtB1e_5ConstKj1_EB1c_EE22columns_range_pair_mutjINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEECs8lmMd0ZksV9_6statrs"}
!41 = distinct !{!41, !40, !"_RINvMsc_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynB1c_INtB6_14ViewStorageMutdB1c_B1c_INtB1e_5ConstKj1_EB1c_EE22columns_range_pair_mutjINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEECs8lmMd0ZksV9_6statrs: argument 1"}
!42 = distinct !{!42, i1 true, !"_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs"}
!43 = distinct !{!43, !42, !"_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs: argument 0"}
!44 = distinct !{!44, i1 true, !"_RNvXs6I_NtNtCs3oUPovFnLWP_4core3ops5arithdNtB6_9MulAssign10mul_assign"}
!45 = distinct !{!45, !44, !"_RNvXs6I_NtNtCs3oUPovFnLWP_4core3ops5arithdNtB6_9MulAssign10mul_assign: argument 0"}
!46 = distinct !{!46, !96, !97}
!47 = distinct !{!47, !97, !96}
!48 = distinct !{!48, i1 true, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone"}
!49 = distinct !{!49, !48, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone: argument 0"}
!50 = distinct !{!50, i1 true, !"_RINvMs_NtNtCsbADZB03g5jP_8nalgebra4base4blasINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB15_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB13_B1o_B1o_B13_EE4axpyB13_B1G_ECs8lmMd0ZksV9_6statrs"}
!51 = distinct !{!51, !50, !"_RINvMs_NtNtCsbADZB03g5jP_8nalgebra4base4blasINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB15_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB13_B1o_B1o_B13_EE4axpyB13_B1G_ECs8lmMd0ZksV9_6statrs: argument 1"}
!52 = distinct !{!52, !50, !"_RINvMs_NtNtCsbADZB03g5jP_8nalgebra4base4blasINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB15_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB13_B1o_B1o_B13_EE4axpyB13_B1G_ECs8lmMd0ZksV9_6statrs: argument 0"}
!53 = distinct !{!53, i1 true, !"_RNvMs1_NtNtCsbADZB03g5jP_8nalgebra6linalg20permutation_sequenceINtB5_19PermutationSequenceNtNtNtB9_4base9dimension3DynE18append_permutationCs8lmMd0ZksV9_6statrs"}
!54 = distinct !{!54, !53, !"_RNvMs1_NtNtCsbADZB03g5jP_8nalgebra6linalg20permutation_sequenceINtB5_19PermutationSequenceNtNtNtB9_4base9dimension3DynE18append_permutationCs8lmMd0ZksV9_6statrs: argument 0"}
!55 = distinct !{!55, i1 true, !"_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs"}
!56 = distinct !{!56, !55, !"_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs: argument 0"}
!57 = distinct !{!57, i1 false, !"LVerDomain"}
!58 = distinct !{!58, !57}
!59 = distinct !{!59, !57}
!60 = distinct !{!60, !96, !97}
!61 = distinct !{!61, !96}
!62 = distinct !{!62, i1 true, !"_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu15gauss_step_swapdNtNtNtB6_4base9dimension3DynBV_INtNtBZ_11vec_storage10VecStoragedBV_BV_EECs8lmMd0ZksV9_6statrs"}
!63 = distinct !{!63, !62, !"_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu15gauss_step_swapdNtNtNtB6_4base9dimension3DynBV_INtNtBZ_11vec_storage10VecStoragedBV_BV_EECs8lmMd0ZksV9_6statrs: argument 0"}
!64 = distinct !{!64, i1 true, !"_RINvMsc_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynB1c_INtB6_14ViewStorageMutdB1c_B1c_INtB1e_5ConstKj1_EB1c_EE22columns_range_pair_mutjINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEECs8lmMd0ZksV9_6statrs"}
!65 = distinct !{!65, !64, !"_RINvMsc_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynB1c_INtB6_14ViewStorageMutdB1c_B1c_INtB1e_5ConstKj1_EB1c_EE22columns_range_pair_mutjINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEECs8lmMd0ZksV9_6statrs: argument 1"}
!66 = distinct !{!66, i1 true, !"_RNvMs9_NtNtCsbADZB03g5jP_8nalgebra4base6matrixINtB5_6MatrixdNtNtB7_9dimension3DynINtBY_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdBW_B1h_B1h_BW_EE4swapCs8lmMd0ZksV9_6statrs"}
!67 = distinct !{!67, !66, !"_RNvMs9_NtNtCsbADZB03g5jP_8nalgebra4base6matrixINtB5_6MatrixdNtNtB7_9dimension3DynINtBY_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdBW_B1h_B1h_BW_EE4swapCs8lmMd0ZksV9_6statrs: argument 0"}
!68 = distinct !{!68, i1 true, !"_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs"}
!69 = distinct !{!69, !68, !"_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs: argument 0"}
!70 = distinct !{!70, i1 true, !"_RNvXs6I_NtNtCs3oUPovFnLWP_4core3ops5arithdNtB6_9MulAssign10mul_assign"}
!71 = distinct !{!71, !70, !"_RNvXs6I_NtNtCs3oUPovFnLWP_4core3ops5arithdNtB6_9MulAssign10mul_assign: argument 0"}
!72 = distinct !{!72, !96, !97}
!73 = distinct !{!73, !97, !96}
!74 = distinct !{!74, i1 true, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone"}
!75 = distinct !{!75, !74, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone: argument 0"}
!76 = distinct !{!76, i1 true, !"_RINvMs_NtNtCsbADZB03g5jP_8nalgebra4base4blasINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB15_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB13_B1o_B1o_B13_EE4axpyB13_B1G_ECs8lmMd0ZksV9_6statrs"}
!77 = distinct !{!77, !76, !"_RINvMs_NtNtCsbADZB03g5jP_8nalgebra4base4blasINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB15_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB13_B1o_B1o_B13_EE4axpyB13_B1G_ECs8lmMd0ZksV9_6statrs: argument 1"}
!78 = distinct !{!78, !76, !"_RINvMs_NtNtCsbADZB03g5jP_8nalgebra4base4blasINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB15_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB13_B1o_B1o_B13_EE4axpyB13_B1G_ECs8lmMd0ZksV9_6statrs: argument 0"}
!79 = !{!22, !21, !19, !18, !16, !15, !13}
!80 = !{!16, !15, !13}
!81 = !{!24}
!82 = !{!25, !16, !15, !13}
!83 = !{!25, !24, !16, !15, !13}
!84 = !{!27}
!85 = !{!29, !27}
!86 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!87 = !{!31}
!88 = !{!33}
!89 = !{!35}
!90 = !{!"branch_weights", i32 4000000, i32 4001}
!91 = !{!37}
!92 = !{!39}
!93 = !{!41}
!94 = !{!43}
!95 = !{!45}
!96 = !{!"llvm.loop.isvectorized", i32 1}
!97 = !{!"llvm.loop.unroll.runtime.disable"}
!98 = !{!49}
!99 = !{!52, !51, !39}
!100 = !{!54}
!101 = !{!56}
!102 = !{!58}
!103 = !{!56, !59}
!104 = !{!59}
!105 = !{!63}
!106 = !{!65}
!107 = !{!"branch_weights", i32 4001, i32 4000000}
!108 = !{!67}
!109 = !{!69}
!110 = !{!71}
!111 = !{!75}
!112 = !{!78, !77, !63}
!113 = distinct !{!113, i1 true, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterdENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolddNCNvNtNtCs8lmMd0ZksV9_6statrs8function8evaluate10polynomial0EB1W_"}
!114 = distinct !{!114, !113, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterdENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolddNCNvNtNtCs8lmMd0ZksV9_6statrs8function8evaluate10polynomial0EB1W_: argument 0"}
!115 = distinct !{!115, !6}
!116 = !{!114}
!117 = distinct !{!117, i1 true, !"_RNvXs2_NtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nanINtB5_6NonNandENtNtCs3oUPovFnLWP_4core3cmp3Ord3cmpBb_"}
!118 = distinct !{!118, !117, !"_RNvXs2_NtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nanINtB5_6NonNandENtNtCs3oUPovFnLWP_4core3cmp3Ord3cmpBb_: argument 0"}
!119 = distinct !{!119, !117, !"_RNvXs2_NtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nanINtB5_6NonNandENtNtCs3oUPovFnLWP_4core3cmp3Ord3cmpBb_: argument 1"}
!120 = !{!118}
!121 = !{!119}
!122 = !{!118, !119}
end_hunk_1
