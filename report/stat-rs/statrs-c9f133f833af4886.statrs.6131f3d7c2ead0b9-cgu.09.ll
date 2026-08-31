Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stat-rs/original/statrs-c9f133f833af4886.statrs.6131f3d7c2ead0b9-cgu.09?download=true
inline.NumInlined: 196
inline.NumDeleted: 105
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterjENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests9chisquare9chisquare0ENtNtNtBa_6traits8iterator8Iterator4folddNCINvB6_8map_folddddNCB1r_s_0NCINvXs26_NtB2v_5accumdNtB3I_3Sum3sumIBO_BN_B3p_EE0E0EB1x_:bb.a
  %.sroa.0.0.i = phi double [ %2, %bb.a ], [ %i.t, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRjddNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests9chisquare9chisquare0NCIB1G_dddNCB2h_s_0NCINvXs26_NtBW_5accumdNtB3J_3Sum3sumINtB1I_3MapIB4a_BF_B2f_EB3q_EE0E0E0EB2n_.exit.loopexit.unr-lcssa ], [ %i.ab, %.epil.preheader ]
  ret double %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB12_3VecdEENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1L_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1L_E0INtNtBc_6result6ResultB3I_zEEB27_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterINtB8_3VecdEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1g_8adapters3map12map_try_foldBX_BX_B2e_INtNtB1i_6result6ResultB2e_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways_0NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B3G_EB4h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra6linalg8choleskyINtB5_8CholeskydNtNtNtB9_4base9dimension3DynE12new_internalCs8lmMd0ZksV9_6statrs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1, i64 noundef range(i64 0, 2) %2, double %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %.val17 = load i64, ptr %i.f, align 8, !noundef !22 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.val18 = load i64, ptr %i.g, align 8, !noundef !22
  %i.h = icmp eq i64 %.val17, %.val18
  br i1 %i.h, label %.preheader, label %bb.c, !prof !60

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %.val17, 0
  br i1 %.not, label %._crit_edge53, label %.lr.ph52

.lr.ph52:                                         ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = trunc nuw i64 %2 to i1                   ; 2 uses
  %i.l = tail call double @llvm.sqrt.f64(double %3)
  %narrow.i.i.i.i = fcmp ogt double %3, 0.000000e+00
  %.sroa.3.0.i.i = select i1 %i.k, double %i.l, double undef
  %narrow.i.i = select i1 %i.k, i1 %narrow.i.i.i.i, i1 false
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.e

bb.b:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #21
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  unreachable

._crit_edge53:                                    ; preds = %_RNvXsB_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9DivAssigndE10div_assignCs8lmMd0ZksV9_6statrs.exit, %.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph52, %_RNvXsB_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9DivAssigndE10div_assignCs8lmMd0ZksV9_6statrs.exit
  %.sroa.010.051 = phi i64 [ 0, %.lr.ph52 ], [ %i.o, %_RNvXsB_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9DivAssigndE10div_assignCs8lmMd0ZksV9_6statrs.exit ] ; 10 uses
  %i.o = add nuw i64 %.sroa.010.051, 1            ; 3 uses
  %.not54 = icmp eq i64 %.sroa.010.051, 0
  br i1 %.not54, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit, %._crit_edge53
  ret void

._crit_edge:                                      ; preds = %_RINvMs_NtNtCsbADZB03g5jP_8nalgebra4base4blasINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB15_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB13_B1o_B1o_B13_EE4axpyB13_INtB1J_11ViewStoragedB13_B1o_B1o_B13_EECs8lmMd0ZksV9_6statrs.exit, %bb.e
  %.val21 = load ptr, ptr %i.i, align 8, !nonnull !22, !noundef !22
  %.val22 = load i64, ptr %i.f, align 8, !noundef !22
  %i.p = mul i64 %.val22, %.sroa.010.051
  %i.q = getelementptr [8 x i8], ptr %.val21, i64 %i.p
  %i.r = getelementptr [8 x i8], ptr %i.q, i64 %.sroa.010.051 ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !alias.scope !61, !noundef !22 ; 2 uses
  %i.t = call double @llvm.sqrt.f64(double %i.s)
  %narrow.i = fcmp ogt double %i.s, 0.000000e+00  ; 2 uses
  %brmerge = select i1 %narrow.i, i1 true, i1 %narrow.i.i
  %.mux = select i1 %narrow.i, double %i.t, double %.sroa.3.0.i.i ; 3 uses
  br i1 %brmerge, label %.thread, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %bb.p, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.h ], [ %.pn, %bb.p ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit: ; preds = %bb.g
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.f

bb.j:                                             ; preds = %.thread
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.thread:                                          ; preds = %._crit_edge
  store double %.mux, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvMsl_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynB1c_INtNtB8_11vec_storage10VecStoragedB1c_B1c_EE14view_range_mutINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEjECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %i.o, i64 noundef %.sroa.010.051)
          to label %bb.k unwind label %bb.j

