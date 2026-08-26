Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stat-rs/original/statrs-c9f133f833af4886.statrs.6131f3d7c2ead0b9-cgu.14?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [90 x i8] c"Allocation from iterator error: the iterator did not yield the correct number of elements.", align 1
@1 = private unnamed_addr constant [115 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/nalgebra-0.35.0/src/base/default_allocator.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"r\00\00\00\00\00\00\00\84\00\00\00\09\00\00\00" }>, align 8
@3 = private unnamed_addr constant [39 x i8] c"Data storage buffer dimension mismatch.", align 1
@4 = private unnamed_addr constant [109 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/nalgebra-0.35.0/src/base/vec_storage.rs\00", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"l\00\00\00\00\00\00\00|\00\00\00\09\00\00\00" }>, align 8
@6 = private unnamed_addr constant [26 x i8] c"argument is outside [0, 1]", align 1
@7 = private unnamed_addr constant [28 x i8] c"Fewer than two probabilities", align 1
@8 = private unnamed_addr constant [32 x i8] c"The probabilities sum up to zero", align 1
@9 = private unnamed_addr constant [59 x i8] c"At least one probability is NaN, infinity or less than zero", align 1
@10 = private unnamed_addr constant [42 x i8] c"Shape A is NaN, infinite, zero or negative", align 1
@11 = private unnamed_addr constant [42 x i8] c"Shape B is NaN, infinite, zero or negative", align 1
@12 = private unnamed_addr constant [37 x i8] c"Shape is NaN zero, or less than zero.", align 1
@13 = private unnamed_addr constant [36 x i8] c"Rate is NaN zero, or less than zero.", align 1
@14 = private unnamed_addr constant [27 x i8] c"Shape and rate are infinite", align 1
@15 = private unnamed_addr constant [15 x i8] c"Location is NaN", align 1
@16 = private unnamed_addr constant [36 x i8] c"Scale is NaN, zero or less than zero", align 1
@17 = private unnamed_addr constant [18 x i8] c"\07Beta(a=\C0\04, b=\C0\01)\00", align 1
@18 = private unnamed_addr constant [12 x i8] c"\03\CE\93(\C0\02, \C0\01)\00", align 1
@19 = private unnamed_addr constant [17 x i8] c"\08Laplace(\C0\02, \C0\01)\00", align 1
@20 = private unnamed_addr constant [19 x i8] c"x must be in [0, 1]", align 1
@21 = private unnamed_addr constant [25 x i8] c"src/distribution/beta.rs\00", align 1
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @21, [16 x i8] c"\18\00\00\00\00\00\00\00\C6\00\00\00\0D\00\00\00" }>, align 8
@23 = private unnamed_addr constant [74 x i8] c"default inverse_cdf implementation should be provided probability on [0,1]", align 1
@24 = private unnamed_addr constant [26 x i8] c"src/distribution/gamma.rs\00", align 1
@25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @24, [16 x i8] c"\19\00\00\00\00\00\00\00\BD\00\00\00\0D\00\00\00" }>, align 8
@26 = private unnamed_addr constant [19 x i8] c"p must be in [0, 1]", align 1
@27 = private unnamed_addr constant [28 x i8] c"src/distribution/laplace.rs\00", align 1
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @27, [16 x i8] c"\1B\00\00\00\00\00\00\00\AB\00\00\00\0D\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecdEECs8lmMd0ZksV9_6statrs.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropINtBG_3VecdEEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !4, !noundef !7 ; 2 uses
  %i.b = tail call noundef i64 @_RNvMNtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB2_11InPlaceDropINtB4_3VecdEE3lenCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB4_11InPlaceDropINtB6_3VecdEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs.exit, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i: ; preds = %bb.c
  %i.d = icmp eq i64 %i.f, %i.b
  br i1 %i.d, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB4_11InPlaceDropINtB6_3VecdEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i
  %.sroa.0.0.i.i13 = phi i64 [ %i.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %.sroa.0.0.i.i13 ; 3 uses
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i13, 1      ; 4 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body.i.i unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i unwind label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #10
  unreachable

bb.e:                                             ; preds = %.lr.ph15
  %i.i = add i64 %.sroa.0.1.i.i14, 1              ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.b
  br i1 %i.j, label %._crit_edge, label %.lr.ph15

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.f, %bb.b
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.g, %bb.b ]
  %i.l = icmp eq i64 %i.f, %i.b
  br i1 %i.l, label %._crit_edge, label %.lr.ph15

