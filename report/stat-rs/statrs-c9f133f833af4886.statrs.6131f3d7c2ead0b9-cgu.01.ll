Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stat-rs/original/statrs-c9f133f833af4886.statrs.6131f3d7c2ead0b9-cgu.01?download=true
inline.NumInlined: 319
inline.NumDeleted: 135
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs1xwejQucwHj_5alloc3vec3VecdEj2_ECs8lmMd0ZksV9_6statrs:bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.1 unwind label %bb.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.1: ; preds = %bb.b
  ret void

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i, %bb.a
  %.lcssa16 = phi ptr [ %0, %bb.a ], [ %i.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i ]
  %.lcssa = phi i64 [ 1, %bb.a ], [ 2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i ]
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.lcssa16)
          to label %.body.i unwind label %bb.e

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.f:                                             ; preds = %bb.b, %bb.d
  %.lcssa15 = phi i64 [ 1, %bb.d ], [ 2, %bb.b ]
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.c
  %i.e = phi i64 [ %.lcssa15, %bb.f ], [ %.lcssa, %bb.c ]
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.d, %bb.f ], [ %i.b, %bb.c ]
  %i.f = icmp eq i64 %i.e, 2
  br i1 %i.f, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %.body.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #14
          to label %.loopexit.i unwind label %bb.h

.loopexit.i:                                      ; preds = %bb.g, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

bb.h:                                             ; preds = %bb.g
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecIBC_dEEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecIBw_dEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecdEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtBG_3vec3VecdEEECs8lmMd0ZksV9_6statrs.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecdEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtBG_3vec3VecdEEECs8lmMd0ZksV9_6statrs.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtB4_3mem12maybe_uninit11MaybeUninitdEEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEENtNtNtBM_3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEENtNtNtBT_3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtNtB4_3mem12maybe_uninit11MaybeUninitdEEECs8lmMd0ZksV9_6statrs.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEENtNtNtBT_3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtNtB4_3mem12maybe_uninit11MaybeUninitdEEECs8lmMd0ZksV9_6statrs.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecdEECs8lmMd0ZksV9_6statrs.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecdEECs8lmMd0ZksV9_6statrs.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStoragedNtNtBG_9dimension3DynB1A_EECs8lmMd0ZksV9_6statrs.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecdEECs8lmMd0ZksV9_6statrs.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecdEECs8lmMd0ZksV9_6statrs.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStoragedNtNtBG_9dimension3DynB1A_EECs8lmMd0ZksV9_6statrs.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynINtB1r_5ConstKj1_EINtNtBG_11vec_storage10VecStoragedB1p_B1K_EEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStoragedNtNtBG_9dimension3DynINtB1C_5ConstKj1_EEECs8lmMd0ZksV9_6statrs.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecdEECs8lmMd0ZksV9_6statrs.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecdEECs8lmMd0ZksV9_6statrs.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStoragedNtNtBG_9dimension3DynINtB1C_5ConstKj1_EEECs8lmMd0ZksV9_6statrs.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosample(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, i8 noundef range(i8 0, 4) %3, i8 noundef range(i8 0, 3) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [48 x i8], align 8                ; 10 uses
  %i.k = alloca [24 x i8], align 8                ; 14 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !noundef !4 ; 3 uses
  %.idx256 = shl nuw nsw i64 %i.s, 3
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx256 ; 2 uses
  %.not.not.not.i.not250 = icmp eq i64 %i.s, 0
  br i1 %.not.not.not.i.not250, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosample0EB1J_.exit, label %.lr.ph252

bb.b:                                             ; preds = %.lr.ph252
  %i.u = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %.not.not.not.i.not = icmp eq ptr %i.u, %i.t
  br i1 %.not.not.not.i.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosample0EB1J_.exit, label %.lr.ph252

.lr.ph252:                                        ; preds = %bb.a, %bb.b
  %i.v = phi ptr [ %i.u, %bb.b ], [ %i.q, %bb.a ] ; 2 uses
  %.val.i = load double, ptr %i.v, align 8, !noalias !5, !noundef !4
  %i.w = fcmp uno double %.val.i, 0.000000e+00
  br i1 %i.w, label %bb.e, label %bb.b

.thread98:                                        ; preds = %bb.bf, %bb.ct, %bb.ac, %bb.ab, %bb.x, %bb.g, %bb.w, %bb.aa
  %.sroa.034.1.ph = phi i1 [ true, %bb.aa ], [ true, %bb.w ], [ false, %bb.g ], [ true, %bb.x ], [ true, %bb.ab ], [ true, %bb.ac ], [ true, %bb.ct ], [ true, %bb.bf ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread89

bb.c:                                             ; preds = %bb.p
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread103

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosample0EB1J_.exit: ; preds = %bb.b, %bb.a, %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.aa = load i64, ptr %i.z, align 8, !noundef !4 ; 5 uses
  %.idx257 = shl nuw nsw i64 %i.aa, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx257 ; 2 uses
  %.not.not.not.i43.not253 = icmp eq i64 %i.aa, 0
  br i1 %.not.not.not.i43.not253, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples0_0EB1J_.exit, label %.lr.ph254

bb.d:                                             ; preds = %.lr.ph254
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %.not.not.not.i43.not = icmp eq ptr %i.ac, %i.ab
  br i1 %.not.not.not.i43.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples0_0EB1J_.exit, label %.lr.ph254

.lr.ph254:                                        ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosample0EB1J_.exit, %bb.d
  %i.ad = phi ptr [ %i.ac, %bb.d ], [ %i.y, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosample0EB1J_.exit ] ; 2 uses
  %.val.i44 = load double, ptr %i.ad, align 8, !noalias !8, !noundef !4
  %i.ae = fcmp uno double %.val.i44, 0.000000e+00
  br i1 %i.ae, label %bb.n, label %bb.d

bb.e:                                             ; preds = %.lr.ph252
  switch i8 %4, label %default.unreachable214 [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
  ]

default.unreachable214:                           ; preds = %._crit_edge153, %bb.n, %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> splat (double +qnan), ptr %i.af, align 8
  store i8 0, ptr %0, align 8
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ag = load i64, ptr %1, align 8, !range !11, !noundef !4
  %i.ah = icmp ult i64 %i.s, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ah)
  store ptr %i.q, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.ag, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.t, ptr %.sroa.6.0..sroa_idx, align 8
  invoke void @_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterINtNtB4_9into_iter8IntoIterdENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples_0EdEB2B_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.n)
          to label %bb.m unwind label %.thread98

bb.h:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.ai, align 1
  store i8 1, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.t, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit72, %bb.o, %bb.q, %bb.h, %bb.f
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %.thread103 unwind label %bb.l

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit unwind label %bb.cz

