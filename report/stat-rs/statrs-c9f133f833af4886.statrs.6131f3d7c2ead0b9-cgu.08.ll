Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stat-rs/original/statrs-c9f133f833af4886.statrs.6131f3d7c2ead0b9-cgu.08?download=true
inline.NumInlined: 297
inline.NumDeleted: 118
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra6linalg2luINtB5_2LUdNtNtNtB9_4base9dimension3DynBQ_E11determinantCs8lmMd0ZksV9_6statrs:bb.a

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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !74
  invoke void @_RNvMNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB2_12RepeatNInnerTjjEE3newCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef 0, i64 noundef 0, i64 noundef %..i.i)
          to label %.noexc unwind label %bb.b

.body:                                            ; preds = %bb.e, %bb.j, %bb.b, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp177, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.r, %bb.b ], [ %i.ac, %bb.j ], [ %i.aa, %bb.e ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(40) %1) #15
          to label %bb.z unwind label %bb.y

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !75
  invoke void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecTjjEEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNBU_EE9from_iterCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
          to label %.noexc11 unwind label %bb.b

.noexc11:                                         ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !74
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noalias !75, !noundef !4 ; 2 uses
  %i.u = icmp ult i64 %i.t, 576460752303423488
  call void @llvm.assume(i1 %i.u)
  %i.v = icmp eq i64 %i.t, %..i.i
  br i1 %i.v, label %bb.d, label %bb.c, !prof !5

bb.c:                                             ; preds = %.noexc11
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 181 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #16
          to label %bb.i unwind label %bb.j, !noalias !75

bb.d:                                             ; preds = %.noexc11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !75
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !76, !noalias !75, !noundef !4 ; 2 uses
  %i.y = icmp ult i64 %i.x, 576460752303423488
  call void @llvm.assume(i1 %i.y)
  %i.z = icmp eq i64 %..i.i, %i.x
  br i1 %i.z, label %bb.l, label %bb.f, !prof !5

bb.e:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTjjEEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #15
          to label %.body unwind label %bb.h, !noalias !77

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @16, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #16
          to label %bb.g unwind label %bb.e, !noalias !78

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13, !noalias !77
  unreachable

bb.i:                                             ; preds = %bb.c
  unreachable

bb.j:                                             ; preds = %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTjjEEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #15
          to label %.body unwind label %bb.k, !noalias !75

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13, !noalias !75
  unreachable

bb.l:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !75
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  store i64 0, ptr %i.ae, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 %..i.i, ptr %.sroa.455.0..sroa_idx, align 8
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
  %.sroa.02.084 = phi i64 [ 0, %.preheader.split ], [ %i.aw, %.backedge ] ; 18 uses
  %i.av = xor i64 %.sroa.02.084, -1
  %i.aw = add nuw i64 %.sroa.02.084, 1            ; 2 uses
  %.val.i = load i64, ptr %i.p, align 8, !alias.scope !79, !noundef !4 ; 5 uses
  %.val1.i = load i64, ptr %i.q, align 8, !alias.scope !79, !noundef !4
  %.not1.i.i.i.not = icmp ult i64 %.sroa.02.084, %.val1.i
  br i1 %.not1.i.i.i.not, label %bb.n, label %.invoke, !prof !5

bb.n:                                             ; preds = %bb.m
  %i.ax = sub i64 %.val.i, %.sroa.02.084
  %.val4.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !80, !nonnull !4, !noundef !4
  %i.ay = mul i64 %.val.i, %.sroa.02.084
  %i.az = getelementptr [8 x i8], ptr %.val4.i.i, i64 %i.ay ; 2 uses
  %i.ba = getelementptr [8 x i8], ptr %i.az, i64 %.sroa.02.084 ; 4 uses
  switch i64 %i.ax, label %.lr.ph.preheader.i [
    i64 0, label %.invoke
    i64 1, label %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit
  ], !prof !81