.lr.ph15:                                         ; preds = %.body.i.i, %bb.e
  %.sroa.0.1.i.i14 = phi i64 [ %i.i, %bb.e ], [ %i.f, %.body.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %.sroa.0.1.i.i14
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #11
          to label %bb.e unwind label %bb.g

._crit_edge:                                      ; preds = %bb.e, %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

bb.g:                                             ; preds = %.lr.ph15
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB4_11InPlaceDropINtB6_3VecdEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynINtB1r_5ConstKj1_EINtNtBG_11vec_storage10VecStoragedB1p_B1K_EEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecdEECs8lmMd0ZksV9_6statrs.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStoragedNtNtBG_9dimension3DynINtB1C_5ConstKj1_EEECs8lmMd0ZksV9_6statrs.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterINtB8_3VecdEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1g_8adapters3map12map_try_foldBX_BX_B2e_INtNtB1i_6result6ResultB2e_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways_0NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B3G_EB4h_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.f, align 8        ; 2 uses
  %.not14 = icmp eq ptr %.promoted, %i.e
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldINtNtCs1xwejQucwHj_5alloc3vec3VecdEBZ_INtNtB12_13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1B_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways_0NCINvNtB12_16in_place_collect24write_in_place_with_dropBZ_E0E0B2Q_.exit
  %.sroa.4.015 = phi ptr [ %2, %.lr.ph ], [ %i.n, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldINtNtCs1xwejQucwHj_5alloc3vec3VecdEBZ_INtNtB12_13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1B_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways_0NCINvNtB12_16in_place_collect24write_in_place_with_dropBZ_E0E0B2Q_.exit ] ; 3 uses
  %i.h = phi ptr [ %.promoted, %.lr.ph ], [ %i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldINtNtCs1xwejQucwHj_5alloc3vec3VecdEBZ_INtNtB12_13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1B_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways_0NCINvNtB12_16in_place_collect24write_in_place_with_dropBZ_E0E0B2Q_.exit ] ; 4 uses
  %.sroa.011.0.copyload = load i64, ptr %i.h, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.412.0.copyload = load ptr, ptr %.sroa.412.0..sroa_idx, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  store ptr %i.i, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8
  store ptr %1, ptr %i.c, align 8, !noalias !8
  store ptr %.sroa.4.015, ptr %i.g, align 8, !noalias !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11
  %i.j = icmp ult i64 %.sroa.5.0.copyload, 1152921504606846976
  call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.sroa.412.0.copyload, i64 %.sroa.5.0.copyload
  store ptr %.sroa.412.0.copyload, ptr %i.a, align 8, !noalias !11
  store ptr %.sroa.412.0.copyload, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !11
  store i64 %.sroa.011.0.copyload, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !11
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !11
  invoke void @_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterINtNtB4_9into_iter8IntoIterdENCNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways_00EdEB2D_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldINtNtCs1xwejQucwHj_5alloc3vec3VecdEBZ_INtNtB12_13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1B_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways_0NCINvNtB12_16in_place_collect24write_in_place_with_dropBZ_E0E0B2Q_.exit unwind label %bb.d, !noalias !8

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.l

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropINtBG_3VecdEEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(16) %i.c) #11
          to label %bb.c unwind label %bb.e, !noalias !8

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #10, !noalias !8
  unreachable

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldINtNtCs1xwejQucwHj_5alloc3vec3VecdEBZ_INtNtB12_13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1B_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways_0NCINvNtB12_16in_place_collect24write_in_place_with_dropBZ_E0E0B2Q_.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.015, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !8
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.4.015, i64 24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %i.i, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldINtNtCs1xwejQucwHj_5alloc3vec3VecdEBZ_INtNtB12_13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1B_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways_0NCINvNtB12_16in_place_collect24write_in_place_with_dropBZ_E0E0B2Q_.exit, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.n, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldINtNtCs1xwejQucwHj_5alloc3vec3VecdEBZ_INtNtB12_13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1B_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways_0NCINvNtB12_16in_place_collect24write_in_place_with_dropBZ_E0E0B2Q_.exit ]
  %i.o = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.p = insertvalue { ptr, ptr } %i.o, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.p
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropdENCINvNtNtB15_8adapters6filter15filter_try_folddB23_INtNtB17_6result6ResultB23_zENCNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways_00NCINvNtB8_16in_place_collect24write_in_place_with_dropdE0E0B3u_EB47_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %.not12 = icmp eq ptr %i.d, %i.c
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways_00NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2H_.exit
  %i.e = phi ptr [ %i.l, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways_00NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2H_.exit ], [ %i.c, %bb.a ]
  %i.f = phi ptr [ %i.k, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways_00NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2H_.exit ], [ %i.d, %bb.a ] ; 2 uses
  %.sroa.4.013 = phi ptr [ %.pn2.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways_00NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2H_.exit ], [ %2, %bb.a ] ; 3 uses
  %i.g = load double, ptr %i.f, align 8, !noundef !7 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.b, align 8
  %i.i = fcmp ord double %i.g, 0.000000e+00
  br i1 %i.i, label %bb.b, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways_00NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2H_.exit