bb.l:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosample0EB1J_.exit

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples0_0EB1J_.exit: ; preds = %bb.d, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosample0EB1J_.exit, %bb.r
  %i.al = phi i64 [ %.pre, %bb.r ], [ %i.aa, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosample0EB1J_.exit ], [ %i.aa, %bb.d ] ; 2 uses
  %i.am = load i64, ptr %i.r, align 8, !noundef !4 ; 6 uses
  %i.an = icmp ult i64 %i.am, 1152921504606846976
  call void @llvm.assume(i1 %i.an)
  %i.ao = insertelement <2 x i64> poison, i64 %i.am, i64 0
  %i.ap = insertelement <2 x i64> %i.ao, i64 %i.al, i64 1
  %i.aq = uitofp <2 x i64> %i.ap to <2 x double>  ; 3 uses
  %i.ar = icmp ult i64 %i.al, 1152921504606846976
  call void @llvm.assume(i1 %i.ar)
  %i.as = extractelement <2 x double> %i.aq, i64 0
  %i.at = call i64 @llvm.fptoui.sat.i64.f64(double %i.as) ; 8 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.t, label %bb.s

bb.n:                                             ; preds = %.lr.ph254
  switch i8 %4, label %default.unreachable214 [
    i8 0, label %bb.o
    i8 1, label %bb.p
    i8 2, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> splat (double +qnan), ptr %i.av, align 8
  store i8 0, ptr %0, align 8
  br label %bb.i

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.aw = load i64, ptr %2, align 8, !range !11, !noundef !4
  %i.ax = icmp ult i64 %i.aa, 1152921504606846976
  call void @llvm.assume(i1 %i.ax)
  store ptr %i.y, ptr %i.l, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.y, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %i.aw, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.ab, ptr %.sroa.64.0..sroa_idx, align 8
  invoke void @_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterINtNtB4_9into_iter8IntoIterdENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples1_0EdEB2B_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.l)
          to label %bb.r unwind label %bb.c

bb.q:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.ay, align 1
  store i8 1, ptr %0, align 8
  br label %bb.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.pre = load i64, ptr %i.z, align 8
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples0_0EB1J_.exit

bb.s:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples0_0EB1J_.exit
  %i.az = extractelement <2 x double> %i.aq, i64 1
  %i.ba = call i64 @llvm.fptoui.sat.i64.f64(double %i.az) ; 8 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples0_0EB1J_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.bc, align 1
  store i8 1, ptr %0, align 8
  br label %bb.i

bb.u:                                             ; preds = %bb.s
  %..i = call noundef range(i64 1, 0) i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.ba, i64 range(i64 1, 0) %i.at) ; 10 uses
  %..i45 = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %i.ba, i64 range(i64 1, 0) %i.at) ; 10 uses
  %i.bd = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12
  store ptr %i.a, ptr %i.g, align 8, !noalias !15
  %i.be = icmp samesign ult i64 %i.am, 2
  br i1 %i.be, label %bb.y, label %bb.v, !prof !19

bb.v:                                             ; preds = %bb.u
  %i.bf = icmp samesign ult i64 %i.am, 21
  br i1 %i.bf, label %bb.x, label %bb.w, !prof !19

bb.w:                                             ; preds = %bb.v
  invoke void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable14driftsort_maindNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0INtNtB18_3vec3VecdEEB1Q_(ptr noalias nofree noundef nonnull align 8 %i.bd, i64 noundef range(i64 0, 1152921504606846976) %i.am, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #15
          to label %bb.y unwind label %.thread98

bb.x:                                             ; preds = %bb.v
  invoke void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0EB2d_(ptr noalias nofree noundef nonnull align 8 %i.bd, i64 noundef range(i64 0, 1152921504606846976) %i.am, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.y unwind label %.thread98

bb.y:                                             ; preds = %bb.u, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12
  %i.bg = load ptr, ptr %i.x, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bh = load i64, ptr %i.z, align 8, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !20
  store ptr %i.a, ptr %i.f, align 8, !noalias !23
  %i.bi = icmp samesign ult i64 %i.bh, 2
  br i1 %i.bi, label %bb.ac, label %bb.z, !prof !19

bb.z:                                             ; preds = %bb.y
  %i.bj = icmp samesign ult i64 %i.bh, 21
  br i1 %i.bj, label %bb.ab, label %bb.aa, !prof !19

bb.aa:                                            ; preds = %bb.z
  invoke void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable14driftsort_maindNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0INtNtB18_3vec3VecdEEB1Q_(ptr noalias nofree noundef nonnull align 8 %i.bg, i64 noundef range(i64 0, 1152921504606846976) %i.bh, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #15
          to label %bb.ac unwind label %.thread98

bb.ab:                                            ; preds = %bb.z
  invoke void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB2d_(ptr noalias nofree noundef nonnull align 8 %i.bg, i64 noundef range(i64 0, 1152921504606846976) %i.bh, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.ac unwind label %.thread98

bb.ac:                                            ; preds = %bb.y, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.ad unwind label %.thread98

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.af unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #14
          to label %.thread89 unwind label %bb.dc

bb.af:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXs0_NtCs1xwejQucwHj_5alloc5sliceSINtNtB7_3vec3VecdEINtB5_6ConcatdE6concatCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.j, i64 noundef 2)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i.preheader unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs1xwejQucwHj_5alloc3vec3VecdEj2_ECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(48) %i.j) #14
          to label %.thread89 unwind label %bb.dc

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i: ; preds = %bb.aj
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bn)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bn)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i.1 unwind label %bb.al

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i.1: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !27
  store ptr %i.a, ptr %i.e, align 8, !noalias !30
  %i.bs = icmp samesign ult i64 %i.br, 2
  br i1 %i.bs, label %bb.as, label %bb.ap, !prof !19

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i.preheader: ; preds = %bb.af
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.aj unwind label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i.preheader
  %.lcssa275 = phi ptr [ %i.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i.preheader ], [ %i.bn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i ]
  %.lcssa272 = phi i64 [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i.preheader ], [ 2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i ]
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.lcssa275)
          to label %.body.i.i unwind label %bb.ak

bb.aj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i.preheader
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i unwind label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.al:                                            ; preds = %bb.ah, %bb.aj
  %.lcssa273 = phi i64 [ 1, %bb.aj ], [ 2, %bb.ah ]
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.al, %bb.ai
  %i.bw = phi i64 [ %.lcssa273, %bb.al ], [ %.lcssa272, %bb.ai ]
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bv, %bb.al ], [ %i.bt, %bb.ai ] ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 2
  br i1 %i.bx, label %.body49, label %bb.am

bb.am:                                            ; preds = %.body.i.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bl) #14
          to label %.body49 unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.ao:                                            ; preds = %.invoke, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecIBC_dEEECs8lmMd0ZksV9_6statrs.exit.i, %_RINvXs_NtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs8lmMd0ZksV9_6statrs.exit.i, %bb.bi, %.noexc59, %bb.bh, %bb.ar, %bb.aq, %bb.as
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body49

