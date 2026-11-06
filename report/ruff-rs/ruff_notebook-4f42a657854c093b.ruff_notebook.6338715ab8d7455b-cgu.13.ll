Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_notebook-4f42a657854c093b.ruff_notebook.6338715ab8d7455b-cgu.13?download=true
inline.NumInlined: 245
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCs4NRVxsYgnAr_4core5arrayNtB5_17TryFromSliceErrorNtNtB7_3fmt5Debug3fmt }>, align 8, !guid !3
@1 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1, !guid !3
@2 = private unnamed_addr constant [96 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/chacha20-0.10.0/src/lib.rs\00", align 1, !guid !3
@3 = private unnamed_addr constant [16 x i8] c"expand 32-byte k", align 4, !guid !3
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"_\00\00\00\00\00\00\00\E9\00\00\00\13\00\00\00" }>, align 8, !guid !3
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"_\00\00\00\00\00\00\00\F2\00\00\00\0D\00\00\00" }>, align 8, !guid !3
@_RNvNtCs8WSyX4grlum_8chacha2010avx2_cpuid7STORAGE = external local_unnamed_addr global { { { i8 } } }
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"_\00\00\00\00\00\00\00\F4\00\00\00:\00\00\00" }>, align 8, !guid !3
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"_\00\00\00\00\00\00\00\EF\00\00\00:\00\00\00" }>, align 8, !guid !3
@8 = private unnamed_addr constant [48 x i8] c"assertion failed: matches!(iv.len(), 4 | 8 | 12)", align 1, !guid !3
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"_\00\00\00\00\00\00\00\E0\00\00\00\09\00\00\00" }>, align 8, !guid !3
@10 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRuNtB6_5Debug3fmtCs8w9c0syp1Hj_13ruff_notebook }>, align 8, !guid !3
@11 = private unnamed_addr constant [17 x i8] c"TryFromSliceError", align 1, !guid !3

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !7 {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8w9c0syp1Hj_13ruff_notebook.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs8w9c0syp1Hj_13ruff_notebook.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs8w9c0syp1Hj_13ruff_notebook.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8w9c0syp1Hj_13ruff_notebook.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscvBHLZPbXnS_10serde_json5value5ValueECs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !8 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !9, !noundef !4
  switch i8 %i.a, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.c
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCscvBHLZPbXnS_10serde_json5value5ValueEECs8w9c0syp1Hj_13ruff_notebook.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8w9c0syp1Hj_13ruff_notebook.exit, %bb.b, %bb.a, %bb.a, %bb.a
  ret void

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8w9c0syp1Hj_13ruff_notebook.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.g, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8w9c0syp1Hj_13ruff_notebook.exit: ; preds = %bb.d
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.c

bb.g:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCscvBHLZPbXnS_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCscvBHLZPbXnS_10serde_json5value5ValueEECs8w9c0syp1Hj_13ruff_notebook.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCscvBHLZPbXnS_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCscvBHLZPbXnS_10serde_json5value5ValueEECs8w9c0syp1Hj_13ruff_notebook.exit: ; preds = %bb.g
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCscvBHLZPbXnS_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %bb.c
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvNtNtCs8WSyX4grlum_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs8w9c0syp1Hj_13ruff_notebook(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(256) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !18 {
.preheader.preheader:
  %.sroa.0.0.copyload.i127 = load <4 x i32>, ptr %0, align 4, !noalias !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i24128 = load <4 x i32>, ptr %i.a, align 4, !noalias !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i25129 = load <4 x i32>, ptr %i.b, align 4, !noalias !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i26 = load <2 x i64>, ptr %i.c, align 4, !noalias !22
  %i.d = shufflevector <2 x i64> %.sroa.0.0.copyload.i26, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.e = add <4 x i64> %i.d, <i64 0, i64 0, i64 1, i64 0> ; 2 uses
  %i.f = add <4 x i64> %i.d, <i64 2, i64 0, i64 3, i64 0> ; 2 uses
  %.cast = shufflevector <4 x i32> %.sroa.0.0.copyload.i25129, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %2 = shufflevector <4 x i32> %.sroa.0.0.copyload.i24128, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %3 = shufflevector <4 x i32> %.sroa.0.0.copyload.i127, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.preheader.preheader
  %.sroa.46.0.i = phi <4 x i64> [ %i.f, %.preheader.preheader ], [ %11, %bb.a ]
  %.sroa.19.0.i = phi <4 x i64> [ %i.e, %.preheader.preheader ], [ %9, %bb.a ]
  %.sroa.025.064.i = phi i64 [ 0, %.preheader.preheader ], [ %i.m, %bb.a ]
  %i.g = phi <8 x i32> [ %3, %.preheader.preheader ], [ %i.ce, %bb.a ]
  %i.h = phi <8 x i32> [ %2, %.preheader.preheader ], [ %i.by, %bb.a ] ; 2 uses
  %i.i = phi <8 x i32> [ %3, %.preheader.preheader ], [ %i.cg, %bb.a ]
  %i.j = phi <8 x i32> [ %2, %.preheader.preheader ], [ %i.cc, %bb.a ] ; 2 uses
  %i.k = phi <8 x i32> [ %.cast, %.preheader.preheader ], [ %i.cd, %bb.a ]
  %i.l = phi <8 x i32> [ %.cast, %.preheader.preheader ], [ %i.cf, %bb.a ]
  %i.m = add nuw nsw i64 %.sroa.025.064.i, 1      ; 2 uses
  %i.n = add <8 x i32> %i.h, %i.g                 ; 2 uses
  %i.o = bitcast <8 x i32> %i.n to <4 x i64>
  %i.p = xor <4 x i64> %.sroa.19.0.i, %i.o
  %i.q = bitcast <4 x i64> %i.p to <32 x i8>
  %i.r = shufflevector <32 x i8> %i.q, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.s = add <8 x i32> %i.j, %i.i                 ; 2 uses
  %i.t = bitcast <8 x i32> %i.s to <4 x i64>
  %i.u = xor <4 x i64> %.sroa.46.0.i, %i.t
  %i.v = bitcast <4 x i64> %i.u to <32 x i8>
  %i.w = shufflevector <32 x i8> %i.v, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.x = bitcast <32 x i8> %i.r to <8 x i32>
  %i.y = add <8 x i32> %i.k, %i.x                 ; 2 uses
  %i.z = xor <8 x i32> %i.y, %i.h                 ; 2 uses
  %i.aa = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.z, <8 x i32> %i.z, <8 x i32> splat (i32 12)) ; 2 uses
  %i.ab = bitcast <32 x i8> %i.w to <8 x i32>
  %i.ac = add <8 x i32> %i.l, %i.ab               ; 2 uses
  %i.ad = xor <8 x i32> %i.ac, %i.j               ; 2 uses
  %i.ae = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ad, <8 x i32> %i.ad, <8 x i32> splat (i32 12)) ; 2 uses
  %i.af = add <8 x i32> %i.aa, %i.n               ; 2 uses
  %i.ag = bitcast <8 x i32> %i.af to <32 x i8>
  %i.ah = xor <32 x i8> %i.r, %i.ag
  %i.ai = shufflevector <32 x i8> %i.ah, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.aj = add <8 x i32> %i.ae, %i.s               ; 2 uses
  %i.ak = bitcast <8 x i32> %i.aj to <32 x i8>
  %i.al = xor <32 x i8> %i.w, %i.ak
  %i.am = shufflevector <32 x i8> %i.al, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.an = bitcast <32 x i8> %i.ai to <8 x i32>    ; 2 uses
  %i.ao = add <8 x i32> %i.y, %i.an               ; 2 uses
  %i.ap = xor <8 x i32> %i.ao, %i.aa              ; 2 uses
  %i.aq = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ap, <8 x i32> %i.ap, <8 x i32> splat (i32 7)) ; 2 uses
  %i.ar = bitcast <32 x i8> %i.am to <8 x i32>    ; 2 uses
  %i.as = add <8 x i32> %i.ac, %i.ar              ; 2 uses
  %i.at = xor <8 x i32> %i.as, %i.ae              ; 2 uses
  %i.au = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.at, <8 x i32> %i.at, <8 x i32> splat (i32 7)) ; 2 uses
  %i.av = shufflevector <8 x i32> %i.ao, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %4 = shufflevector <8 x i32> %i.an, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %i.aw = shufflevector <8 x i32> %i.af, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>
  %i.ax = shufflevector <8 x i32> %i.as, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %5 = shufflevector <8 x i32> %i.ar, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %i.ay = shufflevector <8 x i32> %i.aj, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>
  %i.az = add <8 x i32> %i.aq, %i.aw              ; 2 uses
  %6 = xor <8 x i32> %i.az, %4
  %i.ba = bitcast <8 x i32> %6 to <32 x i8>
  %i.bb = shufflevector <32 x i8> %i.ba, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.bc = add <8 x i32> %i.au, %i.ay              ; 2 uses
  %7 = xor <8 x i32> %i.bc, %5
  %i.bd = bitcast <8 x i32> %7 to <32 x i8>
  %i.be = shufflevector <32 x i8> %i.bd, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.bf = bitcast <32 x i8> %i.bb to <8 x i32>
  %i.bg = add <8 x i32> %i.av, %i.bf              ; 2 uses
  %i.bh = xor <8 x i32> %i.bg, %i.aq              ; 2 uses
  %i.bi = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bh, <8 x i32> %i.bh, <8 x i32> splat (i32 12)) ; 2 uses
  %i.bj = bitcast <32 x i8> %i.be to <8 x i32>
  %i.bk = add <8 x i32> %i.ax, %i.bj              ; 2 uses
  %i.bl = xor <8 x i32> %i.bk, %i.au              ; 2 uses
  %i.bm = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bl, <8 x i32> %i.bl, <8 x i32> splat (i32 12)) ; 2 uses
  %i.bn = add <8 x i32> %i.bi, %i.az              ; 2 uses
  %i.bo = bitcast <8 x i32> %i.bn to <32 x i8>
  %i.bp = xor <32 x i8> %i.bb, %i.bo
  %i.bq = shufflevector <32 x i8> %i.bp, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.br = add <8 x i32> %i.bm, %i.bc              ; 2 uses
  %i.bs = bitcast <8 x i32> %i.br to <32 x i8>
  %i.bt = xor <32 x i8> %i.be, %i.bs
  %i.bu = shufflevector <32 x i8> %i.bt, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.bv = bitcast <32 x i8> %i.bq to <8 x i32>    ; 2 uses
  %i.bw = add <8 x i32> %i.bg, %i.bv              ; 2 uses
  %i.bx = xor <8 x i32> %i.bw, %i.bi              ; 2 uses
  %i.by = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bx, <8 x i32> %i.bx, <8 x i32> splat (i32 7)) ; 2 uses
  %i.bz = bitcast <32 x i8> %i.bu to <8 x i32>    ; 2 uses
  %i.ca = add <8 x i32> %i.bk, %i.bz              ; 2 uses
  %i.cb = xor <8 x i32> %i.ca, %i.bm              ; 2 uses
  %i.cc = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.cb, <8 x i32> %i.cb, <8 x i32> splat (i32 7)) ; 2 uses
  %i.cd = shufflevector <8 x i32> %i.bw, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6> ; 2 uses
  %8 = shufflevector <8 x i32> %i.bv, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %9 = bitcast <8 x i32> %8 to <4 x i64>
  %i.ce = shufflevector <8 x i32> %i.bn, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %i.cf = shufflevector <8 x i32> %i.ca, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6> ; 2 uses
  %10 = shufflevector <8 x i32> %i.bz, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %11 = bitcast <8 x i32> %10 to <4 x i64>
  %i.cg = shufflevector <8 x i32> %i.br, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.m, 6
  br i1 %exitcond.not.i, label %_RNvMNtNtCs8WSyX4grlum_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCs8w9c0syp1Hj_13ruff_notebook.exit, label %bb.a