.lr.ph.preheader.i:                               ; preds = %bb.n
  %i.bb = load double, ptr %i.ba, align 8, !alias.scope !82, !noalias !83, !noundef !4
  %i.bc = call noundef double @llvm.fabs.f64(double %i.bb) ; 2 uses
  %i.bd = add i64 %.val.i, %i.av                  ; 3 uses
  %reass.sub = sub i64 %.val.i, %.sroa.02.084
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
  %i.bh = load double, ptr %i.bg, align 8, !alias.scope !84, !noalias !83, !noundef !4
  %i.bi = call noundef double @llvm.fabs.f64(double %i.bh) ; 2 uses
  %i.bj = fcmp ogt double %i.bi, %.sroa.0.01113.i ; 2 uses
  %.sroa.0.112.i = select i1 %i.bj, double %i.bi, double %.sroa.0.01113.i ; 2 uses
  %.sroa.0.1.i = select i1 %i.bj, i64 %.sroa.03.014.i, i64 %.sroa.0.015.i
  %i.bk = add nuw i64 %.sroa.03.014.i, 2          ; 2 uses
  %i.bl = getelementptr [8 x i8], ptr %i.ba, i64 %i.bf
  %i.bm = load double, ptr %i.bl, align 8, !alias.scope !84, !noalias !83, !noundef !4
  %i.bn = call noundef double @llvm.fabs.f64(double %i.bm) ; 2 uses
  %i.bo = fcmp ogt double %i.bn, %.sroa.0.112.i   ; 2 uses
  %.sroa.0.112.i.1 = select i1 %i.bo, double %i.bn, double %.sroa.0.112.i ; 2 uses
  %.sroa.0.1.i.1 = select i1 %i.bo, i64 %i.bf, i64 %.sroa.0.1.i ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa, label %.lr.ph.i

_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.sroa.0.015.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %.sroa.0.1.i.1, %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa ]
  %.sroa.03.014.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %i.bk, %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.0.01113.i.epil.init = phi double [ %i.bc, %.lr.ph.preheader.i ], [ %.sroa.0.112.i.1, %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa ]
  %lcmp.mod193 = trunc i64 %i.bd to i1
  call void @llvm.assume(i1 %lcmp.mod193)
  %i.bp = getelementptr [8 x i8], ptr %i.ba, i64 %.sroa.03.014.i.epil.init
  %i.bq = load double, ptr %i.bp, align 8, !alias.scope !84, !noalias !83, !noundef !4
  %i.br = call noundef double @llvm.fabs.f64(double %i.bq)
  %i.bs = fcmp ogt double %i.br, %.sroa.0.01113.i.epil.init
  %.sroa.0.1.i.epil = select i1 %i.bs, i64 %.sroa.03.014.i.epil.init, i64 %.sroa.0.015.i.epil.init
  br label %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit.loopexit

_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit.loopexit: ; preds = %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader
  %.sroa.0.1.i.lcssa = phi i64 [ %.sroa.0.1.i.1, %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa ], [ %.sroa.0.1.i.epil, %.lr.ph.i.epil.preheader ] ; 2 uses
  %2 = icmp eq i64 %.sroa.0.1.i.lcssa, 0
  br label %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit

_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit: ; preds = %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit.loopexit, %bb.n
  %.sroa.0.0.lcssa.i = phi i1 [ true, %bb.n ], [ %2, %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit.loopexit ]
  %3 = phi i64 [ 0, %bb.n ], [ %.sroa.0.1.i.lcssa, %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit.loopexit ] ; 5 uses
  %i.bt = add i64 %3, %.sroa.02.084               ; 7 uses
  %i.bu = icmp ult i64 %i.bt, %.val.i
  br i1 %i.bu, label %bb.o, label %.invoke, !prof !85

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.us.i, %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.us.i, %_RNvMs9_NtNtCsbADZB03g5jP_8nalgebra4base6matrixINtB5_6MatrixdNtNtB7_9dimension3DynINtBY_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdBW_B1h_B1h_BW_EE4swapCs8lmMd0ZksV9_6statrs.exit.i, %_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit, %.noexc18, %bb.q, %bb.s, %.invoke, %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i.invoke, %bb.u
  %lpad.loopexit.split-lp177 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra6linalg20permutation_sequence19PermutationSequenceNtNtNtBI_4base9dimension3DynEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(40) %i.o) #15
          to label %.body unwind label %bb.y

