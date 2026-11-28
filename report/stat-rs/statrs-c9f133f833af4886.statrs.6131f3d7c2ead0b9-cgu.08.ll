Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stat-rs/original/statrs-c9f133f833af4886.statrs.6131f3d7c2ead0b9-cgu.08?download=true
inline.NumInlined: 297
inline.NumDeleted: 118
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra6linalg2luINtB5_2LUdNtNtNtB9_4base9dimension3DynBQ_E11determinantCs8lmMd0ZksV9_6statrs:bb.a
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !76
  invoke void @_RNvMNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB2_12RepeatNInnerTjjEE3newCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef 0, i64 noundef 0, i64 noundef %..i.i)
          to label %.noexc unwind label %bb.b, !noalias !77

.body:                                            ; preds = %bb.e, %bb.j, %bb.b, %.loopexit.split-lp
  %.pn.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.r, %bb.b ], [ %i.ac, %bb.j ], [ %i.aa, %bb.e ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(40) %1) #15
          to label %bb.ab unwind label %bb.aa

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !78
  invoke void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecTjjEEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNBU_EE9from_iterCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
          to label %.noexc11 unwind label %bb.b, !noalias !79

.noexc11:                                         ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !76
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noalias !78, !noundef !4 ; 2 uses
  %i.u = icmp ult i64 %i.t, 576460752303423488
  call void @llvm.assume(i1 %i.u)
  %i.v = icmp eq i64 %i.t, %..i.i
  br i1 %i.v, label %bb.d, label %bb.c, !prof !5

bb.c:                                             ; preds = %.noexc11
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 181 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #16
          to label %bb.i unwind label %bb.j, !noalias !78

bb.d:                                             ; preds = %.noexc11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !78
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !78
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !80, !noalias !78, !noundef !4 ; 2 uses
  %i.y = icmp ult i64 %i.x, 576460752303423488
  call void @llvm.assume(i1 %i.y)
  %i.z = icmp eq i64 %..i.i, %i.x
  br i1 %i.z, label %bb.l, label %bb.f, !prof !5

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
          to label %.body unwind label %bb.k, !noalias !78

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13, !noalias !78
  unreachable

bb.l:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !78
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 7 uses
  store i64 0, ptr %i.ae, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 %..i.i, ptr %.sroa.456.0..sroa_idx, align 8
  %i.af = icmp eq i64 %..i.i, 0
  br i1 %i.af, label %bb.m, label %.preheader.split

.preheader.split:                                 ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.not5.i = icmp eq i64 %..i.i, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val3.i24 = load ptr, ptr %i.ah, align 8, !nonnull !4
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
  br label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.at, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret void

bb.n:                                             ; preds = %.backedge
  store i64 %i.da, ptr %i.ae, align 8
  br label %bb.m

bb.o:                                             ; preds = %.preheader.split, %.backedge
  %.sroa.02.096 = phi i64 [ 0, %.preheader.split ], [ %i.aw, %.backedge ] ; 18 uses
  %i.au = phi i64 [ 0, %.preheader.split ], [ %i.da, %.backedge ] ; 13 uses
  %i.av = xor i64 %.sroa.02.096, -1
  %i.aw = add nuw i64 %.sroa.02.096, 1            ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %.val.i = load i64, ptr %i.p, align 8, !alias.scope !83, !noundef !4 ; 5 uses
  %.val1.i = load i64, ptr %i.q, align 8, !alias.scope !83, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %.not1.i.i.i.not = icmp ult i64 %.sroa.02.096, %.val1.i
  br i1 %.not1.i.i.i.not, label %bb.p, label %.invoke, !prof !5