_RNvMNtNtCs8WSyX4grlum_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCs8w9c0syp1Hj_13ruff_notebook.exit: ; preds = %bb.a
  %i.ch = bitcast <4 x i64> %i.f to <8 x i32>
  %i.ci = add <8 x i32> %10, %i.ch                ; 2 uses
  %i.cj = add <8 x i32> %i.cf, %.cast             ; 2 uses
  %i.ck = add <8 x i32> %i.cc, %2                 ; 2 uses
  %i.cl = add <8 x i32> %i.cg, %3                 ; 2 uses
  %i.cm = bitcast <4 x i64> %i.e to <8 x i32>
  %i.cn = add <8 x i32> %8, %i.cm                 ; 2 uses
  %i.co = add <8 x i32> %i.cd, %.cast             ; 2 uses
  %i.cp = add <8 x i32> %i.by, %2                 ; 2 uses
  %i.cq = add <8 x i32> %i.ce, %3                 ; 2 uses
  %.sroa.2.32.vec.extract = shufflevector <8 x i32> %i.cq, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.2.48.vec.extract = shufflevector <8 x i32> %i.cq, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.5.64.vec.extract = shufflevector <8 x i32> %i.cp, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.5.80.vec.extract = shufflevector <8 x i32> %i.cp, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.8.96.vec.extract = shufflevector <8 x i32> %i.co, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.8.112.vec.extract = shufflevector <8 x i32> %i.co, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.11.128.vec.extract = shufflevector <8 x i32> %i.cn, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.11.144.vec.extract = shufflevector <8 x i32> %i.cn, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %.sroa.2.32.vec.extract, ptr %1, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <4 x i32> %.sroa.2.48.vec.extract, ptr %i.cr, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x i32> %.sroa.5.64.vec.extract, ptr %i.cs, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <4 x i32> %.sroa.5.80.vec.extract, ptr %i.ct, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <4 x i32> %.sroa.8.96.vec.extract, ptr %i.cu, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <4 x i32> %.sroa.8.112.vec.extract, ptr %i.cv, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <4 x i32> %.sroa.11.128.vec.extract, ptr %i.cw, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <4 x i32> %.sroa.11.144.vec.extract, ptr %i.cx, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.14.160.vec.extract = shufflevector <8 x i32> %i.cl, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.14.176.vec.extract = shufflevector <8 x i32> %i.cl, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.17.192.vec.extract = shufflevector <8 x i32> %i.ck, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.17.208.vec.extract = shufflevector <8 x i32> %i.ck, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.20.224.vec.extract = shufflevector <8 x i32> %i.cj, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.20.240.vec.extract = shufflevector <8 x i32> %i.cj, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.23.256.vec.extract = shufflevector <8 x i32> %i.ci, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.23.272.vec.extract = shufflevector <8 x i32> %i.ci, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %.sroa.14.160.vec.extract, ptr %i.cy, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 192
  store <4 x i32> %.sroa.14.176.vec.extract, ptr %i.cz, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <4 x i32> %.sroa.17.192.vec.extract, ptr %i.da, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <4 x i32> %.sroa.17.208.vec.extract, ptr %i.db, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 160
  store <4 x i32> %.sroa.20.224.vec.extract, ptr %i.dc, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 224
  store <4 x i32> %.sroa.20.240.vec.extract, ptr %i.dd, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <4 x i32> %.sroa.23.256.vec.extract, ptr %i.de, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <4 x i32> %.sroa.23.272.vec.extract, ptr %i.df, align 4
  %i.dg = add <4 x i64> %i.d, <i64 4, i64 poison, i64 poison, i64 poison>
  %12 = bitcast <4 x i64> %i.dg to <8 x i32>
  %13 = shufflevector <8 x i32> %12, <8 x i32> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i32> %13, ptr %i.c, align 4
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef i32 @_RINvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x865sse4117__mm_extract_epi32Kl1_ECs8w9c0syp1Hj_13ruff_notebook(<2 x i64> %.0.val) unnamed_addr #2 !guid !23 {
bb.a:
  %i.a = bitcast <2 x i64> %.0.val to <4 x i32>
  %i.b = extractelement <4 x i32> %i.a, i64 1
  ret i32 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_Cs8WSyX4grlum_8chacha20INtB5_10ChaChaCoreNtB5_3R12NtNtB5_8variants6LegacyE12new_internalCs8w9c0syp1Hj_13ruff_notebook(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 4 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !38 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [72 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [72 x i8], align 8                ; 7 uses
  %i.h = alloca [64 x i8], align 4                ; 9 uses
  switch i64 %3, label %bb.b [
    i64 4, label %bb.c
    i64 8, label %bb.c
    i64 12, label %bb.c
  ], !prof !39

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #18
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.h, i8 0, i64 64, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  call void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implmECs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef nonnull align 4 %i.h, i64 noundef 4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) @3, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !40
  store ptr %1, ptr %i.c, align 8, !noalias !41
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 32, ptr %.sroa.432.0..sroa_idx, align 8, !noalias !41
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.l, ptr %.sroa.533.0..sroa_idx, align 8, !noalias !41
  %.sroa.634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %.sroa.634.0..sroa_idx, align 8, !noalias !41
  %.sroa.735.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 4, ptr %.sroa.735.0..sroa_idx, align 8, !noalias !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1w_E3newCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c, ptr noundef nonnull align 4 %i.i, ptr noundef nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !40
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  %i.o = load i64, ptr %i.m, align 8, !alias.scope !42, !noundef !4 ; 2 uses
  %i.p = load i64, ptr %i.n, align 8, !alias.scope !42, !noundef !4
  %i.q = icmp ult i64 %i.o, %i.p
  br i1 %i.q, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1w_E4nextCs8w9c0syp1Hj_13ruff_notebook.exit.lr.ph, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1w_E4nextCs8w9c0syp1Hj_13ruff_notebook.exit.thread

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1w_E4nextCs8w9c0syp1Hj_13ruff_notebook.exit.lr.ph: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  br label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1w_E4nextCs8w9c0syp1Hj_13ruff_notebook.exit

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1w_E4nextCs8w9c0syp1Hj_13ruff_notebook.exit: ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1w_E4nextCs8w9c0syp1Hj_13ruff_notebook.exit.lr.ph, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8w9c0syp1Hj_13ruff_notebook.exit
  %i.s = phi i64 [ %i.o, %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1w_E4nextCs8w9c0syp1Hj_13ruff_notebook.exit.lr.ph ], [ %i.at, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8w9c0syp1Hj_13ruff_notebook.exit ] ; 3 uses
  %i.t = add nuw i64 %i.s, 1
  store i64 %i.t, ptr %i.m, align 8, !alias.scope !42
  %i.u = call { ptr, i64 } @_RNvXs1q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g, i64 noundef %i.s), !noalias !43 ; 2 uses
  %.val.i = load ptr, ptr %i.r, align 8, !alias.scope !42, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.s
  %i.w = extractvalue { ptr, i64 } %i.u, 0        ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1w_E4nextCs8w9c0syp1Hj_13ruff_notebook.exit.thread, label %bb.d

