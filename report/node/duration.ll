inline.NumInlined: 653
inline.NumDeleted: 191
begin_hunk_0_@_ZN4absl8DurationdVEd:bb.a
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp uno double %1, 0.000000e+00
  br i1 %i.b, label %_ZN4abslngENS_8DurationE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = bitcast double %1 to i64
  %i.d = load i64, ptr %0, align 4
  %i.e = xor i64 %i.d, %i.c
  %i.f = icmp slt i64 %i.e, 0
  %spec.select = select i1 %i.f, { i64, i32 } { i64 -9223372036854775808, i32 -1 }, { i64, i32 } { i64 9223372036854775807, i32 -1 }
  br label %_ZN4abslngENS_8DurationE.exit

bb.d:                                             ; preds = %bb.a
  %.sroa.03.0.copyload = load i64, ptr %0, align 4
  %i.g = sitofp i64 %.sroa.03.0.copyload to double
  %i.h = fdiv double %i.g, %1
  %i.i = uitofp i32 %.sroa.226.0.copyload to double
  %i.j = fdiv double %i.i, %1
  %i.k = tail call { double, double } @llvm.modf.f64(double %i.h) ; 2 uses
  %i.l = extractvalue { double, double } %i.k, 0
  %i.m = extractvalue { double, double } %i.k, 1
  %i.n = fdiv double %i.j, 4.000000e+09
  %i.o = fadd double %i.n, %i.l
  %i.p = tail call { double, double } @llvm.modf.f64(double %i.o) ; 2 uses
  %i.q = extractvalue { double, double } %i.p, 0
  %i.r = extractvalue { double, double } %i.p, 1
  %i.s = fmul double %i.q, 4.000000e+09
  %i.t = tail call double @llvm.round.f64(double %i.s)
  %i.u = fptosi double %i.t to i64                ; 2 uses
  %i.v = fadd double %i.m, %i.r                   ; 3 uses
  %i.w = fcmp ult double %i.v, f0x43E0000000000000
  br i1 %i.w, label %bb.e, label %_ZN4absl12_GLOBAL__N_111ScaleDoubleISt7dividesEENS_8DurationES3_d.exit

bb.e:                                             ; preds = %bb.d
  %i.x = fcmp ugt double %i.v, f0xC3E0000000000000
  br i1 %i.x, label %bb.f, label %_ZN4absl12_GLOBAL__N_111ScaleDoubleISt7dividesEENS_8DurationES3_d.exit

bb.f:                                             ; preds = %bb.e
  %i.y = fptosi double %i.v to i64
  %i.z = sitofp i64 %i.y to double
  %i.aa = sdiv i64 %i.u, 4000000000
  %i.ab = srem i64 %i.u, 4000000000               ; 4 uses
  %i.ac = sitofp i64 %i.aa to double
  %i.ad = fadd double %i.z, %i.ac                 ; 3 uses
  %i.ae = fcmp ult double %i.ad, f0x43E0000000000000
  br i1 %i.ae, label %bb.g, label %_ZN4absl12_GLOBAL__N_111ScaleDoubleISt7dividesEENS_8DurationES3_d.exit

bb.g:                                             ; preds = %bb.f
  %i.af = fcmp ugt double %i.ad, f0xC3E0000000000000
  br i1 %i.af, label %_ZN4absl12_GLOBAL__N_114NormalizeTicksEPlS1_.exit.i, label %_ZN4absl12_GLOBAL__N_111ScaleDoubleISt7dividesEENS_8DurationES3_d.exit

_ZN4absl12_GLOBAL__N_114NormalizeTicksEPlS1_.exit.i: ; preds = %bb.g
  %i.ag = fptosi double %i.ad to i64
  %i.ah = icmp slt i64 %i.ab, 0
  %i.ai = add nsw i64 %i.ab, 4000000000
  %.056.i = select i1 %i.ah, i64 %i.ai, i64 %i.ab
  %.lobit.i = ashr i64 %i.ab, 63
  %.0.i36 = add nsw i64 %.lobit.i, %i.ag
  %i.aj = trunc nuw i64 %.056.i to i32
  br label %_ZN4absl12_GLOBAL__N_111ScaleDoubleISt7dividesEENS_8DurationES3_d.exit

