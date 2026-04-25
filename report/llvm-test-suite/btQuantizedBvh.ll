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
  %.sroa.8.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = load float, ptr %6, align 8, !tbaa !40     ; 4 uses
  %8 = fcmp olt float %7, %.sroa.13.0.i
  %.sroa.13.1.i = select i1 %8, float %7, float %.sroa.13.0.i
  %9 = fsub float %.sroa.13.1.i, %4
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %12 = load float, ptr %11, align 8, !tbaa !40   ; 2 uses
  %13 = fmul float %9, %12
  %14 = fptoui float %13 to i16
  %15 = and i16 %14, -2                           ; 2 uses
  %16 = load <2 x float>, ptr %2, align 4         ; 2 uses
  %17 = load <2 x float>, ptr %i.f, align 8, !tbaa !40 ; 6 uses
  %18 = fcmp olt <2 x float> %16, %17
  %19 = select <2 x i1> %18, <2 x float> %17, <2 x float> %16 ; 2 uses
  %20 = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i11, align 8, !tbaa !40 ; 4 uses
  %21 = fcmp olt <2 x float> %20, %19
  %22 = select <2 x i1> %21, <2 x float> %20, <2 x float> %19
  %23 = fsub <2 x float> %22, %17
  %24 = load <2 x float>, ptr %10, align 8, !tbaa !40 ; 2 uses
  %25 = fmul <2 x float> %23, %24
  %26 = fptoui <2 x float> %25 to <2 x i16>
  %27 = and <2 x i16> %26, splat (i16 -2)         ; 3 uses
  store <2 x i16> %27, ptr %i.a, align 4, !tbaa !50
  %28 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 %15, ptr %28, align 4, !tbaa !50
  %.sroa.13.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.13.0.copyload.i14 = load float, ptr %.sroa.13.0..sroa_idx.i13, align 4 ; 2 uses
  %29 = fcmp olt float %.sroa.13.0.copyload.i14, %4
  %.sroa.13.0.i17 = select i1 %29, float %4, float %.sroa.13.0.copyload.i14 ; 2 uses
  %30 = fcmp olt float %7, %.sroa.13.0.i17
  %.sroa.13.1.i20 = select i1 %30, float %7, float %.sroa.13.0.i17
  %31 = fsub float %.sroa.13.1.i20, %4
  %32 = fmul float %12, %31
  %33 = fadd float %32, 1.000000e+00
  %34 = fptoui float %33 to i16
  %35 = or i16 %34, 1                             ; 2 uses
  %36 = load <2 x float>, ptr %3, align 4         ; 2 uses
  %i.h = fcmp olt <2 x float> %36, %17
  %i.i = select <2 x i1> %i.h, <2 x float> %17, <2 x float> %36 ; 2 uses
  %i.j = fcmp olt <2 x float> %20, %i.i
  %i.k = select <2 x i1> %i.j, <2 x float> %20, <2 x float> %i.i
  %i.l = fsub <2 x float> %i.k, %17
  %i.m = fmul <2 x float> %24, %i.l
  %i.n = fadd <2 x float> %i.m, splat (float 1.000000e+00)
  %i.o = fptoui <2 x float> %i.n to <2 x i16>
  %i.p = or <2 x i16> %i.o, splat (i16 1)         ; 3 uses
  store <2 x i16> %i.p, ptr %i.b, align 4, !tbaa !50
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i16 %35, ptr %i.q, align 4, !tbaa !50
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.s = load i32, ptr %i.r, align 8, !tbaa !34
  switch i32 %i.s, label %_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii.exit [
end_hunk_0
begin_hunk_1_@_ZNK14btQuantizedBvh26reportAabbOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_:bb.a
.lr.ph.i:                                         ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !31
  %37 = extractelement <2 x i16> %27, i64 0
  %38 = extractelement <2 x i16> %27, i64 1
  %39 = extractelement <2 x i16> %i.p, i64 0
  %40 = extractelement <2 x i16> %i.p, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i
  %.037.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.h ] ; 2 uses
  %.03136.i = phi i32 [ 0, %.lr.ph.i ], [ %i.y, %bb.h ]
  %.03235.i = phi ptr [ %i.x, %.lr.ph.i ], [ %.133.i, %bb.h ] ; 9 uses
  %i.y = add nuw nsw i32 %.03136.i, 1             ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.03235.i, i64 6
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !50
  %41 = icmp ule i16 %37, %i.aa
  %i.ab = load i16, ptr %.03235.i, align 2, !tbaa !50
  %42 = icmp uge i16 %39, %i.ab
  %.not23.not32.i.i = and i1 %41, %42
  %43 = getelementptr inbounds nuw i8, ptr %.03235.i, i64 10
  %44 = load i16, ptr %43, align 2, !tbaa !50
  %45 = icmp ule i16 %15, %44
  %.not21.not29.i.i = and i1 %.not23.not32.i.i, %45
  %46 = getelementptr inbounds nuw i8, ptr %.03235.i, i64 4
  %47 = load i16, ptr %46, align 2, !tbaa !50
  %48 = icmp uge i16 %35, %47
  %.not18.not27.i.i = and i1 %.not21.not29.i.i, %48
  %i.ac = getelementptr inbounds nuw i8, ptr %.03235.i, i64 8
  %49 = load i16, ptr %i.ac, align 2, !tbaa !50
  %50 = icmp ule i16 %38, %49
  %.not16.not25.i.i = and i1 %.not18.not27.i.i, %50
  %51 = getelementptr inbounds nuw i8, ptr %.03235.i, i64 2
  %52 = load i16, ptr %51, align 2, !tbaa !50
  %53 = icmp uge i16 %40, %52
  %.not13.not.i.i = and i1 %.not16.not25.i.i, %53 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.03235.i, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !54 ; 5 uses
  %i.af = icmp sgt i32 %i.ae, -1                  ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK14btQuantizedBvh36walkStacklessQuantizedTreeAgainstRayEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ii