bb.d:                                             ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1w_E4nextCs8w9c0syp1Hj_13ruff_notebook.exit
  %i.x = extractvalue { ptr, i64 } %i.u, 1
  %.not55 = icmp eq i64 %i.x, 4
  br i1 %.not55, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8w9c0syp1Hj_13ruff_notebook.exit, label %.critedge58

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1w_E4nextCs8w9c0syp1Hj_13ruff_notebook.exit.thread: ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1w_E4nextCs8w9c0syp1Hj_13ruff_notebook.exit, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8w9c0syp1Hj_13ruff_notebook.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 8, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %3, ptr %i.e, align 8
  %i.y = icmp eq i64 %3, 8
  br i1 %i.y, label %bb.f, label %bb.e, !prof !5

bb.e:                                             ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1w_E4nextCs8w9c0syp1Hj_13ruff_notebook.exit.thread
  call void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #18
  unreachable

bb.f:                                             ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1w_E4nextCs8w9c0syp1Hj_13ruff_notebook.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !44
  store ptr %2, ptr %i.b, align 8, !noalias !45
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 8, ptr %.sroa.440.0..sroa_idx, align 8, !noalias !45
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.z, ptr %.sroa.541.0..sroa_idx, align 8, !noalias !45
  %.sroa.642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.642.0..sroa_idx, align 8, !noalias !45
  %.sroa.743.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 4, ptr %.sroa.743.0..sroa_idx, align 8, !noalias !45
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1w_E3newCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b, ptr noundef nonnull align 4 %i.k, ptr noundef nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %i.ad = load i64, ptr %i.ab, align 8, !alias.scope !46, !noundef !4 ; 2 uses
  %i.ae = load i64, ptr %i.ac, align 8, !alias.scope !46, !noundef !4
  %i.af = icmp ult i64 %i.ad, %i.ae
  br i1 %i.af, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1w_E4nextCs8w9c0syp1Hj_13ruff_notebook.exit25.lr.ph, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1w_E4nextCs8w9c0syp1Hj_13ruff_notebook.exit25.thread

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1w_E4nextCs8w9c0syp1Hj_13ruff_notebook.exit25.lr.ph: ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  br label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1w_E4nextCs8w9c0syp1Hj_13ruff_notebook.exit25

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1w_E4nextCs8w9c0syp1Hj_13ruff_notebook.exit25: ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1w_E4nextCs8w9c0syp1Hj_13ruff_notebook.exit25.lr.ph, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8w9c0syp1Hj_13ruff_notebook.exit14
  %i.ah = phi i64 [ %i.ad, %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1w_E4nextCs8w9c0syp1Hj_13ruff_notebook.exit25.lr.ph ], [ %i.aq, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8w9c0syp1Hj_13ruff_notebook.exit14 ] ; 3 uses
  %i.ai = add nuw i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ab, align 8, !alias.scope !46
  %i.aj = call { ptr, i64 } @_RNvXs1q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d, i64 noundef %i.ah), !noalias !47 ; 2 uses
  %.val.i22 = load ptr, ptr %i.ag, align 8, !alias.scope !46, !nonnull !4, !noundef !4
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.val.i22, i64 %i.ah
  %i.al = extractvalue { ptr, i64 } %i.aj, 0      ; 2 uses
  %.not13 = icmp eq ptr %i.al, null
  br i1 %.not13, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1w_E4nextCs8w9c0syp1Hj_13ruff_notebook.exit25.thread, label %bb.g