.body49:                                          ; preds = %bb.bk, %bb.cf, %bb.ao, %.body.i.i, %bb.am
  %eh.lpad-body50 = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %eh.lpad-body.i.i, %bb.am ], [ %i.by, %bb.ao ], [ %i.kg, %bb.cf ], [ %i.hk, %bb.bk ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #14
          to label %.thread89 unwind label %bb.dc

bb.ap:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i.1
  %i.bz = icmp samesign ult i64 %i.br, 21
  br i1 %i.bz, label %bb.ar, label %bb.aq, !prof !19

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable14driftsort_maindNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0INtNtB18_3vec3VecdEEB1Q_(ptr noalias nofree noundef nonnull align 8 %i.bp, i64 noundef range(i64 0, 1152921504606846976) %i.br, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #15
          to label %bb.as unwind label %bb.ao

bb.ar:                                            ; preds = %bb.ap
  invoke void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB2d_(ptr noalias nofree noundef nonnull align 8 %i.bp, i64 noundef range(i64 0, 1152921504606846976) %i.br, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.as unwind label %bb.ao

bb.as:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i.1, %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !27
  invoke void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdE8dedup_byNCNvMs5_B5_Bv_5dedup0ECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.at unwind label %bb.ao

bb.at:                                            ; preds = %bb.as
  %i.ca = load ptr, ptr %i.bo, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cb = load i64, ptr %i.bq, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.cb, 3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx
end_hunk_0
begin_hunk_1_@_RNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test41onesample_marsaglia_et_al_twosided_pvalue:bb.a
  %or.cond.i31 = and i1 %i.dq, %i.dp
  br i1 %or.cond.i31, label %bb.ak, label %bb.aj, !prof !71

bb.aj:                                            ; preds = %._crit_edge
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @37, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #17
          to label %.noexc32 unwind label %.loopexit.split-lp

.noexc32:                                         ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %._crit_edge
  %.val21 = load ptr, ptr %i.cp, align 8, !nonnull !4, !noundef !4
  %i.dr = getelementptr [8 x i8], ptr %.val21, i64 %.sroa.0.0.i30
  %i.ds = load double, ptr %i.dr, align 8, !noundef !4
  %i.dt = invoke noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function9factorial9factorial(i64 noundef %i.t)
          to label %bb.al unwind label %.loopexit.split-lp

bb.al:                                            ; preds = %bb.ak
  %i.du = fmul double %i.ds, %i.dt
  %i.dv = call i32 @llvm.fptosi.sat.i32.f64(double %2)
  %i.dw = call double @llvm.powi.f64.i32(double %2, i32 %i.dv)
  %i.dx = fdiv double %i.du, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.dx, ptr %i.dy, align 8
  store i8 0, ptr %0, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.q)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStoragedNtNtBG_9dimension3DynB1A_EECs8lmMd0ZksV9_6statrs.exit.i unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.q)
          to label %.thread unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStoragedNtNtBG_9dimension3DynB1A_EECs8lmMd0ZksV9_6statrs.exit.i: ; preds = %bb.al
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.q)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit unwind label %bb.ad

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStoragedNtNtBG_9dimension3DynB1A_EECs8lmMd0ZksV9_6statrs.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStoragedNtNtBG_9dimension3DynINtB1C_5ConstKj1_EEECs8lmMd0ZksV9_6statrs.exit.i unwind label %bb.ao

bb.ao:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit
  %i.eb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %.body unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStoragedNtNtBG_9dimension3DynINtB1C_5ConstKj1_EEECs8lmMd0ZksV9_6statrs.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynINtB1r_5ConstKj1_EINtNtBG_11vec_storage10VecStoragedB1p_B1K_EEECs8lmMd0ZksV9_6statrs.exit unwind label %.loopexit.split-lp102

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynINtB1r_5ConstKj1_EINtNtBG_11vec_storage10VecStoragedB1p_B1K_EEECs8lmMd0ZksV9_6statrs.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStoragedNtNtBG_9dimension3DynINtB1C_5ConstKj1_EEECs8lmMd0ZksV9_6statrs.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit42 unwind label %bb.aq

bb.aq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynINtB1r_5ConstKj1_EINtNtBG_11vec_storage10VecStoragedB1p_B1K_EEECs8lmMd0ZksV9_6statrs.exit
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.s)
          to label %common.resume unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit42: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynINtB1r_5ConstKj1_EINtNtBG_11vec_storage10VecStoragedB1p_B1K_EEECs8lmMd0ZksV9_6statrs.exit
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.as

bb.as:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit42, %bb.l
  ret void

bb.at:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  call void @llvm.experimental.noalias.scope.decl(metadata !85)
  %.val.i43 = load ptr, ptr %i.cw, align 8, !alias.scope !85, !noalias !87 ; 3 uses
  %.val1.i44 = load i64, ptr %i.cx, align 8, !alias.scope !85, !noalias !87, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !94
  store i64 0, ptr %i.i, align 8, !noalias !94
  store ptr inttoptr (i64 8 to ptr), ptr %i.da, align 8, !noalias !94
  store i64 0, ptr %i.db, align 8, !noalias !94
  invoke void @_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i, i64 noundef 0, i64 noundef %.val65.i.pre207, i64 noundef 8, i64 noundef 8)
          to label %bb.au unwind label %bb.ba, !noalias !94

bb.au:                                            ; preds = %bb.at
  invoke void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEE11resize_withNvMs1_BI_BF_6uninitECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %.val65.i.pre207)
          to label %bb.av unwind label %bb.ba, !noalias !94

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !94
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !94
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.ef = load i64, ptr %i.dc, align 8, !alias.scope !97, !noalias !100, !noundef !4 ; 2 uses
  %i.eg = icmp ult i64 %i.ef, 1152921504606846976
  call void @llvm.assume(i1 %i.eg)
  %i.eh = icmp eq i64 %.val65.i.pre207, %i.ef
  br i1 %i.eh, label %.noexc7.i.i, label %bb.ax, !prof !19

bb.aw:                                            ; preds = %bb.ax
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtB4_3mem12maybe_uninit11MaybeUninitdEEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #14
          to label %.body.i unwind label %bb.az, !noalias !100

bb.ax:                                            ; preds = %bb.av
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #16
          to label %bb.ay unwind label %bb.aw, !noalias !102

bb.ay:                                            ; preds = %bb.ax
  unreachable

bb.az:                                            ; preds = %bb.aw
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13, !noalias !100
  unreachable

bb.ba:                                            ; preds = %bb.au, %bb.at
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtB4_3mem12maybe_uninit11MaybeUninitdEEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #14
          to label %.body.i unwind label %bb.bb, !noalias !94

bb.bb:                                            ; preds = %bb.ba
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13, !noalias !94
  unreachable

.noexc7.i.i:                                      ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !94
  store i64 %.val65.i.pre207, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !92
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i43) ]
  %i.em = icmp eq i64 %.val66.i.pre209, %.val1.i44
  %.val6.i.i.i = load ptr, ptr %i.dd, align 8, !alias.scope !103, !noalias !104, !nonnull !4 ; 2 uses
  br i1 %i.em, label %.noexc7.split.i.i, label %.split.i.i, !prof !71

