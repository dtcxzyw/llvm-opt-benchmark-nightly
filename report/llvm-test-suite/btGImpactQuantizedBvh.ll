inline.NumInlined: 486
inline.NumDeleted: 144
begin_hunk_0_@_ZN18btQuantizedBvhTree17calc_quantizationER18GIM_BVH_DATA_ARRAYf:bb.a
  br label %.cont20

._crit_edge:                                      ; preds = %.cont20, %bb.a
  %.sroa.1616.0.lcssa = phi float [ 0xC7EFFFFFE0000000, %bb.a ], [ %21, %.cont20 ]
  %.sroa.0.0.lcssa = phi float [ 0x47EFFFFFE0000000, %bb.a ], [ %18, %.cont20 ]
  %3 = phi <4 x float> [ <float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000>, %bb.a ], [ %i.t, %.cont20 ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %4 = extractelement <4 x float> %3, i64 1
  %5 = fsub float %4, %2                          ; 2 uses
  %i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %5, i64 0
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> %i.i, ptr %.sroa.44.0..sroa_idx.i, align 8, !tbaa !15
  %i.j = extractelement <4 x float> %3, i64 3
  %6 = fadd float %2, %i.j                        ; 2 uses
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %6, i64 0
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !tbaa !15
  %7 = fsub float %6, %5
  %8 = shufflevector <4 x float> %3, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %9 = insertelement <2 x float> %8, float %.sroa.0.0.lcssa, i64 0
  %10 = insertelement <2 x float> poison, float %2, i64 0
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %12 = fsub <2 x float> %9, %11                  ; 2 uses
  store <2 x float> %12, ptr %i.f, align 8
  %13 = shufflevector <4 x float> %3, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %14 = insertelement <2 x float> %13, float %.sroa.1616.0.lcssa, i64 0
  %i.k = fadd <2 x float> %11, %14                ; 2 uses
  store <2 x float> %i.k, ptr %i.g, align 8
  %i.l = fsub <2 x float> %i.k, %12
  %i.m = fdiv <2 x float> splat (float 6.553500e+04), %i.l
  %i.n = fdiv float 6.553500e+04, %7
  %.sroa.3.12.vec.insert.i23.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.n, i64 0
  store <2 x float> %i.m, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80
end_hunk_0
begin_hunk_1_@_ZN18btQuantizedBvhTree17calc_quantizationER18GIM_BVH_DATA_ARRAYf:bb.a

.cont20:                                          ; preds = %.lr.ph, %.cont20
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.cont20 ] ; 2 uses
  %.sroa.0.032 = phi float [ 0x47EFFFFFE0000000, %.lr.ph ], [ %18, %.cont20 ] ; 2 uses
  %.sroa.1616.031 = phi float [ 0xC7EFFFFFE0000000, %.lr.ph ], [ %21, %.cont20 ] ; 2 uses
  %i.o = phi <4 x float> [ <float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000>, %.lr.ph ], [ %i.t, %.cont20 ] ; 3 uses
  %15 = getelementptr inbounds nuw [36 x i8], ptr %i.e, i64 %indvars.iv ; 4 uses
  %16 = load float, ptr %15, align 4, !tbaa !16   ; 2 uses
  %17 = fcmp ogt float %.sroa.0.032, %16
  %18 = select i1 %17, float %16, float %.sroa.0.032 ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.q = load float, ptr %i.p, align 4, !tbaa !16 ; 2 uses
  %20 = fcmp olt float %.sroa.1616.031, %i.q
  %21 = select i1 %20, float %i.q, float %.sroa.1616.031 ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %15, i64 20
  %i.r = load <2 x float>, ptr %19, align 4, !tbaa !16
  %23 = load <2 x float>, ptr %22, align 4, !tbaa !16
  %24 = shufflevector <2 x float> %i.r, <2 x float> %23, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 3 uses
  %25 = fcmp ogt <4 x float> %i.o, %24
  %i.s = fcmp olt <4 x float> %i.o, %24
  %26 = shufflevector <4 x i1> %25, <4 x i1> %i.s, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.t = select <4 x i1> %26, <4 x float> %24, <4 x float> %i.o ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.cont20
end_hunk_1
begin_hunk_2_@_ZN18btQuantizedBvhTree10build_treeER18GIM_BVH_DATA_ARRAY:bb.a