.invoke:                                          ; preds = %bb.o, %bb.z, %.noexc45, %bb.t, %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit, %bb.p
  %.lcssa145.sink = phi i64 [ %i.dd, %.noexc45 ], [ %i.au, %bb.t ], [ %i.au, %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit ], [ %i.au, %bb.p ], [ %i.dd, %bb.z ], [ %i.au, %bb.o ]
  %i.ax = phi ptr [ @23, %.noexc45 ], [ @14, %bb.t ], [ @29, %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit ], [ @8, %bb.p ], [ @23, %bb.z ], [ @27, %bb.o ]
  %i.ay = phi ptr [ inttoptr (i64 83 to ptr), %.noexc45 ], [ inttoptr (i64 81 to ptr), %bb.t ], [ inttoptr (i64 55 to ptr), %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit ], [ inttoptr (i64 71 to ptr), %bb.p ], [ inttoptr (i64 83 to ptr), %bb.z ], [ inttoptr (i64 59 to ptr), %bb.o ]
  %i.az = phi ptr [ @24, %.noexc45 ], [ @15, %bb.t ], [ @26, %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit ], [ @10, %bb.p ], [ @25, %bb.z ], [ @28, %bb.o ]
  store i64 %.lcssa145.sink, ptr %i.ae, align 8
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull %i.ax, ptr noundef nonnull %i.ay, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.az) #14
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !85

.cont:                                            ; preds = %.invoke
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ba = sub i64 %.val.i, %.sroa.02.096
  %.val4.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !86, !nonnull !4, !noundef !4
  %i.bb = mul i64 %.val.i, %.sroa.02.096
  %i.bc = getelementptr [8 x i8], ptr %.val4.i.i, i64 %i.bb ; 2 uses
  %i.bd = getelementptr [8 x i8], ptr %i.bc, i64 %.sroa.02.096 ; 4 uses
  switch i64 %i.ba, label %.lr.ph.preheader.i [
    i64 0, label %.invoke
    i64 1, label %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit
  ], !prof !87

.lr.ph.preheader.i:                               ; preds = %bb.p
  %i.be = load double, ptr %i.bd, align 8, !alias.scope !88, !noalias !89, !noundef !4
  %i.bf = call noundef double @llvm.fabs.f64(double %i.be) ; 2 uses
  %i.bg = add i64 %.val.i, %i.av                  ; 3 uses
  %reass.sub = sub i64 %.val.i, %.sroa.02.096
  %xtraiter = and i64 %i.bg, 1
  %i.bh = icmp eq i64 %reass.sub, 2
  br i1 %i.bh, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.bg, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %.sroa.0.015.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %.sroa.0.1.i.1, %.lr.ph.i ]
  %.sroa.03.014.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %i.bn, %.lr.ph.i ] ; 4 uses
  %.sroa.0.01113.i = phi double [ %i.bf, %.lr.ph.preheader.i.new ], [ %.sroa.0.112.i.1, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.bi = add nuw i64 %.sroa.03.014.i, 1          ; 2 uses
  %i.bj = getelementptr [8 x i8], ptr %i.bd, i64 %.sroa.03.014.i
  %i.bk = load double, ptr %i.bj, align 8, !alias.scope !90, !noalias !89, !noundef !4
  %i.bl = call noundef double @llvm.fabs.f64(double %i.bk) ; 2 uses
  %i.bm = fcmp ogt double %i.bl, %.sroa.0.01113.i ; 2 uses
  %.sroa.0.112.i = select i1 %i.bm, double %i.bl, double %.sroa.0.01113.i ; 2 uses
  %.sroa.0.1.i = select i1 %i.bm, i64 %.sroa.03.014.i, i64 %.sroa.0.015.i
  %i.bn = add nuw i64 %.sroa.03.014.i, 2          ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bd, i64 %i.bi
  %i.bp = load double, ptr %i.bo, align 8, !alias.scope !90, !noalias !89, !noundef !4
  %i.bq = call noundef double @llvm.fabs.f64(double %i.bp) ; 2 uses
  %i.br = fcmp ogt double %i.bq, %.sroa.0.112.i   ; 2 uses
  %.sroa.0.112.i.1 = select i1 %i.br, double %i.bq, double %.sroa.0.112.i ; 2 uses
  %.sroa.0.1.i.1 = select i1 %i.br, i64 %i.bi, i64 %.sroa.0.1.i ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa, label %.lr.ph.i

_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.sroa.0.015.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %.sroa.0.1.i.1, %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa ]
  %.sroa.03.014.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %i.bn, %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.0.01113.i.epil.init = phi double [ %i.bf, %.lr.ph.preheader.i ], [ %.sroa.0.112.i.1, %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa ]
  %lcmp.mod248 = trunc i64 %i.bg to i1
  call void @llvm.assume(i1 %lcmp.mod248)
  %i.bs = getelementptr [8 x i8], ptr %i.bd, i64 %.sroa.03.014.i.epil.init
  %i.bt = load double, ptr %i.bs, align 8, !alias.scope !90, !noalias !89, !noundef !4
  %i.bu = call noundef double @llvm.fabs.f64(double %i.bt)
  %i.bv = fcmp ogt double %i.bu, %.sroa.0.01113.i.epil.init
  %.sroa.0.1.i.epil = select i1 %i.bv, i64 %.sroa.03.014.i.epil.init, i64 %.sroa.0.015.i.epil.init
  br label %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit

_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit: ; preds = %.lr.ph.i.epil.preheader, %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa, %bb.p
  %.sroa.0.0.lcssa.i = phi i64 [ 0, %bb.p ], [ %.sroa.0.1.i.1, %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa ], [ %.sroa.0.1.i.epil, %.lr.ph.i.epil.preheader ] ; 6 uses
  %i.bw = add i64 %.sroa.0.0.lcssa.i, %.sroa.02.096 ; 7 uses
  %i.bx = icmp ult i64 %i.bw, %.val.i
  br i1 %i.bx, label %bb.q, label %.invoke, !prof !91

.loopexit:                                        ; preds = %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.us.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.sink.split

.loopexit.split-lp.loopexit:                      ; preds = %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.us.i
  %lpad.loopexit58 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.sink.split

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.u, %bb.s, %.noexc18, %_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit, %_RNvMs9_NtNtCsbADZB03g5jP_8nalgebra4base6matrixINtB5_6MatrixdNtNtB7_9dimension3DynINtBY_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdBW_B1h_B1h_BW_EE4swapCs8lmMd0ZksV9_6statrs.exit.i
  %i.by = phi i64 [ %i.dd, %bb.u ], [ %i.au, %bb.s ], [ %i.au, %.noexc18 ], [ %i.dd, %_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit ], [ %i.dd, %_RNvMs9_NtNtCsbADZB03g5jP_8nalgebra4base6matrixINtB5_6MatrixdNtNtB7_9dimension3DynINtBY_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdBW_B1h_B1h_BW_EE4swapCs8lmMd0ZksV9_6statrs.exit.i ]
  %lpad.loopexit61 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.sink.split

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i.invoke, %.invoke, %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.sink.split:                    ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit
  %.lcssa147.sink = phi i64 [ %i.dd, %.loopexit.split-lp.loopexit ], [ %i.by, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %i.au, %.loopexit ]
  %lpad.phi.ph = phi { ptr, i32 } [ %lpad.loopexit58, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit61, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.lcssa147.sink, ptr %i.ae, align 8
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.sink.split, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.phi.ph, %.loopexit.split-lp.sink.split ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra6linalg20permutation_sequence19PermutationSequenceNtNtNtBI_4base9dimension3DynEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(40) %i.o) #15
          to label %.body unwind label %bb.aa