bb.b:                                             ; preds = %.lr.ph
  store double %i.g, ptr %.sroa.4.013, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.4.013, i64 8
  %.pre = load ptr, ptr %i.a, align 8
  %.pre14 = load ptr, ptr %i.b, align 8
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways_00NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2H_.exit

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways_00NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2H_.exit: ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.pre14, %bb.b ], [ %i.h, %.lr.ph ] ; 2 uses
  %i.l = phi ptr [ %.pre, %bb.b ], [ %i.e, %.lr.ph ] ; 2 uses
  %.pn2.i = phi ptr [ %i.j, %bb.b ], [ %.sroa.4.013, %.lr.ph ] ; 2 uses
  %.not = icmp eq ptr %i.k, %i.l
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways_00NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2H_.exit, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %.pn2.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways_00NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2H_.exit ]
  %i.m = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.n = insertvalue { ptr, ptr } %i.m, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.n
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropdENCINvNtNtB15_8adapters6filter15filter_try_folddB23_INtNtB17_6result6ResultB23_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests15ttest_onesample15ttest_onesamples_0NCINvNtB8_16in_place_collect24write_in_place_with_dropdE0E0B3u_EB45_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %.not12 = icmp eq ptr %i.d, %i.c
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests15ttest_onesample15ttest_onesamples_0NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2F_.exit
  %i.e = phi ptr [ %i.l, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests15ttest_onesample15ttest_onesamples_0NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2F_.exit ], [ %i.c, %bb.a ]
  %i.f = phi ptr [ %i.k, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests15ttest_onesample15ttest_onesamples_0NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2F_.exit ], [ %i.d, %bb.a ] ; 2 uses
  %.sroa.4.013 = phi ptr [ %.pn2.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests15ttest_onesample15ttest_onesamples_0NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2F_.exit ], [ %2, %bb.a ] ; 3 uses
  %i.g = load double, ptr %i.f, align 8, !noundef !7 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.b, align 8
  %i.i = fcmp ord double %i.g, 0.000000e+00
  br i1 %i.i, label %bb.b, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests15ttest_onesample15ttest_onesamples_0NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2F_.exit

bb.b:                                             ; preds = %.lr.ph
  store double %i.g, ptr %.sroa.4.013, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.4.013, i64 8
  %.pre = load ptr, ptr %i.a, align 8
  %.pre14 = load ptr, ptr %i.b, align 8
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests15ttest_onesample15ttest_onesamples_0NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2F_.exit

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests15ttest_onesample15ttest_onesamples_0NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2F_.exit: ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.pre14, %bb.b ], [ %i.h, %.lr.ph ] ; 2 uses
  %i.l = phi ptr [ %.pre, %bb.b ], [ %i.e, %.lr.ph ] ; 2 uses
  %.pn2.i = phi ptr [ %i.j, %bb.b ], [ %.sroa.4.013, %.lr.ph ] ; 2 uses
  %.not = icmp eq ptr %i.k, %i.l
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests15ttest_onesample15ttest_onesamples_0NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2F_.exit, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %.pn2.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests15ttest_onesample15ttest_onesamples_0NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2F_.exit ]
  %i.m = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.n = insertvalue { ptr, ptr } %i.m, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.n
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropdENCINvNtNtB15_8adapters6filter15filter_try_folddB23_INtNtB17_6result6ResultB23_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples1_0NCINvNtB8_16in_place_collect24write_in_place_with_dropdE0E0B3u_EB45_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %.not12 = icmp eq ptr %i.d, %i.c
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples1_0NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2F_.exit
  %i.e = phi ptr [ %i.l, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples1_0NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2F_.exit ], [ %i.c, %bb.a ]
  %i.f = phi ptr [ %i.k, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples1_0NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2F_.exit ], [ %i.d, %bb.a ] ; 2 uses
  %.sroa.4.013 = phi ptr [ %.pn2.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples1_0NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2F_.exit ], [ %2, %bb.a ] ; 3 uses
  %i.g = load double, ptr %i.f, align 8, !noundef !7 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.b, align 8
  %i.i = fcmp ord double %i.g, 0.000000e+00
  br i1 %i.i, label %bb.b, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples1_0NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2F_.exit

