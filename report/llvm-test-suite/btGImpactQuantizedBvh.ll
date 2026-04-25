inline.NumInlined: 486
inline.NumDeleted: 144
begin_hunk_0_@_ZN18btQuantizedBvhTree15_build_sub_treeER18GIM_BVH_DATA_ARRAYii:bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 60
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %7 = load <2 x float>, ptr %i.bv, align 8, !tbaa !16
  %8 = load <2 x float>, ptr %i.bw, align 8, !tbaa !16
  %9 = load <2 x float>, ptr %i.bx, align 8, !tbaa !16
  %10 = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %11 = load <2 x float>, ptr %4, align 4, !tbaa !16 ; 4 uses
  %12 = load <2 x float>, ptr %5, align 4, !tbaa !16 ; 3 uses
  %13 = load <2 x float>, ptr %6, align 4, !tbaa !16 ; 2 uses
  %14 = shufflevector <2 x float> %7, <2 x float> %11, <4 x i32> <i32 0, i32 1, i32 3, i32 0> ; 3 uses
  %i.by = fcmp olt <4 x float> %i.bp, %14
  %i.bz = select <4 x i1> %i.by, <4 x float> %14, <4 x float> %i.bp ; 2 uses
  %15 = fcmp olt <2 x float> %i.bq, %11
  %16 = select <2 x i1> %15, <2 x float> %11, <2 x float> %i.bq ; 2 uses
  %17 = shufflevector <2 x float> %8, <2 x float> %12, <4 x i32> <i32 0, i32 1, i32 3, i32 0> ; 2 uses
  %18 = fcmp olt <4 x float> %17, %i.bz
  %19 = select <4 x i1> %18, <4 x float> %17, <4 x float> %i.bz
  %20 = fcmp olt <2 x float> %12, %16
  %21 = select <2 x i1> %20, <2 x float> %12, <2 x float> %16
  %22 = fsub <4 x float> %19, %14
  %23 = fsub <2 x float> %21, %11
  %24 = shufflevector <2 x float> %9, <2 x float> %13, <4 x i32> <i32 0, i32 1, i32 3, i32 0>
  %25 = fmul <4 x float> %24, %22
  %26 = fmul <2 x float> %13, %23
  %27 = fadd <4 x float> %25, splat (float 5.000000e-01)
  %28 = fptoui <4 x float> %27 to <4 x i16>
  store <4 x i16> %28, ptr %i.bu, align 2, !tbaa !31
  %i.ca = fadd <2 x float> %26, splat (float 5.000000e-01)
  %i.cb = fptoui <2 x float> %i.ca to <2 x i16>
  store <2 x i16> %i.cb, ptr %10, align 2, !tbaa !31
  tail call void @_ZN18btQuantizedBvhTree15_build_sub_treeER18GIM_BVH_DATA_ARRAYii(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef %2, i32 noundef %i.bj)
  tail call void @_ZN18btQuantizedBvhTree15_build_sub_treeER18GIM_BVH_DATA_ARRAYii(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef %i.bj, i32 noundef %3)
  %i.cc = load ptr, ptr %i.br, align 8, !tbaa !30
end_hunk_0
begin_hunk_1_@_ZN21btGImpactQuantizedBvh5refitEv:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.13.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_1
begin_hunk_2_@_ZN21btGImpactQuantizedBvh5refitEv:bb.a
bb.d:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds [16 x i8], ptr %i.l, i64 %indvars.iv ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %5 = load <2 x float>, ptr %i.d, align 8, !tbaa !16
  %6 = load <2 x float>, ptr %i.c, align 8, !tbaa !16
  %7 = load <4 x i16>, ptr %i.bj, align 2, !tbaa !31
  %8 = uitofp <4 x i16> %7 to <4 x float>
  %9 = load <2 x i16>, ptr %i.bk, align 2, !tbaa !31
  %10 = uitofp <2 x i16> %9 to <2 x float>
  %11 = load <2 x float>, ptr %2, align 4, !tbaa !16 ; 4 uses
  %12 = load <2 x float>, ptr %3, align 4, !tbaa !16 ; 6 uses
  %13 = shufflevector <2 x float> %5, <2 x float> %11, <4 x i32> <i32 0, i32 1, i32 3, i32 0> ; 3 uses
  %14 = fdiv <4 x float> %8, %13
  %15 = fdiv <2 x float> %10, %11
  %16 = shufflevector <2 x float> %6, <2 x float> %12, <4 x i32> <i32 0, i32 1, i32 3, i32 0> ; 5 uses
  %17 = fadd <4 x float> %16, %14                 ; 3 uses
  %18 = fadd <2 x float> %12, %15                 ; 2 uses
  %19 = fcmp olt <4 x float> %17, <float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000>
  %20 = fcmp ogt <4 x float> %17, <float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000>
  %21 = shufflevector <4 x i1> %19, <4 x i1> %20, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %22 = select <4 x i1> %21, <4 x float> %17, <4 x float> <float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000> ; 4 uses
  %i.bl = fcmp ogt <2 x float> %18, splat (float 0xC7EFFFFFE0000000)
  %i.bm = select <2 x i1> %i.bl, <2 x float> %18, <2 x float> splat (float 0xC7EFFFFFE0000000) ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !33 ; 2 uses
  %i.bp = icmp slt i32 %i.bo, 0