bb.k:                                             ; preds = %.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %.val7.i = load i64, ptr %i.m, align 8, !alias.scope !64, !noundef !22 ; 4 uses
  %.val8.i = load ptr, ptr %i.c, align 8, !alias.scope !64 ; 2 uses
  switch i64 %.val7.i, label %vector.ph [
    i64 0, label %_RNvXsB_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9DivAssigndE10div_assignCs8lmMd0ZksV9_6statrs.exit
    i64 1, label %.preheader.i.preheader
  ]

vector.ph:                                        ; preds = %bb.k
  %n.vec = and i64 %.val7.i, -2                   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.mux, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %.val8.i, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.x, align 8, !alias.scope !67, !noalias !64
  %i.y = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.y, ptr %i.x, align 8, !alias.scope !67, !noalias !64
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.val7.i, %n.vec
  br i1 %cmp.n, label %_RNvXsB_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9DivAssigndE10div_assignCs8lmMd0ZksV9_6statrs.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.k, %middle.block
  %.sroa.05.010.i.ph = phi i64 [ 0, %bb.k ], [ %n.vec, %middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.05.010.i = phi i64 [ %i.aa, %.preheader.i ], [ %.sroa.05.010.i.ph, %.preheader.i.preheader ] ; 2 uses
  %i.aa = add nuw i64 %.sroa.05.010.i, 1          ; 2 uses
  %i.ab = getelementptr [8 x i8], ptr %.val8.i, i64 %.sroa.05.010.i ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !alias.scope !67, !noalias !64, !noundef !22
  %i.ad = fdiv double %i.ac, %.mux
  store double %i.ad, ptr %i.ab, align 8, !alias.scope !67, !noalias !64
  %exitcond.not.i = icmp eq i64 %i.aa, %.val7.i
  br i1 %exitcond.not.i, label %_RNvXsB_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9DivAssigndE10div_assignCs8lmMd0ZksV9_6statrs.exit, label %.preheader.i, !llvm.loop !71

_RNvXsB_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9DivAssigndE10div_assignCs8lmMd0ZksV9_6statrs.exit: ; preds = %.preheader.i, %middle.block, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %exitcond55.not = icmp eq i64 %i.o, %.val17
  br i1 %exitcond55.not, label %._crit_edge53, label %bb.e

.lr.ph:                                           ; preds = %bb.e, %_RINvMs_NtNtCsbADZB03g5jP_8nalgebra4base4blasINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB15_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB13_B1o_B1o_B13_EE4axpyB13_INtB1J_11ViewStoragedB13_B1o_B1o_B13_EECs8lmMd0ZksV9_6statrs.exit
  %.sroa.012.050 = phi i64 [ %i.ae, %_RINvMs_NtNtCsbADZB03g5jP_8nalgebra4base4blasINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB15_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB13_B1o_B1o_B13_EE4axpyB13_INtB1J_11ViewStoragedB13_B1o_B1o_B13_EECs8lmMd0ZksV9_6statrs.exit ], [ 0, %bb.e ] ; 3 uses
  %i.ae = add nuw i64 %.sroa.012.050, 1           ; 2 uses
  %.val19 = load ptr, ptr %i.i, align 8, !nonnull !22, !noundef !22 ; 2 uses
  %.val20 = load i64, ptr %i.f, align 8, !noundef !22 ; 5 uses
  %i.af = mul i64 %.val20, %.sroa.012.050
  %i.ag = getelementptr [8 x i8], ptr %.val19, i64 %i.af
  %i.ah = getelementptr [8 x i8], ptr %i.ag, i64 %.sroa.010.051 ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !alias.scope !72, !noundef !22
  %i.aj = fneg double %i.ai
  %.val10.i = load i64, ptr %i.g, align 8, !alias.scope !75, !noalias !78, !noundef !22
  %.not.i27.not = icmp ult i64 %.sroa.012.050, %.val10.i
  br i1 %.not.i27.not, label %bb.m, label %bb.l, !prof !60

bb.l:                                             ; preds = %.lr.ph
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #22
          to label %.noexc28 unwind label %.loopexit.split-lp

.noexc28:                                         ; preds = %bb.l
  unreachable

.loopexit:                                        ; preds = %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.m:                                             ; preds = %.lr.ph
  %i.ak = mul i64 %.val20, %.sroa.010.051
  %i.al = getelementptr [8 x i8], ptr %.val19, i64 %i.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.al, ptr %i.e, align 8
  store i64 %.val20, ptr %.sroa.434.0..sroa_idx, align 8
  store i64 %.val20, ptr %.sroa.535.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RINvMsl_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynINtB1e_5ConstKj1_EINtB6_14ViewStorageMutdB1c_B1x_B1x_B1c_EE14view_range_mutINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjENtB2N_9RangeFullECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %.sroa.010.051)
          to label %bb.n unwind label %.loopexit

