inline.NumInlined: 552
inline.NumDeleted: 106
begin_hunk_0_@_ZNK14btQuantizedBvh26reportAabbOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.13.0.copyload.i = load float, ptr %.sroa.13.0..sroa_idx.i, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.0.0.copyload.i10 = load float, ptr %3, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %7 = load <2 x float>, ptr %2, align 4
  %8 = load <3 x float>, ptr %i.f, align 8, !tbaa !40 ; 3 uses
  %9 = shufflevector <3 x float> %8, <3 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 0> ; 3 uses
  %10 = load <3 x float>, ptr %4, align 8, !tbaa !40 ; 2 uses
  %11 = shufflevector <3 x float> %10, <3 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 0> ; 2 uses
  %12 = load <2 x float>, ptr %i.g, align 8, !tbaa !40
  %13 = shufflevector <2 x float> %7, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %14 = insertelement <4 x float> %13, float %.sroa.13.0.copyload.i, i64 1
  %15 = insertelement <4 x float> %14, float %.sroa.0.0.copyload.i10, i64 3 ; 2 uses
  %16 = fcmp olt <4 x float> %15, %9
  %17 = select <4 x i1> %16, <4 x float> %9, <4 x float> %15 ; 2 uses
  %18 = fcmp olt <4 x float> %11, %17
  %19 = select <4 x i1> %18, <4 x float> %11, <4 x float> %17
  %20 = shufflevector <3 x float> %8, <3 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %21 = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x float> %20, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %22 = fsub <4 x float> %19, %21                 ; 2 uses
  %23 = shufflevector <2 x float> %12, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 2 uses
  %24 = shufflevector <4 x float> %9, <4 x float> %23, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %25 = fsub <4 x float> %22, %24
  %26 = fmul <4 x float> %22, %24
  %27 = shufflevector <4 x float> %25, <4 x float> %26, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %28 = insertelement <4 x float> %23, float 1.000000e+00, i64 3
  %29 = load <2 x float>, ptr %i.h, align 4       ; 2 uses
  %30 = load <2 x float>, ptr %5, align 4, !tbaa !40 ; 2 uses
  %31 = shufflevector <2 x float> %30, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %32 = shufflevector <4 x float> %28, <4 x float> %31, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %33 = fmul <4 x float> %27, %32
  %34 = fadd <4 x float> %27, %32
  %35 = shufflevector <4 x float> %33, <4 x float> %34, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %36 = fptoui <4 x float> %35 to <4 x i16>       ; 2 uses
  %37 = and <4 x i16> %36, <i16 -2, i16 -2, i16 -2, i16 poison> ; 3 uses
  %38 = or <4 x i16> %36, <i16 poison, i16 poison, i16 poison, i16 1>
  %39 = shufflevector <4 x i16> %37, <4 x i16> %38, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 3 uses
  %40 = shufflevector <4 x i16> %37, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  store <2 x i16> %40, ptr %i.a, align 4, !tbaa !50
  %41 = extractelement <4 x i16> %37, i64 1
  store i16 %41, ptr %6, align 4, !tbaa !50
  %42 = shufflevector <3 x float> %8, <3 x float> poison, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.i = fcmp olt <2 x float> %29, %42
  %i.j = select <2 x i1> %i.i, <2 x float> %42, <2 x float> %29 ; 2 uses
  %43 = shufflevector <3 x float> %10, <3 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.k = fcmp olt <2 x float> %43, %i.j
  %i.l = select <2 x i1> %i.k, <2 x float> %43, <2 x float> %i.j
  %i.m = fsub <2 x float> %i.l, %42
  %i.n = fmul <2 x float> %30, %i.m
  %i.o = fadd <2 x float> %i.n, splat (float 1.000000e+00)
  %i.p = fptoui <2 x float> %i.o to <2 x i16>
  %i.q = or <2 x i16> %i.p, splat (i16 1)         ; 3 uses
  %44 = shufflevector <2 x i16> %i.q, <2 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %45 = shufflevector <4 x i16> %39, <4 x i16> %44, <2 x i32> <i32 3, i32 4>
  store <2 x i16> %45, ptr %i.b, align 4, !tbaa !50
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %46 = extractelement <2 x i16> %i.q, i64 1
  store i16 %46, ptr %i.r, align 4, !tbaa !50
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.t = load i32, ptr %i.s, align 8, !tbaa !34
  switch i32 %i.t, label %_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii.exit [
end_hunk_0
begin_hunk_1_@_ZNK14btQuantizedBvh26reportAabbOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_:bb.a
.lr.ph.i:                                         ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !31
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i
  %.037.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.h ] ; 2 uses
  %.03136.i = phi i32 [ 0, %.lr.ph.i ], [ %i.z, %bb.h ]
  %.03235.i = phi ptr [ %i.y, %.lr.ph.i ], [ %.133.i, %bb.h ] ; 7 uses
  %i.z = add nuw nsw i32 %.03136.i, 1             ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.03235.i, i64 6
  %i.ab = load i16, ptr %.03235.i, align 2, !tbaa !50
  %47 = getelementptr inbounds nuw i8, ptr %.03235.i, i64 10
  %i.ac = load i16, ptr %47, align 2, !tbaa !50
  %48 = load <2 x i16>, ptr %i.aa, align 2, !tbaa !50
  %49 = shufflevector <2 x i16> %48, <2 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %50 = insertelement <4 x i16> %49, i16 %i.ac, i64 1
  %51 = insertelement <4 x i16> %50, i16 %i.ab, i64 3 ; 2 uses
  %52 = icmp ule <4 x i16> %39, %51
  %53 = icmp uge <4 x i16> %39, %51
  %54 = shufflevector <4 x i1> %52, <4 x i1> %53, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %55 = bitcast <4 x i1> %54 to i4
  %56 = icmp eq i4 %55, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %.03235.i, i64 2
  %57 = load <2 x i16>, ptr %i.ad, align 2, !tbaa !50
  %58 = icmp uge <2 x i16> %i.q, %57              ; 2 uses
  %59 = extractelement <2 x i1> %58, i64 1
  %op.rdx = and i1 %56, %59
  %60 = extractelement <2 x i1> %58, i64 0
  %.not13.not.i.i = and i1 %op.rdx, %60           ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.03235.i, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !54 ; 5 uses
  %i.ag = icmp sgt i32 %i.af, -1                  ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK14btQuantizedBvh36walkStacklessQuantizedTreeAgainstRayEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ii