.noexc7.split.i.i:                                ; preds = %.noexc7.i.i
  %i.en = icmp eq i64 %.val66.i.pre209, 0
  %.val63.us.i.i = load ptr, ptr %i.de, align 8, !noalias !92, !nonnull !4, !noundef !4 ; 4 uses
  br i1 %i.en, label %.noexc17.us.i.i, label %bb.bc

.noexc17.us.i.i:                                  ; preds = %.noexc7.split.i.i
  %.not.i91.us.i.i = icmp eq i64 %.val65.i.pre207, 0
  br i1 %.not.i91.us.i.i, label %_RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit11gemm_uninitNtNtB4_6uninit6UninitdNtNtB4_9dimension3DynINtB1m_5ConstKj1_EB1k_B1k_B1k_B1F_INtNtB4_11vec_storage10VecStorageINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEB1k_B1F_EIB2e_dB1k_B1k_EIB2e_dB1k_B1F_EECs8lmMd0ZksV9_6statrs.exit.i.i, label %.preheader.preheader.i.us.i.i

.preheader.preheader.i.us.i.i:                    ; preds = %.noexc17.us.i.i
  %i.eo = shl nuw nsw i64 %.val65.i.pre207, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.val63.us.i.i, i8 0, i64 %i.eo, i1 false), !alias.scope !105, !noalias !110
  br label %_RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit11gemm_uninitNtNtB4_6uninit6UninitdNtNtB4_9dimension3DynINtB1m_5ConstKj1_EB1k_B1k_B1k_B1F_INtNtB4_11vec_storage10VecStorageINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEB1k_B1F_EIB2e_dB1k_B1k_EIB2e_dB1k_B1F_EECs8lmMd0ZksV9_6statrs.exit.i.i

.split.i.i:                                       ; preds = %.noexc7.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 53 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #17
          to label %.noexc16.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !92

.noexc16.i.i:                                     ; preds = %.split.i.i
  unreachable

bb.bc:                                            ; preds = %.noexc7.split.i.i
  %i.ep = load double, ptr %.val.i43, align 8, !alias.scope !113, !noalias !92, !noundef !4
  invoke void @_RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit9array_axcNtNtB4_6uninit6UninitdECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 %.val63.us.i.i, i64 noundef %.val65.i.pre207, double noundef 1.000000e+00, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val6.i.i.i, i64 noundef %.val65.i.pre207, double noundef %i.ep, i64 noundef 1, i64 noundef 1, i64 noundef %.val65.i.pre207)
          to label %.noexc23.i.i.preheader unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !92

.noexc23.i.i.preheader:                           ; preds = %bb.bc
  %exitcond.not.i.i271 = icmp eq i64 %.val66.i.pre209, 1
  br i1 %exitcond.not.i.i271, label %_RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit11gemm_uninitNtNtB4_6uninit6UninitdNtNtB4_9dimension3DynINtB1m_5ConstKj1_EB1k_B1k_B1k_B1F_INtNtB4_11vec_storage10VecStorageINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEB1k_B1F_EIB2e_dB1k_B1k_EIB2e_dB1k_B1F_EECs8lmMd0ZksV9_6statrs.exit.i.i, label %.lr.ph273

.noexc23.i.i:                                     ; preds = %.lr.ph273
  %i.eq = add i64 %.sroa.06.0.i.i.i272, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.eq, %.val66.i.pre209
  br i1 %exitcond.not.i.i, label %_RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit11gemm_uninitNtNtB4_6uninit6UninitdNtNtB4_9dimension3DynINtB1m_5ConstKj1_EB1k_B1k_B1k_B1F_INtNtB4_11vec_storage10VecStorageINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEB1k_B1F_EIB2e_dB1k_B1k_EIB2e_dB1k_B1F_EECs8lmMd0ZksV9_6statrs.exit.i.i, label %.lr.ph273

.lr.ph273:                                        ; preds = %.noexc23.i.i.preheader, %.noexc23.i.i
  %.sroa.06.0.i.i.i272 = phi i64 [ %i.eq, %.noexc23.i.i ], [ 1, %.noexc23.i.i.preheader ] ; 3 uses
  %i.er = mul i64 %.sroa.06.0.i.i.i272, %.val65.i.pre207
  %i.es = getelementptr [8 x i8], ptr %.val6.i.i.i, i64 %i.er ; 2 uses
  %i.et = getelementptr [8 x i8], ptr %.val.i43, i64 %.sroa.06.0.i.i.i272
  %i.eu = load double, ptr %i.et, align 8, !alias.scope !116, !noalias !92, !noundef !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.es) ]
  invoke void @_RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit11array_axcpyNtNtB4_6uninit6UninitdECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 %.val63.us.i.i, i64 noundef %.val65.i.pre207, double noundef 1.000000e+00, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.es, i64 noundef %.val65.i.pre207, double noundef %i.eu, double noundef 1.000000e+00, i64 noundef 1, i64 noundef 1, i64 noundef %.val65.i.pre207)
          to label %.noexc23.i.i unwind label %.loopexit.i.i, !noalias !92

_RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit11gemm_uninitNtNtB4_6uninit6UninitdNtNtB4_9dimension3DynINtB1m_5ConstKj1_EB1k_B1k_B1k_B1F_INtNtB4_11vec_storage10VecStorageINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEB1k_B1F_EIB2e_dB1k_B1k_EIB2e_dB1k_B1F_EECs8lmMd0ZksV9_6statrs.exit.i.i: ; preds = %.noexc23.i.i, %.noexc23.i.i.preheader, %.preheader.preheader.i.us.i.i, %.noexc17.us.i.i
  %.sroa.03.0.copyload.i.i = load i64, ptr %i.j, align 8, !noalias !92
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !92 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !119
  %i.ev = icmp ult i64 %.sroa.5.0.copyload.i.i, 1152921504606846976
  call void @llvm.assume(i1 %i.ev)
  store i64 %.sroa.03.0.copyload.i.i, ptr %i.g, align 8, !noalias !119
  store ptr %.val63.us.i.i, ptr %i.df, align 8, !noalias !119
  store i64 %.sroa.5.0.copyload.i.i, ptr %i.dg, align 8, !noalias !119
  %i.ew = icmp eq i64 %.val65.i.pre207, %.sroa.5.0.copyload.i.i
  br i1 %i.ew, label %bb.bk, label %bb.be, !prof !19

bb.bd:                                            ; preds = %bb.be
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #14
          to label %.body.i unwind label %bb.bg, !noalias !123

bb.be:                                            ; preds = %_RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit11gemm_uninitNtNtB4_6uninit6UninitdNtNtB4_9dimension3DynINtB1m_5ConstKj1_EB1k_B1k_B1k_B1F_INtNtB4_11vec_storage10VecStorageINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEB1k_B1F_EIB2e_dB1k_B1k_EIB2e_dB1k_B1F_EECs8lmMd0ZksV9_6statrs.exit.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #16
          to label %bb.bf unwind label %bb.bd, !noalias !126

bb.bf:                                            ; preds = %bb.be
  unreachable