bb.g:                                             ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1w_E4nextCs8w9c0syp1Hj_13ruff_notebook.exit25
  %i.am = extractvalue { ptr, i64 } %i.aj, 1
  %.not56 = icmp eq i64 %i.am, 4
  br i1 %.not56, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8w9c0syp1Hj_13ruff_notebook.exit14, label %.critedge

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1w_E4nextCs8w9c0syp1Hj_13ruff_notebook.exit25.thread: ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1w_E4nextCs8w9c0syp1Hj_13ruff_notebook.exit25, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8w9c0syp1Hj_13ruff_notebook.exit14, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.an = load atomic i8, ptr @_RNvNtCs8WSyX4grlum_8chacha2010avx2_cpuid7STORAGE monotonic, align 1
  %i.ao = icmp eq i8 %i.an, -1
  br i1 %i.ao, label %bb.h, label %bb.i, !prof !6

bb.h:                                             ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1w_E4nextCs8w9c0syp1Hj_13ruff_notebook.exit25.thread
  %i.ap = call noundef zeroext i1 @_RNvNvNtCs8WSyX4grlum_8chacha2010avx2_cpuid8init_get10init_inner() ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1w_E4nextCs8w9c0syp1Hj_13ruff_notebook.exit25.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %i.h, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8w9c0syp1Hj_13ruff_notebook.exit14: ; preds = %bb.g
  %.sroa.06.0.copyload = load i32, ptr %i.al, align 1
  store i32 %.sroa.06.0.copyload, ptr %i.ak, align 4
  %i.aq = load i64, ptr %i.ab, align 8, !alias.scope !46, !noundef !4 ; 2 uses
  %i.ar = load i64, ptr %i.ac, align 8, !alias.scope !46, !noundef !4
  %i.as = icmp ult i64 %i.aq, %i.ar
  br i1 %i.as, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1w_E4nextCs8w9c0syp1Hj_13ruff_notebook.exit25, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1w_E4nextCs8w9c0syp1Hj_13ruff_notebook.exit25.thread

.critedge:                                        ; preds = %bb.g
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #18
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8w9c0syp1Hj_13ruff_notebook.exit: ; preds = %bb.d
  %.sroa.05.0.copyload = load i32, ptr %i.w, align 1
  store i32 %.sroa.05.0.copyload, ptr %i.v, align 4
  %i.at = load i64, ptr %i.m, align 8, !alias.scope !42, !noundef !4 ; 2 uses
  %i.au = load i64, ptr %i.n, align 8, !alias.scope !42, !noundef !4
  %i.av = icmp ult i64 %i.at, %i.au
  br i1 %i.av, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1w_E4nextCs8w9c0syp1Hj_13ruff_notebook.exit, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1w_E4nextCs8w9c0syp1Hj_13ruff_notebook.exit.thread

