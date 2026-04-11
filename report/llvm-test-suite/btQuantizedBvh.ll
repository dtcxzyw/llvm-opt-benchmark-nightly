inline.NumInlined: 552
inline.NumDeleted: 106
begin_hunk_0_@_ZNK14btQuantizedBvh26reportAabbOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.13.0.copyload.i = load float, ptr %.sroa.13.0..sroa_idx.i, align 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4 = load float, ptr %i.g, align 8, !tbaa !40   ; 6 uses
  %5 = fcmp olt float %.sroa.13.0.copyload.i, %4
  %.sroa.13.0.i = select i1 %5, float %4, float %.sroa.13.0.copyload.i ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i10 = load float, ptr %i.i, align 8, !tbaa !40 ; 4 uses
  %6 = fcmp olt float %.sroa.0.0.copyload.i10, %.sroa.13.0.i
  %.sroa.13.1.i = select i1 %6, float %.sroa.0.0.copyload.i10, float %.sroa.13.0.i
  %7 = fsub float %.sroa.13.1.i, %4
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %10 = load float, ptr %9, align 8, !tbaa !40    ; 2 uses
  %11 = fmul float %7, %10
  %12 = fptoui float %11 to i16
  %13 = and i16 %12, -2                           ; 2 uses
  %i.j = load <2 x float>, ptr %2, align 4        ; 2 uses
  %i.k = load <2 x float>, ptr %i.f, align 8, !tbaa !40 ; 6 uses
  %14 = fcmp olt <2 x float> %i.j, %i.k
  %15 = select <2 x i1> %14, <2 x float> %i.k, <2 x float> %i.j ; 2 uses
  %16 = load <2 x float>, ptr %i.h, align 8, !tbaa !40 ; 4 uses
  %17 = fcmp olt <2 x float> %16, %15
  %18 = select <2 x i1> %17, <2 x float> %16, <2 x float> %15
  %19 = fsub <2 x float> %18, %i.k
  %20 = load <2 x float>, ptr %8, align 8, !tbaa !40 ; 2 uses
  %21 = fmul <2 x float> %19, %20
  %22 = fptoui <2 x float> %21 to <2 x i16>
  %23 = and <2 x i16> %22, splat (i16 -2)         ; 3 uses
  store <2 x i16> %23, ptr %i.a, align 4, !tbaa !50
  %24 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 %13, ptr %24, align 4, !tbaa !50
  %.sroa.13.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.13.0.copyload.i14 = load float, ptr %.sroa.13.0..sroa_idx.i13, align 4 ; 2 uses
  %25 = fcmp olt float %.sroa.13.0.copyload.i14, %4
  %.sroa.13.0.i17 = select i1 %25, float %4, float %.sroa.13.0.copyload.i14 ; 2 uses
  %26 = fcmp olt float %.sroa.0.0.copyload.i10, %.sroa.13.0.i17
  %.sroa.13.1.i20 = select i1 %26, float %.sroa.0.0.copyload.i10, float %.sroa.13.0.i17
  %27 = fsub float %.sroa.13.1.i20, %4
  %28 = fmul float %10, %27
  %29 = fadd float %28, 1.000000e+00
  %30 = fptoui float %29 to i16
  %31 = or i16 %30, 1                             ; 2 uses
  %32 = load <2 x float>, ptr %3, align 4         ; 2 uses
  %i.l = fcmp olt <2 x float> %32, %i.k
  %i.m = select <2 x i1> %i.l, <2 x float> %i.k, <2 x float> %32 ; 2 uses
  %i.n = fcmp olt <2 x float> %16, %i.m
  %i.o = select <2 x i1> %i.n, <2 x float> %16, <2 x float> %i.m
  %i.p = fsub <2 x float> %i.o, %i.k
  %i.q = fmul <2 x float> %20, %i.p
  %i.r = fadd <2 x float> %i.q, splat (float 1.000000e+00)
  %i.s = fptoui <2 x float> %i.r to <2 x i16>
  %i.t = or <2 x i16> %i.s, splat (i16 1)         ; 3 uses
  store <2 x i16> %i.t, ptr %i.b, align 4, !tbaa !50
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i16 %31, ptr %i.u, align 4, !tbaa !50
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.w = load i32, ptr %i.v, align 8, !tbaa !34
  switch i32 %i.w, label %_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii.exit [
end_hunk_0
begin_hunk_1_@_ZNK14btQuantizedBvh26reportAabbOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_:bb.a
.lr.ph.i:                                         ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !31
  %33 = extractelement <2 x i16> %23, i64 0
  %34 = extractelement <2 x i16> %23, i64 1
  %35 = extractelement <2 x i16> %i.t, i64 0
  %36 = extractelement <2 x i16> %i.t, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i
  %.037.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.h ] ; 2 uses
  %.03136.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ac, %bb.h ]
  %.03235.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %.133.i, %bb.h ] ; 9 uses
  %i.ac = add nuw nsw i32 %.03136.i, 1            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.03235.i, i64 6
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !50
  %37 = icmp ule i16 %33, %i.ae
  %i.af = load i16, ptr %.03235.i, align 2, !tbaa !50
  %38 = icmp uge i16 %35, %i.af
  %.not23.not32.i.i = and i1 %37, %38
  %39 = getelementptr inbounds nuw i8, ptr %.03235.i, i64 10
  %40 = load i16, ptr %39, align 2, !tbaa !50
  %41 = icmp ule i16 %13, %40
  %.not21.not29.i.i = and i1 %.not23.not32.i.i, %41
  %42 = getelementptr inbounds nuw i8, ptr %.03235.i, i64 4
  %43 = load i16, ptr %42, align 2, !tbaa !50
  %44 = icmp uge i16 %31, %43
  %.not18.not27.i.i = and i1 %.not21.not29.i.i, %44
  %i.ag = getelementptr inbounds nuw i8, ptr %.03235.i, i64 8
  %45 = load i16, ptr %i.ag, align 2, !tbaa !50
  %46 = icmp ule i16 %34, %45
  %.not16.not25.i.i = and i1 %.not18.not27.i.i, %46
  %47 = getelementptr inbounds nuw i8, ptr %.03235.i, i64 2
  %48 = load i16, ptr %47, align 2, !tbaa !50
  %49 = icmp uge i16 %36, %48
  %.not13.not.i.i = and i1 %.not16.not25.i.i, %49 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.03235.i, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !54 ; 5 uses
  %i.aj = icmp sgt i32 %i.ai, -1                  ; 2 uses
end_hunk_1