bb.bg:                                            ; preds = %bb.bd
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13, !noalias !123
  unreachable

.loopexit.i.i:                                    ; preds = %.lr.ph273
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.i.i:                  ; preds = %bb.bc
  %lpad.loopexit36.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.i.i:         ; preds = %.split.i.i
  %lpad.loopexit.split-lp37.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit36.i.i, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp37.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEENtNtNtBM_3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStorageINtNtNtB4_3mem12maybe_uninit11MaybeUninitdENtNtBG_9dimension3DynINtB2i_5ConstKj1_EEECs8lmMd0ZksV9_6statrs.exit.i.i.i unwind label %bb.bh, !noalias !92

bb.bh:                                            ; preds = %.loopexit.split-lp.i.i
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEENtNtNtBT_3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %.body103.i.i unwind label %bb.bi, !noalias !92

bb.bi:                                            ; preds = %bb.bh
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13, !noalias !92
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStorageINtNtNtB4_3mem12maybe_uninit11MaybeUninitdENtNtBG_9dimension3DynINtB2i_5ConstKj1_EEECs8lmMd0ZksV9_6statrs.exit.i.i.i: ; preds = %.loopexit.split-lp.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEENtNtNtBT_3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %.body.i unwind label %bb.bj, !noalias !92

bb.bj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStorageINtNtNtB4_3mem12maybe_uninit11MaybeUninitdENtNtBG_9dimension3DynINtB2i_5ConstKj1_EEECs8lmMd0ZksV9_6statrs.exit.i.i.i
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body103.i.i

.body103.i.i:                                     ; preds = %bb.bj, %bb.bh
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13, !noalias !92
  unreachable

.body.i:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStorageINtNtNtB4_3mem12maybe_uninit11MaybeUninitdENtNtBG_9dimension3DynINtB2i_5ConstKj1_EEECs8lmMd0ZksV9_6statrs.exit.i.i.i, %bb.bd, %bb.ba, %bb.aw
  %eh.lpad-body.i = phi { ptr, i32 } [ %lpad.phi.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStorageINtNtNtB4_3mem12maybe_uninit11MaybeUninitdENtNtBG_9dimension3DynINtB2i_5ConstKj1_EEECs8lmMd0ZksV9_6statrs.exit.i.i.i ], [ %i.ei, %bb.aw ], [ %i.ek, %bb.ba ], [ %i.ex, %bb.bd ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynINtB1r_5ConstKj1_EINtNtBG_11vec_storage10VecStoragedB1p_B1K_EEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p) #14
          to label %.body45 unwind label %bb.bn, !noalias !87

bb.bk:                                            ; preds = %_RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit11gemm_uninitNtNtB4_6uninit6UninitdNtNtB4_9dimension3DynINtB1m_5ConstKj1_EB1k_B1k_B1k_B1F_INtNtB4_11vec_storage10VecStorageINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEB1k_B1F_EIB2e_dB1k_B1k_EIB2e_dB1k_B1F_EECs8lmMd0ZksV9_6statrs.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !92
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynINtB1r_5ConstKj1_EINtNtBG_11vec_storage10VecStoragedB1p_B1K_EEECs8lmMd0ZksV9_6statrs.exit.i unwind label %bb.bl, !noalias !87

bb.bl:                                            ; preds = %bb.bk
  %i.fc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %.body45 unwind label %bb.bm, !noalias !87

bb.bm:                                            ; preds = %bb.bl
  %i.fd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13, !noalias !87
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynINtB1r_5ConstKj1_EINtNtBG_11vec_storage10VecStoragedB1p_B1K_EEECs8lmMd0ZksV9_6statrs.exit.i: ; preds = %bb.bk
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %_RNvXsa_NtNtCsbADZB03g5jP_8nalgebra4base3opsRINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB13_INtNtB7_11vec_storage10VecStoragedB13_B13_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith3MulIBH_dB13_INtB15_5ConstKj1_EIB1t_dB13_B2X_EEE3mulCs8lmMd0ZksV9_6statrs.exit unwind label %.loopexit

bb.bn:                                            ; preds = %.body.i
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13, !noalias !87
  unreachable

_RNvXsa_NtNtCsbADZB03g5jP_8nalgebra4base3opsRINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB13_INtNtB7_11vec_storage10VecStoragedB13_B13_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith3MulIBH_dB13_INtB15_5ConstKj1_EIB1t_dB13_B2X_EEE3mulCs8lmMd0ZksV9_6statrs.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynINtB1r_5ConstKj1_EINtNtBG_11vec_storage10VecStoragedB1p_B1K_EEECs8lmMd0ZksV9_6statrs.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  store i64 %.val65.i.pre207, ptr %.sroa.4.0..sroa_idx.i25, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %.val65.i.pre = load i64, ptr %i.cy, align 8, !alias.scope !129, !noalias !132
  %.val66.i.pre = load i64, ptr %i.cz, align 8, !alias.scope !129, !noalias !132
  br label %bb.bo

bb.bo:                                            ; preds = %bb.ai, %_RNvXsa_NtNtCsbADZB03g5jP_8nalgebra4base3opsRINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB13_INtNtB7_11vec_storage10VecStoragedB13_B13_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith3MulIBH_dB13_INtB15_5ConstKj1_EIB1t_dB13_B2X_EEE3mulCs8lmMd0ZksV9_6statrs.exit
  %.val66.i = phi i64 [ %.val66.i.pre209, %bb.ai ], [ %.val66.i.pre, %_RNvXsa_NtNtCsbADZB03g5jP_8nalgebra4base3opsRINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB13_INtNtB7_11vec_storage10VecStoragedB13_B13_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith3MulIBH_dB13_INtB15_5ConstKj1_EIB1t_dB13_B2X_EEE3mulCs8lmMd0ZksV9_6statrs.exit ] ; 27 uses
  %.val65.i = phi i64 [ %.val65.i.pre207, %bb.ai ], [ %.val65.i.pre, %_RNvXsa_NtNtCsbADZB03g5jP_8nalgebra4base3opsRINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB13_INtNtB7_11vec_storage10VecStoragedB13_B13_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith3MulIBH_dB13_INtB15_5ConstKj1_EIB1t_dB13_B2X_EEE3mulCs8lmMd0ZksV9_6statrs.exit ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.088)
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  call void @llvm.experimental.noalias.scope.decl(metadata !135)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !137
  store i64 0, ptr %i.c, align 8, !noalias !137
  store ptr inttoptr (i64 8 to ptr), ptr %i.dh, align 8, !noalias !137
  store i64 0, ptr %i.di, align 8, !noalias !137
  %i.ff = mul i64 %.val66.i, %.val65.i            ; 4 uses
  invoke void @_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef 0, i64 noundef %i.ff, i64 noundef 8, i64 noundef 8)
          to label %bb.bp unwind label %bb.bv, !noalias !137