bb.o:                                             ; preds = %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit
  %i.bv = getelementptr [8 x i8], ptr %i.az, i64 %i.bt
  %i.bw = load double, ptr %i.bv, align 8, !alias.scope !86, !noundef !4 ; 3 uses
  %i.bx = fcmp oeq double %i.bw, 0.000000e+00
  br i1 %i.bx, label %.backedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %.sroa.0.0.lcssa.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !87
  invoke void @_RINvMsl_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynB1c_INtNtB8_11vec_storage10VecStoragedB1c_B1c_EE14view_range_mutINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEB2z_ECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %.sroa.02.084, i64 noundef %.sroa.02.084)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %bb.q
  %i.by = fdiv double 1.000000e+00, %i.bw         ; 2 uses
  %.val13.i.i = load i64, ptr %i.j, align 8, !alias.scope !88, !noalias !87, !noundef !4 ; 2 uses
  %.val14.i.i = load i64, ptr %i.ap, align 8, !alias.scope !88, !noalias !87, !noundef !4
  %.val15.i.i = load i64, ptr %i.aq, align 8, !alias.scope !88, !noalias !87, !noundef !4 ; 3 uses
  %i.bz = add i64 %.val14.i.i, -1                 ; 2 uses
  %.val18.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !88, !noalias !87, !noundef !4 ; 2 uses
  %i.ca = getelementptr [8 x i8], ptr %.val18.i.i, i64 %.val15.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !87
  store ptr %.val18.i.i, ptr %i.i, align 8, !noalias !87
  store i64 %.val13.i.i, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !87
  store i64 %.val15.i.i, ptr %.sroa.520.0..sroa_idx.i, align 8, !noalias !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !87
  invoke void @_RINvMsl_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynINtB1e_5ConstKj1_EINtB6_14ViewStorageMutdB1c_B1x_B1x_B1c_EE14view_range_mutINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjENtB2N_9RangeFullECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef 1)
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc19:                                         ; preds = %.noexc18
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %.val7.i.i = load i64, ptr %i.as, align 8, !alias.scope !89, !noalias !87, !noundef !4 ; 10 uses
  %.not.i.i = icmp eq i64 %.val7.i.i, 0
  %.val8.i.i = load ptr, ptr %i.h, align 8, !alias.scope !89, !noalias !87 ; 3 uses
  br i1 %.not.i.i, label %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.noexc19
  %min.iters.check = icmp ult i64 %.val7.i.i, 4
  br i1 %min.iters.check, label %.preheader.i.i.preheader172, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i.preheader
  %n.vec = and i64 %.val7.i.i, -4                 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.by, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cb = getelementptr [8 x i8], ptr %.val8.i.i, i64 %index ; 3 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 16     ; 2 uses
  %wide.load = load <2 x double>, ptr %i.cb, align 8, !alias.scope !90, !noalias !89
  %wide.load156 = load <2 x double>, ptr %i.cc, align 8, !alias.scope !90, !noalias !89
  %i.cd = fmul <2 x double> %broadcast.splat, %wide.load
  %i.ce = fmul <2 x double> %broadcast.splat, %wide.load156
  store <2 x double> %i.cd, ptr %i.cb, align 8, !alias.scope !90, !noalias !89
  store <2 x double> %i.ce, ptr %i.cc, align 8, !alias.scope !90, !noalias !89
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.val7.i.i, %n.vec
  br i1 %cmp.n, label %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i, label %.preheader.i.i.preheader172

.preheader.i.i.preheader172:                      ; preds = %.preheader.i.i.preheader, %middle.block
  %.sroa.05.010.i.i.ph = phi i64 [ 0, %.preheader.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader172, %.preheader.i.i
  %.sroa.05.010.i.i = phi i64 [ %i.cg, %.preheader.i.i ], [ %.sroa.05.010.i.i.ph, %.preheader.i.i.preheader172 ] ; 2 uses
  %i.cg = add nuw i64 %.sroa.05.010.i.i, 1        ; 2 uses
  %i.ch = getelementptr [8 x i8], ptr %.val8.i.i, i64 %.sroa.05.010.i.i ; 2 uses
  %i.ci = load double, ptr %i.ch, align 8, !alias.scope !90, !noalias !89, !noundef !4
  %i.cj = fmul double %i.by, %i.ci
  store double %i.cj, ptr %i.ch, align 8, !alias.scope !90, !noalias !89
  %exitcond.not.i.i = icmp eq i64 %i.cg, %.val7.i.i
  br i1 %exitcond.not.i.i, label %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i, label %.preheader.i.i, !llvm.loop !47

_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i: ; preds = %.preheader.i.i, %middle.block, %.noexc19
  %i.ck = getelementptr i8, ptr %i.ca, i64 8
  %.not.i16 = icmp eq i64 %i.bz, 0
  br i1 %.not.i16, label %_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu10gauss_stepdNtNtNtB6_4base9dimension3DynBQ_INtNtBU_11vec_storage10VecStoragedBQ_BQ_EECs8lmMd0ZksV9_6statrs.exit, label %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.lr.ph.i

_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.lr.ph.i: ; preds = %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i
  %i.cl = add i64 %.val13.i.i, -1                 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, %.val7.i.i
  br i1 %i.cm, label %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.us.i, label %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i, !prof !5

_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.us.i: ; preds = %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.lr.ph.i, %.noexc20
  %.sroa.04.037.us.i = phi i64 [ %i.cs, %.noexc20 ], [ 0, %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.lr.ph.i ] ; 2 uses
  %i.cn = mul i64 %.sroa.04.037.us.i, %.val15.i.i ; 2 uses
  %i.co = getelementptr [8 x i8], ptr %i.ca, i64 %i.cn
  %i.cp = load double, ptr %i.co, align 8, !alias.scope !93, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !94
  %i.cq = fneg double %i.cp
  %i.cr = getelementptr [8 x i8], ptr %i.ck, i64 %i.cn ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !94
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cr) ]
  invoke void @_RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit11array_axcpyNtNtB4_6uninit4InitdECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 %i.cr, i64 noundef %.val7.i.i, double noundef %i.cq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val8.i.i, i64 noundef %.val7.i.i, double noundef 1.000000e+00, double noundef 1.000000e+00, i64 noundef 1, i64 noundef 1, i64 noundef %.val7.i.i)
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc20:                                         ; preds = %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.us.i
  %i.cs = add nuw i64 %.sroa.04.037.us.i, 1       ; 2 uses
  %exitcond.not.i17 = icmp eq i64 %i.cs, %i.bz
  br i1 %exitcond.not.i17, label %_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu10gauss_stepdNtNtNtB6_4base9dimension3DynBQ_INtNtBU_11vec_storage10VecStoragedBQ_BQ_EECs8lmMd0ZksV9_6statrs.exit, label %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.us.i

