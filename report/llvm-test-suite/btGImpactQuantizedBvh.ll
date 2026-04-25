inline.NumInlined: 486
inline.NumDeleted: 144
begin_hunk_0_@_ZN18btQuantizedBvhTree15_build_sub_treeER18GIM_BVH_DATA_ARRAYii:bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %4 = load <3 x float>, ptr %i.bv, align 8, !tbaa !16 ; 2 uses
  %5 = shufflevector <3 x float> %4, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 3 uses
  %6 = load <3 x float>, ptr %i.bw, align 8, !tbaa !16 ; 2 uses
  %7 = shufflevector <3 x float> %6, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %8 = load <3 x float>, ptr %i.bx, align 8, !tbaa !16 ; 2 uses
  %9 = shufflevector <3 x float> %8, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %10 = fcmp olt <4 x float> %i.bp, %5
  %11 = select <4 x i1> %10, <4 x float> %5, <4 x float> %i.bp ; 2 uses
  %i.by = fcmp olt <4 x float> %7, %11
  %i.bz = select <4 x i1> %i.by, <4 x float> %7, <4 x float> %11
  %12 = fsub <4 x float> %i.bz, %5
  %13 = fmul <4 x float> %9, %12
  %14 = fadd <4 x float> %13, splat (float 5.000000e-01)
  %15 = fptoui <4 x float> %14 to <4 x i16>
  store <4 x i16> %15, ptr %i.bu, align 2, !tbaa !31
  %16 = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %17 = shufflevector <3 x float> %4, <3 x float> poison, <2 x i32> <i32 1, i32 2> ; 3 uses
  %18 = fcmp olt <2 x float> %i.bq, %17
  %19 = select <2 x i1> %18, <2 x float> %17, <2 x float> %i.bq ; 2 uses
  %20 = shufflevector <3 x float> %6, <3 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %21 = fcmp olt <2 x float> %20, %19
  %22 = select <2 x i1> %21, <2 x float> %20, <2 x float> %19
  %23 = fsub <2 x float> %22, %17
  %24 = shufflevector <3 x float> %8, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %25 = fmul <2 x float> %24, %23
  %i.ca = fadd <2 x float> %25, splat (float 5.000000e-01)
  %i.cb = fptoui <2 x float> %i.ca to <2 x i16>
  store <2 x i16> %i.cb, ptr %16, align 2, !tbaa !31
  tail call void @_ZN18btQuantizedBvhTree15_build_sub_treeER18GIM_BVH_DATA_ARRAYii(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef %2, i32 noundef %i.bj)
  tail call void @_ZN18btQuantizedBvhTree15_build_sub_treeER18GIM_BVH_DATA_ARRAYii(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef %i.bj, i32 noundef %3)
  %i.cc = load ptr, ptr %i.br, align 8, !tbaa !30
end_hunk_0
begin_hunk_1_@_ZN21btGImpactQuantizedBvh5refitEv:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.13.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_1
begin_hunk_2_@_ZN21btGImpactQuantizedBvh5refitEv:bb.a
bb.d:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds [16 x i8], ptr %i.l, i64 %indvars.iv ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %2 = load <3 x float>, ptr %i.d, align 8, !tbaa !16 ; 2 uses
  %3 = shufflevector <3 x float> %2, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 3 uses
  %4 = load <3 x float>, ptr %i.c, align 8, !tbaa !16 ; 2 uses
  %5 = shufflevector <3 x float> %4, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 5 uses
  %6 = load <4 x i16>, ptr %i.bj, align 2, !tbaa !31
  %7 = uitofp <4 x i16> %6 to <4 x float>
  %8 = fdiv <4 x float> %7, %3
  %9 = fadd <4 x float> %5, %8                    ; 3 uses
  %10 = fcmp olt <4 x float> %9, <float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000>
  %11 = fcmp ogt <4 x float> %9, <float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000>
  %12 = shufflevector <4 x i1> %10, <4 x i1> %11, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %13 = select <4 x i1> %12, <4 x float> %9, <4 x float> <float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000> ; 4 uses
  %14 = load <2 x i16>, ptr %i.bk, align 2, !tbaa !31
  %15 = uitofp <2 x i16> %14 to <2 x float>
  %16 = shufflevector <3 x float> %2, <3 x float> poison, <2 x i32> <i32 1, i32 2> ; 3 uses
  %17 = fdiv <2 x float> %15, %16
  %18 = shufflevector <3 x float> %4, <3 x float> poison, <2 x i32> <i32 1, i32 2> ; 5 uses
  %19 = fadd <2 x float> %18, %17                 ; 2 uses
  %i.bl = fcmp ogt <2 x float> %19, splat (float 0xC7EFFFFFE0000000)
  %i.bm = select <2 x i1> %i.bl, <2 x float> %19, <2 x float> splat (float 0xC7EFFFFFE0000000) ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !33 ; 2 uses
  %i.bp = icmp slt i32 %i.bo, 0