bb.bp:                                            ; preds = %bb.bo
  invoke void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEE11resize_withNvMs1_BI_BF_6uninitECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.ff)
          to label %bb.bq unwind label %bb.bv, !noalias !137

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !137
  call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.fg = load i64, ptr %i.dj, align 8, !alias.scope !140, !noalias !143, !noundef !4 ; 2 uses
  %i.fh = icmp ult i64 %i.fg, 1152921504606846976
  call void @llvm.assume(i1 %i.fh)
  %i.fi = icmp eq i64 %i.ff, %i.fg
  br i1 %i.fi, label %.noexc7.i, label %bb.bs, !prof !19

bb.br:                                            ; preds = %bb.bs
  %i.fj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtB4_3mem12maybe_uninit11MaybeUninitdEEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #14
          to label %.body45 unwind label %bb.bu, !noalias !143

bb.bs:                                            ; preds = %bb.bq
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #16
          to label %bb.bt unwind label %bb.br, !noalias !145

bb.bt:                                            ; preds = %bb.bs
  unreachable

bb.bu:                                            ; preds = %bb.br
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13, !noalias !143
  unreachable

bb.bv:                                            ; preds = %bb.bp, %bb.bo
  %i.fl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtB4_3mem12maybe_uninit11MaybeUninitdEEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #14
          to label %.body45 unwind label %bb.bw, !noalias !137

bb.bw:                                            ; preds = %bb.bv
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13, !noalias !137
  unreachable

.noexc7.i:                                        ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !137
  store i64 %.val65.i, ptr %.sroa.4.0..sroa_idx.i51, align 8, !noalias !136
  store i64 %.val66.i, ptr %.sroa.5.0..sroa_idx.i52, align 8, !noalias !136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !146
  store i64 %.val66.i, ptr %i.e, align 8, !noalias !146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !146
  store i64 %.val65.i, ptr %i.d, align 8, !noalias !146
  %i.fn = icmp ugt i64 %.val65.i, 5
  %i.fo = icmp ugt i64 %.val66.i, 5
  %or.cond.i.i = and i1 %i.fn, %i.fo
  br i1 %or.cond.i.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %.noexc7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !146
  %.not.i = icmp eq i64 %.val66.i, 0
  br i1 %.not.i, label %._RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit11gemm_uninitNtNtB4_6uninit6UninitdNtNtB4_9dimension3DynB1k_B1k_B1k_B1k_B1k_INtNtB4_11vec_storage10VecStorageINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEB1k_B1k_EIB20_dB1k_B1k_EB3C_ECs8lmMd0ZksV9_6statrs.exit_crit_edge.i, label %.lr.ph.i

._RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit11gemm_uninitNtNtB4_6uninit6UninitdNtNtB4_9dimension3DynB1k_B1k_B1k_B1k_B1k_INtNtB4_11vec_storage10VecStorageINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEB1k_B1k_EIB20_dB1k_B1k_EB3C_ECs8lmMd0ZksV9_6statrs.exit_crit_edge.i: ; preds = %bb.bx
  %.sroa.4137.0.copyload.pre.i = load ptr, ptr %.sroa.4137.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !136
  br label %_RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit11gemm_uninitNtNtB4_6uninit6UninitdNtNtB4_9dimension3DynB1k_B1k_B1k_B1k_B1k_INtNtB4_11vec_storage10VecStorageINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEB1k_B1k_EIB20_dB1k_B1k_EB3C_ECs8lmMd0ZksV9_6statrs.exit.i

.lr.ph.i:                                         ; preds = %bb.bx
  %.val6.i104.i = load ptr, ptr %i.dd, align 8, !alias.scope !135, !noalias !151, !nonnull !4 ; 3 uses
  %i.fp = icmp eq i64 %.val66.i, %.val65.i
  br i1 %i.fp, label %.lr.ph.split.split.i.preheader, label %.split.us.invoke.i, !prof !71

.lr.ph.split.split.i.preheader:                   ; preds = %.lr.ph.i
  %.val6.i.i.pre = load ptr, ptr %.sroa.4137.0..sroa_idx.phi.trans.insert.i, align 8, !alias.scope !152, !noalias !155 ; 2 uses
  %exitcond.not.i274 = icmp eq i64 %.val66.i, 1
  br label %.lr.ph.split.split.i

bb.by:                                            ; preds = %.noexc7.i
  %i.fq = icmp eq i64 %.val66.i, %.val65.i
  br i1 %i.fq, label %.noexc15.i, label %bb.bz, !prof !19

bb.bz:                                            ; preds = %bb.by
  invoke void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noundef nonnull @0, ptr nonnull inttoptr (i64 91 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #17
          to label %.noexc8.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp, !noalias !136

.noexc8.i:                                        ; preds = %bb.bz
  unreachable

.noexc15.i:                                       ; preds = %bb.by
  %.val83.i = load ptr, ptr %i.dd, align 8, !alias.scope !129, !noalias !132, !nonnull !4, !noundef !4 ; 2 uses
  %.val99.i = load ptr, ptr %.sroa.4137.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !136, !nonnull !4, !noundef !4 ; 2 uses
  invoke void @_RNvNtCslfcMS2w8uIp_14matrixmultiply4gemm5dgemm(i64 noundef %.val66.i, i64 noundef %.val66.i, i64 noundef %.val66.i, double noundef 1.000000e+00, ptr noundef nonnull %.val83.i, i64 noundef 1, i64 noundef %.val66.i, ptr noundef nonnull %.val83.i, i64 noundef 1, i64 noundef %.val66.i, double noundef 0.000000e+00, ptr noundef nonnull %.val99.i, i64 noundef 1, i64 noundef %.val66.i)
          to label %.noexc16.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit, !noalias !136

.noexc16.i:                                       ; preds = %.noexc15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !146
  br label %_RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit11gemm_uninitNtNtB4_6uninit6UninitdNtNtB4_9dimension3DynB1k_B1k_B1k_B1k_B1k_INtNtB4_11vec_storage10VecStorageINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEB1k_B1k_EIB20_dB1k_B1k_EB3C_ECs8lmMd0ZksV9_6statrs.exit.i

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.split.i.preheader, %.noexc21.loopexit.i
  %.sroa.010.0.i176.i = phi i64 [ %i.fr, %.noexc21.loopexit.i ], [ 0, %.lr.ph.split.split.i.preheader ] ; 2 uses
  %i.fr = add nuw i64 %.sroa.010.0.i176.i, 1      ; 2 uses
  %i.fs = mul i64 %.sroa.010.0.i176.i, %.val66.i  ; 2 uses
  %i.ft = getelementptr [8 x i8], ptr %.val6.i.i.pre, i64 %i.fs ; 3 uses
  %i.fu = getelementptr [8 x i8], ptr %.val6.i104.i, i64 %i.fs ; 2 uses
  %i.fv = load double, ptr %i.fu, align 8, !alias.scope !157, !noalias !136, !noundef !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ft) ]
  invoke void @_RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit9array_axcNtNtB4_6uninit6UninitdECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 %i.ft, i64 noundef %.val66.i, double noundef 1.000000e+00, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val6.i104.i, i64 noundef %.val66.i, double noundef %i.fv, i64 noundef 1, i64 noundef 1, i64 noundef %.val66.i)
          to label %.noexc33.i.preheader unwind label %.loopexit.split-lp.loopexit.i, !noalias !136