_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i: ; preds = %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !94
  store i64 %i.cl, ptr %i.g, align 8, !noalias !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !94
  store i64 %.val7.i.i, ptr %i.f, align 8, !noalias !94
  br label %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i.invoke

_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu10gauss_stepdNtNtNtB6_4base9dimension3DynBQ_INtNtBU_11vec_storage10VecStoragedBQ_BQ_EECs8lmMd0ZksV9_6statrs.exit: ; preds = %.noexc20, %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !87
  br label %.backedge

bb.r:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.ct = icmp ult i64 %i.au, %..i.i
  br i1 %i.ct, label %bb.s, label %.invoke, !prof !5

.backedge:                                        ; preds = %_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu10gauss_stepdNtNtNtB6_4base9dimension3DynBQ_INtNtBU_11vec_storage10VecStoragedBQ_BQ_EECs8lmMd0ZksV9_6statrs.exit, %_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu15gauss_step_swapdNtNtNtB6_4base9dimension3DynBV_INtNtBZ_11vec_storage10VecStoragedBV_BV_EECs8lmMd0ZksV9_6statrs.exit, %bb.o
  %i.cu = phi i64 [ %i.au, %_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu10gauss_stepdNtNtNtB6_4base9dimension3DynBQ_INtNtBU_11vec_storage10VecStoragedBQ_BQ_EECs8lmMd0ZksV9_6statrs.exit ], [ %i.cx, %_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu15gauss_step_swapdNtNtNtB6_4base9dimension3DynBV_INtNtBZ_11vec_storage10VecStoragedBV_BV_EECs8lmMd0ZksV9_6statrs.exit ], [ %i.au, %bb.o ]
  %exitcond.not = icmp eq i64 %i.aw, %..i.i
  br i1 %exitcond.not, label %.loopexit, label %bb.m

