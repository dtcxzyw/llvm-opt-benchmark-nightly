Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stat-rs/original/statrs-c9f133f833af4886.statrs.6131f3d7c2ead0b9-cgu.09?download=true
inline.NumInlined: 196
inline.NumDeleted: 105
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [31 x i8] c"Axpy: mismatched vector shapes.", align 1
@1 = private unnamed_addr constant [102 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/nalgebra-0.35.0/src/base/blas.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"e\00\00\00\00\00\00\00B\01\00\00\09\00\00\00" }>, align 8
@3 = private unnamed_addr constant [109 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/nalgebra-0.35.0/src/base/matrix_view.rs\00", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"l\00\00\00\00\00\00\002\03\00\00\05\00\00\00" }>, align 8
@5 = private unnamed_addr constant [39 x i8] c"Columns range pair: index out of range.", align 1
@6 = private unnamed_addr constant [90 x i8] c"Allocation from iterator error: the iterator did not yield the correct number of elements.", align 1
@7 = private unnamed_addr constant [115 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/nalgebra-0.35.0/src/base/default_allocator.rs\00", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"r\00\00\00\00\00\00\00\84\00\00\00\09\00\00\00" }>, align 8
@9 = private unnamed_addr constant [32 x i8] c"The input matrix must be square.", align 1
@10 = private unnamed_addr constant [108 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/nalgebra-0.35.0/src/linalg/cholesky.rs\00", align 1
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"k\00\00\00\00\00\00\00\DE\00\00\00\09\00\00\00" }>, align 8
@12 = private unnamed_addr constant [39 x i8] c"Data storage buffer dimension mismatch.", align 1
@13 = private unnamed_addr constant [109 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/nalgebra-0.35.0/src/base/vec_storage.rs\00", align 1
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"l\00\00\00\00\00\00\00|\00\00\00\09\00\00\00" }>, align 8
@15 = private unnamed_addr constant [32 x i8] c"src/stats_tests/mannwhitneyu.rs\00", align 1
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"\1F\00\00\00\00\00\00\00\BB\00\00\00\17\00\00\00" }>, align 8
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"\1F\00\00\00\00\00\00\00\BF\00\00\00\0A\00\00\00" }>, align 8
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"\1F\00\00\00\00\00\00\00\C2\00\00\00\15\00\00\00" }>, align 8
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"\1F\00\00\00\00\00\00\00\C2\00\00\00\0E\00\00\00" }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"\1F\00\00\00\00\00\00\00\A8\00\00\00\13\00\00\00" }>, align 8
@21 = private unnamed_addr constant [39 x i8] c"elements in the data are not comparable", align 1
@22 = private unnamed_addr constant [58 x i8] c"the samples for both `x` and `y` must be at least length 1", align 1
@23 = private unnamed_addr constant [63 x i8] c"using the Exact method with ties in input data is not supported", align 1
@24 = private unnamed_addr constant [39 x i8] c"Sample size `n` must be greater than 0.", align 1
@25 = private unnamed_addr constant [51 x i8] c"freedom_1 is NaN, infinite, zero or less than zero.", align 1
@26 = private unnamed_addr constant [51 x i8] c"freedom_2 is NaN, infinite, zero or less than zero.", align 1
@27 = private unnamed_addr constant [15 x i8] c"Location is NAN", align 1
@28 = private unnamed_addr constant [36 x i8] c"Scale is NAN, zero or less than zero", align 1
@29 = private unnamed_addr constant [10 x i8] c"\02F(\C0\01,\C0\01)\00", align 1
@30 = private unnamed_addr constant [16 x i8] c"\07Gumbel(\C0\02, \C0\01)\00", align 1
@31 = private unnamed_addr constant [19 x i8] c"x must be in [0, 1]", align 1
@32 = private unnamed_addr constant [36 x i8] c"src/distribution/fisher_snedecor.rs\00", align 1
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @32, [16 x i8] c"#\00\00\00\00\00\00\00\CD\00\00\00\0D\00\00\00" }>, align 8

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
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecdEECs8lmMd0ZksV9_6statrs.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecjENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecjEECs8lmMd0ZksV9_6statrs.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecjEECs8lmMd0ZksV9_6statrs.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecdEECs8lmMd0ZksV9_6statrs.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStoragedNtNtBG_9dimension3DynB1A_EECs8lmMd0ZksV9_6statrs.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable14driftsort_maindNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0INtNtB18_3vec3VecdEEB1Q_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [4096 x i8], align 8              ; 3 uses
  %i.c = lshr i64 %1, 1
  %i.d = sub nuw nsw i64 %1, %i.c
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 1000000)
  %..i8 = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 %i.d) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp samesign ugt i64 %..i8, 512         ; 3 uses
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs8_NtCs1xwejQucwHj_5alloc5sliceINtNtB7_3vec3VecdEINtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable8BufGuarddE13with_capacityCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %..i8)
  %i.f = invoke { ptr, i64 } @_RNvXs8_NtCs1xwejQucwHj_5alloc5sliceINtNtB7_3vec3VecdEINtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable8BufGuarddE19as_uninit_slice_mutCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.d unwind label %.thread    ; 2 uses

