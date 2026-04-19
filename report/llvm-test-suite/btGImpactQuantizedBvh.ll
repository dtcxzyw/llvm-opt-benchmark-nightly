inline.NumInlined: 486
inline.NumDeleted: 144
begin_hunk_0_@_ZN18btQuantizedBvhTree17calc_quantizationER18GIM_BVH_DATA_ARRAYf:bb.a
  br label %.cont20

._crit_edge:                                      ; preds = %.cont20, %bb.a
  %3 = phi <4 x float> [ <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000>, %bb.a ], [ %i.t, %.cont20 ] ; 3 uses
  %4 = phi <2 x float> [ splat (float 0x47EFFFFFE0000000), %bb.a ], [ %16, %.cont20 ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = insertelement <2 x float> poison, float %2, i64 0
  %5 = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %6 = fsub <2 x float> %4, %5                    ; 2 uses
  %i.j = extractelement <4 x float> %3, i64 2
  %7 = fsub float %i.j, %2                        ; 2 uses
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %7, i64 0
  store <2 x float> %6, ptr %i.f, align 8
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.44.0..sroa_idx.i, align 8, !tbaa !15
  %8 = extractelement <4 x float> %3, i64 1
  %9 = fadd float %2, %8                          ; 2 uses
  %.sroa.3.12.vec.insert.i13.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %9, i64 0
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x float> %.sroa.3.12.vec.insert.i13.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !tbaa !15
  %10 = fsub float %9, %7
  %11 = shufflevector <4 x float> %3, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.k = fadd <2 x float> %5, %11                 ; 2 uses
  store <2 x float> %i.k, ptr %i.g, align 8
  %i.l = fsub <2 x float> %i.k, %6
  %i.m = fdiv <2 x float> splat (float 6.553500e+04), %i.l
  %i.n = fdiv float 6.553500e+04, %10
  %.sroa.3.12.vec.insert.i23.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.n, i64 0
  store <2 x float> %i.m, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80
end_hunk_0
begin_hunk_1_@_ZN18btQuantizedBvhTree17calc_quantizationER18GIM_BVH_DATA_ARRAYf:bb.a

.cont20:                                          ; preds = %.lr.ph, %.cont20
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.cont20 ] ; 2 uses
  %i.o = phi <4 x float> [ <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000>, %.lr.ph ], [ %i.t, %.cont20 ] ; 3 uses
  %12 = phi <2 x float> [ splat (float 0x47EFFFFFE0000000), %.lr.ph ], [ %16, %.cont20 ] ; 2 uses
  %13 = getelementptr inbounds nuw [36 x i8], ptr %i.e, i64 %indvars.iv ; 4 uses
  %14 = load <2 x float>, ptr %13, align 4, !tbaa !16 ; 2 uses
  %15 = fcmp ogt <2 x float> %12, %14
  %16 = select <2 x i1> %15, <2 x float> %14, <2 x float> %12 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.q = load float, ptr %i.p, align 4, !tbaa !16
  %17 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %18 = getelementptr inbounds nuw i8, ptr %13, i64 24
  %19 = load float, ptr %18, align 4, !tbaa !16
  %i.r = load <2 x float>, ptr %17, align 4, !tbaa !16
  %20 = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 0>
  %21 = insertelement <4 x float> %20, float %19, i64 1
  %22 = insertelement <4 x float> %21, float %i.q, i64 2 ; 3 uses
  %i.s = fcmp olt <4 x float> %i.o, %22
  %23 = fcmp ogt <4 x float> %i.o, %22
  %24 = shufflevector <4 x i1> %i.s, <4 x i1> %23, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.t = select <4 x i1> %24, <4 x float> %22, <4 x float> %i.o ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.cont20
end_hunk_1
begin_hunk_2_@_ZN18btQuantizedBvhTree10build_treeER18GIM_BVH_DATA_ARRAY:bb.a

.cont20.i:                                        ; preds = %.cont20.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.cont20.i ] ; 2 uses
  %i.f = phi <4 x float> [ <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000>, %.lr.ph.i ], [ %i.k, %.cont20.i ] ; 3 uses
  %2 = phi <2 x float> [ splat (float 0x47EFFFFFE0000000), %.lr.ph.i ], [ %6, %.cont20.i ] ; 2 uses
  %3 = getelementptr inbounds nuw [36 x i8], ptr %i.e, i64 %indvars.iv.i ; 4 uses
  %4 = load <2 x float>, ptr %3, align 4, !tbaa !16 ; 2 uses
  %5 = fcmp ogt <2 x float> %2, %4
  %6 = select <2 x i1> %5, <2 x float> %4, <2 x float> %2 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !16
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %9 = load float, ptr %8, align 4, !tbaa !16
  %i.i = load <2 x float>, ptr %7, align 4, !tbaa !16
  %10 = shufflevector <2 x float> %i.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %11 = insertelement <4 x float> %10, float %9, i64 2
  %12 = insertelement <4 x float> %11, float %i.h, i64 3 ; 3 uses
  %i.j = fcmp olt <4 x float> %i.f, %12
  %13 = fcmp ogt <4 x float> %i.f, %12
  %14 = shufflevector <4 x i1> %i.j, <4 x i1> %13, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.k = select <4 x i1> %14, <4 x float> %12, <4 x float> %i.f ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN18btQuantizedBvhTree17calc_quantizationER18GIM_BVH_DATA_ARRAYf.exit.loopexit, label %.cont20.i

_ZN18btQuantizedBvhTree17calc_quantizationER18GIM_BVH_DATA_ARRAYf.exit.loopexit: ; preds = %.cont20.i
  %15 = fadd <2 x float> %6, splat (float -1.000000e+00)
  %i.l = fadd <4 x float> %i.k, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -1.000000e+00>
  br label %_ZN18btQuantizedBvhTree17calc_quantizationER18GIM_BVH_DATA_ARRAYf.exit

_ZN18btQuantizedBvhTree17calc_quantizationER18GIM_BVH_DATA_ARRAYf.exit: ; preds = %_ZN18btQuantizedBvhTree17calc_quantizationER18GIM_BVH_DATA_ARRAYf.exit.loopexit, %bb.a
  %16 = phi <4 x float> [ <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000>, %bb.a ], [ %i.l, %_ZN18btQuantizedBvhTree17calc_quantizationER18GIM_BVH_DATA_ARRAYf.exit.loopexit ] ; 5 uses
  %17 = phi <2 x float> [ splat (float 0x47EFFFFFE0000000), %bb.a ], [ %15, %_ZN18btQuantizedBvhTree17calc_quantizationER18GIM_BVH_DATA_ARRAYf.exit.loopexit ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %18 = shufflevector <4 x float> %16, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.p = insertelement <2 x float> %18, float 0.000000e+00, i64 1
  store <2 x float> %17, ptr %i.m, align 8
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> %i.p, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !tbaa !15
  %19 = shufflevector <4 x float> %16, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %20 = shufflevector <4 x float> %16, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %21 = insertelement <2 x float> %20, float 0.000000e+00, i64 1
  store <2 x float> %19, ptr %i.n, align 8
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x float> %21, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !15
  %shift = shufflevector <4 x float> %16, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop = fsub <4 x float> %16, %shift
  %i.q = extractelement <4 x float> %foldExtExtBinop, i64 2
  %i.r = fsub <2 x float> %19, %17
  %i.s = fdiv <2 x float> splat (float 6.553500e+04), %i.r
  %i.t = fdiv float 6.553500e+04, %i.q
  %.sroa.3.12.vec.insert.i23.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.t, i64 0
end_hunk_2