define dso_local void @_ZNK14btQuantizedBvh36walkStacklessQuantizedTreeAgainstRayEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ii(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(244) %0, ptr noundef %1, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #6 align 2 {
_Z8btSetMinIfEvRT_RKS0_.exit.i:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !40 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load float, ptr %i.c, align 4, !tbaa !40 ; 4 uses
  %i.e = fsub float %i.b, %i.d                    ; 4 uses
  %i.f = load <2 x float>, ptr %3, align 4, !tbaa !40 ; 5 uses
  %i.g = load <2 x float>, ptr %2, align 4, !tbaa !40 ; 5 uses
  %i.h = fsub <2 x float> %i.f, %i.g              ; 5 uses
  %foldExtExtBinop208 = fmul <2 x float> %i.h, %i.h
  %i.i = extractelement <2 x float> %foldExtExtBinop208, i64 1
end_hunk_2
begin_hunk_3_@_ZNK14btQuantizedBvh36walkStacklessQuantizedTreeAgainstRayEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ii:_Z8btSetMinIfEvRT_RKS0_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !40
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = shufflevector <2 x float> %i.g, <2 x float> %i.f, <4 x i32> <i32 0, i32 poison, i32 1, i32 2>
  %i.am = insertelement <4 x float> %i.al, float %i.d, i64 1
end_hunk_3
begin_hunk_4_@_ZNK14btQuantizedBvh36walkStacklessQuantizedTreeAgainstRayEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ii:_Z8btSetMinIfEvRT_RKS0_.exit.i
  %i.ax = insertelement <4 x float> %i.aw, float %i.af, i64 1
  %i.ay = insertelement <4 x float> %i.ax, float %i.ab, i64 3
  %i.az = fadd <4 x float> %i.au, %i.ay           ; 2 uses
  %8 = load <3 x float>, ptr %i.ag, align 8, !tbaa !40 ; 2 uses
  %9 = shufflevector <3 x float> %8, <3 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 0> ; 3 uses
  %10 = load <3 x float>, ptr %i.ai, align 8, !tbaa !40 ; 2 uses
  %11 = shufflevector <3 x float> %10, <3 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 0> ; 2 uses
  %12 = load <3 x float>, ptr %i.aj, align 8, !tbaa !40 ; 2 uses
  %13 = shufflevector <3 x float> %12, <3 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 0>
  %14 = fcmp olt <4 x float> %i.az, %9
  %15 = select <4 x i1> %14, <4 x float> %9, <4 x float> %i.az ; 2 uses
  %16 = fcmp olt <4 x float> %11, %15
  %17 = select <4 x i1> %16, <4 x float> %11, <4 x float> %15
  %18 = fsub <4 x float> %17, %9
  %19 = fmul <4 x float> %18, %13
  %20 = fadd <4 x float> %19, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -0.000000e+00>
  %21 = fptoui <4 x float> %20 to <4 x i16>       ; 2 uses
  %22 = insertelement <2 x float> %i.f, float %i.b, i64 0 ; 2 uses
  %23 = insertelement <2 x float> %i.g, float %i.d, i64 0 ; 2 uses
  %i.ba = fcmp olt <2 x float> %22, %23
  %i.bb = select <2 x i1> %i.ba, <2 x float> %22, <2 x float> %23
  %i.bc = load <2 x float>, ptr %i.ac, align 4, !tbaa !40
  %24 = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %25 = fadd <2 x float> %i.bb, %24               ; 2 uses
  %26 = shufflevector <3 x float> %8, <3 x float> poison, <2 x i32> <i32 2, i32 1> ; 3 uses
  %27 = fcmp olt <2 x float> %25, %26
  %28 = select <2 x i1> %27, <2 x float> %26, <2 x float> %25 ; 2 uses
  %29 = shufflevector <3 x float> %10, <3 x float> poison, <2 x i32> <i32 2, i32 1> ; 2 uses
  %30 = fcmp olt <2 x float> %29, %28
  %31 = select <2 x i1> %30, <2 x float> %29, <2 x float> %28
  %32 = fsub <2 x float> %31, %26
  %33 = shufflevector <3 x float> %12, <3 x float> poison, <2 x i32> <i32 2, i32 1>
  %34 = fmul <2 x float> %32, %33
  %35 = fptoui <2 x float> %34 to <2 x i16>
  %i.bd = and <2 x i16> %35, splat (i16 -2)
  %i.be = or <4 x i16> %21, <i16 1, i16 1, i16 1, i16 poison>
  %i.bf = and <4 x i16> %21, <i16 poison, i16 poison, i16 poison, i16 -2>
  %i.bg = shufflevector <4 x i16> %i.be, <4 x i16> %i.bf, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.bh = icmp slt i32 %6, %7
  br i1 %i.bh, label %.lr.ph, label %._crit_edge
end_hunk_4
begin_hunk_5_@_ZNK14btQuantizedBvh36walkStacklessQuantizedTreeAgainstRayEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ii:_Z8btSetMinIfEvRT_RKS0_.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.049156, i64 4 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.049156, i64 8
  %i.br = load <2 x i16>, ptr %i.bq, align 2, !tbaa !50 ; 3 uses
  %36 = shufflevector <2 x i16> %i.br, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  %i.bs = icmp ugt <2 x i16> %i.bd, %36           ; 2 uses
  %i.bt = load <2 x i16>, ptr %.049156, align 2, !tbaa !50 ; 2 uses
  %i.bu = load <2 x i16>, ptr %i.bp, align 2, !tbaa !50
  %i.bv = shufflevector <2 x i16> %i.bt, <2 x i16> %i.bu, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
end_hunk_5
begin_hunk_6_@_ZNK14btQuantizedBvh36walkStacklessQuantizedTreeAgainstRayEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ii:_Z8btSetMinIfEvRT_RKS0_.exit.i
  %i.by = shufflevector <4 x i1> %i.bw, <4 x i1> %i.bx, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.bz = bitcast <4 x i1> %i.by to i4
  %i.ca = icmp ne i4 %i.bz, 0
  %i.cb = extractelement <2 x i1> %i.bs, i64 0
  %op.rdx = or i1 %i.ca, %i.cb
  %i.cc = extractelement <2 x i1> %i.bs, i64 1
  %op.rdx206 = or i1 %op.rdx, %i.cc
  %i.cd = getelementptr inbounds nuw i8, ptr %.049156, i64 12
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !54 ; 5 uses
end_hunk_6