.loopexit45:                                      ; preds = %_RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit12axcpy_uninitNtNtB4_6uninit4InitdNtNtB4_9dimension3DynB1j_INtNtB4_11matrix_view14ViewStorageMutdB1j_INtB1l_5ConstKj1_EB2o_B1j_EINtB1L_11ViewStoragedB1j_B2o_B2o_B1j_EECs8lmMd0ZksV9_6statrs.exit.i
  %lpad.loopexit47 = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp46:                             ; preds = %bb.o
  %lpad.loopexit.split-lp48 = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.am = sub i64 %.val20, %.sroa.010.051         ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !83
  %.val4.i = load i64, ptr %i.j, align 8, !alias.scope !80, !noalias !85, !noundef !22 ; 2 uses
  store i64 %.val4.i, ptr %i.b, align 8, !noalias !83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !83
  store i64 %i.am, ptr %i.a, align 8, !noalias !83
  %i.an = icmp eq i64 %.val4.i, %i.am
  br i1 %i.an, label %_RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit12axcpy_uninitNtNtB4_6uninit4InitdNtNtB4_9dimension3DynB1j_INtNtB4_11matrix_view14ViewStorageMutdB1j_INtB1l_5ConstKj1_EB2o_B1j_EINtB1L_11ViewStoragedB1j_B2o_B2o_B1j_EECs8lmMd0ZksV9_6statrs.exit.i, label %bb.o, !prof !60

bb.o:                                             ; preds = %bb.n
  invoke void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef nonnull @0, ptr nonnull inttoptr (i64 63 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #22
          to label %.noexc30 unwind label %.loopexit.split-lp46

.noexc30:                                         ; preds = %bb.o
  unreachable

_RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit12axcpy_uninitNtNtB4_6uninit4InitdNtNtB4_9dimension3DynB1j_INtNtB4_11matrix_view14ViewStorageMutdB1j_INtB1l_5ConstKj1_EB2o_B1j_EINtB1L_11ViewStoragedB1j_B2o_B2o_B1j_EECs8lmMd0ZksV9_6statrs.exit.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !83
  %.sroa.0.0.i.i29 = load ptr, ptr %i.d, align 8, !alias.scope !86, !noalias !85, !nonnull !22, !noundef !22
  invoke void @_RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit11array_axcpyNtNtB4_6uninit4InitdECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.i.i29, i64 noundef %i.am, double noundef %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ah, i64 noundef %i.am, double noundef 1.000000e+00, double noundef 1.000000e+00, i64 noundef 1, i64 noundef 1, i64 noundef %i.am)
          to label %_RINvMs_NtNtCsbADZB03g5jP_8nalgebra4base4blasINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB15_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB13_B1o_B1o_B13_EE4axpyB13_INtB1J_11ViewStoragedB13_B1o_B1o_B13_EECs8lmMd0ZksV9_6statrs.exit unwind label %.loopexit45

_RINvMs_NtNtCsbADZB03g5jP_8nalgebra4base4blasINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB15_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB13_B1o_B1o_B13_EE4axpyB13_INtB1J_11ViewStoragedB13_B1o_B1o_B13_EECs8lmMd0ZksV9_6statrs.exit: ; preds = %_RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit12axcpy_uninitNtNtB4_6uninit4InitdNtNtB4_9dimension3DynB1j_INtNtB4_11matrix_view14ViewStorageMutdB1j_INtB1l_5ConstKj1_EB2o_B1j_EINtB1L_11ViewStoragedB1j_B2o_B2o_B1j_EECs8lmMd0ZksV9_6statrs.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %exitcond.not = icmp eq i64 %i.ae, %.sroa.010.051
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.p:                                             ; preds = %.loopexit45, %.loopexit.split-lp46, %.loopexit, %.loopexit.split-lp, %bb.b, %bb.j
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.w, %bb.j ], [ %i.n, %bb.b ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit47, %.loopexit45 ], [ %lpad.loopexit.split-lp48, %.loopexit.split-lp46 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(40) %1) #20
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvMs_NtNtCsbADZB03g5jP_8nalgebra6linalg8choleskyINtB4_8CholeskydNtNtNtB8_4base9dimension3DynE6unpackCs8lmMd0ZksV9_6statrs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val9.i = load i64, ptr %i.a, align 8, !alias.scope !89, !noundef !22 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val10.i = load i64, ptr %i.b, align 8, !alias.scope !89, !noundef !22 ; 3 uses
  %i.c = icmp ugt i64 %.val10.i, 1
  br i1 %i.c, label %.lr.ph15.i, label %_RNvMs1_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11vec_storage10VecStoragedB16_B16_EE19fill_upper_triangleCs8lmMd0ZksV9_6statrs.exit