bb.q:                                             ; preds = %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit
  %i.bz = getelementptr [8 x i8], ptr %i.bc, i64 %i.bw
  %i.ca = load double, ptr %i.bz, align 8, !alias.scope !92, !noundef !4 ; 3 uses
  %i.cb = fcmp oeq double %i.ca, 0.000000e+00
  br i1 %i.cb, label %.backedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not = icmp eq i64 %.sroa.0.0.lcssa.i, 0
  br i1 %.not, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !93
  invoke void @_RINvMsl_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynB1c_INtNtB8_11vec_storage10VecStoragedB1c_B1c_EE14view_range_mutINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEB2z_ECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %.sroa.02.096, i64 noundef %.sroa.02.096)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc18:                                         ; preds = %bb.s
  %i.cc = fdiv double 1.000000e+00, %i.ca         ; 2 uses
  %.val13.i.i = load i64, ptr %i.j, align 8, !alias.scope !94, !noalias !93, !noundef !4 ; 2 uses
  %.val14.i.i = load i64, ptr %i.ap, align 8, !alias.scope !94, !noalias !93, !noundef !4
  %.val15.i.i = load i64, ptr %i.aq, align 8, !alias.scope !94, !noalias !93, !noundef !4 ; 3 uses
  %i.cd = add i64 %.val14.i.i, -1                 ; 2 uses
  %.val18.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !94, !noalias !93, !noundef !4 ; 2 uses
  %i.ce = getelementptr [8 x i8], ptr %.val18.i.i, i64 %.val15.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !93
  store ptr %.val18.i.i, ptr %i.i, align 8, !noalias !93
  store i64 %.val13.i.i, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !93
  store i64 %.val15.i.i, ptr %.sroa.520.0..sroa_idx.i, align 8, !noalias !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !93
  invoke void @_RINvMsl_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynINtB1e_5ConstKj1_EINtB6_14ViewStorageMutdB1c_B1x_B1x_B1c_EE14view_range_mutINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjENtB2N_9RangeFullECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef 1)
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc19:                                         ; preds = %.noexc18
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %.val7.i.i = load i64, ptr %i.as, align 8, !alias.scope !95, !noalias !93, !noundef !4 ; 10 uses
  %.not.i.i = icmp eq i64 %.val7.i.i, 0
  br i1 %.not.i.i, label %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc19
  %.val8.i.i = load ptr, ptr %i.h, align 8, !alias.scope !95, !noalias !93, !noundef !4 ; 2 uses
  %min.iters.check = icmp ult i64 %.val7.i.i, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %.val7.i.i, -4                 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cc, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cf = getelementptr [8 x i8], ptr %.val8.i.i, i64 %index ; 3 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 16     ; 2 uses
  %wide.load = load <2 x double>, ptr %i.cf, align 8, !alias.scope !96, !noalias !95
  %wide.load207 = load <2 x double>, ptr %i.cg, align 8, !alias.scope !96, !noalias !95
  %i.ch = fmul <2 x double> %broadcast.splat, %wide.load
  %i.ci = fmul <2 x double> %broadcast.splat, %wide.load207
  store <2 x double> %i.ch, ptr %i.cf, align 8, !alias.scope !96, !noalias !95
  store <2 x double> %i.ci, ptr %i.cg, align 8, !alias.scope !96, !noalias !95
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.val7.i.i, %n.vec
  br i1 %cmp.n, label %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %.sroa.05.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.05.010.i.i = phi i64 [ %i.ck, %scalar.ph ], [ %.sroa.05.010.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ck = add nuw i64 %.sroa.05.010.i.i, 1        ; 2 uses
  %i.cl = getelementptr [8 x i8], ptr %.val8.i.i, i64 %.sroa.05.010.i.i ; 2 uses
  %i.cm = load double, ptr %i.cl, align 8, !alias.scope !96, !noalias !95, !noundef !4
  %i.cn = fmul double %i.cc, %i.cm
  store double %i.cn, ptr %i.cl, align 8, !alias.scope !96, !noalias !95
  %exitcond.not.i.i = icmp eq i64 %i.ck, %.val7.i.i
  br i1 %exitcond.not.i.i, label %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i, label %scalar.ph, !llvm.loop !49

_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i: ; preds = %scalar.ph, %middle.block, %.noexc19
  %i.co = getelementptr i8, ptr %i.ce, i64 8
  %.not.i16 = icmp eq i64 %i.cd, 0
  br i1 %.not.i16, label %_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu10gauss_stepdNtNtNtB6_4base9dimension3DynBQ_INtNtBU_11vec_storage10VecStoragedBQ_BQ_EECs8lmMd0ZksV9_6statrs.exit, label %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.lr.ph.i

_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.lr.ph.i: ; preds = %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i
  %i.cp = add i64 %.val13.i.i, -1                 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, %.val7.i.i
  %.sroa.0.0.i9.i.i = load ptr, ptr %i.h, align 8, !noalias !93, !nonnull !4
  br i1 %i.cq, label %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.us.i, label %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i, !prof !5

_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.us.i: ; preds = %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.lr.ph.i, %.noexc20
  %.sroa.04.037.us.i = phi i64 [ %i.cw, %.noexc20 ], [ 0, %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.lr.ph.i ] ; 2 uses
  %i.cr = mul i64 %.sroa.04.037.us.i, %.val15.i.i ; 2 uses
  %i.cs = getelementptr [8 x i8], ptr %i.ce, i64 %i.cr
  %i.ct = load double, ptr %i.cs, align 8, !alias.scope !99, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !100
  %i.cu = fneg double %i.ct
  %i.cv = getelementptr [8 x i8], ptr %i.co, i64 %i.cr ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !100
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cv) ]
  invoke void @_RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit11array_axcpyNtNtB4_6uninit4InitdECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 %i.cv, i64 noundef %.val7.i.i, double noundef %i.cu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.0.0.i9.i.i, i64 noundef %.val7.i.i, double noundef 1.000000e+00, double noundef 1.000000e+00, i64 noundef 1, i64 noundef 1, i64 noundef %.val7.i.i)
          to label %.noexc20 unwind label %.loopexit, !noalias !101

