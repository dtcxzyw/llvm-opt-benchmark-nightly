inline.NumInlined: 486
inline.NumDeleted: 144
begin_hunk_0_@_ZN18btQuantizedBvhTree17calc_quantizationER18GIM_BVH_DATA_ARRAYf:bb.a
  br label %.cont20

._crit_edge:                                      ; preds = %.cont20, %bb.a
  %3 = phi <4 x float> [ <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000>, %bb.a ], [ %17, %.cont20 ] ; 3 uses
  %i.f = phi <2 x float> [ splat (float 0x47EFFFFFE0000000), %bb.a ], [ %i.x, %.cont20 ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = insertelement <2 x float> poison, float %2, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.l = fsub <2 x float> %i.f, %i.k              ; 2 uses
  %4 = extractelement <4 x float> %3, i64 2
  %i.m = fsub float %4, %2                        ; 2 uses
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.m, i64 0
  store <2 x float> %i.l, ptr %i.g, align 8
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.44.0..sroa_idx.i, align 8, !tbaa !15
  %5 = shufflevector <4 x float> %3, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.n = fadd <2 x float> %i.k, %5                ; 2 uses
  %6 = extractelement <4 x float> %3, i64 1
  %i.o = fadd float %2, %6                        ; 2 uses
  %.sroa.3.12.vec.insert.i13.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.o, i64 0
  store <2 x float> %i.n, ptr %i.h, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
end_hunk_0
begin_hunk_1_@_ZN18btQuantizedBvhTree17calc_quantizationER18GIM_BVH_DATA_ARRAYf:bb.a

.cont20:                                          ; preds = %.lr.ph, %.cont20
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.cont20 ] ; 2 uses
  %7 = phi <4 x float> [ <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000>, %.lr.ph ], [ %17, %.cont20 ] ; 3 uses
  %i.t = phi <2 x float> [ splat (float 0x47EFFFFFE0000000), %.lr.ph ], [ %i.x, %.cont20 ] ; 2 uses
  %i.u = getelementptr inbounds nuw [36 x i8], ptr %i.e, i64 %indvars.iv ; 4 uses
  %i.v = load <2 x float>, ptr %i.u, align 4, !tbaa !16 ; 2 uses
  %i.w = fcmp ogt <2 x float> %i.t, %i.v
  %i.x = select <2 x i1> %i.w, <2 x float> %i.v, <2 x float> %i.t ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.z = load float, ptr %i.y, align 4, !tbaa !16
  %8 = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %10 = load float, ptr %9, align 4, !tbaa !16
  %i.aa = load <2 x float>, ptr %8, align 4, !tbaa !16
  %11 = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 0>
  %12 = insertelement <4 x float> %11, float %10, i64 1
  %13 = insertelement <4 x float> %12, float %i.z, i64 2 ; 3 uses
  %14 = fcmp olt <4 x float> %7, %13
  %15 = fcmp ogt <4 x float> %7, %13
  %16 = shufflevector <4 x i1> %14, <4 x i1> %15, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %17 = select <4 x i1> %16, <4 x float> %13, <4 x float> %7 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.cont20
end_hunk_1