.noexc33.i.preheader:                             ; preds = %.lr.ph.split.split.i
  br i1 %exitcond.not.i274, label %.noexc21.loopexit.i, label %.lr.ph276

.split.us.invoke.i:                               ; preds = %.lr.ph.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 53 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #17
          to label %.split.us.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp, !noalias !136

.split.us.cont.i:                                 ; preds = %.split.us.invoke.i
  unreachable

.noexc33.i:                                       ; preds = %.lr.ph276
  %i.fw = add i64 %.sroa.06.0.i.i275, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fw, %.val66.i
  br i1 %exitcond.not.i, label %.noexc21.loopexit.i, label %.lr.ph276

.lr.ph276:                                        ; preds = %.noexc33.i.preheader, %.noexc33.i
  %.sroa.06.0.i.i275 = phi i64 [ %i.fw, %.noexc33.i ], [ 1, %.noexc33.i.preheader ] ; 3 uses
  %i.fx = mul i64 %.sroa.06.0.i.i275, %.val66.i
  %i.fy = getelementptr [8 x i8], ptr %.val6.i104.i, i64 %i.fx ; 2 uses
  %i.fz = getelementptr [8 x i8], ptr %i.fu, i64 %.sroa.06.0.i.i275
  %i.ga = load double, ptr %i.fz, align 8, !alias.scope !160, !noalias !136, !noundef !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fy) ]
  invoke void @_RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit11array_axcpyNtNtB4_6uninit6UninitdECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 %i.ft, i64 noundef %.val66.i, double noundef 1.000000e+00, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.fy, i64 noundef %.val66.i, double noundef %i.ga, double noundef 1.000000e+00, i64 noundef 1, i64 noundef 1, i64 noundef %.val66.i)
          to label %.noexc33.i unwind label %.loopexit.i, !noalias !136

.noexc21.loopexit.i:                              ; preds = %.noexc33.i, %.noexc33.i.preheader
  %exitcond191.not.i = icmp eq i64 %i.fr, %.val66.i
  br i1 %exitcond191.not.i, label %_RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit11gemm_uninitNtNtB4_6uninit6UninitdNtNtB4_9dimension3DynB1k_B1k_B1k_B1k_B1k_INtNtB4_11vec_storage10VecStorageINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEB1k_B1k_EIB20_dB1k_B1k_EB3C_ECs8lmMd0ZksV9_6statrs.exit.i, label %.lr.ph.split.split.i

_RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit11gemm_uninitNtNtB4_6uninit6UninitdNtNtB4_9dimension3DynB1k_B1k_B1k_B1k_B1k_INtNtB4_11vec_storage10VecStorageINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEB1k_B1k_EIB20_dB1k_B1k_EB3C_ECs8lmMd0ZksV9_6statrs.exit.i: ; preds = %.noexc21.loopexit.i, %.noexc16.i, %._RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit11gemm_uninitNtNtB4_6uninit6UninitdNtNtB4_9dimension3DynB1k_B1k_B1k_B1k_B1k_INtNtB4_11vec_storage10VecStorageINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEB1k_B1k_EIB20_dB1k_B1k_EB3C_ECs8lmMd0ZksV9_6statrs.exit_crit_edge.i
  %.sroa.4137.0.copyload.i = phi ptr [ %.sroa.4137.0.copyload.pre.i, %._RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit11gemm_uninitNtNtB4_6uninit6UninitdNtNtB4_9dimension3DynB1k_B1k_B1k_B1k_B1k_INtNtB4_11vec_storage10VecStorageINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEB1k_B1k_EIB20_dB1k_B1k_EB3C_ECs8lmMd0ZksV9_6statrs.exit_crit_edge.i ], [ %.val99.i, %.noexc16.i ], [ %.val6.i.i.pre, %.noexc21.loopexit.i ]
  %.sroa.0136.0.copyload.i = load i64, ptr %i.f, align 8, !noalias !136
  %.sroa.5138.0.copyload.i = load i64, ptr %.sroa.5138.0..sroa_idx.i, align 8, !noalias !136 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !163
  %i.gb = icmp ult i64 %.sroa.5138.0.copyload.i, 1152921504606846976
  call void @llvm.assume(i1 %i.gb)
  store i64 %.sroa.0136.0.copyload.i, ptr %i.a, align 8, !noalias !163
  store ptr %.sroa.4137.0.copyload.i, ptr %i.dk, align 8, !noalias !163
  store i64 %.sroa.5138.0.copyload.i, ptr %i.dl, align 8, !noalias !163
  %i.gc = icmp eq i64 %i.ff, %.sroa.5138.0.copyload.i
  br i1 %i.gc, label %bb.ch, label %bb.cb, !prof !19

bb.ca:                                            ; preds = %bb.cb
  %i.gd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #14
          to label %.body45 unwind label %bb.cd, !noalias !167

bb.cb:                                            ; preds = %_RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit11gemm_uninitNtNtB4_6uninit6UninitdNtNtB4_9dimension3DynB1k_B1k_B1k_B1k_B1k_INtNtB4_11vec_storage10VecStorageINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEB1k_B1k_EIB20_dB1k_B1k_EB3C_ECs8lmMd0ZksV9_6statrs.exit.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #16
          to label %bb.cc unwind label %bb.ca, !noalias !170

bb.cc:                                            ; preds = %bb.cb
  unreachable

bb.cd:                                            ; preds = %bb.ca
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13, !noalias !167
  unreachable

.loopexit.i:                                      ; preds = %.lr.ph276
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.lr.ph.split.split.i
  %lpad.loopexit173.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit:  ; preds = %.noexc15.i
  %lpad.loopexit97 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp: ; preds = %bb.bz, %.split.us.invoke.i
  %lpad.loopexit.split-lp98 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit173.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit97, %.loopexit.split-lp.loopexit.split-lp.i.loopexit ], [ %lpad.loopexit.split-lp98, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEENtNtNtBM_3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStorageINtNtNtB4_3mem12maybe_uninit11MaybeUninitdENtNtBG_9dimension3DynB2g_EECs8lmMd0ZksV9_6statrs.exit.i.i unwind label %bb.ce, !noalias !136

bb.ce:                                            ; preds = %.loopexit.split-lp.i
  %i.gf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEENtNtNtBT_3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %.body130.i unwind label %bb.cf, !noalias !136

bb.cf:                                            ; preds = %bb.ce
  %i.gg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13, !noalias !136
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStorageINtNtNtB4_3mem12maybe_uninit11MaybeUninitdENtNtBG_9dimension3DynB2g_EECs8lmMd0ZksV9_6statrs.exit.i.i: ; preds = %.loopexit.split-lp.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEENtNtNtBT_3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %.body45 unwind label %bb.cg, !noalias !136

bb.cg:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStorageINtNtNtB4_3mem12maybe_uninit11MaybeUninitdENtNtBG_9dimension3DynB2g_EECs8lmMd0ZksV9_6statrs.exit.i.i
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body130.i

.body130.i:                                       ; preds = %bb.cg, %bb.ce
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13, !noalias !136
  unreachable

bb.ch:                                            ; preds = %_RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit11gemm_uninitNtNtB4_6uninit6UninitdNtNtB4_9dimension3DynB1k_B1k_B1k_B1k_B1k_INtNtB4_11vec_storage10VecStorageINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEB1k_B1k_EIB20_dB1k_B1k_EB3C_ECs8lmMd0ZksV9_6statrs.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.088, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !136
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.q)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStoragedNtNtBG_9dimension3DynB1A_EECs8lmMd0ZksV9_6statrs.exit.i57 unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.gi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.q)
          to label %.body58 unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStoragedNtNtBG_9dimension3DynB1A_EECs8lmMd0ZksV9_6statrs.exit.i57: ; preds = %bb.ch
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.q)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit61 unwind label %bb.ck