bb.c:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.e, label %bb.k, label %common.resume

.thread:                                          ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.i = extractvalue { ptr, i64 } %i.f, 1
  %i.j = extractvalue { ptr, i64 } %i.f, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.sroa.4.0 = phi i64 [ 512, %bb.a ], [ %i.i, %bb.d ]
  %.pn = phi ptr [ %i.b, %bb.a ], [ %i.j, %bb.d ]
  %i.k = icmp samesign ult i64 %1, 65
  invoke void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0EB1N_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 %.pn, i64 noundef %.sroa.4.0, i1 noundef zeroext %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  br i1 %i.e, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.k, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.n, %bb.k ], [ %i.g, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit: ; preds = %bb.h
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %bb.g

bb.k:                                             ; preds = %.thread, %bb.c
  %i.n = phi { ptr, i32 } [ %i.h, %.thread ], [ %i.g, %bb.c ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #20
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable14driftsort_maindNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0INtNtB18_3vec3VecdEEB1Q_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [4096 x i8], align 8              ; 3 uses
  %i.c = lshr i64 %1, 1
  %i.d = sub nuw nsw i64 %1, %i.c
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 1000000)
  %..i8 = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 %i.d) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp samesign ugt i64 %..i8, 512         ; 3 uses
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs8_NtCs1xwejQucwHj_5alloc5sliceINtNtB7_3vec3VecdEINtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable8BufGuarddE13with_capacityCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %..i8)
  %i.f = invoke { ptr, i64 } @_RNvXs8_NtCs1xwejQucwHj_5alloc5sliceINtNtB7_3vec3VecdEINtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable8BufGuarddE19as_uninit_slice_mutCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.d unwind label %.thread    ; 2 uses

bb.c:                                             ; preds = %bb.e
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCsbADZB03g5jP_8nalgebra6linalg8choleskyINtB4_8CholeskydNtNtNtB8_4base9dimension3DynE6unpackCs8lmMd0ZksV9_6statrs:bb.a
  %i.y = shl nuw i64 %umin.i.epil, 3
  %i.z = mul i64 %.sroa.04.014.i.epil, %.val9.i
  %i.aa = getelementptr [8 x i8], ptr %.val11.i, i64 %i.z
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %i.y, i1 false), !noalias !93
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
  %.val = load i64, ptr %i.d, align 8, !noundef !6 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1 = load i64, ptr %i.e, align 8, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.f = mul i64 %.val1, %.val                    ; 4 uses
  %i.g = tail call { i64, double } @_RNvMNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB2_12RepeatNInnerdE3newCs8lmMd0ZksV9_6statrs(double noundef 0.000000e+00, i64 noundef %i.f), !noalias !105 ; 2 uses
  %i.h = extractvalue { i64, double } %i.g, 0
  %i.i = extractvalue { i64, double } %i.g, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !106
  call void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNdEE9from_iterCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.h, double %i.i), !noalias !106
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !106, !noundef !6 ; 2 uses
  %i.l = icmp ult i64 %i.k, 1152921504606846976
  call void @llvm.assume(i1 %i.l)
  %i.m = icmp eq i64 %i.k, %i.f
  br i1 %i.m, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 181 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #21
          to label %bb.h unwind label %bb.i, !noalias !106

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !106
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !107, !noalias !108, !noundef !6 ; 2 uses
  %i.p = icmp ult i64 %i.o, 1152921504606846976
  call void @llvm.assume(i1 %i.p)
  %i.q = icmp eq i64 %i.f, %i.o
  br i1 %i.q, label %bb.k, label %bb.e, !prof !9