.critedge58:                                      ; preds = %bb.d
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE6insertCs8w9c0syp1Hj_13ruff_notebook(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(48) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !57 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = invoke noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCscdodAO9FK5_5alloc6string6StringECs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueEE7reserveNCINvNtB8_3map11make_hasherBQ_B1r_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0ECs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !58, !nonnull !4, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val7.i = load i64, ptr %i.d, align 8, !alias.scope !58, !noundef !4 ; 3 uses
  %i.e = lshr i64 %i.c, 57
  %i.f = trunc nuw nsw i64 %i.e to i8             ; 3 uses
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

end_hunk_0
begin_hunk_1_@_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringuNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE6insertCs8w9c0syp1Hj_13ruff_notebook:bb.a
  %i.s = getelementptr inbounds [24 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -24
  %i.u = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtCscdodAO9FK5_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc7:                                          ; preds = %.lr.ph.i.i
  br i1 %i.u, label %bb.i, label %bb.d, !prof !5

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %.not13.i.i = icmp eq i64 %.sroa.04.0.i.i, 1
  br i1 %.not13.i.i, label %.thread.i.i, label %bb.e, !prof !6

bb.d:                                             ; preds = %.noexc7
  %i.v = add i16 %.sroa.01.029.i.i, -1
  %i.w = and i16 %i.v, %.sroa.01.029.i.i          ; 2 uses
  %.not.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.x = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer
  %i.y = bitcast <16 x i1> %i.x to i16            ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.y, 0
  br i1 %.not.i.i.i, label %bb.f, label %.thread24.i.i, !prof !6

.thread24.i.i:                                    ; preds = %bb.e
  %i.z = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.y, i1 true)
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = add i64 %.sroa.0.017.i.i, %i.aa
  %i.ac = and i64 %i.ab, %.val7.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.ac, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ad = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = icmp eq i16 %i.ae, 0
  br i1 %i.af, label %bb.f, label %bb.g, !prof !6

bb.f:                                             ; preds = %.thread.i.i, %bb.e
  %.sroa.04.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.e ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.e ]
  %i.ag = add i64 %i.i, 16                        ; 2 uses
  %i.ah = add i64 %i.ag, %.sroa.0.017.i.i
  br label %bb.c

bb.g:                                             ; preds = %.thread.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !4
  %i.ak = icmp sgt i8 %i.aj, -1
  br i1 %i.ak, label %bb.h, label %bb.m, !prof !6

bb.h:                                             ; preds = %bb.g
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16
  %i.al = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer
  %i.am = bitcast <16 x i1> %i.al to i16          ; 2 uses
  %.not.i24.i.i = icmp ne i16 %i.am, 0
  %i.an = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.am, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  tail call void @llvm.assume(i1 %.not.i24.i.i)
  br label %bb.m