.lr.ph15.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val11.i = load ptr, ptr %i.d, align 8, !alias.scope !89, !nonnull !22 ; 5 uses
  %.not.i = icmp eq i64 %.val9.i, 0
  br i1 %.not.i, label %_RNvMs1_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11vec_storage10VecStoragedB16_B16_EE19fill_upper_triangleCs8lmMd0ZksV9_6statrs.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph15.i
  %i.e = add i64 %.val10.i, -1                    ; 2 uses
  %i.f = add i64 %.val10.i, -2
  %xtraiter = and i64 %i.e, 3                     ; 3 uses
  %i.g = icmp ult i64 %i.f, 3
  br i1 %i.g, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.e, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.sroa.04.014.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %i.t, %.lr.ph.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.h = add nuw nsw i64 %.sroa.04.014.i, 1       ; 2 uses
  %umin.i = tail call i64 @llvm.umin.i64(i64 %.val9.i, i64 %.sroa.04.014.i)
  %i.i = shl nuw i64 %umin.i, 3
  %i.j = mul i64 %.sroa.04.014.i, %.val9.i
  %i.k = getelementptr [8 x i8], ptr %.val11.i, i64 %i.j
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %i.i, i1 false), !noalias !89
  %i.l = add nuw nsw i64 %.sroa.04.014.i, 2       ; 2 uses
  %umin.i.1 = tail call i64 @llvm.umin.i64(i64 %.val9.i, i64 %i.h)
  %i.m = shl nuw i64 %umin.i.1, 3
  %i.n = mul i64 %i.h, %.val9.i
  %i.o = getelementptr [8 x i8], ptr %.val11.i, i64 %i.n
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.o, i8 0, i64 %i.m, i1 false), !noalias !89
  %i.p = add nuw i64 %.sroa.04.014.i, 3           ; 2 uses
  %umin.i.2 = tail call i64 @llvm.umin.i64(i64 %.val9.i, i64 %i.l)
  %i.q = shl nuw i64 %umin.i.2, 3
  %i.r = mul i64 %i.l, %.val9.i
  %i.s = getelementptr [8 x i8], ptr %.val11.i, i64 %i.r
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 %i.q, i1 false), !noalias !89
  %i.t = add nuw i64 %.sroa.04.014.i, 4           ; 2 uses
  %umin.i.3 = tail call i64 @llvm.umin.i64(i64 %.val9.i, i64 %i.p)
  %i.u = shl nuw i64 %umin.i.3, 3
  %i.v = mul i64 %i.p, %.val9.i
  %i.w = getelementptr [8 x i8], ptr %.val11.i, i64 %i.v
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.w, i8 0, i64 %i.u, i1 false), !noalias !89
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RNvMs1_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11vec_storage10VecStoragedB16_B16_EE19fill_upper_triangleCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa, label %.lr.ph.i

_RNvMs1_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11vec_storage10VecStoragedB16_B16_EE19fill_upper_triangleCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11vec_storage10VecStoragedB16_B16_EE19fill_upper_triangleCs8lmMd0ZksV9_6statrs.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_RNvMs1_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11vec_storage10VecStoragedB16_B16_EE19fill_upper_triangleCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.04.014.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.t, %_RNvMs1_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11vec_storage10VecStoragedB16_B16_EE19fill_upper_triangleCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa ]
  %lcmp.mod1 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.sroa.04.014.i.epil = phi i64 [ %i.x, %.lr.ph.i.epil ], [ %.sroa.04.014.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.x = add nuw i64 %.sroa.04.014.i.epil, 1
  %umin.i.epil = tail call i64 @llvm.umin.i64(i64 %.val9.i, i64 %.sroa.04.014.i.epil)
  %i.y = shl nuw i64 %umin.i.epil, 3
  %i.z = mul i64 %.sroa.04.014.i.epil, %.val9.i
  %i.aa = getelementptr [8 x i8], ptr %.val11.i, i64 %i.z
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %i.y, i1 false), !noalias !89
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11vec_storage10VecStoragedB16_B16_EE19fill_upper_triangleCs8lmMd0ZksV9_6statrs.exit, label %.lr.ph.i.epil, !llvm.loop !92