bb.s:                                             ; preds = %bb.r
  %.val3.i24 = load ptr, ptr %i.ah, align 8, !alias.scope !95, !nonnull !4, !noundef !4
  %.sroa.0.0.i.i = select i1 %.not5.i, i64 0, i64 %i.au
  %i.cv = getelementptr [16 x i8], ptr %.val3.i24, i64 %.sroa.0.0.i.i ; 2 uses
  store i64 %.sroa.02.084, ptr %i.cv, align 8, !noalias !95
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.bt, ptr %i.cw, align 8, !noalias !95
  %i.cx = add nuw nsw i64 %i.au, 1                ; 2 uses
  store i64 %i.cx, ptr %i.ae, align 8, !alias.scope !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RINvMsl_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynB1c_INtNtB8_11vec_storage10VecStoragedB1c_B1c_EE14view_range_mutNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullINtB2B_7RangeTojEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %.sroa.02.084)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %.val7.i = load i64, ptr %i.n, align 8, !alias.scope !96, !noundef !4 ; 2 uses
  %.val8.i = load i64, ptr %i.ai, align 8, !alias.scope !96, !noundef !4 ; 5 uses
  %i.cy = icmp ult i64 %.sroa.02.084, %.val7.i
  %i.cz = icmp ult i64 %i.bt, %.val7.i
  %or.cond.i26 = and i1 %i.cy, %i.cz
  br i1 %or.cond.i26, label %bb.v, label %bb.u, !prof !85

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 62, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #14
          to label %.noexc31 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc31:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.t
  %.not56 = icmp eq i64 %.val8.i, 0
  br i1 %.not56, label %_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %bb.v
  %.val9.i29 = load ptr, ptr %i.aj, align 8, !alias.scope !96, !noundef !4 ; 3 uses
  %.val10.i = load i64, ptr %i.ak, align 8, !alias.scope !96, !noundef !4 ; 3 uses
  %xtraiter194 = and i64 %.val8.i, 1
  %i.da = icmp eq i64 %.val8.i, 1
  br i1 %i.da, label %.epil.preheader, label %.lr.ph.i28.new

.lr.ph.i28.new:                                   ; preds = %.lr.ph.i28
  %unroll_iter197 = and i64 %.val8.i, -2
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph.i28.new
  %.sroa.01.011.i = phi i64 [ 0, %.lr.ph.i28.new ], [ %i.dh, %bb.w ] ; 3 uses
  %niter198 = phi i64 [ 0, %.lr.ph.i28.new ], [ %niter198.next.1, %bb.w ]
  %i.db = or disjoint i64 %.sroa.01.011.i, 1
  %i.dc = mul i64 %.sroa.01.011.i, %.val10.i
  %i.dd = getelementptr [8 x i8], ptr %.val9.i29, i64 %i.dc ; 2 uses
  %i.de = getelementptr [8 x i8], ptr %i.dd, i64 %.sroa.02.084 ; 2 uses
  %i.df = getelementptr [8 x i8], ptr %i.dd, i64 %i.bt ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.de, align 8, !noalias !96
  %i.dg = load i64, ptr %i.df, align 8, !noalias !96
  store i64 %i.dg, ptr %i.de, align 8, !noalias !96
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.df, align 8, !noalias !96
  %i.dh = add nuw i64 %.sroa.01.011.i, 2          ; 2 uses
  %i.di = mul i64 %i.db, %.val10.i
  %i.dj = getelementptr [8 x i8], ptr %.val9.i29, i64 %i.di ; 2 uses
  %i.dk = getelementptr [8 x i8], ptr %i.dj, i64 %.sroa.02.084 ; 2 uses
  %i.dl = getelementptr [8 x i8], ptr %i.dj, i64 %i.bt ; 2 uses
  %.sroa.0.0.copyload.i.i.i.1 = load i64, ptr %i.dk, align 8, !noalias !96
  %i.dm = load i64, ptr %i.dl, align 8, !noalias !96
  store i64 %i.dm, ptr %i.dk, align 8, !noalias !96
  store i64 %.sroa.0.0.copyload.i.i.i.1, ptr %i.dl, align 8, !noalias !96
  %niter198.next.1 = add nuw i64 %niter198, 2     ; 2 uses
  %niter198.ncmp.1 = icmp eq i64 %niter198.next.1, %unroll_iter197
  br i1 %niter198.ncmp.1, label %_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa, label %bb.w

_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa: ; preds = %bb.w
  %lcmp.mod195.not = icmp eq i64 %xtraiter194, 0
  br i1 %lcmp.mod195.not, label %_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa, %.lr.ph.i28
  %.sroa.01.011.i.epil.init = phi i64 [ 0, %.lr.ph.i28 ], [ %i.dh, %_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa ]
  %lcmp.mod196 = trunc i64 %.val8.i to i1
  call void @llvm.assume(i1 %lcmp.mod196)
  %i.dn = mul i64 %.sroa.01.011.i.epil.init, %.val10.i
  %i.do = getelementptr [8 x i8], ptr %.val9.i29, i64 %i.dn ; 2 uses
  %i.dp = getelementptr [8 x i8], ptr %i.do, i64 %.sroa.02.084 ; 2 uses
  %i.dq = getelementptr [8 x i8], ptr %i.do, i64 %i.bt ; 2 uses
  %.sroa.0.0.copyload.i.i.i.epil = load i64, ptr %i.dp, align 8, !noalias !96
  %i.dr = load i64, ptr %i.dq, align 8, !noalias !96
  store i64 %i.dr, ptr %i.dp, align 8, !noalias !96
  store i64 %.sroa.0.0.copyload.i.i.i.epil, ptr %i.dq, align 8, !noalias !96
  br label %_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit

_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit: ; preds = %.epil.preheader, %_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !97
  invoke void @_RINvMsl_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynB1c_INtNtB8_11vec_storage10VecStoragedB1c_B1c_EE14view_range_mutINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEB2z_ECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %.sroa.02.084, i64 noundef %.sroa.02.084)
          to label %.noexc44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc44:                                         ; preds = %_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit
  %i.ds = fdiv double 1.000000e+00, %i.bw         ; 2 uses
  %.val13.i.i32 = load i64, ptr %i.e, align 8, !alias.scope !98, !noalias !97, !noundef !4 ; 4 uses
  %.val14.i.i33 = load i64, ptr %i.al, align 8, !alias.scope !98, !noalias !97, !noundef !4
  %.val15.i.i34 = load i64, ptr %i.am, align 8, !alias.scope !98, !noalias !97, !noundef !4 ; 3 uses
  %i.dt = add i64 %.val14.i.i33, -1               ; 2 uses
  %.val18.i.i35 = load ptr, ptr %i.an, align 8, !alias.scope !98, !noalias !97, !noundef !4 ; 5 uses
  %i.du = getelementptr [8 x i8], ptr %.val18.i.i35, i64 %.val15.i.i34 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !97
  store ptr %.val18.i.i35, ptr %i.d, align 8, !noalias !97
  store i64 %.val13.i.i32, ptr %.sroa.430.0..sroa_idx.i, align 8, !noalias !97
  store i64 %.val15.i.i34, ptr %.sroa.531.0..sroa_idx.i, align 8, !noalias !97
  %.not.i.i36 = icmp eq i64 %.val13.i.i32, 0
  br i1 %.not.i.i36, label %.invoke, label %bb.x, !prof !99

bb.x:                                             ; preds = %.noexc44
  %i.dv = icmp ult i64 %3, %.val13.i.i32
  br i1 %i.dv, label %_RNvMs9_NtNtCsbADZB03g5jP_8nalgebra4base6matrixINtB5_6MatrixdNtNtB7_9dimension3DynINtBY_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdBW_B1h_B1h_BW_EE4swapCs8lmMd0ZksV9_6statrs.exit.i, label %.invoke, !prof !85

.invoke:                                          ; preds = %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit, %bb.n, %bb.m, %bb.x, %.noexc44, %bb.r
  %i.dw = phi ptr [ @23, %.noexc44 ], [ @14, %bb.r ], [ @23, %bb.x ], [ @8, %bb.n ], [ @27, %bb.m ], [ @29, %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit ]
  %i.dx = phi ptr [ inttoptr (i64 83 to ptr), %.noexc44 ], [ inttoptr (i64 81 to ptr), %bb.r ], [ inttoptr (i64 83 to ptr), %bb.x ], [ inttoptr (i64 71 to ptr), %bb.n ], [ inttoptr (i64 59 to ptr), %bb.m ], [ inttoptr (i64 55 to ptr), %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit ]
  %i.dy = phi ptr [ @24, %.noexc44 ], [ @15, %bb.r ], [ @25, %bb.x ], [ @10, %bb.n ], [ @28, %bb.m ], [ @26, %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull %i.dw, ptr noundef nonnull %i.dx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dy) #14
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs9_NtNtCsbADZB03g5jP_8nalgebra4base6matrixINtB5_6MatrixdNtNtB7_9dimension3DynINtBY_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdBW_B1h_B1h_BW_EE4swapCs8lmMd0ZksV9_6statrs.exit.i: ; preds = %bb.x
  %i.dz = getelementptr [8 x i8], ptr %.val18.i.i35, i64 %3 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %.val18.i.i35, align 8, !noalias !100
  %i.ea = load i64, ptr %i.dz, align 8, !noalias !100
  store i64 %i.ea, ptr %.val18.i.i35, align 8, !noalias !100
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %i.dz, align 8, !noalias !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !97
  invoke void @_RINvMsl_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynINtB1e_5ConstKj1_EINtB6_14ViewStorageMutdB1c_B1x_B1x_B1c_EE14view_range_mutINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjENtB2N_9RangeFullECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 1)
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc47:                                         ; preds = %_RNvMs9_NtNtCsbADZB03g5jP_8nalgebra4base6matrixINtB5_6MatrixdNtNtB7_9dimension3DynINtBY_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdBW_B1h_B1h_BW_EE4swapCs8lmMd0ZksV9_6statrs.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %.val7.i8.i = load i64, ptr %i.ao, align 8, !alias.scope !101, !noalias !97, !noundef !4 ; 10 uses
  %.not.i9.i = icmp eq i64 %.val7.i8.i, 0
  %.val8.i.i37 = load ptr, ptr %i.c, align 8, !alias.scope !101, !noalias !97 ; 3 uses
  br i1 %.not.i9.i, label %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i41, label %.preheader.i.i38.preheader