bb.i:                                             ; preds = %.noexc7
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8w9c0syp1Hj_13ruff_notebook.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.ap, %bb.j ], [ %lpad.loopexit.split-lp14, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8w9c0syp1Hj_13ruff_notebook.exit: ; preds = %bb.i
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8w9c0syp1Hj_13ruff_notebook.exit
  %.sroa.0.0 = phi i1 [ false, %bb.m ], [ true, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8w9c0syp1Hj_13ruff_notebook.exit ]
  ret i1 %.sroa.0.0

bb.m:                                             ; preds = %bb.h, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ao, %bb.h ], [ %.sroa.4.121.i.i, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %i.ar = load ptr, ptr %0, align 8, !alias.scope !76, !nonnull !4, !noundef !4 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.3.0.i.ph.i ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !noalias !77, !noundef !4
  %i.au = and i8 %i.at, 1
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ax = add i64 %.sroa.3.0.i.ph.i, -16
  %i.ay = load i64, ptr %i.d, align 8, !alias.scope !76, !noundef !4
  %i.az = and i64 %i.ay, %i.ax
  store i8 %i.f, ptr %i.as, align 1, !noalias !77
  %i.ba = getelementptr i8, ptr %i.ar, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 16
  store i8 %i.f, ptr %i.bb, align 1, !noalias !77
  %i.bc = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !76
  %i.bd = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.av, i64 0
  %i.be = sub <2 x i64> %i.bc, %i.bd
  store <2 x i64> %i.be, ptr %i.aw, align 8, !alias.scope !76
  %i.bf = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bg = getelementptr inbounds [24 x i8], ptr %i.ar, i64 %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i, %bb.a, %bb.b
  %lpad.loopexit.split-lp14 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef align 8 dereferenceable(24) %1) #19
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgQfI1edjipl_9hashbrown3mapINtB4_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE24with_capacity_and_hasherCs8w9c0syp1Hj_13ruff_notebook(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !78 {
bb.a:
  tail call void @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueEE16with_capacity_inCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %3, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNtNtBb_3str10IsNotEmptyINtB7_5FnMutTRReEE8call_mutCs8w9c0syp1Hj_13ruff_notebook(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 !guid !79 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load i64, ptr %i.a, align 8, !noundef !4
  %i.b = icmp ne i64 %.val, 0
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtCscdodAO9FK5_5alloc6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef align 8 dereferenceable(40) %0) unnamed_addr #0 !guid !80 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueEE9next_implKb0_ECs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) ; 3 uses
  %i.e = load i64, ptr %i.a, align 8, !noundef !4
  %i.f = add i64 %i.e, -1
  store i64 %i.f, ptr %i.a, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -56
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 -32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.3.0 = phi ptr [ %i.h, %bb.c ], [ undef, %bb.a ], [ undef, %bb.b ]
  %.sroa.0.0 = phi ptr [ %i.g, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  %i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXs_NtCs8WSyX4grlum_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCs24BcXN56ycQ_9rand_core5block9Generator8generateCs8w9c0syp1Hj_13ruff_notebook(ptr noalias nofree noundef align 4 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef writeonly align 4 captures(none) dereferenceable(256) %1) unnamed_addr #4 !guid !84 {
bb.a:
  %i.a = load atomic i8, ptr @_RNvNtCs8WSyX4grlum_8chacha2010avx2_cpuid7STORAGE monotonic, align 1
  %i.b = icmp eq i8 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtNtCs8WSyX4grlum_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef align 4 dereferenceable(64) %0, ptr noalias noundef align 4 dereferenceable(256) %1)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %.sroa.013.0.copyload25.i = load <4 x i32>, ptr %0, align 4, !alias.scope !85 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.014.0.copyload26.i = load <4 x i32>, ptr %i.c, align 4, !alias.scope !85 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.015.0.copyload27.i = load <4 x i32>, ptr %i.d, align 4, !alias.scope !85 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.016.0.copyload.i = load <2 x i64>, ptr %i.e, align 4, !alias.scope !85 ; 5 uses
  %2 = bitcast <2 x i64> %.sroa.016.0.copyload.i to <4 x i32> ; 2 uses
  %i.f = add <2 x i64> %.sroa.016.0.copyload.i, <i64 1, i64 0>
  %i.g = add <2 x i64> %.sroa.016.0.copyload.i, <i64 2, i64 0>
  %i.h = add <2 x i64> %.sroa.016.0.copyload.i, <i64 3, i64 0>
  %3 = bitcast <2 x i64> %i.f to <4 x i32>        ; 2 uses
  %4 = bitcast <2 x i64> %i.g to <4 x i32>        ; 2 uses
  %5 = bitcast <2 x i64> %i.h to <4 x i32>        ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.sroa.048.0116.i.i = phi i64 [ 0, %bb.c ], [ %i.u, %bb.d ]
  %6 = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.c ], [ %i.du, %bb.d ]
  %7 = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.c ], [ %i.ci, %bb.d ] ; 2 uses
  %8 = phi <4 x i32> [ %2, %bb.c ], [ %16, %bb.d ]
  %9 = phi <4 x i32> [ %.sroa.015.0.copyload27.i, %bb.c ], [ %i.dt, %bb.d ]
  %i.i = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.c ], [ %i.dw, %bb.d ]
  %i.j = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.c ], [ %i.cu, %bb.d ] ; 2 uses
  %i.k = phi <4 x i32> [ %3, %bb.c ], [ %17, %bb.d ]
  %i.l = phi <4 x i32> [ %.sroa.015.0.copyload27.i, %bb.c ], [ %i.dv, %bb.d ]
  %i.m = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.c ], [ %i.dy, %bb.d ]
  %i.n = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.c ], [ %i.dg, %bb.d ] ; 2 uses
  %i.o = phi <4 x i32> [ %4, %bb.c ], [ %18, %bb.d ]
  %i.p = phi <4 x i32> [ %.sroa.015.0.copyload27.i, %bb.c ], [ %i.dx, %bb.d ]
  %i.q = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.c ], [ %i.ea, %bb.d ]
  %i.r = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.c ], [ %i.ds, %bb.d ] ; 2 uses
  %i.s = phi <4 x i32> [ %5, %bb.c ], [ %19, %bb.d ]
  %i.t = phi <4 x i32> [ %.sroa.015.0.copyload27.i, %bb.c ], [ %i.dz, %bb.d ]
  %i.u = add nuw nsw i64 %.sroa.048.0116.i.i, 1   ; 2 uses
  %i.v = add <4 x i32> %7, %6                     ; 2 uses
  %i.w = xor <4 x i32> %8, %i.v                   ; 2 uses
  %i.x = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.w, <4 x i32> %i.w, <4 x i32> splat (i32 16)) ; 2 uses
  %i.y = add <4 x i32> %i.x, %9                   ; 2 uses
  %i.z = xor <4 x i32> %i.y, %7                   ; 2 uses
  %i.aa = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.z, <4 x i32> %i.z, <4 x i32> splat (i32 12)) ; 2 uses
  %i.ab = add <4 x i32> %i.aa, %i.v               ; 2 uses
  %i.ac = xor <4 x i32> %i.ab, %i.x               ; 2 uses
  %i.ad = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ac, <4 x i32> %i.ac, <4 x i32> splat (i32 8)) ; 2 uses
  %i.ae = add <4 x i32> %i.ad, %i.y               ; 2 uses
  %i.af = xor <4 x i32> %i.ae, %i.aa              ; 2 uses
  %i.ag = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.af, <4 x i32> %i.af, <4 x i32> splat (i32 7)) ; 2 uses
  %i.ah = add <4 x i32> %i.j, %i.i                ; 2 uses
  %i.ai = xor <4 x i32> %i.k, %i.ah               ; 2 uses
  %i.aj = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ai, <4 x i32> %i.ai, <4 x i32> splat (i32 16)) ; 2 uses
  %i.ak = add <4 x i32> %i.aj, %i.l               ; 2 uses
  %i.al = xor <4 x i32> %i.ak, %i.j               ; 2 uses
  %i.am = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.al, <4 x i32> %i.al, <4 x i32> splat (i32 12)) ; 2 uses
  %i.an = add <4 x i32> %i.am, %i.ah              ; 2 uses
  %i.ao = xor <4 x i32> %i.an, %i.aj              ; 2 uses
  %i.ap = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ao, <4 x i32> %i.ao, <4 x i32> splat (i32 8)) ; 2 uses
  %i.aq = add <4 x i32> %i.ap, %i.ak              ; 2 uses
  %i.ar = xor <4 x i32> %i.aq, %i.am              ; 2 uses
  %i.as = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ar, <4 x i32> %i.ar, <4 x i32> splat (i32 7)) ; 2 uses
  %i.at = add <4 x i32> %i.n, %i.m                ; 2 uses
  %i.au = xor <4 x i32> %i.o, %i.at               ; 2 uses
  %i.av = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.au, <4 x i32> %i.au, <4 x i32> splat (i32 16)) ; 2 uses
  %i.aw = add <4 x i32> %i.av, %i.p               ; 2 uses
  %i.ax = xor <4 x i32> %i.aw, %i.n               ; 2 uses
  %i.ay = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ax, <4 x i32> %i.ax, <4 x i32> splat (i32 12)) ; 2 uses
  %i.az = add <4 x i32> %i.ay, %i.at              ; 2 uses
  %i.ba = xor <4 x i32> %i.az, %i.av              ; 2 uses
  %i.bb = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ba, <4 x i32> %i.ba, <4 x i32> splat (i32 8)) ; 2 uses
  %i.bc = add <4 x i32> %i.bb, %i.aw              ; 2 uses
  %i.bd = xor <4 x i32> %i.bc, %i.ay              ; 2 uses
  %i.be = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bd, <4 x i32> %i.bd, <4 x i32> splat (i32 7)) ; 2 uses
  %i.bf = add <4 x i32> %i.r, %i.q                ; 2 uses
  %i.bg = xor <4 x i32> %i.s, %i.bf               ; 2 uses
  %i.bh = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bg, <4 x i32> %i.bg, <4 x i32> splat (i32 16)) ; 2 uses
  %i.bi = add <4 x i32> %i.bh, %i.t               ; 2 uses
  %i.bj = xor <4 x i32> %i.bi, %i.r               ; 2 uses
  %i.bk = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bj, <4 x i32> %i.bj, <4 x i32> splat (i32 12)) ; 2 uses
  %i.bl = add <4 x i32> %i.bk, %i.bf              ; 2 uses
  %i.bm = xor <4 x i32> %i.bl, %i.bh              ; 2 uses
  %i.bn = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bm, <4 x i32> %i.bm, <4 x i32> splat (i32 8)) ; 2 uses
  %i.bo = add <4 x i32> %i.bn, %i.bi              ; 2 uses
  %i.bp = xor <4 x i32> %i.bo, %i.bk              ; 2 uses
  %i.bq = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bp, <4 x i32> %i.bp, <4 x i32> splat (i32 7)) ; 2 uses
  %i.br = shufflevector <4 x i32> %i.ae, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %10 = shufflevector <4 x i32> %i.ad, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bs = shufflevector <4 x i32> %i.ab, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.bt = shufflevector <4 x i32> %i.aq, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %11 = shufflevector <4 x i32> %i.ap, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bu = shufflevector <4 x i32> %i.an, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.bv = shufflevector <4 x i32> %i.bc, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %12 = shufflevector <4 x i32> %i.bb, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bw = shufflevector <4 x i32> %i.az, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.bx = shufflevector <4 x i32> %i.bo, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %13 = shufflevector <4 x i32> %i.bn, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %14 = shufflevector <4 x i32> %i.bl, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %15 = add <4 x i32> %i.ag, %i.bs                ; 2 uses
  %i.by = xor <4 x i32> %15, %10                  ; 2 uses
  %i.bz = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.by, <4 x i32> %i.by, <4 x i32> splat (i32 16)) ; 2 uses
  %i.ca = add <4 x i32> %i.bz, %i.br              ; 2 uses
  %i.cb = xor <4 x i32> %i.ca, %i.ag              ; 2 uses
  %i.cc = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cb, <4 x i32> %i.cb, <4 x i32> splat (i32 12)) ; 2 uses
  %i.cd = add <4 x i32> %i.cc, %15                ; 2 uses
  %i.ce = xor <4 x i32> %i.cd, %i.bz              ; 2 uses
  %i.cf = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ce, <4 x i32> %i.ce, <4 x i32> splat (i32 8)) ; 2 uses
  %i.cg = add <4 x i32> %i.cf, %i.ca              ; 2 uses
  %i.ch = xor <4 x i32> %i.cg, %i.cc              ; 2 uses
  %i.ci = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ch, <4 x i32> %i.ch, <4 x i32> splat (i32 7)) ; 2 uses
  %i.cj = add <4 x i32> %i.as, %i.bu              ; 2 uses
  %i.ck = xor <4 x i32> %i.cj, %11                ; 2 uses
  %i.cl = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ck, <4 x i32> %i.ck, <4 x i32> splat (i32 16)) ; 2 uses
  %i.cm = add <4 x i32> %i.cl, %i.bt              ; 2 uses
  %i.cn = xor <4 x i32> %i.cm, %i.as              ; 2 uses
  %i.co = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cn, <4 x i32> %i.cn, <4 x i32> splat (i32 12)) ; 2 uses
  %i.cp = add <4 x i32> %i.co, %i.cj              ; 2 uses
  %i.cq = xor <4 x i32> %i.cp, %i.cl              ; 2 uses
  %i.cr = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cq, <4 x i32> %i.cq, <4 x i32> splat (i32 8)) ; 2 uses
  %i.cs = add <4 x i32> %i.cr, %i.cm              ; 2 uses
  %i.ct = xor <4 x i32> %i.cs, %i.co              ; 2 uses
  %i.cu = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ct, <4 x i32> %i.ct, <4 x i32> splat (i32 7)) ; 2 uses
  %i.cv = add <4 x i32> %i.be, %i.bw              ; 2 uses
  %i.cw = xor <4 x i32> %i.cv, %12                ; 2 uses
  %i.cx = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cw, <4 x i32> %i.cw, <4 x i32> splat (i32 16)) ; 2 uses
  %i.cy = add <4 x i32> %i.cx, %i.bv              ; 2 uses
  %i.cz = xor <4 x i32> %i.cy, %i.be              ; 2 uses
  %i.da = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cz, <4 x i32> %i.cz, <4 x i32> splat (i32 12)) ; 2 uses
  %i.db = add <4 x i32> %i.da, %i.cv              ; 2 uses
  %i.dc = xor <4 x i32> %i.db, %i.cx              ; 2 uses
  %i.dd = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dc, <4 x i32> %i.dc, <4 x i32> splat (i32 8)) ; 2 uses
  %i.de = add <4 x i32> %i.dd, %i.cy              ; 2 uses
  %i.df = xor <4 x i32> %i.de, %i.da              ; 2 uses
  %i.dg = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.df, <4 x i32> %i.df, <4 x i32> splat (i32 7)) ; 2 uses
  %i.dh = add <4 x i32> %i.bq, %14                ; 2 uses
  %i.di = xor <4 x i32> %i.dh, %13                ; 2 uses
  %i.dj = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.di, <4 x i32> %i.di, <4 x i32> splat (i32 16)) ; 2 uses
  %i.dk = add <4 x i32> %i.dj, %i.bx              ; 2 uses
  %i.dl = xor <4 x i32> %i.dk, %i.bq              ; 2 uses
  %i.dm = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dl, <4 x i32> %i.dl, <4 x i32> splat (i32 12)) ; 2 uses
  %i.dn = add <4 x i32> %i.dm, %i.dh              ; 2 uses
  %i.do = xor <4 x i32> %i.dn, %i.dj              ; 2 uses
  %i.dp = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.do, <4 x i32> %i.do, <4 x i32> splat (i32 8)) ; 2 uses
  %i.dq = add <4 x i32> %i.dp, %i.dk              ; 2 uses
  %i.dr = xor <4 x i32> %i.dq, %i.dm              ; 2 uses
  %i.ds = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dr, <4 x i32> %i.dr, <4 x i32> splat (i32 7)) ; 2 uses
  %i.dt = shufflevector <4 x i32> %i.cg, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %16 = shufflevector <4 x i32> %i.cf, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.du = shufflevector <4 x i32> %i.cd, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.dv = shufflevector <4 x i32> %i.cs, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %17 = shufflevector <4 x i32> %i.cr, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.dw = shufflevector <4 x i32> %i.cp, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.dx = shufflevector <4 x i32> %i.de, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %18 = shufflevector <4 x i32> %i.dd, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.dy = shufflevector <4 x i32> %i.db, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.dz = shufflevector <4 x i32> %i.dq, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %19 = shufflevector <4 x i32> %i.dp, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.ea = shufflevector <4 x i32> %i.dn, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, 6
  br i1 %exitcond.not.i.i, label %_RINvNtNtCs8WSyX4grlum_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs8w9c0syp1Hj_13ruff_notebook.exit, label %bb.d