_RNvMs1_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11vec_storage10VecStoragedB16_B16_EE19fill_upper_triangleCs8lmMd0ZksV9_6statrs.exit: ; preds = %_RNvMs1_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11vec_storage10VecStoragedB16_B16_EE19fill_upper_triangleCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %.lr.ph15.i, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCsbADZB03g5jP_8nalgebra6linalg8choleskyINtB4_8CholeskydNtNtNtB8_4base9dimension3DynE7inverseCs8lmMd0ZksV9_6statrs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [40 x i8], align 8                ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load i64, ptr %i.d, align 8, !noundef !22 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1 = load i64, ptr %i.e, align 8, !noundef !22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.f = mul i64 %.val1, %.val                    ; 4 uses
  %i.g = tail call { i64, double } @_RNvMNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB2_12RepeatNInnerdE3newCs8lmMd0ZksV9_6statrs(double noundef 0.000000e+00, i64 noundef %i.f), !noalias !96 ; 2 uses
  %i.h = extractvalue { i64, double } %i.g, 0
  %i.i = extractvalue { i64, double } %i.g, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !99
  call void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNdEE9from_iterCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.h, double %i.i), !noalias !99
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !99, !noundef !22 ; 2 uses
  %i.l = icmp ult i64 %i.k, 1152921504606846976
  call void @llvm.assume(i1 %i.l)
  %i.m = icmp eq i64 %i.k, %i.f
  br i1 %i.m, label %bb.c, label %bb.b, !prof !60

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 181 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #21
          to label %bb.h unwind label %bb.i, !noalias !99

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !99
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !102, !noalias !105, !noundef !22 ; 2 uses
  %i.p = icmp ult i64 %i.o, 1152921504606846976
  call void @llvm.assume(i1 %i.p)
  %i.q = icmp eq i64 %i.f, %i.o
  br i1 %i.q, label %bb.k, label %bb.e, !prof !60

bb.d:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #20
          to label %common.resume unwind label %bb.g, !noalias !105

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @12, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #21
          to label %bb.f unwind label %bb.d, !noalias !107

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
end_hunk_0
begin_hunk_1_@_RNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyu26calc_mwu_asymptotic_pvalue:bb.a
  %i.y = mul i64 %.val.i.3, %.val.i.3
  %i.z = mul i64 %i.y, %.val.i.3
  %i.aa = add i64 %i.u, %i.t
  %i.ab = add i64 %i.v, %.val.i.3
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = add i64 %i.z, %i.ac                     ; 3 uses
  %i.ae = add nuw i64 %.sroa.04.0.i, 4            ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyu26calc_mwu_asymptotic_pvalue0NCINvXsK_NtBW_5accumjNtB3L_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit.loopexit.unr-lcssa, label %.preheader