define dso_local void @_ZNK14btQuantizedBvh36walkStacklessQuantizedTreeAgainstRayEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ii(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(244) %0, ptr noundef %1, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #6 align 2 {
_Z8btSetMinIfEvRT_RKS0_.exit.i:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !40 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load float, ptr %i.c, align 4, !tbaa !40 ; 5 uses
  %i.e = fsub float %i.b, %i.d                    ; 4 uses
  %i.f = load <2 x float>, ptr %3, align 4, !tbaa !40 ; 6 uses
  %i.g = load <2 x float>, ptr %2, align 4, !tbaa !40 ; 6 uses
  %i.h = fsub <2 x float> %i.f, %i.g              ; 5 uses
  %foldExtExtBinop208 = fmul <2 x float> %i.h, %i.h
  %i.i = extractelement <2 x float> %foldExtExtBinop208, i64 1
end_hunk_2
begin_hunk_3_@_ZNK14btQuantizedBvh36walkStacklessQuantizedTreeAgainstRayEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ii:_Z8btSetMinIfEvRT_RKS0_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !40
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = shufflevector <2 x float> %i.g, <2 x float> %i.f, <4 x i32> <i32 0, i32 poison, i32 1, i32 2>
  %i.am = insertelement <4 x float> %i.al, float %i.d, i64 1
end_hunk_3
begin_hunk_4_@_ZNK14btQuantizedBvh36walkStacklessQuantizedTreeAgainstRayEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ii:_Z8btSetMinIfEvRT_RKS0_.exit.i
  %i.ax = insertelement <4 x float> %i.aw, float %i.af, i64 1
  %i.ay = insertelement <4 x float> %i.ax, float %i.ab, i64 3
  %i.az = fadd <4 x float> %i.au, %i.ay           ; 2 uses
  %11 = load <2 x float>, ptr %i.ag, align 8, !tbaa !40
  %12 = load <2 x float>, ptr %i.ai, align 8, !tbaa !40
  %13 = load <2 x float>, ptr %i.aj, align 8, !tbaa !40
  %14 = fcmp olt float %i.b, %i.d
  %15 = fcmp olt <2 x float> %i.f, %i.g
  %16 = shufflevector <2 x i1> %15, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %17 = insertelement <2 x i1> %16, i1 %14, i64 1
  %18 = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %19 = insertelement <2 x float> %18, float %i.b, i64 1
  %20 = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %21 = insertelement <2 x float> %20, float %i.d, i64 1
  %22 = select <2 x i1> %17, <2 x float> %19, <2 x float> %21
  %23 = load <2 x float>, ptr %i.ac, align 4, !tbaa !40
  %24 = fadd <2 x float> %22, %23                 ; 2 uses
  %25 = load <2 x float>, ptr %8, align 4, !tbaa !40 ; 4 uses
  %26 = fcmp olt <2 x float> %24, %25
  %27 = select <2 x i1> %26, <2 x float> %25, <2 x float> %24 ; 2 uses
  %28 = load <2 x float>, ptr %9, align 4, !tbaa !40 ; 3 uses
  %i.ba = fcmp olt <2 x float> %28, %27
  %i.bb = select <2 x i1> %i.ba, <2 x float> %28, <2 x float> %27
  %29 = fsub <2 x float> %i.bb, %25
  %i.bc = load <2 x float>, ptr %10, align 4, !tbaa !40 ; 2 uses
  %30 = fmul <2 x float> %29, %i.bc
  %31 = fptoui <2 x float> %30 to <2 x i16>
  %32 = shufflevector <2 x float> %11, <2 x float> %25, <4 x i32> <i32 0, i32 3, i32 1, i32 0> ; 3 uses
  %33 = fcmp olt <4 x float> %i.az, %32
  %34 = select <4 x i1> %33, <4 x float> %32, <4 x float> %i.az ; 2 uses
  %35 = shufflevector <2 x float> %12, <2 x float> %28, <4 x i32> <i32 0, i32 3, i32 1, i32 0> ; 2 uses
  %36 = fcmp olt <4 x float> %35, %34
  %37 = select <4 x i1> %36, <4 x float> %35, <4 x float> %34
  %38 = fsub <4 x float> %37, %32
  %39 = shufflevector <2 x float> %13, <2 x float> %i.bc, <4 x i32> <i32 0, i32 3, i32 1, i32 0>
  %40 = fmul <4 x float> %38, %39
  %41 = fadd <4 x float> %40, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -0.000000e+00>
  %42 = fptoui <4 x float> %41 to <4 x i16>       ; 2 uses
  %i.bd = and <2 x i16> %31, splat (i16 -2)
  %i.be = or <4 x i16> %42, <i16 1, i16 1, i16 1, i16 poison>
  %i.bf = and <4 x i16> %42, <i16 poison, i16 poison, i16 poison, i16 -2>
  %i.bg = shufflevector <4 x i16> %i.be, <4 x i16> %i.bf, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.bh = icmp slt i32 %6, %7
  br i1 %i.bh, label %.lr.ph, label %._crit_edge
end_hunk_4
begin_hunk_5_@_ZNK14btQuantizedBvh36walkStacklessQuantizedTreeAgainstRayEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ii:_Z8btSetMinIfEvRT_RKS0_.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.049156, i64 4 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.049156, i64 8
  %i.br = load <2 x i16>, ptr %i.bq, align 2, !tbaa !50 ; 3 uses
  %i.bs = icmp ugt <2 x i16> %i.bd, %i.br         ; 2 uses
  %i.bt = load <2 x i16>, ptr %.049156, align 2, !tbaa !50 ; 2 uses
  %i.bu = load <2 x i16>, ptr %i.bp, align 2, !tbaa !50
  %i.bv = shufflevector <2 x i16> %i.bt, <2 x i16> %i.bu, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
end_hunk_5
begin_hunk_6_@_ZNK14btQuantizedBvh36walkStacklessQuantizedTreeAgainstRayEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ii:_Z8btSetMinIfEvRT_RKS0_.exit.i
  %i.by = shufflevector <4 x i1> %i.bw, <4 x i1> %i.bx, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.bz = bitcast <4 x i1> %i.by to i4
  %i.ca = icmp ne i4 %i.bz, 0
  %i.cb = extractelement <2 x i1> %i.bs, i64 1
  %op.rdx = or i1 %i.ca, %i.cb
  %i.cc = extractelement <2 x i1> %i.bs, i64 0
  %op.rdx206 = or i1 %op.rdx, %i.cc
  %i.cd = getelementptr inbounds nuw i8, ptr %.049156, i64 12
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !54 ; 5 uses
end_hunk_6