.cont20.i:                                        ; preds = %.cont20.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.cont20.i ] ; 2 uses
  %.sroa.0.032.i = phi float [ 0x47EFFFFFE0000000, %.lr.ph.i ], [ %5, %.cont20.i ] ; 2 uses
  %.sroa.1616.031.i = phi float [ 0xC7EFFFFFE0000000, %.lr.ph.i ], [ %8, %.cont20.i ] ; 2 uses
  %i.f = phi <4 x float> [ <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000>, %.lr.ph.i ], [ %i.k, %.cont20.i ] ; 3 uses
  %2 = getelementptr inbounds nuw [36 x i8], ptr %i.e, i64 %indvars.iv.i ; 4 uses
  %3 = load float, ptr %2, align 4, !tbaa !16     ; 2 uses
  %4 = fcmp ogt float %.sroa.0.032.i, %3
  %5 = select i1 %4, float %3, float %.sroa.0.032.i ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load float, ptr %i.g, align 4, !tbaa !16 ; 2 uses
  %7 = fcmp olt float %.sroa.1616.031.i, %i.h
  %8 = select i1 %7, float %i.h, float %.sroa.1616.031.i ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.i = load <2 x float>, ptr %6, align 4, !tbaa !16
  %10 = load <2 x float>, ptr %9, align 4, !tbaa !16
  %11 = shufflevector <2 x float> %10, <2 x float> %i.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 3 uses
  %12 = fcmp ogt <4 x float> %i.f, %11
  %i.j = fcmp olt <4 x float> %i.f, %11
  %13 = shufflevector <4 x i1> %i.j, <4 x i1> %12, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.k = select <4 x i1> %13, <4 x float> %11, <4 x float> %i.f ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN18btQuantizedBvhTree17calc_quantizationER18GIM_BVH_DATA_ARRAYf.exit.loopexit, label %.cont20.i

_ZN18btQuantizedBvhTree17calc_quantizationER18GIM_BVH_DATA_ARRAYf.exit.loopexit: ; preds = %.cont20.i
  %14 = fadd float %5, -1.000000e+00
  %15 = fadd float %8, 1.000000e+00
  %i.l = fadd <4 x float> %i.k, <float 1.000000e+00, float 1.000000e+00, float -1.000000e+00, float -1.000000e+00>
  br label %_ZN18btQuantizedBvhTree17calc_quantizationER18GIM_BVH_DATA_ARRAYf.exit

_ZN18btQuantizedBvhTree17calc_quantizationER18GIM_BVH_DATA_ARRAYf.exit: ; preds = %_ZN18btQuantizedBvhTree17calc_quantizationER18GIM_BVH_DATA_ARRAYf.exit.loopexit, %bb.a
  %.sroa.1616.0.lcssa.i = phi float [ 0xC7EFFFFFE0000000, %bb.a ], [ %15, %_ZN18btQuantizedBvhTree17calc_quantizationER18GIM_BVH_DATA_ARRAYf.exit.loopexit ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi float [ 0x47EFFFFFE0000000, %bb.a ], [ %14, %_ZN18btQuantizedBvhTree17calc_quantizationER18GIM_BVH_DATA_ARRAYf.exit.loopexit ] ; 2 uses
  %16 = phi <4 x float> [ <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000>, %bb.a ], [ %i.l, %_ZN18btQuantizedBvhTree17calc_quantizationER18GIM_BVH_DATA_ARRAYf.exit.loopexit ] ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %17 = shufflevector <4 x float> %16, <4 x float> poison, <2 x i32> <i32 3, i32 2> ; 3 uses
  %18 = insertelement <2 x float> %17, float %.sroa.0.0.lcssa.i, i64 0
  %i.p = insertelement <2 x float> %17, float 0.000000e+00, i64 1
  store <2 x float> %18, ptr %i.m, align 8
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> %i.p, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !tbaa !15
  %19 = insertelement <4 x float> poison, float %.sroa.1616.0.lcssa.i, i64 0
  %20 = shufflevector <4 x float> %19, <4 x float> %16, <2 x i32> <i32 0, i32 4>
  %21 = shufflevector <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x float> %16, <2 x i32> <i32 5, i32 1>
  store <2 x float> %20, ptr %i.n, align 8
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x float> %21, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !15
  %shift = shufflevector <4 x float> %16, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop = fsub <4 x float> %16, %shift
  %i.q = extractelement <4 x float> %foldExtExtBinop, i64 1
  %22 = shufflevector <4 x float> %16, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %23 = insertelement <2 x float> %22, float %.sroa.1616.0.lcssa.i, i64 0
  %24 = insertelement <2 x float> %17, float %.sroa.0.0.lcssa.i, i64 0
  %i.r = fsub <2 x float> %23, %24
  %i.s = fdiv <2 x float> splat (float 6.553500e+04), %i.r
  %i.t = fdiv float 6.553500e+04, %i.q
  %.sroa.3.12.vec.insert.i23.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.t, i64 0
end_hunk_2