bb.ck:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStoragedNtNtBG_9dimension3DynB1A_EECs8lmMd0ZksV9_6statrs.exit.i57
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %.body58

.body58:                                          ; preds = %bb.ci, %bb.ck
  %eh.lpad-body59 = phi { ptr, i32 } [ %i.gk, %bb.ck ], [ %i.gi, %bb.ci ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.088, i64 24, i1 false)
  store i64 %.val65.i, ptr %i.cy, align 8
  store i64 %.val66.i, ptr %i.cz, align 8
  br label %.body45

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit61: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStoragedNtNtBG_9dimension3DynB1A_EECs8lmMd0ZksV9_6statrs.exit.i57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.088, i64 24, i1 false)
  store i64 %.val65.i, ptr %i.cy, align 8
  store i64 %.val66.i, ptr %i.cz, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.088)
  %i.gl = lshr i64 %.sroa.0.0178, 1               ; 2 uses
  %.not = icmp eq i64 %i.gl, 0
  br i1 %.not, label %._crit_edge, label %bb.ai

bb.cl:                                            ; preds = %.thread, %.body45, %.body
  %i.gm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13
  unreachable

.thread:                                          ; preds = %bb.am, %bb.ad, %bb.ac
  %.pn.pn95 = phi { ptr, i32 } [ %.pn, %bb.ac ], [ %i.cn, %bb.ad ], [ %i.dz, %bb.am ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynINtB1r_5ConstKj1_EINtNtBG_11vec_storage10VecStoragedB1p_B1K_EEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(32) %i.r) #14
          to label %.body unwind label %bb.cl

.split:                                           ; preds = %.split.preheader, %.backedge
  %.sroa.09.0171 = phi i64 [ %i.gn, %.backedge ], [ 0, %.split.preheader ] ; 5 uses
  %i.gn = add nuw i64 %.sroa.09.0171, 1           ; 2 uses
  %i.go = icmp eq i64 %.sroa.09.0171, %i.ar
  br i1 %i.go, label %bb.cn, label %bb.cm

.split173.us.invoke:                              ; preds = %bb.cr, %bb.cp, %bb.cn, %bb.aa, %bb.x
  %i.gp = phi ptr [ @16, %bb.x ], [ @17, %bb.aa ], [ @20, %bb.cr ], [ @18, %bb.cp ], [ @19, %bb.cn ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @37, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gp) #17
          to label %.split173.us.cont unwind label %.loopexit.split-lp102

.split173.us.cont:                                ; preds = %.split173.us.invoke
  unreachable

.backedge:                                        ; preds = %bb.cs, %bb.cq, %bb.cm
  %exitcond.not = icmp eq i64 %i.gn, %i.z
  br i1 %exitcond.not, label %.loopexit100, label %.split

bb.cm:                                            ; preds = %.split
  %.reass.reass.reass = add i64 %.sroa.09.0171, %invariant.op ; 2 uses
  %i.gq = icmp sgt i64 %.reass.reass.reass, -1
  br i1 %i.gq, label %bb.co, label %.backedge

bb.cn:                                            ; preds = %.split
  %.val.i71 = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !173, !noundef !4 ; 3 uses
  %.val2.i72 = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !173, !noundef !4 ; 2 uses
  %i.gr = icmp ult i64 %i.bw, %.val.i71
  %i.gs = icmp ne i64 %.val2.i72, 0
  %or.cond.i73 = and i1 %i.gr, %i.gs
  br i1 %or.cond.i73, label %bb.cr, label %.split173.us.invoke, !prof !71

bb.co:                                            ; preds = %bb.cm
  %i.gt = invoke noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function9factorial9factorial(i64 noundef %.reass.reass.reass)
          to label %bb.cp unwind label %.loopexit101.split

bb.cp:                                            ; preds = %bb.co
  %.val.i76 = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !176, !noalias !179, !noundef !4 ; 2 uses
  %.val2.i77 = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !176, !noalias !179, !noundef !4
  %i.gu = icmp ult i64 %.sroa.09.0171, %.val.i76
  %i.gv = icmp ult i64 %.sroa.07.0176, %.val2.i77
  %or.cond.i78 = and i1 %i.gu, %i.gv
  br i1 %or.cond.i78, label %bb.cq, label %.split173.us.invoke, !prof !71

bb.cq:                                            ; preds = %bb.cp
  %.val3.i79 = load ptr, ptr %i.as, align 8, !alias.scope !176, !noalias !179, !nonnull !4, !noundef !4
  %i.gw = mul i64 %.val.i76, %.sroa.07.0176
  %i.gx = getelementptr [8 x i8], ptr %.val3.i79, i64 %i.gw
  %i.gy = getelementptr [8 x i8], ptr %i.gx, i64 %.sroa.09.0171
  %i.gz = fdiv double 1.000000e+00, %i.gt
  store double %i.gz, ptr %i.gy, align 8
  br label %.backedge

bb.cr:                                            ; preds = %bb.cn
  %i.ha = icmp ult i64 %i.ar, %.val.i71
  %i.hb = icmp ult i64 %.sroa.07.0176, %.val2.i72
  %or.cond.i84 = and i1 %i.ha, %i.hb
  br i1 %or.cond.i84, label %bb.cs, label %.split173.us.invoke, !prof !71

bb.cs:                                            ; preds = %bb.cr
  %.val3.i74 = load ptr, ptr %i.as, align 8, !alias.scope !173, !nonnull !4, !noundef !4 ; 2 uses
  %i.hc = getelementptr [8 x i8], ptr %.val3.i74, i64 %i.bw
  %i.hd = load double, ptr %i.hc, align 8, !noundef !4
  %i.he = mul i64 %.val.i71, %.sroa.07.0176
  %i.hf = getelementptr [8 x i8], ptr %.val3.i74, i64 %i.he
  %i.hg = getelementptr [8 x i8], ptr %i.hf, i64 %i.ar
end_hunk_1