bb.d:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #20
          to label %common.resume unwind label %bb.g, !noalias !108

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @12, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #21
          to label %bb.f unwind label %bb.d, !noalias !109

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !noalias !108
  unreachable

bb.h:                                             ; preds = %bb.b
  unreachable

common.resume:                                    ; preds = %bb.n, %bb.d, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.d ], [ %i.t, %bb.i ], [ %i.aq, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #20
          to label %common.resume unwind label %bb.j, !noalias !106

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !noalias !106
  unreachable

bb.k:                                             ; preds = %bb.c
  %.sroa.0.0.copyload12.i = load i64, ptr %i.b, align 8, !noalias !104
  %.sroa.4.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0.copyload14.i = load ptr, ptr %.sroa.4.0..sroa_idx13.i, align 8, !noalias !104 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !106
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %.val1, i64 %.val) ; 4 uses
  %.not.i = icmp eq i64 %..i.i, 0
  br i1 %.not.i, label %_RNvMs_NtNtCsbADZB03g5jP_8nalgebra4base12constructionINtNtB6_6matrix6MatrixdNtNtB6_9dimension3DynB1b_INtNtB6_11vec_storage10VecStoragedB1b_B1b_EE29from_diagonal_element_genericCs8lmMd0ZksV9_6statrs.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload14.i) ]
  %xtraiter = and i64 %..i.i, 3                   ; 3 uses
  %i.v = icmp ult i64 %..i.i, 4
  br i1 %i.v, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %..i.i, -4
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.new
  %.sroa.02.011.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ai, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.l ]
  %i.w = or disjoint i64 %.sroa.02.011.i, 1       ; 2 uses
  %i.x = mul i64 %.sroa.02.011.i, %.val
  %i.y = getelementptr [8 x i8], ptr %.sroa.4.0.copyload14.i, i64 %i.x
  %i.z = getelementptr [8 x i8], ptr %i.y, i64 %.sroa.02.011.i
  store double 1.000000e+00, ptr %i.z, align 8, !noalias !104
  %i.aa = or disjoint i64 %.sroa.02.011.i, 2      ; 2 uses
  %i.ab = mul i64 %i.w, %.val
  %i.ac = getelementptr [8 x i8], ptr %.sroa.4.0.copyload14.i, i64 %i.ab
  %i.ad = getelementptr [8 x i8], ptr %i.ac, i64 %i.w
  store double 1.000000e+00, ptr %i.ad, align 8, !noalias !104
  %i.ae = or disjoint i64 %.sroa.02.011.i, 3      ; 2 uses
  %i.af = mul i64 %i.aa, %.val
  %i.ag = getelementptr [8 x i8], ptr %.sroa.4.0.copyload14.i, i64 %i.af
  %i.ah = getelementptr [8 x i8], ptr %i.ag, i64 %i.aa
  store double 1.000000e+00, ptr %i.ah, align 8, !noalias !104
  %i.ai = add nuw i64 %.sroa.02.011.i, 4          ; 2 uses
  %i.aj = mul i64 %i.ae, %.val
  %i.ak = getelementptr [8 x i8], ptr %.sroa.4.0.copyload14.i, i64 %i.aj
  %i.al = getelementptr [8 x i8], ptr %i.ak, i64 %i.ae
  store double 1.000000e+00, ptr %i.al, align 8, !noalias !104
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RNvMs_NtNtCsbADZB03g5jP_8nalgebra4base12constructionINtNtB6_6matrix6MatrixdNtNtB6_9dimension3DynB1b_INtNtB6_11vec_storage10VecStoragedB1b_B1b_EE29from_diagonal_element_genericCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa, label %bb.l