_RINvNtNtCs8WSyX4grlum_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs8w9c0syp1Hj_13ruff_notebook.exit: ; preds = %bb.d
  %i.eb = add <4 x i32> %i.du, %.sroa.013.0.copyload25.i
  %i.ec = add <4 x i32> %i.ci, %.sroa.014.0.copyload26.i
  %i.ed = add <4 x i32> %i.dt, %.sroa.015.0.copyload27.i
  %i.ee = add <4 x i32> %16, %2
  %i.ef = add <4 x i32> %i.dw, %.sroa.013.0.copyload25.i
  %i.eg = add <4 x i32> %i.cu, %.sroa.014.0.copyload26.i
  %i.eh = add <4 x i32> %i.dv, %.sroa.015.0.copyload27.i
  %i.ei = add <4 x i32> %17, %3
  %i.ej = add <4 x i32> %i.dy, %.sroa.013.0.copyload25.i
  %i.ek = add <4 x i32> %i.dg, %.sroa.014.0.copyload26.i
  %i.el = add <4 x i32> %i.dx, %.sroa.015.0.copyload27.i
  %i.em = add <4 x i32> %18, %4
  %i.en = add <4 x i32> %i.ea, %.sroa.013.0.copyload25.i
  %i.eo = add <4 x i32> %i.ds, %.sroa.014.0.copyload26.i
  %i.ep = add <4 x i32> %i.dz, %.sroa.015.0.copyload27.i
  %i.eq = add <4 x i32> %19, %5
  store <4 x i32> %i.eb, ptr %1, align 4, !alias.scope !86
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x i32> %i.ec, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !86
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <4 x i32> %i.ed, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !86
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <4 x i32> %i.ee, ptr %.sroa.6.0..sroa_idx.i, align 4, !alias.scope !86
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <4 x i32> %i.ef, ptr %.sroa.7.0..sroa_idx.i, align 4, !alias.scope !86
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <4 x i32> %i.eg, ptr %.sroa.8.0..sroa_idx.i, align 4, !alias.scope !86
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <4 x i32> %i.eh, ptr %.sroa.9.0..sroa_idx.i, align 4, !alias.scope !86
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <4 x i32> %i.ei, ptr %.sroa.10.0..sroa_idx.i, align 4, !alias.scope !86
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store <4 x i32> %i.ej, ptr %.sroa.11.0..sroa_idx.i, align 4, !alias.scope !86
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <4 x i32> %i.ek, ptr %.sroa.12.0..sroa_idx.i, align 4, !alias.scope !86
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  store <4 x i32> %i.el, ptr %.sroa.13.0..sroa_idx.i, align 4, !alias.scope !86
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <4 x i32> %i.em, ptr %.sroa.14.0..sroa_idx.i, align 4, !alias.scope !86
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 192
  store <4 x i32> %i.en, ptr %.sroa.15.0..sroa_idx.i, align 4, !alias.scope !86
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <4 x i32> %i.eo, ptr %.sroa.16.0..sroa_idx.i, align 4, !alias.scope !86
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 224
  store <4 x i32> %i.ep, ptr %.sroa.17.0..sroa_idx.i, align 4, !alias.scope !86
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <4 x i32> %i.eq, ptr %.sroa.18.0..sroa_idx.i, align 4, !alias.scope !86
  %i.er = add <2 x i64> %.sroa.016.0.copyload.i, <i64 4, i64 0> ; 2 uses
  %i.es = bitcast <2 x i64> %i.er to <4 x i32>
  %i.et = extractelement <4 x i32> %i.es, i64 0
  store i32 %i.et, ptr %i.e, align 4, !alias.scope !85
  %i.eu = tail call fastcc noundef i32 @_RINvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x865sse4117__mm_extract_epi32Kl1_ECs8w9c0syp1Hj_13ruff_notebook(<2 x i64> %i.er)
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.eu, ptr %i.ev, align 4, !alias.scope !85
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtNtCs8WSyX4grlum_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs8w9c0syp1Hj_13ruff_notebook.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCs4NRVxsYgnAr_4core5arrayNtB5_17TryFromSliceErrorNtNtB7_3fmt5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 !guid !87 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 17, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueEE7reserveNCINvNtB8_3map11make_hasherBQ_B1r_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0ECs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0ECs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCscvBHLZPbXnS_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCscvBHLZPbXnS_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1w_E3newCs8w9c0syp1Hj_13ruff_notebook(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(40), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtCscdodAO9FK5_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implmECs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef nonnull align 4, i64 noundef range(i64 0, 2305843009213693952), ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedjjEB4_(i8 noundef range(i8 0, 3), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef, ptr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: cold nonlazybind uwtable
declare noundef zeroext i1 @_RNvNvNtCs8WSyX4grlum_8chacha2010avx2_cpuid8init_get10init_inner() unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCscdodAO9FK5_5alloc6string6StringECs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueEE16with_capacity_inCs8w9c0syp1Hj_13ruff_notebook(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #14

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs1q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef align 8 dereferenceable(40), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueEE9next_implKb0_ECs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRuNtB6_5Debug3fmtCs8w9c0syp1Hj_13ruff_notebook(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.fshl.v8i32(<8 x i32>, <8 x i32>, <8 x i32>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fshl.v4i32(<4 x i32>, <4 x i32>, <4 x i32>) #16

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #2 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+sse,+sse2,+sse3,+sse4.1,+ssse3" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { cold noreturn nounwind }
attributes #18 = { noreturn }
attributes #19 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{i64 957619496070063895}
!4 = !{}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{i64 6359944871107727253}
!8 = !{i64 -3287919787143940776}
!9 = !{i8 0, i8 6}
!10 = distinct !{!10, i1 true, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!11 = distinct !{!11, !10, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!12 = distinct !{!12, i1 true, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!13 = distinct !{!13, !12, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!14 = distinct !{!14, i1 true, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!15 = distinct !{!15, !14, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!16 = distinct !{!16, i1 true, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!17 = distinct !{!17, !16, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!18 = !{i64 -3096837134150843825}
!19 = !{!11}
!20 = !{!13}
!21 = !{!15}
!22 = !{!17}
!23 = !{i64 8536257531718747014}
!24 = distinct !{!24, i1 true, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator3zipQSmECs8w9c0syp1Hj_13ruff_notebook"}
!25 = distinct !{!25, !24, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator3zipQSmECs8w9c0syp1Hj_13ruff_notebook: argument 2"}
!26 = distinct !{!26, !24, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator3zipQSmECs8w9c0syp1Hj_13ruff_notebook: argument 1"}
!27 = distinct !{!27, !24, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator3zipQSmECs8w9c0syp1Hj_13ruff_notebook: argument 0"}
end_hunk_1