bb.b:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyu26calc_mwu_asymptotic_pvalue0NCINvXsK_NtBW_5accumjNtB3L_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(24) %3) #20
          to label %common.resume unwind label %bb.f

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyu26calc_mwu_asymptotic_pvalue0NCINvXsK_NtBW_5accumjNtB3L_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyu26calc_mwu_asymptotic_pvalue0NCINvXsK_NtBW_5accumjNtB3L_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit.loopexit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyu26calc_mwu_asymptotic_pvalue0NCINvXsK_NtBW_5accumjNtB3L_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.ae, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyu26calc_mwu_asymptotic_pvalue0NCINvXsK_NtBW_5accumjNtB3L_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.ad, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyu26calc_mwu_asymptotic_pvalue0NCINvXsK_NtBW_5accumjNtB3L_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit.loopexit.unr-lcssa ]
  %lcmp.mod5 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod5)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %i.al, %.preheader.epil ], [ %.sroa.04.0.i.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.epil = phi i64 [ %i.ak, %.preheader.epil ], [ %.sroa.02.0.i.epil.init, %.preheader.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.sroa.04.0.i.epil
  %.val.i.epil = load i64, ptr %i.ag, align 8, !noundef !22 ; 4 uses
  %i.ah = mul i64 %.val.i.epil, %.val.i.epil
  %i.ai = mul i64 %i.ah, %.val.i.epil
  %i.aj = sub i64 %.sroa.02.0.i.epil, %.val.i.epil
  %i.ak = add i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = add nuw i64 %.sroa.04.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyu26calc_mwu_asymptotic_pvalue0NCINvXsK_NtBW_5accumjNtB3L_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit.loopexit, label %.preheader.epil, !llvm.loop !113

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyu26calc_mwu_asymptotic_pvalue0NCINvXsK_NtBW_5accumjNtB3L_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit.loopexit: ; preds = %.preheader.epil, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyu26calc_mwu_asymptotic_pvalue0NCINvXsK_NtBW_5accumjNtB3L_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit.loopexit.unr-lcssa
  %.lcssa = phi i64 [ %i.ad, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyu26calc_mwu_asymptotic_pvalue0NCINvXsK_NtBW_5accumjNtB3L_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit.loopexit.unr-lcssa ], [ %i.ak, %.preheader.epil ]
  %i.am = uitofp i64 %.lcssa to double
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyu26calc_mwu_asymptotic_pvalue0NCINvXsK_NtBW_5accumjNtB3L_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyu26calc_mwu_asymptotic_pvalue0NCINvXsK_NtBW_5accumjNtB3L_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyu26calc_mwu_asymptotic_pvalue0NCINvXsK_NtBW_5accumjNtB3L_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit.loopexit, %bb.a
  %.sroa.0.0.i = phi double [ 0.000000e+00, %bb.a ], [ %i.am, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyu26calc_mwu_asymptotic_pvalue0NCINvXsK_NtBW_5accumjNtB3L_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit.loopexit ]
  %i.an = mul i64 %2, %1
  %i.ao = uitofp i64 %i.an to double
  %i.ap = fmul nnan double %i.ao, 5.000000e-01
  %i.aq = uitofp i64 %1 to double                 ; 2 uses
  %i.ar = uitofp i64 %2 to double                 ; 2 uses
  %i.as = fadd double %i.aq, %i.ar                ; 3 uses
  %i.at = fmul nnan double %i.aq, %i.ar
  %i.au = fdiv nnan double %i.at, 1.200000e+01
  %i.av = fadd nnan double %i.as, 1.000000e+00
  %i.aw = fadd nnan double %i.as, -1.000000e+00
  %i.ax = fmul double %i.as, %i.aw
  %i.ay = fdiv double %.sroa.0.0.i, %i.ax
  %i.az = fsub double %i.av, %i.ay
  %i.ba = fmul double %i.au, %i.az
  %i.bb = tail call double @llvm.sqrt.f64(double %i.ba)
  %i.bc = fsub double %0, %i.ap                   ; 2 uses
  %i.bd = fadd double %i.bc, -5.000000e-01
  %.sroa.0.0 = select i1 %4, double %i.bd, double %i.bc
  %i.be = fdiv double %.sroa.0.0, %i.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.a, align 16
  %i.bf = invoke noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution6normalNtB5_6NormalINtB7_13ContinuousCDFddE3cdf(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, double noundef %i.be)
          to label %bb.c unwind label %bb.b

bb.c:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyu26calc_mwu_asymptotic_pvalue0NCINvXsK_NtBW_5accumjNtB3L_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecjENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs8lmMd0ZksV9_6statrs.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.bg, %bb.d ], [ %i.af, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs8lmMd0ZksV9_6statrs.exit: ; preds = %bb.c
  %i.bi = fsub double 1.000000e+00, %i.bf
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
  ret double %i.bi

bb.f:                                             ; preds = %bb.b
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyuNtB2_17MannWhitneyUErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !114, !noundef !22
  %i.b = load ptr, ptr %1, align 8, !nonnull !22, !noundef !22 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !22, !align !23, !noundef !22
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !22, !nonnull !22 ; 3 uses
  switch i8 %i.a, label %default.unreachable36 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.e
  ]

default.unreachable36:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 39) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.b ], [ %i.i, %bb.e ], [ %i.h, %bb.d ]
  ret i1 %.sroa.0.0.in

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 58) #23
  br label %bb.c

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 63) #23
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs8lmMd0ZksV9_6statrs11stats_tests16anderson_darlingNtB2_20AndersonDarlingErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !22, !noundef !22
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !22, !align !23, !noundef !22
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !22, !nonnull !22
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 39) #23
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs8lmMd0ZksV9_6statrs12distribution15fisher_snedecorNtB2_19FisherSnedecorErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !115, !noundef !22
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load ptr, ptr %1, align 8, !nonnull !22, !noundef !22
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !22, !align !23, !noundef !22
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !22, !nonnull !22
  %spec.select = select i1 %i.b, ptr @26, ptr @25
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %spec.select, i64 noundef 51) #23
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs8lmMd0ZksV9_6statrs12distribution6gumbelNtB2_11GumbelErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !115, !noundef !22
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load ptr, ptr %1, align 8, !nonnull !22, !noundef !22 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !22, !align !23, !noundef !22
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !22, !nonnull !22 ; 2 uses
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 15) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.i, %bb.d ], [ %i.h, %bb.b ]
  ret i1 %.sroa.0.0.in