_RNvMs_NtNtCsbADZB03g5jP_8nalgebra4base12constructionINtNtB6_6matrix6MatrixdNtNtB6_9dimension3DynB1b_INtNtB6_11vec_storage10VecStoragedB1b_B1b_EE29from_diagonal_element_genericCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs_NtNtCsbADZB03g5jP_8nalgebra4base12constructionINtNtB6_6matrix6MatrixdNtNtB6_9dimension3DynB1b_INtNtB6_11vec_storage10VecStoragedB1b_B1b_EE29from_diagonal_element_genericCs8lmMd0ZksV9_6statrs.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RNvMs_NtNtCsbADZB03g5jP_8nalgebra4base12constructionINtNtB6_6matrix6MatrixdNtNtB6_9dimension3DynB1b_INtNtB6_11vec_storage10VecStoragedB1b_B1b_EE29from_diagonal_element_genericCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.sroa.02.011.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ai, %_RNvMs_NtNtCsbADZB03g5jP_8nalgebra4base12constructionINtNtB6_6matrix6MatrixdNtNtB6_9dimension3DynB1b_INtNtB6_11vec_storage10VecStoragedB1b_B1b_EE29from_diagonal_element_genericCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa ]
  %lcmp.mod2 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod2)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader
  %.sroa.02.011.i.epil = phi i64 [ %.sroa.02.011.i.epil.init, %.epil.preheader ], [ %i.am, %bb.m ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.m ]
  %i.am = add nuw i64 %.sroa.02.011.i.epil, 1
  %i.an = mul i64 %.sroa.02.011.i.epil, %.val
  %i.ao = getelementptr [8 x i8], ptr %.sroa.4.0.copyload14.i, i64 %i.an
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %.sroa.02.011.i.epil
  store double 1.000000e+00, ptr %i.ap, align 8, !noalias !104
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs_NtNtCsbADZB03g5jP_8nalgebra4base12constructionINtNtB6_6matrix6MatrixdNtNtB6_9dimension3DynB1b_INtNtB6_11vec_storage10VecStoragedB1b_B1b_EE29from_diagonal_element_genericCs8lmMd0ZksV9_6statrs.exit, label %bb.m, !llvm.loop !103

_RNvMs_NtNtCsbADZB03g5jP_8nalgebra4base12constructionINtNtB6_6matrix6MatrixdNtNtB6_9dimension3DynB1b_INtNtB6_11vec_storage10VecStoragedB1b_B1b_EE29from_diagonal_element_genericCs8lmMd0ZksV9_6statrs.exit: ; preds = %_RNvMs_NtNtCsbADZB03g5jP_8nalgebra4base12constructionINtNtB6_6matrix6MatrixdNtNtB6_9dimension3DynB1b_INtNtB6_11vec_storage10VecStoragedB1b_B1b_EE29from_diagonal_element_genericCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa, %bb.m, %bb.k
  store i64 %.sroa.0.0.copyload12.i, ptr %i.c, align 8, !alias.scope !104
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.4.0.copyload14.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !104
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !104
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.val, ptr %.sroa.517.0..sroa_idx.i, align 8, !alias.scope !104
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.val1, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !104
  invoke void @_RINvMs_NtNtCsbADZB03g5jP_8nalgebra6linalg5solveINtNtNtB9_4base6matrix6MatrixdNtNtBO_9dimension3DynB1d_INtNtBO_11vec_storage10VecStoragedB1d_B1d_EE36solve_lower_triangular_unchecked_mutB1d_B1d_B1C_ECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.o, %_RNvMs_NtNtCsbADZB03g5jP_8nalgebra4base12constructionINtNtB6_6matrix6MatrixdNtNtB6_9dimension3DynB1b_INtNtB6_11vec_storage10VecStoragedB1b_B1b_EE29from_diagonal_element_genericCs8lmMd0ZksV9_6statrs.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(40) %i.c) #20
          to label %common.resume unwind label %bb.q

bb.o:                                             ; preds = %_RNvMs_NtNtCsbADZB03g5jP_8nalgebra4base12constructionINtNtB6_6matrix6MatrixdNtNtB6_9dimension3DynB1b_INtNtB6_11vec_storage10VecStoragedB1b_B1b_EE29from_diagonal_element_genericCs8lmMd0ZksV9_6statrs.exit
  invoke void @_RINvMs_NtNtCsbADZB03g5jP_8nalgebra6linalg5solveINtNtNtB9_4base6matrix6MatrixdNtNtBO_9dimension3DynB1d_INtNtBO_11vec_storage10VecStoragedB1d_B1d_EE39ad_solve_lower_triangular_unchecked_mutB1d_B1d_B1C_ECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.q:                                             ; preds = %bb.n
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyu21calc_mwu_exact_pvalue(double noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  %i.b = add i64 %2, %1                           ; 2 uses
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 %1) ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEE9from_iterCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i64 noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !6 ; 4 uses
  %.not74 = icmp ugt i64 %..i, %i.e
  br i1 %.not74, label %._crit_edge, label %.lr.ph77, !prof !112

