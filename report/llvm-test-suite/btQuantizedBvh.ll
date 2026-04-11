inline.NumInlined: 552
inline.NumDeleted: 106
begin_hunk_0_@_ZNK14btQuantizedBvh26reportAabbOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.13.0.copyload.i = load float, ptr %.sroa.13.0..sroa_idx.i, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.0.0.copyload.i10 = load float, ptr %3, align 4
  %.sroa.8.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %7 = load <2 x float>, ptr %2, align 4
  %8 = load <2 x float>, ptr %i.f, align 8, !tbaa !40 ; 2 uses
  %9 = load <2 x float>, ptr %4, align 8, !tbaa !40
  %10 = load <2 x float>, ptr %6, align 8, !tbaa !40
  %11 = shufflevector <2 x float> %7, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %12 = insertelement <4 x float> %11, float %.sroa.13.0.copyload.i, i64 1
  %13 = insertelement <4 x float> %12, float %.sroa.0.0.copyload.i10, i64 3 ; 2 uses
  %14 = shufflevector <2 x float> %8, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %15 = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x float> %14, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %16 = shufflevector <2 x float> %10, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 2 uses
  %17 = insertelement <4 x float> %16, float 1.000000e+00, i64 3
  %18 = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i11, align 4 ; 2 uses
  %i.j = load <2 x float>, ptr %i.g, align 4, !tbaa !40 ; 4 uses
  %i.k = load <2 x float>, ptr %5, align 4, !tbaa !40 ; 3 uses
  %19 = load <2 x float>, ptr %i.h, align 4, !tbaa !40 ; 2 uses
  %20 = shufflevector <2 x float> %8, <2 x float> %i.j, <4 x i32> <i32 0, i32 3, i32 1, i32 0> ; 3 uses
  %21 = fcmp olt <4 x float> %13, %20
  %22 = select <4 x i1> %21, <4 x float> %20, <4 x float> %13 ; 2 uses
  %23 = shufflevector <2 x float> %9, <2 x float> %i.k, <4 x i32> <i32 0, i32 3, i32 1, i32 0> ; 2 uses
  %24 = fcmp olt <4 x float> %23, %22
  %25 = select <4 x i1> %24, <4 x float> %23, <4 x float> %22
  %26 = fsub <4 x float> %25, %15                 ; 2 uses
  %27 = shufflevector <4 x float> %20, <4 x float> %16, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %28 = fsub <4 x float> %26, %27
  %29 = fmul <4 x float> %26, %27
  %30 = shufflevector <4 x float> %28, <4 x float> %29, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %31 = shufflevector <2 x float> %19, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %32 = shufflevector <4 x float> %17, <4 x float> %31, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %33 = fmul <4 x float> %30, %32
  %34 = fadd <4 x float> %30, %32
  %35 = shufflevector <4 x float> %33, <4 x float> %34, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %36 = fptoui <4 x float> %35 to <4 x i16>       ; 2 uses
  %37 = and <4 x i16> %36, <i16 -2, i16 -2, i16 -2, i16 poison> ; 3 uses
  %38 = or <4 x i16> %36, <i16 poison, i16 poison, i16 poison, i16 1>
  %39 = shufflevector <4 x i16> %37, <4 x i16> %38, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 3 uses
  %40 = shufflevector <4 x i16> %37, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  store <2 x i16> %40, ptr %i.a, align 4, !tbaa !50
  %41 = extractelement <4 x i16> %37, i64 1
  store i16 %41, ptr %i.i, align 4, !tbaa !50
  %i.l = fcmp olt <2 x float> %18, %i.j
  %i.m = select <2 x i1> %i.l, <2 x float> %i.j, <2 x float> %18 ; 2 uses
  %i.n = fcmp olt <2 x float> %i.k, %i.m
  %i.o = select <2 x i1> %i.n, <2 x float> %i.k, <2 x float> %i.m
  %i.p = fsub <2 x float> %i.o, %i.j
  %i.q = fmul <2 x float> %19, %i.p
  %i.r = fadd <2 x float> %i.q, splat (float 1.000000e+00)
  %i.s = fptoui <2 x float> %i.r to <2 x i16>
  %i.t = or <2 x i16> %i.s, splat (i16 1)         ; 3 uses
  %42 = shufflevector <2 x i16> %i.t, <2 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %43 = shufflevector <4 x i16> %39, <4 x i16> %42, <2 x i32> <i32 3, i32 4>
  store <2 x i16> %43, ptr %i.b, align 4, !tbaa !50
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %44 = extractelement <2 x i16> %i.t, i64 1
  store i16 %44, ptr %i.u, align 4, !tbaa !50
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.w = load i32, ptr %i.v, align 8, !tbaa !34
  switch i32 %i.w, label %_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii.exit [
end_hunk_0
begin_hunk_1_@_ZNK14btQuantizedBvh26reportAabbOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_:bb.a
.lr.ph.i:                                         ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !31
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i
  %.037.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.h ] ; 2 uses
  %.03136.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ac, %bb.h ]
  %.03235.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %.133.i, %bb.h ] ; 7 uses
  %i.ac = add nuw nsw i32 %.03136.i, 1            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.03235.i, i64 6
  %i.ae = load i16, ptr %.03235.i, align 2, !tbaa !50
  %45 = getelementptr inbounds nuw i8, ptr %.03235.i, i64 10
  %i.af = load i16, ptr %45, align 2, !tbaa !50
  %46 = load <2 x i16>, ptr %i.ad, align 2, !tbaa !50
  %47 = shufflevector <2 x i16> %46, <2 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %48 = insertelement <4 x i16> %47, i16 %i.af, i64 1
  %49 = insertelement <4 x i16> %48, i16 %i.ae, i64 3 ; 2 uses
  %50 = icmp ule <4 x i16> %39, %49
  %51 = icmp uge <4 x i16> %39, %49
  %52 = shufflevector <4 x i1> %50, <4 x i1> %51, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %53 = bitcast <4 x i1> %52 to i4
  %54 = icmp eq i4 %53, -1
  %i.ag = getelementptr inbounds nuw i8, ptr %.03235.i, i64 2
  %55 = load <2 x i16>, ptr %i.ag, align 2, !tbaa !50
  %56 = icmp uge <2 x i16> %i.t, %55              ; 2 uses
  %57 = extractelement <2 x i1> %56, i64 1
  %op.rdx = and i1 %54, %57
  %58 = extractelement <2 x i1> %56, i64 0
  %.not13.not.i.i = and i1 %op.rdx, %58           ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.03235.i, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !54 ; 5 uses
  %i.aj = icmp sgt i32 %i.ai, -1                  ; 2 uses
end_hunk_1