bb.b:                                             ; preds = %.lr.ph
  store double %i.g, ptr %.sroa.4.013, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.4.013, i64 8
  %.pre = load ptr, ptr %i.a, align 8
  %.pre14 = load ptr, ptr %i.b, align 8
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples1_0NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2F_.exit

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples1_0NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2F_.exit: ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.pre14, %bb.b ], [ %i.h, %.lr.ph ] ; 2 uses
  %i.l = phi ptr [ %.pre, %bb.b ], [ %i.e, %.lr.ph ] ; 2 uses
  %.pn2.i = phi ptr [ %i.j, %bb.b ], [ %.sroa.4.013, %.lr.ph ] ; 2 uses
  %.not = icmp eq ptr %i.k, %i.l
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples1_0NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2F_.exit, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %.pn2.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples1_0NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2F_.exit ]
  %i.m = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.n = insertvalue { ptr, ptr } %i.m, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.n
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropdENCINvNtNtB15_8adapters6filter15filter_try_folddB23_INtNtB17_6result6ResultB23_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples_0NCINvNtB8_16in_place_collect24write_in_place_with_dropdE0E0B3u_EB45_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %.not12 = icmp eq ptr %i.d, %i.c
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples_0NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2F_.exit
  %i.e = phi ptr [ %i.l, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples_0NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2F_.exit ], [ %i.c, %bb.a ]
  %i.f = phi ptr [ %i.k, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples_0NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2F_.exit ], [ %i.d, %bb.a ] ; 2 uses
  %.sroa.4.013 = phi ptr [ %.pn2.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples_0NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2F_.exit ], [ %2, %bb.a ] ; 3 uses
  %i.g = load double, ptr %i.f, align 8, !noundef !7 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.b, align 8
  %i.i = fcmp ord double %i.g, 0.000000e+00
  br i1 %i.i, label %bb.b, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples_0NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2F_.exit

bb.b:                                             ; preds = %.lr.ph
  store double %i.g, ptr %.sroa.4.013, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.4.013, i64 8
  %.pre = load ptr, ptr %i.a, align 8
  %.pre14 = load ptr, ptr %i.b, align 8
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples_0NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2F_.exit

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples_0NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2F_.exit: ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.pre14, %bb.b ], [ %i.h, %.lr.ph ] ; 2 uses
  %i.l = phi ptr [ %.pre, %bb.b ], [ %i.e, %.lr.ph ] ; 2 uses
  %.pn2.i = phi ptr [ %i.j, %bb.b ], [ %.sroa.4.013, %.lr.ph ] ; 2 uses
  %.not = icmp eq ptr %i.k, %i.l
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples_0NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2F_.exit, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %.pn2.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples_0NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2F_.exit ]
  %i.m = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.n = insertvalue { ptr, ptr } %i.m, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.n
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropdENCINvNtNtB15_8adapters6filter15filter_try_folddB23_INtNtB17_6result6ResultB23_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8skewtest8skewtests_0NCINvNtB8_16in_place_collect24write_in_place_with_dropdE0E0B3u_EB45_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %.not12 = icmp eq ptr %i.d, %i.c
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8skewtest8skewtests_0NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2F_.exit
  %i.e = phi ptr [ %i.l, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8skewtest8skewtests_0NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2F_.exit ], [ %i.c, %bb.a ]
  %i.f = phi ptr [ %i.k, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8skewtest8skewtests_0NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2F_.exit ], [ %i.d, %bb.a ] ; 2 uses
  %.sroa.4.013 = phi ptr [ %.pn2.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8skewtest8skewtests_0NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2F_.exit ], [ %2, %bb.a ] ; 3 uses
  %i.g = load double, ptr %i.f, align 8, !noundef !7 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.b, align 8
  %i.i = fcmp ord double %i.g, 0.000000e+00
  br i1 %i.i, label %bb.b, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8skewtest8skewtests_0NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2F_.exit

bb.b:                                             ; preds = %.lr.ph
  store double %i.g, ptr %.sroa.4.013, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.4.013, i64 8
  %.pre = load ptr, ptr %i.a, align 8
  %.pre14 = load ptr, ptr %i.b, align 8
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_folddINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropdEINtNtBa_6result6ResultB16_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8skewtest8skewtests_0NCINvNtB1b_16in_place_collect24write_in_place_with_dropdE0E0B2F_.exit
end_hunk_0