.noexc20:                                         ; preds = %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.us.i
  %i.cw = add nuw i64 %.sroa.04.037.us.i, 1       ; 2 uses
  %exitcond.not.i17 = icmp eq i64 %i.cw, %i.cd
  br i1 %exitcond.not.i17, label %_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu10gauss_stepdNtNtNtB6_4base9dimension3DynBQ_INtNtBU_11vec_storage10VecStoragedBQ_BQ_EECs8lmMd0ZksV9_6statrs.exit, label %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.us.i

_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i: ; preds = %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.lr.ph.i
  store i64 %i.au, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !100
  store i64 %i.cp, ptr %i.g, align 8, !noalias !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !100
  store i64 %.val7.i.i, ptr %i.f, align 8, !noalias !100
  br label %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i.invoke

_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i.invoke: ; preds = %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i, %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i
  %i.cx = phi ptr [ %i.g, %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i ], [ %i.b, %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i ]
  %i.cy = phi ptr [ %i.f, %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i ], [ %i.a, %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cy, ptr noundef nonnull @0, ptr nonnull inttoptr (i64 63 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
          to label %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !101

_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i.cont: ; preds = %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i.invoke
  unreachable

_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu10gauss_stepdNtNtNtB6_4base9dimension3DynBQ_INtNtBU_11vec_storage10VecStoragedBQ_BQ_EECs8lmMd0ZksV9_6statrs.exit: ; preds = %.noexc20, %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !93
  br label %.backedge

bb.t:                                             ; preds = %bb.r
  %i.cz = icmp ult i64 %i.au, %..i.i
  br i1 %i.cz, label %bb.u, label %.invoke, !prof !5

.backedge:                                        ; preds = %_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu10gauss_stepdNtNtNtB6_4base9dimension3DynBQ_INtNtBU_11vec_storage10VecStoragedBQ_BQ_EECs8lmMd0ZksV9_6statrs.exit, %_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu15gauss_step_swapdNtNtNtB6_4base9dimension3DynBV_INtNtBZ_11vec_storage10VecStoragedBV_BV_EECs8lmMd0ZksV9_6statrs.exit, %bb.q
  %i.da = phi i64 [ %i.au, %bb.q ], [ %i.dd, %_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu15gauss_step_swapdNtNtNtB6_4base9dimension3DynBV_INtNtBZ_11vec_storage10VecStoragedBV_BV_EECs8lmMd0ZksV9_6statrs.exit ], [ %i.au, %_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu10gauss_stepdNtNtNtB6_4base9dimension3DynBQ_INtNtBU_11vec_storage10VecStoragedBQ_BQ_EECs8lmMd0ZksV9_6statrs.exit ] ; 2 uses
  %exitcond.not = icmp eq i64 %i.aw, %..i.i
  br i1 %exitcond.not, label %bb.n, label %bb.o

bb.u:                                             ; preds = %bb.t
  %.sroa.0.0.i.i = select i1 %.not5.i, i64 0, i64 %i.au
  %i.db = getelementptr [16 x i8], ptr %.val3.i24, i64 %.sroa.0.0.i.i ; 2 uses
  store i64 %.sroa.02.096, ptr %i.db, align 8, !noalias !102
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i64 %i.bw, ptr %i.dc, align 8, !noalias !102
  %i.dd = add nuw nsw i64 %i.au, 1                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RINvMsl_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynB1c_INtNtB8_11vec_storage10VecStoragedB1c_B1c_EE14view_range_mutNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullINtB2B_7RangeTojEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %.sroa.02.096)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.v:                                             ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %.val7.i = load i64, ptr %i.n, align 8, !alias.scope !103, !noundef !4 ; 2 uses
  %.val8.i = load i64, ptr %i.ai, align 8, !alias.scope !103, !noundef !4 ; 5 uses
  %i.de = icmp ult i64 %.sroa.02.096, %.val7.i
  %i.df = icmp ult i64 %i.bw, %.val7.i
  %or.cond.i26 = and i1 %i.de, %i.df
  br i1 %or.cond.i26, label %bb.x, label %bb.w, !prof !91

bb.w:                                             ; preds = %bb.v
  store i64 %i.dd, ptr %i.ae, align 8
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 62, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #14
          to label %.noexc31 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !103

.noexc31:                                         ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.v
  %.not57 = icmp eq i64 %.val8.i, 0
  br i1 %.not57, label %_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %bb.x
  %.val9.i29 = load ptr, ptr %i.aj, align 8, !alias.scope !103, !noundef !4 ; 3 uses
  %.val10.i = load i64, ptr %i.ak, align 8, !alias.scope !103, !noundef !4 ; 3 uses
  %xtraiter249 = and i64 %.val8.i, 1
  %i.dg = icmp eq i64 %.val8.i, 1
  br i1 %i.dg, label %.epil.preheader, label %.lr.ph.i28.new

.lr.ph.i28.new:                                   ; preds = %.lr.ph.i28
  %unroll_iter252 = and i64 %.val8.i, -2
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph.i28.new
  %.sroa.01.011.i = phi i64 [ 0, %.lr.ph.i28.new ], [ %i.dn, %bb.y ] ; 3 uses
  %niter253 = phi i64 [ 0, %.lr.ph.i28.new ], [ %niter253.next.1, %bb.y ]
  %i.dh = or disjoint i64 %.sroa.01.011.i, 1
  %i.di = mul i64 %.sroa.01.011.i, %.val10.i
  %i.dj = getelementptr [8 x i8], ptr %.val9.i29, i64 %i.di ; 2 uses
  %i.dk = getelementptr [8 x i8], ptr %i.dj, i64 %.sroa.02.096 ; 2 uses
  %i.dl = getelementptr [8 x i8], ptr %i.dj, i64 %i.bw ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.dk, align 8, !noalias !103
  %i.dm = load i64, ptr %i.dl, align 8, !noalias !103
  store i64 %i.dm, ptr %i.dk, align 8, !noalias !103
end_hunk_0