_ZN4absl12_GLOBAL__N_111ScaleDoubleISt7dividesEENS_8DurationES3_d.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %_ZN4absl12_GLOBAL__N_114NormalizeTicksEPlS1_.exit.i
  %.sroa.031.1.i = phi i64 [ 9223372036854775807, %bb.d ], [ -9223372036854775808, %bb.e ], [ %.0.i36, %_ZN4absl12_GLOBAL__N_114NormalizeTicksEPlS1_.exit.i ], [ -9223372036854775808, %bb.g ], [ 9223372036854775807, %bb.f ]
  %.sroa.4.1.i = phi i32 [ -1, %bb.d ], [ -1, %bb.e ], [ %i.aj, %_ZN4absl12_GLOBAL__N_114NormalizeTicksEPlS1_.exit.i ], [ -1, %bb.g ], [ -1, %bb.f ]
  %.fca.0.insert.i = insertvalue { i64, i32 } poison, i64 %.sroa.031.1.i, 0
  %.fca.1.insert.i = insertvalue { i64, i32 } %.fca.0.insert.i, i32 %.sroa.4.1.i, 1
  br label %_ZN4abslngENS_8DurationE.exit

_ZN4abslngENS_8DurationE.exit:                    ; preds = %bb.c, %bb.b, %_ZN4absl12_GLOBAL__N_111ScaleDoubleISt7dividesEENS_8DurationES3_d.exit
  %.pn33 = phi { i64, i32 } [ %.fca.1.insert.i, %_ZN4absl12_GLOBAL__N_111ScaleDoubleISt7dividesEENS_8DurationES3_d.exit ], [ %spec.select, %bb.c ], [ { i64 -9223372036854775808, i32 -1 }, %bb.b ] ; 2 uses
  %storemerge = extractvalue { i64, i32 } %.pn33, 1
  %storemerge32 = extractvalue { i64, i32 } %.pn33, 0
  store i64 %storemerge32, ptr %0, align 4
  store i32 %storemerge, ptr %.sroa.226.0..sroa_idx, align 4
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef nonnull align 4 dereferenceable(12) ptr @_ZN4absl8DurationrMES0_(ptr nofree noundef nonnull returned align 4 captures(ret: address, provenance) dereferenceable(12) %0, i64 %1, i32 %2) local_unnamed_addr #2 align 2 {
bb.a:
  %.sroa.05.0.copyload = load i64, ptr %0, align 4 ; 8 uses
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.26.0.copyload = load i32, ptr %.sroa.26.0..sroa_idx, align 4 ; 10 uses
  %i.a = icmp eq i32 %.sroa.26.0.copyload, -1
  %i.b = icmp eq i32 %2, -1
  %or.cond178.i = select i1 %i.a, i1 true, i1 %i.b
  br i1 %or.cond178.i, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  switch i32 %2, label %bb.r [
    i32 4, label %bb.d
    i32 400, label %bb.f
    i32 4000, label %bb.h
    i32 4000000, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  %or.cond.i = icmp ult i64 %.sroa.05.0.copyload, 9223372032
  br i1 %or.cond.i, label %bb.e, label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.d = and i32 %.sroa.26.0.copyload, 3
  br label %bb.q

bb.f:                                             ; preds = %bb.c
  %or.cond3.i = icmp ult i64 %.sroa.05.0.copyload, 922337203285
  br i1 %or.cond3.i, label %bb.g, label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.e = urem i32 %.sroa.26.0.copyload, 400
  br label %bb.q

bb.h:                                             ; preds = %bb.c
  %or.cond5.i = icmp ult i64 %.sroa.05.0.copyload, 9223372032854
  br i1 %or.cond5.i, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.f = urem i32 %.sroa.26.0.copyload, 4000
  br label %bb.q

bb.j:                                             ; preds = %bb.c
  %or.cond7.i = icmp ult i64 %.sroa.05.0.copyload, 9223372032854775
  br i1 %or.cond7.i, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.g = urem i32 %.sroa.26.0.copyload, 4000000
  br label %bb.q

bb.l:                                             ; preds = %bb.b
  %i.h = icmp sgt i64 %1, 0
  %i.i = icmp eq i32 %2, 0
  %or.cond9.i = and i1 %i.h, %i.i
  br i1 %or.cond9.i, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.j = icmp sgt i64 %.sroa.05.0.copyload, -1
  br i1 %i.j, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.k = icmp eq i64 %1, 1
  br i1 %i.k, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.l = urem i64 %.sroa.05.0.copyload, %1
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %.not.i = icmp ne i32 %.sroa.26.0.copyload, 0
  %.neg184.i = sext i1 %.not.i to i64             ; 2 uses
  %spec.select.neg.i = sub i64 %.neg184.i, %.sroa.05.0.copyload
  %i.m = urem i64 %spec.select.neg.i, %1
  %.neg177.pn.i = sub nsw i64 %.neg184.i, %i.m
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p, %bb.o, %bb.k, %bb.i, %bb.g, %bb.e
  %.sink185.i = phi i64 [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.k ], [ %.neg177.pn.i, %bb.p ], [ %i.l, %bb.o ], [ 0, %bb.n ]
  %.sink.i = phi i32 [ %i.d, %bb.e ], [ %i.e, %bb.g ], [ %i.f, %bb.i ], [ %i.g, %bb.k ], [ %.sroa.26.0.copyload, %bb.p ], [ %.sroa.26.0.copyload, %bb.o ], [ %.sroa.26.0.copyload, %bb.n ]
  store i64 %.sink185.i, ptr %0, align 4
  store i32 %.sink.i, ptr %.sroa.26.0..sroa_idx, align 4
  br label %_ZN4absl12_GLOBAL__N_116IDivDurationImplEbNS_8DurationES1_PS1_.exit

bb.r:                                             ; preds = %bb.a, %bb.f, %bb.h, %bb.j, %bb.c, %bb.l, %bb.d
  %i.n = tail call fastcc noundef i64 @_ZN4absl12_GLOBAL__N_112IDivSlowPathEbNS_8DurationES1_PS1_(i1 noundef zeroext false, i64 %.sroa.05.0.copyload, i32 %.sroa.26.0.copyload, i64 %1, i32 %2, ptr noundef nonnull %0) ; 0 uses
  br label %_ZN4absl12_GLOBAL__N_116IDivDurationImplEbNS_8DurationES1_PS1_.exit

_ZN4absl12_GLOBAL__N_116IDivDurationImplEbNS_8DurationES1_PS1_.exit: ; preds = %bb.q, %bb.r
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @_ZN4absl12FDivDurationENS_8DurationES0_(i64 %0, i32 %1, i64 %2, i32 %3) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i32 %1, -1
  br i1 %i.a, label %_ZN4abslltENS_8DurationES0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  %i.c = icmp eq i32 %3, 0
  %spec.select.i = select i1 %i.b, i1 %i.c, i1 false
  br i1 %spec.select.i, label %_ZN4abslltENS_8DurationES0_.exit, label %bb.c

_ZN4abslltENS_8DurationES0_.exit:                 ; preds = %bb.b, %bb.a
  %i.d = xor i64 %2, %0
  %i.e = icmp slt i64 %i.d, 0
  %i.f = select i1 %i.e, double -inf, double +inf
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i32 %3, -1
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = sitofp i64 %0 to double
  %i.i = uitofp i32 %1 to double
  %4 = tail call double @llvm.fmuladd.f64(double %i.h, double 4.000000e+09, double %i.i)
  %i.j = sitofp i64 %2 to double
  %i.k = uitofp i32 %3 to double
  %5 = tail call double @llvm.fmuladd.f64(double %i.j, double 4.000000e+09, double %i.k)
  %i.l = fdiv double %4, %5
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %_ZN4abslltENS_8DurationES0_.exit
  %.0 = phi double [ %i.f, %_ZN4abslltENS_8DurationES0_.exit ], [ %i.l, %bb.d ], [ 0.000000e+00, %bb.c ]
  ret double %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i32 } @_ZN4absl5TruncENS_8DurationES0_(i64 %0, i32 %1, i64 %2, i32 %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %"class.absl::Duration", align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %0, ptr %4, align 8
  %.sroa.210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 %1, ptr %.sroa.210.0..sroa_idx.i, align 8
  %i.a = call noundef nonnull align 4 dereferenceable(12) ptr @_ZN4absl8DurationrMES0_(ptr noundef nonnull align 4 dereferenceable(12) %4, i64 %2, i32 %3) ; 0 uses
  %.sroa.011.0.copyload.i = load i64, ptr %4, align 8 ; 3 uses
  %.sroa.212.0.copyload.i = load i32, ptr %.sroa.210.0..sroa_idx.i, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.b = icmp eq i32 %1, -1
  br i1 %i.b, label %_ZN4abslmiENS_8DurationES0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %.sroa.212.0.copyload.i, -1
  br i1 %i.c, label %_ZN4abslngENS_8DurationE.exit.i.i, label %bb.c

_ZN4abslngENS_8DurationE.exit.i.i:                ; preds = %bb.b
  %i.d = icmp sgt i64 %.sroa.011.0.copyload.i, -1
  %.sroa.031.0.i.i = select i1 %i.d, i64 -9223372036854775808, i64 9223372036854775807
  br label %.sink.split.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = sub i64 %0, %.sroa.011.0.copyload.i
  %i.f = icmp ult i32 %1, %.sroa.212.0.copyload.i ; 2 uses
  %i.g = add i32 %1, -294967296
  %i.h = sext i1 %i.f to i64
  %.sroa.0.0.i = add i64 %i.e, %i.h               ; 4 uses
  %i.i = select i1 %i.f, i32 %i.g, i32 %1
  %i.j = sub i32 %i.i, %.sroa.212.0.copyload.i    ; 2 uses
  %i.k = icmp slt i64 %.sroa.011.0.copyload.i, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = icmp slt i64 %.sroa.0.0.i, %0
  br i1 %i.l, label %.sink.split.i.i, label %_ZN4abslmiENS_8DurationES0_.exit

bb.e:                                             ; preds = %bb.c
  %i.m = icmp sgt i64 %.sroa.0.0.i, %0
  br i1 %i.m, label %.sink.split.i.i, label %_ZN4abslmiENS_8DurationES0_.exit

.sink.split.i.i:                                  ; preds = %bb.e, %bb.d, %_ZN4abslngENS_8DurationE.exit.i.i
  %.pn.sink.i.i = phi i64 [ %.sroa.031.0.i.i, %_ZN4abslngENS_8DurationE.exit.i.i ], [ -9223372036854775808, %bb.e ], [ 9223372036854775807, %bb.d ]
  br label %_ZN4abslmiENS_8DurationES0_.exit

_ZN4abslmiENS_8DurationES0_.exit:                 ; preds = %bb.a, %bb.d, %bb.e, %.sink.split.i.i
  %.sroa.6.0.i = phi i32 [ -1, %bb.a ], [ -1, %.sink.split.i.i ], [ %i.j, %bb.d ], [ %i.j, %bb.e ]
  %.sroa.0.1.i = phi i64 [ %0, %bb.a ], [ %.pn.sink.i.i, %.sink.split.i.i ], [ %.sroa.0.0.i, %bb.d ], [ %.sroa.0.0.i, %bb.e ]
  %.fca.0.insert.i34 = insertvalue { i64, i32 } poison, i64 %.sroa.0.1.i, 0
  %.fca.1.insert.i35 = insertvalue { i64, i32 } %.fca.0.insert.i34, i32 %.sroa.6.0.i, 1
  ret { i64, i32 } %.fca.1.insert.i35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i32 } @_ZN4absl5FloorENS_8DurationES0_(i64 %0, i32 %1, i64 %2, i32 %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %"class.absl::Duration", align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %0, ptr %4, align 8
  %.sroa.210.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 %1, ptr %.sroa.210.0..sroa_idx.i.i, align 8
  %i.a = call noundef nonnull align 4 dereferenceable(12) ptr @_ZN4absl8DurationrMES0_(ptr noundef nonnull align 4 dereferenceable(12) %4, i64 %2, i32 %3) ; 0 uses
  %.sroa.011.0.copyload.i.i = load i64, ptr %4, align 8 ; 3 uses
  %.sroa.212.0.copyload.i.i = load i32, ptr %.sroa.210.0..sroa_idx.i.i, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.b = icmp eq i32 %1, -1
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %.sroa.212.0.copyload.i.i, -1
  br i1 %i.c, label %_ZN4abslngENS_8DurationE.exit.i.i.i, label %bb.c

_ZN4abslngENS_8DurationE.exit.i.i.i:              ; preds = %bb.b
  %i.d = icmp sgt i64 %.sroa.011.0.copyload.i.i, -1
  %.sroa.031.0.i.i.i = select i1 %i.d, i64 -9223372036854775808, i64 9223372036854775807
  br label %.sink.split.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = sub i64 %0, %.sroa.011.0.copyload.i.i
  %i.f = icmp ult i32 %1, %.sroa.212.0.copyload.i.i ; 2 uses
  %i.g = add i32 %1, -294967296
  %i.h = sext i1 %i.f to i64
  %.sroa.0.0.i.i = add i64 %i.e, %i.h             ; 4 uses
  %i.i = select i1 %i.f, i32 %i.g, i32 %1
  %i.j = sub i32 %i.i, %.sroa.212.0.copyload.i.i  ; 2 uses
  %i.k = icmp slt i64 %.sroa.011.0.copyload.i.i, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = icmp slt i64 %.sroa.0.0.i.i, %0
  br i1 %i.l, label %.sink.split.i.i.i, label %_ZN4absl5TruncENS_8DurationES0_.exit

bb.e:                                             ; preds = %bb.c
  %i.m = icmp sgt i64 %.sroa.0.0.i.i, %0
  br i1 %i.m, label %.sink.split.i.i.i, label %_ZN4absl5TruncENS_8DurationES0_.exit

.sink.split.i.i.i:                                ; preds = %bb.e, %bb.d, %_ZN4abslngENS_8DurationE.exit.i.i.i
  %.pn.sink.i.i.i = phi i64 [ %.sroa.031.0.i.i.i, %_ZN4abslngENS_8DurationE.exit.i.i.i ], [ -9223372036854775808, %bb.e ], [ 9223372036854775807, %bb.d ]
  br label %_ZN4absl5TruncENS_8DurationES0_.exit

_ZN4absl5TruncENS_8DurationES0_.exit:             ; preds = %bb.d, %bb.e, %.sink.split.i.i.i
  %.sroa.6.0.i.i = phi i32 [ %i.j, %bb.e ], [ -1, %.sink.split.i.i.i ], [ %i.j, %bb.d ] ; 5 uses
  %.sroa.0.1.i.i = phi i64 [ %.sroa.0.0.i.i, %bb.e ], [ %.pn.sink.i.i.i, %.sink.split.i.i.i ], [ %.sroa.0.0.i.i, %bb.d ] ; 4 uses
  %.fca.0.insert.i34.i = insertvalue { i64, i32 } poison, i64 %.sroa.0.1.i.i, 0
  %.fca.1.insert.i35.i = insertvalue { i64, i32 } %.fca.0.insert.i34.i, i32 %.sroa.6.0.i.i, 1 ; 3 uses
  %.not.i.i = icmp eq i64 %0, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4absl5TruncENS_8DurationES0_.exit
  %i.n = icmp slt i64 %0, %.sroa.0.1.i.i
  br i1 %i.n, label %bb.i, label %.thread75

bb.g:                                             ; preds = %_ZN4absl5TruncENS_8DurationES0_.exit
  %i.o = icmp eq i64 %0, -9223372036854775808
  br i1 %i.o, label %_ZN4abslleENS_8DurationES0_.exit, label %bb.h

.thread:                                          ; preds = %bb.a
  %.fca.0.insert.i34.i56 = insertvalue { i64, i32 } poison, i64 %0, 0
  %.fca.1.insert.i35.i57 = insertvalue { i64, i32 } %.fca.0.insert.i34.i56, i32 -1, 1 ; 2 uses
  %i.p = icmp eq i64 %0, -9223372036854775808
  br i1 %i.p, label %_ZN4abslleENS_8DurationES0_.exit, label %.thread75

bb.h:                                             ; preds = %bb.g
  %i.q = icmp ult i32 %1, %.sroa.6.0.i.i
  br i1 %i.q, label %bb.i, label %.thread75

_ZN4abslleENS_8DurationES0_.exit:                 ; preds = %.thread, %bb.g
  %.sroa.6.0.i.i6073 = phi i32 [ -1, %.thread ], [ %.sroa.6.0.i.i, %bb.g ] ; 2 uses
  %.fca.1.insert.i35.i6472 = phi { i64, i32 } [ %.fca.1.insert.i35.i57, %.thread ], [ %.fca.1.insert.i35.i, %bb.g ]
  %i.r = add i32 %1, 1
  %i.s = add i32 %.sroa.6.0.i.i6073, 1
  %i.t = icmp ult i32 %i.r, %i.s
  br i1 %i.t, label %bb.i, label %.thread75

bb.i:                                             ; preds = %bb.h, %bb.f, %_ZN4abslleENS_8DurationES0_.exit
  %.sroa.6.0.i.i5968 = phi i32 [ %.sroa.6.0.i.i, %bb.f ], [ %.sroa.6.0.i.i6073, %_ZN4abslleENS_8DurationES0_.exit ], [ %.sroa.6.0.i.i, %bb.h ] ; 4 uses
  %.sroa.0.1.i.i6167 = phi i64 [ %.sroa.0.1.i.i, %bb.f ], [ -9223372036854775808, %_ZN4abslleENS_8DurationES0_.exit ], [ %0, %bb.h ] ; 3 uses
  %i.u = icmp slt i64 %2, 0
  br i1 %i.u, label %bb.j, label %_ZN4abslltENS_8DurationES0_.exit.thread.i

bb.j:                                             ; preds = %bb.i
  switch i32 %3, label %bb.m [
    i32 0, label %bb.k
    i32 -1, label %_ZN4absl11AbsDurationENS_8DurationE.exit
  ]

bb.k:                                             ; preds = %bb.j
  %i.v = icmp eq i64 %2, -9223372036854775808
  br i1 %i.v, label %_ZN4absl11AbsDurationENS_8DurationE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = sub nsw i64 0, %2
  %.fca.0.insert.i.i.i = insertvalue { i64, i32 } poison, i64 %i.w, 0
  %.fca.1.insert.i.i.i = insertvalue { i64, i32 } %.fca.0.insert.i.i.i, i32 0, 1
  br label %_ZN4absl11AbsDurationENS_8DurationE.exit

bb.m:                                             ; preds = %bb.j
  %i.x = xor i64 %2, -1
  %i.y = sub i32 -294967296, %3
  %.fca.0.insert.i.i.i.i = insertvalue { i64, i32 } poison, i64 %i.x, 0
  %.fca.1.insert.i.i.i.i = insertvalue { i64, i32 } %.fca.0.insert.i.i.i.i, i32 %i.y, 1
  br label %_ZN4absl11AbsDurationENS_8DurationE.exit

_ZN4abslltENS_8DurationES0_.exit.thread.i:        ; preds = %bb.i
  %i.z = insertvalue { i64, i32 } poison, i64 %2, 0
  %i.aa = insertvalue { i64, i32 } %i.z, i32 %3, 1
  br label %_ZN4absl11AbsDurationENS_8DurationE.exit

_ZN4absl11AbsDurationENS_8DurationE.exit:         ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %_ZN4abslltENS_8DurationES0_.exit.thread.i
  %.fca.1.insert.merged.i = phi { i64, i32 } [ %i.aa, %_ZN4abslltENS_8DurationES0_.exit.thread.i ], [ %.fca.1.insert.i.i.i.i, %bb.m ], [ %.fca.1.insert.i.i.i, %bb.l ], [ { i64 9223372036854775807, i32 -1 }, %bb.k ], [ { i64 9223372036854775807, i32 -1 }, %bb.j ] ; 2 uses
  %.fca.0.extract7 = extractvalue { i64, i32 } %.fca.1.insert.merged.i, 0
  %.fca.1.extract8 = extractvalue { i64, i32 } %.fca.1.insert.merged.i, 1 ; 3 uses
  %i.ab = icmp eq i32 %.sroa.6.0.i.i5968, -1
  br i1 %i.ab, label %_ZN4abslmiENS_8DurationES0_.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4absl11AbsDurationENS_8DurationE.exit
  %i.ac = icmp eq i32 %.fca.1.extract8, -1
  br i1 %i.ac, label %.sink.split.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = icmp ult i32 %.sroa.6.0.i.i5968, %.fca.1.extract8 ; 2 uses
  %i.ae = add i32 %.sroa.6.0.i.i5968, -294967296
  %i.af = select i1 %i.ad, i32 %i.ae, i32 %.sroa.6.0.i.i5968
  %i.ag = sub i32 %i.af, %.fca.1.extract8
  %i.ah = sub i64 %.sroa.0.1.i.i6167, %.fca.0.extract7
  %i.ai = sext i1 %i.ad to i64
  %.sroa.0.0.i = add i64 %i.ah, %i.ai             ; 2 uses
  %i.aj = icmp sgt i64 %.sroa.0.0.i, %.sroa.0.1.i.i6167
end_hunk_0
begin_hunk_1_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm:bb.a

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1
  store i8 %i.w, ptr %i.m, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.c
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.i, %bb.h, %bb.j, %bb.k
  store i64 %i.f, ptr %i.a, align 8
  %i.x = load ptr, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8                ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !12

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #17
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.f
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #20 ; 5 uses
  switch i64 %1, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1
  store i8 %i.t, ptr %i.s, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.i, %bb.h
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = load i8, ptr %3, align 1
  store i8 %i.x, ptr %i.w, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.l, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ac = load i8, ptr %i.ab, align 1
  store i8 %i.ac, ptr %i.z, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.o, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = load i64, ptr %i.h, align 8
  %i.af = add i64 %i.ae, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.af) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8
  store i64 %.0, ptr %i.h, align 8
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.modf.f64(double) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i128, i1 } @llvm.umul.with.overflow.i128(i128, i128) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { cold nounwind }
attributes #20 = { builtin nounwind allocsize(0) }
attributes #21 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_1