.lr.ph77:                                         ; preds = %bb.a
  %i.f = add i64 %..i, 1
  %i.g = mul i64 %i.f, %..i
  %i.h = lshr i64 %i.g, 1
  %i.i = sub i64 %..i, %i.h                       ; 2 uses
  %.old1.not = icmp eq i64 %..i, 0
  %i.j = sub i64 %i.b, %..i                       ; 3 uses
  br i1 %.old1.not, label %.lr.ph77.split.us.split.split.split.us, label %.preheader42.preheader

.preheader42.preheader:                           ; preds = %.lr.ph77
  %min.iters.check = icmp ult i64 %..i, 4
  %n.vec = and i64 %..i, -4                       ; 3 uses
  %cmp.n = icmp eq i64 %..i, %n.vec
  br label %.preheader42

.lr.ph77.split.us.split.split.split.us:           ; preds = %.lr.ph77
  %i.k = uitofp i64 %i.i to double
  %i.l = fcmp ole double %0, %i.k
  %i.m = zext i1 %i.l to i32                      ; 2 uses
  %.not31.us.us138239 = icmp eq i64 %i.e, 0
  br i1 %.not31.us.us138239, label %.split90.us.invoke, label %.thread37.us.us139.lr.ph

.thread37.us.us139.lr.ph:                         ; preds = %.lr.ph77.split.us.split.split.split.us
  %i.n = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  br label %.thread37.us.us139

.thread37.us.us139:                               ; preds = %.thread37.us.us139.lr.ph, %.loopexit.us.us140
  %i.o = phi i32 [ 1, %.thread37.us.us139.lr.ph ], [ %i.v, %.loopexit.us.us140 ] ; 2 uses
  %spec.select.us.us137240 = phi i32 [ %i.m, %.thread37.us.us139.lr.ph ], [ %spec.select.us.us137, %.loopexit.us.us140 ] ; 2 uses
  %i.p = phi ptr [ %i.n, %.thread37.us.us139.lr.ph ], [ %i.u, %.loopexit.us.us140 ] ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !noundef !6 ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.j
  br i1 %i.r, label %.split79.us, label %.loopexit.us.us140

.loopexit.us.us140:                               ; preds = %.thread37.us.us139
  %i.s = add i64 %i.q, 1
  store i64 %i.s, ptr %i.p, align 8
  %i.t = load i64, ptr %i.d, align 8, !noundef !6
  %i.u = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %spec.select.us.us137 = add i32 %spec.select.us.us137240, %i.m
  %i.v = add i32 %i.o, 1
  %.not31.us.us138 = icmp eq i64 %i.t, 0
  br i1 %.not31.us.us138, label %.split90.us.invoke, label %.thread37.us.us139