end_hunk_2
begin_hunk_3_@_ZN21btGImpactQuantizedBvh5refitEv:bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load <4 x i16>, ptr %i.bt, align 2, !tbaa !31
  %i.bw = uitofp <4 x i16> %i.bv to <4 x float>
  %i.bx = fdiv <4 x float> %i.bw, %13
  %i.by = fadd <4 x float> %16, %i.bx             ; 3 uses
  %i.bz = fcmp ogt <4 x float> %22, %i.by
  %i.ca = fcmp olt <4 x float> %22, %i.by
  %i.cb = shufflevector <4 x i1> %i.bz, <4 x i1> %i.ca, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.cc = select <4 x i1> %i.cb, <4 x float> %i.by, <4 x float> %22
  %i.cd = load <2 x i16>, ptr %i.bu, align 2, !tbaa !31
  %i.ce = uitofp <2 x i16> %i.cd to <2 x float>
  %i.cf = fdiv <2 x float> %i.ce, %11
  %i.cg = fadd <2 x float> %12, %i.cf             ; 2 uses
  %i.ch = fcmp olt <2 x float> %i.bm, %i.cg
  %i.ci = select <2 x i1> %i.ch, <2 x float> %i.cg, <2 x float> %i.bm
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cj = phi <4 x float> [ %22, %bb.d ], [ %i.cc, %bb.e ] ; 2 uses
  %i.ck = phi <2 x float> [ %i.bm, %bb.d ], [ %i.ci, %bb.e ] ; 2 uses
  %i.cl = fcmp olt <4 x float> %i.cj, %16
  %23 = fcmp olt <2 x float> %i.ck, %12
  %24 = load <2 x float>, ptr %i.g, align 8, !tbaa !16
  %i.cm = select <4 x i1> %i.cl, <4 x float> %16, <4 x float> %i.cj ; 2 uses
  %25 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %26 = select <2 x i1> %23, <2 x float> %12, <2 x float> %i.ck ; 2 uses
  %27 = load <2 x float>, ptr %4, align 4, !tbaa !16 ; 3 uses
  %28 = shufflevector <2 x float> %24, <2 x float> %27, <4 x i32> <i32 0, i32 1, i32 3, i32 0> ; 2 uses
  %29 = fcmp olt <4 x float> %28, %i.cm
  %30 = select <4 x i1> %29, <4 x float> %28, <4 x float> %i.cm
  %31 = fcmp olt <2 x float> %27, %26
  %32 = select <2 x i1> %31, <2 x float> %27, <2 x float> %26
  %33 = fsub <4 x float> %30, %16
  %34 = fsub <2 x float> %32, %12
  %35 = fmul <4 x float> %13, %33
  %36 = fmul <2 x float> %11, %34
  %37 = fadd <4 x float> %35, splat (float 5.000000e-01)
  %38 = fptoui <4 x float> %37 to <4 x i16>
  store <4 x i16> %38, ptr %i.m, align 2, !tbaa !31
  %i.cn = fadd <2 x float> %36, splat (float 5.000000e-01)
  %i.co = fptoui <2 x float> %i.cn to <2 x i16>
  store <2 x i16> %i.co, ptr %25, align 2, !tbaa !31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
end_hunk_3