bb.d:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 36) #23
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtNtCs8lmMd0ZksV9_6statrs12distribution15fisher_snedecorNtB5_14FisherSnedecorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.d = load ptr, ptr %1, align 8, !nonnull !22, !noundef !22
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !22, !align !23, !noundef !22
  %i.g = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @29, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtNtCs8lmMd0ZksV9_6statrs12distribution6gumbelNtB5_6GumbelNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs6_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_5Debug3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs6_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_5Debug3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.d = load ptr, ptr %1, align 8, !nonnull !22, !noundef !22
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !22, !align !23, !noundef !22
  %i.g = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @30, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef double @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRdddNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways5_0NCINvXs26_NtNtBX_6traits5accumdNtB2J_3Sum3sumINtBT_3MapINtNtBV_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc3vec3VecdEEEB1x_EE0E0INtB7_5FnMutTdB1t_EE8call_mutB1F_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, double noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.val = load double, ptr %2, align 8, !noundef !22 ; 2 uses
  %i.a = fmul double %.val, %.val
  %i.b = fadd double %1, %i.a
  ret double %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution15fisher_snedecorNtB5_14FisherSnedecorINtB7_13ContinuousCDFddE11inverse_cdf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, double noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = fcmp oge double %1, 0.000000e+00
  %i.b = fcmp ole double %1, 1.000000e+00
  %spec.select.i = and i1 %i.a, %i.b
  br i1 %spec.select.i, label %bb.c, label %bb.b, !prof !60

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @31, ptr noundef nonnull inttoptr (i64 39 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load double, ptr %0, align 8, !noundef !22 ; 2 uses
  %i.d = fmul double %i.c, 5.000000e-01
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load double, ptr %i.e, align 8, !noundef !22 ; 2 uses
  %i.g = fmul double %i.f, 5.000000e-01
  %i.h = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta12inv_beta_reg(double noundef %i.d, double noundef %i.g, double noundef %1)
  %i.i = fdiv double 1.000000e+00, %i.h
  %i.j = fadd double %i.i, -1.000000e+00
  %i.k = fmul double %i.c, %i.j
  %i.l = fdiv double %i.f, %i.k
  ret double %i.l
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution15fisher_snedecorNtB5_14FisherSnedecorINtB7_13ContinuousCDFddE2sf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, double noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = fcmp olt double %1, 0.000000e+00
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp oeq double %1, +inf
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load double, ptr %i.c, align 8, !noundef !22 ; 2 uses
  %i.e = fmul double %i.d, 5.000000e-01
  %i.f = load double, ptr %0, align 8, !noundef !22 ; 2 uses
  %i.g = fmul double %i.f, 5.000000e-01
  %i.h = fmul double %1, %i.f                     ; 2 uses
  %i.i = fadd double %i.d, %i.h
  %i.j = fdiv double %i.h, %i.i
  %i.k = fsub double 1.000000e+00, %i.j
  %i.l = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta8beta_reg(double noundef %i.e, double noundef %i.g, double noundef %i.k)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.0.0 = phi double [ %i.l, %bb.c ], [ 1.000000e+00, %bb.a ], [ 0.000000e+00, %bb.b ]
  ret double %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution15fisher_snedecorNtB5_14FisherSnedecorINtB7_13ContinuousCDFddE3cdf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, double noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = fcmp olt double %1, 0.000000e+00
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp oeq double %1, +inf
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load double, ptr %0, align 8, !noundef !22 ; 2 uses
  %i.d = fmul double %i.c, 5.000000e-01
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load double, ptr %i.e, align 8, !noundef !22 ; 2 uses
  %i.g = fmul double %i.f, 5.000000e-01
  %i.h = fmul double %1, %i.c                     ; 2 uses
  %i.i = fadd double %i.h, %i.f
  %i.j = fdiv double %i.h, %i.i
  %i.k = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta8beta_reg(double noundef %i.d, double noundef %i.g, double noundef %i.j)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.0.0 = phi double [ %i.k, %bb.c ], [ 0.000000e+00, %bb.a ], [ 1.000000e+00, %bb.b ]
  ret double %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, errnomem: write) uwtable
define noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution6gumbelNtB5_6GumbelINtB7_13ContinuousCDFddE2sf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, double noundef %1) unnamed_addr #8 {
bb.a:
  %i.a = load double, ptr %0, align 8, !noundef !22
  %i.b = fsub double %1, %i.a
  %i.c = fneg double %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load double, ptr %i.d, align 8, !noundef !22
  %i.f = fdiv double %i.c, %i.e
  %i.g = tail call double @llvm.exp.f64(double %i.f)
  %i.h = fneg double %i.g
  %i.i = tail call noundef double @expm1(double noundef %i.h) #24
  %i.j = fneg double %i.i
  ret double %i.j
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution15fisher_snedecorNtB5_14FisherSnedecorINtB7_10ContinuousddE3pdf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, double noundef %1) unnamed_addr #0 {
bb.a:
  %or.cond = tail call i1 @llvm.is.fpclass.f64(double %1, /* (inf zero nsub nnorm) */ i32 636)
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load double, ptr %0, align 8, !noundef !22 ; 4 uses
  %i.b = fmul double %1, %i.a                     ; 2 uses
  %i.c = tail call double @llvm.pow.f64(double %i.b, double %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load double, ptr %i.d, align 8, !noundef !22 ; 5 uses
  %i.f = tail call double @llvm.pow.f64(double %i.e, double %i.e)
  %i.g = fmul double %i.c, %i.f
  %i.h = fadd double %i.b, %i.e
  %i.i = fadd double %i.a, %i.e
  %i.j = tail call double @llvm.pow.f64(double %i.h, double %i.i)
  %i.k = fdiv double %i.g, %i.j
  %i.l = tail call double @llvm.sqrt.f64(double %i.k)
  %i.m = fmul double %i.a, 5.000000e-01
  %i.n = fmul double %i.e, 5.000000e-01
  %i.o = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta4beta(double noundef %i.m, double noundef %i.n)
  %i.p = fmul double %1, %i.o
  %i.q = fdiv double %i.l, %i.p
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi double [ %i.q, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret double %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution15fisher_snedecorNtB5_14FisherSnedecorINtB7_10ContinuousddE6ln_pdf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, double noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %or.cond.i = tail call i1 @llvm.is.fpclass.f64(double %1, /* (inf zero nsub nnorm) */ i32 636)
  br i1 %or.cond.i, label %_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution15fisher_snedecorNtB5_14FisherSnedecorINtB7_10ContinuousddE3pdf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load double, ptr %0, align 8, !alias.scope !116, !noundef !22 ; 4 uses
  %i.b = fmul double %1, %i.a                     ; 2 uses
  %i.c = tail call double @llvm.pow.f64(double %i.b, double %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load double, ptr %i.d, align 8, !alias.scope !116, !noundef !22 ; 5 uses
  %i.f = tail call double @llvm.pow.f64(double %i.e, double %i.e)
  %i.g = fmul double %i.c, %i.f
  %i.h = fadd double %i.b, %i.e
  %i.i = fadd double %i.a, %i.e
  %i.j = tail call double @llvm.pow.f64(double %i.h, double %i.i)
  %i.k = fdiv double %i.g, %i.j
  %i.l = tail call double @llvm.sqrt.f64(double %i.k)
  %i.m = fmul double %i.a, 5.000000e-01
  %i.n = fmul double %i.e, 5.000000e-01
  %i.o = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta4beta(double noundef %i.m, double noundef %i.n), !noalias !116
  %i.p = fmul double %1, %i.o
  %i.q = fdiv double %i.l, %i.p
  %i.r = tail call double @llvm.log.f64(double %i.q)
  br label %_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution15fisher_snedecorNtB5_14FisherSnedecorINtB7_10ContinuousddE3pdf.exit

_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution15fisher_snedecorNtB5_14FisherSnedecorINtB7_10ContinuousddE3pdf.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi double [ %i.r, %bb.b ], [ -inf, %bb.a ]
  ret double %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 ptr @_RNvYINtNtNtCsbADZB03g5jP_8nalgebra4base11matrix_view14ViewStorageMutdNtNtB7_9dimension3DynINtB17_5ConstKj1_EB1q_B15_EINtNtB7_7storage13RawStorageMutdB15_E24get_unchecked_linear_mutCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #7 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !noundef !22
  %i.a = getelementptr [8 x i8], ptr %.val, i64 %1
  ret ptr %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef range(i8 0, 3), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #10
end_hunk_1