end_hunk_2
begin_hunk_3_@_ZN21btGImpactQuantizedBvh5refitEv:bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load <4 x i16>, ptr %i.bt, align 2, !tbaa !31
  %i.bw = uitofp <4 x i16> %i.bv to <4 x float>
  %i.bx = fdiv <4 x float> %i.bw, %3
  %i.by = fadd <4 x float> %5, %i.bx              ; 3 uses
  %i.bz = fcmp ogt <4 x float> %13, %i.by
  %i.ca = fcmp olt <4 x float> %13, %i.by
  %i.cb = shufflevector <4 x i1> %i.bz, <4 x i1> %i.ca, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.cc = select <4 x i1> %i.cb, <4 x float> %i.by, <4 x float> %13
  %i.cd = load <2 x i16>, ptr %i.bu, align 2, !tbaa !31
  %i.ce = uitofp <2 x i16> %i.cd to <2 x float>
  %i.cf = fdiv <2 x float> %i.ce, %16
  %i.cg = fadd <2 x float> %18, %i.cf             ; 2 uses
  %i.ch = fcmp olt <2 x float> %i.bm, %i.cg
  %i.ci = select <2 x i1> %i.ch, <2 x float> %i.cg, <2 x float> %i.bm
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cj = phi <4 x float> [ %13, %bb.d ], [ %i.cc, %bb.e ] ; 2 uses
  %i.ck = phi <2 x float> [ %i.bm, %bb.d ], [ %i.ci, %bb.e ] ; 2 uses
  %i.cl = fcmp olt <4 x float> %i.cj, %5
  %20 = load <3 x float>, ptr %i.g, align 8, !tbaa !16 ; 2 uses
  %21 = shufflevector <3 x float> %20, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.cm = select <4 x i1> %i.cl, <4 x float> %5, <4 x float> %i.cj ; 2 uses
  %22 = fcmp olt <4 x float> %21, %i.cm
  %23 = select <4 x i1> %22, <4 x float> %21, <4 x float> %i.cm
  %24 = fsub <4 x float> %23, %5
  %25 = fmul <4 x float> %3, %24
  %26 = fadd <4 x float> %25, splat (float 5.000000e-01)
  %27 = fptoui <4 x float> %26 to <4 x i16>
  store <4 x i16> %27, ptr %i.m, align 2, !tbaa !31
  %28 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %29 = fcmp olt <2 x float> %i.ck, %18
  %30 = select <2 x i1> %29, <2 x float> %18, <2 x float> %i.ck ; 2 uses
  %31 = shufflevector <3 x float> %20, <3 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %32 = fcmp olt <2 x float> %31, %30
  %33 = select <2 x i1> %32, <2 x float> %31, <2 x float> %30
  %34 = fsub <2 x float> %33, %18
  %35 = fmul <2 x float> %16, %34
  %i.cn = fadd <2 x float> %35, splat (float 5.000000e-01)
  %i.co = fptoui <2 x float> %i.cn to <2 x i16>
  store <2 x i16> %i.co, ptr %28, align 2, !tbaa !31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
end_hunk_3