.preheader.i.i38.preheader:                       ; preds = %.noexc47
  %min.iters.check158 = icmp ult i64 %.val7.i8.i, 4
  br i1 %min.iters.check158, label %.preheader.i.i38.preheader175, label %vector.ph159

vector.ph159:                                     ; preds = %.preheader.i.i38.preheader
  %n.vec160 = and i64 %.val7.i8.i, -4             ; 3 uses
  %broadcast.splatinsert161 = insertelement <2 x double> poison, double %i.ds, i64 0
  %broadcast.splat162 = shufflevector <2 x double> %broadcast.splatinsert161, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body163

vector.body163:                                   ; preds = %vector.body163, %vector.ph159
  %index164 = phi i64 [ 0, %vector.ph159 ], [ %index.next167, %vector.body163 ] ; 2 uses
  %i.eb = getelementptr [8 x i8], ptr %.val8.i.i37, i64 %index164 ; 3 uses
  %i.ec = getelementptr i8, ptr %i.eb, i64 16     ; 2 uses
  %wide.load165 = load <2 x double>, ptr %i.eb, align 8, !alias.scope !102, !noalias !101
  %wide.load166 = load <2 x double>, ptr %i.ec, align 8, !alias.scope !102, !noalias !101
  %i.ed = fmul <2 x double> %broadcast.splat162, %wide.load165
  %i.ee = fmul <2 x double> %broadcast.splat162, %wide.load166
  store <2 x double> %i.ed, ptr %i.eb, align 8, !alias.scope !102, !noalias !101
  store <2 x double> %i.ee, ptr %i.ec, align 8, !alias.scope !102, !noalias !101
  %index.next167 = add nuw i64 %index164, 4       ; 2 uses
  %i.ef = icmp eq i64 %index.next167, %n.vec160
  br i1 %i.ef, label %middle.block168, label %vector.body163, !llvm.loop !67

middle.block168:                                  ; preds = %vector.body163
  %cmp.n169 = icmp eq i64 %.val7.i8.i, %n.vec160
  br i1 %cmp.n169, label %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i41, label %.preheader.i.i38.preheader175

.preheader.i.i38.preheader175:                    ; preds = %.preheader.i.i38.preheader, %middle.block168
  %.sroa.05.010.i.i39.ph = phi i64 [ 0, %.preheader.i.i38.preheader ], [ %n.vec160, %middle.block168 ]
  br label %.preheader.i.i38

.preheader.i.i38:                                 ; preds = %.preheader.i.i38.preheader175, %.preheader.i.i38
  %.sroa.05.010.i.i39 = phi i64 [ %i.eg, %.preheader.i.i38 ], [ %.sroa.05.010.i.i39.ph, %.preheader.i.i38.preheader175 ] ; 2 uses
  %i.eg = add nuw i64 %.sroa.05.010.i.i39, 1      ; 2 uses
  %i.eh = getelementptr [8 x i8], ptr %.val8.i.i37, i64 %.sroa.05.010.i.i39 ; 2 uses
  %i.ei = load double, ptr %i.eh, align 8, !alias.scope !102, !noalias !101, !noundef !4
  %i.ej = fmul double %i.ds, %i.ei
  store double %i.ej, ptr %i.eh, align 8, !alias.scope !102, !noalias !101
  %exitcond.not.i.i40 = icmp eq i64 %i.eg, %.val7.i8.i
  br i1 %exitcond.not.i.i40, label %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i41, label %.preheader.i.i38, !llvm.loop !68

_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i41: ; preds = %.preheader.i.i38, %middle.block168, %.noexc47
  %i.ek = getelementptr i8, ptr %i.du, i64 8
  %.not.i42 = icmp eq i64 %i.dt, 0
  br i1 %.not.i42, label %_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu15gauss_step_swapdNtNtNtB6_4base9dimension3DynBV_INtNtBZ_11vec_storage10VecStoragedBV_BV_EECs8lmMd0ZksV9_6statrs.exit, label %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.lr.ph.i