.loopexit:                                        ; preds = %bb.l, %14
  %i.w = load i64, ptr %i.d, align 8, !noundef !6 ; 3 uses
  %.not = icmp ugt i64 %..i, %i.w
  br i1 %.not, label %._crit_edge, label %.preheader42, !prof !113

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.lcssa51 = phi i64 [ %i.e, %bb.a ], [ %i.w, %.loopexit ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %..i, i64 noundef %.lcssa51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #21
          to label %bb.g unwind label %bb.b

.preheader42:                                     ; preds = %.preheader42.preheader, %.loopexit
  %i.x = phi i64 [ %i.w, %.loopexit ], [ %i.e, %.preheader42.preheader ] ; 2 uses
  %.sroa.03.076 = phi i32 [ %spec.select, %.loopexit ], [ 0, %.preheader42.preheader ]
  %.sroa.06.075 = phi i32 [ %12, %.loopexit ], [ 0, %.preheader42.preheader ]
  %i.y = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader42, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader42 ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.ab, %vector.body ], [ zeroinitializer, %.preheader42 ]
  %vec.phi241 = phi <2 x i64> [ %i.ac, %vector.body ], [ zeroinitializer, %.preheader42 ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load = load <2 x i64>, ptr %i.z, align 8
  %wide.load242 = load <2 x i64>, ptr %i.aa, align 8
  %i.ab = add <2 x i64> %wide.load, %vec.phi      ; 2 uses
  %i.ac = add <2 x i64> %wide.load242, %vec.phi241 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !110

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ac, %i.ab
  %i.ae = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECs8lmMd0ZksV9_6statrs.exit.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader42, %middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %.preheader42 ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.ph = phi i64 [ 0, %.preheader42 ], [ %i.ae, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.ah, %scalar.ph ], [ %.sroa.04.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %i.ag, %scalar.ph ], [ %.sroa.02.0.i.ph, %scalar.ph.preheader ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.sroa.04.0.i
  %.val.i = load i64, ptr %i.af, align 8, !noundef !6
  %i.ag = add i64 %.val.i, %.sroa.02.0.i          ; 2 uses
  %i.ah = add nuw i64 %.sroa.04.0.i, 1            ; 2 uses
  %i.ai = icmp eq i64 %i.ah, %..i
  br i1 %i.ai, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECs8lmMd0ZksV9_6statrs.exit.loopexit, label %scalar.ph, !llvm.loop !111

bb.b:                                             ; preds = %.split90.us.invoke, %._crit_edge
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecjENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECs8lmMd0ZksV9_6statrs.exit.loopexit: ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.ae, %middle.block ], [ %i.ag, %scalar.ph ]
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECs8lmMd0ZksV9_6statrs.exit.loopexit.a

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECs8lmMd0ZksV9_6statrs.exit.loopexit.a: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECs8lmMd0ZksV9_6statrs.exit.loopexit, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECs8lmMd0ZksV9_6statrs.exit.loopexit.a
  %.lcssa.a = phi i64 [ %i.am, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECs8lmMd0ZksV9_6statrs.exit.loopexit.a ], [ %..i, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECs8lmMd0ZksV9_6statrs.exit.loopexit ] ; 3 uses
  %i.am = add i64 %.lcssa.a, -1                   ; 9 uses
  %3 = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.am
  %4 = load i64, ptr %3, align 8, !noundef !6     ; 2 uses
  %5 = add i64 %i.j, %i.am
  %6 = icmp eq i64 %4, %5
  %7 = icmp ne i64 %i.am, 0
  %or.cond2 = and i1 %7, %6
  br i1 %or.cond2, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECs8lmMd0ZksV9_6statrs.exit.loopexit.a, label %bb.f

bb.f:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECs8lmMd0ZksV9_6statrs.exit.loopexit.a
  %8 = add i64 %i.i, %.lcssa
  %9 = uitofp i64 %8 to double
  %10 = fcmp ole double %0, %9
  %11 = zext i1 %10 to i32
  %spec.select = add i32 %.sroa.03.076, %11       ; 2 uses
  %12 = add i32 %.sroa.06.075, 1                  ; 2 uses
  %13 = icmp eq i64 %i.am, 0
  br i1 %13, label %.thread37, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  unreachable

.thread37:                                        ; preds = %bb.f
  %i.an = load i64, ptr %i.y, align 8, !noundef !6 ; 2 uses
  %i.ao = icmp eq i64 %i.an, %i.j
  br i1 %i.ao, label %.split79.us, label %bb.h

.split79.us:                                      ; preds = %.thread37, %.thread37.us.us139
  %.us-phi = phi i32 [ %spec.select.us.us137240, %.thread37.us.us139 ], [ %spec.select, %.thread37 ]
  %.us-phi80 = phi i32 [ %i.o, %.thread37.us.us139 ], [ %12, %.thread37 ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecjENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs8lmMd0ZksV9_6statrs.exit33 unwind label %bb.i

bb.h:                                             ; preds = %.thread37, %bb.f
  %i.ap = phi i64 [ %i.an, %.thread37 ], [ %4, %bb.f ]
  %i.aq = icmp ult i64 %i.am, %i.x
  br i1 %i.aq, label %14, label %.split90.us.invoke

bb.i:                                             ; preds = %.split79.us
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.ar, %bb.i ], [ %i.aj, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs8lmMd0ZksV9_6statrs.exit33: ; preds = %.split79.us
  %.not41 = icmp ugt i64 %1, %2
  %i.at = sitofp i32 %.us-phi to double
  %i.au = sitofp i32 %.us-phi80 to double
  %i.av = fdiv double %i.at, %i.au                ; 2 uses
  %i.aw = fsub double 1.000000e+00, %i.av
  %.sroa.0.0 = select i1 %.not41, double %i.av, double %i.aw
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret double %.sroa.0.0

14:                                               ; preds = %bb.h
  %15 = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.am
  %16 = add i64 %i.ap, 1
  store i64 %16, ptr %15, align 8
  %17 = icmp ult i64 %.lcssa.a, %..i
  br i1 %17, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %14, %bb.l
  %.sroa.019.073 = phi i64 [ %.sroa.019.0, %bb.l ], [ %.lcssa.a, %14 ] ; 5 uses
  %.sroa.019.0.in72 = phi i64 [ %.sroa.019.073, %bb.l ], [ %i.am, %14 ] ; 3 uses
  %i.ax = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ay = load i64, ptr %i.d, align 8, !noundef !6 ; 4 uses
  %i.az = icmp ult i64 %.sroa.019.0.in72, %i.ay
  br i1 %i.az, label %bb.k, label %.split90.us.invoke

bb.k:                                             ; preds = %.lr.ph
  %i.ba = icmp ult i64 %.sroa.019.073, %i.ay
  br i1 %i.ba, label %bb.l, label %.split90.us.invoke

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.sroa.019.0.in72
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !6
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.sroa.019.073
  %i.be = add i64 %i.bc, 1
  store i64 %i.be, ptr %i.bd, align 8
  %.sroa.019.0 = add nuw i64 %.sroa.019.073, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.019.0, %..i
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.split90.us.invoke:                               ; preds = %bb.h, %bb.k, %.lr.ph, %.loopexit.us.us140, %.lr.ph77.split.us.split.split.split.us
  %i.bf = phi i64 [ %.sroa.019.0.in72, %.lr.ph ], [ 0, %.lr.ph77.split.us.split.split.split.us ], [ 0, %.loopexit.us.us140 ], [ %.sroa.019.073, %bb.k ], [ %i.am, %bb.h ]
  %i.bg = phi i64 [ %i.ay, %bb.k ], [ 0, %.lr.ph77.split.us.split.split.split.us ], [ 0, %.loopexit.us.us140 ], [ %i.ay, %.lr.ph ], [ %i.x, %bb.h ]
  %i.bh = phi ptr [ @18, %.lr.ph ], [ @16, %.lr.ph77.split.us.split.split.split.us ], [ @16, %.loopexit.us.us140 ], [ @19, %bb.k ], [ @17, %bb.h ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.bf, i64 noundef %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bh) #21
          to label %.split90.us.cont unwind label %bb.b

.split90.us.cont:                                 ; preds = %.split90.us.invoke
  unreachable

bb.m:                                             ; preds = %bb.d
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.c, %bb.m
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyu26calc_mwu_asymptotic_pvalue(double noundef %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !6 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyu26calc_mwu_asymptotic_pvalue0NCINvXsK_NtBW_5accumjNtB3L_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %i.e, 3                     ; 3 uses
  %i.g = icmp ult i64 %i.e, 4
  br i1 %i.g, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.e, -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.ae, %.preheader ] ; 5 uses
  %.sroa.02.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.ad, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.sroa.04.0.i
  %.val.i = load i64, ptr %i.h, align 8, !noundef !6 ; 4 uses
  %i.i = mul i64 %.val.i, %.val.i
  %i.j = mul i64 %i.i, %.val.i
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.sroa.04.0.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val.i.1 = load i64, ptr %i.l, align 8, !noundef !6 ; 4 uses
  %i.m = mul i64 %.val.i.1, %.val.i.1
  %i.n = mul i64 %i.m, %.val.i.1
  %i.o = add i64 %.sroa.02.0.i, %i.j
  %i.p = add i64 %.val.i, %.val.i.1
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.sroa.04.0.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.val.i.2 = load i64, ptr %i.r, align 8, !noundef !6 ; 4 uses
  %i.s = mul i64 %.val.i.2, %.val.i.2
  %i.t = mul i64 %i.s, %.val.i.2
  %i.u = add i64 %i.o, %i.n
  %i.v = add i64 %i.p, %.val.i.2
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.sroa.04.0.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.val.i.3 = load i64, ptr %i.x, align 8, !noundef !6 ; 4 uses
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
  %.val.i.epil = load i64, ptr %i.ag, align 8, !noundef !6 ; 4 uses
  %i.ah = mul i64 %.val.i.epil, %.val.i.epil
  %i.ai = mul i64 %i.ah, %.val.i.epil
  %i.aj = sub i64 %.sroa.02.0.i.epil, %.val.i.epil
  %i.ak = add i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = add nuw i64 %.sroa.04.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyu26calc_mwu_asymptotic_pvalue0NCINvXsK_NtBW_5accumjNtB3L_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit.loopexit, label %.preheader.epil, !llvm.loop !114

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
  %i.a = load i8, ptr %0, align 1, !range !115, !noundef !6
  %i.b = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !7, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !6, !nonnull !6 ; 3 uses
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
end_hunk_1