_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.lr.ph.i: ; preds = %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i41
  %i.el = add i64 %.val13.i.i32, -1               ; 2 uses
  %i.em = icmp eq i64 %i.el, %.val7.i8.i
  br i1 %i.em, label %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.us.i, label %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i, !prof !5

_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.us.i: ; preds = %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.lr.ph.i, %.noexc48
  %.sroa.04.049.us.i = phi i64 [ %i.ew, %.noexc48 ], [ 0, %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.lr.ph.i ] ; 2 uses
  %i.en = mul i64 %.sroa.04.049.us.i, %.val15.i.i34 ; 2 uses
  %i.eo = getelementptr [8 x i8], ptr %i.du, i64 %i.en ; 3 uses
  %i.ep = getelementptr [8 x i8], ptr %i.ek, i64 %i.en ; 3 uses
  %i.eq = getelementptr [8 x i8], ptr %i.ep, i64 %3
  %i.er = getelementptr i8, ptr %i.eq, i64 -8     ; 2 uses
  %i.es = load double, ptr %i.eo, align 8, !noundef !4
  %i.et = load i64, ptr %i.er, align 8
  store i64 %i.et, ptr %i.eo, align 8
  store double %i.es, ptr %i.er, align 8
  %i.eu = load double, ptr %i.eo, align 8, !alias.scope !103, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !104
  %i.ev = fneg double %i.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !104
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ep) ]
  invoke void @_RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit11array_axcpyNtNtB4_6uninit4InitdECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 %i.ep, i64 noundef %.val7.i8.i, double noundef %i.ev, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val8.i.i37, i64 noundef %.val7.i8.i, double noundef 1.000000e+00, double noundef 1.000000e+00, i64 noundef 1, i64 noundef 1, i64 noundef %.val7.i8.i)
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc48:                                         ; preds = %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.us.i
  %i.ew = add nuw i64 %.sroa.04.049.us.i, 1       ; 2 uses
  %exitcond.not.i43 = icmp eq i64 %i.ew, %i.dt
  br i1 %exitcond.not.i43, label %_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu15gauss_step_swapdNtNtNtB6_4base9dimension3DynBV_INtNtBZ_11vec_storage10VecStoragedBV_BV_EECs8lmMd0ZksV9_6statrs.exit, label %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.us.i

_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i: ; preds = %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.lr.ph.i
  %i.ex = getelementptr [8 x i8], ptr %i.du, i64 %3 ; 2 uses
  %i.ey = load double, ptr %i.du, align 8, !noundef !4
  %i.ez = load i64, ptr %i.ex, align 8
  store i64 %i.ez, ptr %i.du, align 8
  store double %i.ey, ptr %i.ex, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !104
  store i64 %i.el, ptr %i.b, align 8, !noalias !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !104
  store i64 %.val7.i8.i, ptr %i.a, align 8, !noalias !104
  br label %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i.invoke

_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i.invoke: ; preds = %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i, %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i
  %i.fa = phi ptr [ %i.b, %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i ], [ %i.g, %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i ]
  %i.fb = phi ptr [ %i.a, %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i ], [ %i.f, %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fb, ptr noundef nonnull @0, ptr nonnull inttoptr (i64 63 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
          to label %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i.cont: ; preds = %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i.invoke
  unreachable

_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu15gauss_step_swapdNtNtNtB6_4base9dimension3DynBV_INtNtBZ_11vec_storage10VecStoragedBV_BV_EECs8lmMd0ZksV9_6statrs.exit: ; preds = %.noexc48, %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !97
  br label %.backedge

bb.y:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body
  %i.fc = landingpad { ptr, i32 }
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
  %i.d = fadd double %i.c, f0x3F4D0A1F35042971
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
  %i.w = fadd double %i.c, f0xBF761171AA645978
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
  %i.ax = fadd double %i.aw, f0x3FFB89D220507D2A
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
  %i.bo = fadd double %i.aw, f0xC00D6018EDA922CF
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
  %i.cn = fmul double %i.cm, 0.000000e+00         ; 2 uses
  %i.co = fadd double %i.cn, f0x3F86A63A5FC07442
  %i.cp = fmul double %i.cm, %i.co
  %i.cq = fadd double %i.cp, f0x3FC37D65D8A9AAFB
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
  %i.dd = fadd double %i.cn, f0xBE076775588F330D
  %i.de = fmul double %i.cm, %i.dd
  %i.df = fadd double %i.de, f0x3E5EA036D72C22E6
end_hunk_0
