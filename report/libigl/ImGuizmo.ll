Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/ImGuizmo?download=true
inline.NumInlined: 554
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNK8ImGuizmo5vec_tmlERKS0_:bb.a
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.d, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %i.e, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK8ImGuizmo5vec_t3AbsEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !12
  %i.b = tail call float @llvm.fabs.f32(float %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load <2 x float>, ptr %i.c, align 4, !tbaa !10
  %i.e = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.d) ; 2 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.b, i64 0
  %i.f = shufflevector <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> %i.e, <2 x i32> <i32 0, i32 2>
  %i.g = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.e, <2 x i32> <i32 3, i32 1>
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.f, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %i.g, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZN8ImGuizmo10NormalizedERKNS_5vec_tE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) local_unnamed_addr #4 {
bb.a:
  %.sroa.0.0.copyload = load <2 x float>, ptr %0, align 4, !tbaa !10 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.7.0.copyload = load <2 x float>, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !10 ; 2 uses
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.0.0.copyload, %.sroa.0.0.copyload
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.b = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract, float %.sroa.0.0.vec.extract, float %i.a)
  %.sroa.7.8.vec.extract = extractelement <2 x float> %.sroa.7.0.copyload, i64 0 ; 2 uses
  %i.c = tail call float @llvm.fmuladd.f32(float %.sroa.7.8.vec.extract, float %.sroa.7.8.vec.extract, float %i.b)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.c)
  %i.d = fdiv float 1.000000e+00, %sqrt.i.i
  %i.e = shufflevector <2 x float> %.sroa.0.0.copyload, <2 x float> %.sroa.7.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.f = insertelement <4 x float> poison, float %i.d, i64 0
  %i.g = shufflevector <4 x float> %i.f, <4 x float> poison, <4 x i32> zeroinitializer
  %i.h = fmul <4 x float> %i.e, %i.g              ; 2 uses
  %i.i = shufflevector <4 x float> %i.h, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.j = shufflevector <4 x float> %i.h, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.i, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %i.j, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZN8ImGuizmo5CrossERKNS_5vec_tES2_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load float, ptr %i.b, align 4, !tbaa !13 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !13 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !14
  %i.h = load <2 x float>, ptr %1, align 4, !tbaa !10 ; 2 uses
  %i.i = fneg float %i.g
  %i.j = fmul float %i.e, %i.i
  %i.k = load float, ptr %i.a, align 4, !tbaa !14
  %i.l = load <2 x float>, ptr %0, align 4, !tbaa !10 ; 2 uses
  %i.m = tail call float @llvm.fmuladd.f32(float %i.k, float %i.c, float %i.j)
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.m, i64 0
  %i.n = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.o = insertelement <2 x float> %i.n, float %i.c, i64 0
  %i.p = fneg <2 x float> %i.o
  %i.q = fmul <2 x float> %i.l, %i.p
  %i.r = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.s = insertelement <2 x float> %i.r, float %i.e, i64 0
  %i.t = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> %i.h, <2 x float> %i.q) ; 2 uses
  %i.u = shufflevector <2 x float> %.sroa.0.0.vec.insert, <2 x float> %i.t, <2 x i32> <i32 0, i32 2>
  %i.v = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.t, <2 x i32> <i32 3, i32 1>
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.u, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %i.v, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZN8ImGuizmo3DotERKNS_5vec_tES2_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !12
  %i.b = load float, ptr %1, align 4, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !14
  %i.g = fmul float %i.d, %i.f
  %i.h = tail call float @llvm.fmuladd.f32(float %i.a, float %i.b, float %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !13
  %i.m = tail call float @llvm.fmuladd.f32(float %i.j, float %i.l, float %i.h)
  ret float %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZN8ImGuizmo9BuildPlanERKNS_5vec_tES2_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !12   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !14 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !13 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load float, ptr %i.f, align 4, !tbaa !15
  %i.h = fmul float %i.c, %i.c
  %i.i = tail call float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.h)
  %i.j = tail call float @llvm.fmuladd.f32(float %i.e, float %i.e, float %i.i)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.j)
  %i.k = fdiv float 1.000000e+00, %sqrt.i.i.i     ; 4 uses
  %i.l = fmul float %i.a, %i.k                    ; 2 uses
  %i.m = fmul float %i.c, %i.k                    ; 2 uses
  %i.n = fmul float %i.e, %i.k                    ; 2 uses
  %i.o = fmul float %i.g, %i.k
  %i.p = load float, ptr %0, align 4, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = load float, ptr %i.q, align 4, !tbaa !14
  %i.s = fmul float %i.r, %i.m
  %i.t = tail call float @llvm.fmuladd.f32(float %i.l, float %i.p, float %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load float, ptr %i.u, align 4, !tbaa !13
  %i.w = tail call float @llvm.fmuladd.f32(float %i.n, float %i.v, float %i.t)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.y = load float, ptr %i.x, align 4, !tbaa !15
  %i.z = tail call noundef float @llvm.fmuladd.f32(float %i.o, float %i.y, float %i.w)
  %.sroa.02.0.vec.insert = insertelement <2 x float> poison, float %i.l, i64 0
  %.sroa.02.4.vec.insert = insertelement <2 x float> %.sroa.02.0.vec.insert, float %i.m, i64 1
  %i.aa = insertelement <2 x float> poison, float %i.n, i64 0
  %.sroa.3.8.vec.insert = insertelement <2 x float> %i.aa, float %i.z, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.02.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.3.8.vec.insert, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN8ImGuizmo5vec_t9TransformERKNS_8matrix_tE(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load <4 x float>, ptr %0, align 4, !tbaa !10 ; 4 uses
  %i.e = load <4 x float>, ptr %1, align 4, !tbaa !16
  %i.f = load <4 x float>, ptr %i.a, align 4, !tbaa !16
  %i.g = shufflevector <4 x float> %i.d, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.h = fmul <4 x float> %i.g, %i.f
  %i.i = shufflevector <4 x float> %i.d, <4 x float> poison, <4 x i32> zeroinitializer
  %i.j = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.i, <4 x float> %i.e, <4 x float> %i.h)
  %i.k = load <4 x float>, ptr %i.b, align 4, !tbaa !16
  %i.l = shufflevector <4 x float> %i.d, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.m = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.l, <4 x float> %i.k, <4 x float> %i.j)
  %i.n = load <4 x float>, ptr %i.c, align 4, !tbaa !16
  %i.o = shufflevector <4 x float> %i.d, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.p = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.o, <4 x float> %i.n, <4 x float> %i.m)
  store <4 x float> %i.p, ptr %0, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN8ImGuizmo5vec_t9TransformERKS0_RKNS_8matrix_tE(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !17
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.d = load <4 x float>, ptr %0, align 4, !tbaa !10 ; 4 uses
  %i.e = load <4 x float>, ptr %2, align 4, !tbaa !16
  %i.f = load <4 x float>, ptr %i.a, align 4, !tbaa !16
  %i.g = shufflevector <4 x float> %i.d, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.h = fmul <4 x float> %i.g, %i.f
  %i.i = shufflevector <4 x float> %i.d, <4 x float> poison, <4 x i32> zeroinitializer
  %i.j = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.i, <4 x float> %i.e, <4 x float> %i.h)
  %i.k = load <4 x float>, ptr %i.b, align 4, !tbaa !16
  %i.l = shufflevector <4 x float> %i.d, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.m = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.l, <4 x float> %i.k, <4 x float> %i.j)
  %i.n = load <4 x float>, ptr %i.c, align 4, !tbaa !16
  %i.o = shufflevector <4 x float> %i.d, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.p = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.o, <4 x float> %i.n, <4 x float> %i.m)
  store <4 x float> %i.p, ptr %0, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN8ImGuizmo5vec_t14TransformPointERKNS_8matrix_tE(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) initializes((12, 16)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load <4 x float>, ptr %0, align 4        ; 3 uses
  %i.e = load <4 x float>, ptr %1, align 4, !tbaa !16
  %i.f = load <4 x float>, ptr %i.a, align 4, !tbaa !16
  %i.g = shufflevector <4 x float> %i.d, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.h = fmul <4 x float> %i.g, %i.f
  %i.i = shufflevector <4 x float> %i.d, <4 x float> poison, <4 x i32> zeroinitializer
  %i.j = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.i, <4 x float> %i.e, <4 x float> %i.h)
  %i.k = load <4 x float>, ptr %i.b, align 4, !tbaa !16
  %i.l = shufflevector <4 x float> %i.d, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.m = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.l, <4 x float> %i.k, <4 x float> %i.j)
  %i.n = load <4 x float>, ptr %i.c, align 4, !tbaa !16
  %i.o = fadd <4 x float> %i.m, %i.n
  store <4 x float> %i.o, ptr %0, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN8ImGuizmo5vec_t15TransformVectorERKNS_8matrix_tE(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) initializes((12, 16)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load <4 x float>, ptr %0, align 4        ; 3 uses
  %i.d = load <4 x float>, ptr %1, align 4, !tbaa !16
  %i.e = load <4 x float>, ptr %i.a, align 4, !tbaa !16
  %i.f = shufflevector <4 x float> %i.c, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.g = fmul <4 x float> %i.f, %i.e
  %i.h = shufflevector <4 x float> %i.c, <4 x float> poison, <4 x i32> zeroinitializer
  %i.i = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.h, <4 x float> %i.d, <4 x float> %i.g)
  %i.j = load <4 x float>, ptr %i.b, align 4, !tbaa !16
  %i.k = shufflevector <4 x float> %i.c, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.l = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.k, <4 x float> %i.j, <4 x float> %i.i)
  store <4 x float> %i.l, ptr %0, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef float @_ZN8ImGuizmo8matrix_t7InverseERKS0_b(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(64) initializes((48, 60)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load float, ptr %0, align 4, !tbaa !16   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.d = load float, ptr %i.c, align 4, !tbaa !16 ; 2 uses
  %i.e = fmul float %i.a, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.j = load float, ptr %i.i, align 4, !tbaa !16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !16 ; 2 uses
  %i.m = fmul float %i.j, %i.l
  %i.n = load float, ptr %i.f, align 4, !tbaa !16 ; 2 uses
  %i.o = fmul float %i.m, %i.n
  %i.p = tail call float @llvm.fmuladd.f32(float %i.e, float %i.h, float %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load float, ptr %i.q, align 4, !tbaa !16 ; 2 uses
  %i.s = load float, ptr %i.b, align 4, !tbaa !16 ; 2 uses
  %i.t = fmul float %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !16 ; 2 uses
  %i.w = tail call float @llvm.fmuladd.f32(float %i.t, float %i.v, float %i.p)
  %i.x = fneg float %i.d
  %i.y = fmul float %i.r, %i.x
  %i.z = tail call float @llvm.fmuladd.f32(float %i.y, float %i.n, float %i.w)
  %i.aa = fneg float %i.s
  %i.ab = fmul float %i.j, %i.aa
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.h, float %i.z)
  %i.ad = fneg float %i.l
  %i.ae = fmul float %i.a, %i.ad
  %i.af = tail call noundef float @llvm.fmuladd.f32(float %i.ae, float %i.v, float %i.ac) ; 2 uses
  %i.ag = fdiv float 1.000000e+00, %i.af          ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !16
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.ao = load float, ptr %i.an, align 4, !tbaa !16
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 4 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !16
  %i.ar = fneg float %i.aq
  %i.as = fmul float %i.ao, %i.ar
  %i.at = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.am, float %i.as)
  %i.au = fmul float %i.ag, %i.at                 ; 2 uses
  store float %i.au, ptr %0, align 4, !tbaa !16
  %i.av = load float, ptr %i.ap, align 4, !tbaa !16
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !16
  %i.ay = load float, ptr %i.al, align 4, !tbaa !16
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.ba = load float, ptr %i.az, align 4, !tbaa !16
  %i.bb = fneg float %i.ba
  %i.bc = fmul float %i.ay, %i.bb
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.av, float %i.ax, float %i.bc)
  %i.be = fmul float %i.ag, %i.bd                 ; 2 uses
  store float %i.be, ptr %i.i, align 4, !tbaa !16
  %i.bf = load float, ptr %i.az, align 4, !tbaa !16
  %i.bg = load float, ptr %i.an, align 4, !tbaa !16
  %i.bh = load float, ptr %i.aw, align 4, !tbaa !16
  %i.bi = load float, ptr %i.ai, align 4, !tbaa !16
  %i.bj = fneg float %i.bi
  %i.bk = fmul float %i.bh, %i.bj
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.bg, float %i.bk)
  %i.bm = fmul float %i.ag, %i.bl                 ; 2 uses
  store float %i.bm, ptr %i.q, align 4, !tbaa !16
  %i.bn = load float, ptr %i.an, align 4, !tbaa !16
  %i.bo = load float, ptr %i.ak, align 4, !tbaa !16
  %i.bp = load float, ptr %i.ah, align 4, !tbaa !16
  %i.bq = load float, ptr %i.al, align 4, !tbaa !16
  %i.br = fneg float %i.bq
  %i.bs = fmul float %i.bp, %i.br
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.bo, float %i.bs)
  %i.bu = fmul float %i.ag, %i.bt                 ; 2 uses
  store float %i.bu, ptr %i.b, align 4, !tbaa !16
  %i.bv = load float, ptr %i.al, align 4, !tbaa !16
  %i.bw = load float, ptr %1, align 4, !tbaa !16
  %i.bx = load float, ptr %i.ak, align 4, !tbaa !16
  %i.by = load float, ptr %i.aw, align 4, !tbaa !16
  %i.bz = fneg float %i.by
  %i.ca = fmul float %i.bx, %i.bz
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.bw, float %i.ca)
  %i.cc = fmul float %i.ag, %i.cb                 ; 2 uses
  store float %i.cc, ptr %i.c, align 4, !tbaa !16
  %i.cd = load float, ptr %i.aw, align 4, !tbaa !16
  %i.ce = load float, ptr %i.ah, align 4, !tbaa !16
  %i.cf = load float, ptr %1, align 4, !tbaa !16
  %i.cg = load float, ptr %i.an, align 4, !tbaa !16
  %i.ch = fneg float %i.cg
  %i.ci = fmul float %i.cf, %i.ch
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.ce, float %i.ci)
  %i.ck = fmul float %i.ag, %i.cj                 ; 2 uses
  store float %i.ck, ptr %i.k, align 4, !tbaa !16
  %i.cl = load float, ptr %i.ah, align 4, !tbaa !16
  %i.cm = load float, ptr %i.ap, align 4, !tbaa !16
  %i.cn = load float, ptr %i.ai, align 4, !tbaa !16
  %i.co = load float, ptr %i.ak, align 4, !tbaa !16
  %i.cp = fneg float %i.co
  %i.cq = fmul float %i.cn, %i.cp
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.cm, float %i.cq)
  %i.cs = fmul float %i.ag, %i.cr                 ; 2 uses
  store float %i.cs, ptr %i.f, align 4, !tbaa !16
  %i.ct = load float, ptr %i.ak, align 4, !tbaa !16
  %i.cu = load float, ptr %i.az, align 4, !tbaa !16
  %i.cv = load float, ptr %i.ap, align 4, !tbaa !16
  %i.cw = load float, ptr %1, align 4, !tbaa !16
  %i.cx = fneg float %i.cw
  %i.cy = fmul float %i.cv, %i.cx
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.cu, float %i.cy)
  %i.da = fmul float %i.ag, %i.cz                 ; 2 uses
  store float %i.da, ptr %i.u, align 4, !tbaa !16
  %i.db = load float, ptr %1, align 4, !tbaa !16
  %i.dc = load float, ptr %i.ai, align 4, !tbaa !16
  %i.dd = load float, ptr %i.az, align 4, !tbaa !16
  %i.de = load float, ptr %i.ah, align 4, !tbaa !16
  %i.df = fneg float %i.de
  %i.dg = fmul float %i.dd, %i.df
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.db, float %i.dc, float %i.dg)
  %i.di = fmul float %i.ag, %i.dh                 ; 2 uses
  store float %i.di, ptr %i.g, align 4, !tbaa !16
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !16
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 3 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !16
  %i.dn = fmul float %i.bu, %i.dm
  %i.do = tail call float @llvm.fmuladd.f32(float %i.au, float %i.dk, float %i.dn)
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !16
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.dq, float %i.do)
  %i.ds = fneg float %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.ds, ptr %i.dt, align 4, !tbaa !16
  %i.du = load float, ptr %i.dj, align 4, !tbaa !16
  %i.dv = load float, ptr %i.dl, align 4, !tbaa !16
  %i.dw = fmul float %i.cc, %i.dv
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.be, float %i.du, float %i.dw)
  %i.dy = load float, ptr %i.dp, align 4, !tbaa !16
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.da, float %i.dy, float %i.dx)
  %i.ea = fneg float %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.ea, ptr %i.eb, align 4, !tbaa !16
  %i.ec = load float, ptr %i.dj, align 4, !tbaa !16
  %i.ed = load float, ptr %i.dl, align 4, !tbaa !16
  %i.ee = fmul float %i.ck, %i.ed
  %i.ef = tail call float @llvm.fmuladd.f32(float %i.bm, float %i.ec, float %i.ee)
  %i.eg = load float, ptr %i.dp, align 4, !tbaa !16
  %i.eh = tail call float @llvm.fmuladd.f32(float %i.di, float %i.eg, float %i.ef)
  %i.ei = fneg float %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.ei, ptr %i.ej, align 4, !tbaa !16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.et = load <2 x float>, ptr %i.ek, align 4, !tbaa !16 ; 6 uses
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ev = load <2 x float>, ptr %i.em, align 4, !tbaa !16 ; 10 uses
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ex = shufflevector <2 x float> %i.ev, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ey = shufflevector <2 x float> %i.ev, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ez = load <2 x float>, ptr %i.eo, align 4, !tbaa !16 ; 9 uses
  %i.fa = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fb = fmul <2 x float> %i.ez, %i.fa           ; 6 uses
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fd = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fe = fmul <2 x float> %i.fd, %i.et           ; 6 uses
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fg = shufflevector <2 x float> %i.fe, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fh = shufflevector <2 x float> %i.fe, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fi = shufflevector <2 x float> %i.fe, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fj = fmul <2 x float> %i.ev, %i.eu           ; 4 uses
  %i.fk = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fl = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fm = load <2 x float>, ptr %i.eq, align 4, !tbaa !16 ; 7 uses
  %i.fn = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fo = fmul <2 x float> %i.fn, %i.ev           ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN8ImGuizmo29RecomposeMatrixFromComponentsEPKfS1_S1_Pf:.preheader.preheader
  %i.ge = shufflevector <2 x float> %i.fe, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.gf = shufflevector <4 x float> %i.fc, <4 x float> %i.ge, <2 x i32> <i32 5, i32 1>
  %i.gg = shufflevector <3 x float> %i.da, <3 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gh = shufflevector <4 x float> %i.fc, <4 x float> %i.fd, <2 x i32> <i32 3, i32 5>
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.gj = shufflevector <3 x float> %i.da, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 2 uses
  %i.gk = insertelement <4 x float> %i.gj, float %.sroa.43.0, i64 0
  %i.gl = shufflevector <2 x float> %i.dc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gm = shufflevector <4 x float> %i.gk, <4 x float> %i.gl, <4 x i32> <i32 0, i32 4, i32 2, i32 poison>
  %i.gn = shufflevector <4 x float> %i.gm, <4 x float> %i.db, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.go = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %.sroa.22.0, i64 0
  %i.gp = shufflevector <4 x float> %i.go, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  %i.gq = fmul <4 x float> %i.gn, %i.gp
  %i.gr = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %.sroa.20.0, i64 0
  %i.gs = shufflevector <4 x float> %i.gr, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  %i.gt = shufflevector <3 x float> %i.da, <3 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 1, i32 poison>
  %i.gu = insertelement <4 x float> %i.gt, float %.sink60.i.1, i64 0
  %i.gv = insertelement <4 x float> %i.gu, float %.sroa.36.0, i64 1
  %i.gw = shufflevector <4 x float> %i.gv, <4 x float> %i.db, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.gx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gs, <4 x float> %i.gw, <4 x float> %i.gq)
  %i.gy = shufflevector <4 x float> %i.fw, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 1, i32 1, i32 6, i32 1>
  %i.gz = shufflevector <3 x float> %i.da, <3 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.ha = shufflevector <4 x float> %i.gz, <4 x float> %i.db, <4 x i32> <i32 6, i32 7, i32 2, i32 poison>
  %i.hb = shufflevector <4 x float> %i.ha, <4 x float> %i.gl, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.hc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gy, <4 x float> %i.hb, <4 x float> %i.gx) ; 4 uses
  %i.hd = extractelement <4 x float> %i.hc, i64 2
  %i.he = fadd float %i.hd, 1.000000e+00
  store float %i.he, ptr %.sroa.18.0..sroa_idx, align 4, !tbaa !16
  %i.hf = extractelement <4 x float> %i.hc, i64 0
  %i.hg = fadd float %i.hf, 0.000000e+00          ; 2 uses
  %i.hh = extractelement <4 x float> %i.hc, i64 3
  %i.hi = fadd float %i.hh, 0.000000e+00          ; 2 uses
  %i.hj = insertelement <2 x float> %i.gd, float %i.hg, i64 0
  %i.hk = shufflevector <2 x float> <float 0.000000e+00, float poison>, <2 x float> %i.fe, <2 x i32> <i32 0, i32 2>
  %i.hl = insertelement <2 x float> %i.gg, float %i.hi, i64 0
  %i.hm = shufflevector <4 x float> %i.fc, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.hn = insertelement <2 x float> %i.hm, float 0.000000e+00, i64 0
  %i.ho = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %.sroa.75.0, i64 0
  %i.hp = shufflevector <4 x float> %i.ho, <4 x float> %i.fd, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.hq = shufflevector <4 x float> %i.hp, <4 x float> %i.fc, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.hr = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.hg, i64 0
  %i.hs = shufflevector <4 x float> %i.hr, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ht = insertelement <4 x float> %i.ge, float -0.000000e+00, i64 3
  %i.hu = shufflevector <4 x float> %i.ht, <4 x float> %i.fc, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.hv = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.hi, i64 0
  %i.hw = shufflevector <4 x float> %i.hv, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.hx = shufflevector <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x float> %i.fc, <4 x i32> <i32 6, i32 7, i32 poison, i32 3>
  %i.hy = shufflevector <4 x float> %i.hx, <4 x float> %i.fd, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.hz = shufflevector <4 x float> %i.fz, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 7>
  %i.ia = extractelement <4 x float> %i.db, i64 3 ; 2 uses
  %.scalar91 = tail call float @llvm.fmuladd.f32(float %.sroa.11.0, float 0.000000e+00, float %i.fu)
  %.scalar92 = tail call float @llvm.fmuladd.f32(float %.sroa.15.0, float 0.000000e+00, float %.scalar91)
  %i.ib = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar92, i64 0
  %i.ic = shufflevector <2 x float> %i.ib, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.id = fadd <4 x float> %i.ic, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -0.000000e+00> ; 2 uses
  %i.ie = extractelement <4 x float> %i.id, i64 0
  %i.if = fadd float %i.fr, 0.000000e+00          ; 2 uses
  %i.ig = extractelement <4 x float> %i.db, i64 1
  %i.ih = tail call float @llvm.fmuladd.f32(float %.sroa.11.0, float %i.ig, float %i.ft)
  %i.ii = extractelement <2 x float> %i.dc, i64 1
  %i.ij = tail call float @llvm.fmuladd.f32(float %.sroa.15.0, float %i.ii, float %i.ih)
  %i.ik = fadd float %i.ij, 0.000000e+00          ; 2 uses
  %i.il = shufflevector <4 x float> %i.fd, <4 x float> %i.fc, <4 x i32> <i32 poison, i32 0, i32 4, i32 poison>
  %i.im = insertelement <4 x float> %i.il, float %.sroa.75.0, i64 0 ; 2 uses
  %i.in = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.if, i64 0
  %i.io = shufflevector <4 x float> %i.in, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ip = shufflevector <4 x float> %i.fc, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 poison, i32 poison, i32 1, i32 7>
  %i.iq = shufflevector <4 x float> %i.ge, <4 x float> %i.ip, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.ir = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ik, i64 0
  %i.is = shufflevector <4 x float> %i.ir, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.it = shufflevector <4 x float> %i.fc, <4 x float> %i.fd, <4 x i32> <i32 2, i32 3, i32 5, i32 poison>
  %i.iu = insertelement <4 x float> %i.it, float -0.000000e+00, i64 3 ; 2 uses
  %i.iv = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.sink60.i, i64 0
  %.scalar93 = tail call float @llvm.fmuladd.f32(float %.sink60.i, float 0.000000e+00, float %i.fn)
  %i.iw = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.sroa.7.0, i64 0
  %.scalar94 = tail call float @llvm.fmuladd.f32(float %.sroa.7.0, float 0.000000e+00, float %.scalar93)
  %i.ix = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar94, i64 0
  %i.iy = shufflevector <2 x float> %i.ix, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.iz = fadd <4 x float> %i.iy, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -0.000000e+00> ; 2 uses
  %i.ja = extractelement <4 x float> %i.iz, i64 0
  %i.jb = fadd float %i.fi, 0.000000e+00          ; 2 uses
  %i.jc = shufflevector <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x float> %i.db, <2 x i32> <i32 5, i32 1>
  %i.jd = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.fm, i64 0
  %i.je = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iv, <2 x float> %i.jc, <2 x float> %i.jd)
  %i.jf = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.dc, <2 x i32> <i32 3, i32 1>
  %i.jg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iw, <2 x float> %i.jf, <2 x float> %i.je)
  %i.jh = shufflevector <2 x float> %i.jg, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ji = fadd <4 x float> %i.jh, zeroinitializer ; 2 uses
  %i.jj = tail call float @llvm.fmuladd.f32(float %.sroa.11.0, float %.sroa.36.0, float %i.fs)
  %i.jk = tail call float @llvm.fmuladd.f32(float %.sroa.15.0, float %i.ia, float %i.jj)
  %i.jl = tail call float @llvm.fmuladd.f32(float %.sink60.i, float %.sroa.36.0, float %i.fk)
  %i.jm = tail call float @llvm.fmuladd.f32(float %.sroa.7.0, float %i.ia, float %i.jl)
  %i.jn = shufflevector <4 x float> %i.gj, <4 x float> %i.hc, <4 x i32> <i32 2, i32 5, i32 poison, i32 poison>
  %i.jo = insertelement <4 x float> %i.jn, float %i.jk, i64 2
  %i.jp = insertelement <4 x float> %i.jo, float %i.jm, i64 3
  %i.jq = fadd <4 x float> %i.jp, <float -0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00> ; 4 uses
  %i.jr = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.sroa.75.0, i64 0
  %i.js = fmul <4 x float> %i.jq, %i.jr           ; 3 uses
  %i.jt = shufflevector <4 x float> %i.js, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ju = shufflevector <2 x float> %i.hl, <2 x float> %i.gg, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.jv = shufflevector <2 x float> %i.hn, <2 x float> %i.gh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.jw = shufflevector <2 x float> %i.hj, <2 x float> %i.gd, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.jx = shufflevector <2 x float> %i.hk, <2 x float> %i.gf, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.jy = shufflevector <2 x float> %i.jt, <2 x float> %i.gc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.jz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jw, <4 x float> %i.jx, <4 x float> %i.jy)
  %i.ka = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ju, <4 x float> %i.jv, <4 x float> %i.jz)
  %i.kb = fadd <4 x float> %i.fz, %i.ka           ; 2 uses
  %i.kc = shufflevector <4 x float> %i.jq, <4 x float> %i.kb, <4 x i32> <i32 1, i32 1, i32 1, i32 4>
  %i.kd = fmul <4 x float> %i.kc, %i.hq
  %i.ke = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hs, <4 x float> %i.hu, <4 x float> %i.kd)
  %i.kf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hw, <4 x float> %i.hy, <4 x float> %i.ke)
  %i.kg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hz, <4 x float> zeroinitializer, <4 x float> %i.kf) ; 3 uses
  %i.kh = shufflevector <4 x float> %i.kg, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.kh, ptr %.sroa.11.0..sroa_idx, align 4
  %i.ki = extractelement <4 x float> %i.kg, i64 2
  store float %i.ki, ptr %.sroa.13.0..sroa_idx, align 4
  store <4 x float> %i.kb, ptr %.sroa.14.0..sroa_idx, align 4
  %i.kj = extractelement <4 x float> %i.js, i64 2
  %i.kk = tail call float @llvm.fmuladd.f32(float %i.if, float 0.000000e+00, float %i.kj)
  %i.kl = tail call float @llvm.fmuladd.f32(float %i.ik, float 0.000000e+00, float %i.kk)
  %i.km = fadd float %i.ie, %i.kl                 ; 2 uses
  %i.kn = shufflevector <4 x float> %i.jq, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 2, i32 2, i32 7>
  %i.ko = insertelement <4 x float> %i.im, float %i.km, i64 3
  %i.kp = fmul <4 x float> %i.kn, %i.ko
  %i.kq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.io, <4 x float> %i.iq, <4 x float> %i.kp)
  %i.kr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.is, <4 x float> %i.iu, <4 x float> %i.kq)
  %i.ks = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.id, <4 x float> zeroinitializer, <4 x float> %i.kr) ; 3 uses
  %i.kt = shufflevector <4 x float> %i.ks, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.kt, ptr %.sroa.773.0..sroa_idx, align 4
  %i.ku = extractelement <4 x float> %i.ks, i64 2
  store float %i.ku, ptr %.sroa.9.0..sroa_idx, align 4
  store float %i.km, ptr %.sroa.10.0..sroa_idx, align 4
  %i.kv = extractelement <4 x float> %i.js, i64 3
  %i.kw = tail call float @llvm.fmuladd.f32(float %i.jb, float 0.000000e+00, float %i.kv)
  %i.kx = extractelement <4 x float> %i.ji, i64 0
  %i.ky = tail call float @llvm.fmuladd.f32(float %i.kx, float 0.000000e+00, float %i.kw)
  %i.kz = fadd float %i.ja, %i.ky                 ; 2 uses
  %i.la = shufflevector <4 x float> %i.jq, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 3, i32 3, i32 3, i32 7>
  %i.lb = insertelement <4 x float> %i.im, float %i.kz, i64 3
  %i.lc = fmul <4 x float> %i.la, %i.lb
  %i.ld = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.jb, i64 0
  %i.le = shufflevector <4 x float> %i.ld, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.lf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.le, <4 x float> %i.iq, <4 x float> %i.lc)
  %i.lg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ji, <4 x float> %i.iu, <4 x float> %i.lf)
  %i.lh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iz, <4 x float> zeroinitializer, <4 x float> %i.lg) ; 3 uses
  %i.li = shufflevector <4 x float> %i.lh, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.li, ptr %3, align 4
  %i.lj = extractelement <4 x float> %i.lh, i64 2
  store float %i.lj, ptr %.sroa.5.0..sroa_idx, align 4
  store float %i.kz, ptr %.sroa.6.0..sroa_idx, align 4
  %i.lk = load float, ptr %2, align 4, !tbaa !10  ; 2 uses
  %i.ll = tail call float @llvm.fabs.f32(float %i.lk)
  %i.lm = fcmp olt float %i.ll, f0x34000000
  %.sroa.0.0 = select i1 %i.lm, float 1.000000e-03, float %i.lk
  %i.ln = load <2 x float>, ptr %i.gi, align 4, !tbaa !10 ; 2 uses
  %i.lo = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ln)
  %i.lp = fcmp olt <2 x float> %i.lo, splat (float f0x34000000)
  %i.lq = select <2 x i1> %i.lp, <2 x float> splat (float 1.000000e-03), <2 x float> %i.ln ; 2 uses
  %i.lr = insertelement <4 x float> poison, float %.sroa.0.0, i64 0
  %i.ls = shufflevector <4 x float> %i.lr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lt = fmul <4 x float> %i.lh, %i.ls
  store <4 x float> %i.lt, ptr %3, align 4, !tbaa !10
  %i.lu = shufflevector <2 x float> %i.lq, <2 x float> poison, <4 x i32> zeroinitializer
  %i.lv = fmul <4 x float> %i.ks, %i.lu
  store <4 x float> %i.lv, ptr %.sroa.773.0..sroa_idx, align 4, !tbaa !10
  %i.lw = shufflevector <2 x float> %i.lq, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.lx = fmul <4 x float> %i.kg, %i.lw
  store <4 x float> %i.lx, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !10
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !10
  %i.ma = load <2 x float>, ptr %0, align 4, !tbaa !10
  store <2 x float> %i.ma, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !10
  store float %i.lz, ptr %.sroa.1775.0..sroa_idx, align 4, !tbaa !13
  store float 1.000000e+00, ptr %.sroa.18.0..sroa_idx, align 4, !tbaa !15
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8ImGuizmo10ManipulateEPKfS1_NS_9OPERATIONENS_4MODEEPfS4_S4_S4_S4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef readonly captures(address_is_null) %6, ptr nofree noundef readonly captures(address_is_null) %7, ptr nofree noundef readonly captures(address_is_null) %8) local_unnamed_addr #13 {
bb.a:
  %i.a = alloca [7 x i32], align 16               ; 10 uses
  %9 = alloca %"struct.ImGuizmo::vec_t", align 4  ; 6 uses
  %10 = alloca %"struct.ImGuizmo::vec_t", align 4 ; 3 uses
  %11 = alloca %"struct.ImGuizmo::vec_t", align 4 ; 3 uses
  %12 = alloca %"struct.ImGuizmo::vec_t", align 8 ; 5 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 3 uses
  %13 = alloca %struct.ImVec2, align 8            ; 5 uses
  %14 = alloca %struct.ImVec2, align 8            ; 5 uses
  %15 = alloca %struct.ImVec2, align 8            ; 5 uses
  %16 = alloca %"struct.ImGuizmo::vec_t", align 8 ; 5 uses
  %i.d = alloca [512 x i8], align 16              ; 5 uses
  %17 = alloca %struct.ImVec2, align 8            ; 4 uses
  %18 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.e = alloca [7 x i32], align 16               ; 20 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %19 = alloca %"struct.ImGuizmo::vec_t", align 16 ; 5 uses
  %20 = alloca %"struct.ImGuizmo::vec_t", align 8 ; 5 uses
  %21 = alloca %"struct.ImGuizmo::vec_t", align 16 ; 5 uses
  %22 = alloca %struct.ImVec2, align 8            ; 4 uses
  %23 = alloca %struct.ImVec2, align 8            ; 5 uses
  %24 = alloca %struct.ImVec2, align 8            ; 4 uses
  %25 = alloca %struct.ImVec2, align 8            ; 4 uses
  %26 = alloca %struct.ImVec2, align 8            ; 4 uses
  %27 = alloca [4 x %struct.ImVec2], align 16     ; 8 uses
  %28 = alloca %struct.ImVec2, align 8            ; 5 uses
  %29 = alloca %struct.ImVec2, align 8            ; 7 uses
  %30 = alloca %struct.ImVec2, align 8            ; 4 uses
  %31 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.h = alloca [512 x i8], align 16              ; 5 uses
  %32 = alloca %"struct.ImGuizmo::vec_t", align 8 ; 7 uses
  %33 = alloca %struct.ImVec2, align 8            ; 4 uses
  %34 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.i = alloca [7 x i32], align 16               ; 9 uses
  %35 = alloca %"struct.ImGuizmo::matrix_t", align 4 ; 5 uses
  %36 = alloca [64 x %struct.ImVec2], align 16    ; 7 uses
  %37 = alloca %"struct.ImGuizmo::vec_t", align 8 ; 7 uses
  %38 = alloca %struct.ImVec2, align 8            ; 4 uses
  %39 = alloca [65 x %struct.ImVec2], align 16    ; 8 uses
  %i.j = alloca [512 x i8], align 16              ; 5 uses
  %40 = alloca %struct.ImVec2, align 8            ; 4 uses
  %41 = alloca %struct.ImVec2, align 8            ; 4 uses
  %42 = alloca [3 x %"struct.ImGuizmo::vec_t"], align 16 ; 12 uses
  %i.k = alloca [3 x i32], align 4                ; 12 uses
  %43 = alloca [4 x %"struct.ImGuizmo::vec_t"], align 16 ; 18 uses
  %44 = alloca %"struct.ImGuizmo::matrix_t", align 4 ; 14 uses
  %45 = alloca %struct.ImVec2, align 8            ; 7 uses
  %46 = alloca %struct.ImVec2, align 8            ; 4 uses
  %47 = alloca %struct.ImVec2, align 8            ; 4 uses
  %48 = alloca %struct.ImVec2, align 8            ; 5 uses
  %49 = alloca %"struct.ImGuizmo::vec_t", align 4 ; 3 uses
  %i.l = alloca [2 x i32], align 4                ; 5 uses
  %50 = alloca %"struct.ImGuizmo::matrix_t", align 8 ; 17 uses
  %i.m = alloca [512 x i8], align 16              ; 5 uses
  %51 = alloca %struct.ImVec2, align 8            ; 4 uses
  %52 = alloca %struct.ImVec2, align 8            ; 4 uses
  %53 = alloca [7 x %"struct.ImGuizmo::vec_t"], align 16 ; 11 uses
  %i.n = alloca [3 x float], align 4              ; 6 uses
  %54 = alloca %"struct.ImGuizmo::vec_t", align 16 ; 9 uses
  %55 = alloca %"struct.ImGuizmo::matrix_t", align 16 ; 8 uses
  %56 = alloca %"struct.ImGuizmo::matrix_t", align 16 ; 6 uses
  %57 = alloca %"struct.ImGuizmo::vec_t", align 4 ; 3 uses
  %58 = alloca [7 x %"struct.ImGuizmo::vec_t"], align 16 ; 16 uses
  %59 = alloca [4 x %"struct.ImGuizmo::vec_t"], align 16 ; 8 uses
  %60 = alloca %"struct.ImGuizmo::matrix_t", align 16 ; 7 uses
  %61 = alloca %"struct.ImGuizmo::matrix_t", align 4 ; 4 uses
  %62 = alloca %"struct.ImGuizmo::matrix_t", align 4 ; 4 uses
  %63 = alloca %"struct.ImGuizmo::matrix_t", align 4 ; 4 uses
  %64 = alloca %"struct.ImGuizmo::matrix_t", align 8 ; 9 uses
  store i32 %3, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 8), align 8, !tbaa !69
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 12), ptr noundef nonnull readonly align 4 dereferenceable(64) %0, i64 64, i1 false), !tbaa.struct !70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 76), ptr noundef nonnull readonly align 4 dereferenceable(64) %1, i64 64, i1 false), !tbaa.struct !70
  %i.o = icmp eq i32 %3, 0
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), ptr noundef nonnull readonly align 4 dereferenceable(64) %4, i64 64, i1 false), !tbaa.struct !70
  %i.p = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), align 4, !tbaa !10 ; 3 uses
  %i.q = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 144), align 8, !tbaa !14 ; 2 uses
  %i.r = fmul float %i.q, %i.q
  %i.s = extractelement <4 x float> %i.p, i64 0   ; 2 uses
  %i.t = tail call float @llvm.fmuladd.f32(float %i.s, float %i.s, float %i.r)
  %i.u = extractelement <4 x float> %i.p, i64 2   ; 2 uses
  %i.v = tail call float @llvm.fmuladd.f32(float %i.u, float %i.u, float %i.t)
  %sqrt.i.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.v)
  %i.w = fdiv float 1.000000e+00, %sqrt.i.i.i.i
  %i.x = insertelement <4 x float> poison, float %i.w, i64 0
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> zeroinitializer
  %i.z = fmul <4 x float> %i.y, %i.p
  store <4 x float> %i.z, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), align 4, !tbaa !10
  %i.aa = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 156), align 4, !tbaa !10 ; 3 uses
  %i.ab = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 160), align 8, !tbaa !14
  %i.ac = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 180), align 4, !tbaa !13 ; 2 uses
  %i.ad = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 172), align 4, !tbaa !10 ; 3 uses
  %i.ae = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 176), align 8, !tbaa !14
  %i.af = insertelement <2 x float> %i.ad, float %i.ab, i64 0 ; 2 uses
  %i.ag = fmul <2 x float> %i.af, %i.af
  %i.ah = shufflevector <4 x float> %i.aa, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> %i.ad, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.ai, <2 x float> %i.ag)
  %i.ak = shufflevector <4 x float> %i.aa, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.al = insertelement <2 x float> %i.ak, float %i.ac, i64 1 ; 2 uses
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %i.al, <2 x float> %i.aj)
  %i.an = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.am)
  %i.ao = fdiv <2 x float> splat (float 1.000000e+00), %i.an ; 2 uses
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <4 x i32> zeroinitializer
  %i.aq = fmul <4 x float> %i.ap, %i.aa
  store <4 x float> %i.aq, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 156), align 4, !tbaa !10
  %i.ar = extractelement <2 x float> %i.ao, i64 1 ; 4 uses
  %i.as = extractelement <2 x float> %i.ad, i64 0
  %i.at = fmul float %i.as, %i.ar
  store float %i.at, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 172), align 4, !tbaa !12
  %i.au = fmul float %i.ae, %i.ar
  store float %i.au, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 176), align 8, !tbaa !14
  %i.av = fmul float %i.ac, %i.ar
  store float %i.av, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 180), align 4, !tbaa !13
  %i.aw = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 184), align 8, !tbaa !15
  %i.ax = fmul float %i.ar, %i.aw
  br label %_ZN8ImGuizmoL14ComputeContextEPKfS1_PfNS_4MODEE.exit

bb.c:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 48
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), align 4, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 144), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 160), align 8, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 164), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 180), align 4, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ba = load float, ptr %i.az, align 4, !tbaa !13
  %i.bb = load <2 x float>, ptr %i.ay, align 4, !tbaa !10
  store <2 x float> %i.bb, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10
  store float %i.ba, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !13
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 200), align 8, !tbaa !15
  br label %_ZN8ImGuizmoL14ComputeContextEPKfS1_PfNS_4MODEE.exit

_ZN8ImGuizmoL14ComputeContextEPKfS1_PfNS_4MODEE.exit: ; preds = %bb.b, %bb.c
  %.sink.i = phi float [ %i.ax, %bb.b ], [ 0.000000e+00, %bb.c ]
  store float %.sink.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 184), align 8, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), ptr noundef nonnull readonly align 4 dereferenceable(64) %4, i64 64, i1 false), !tbaa.struct !70
  %65 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 276), align 4
  %66 = shufflevector <4 x float> %65, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bc = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 292), align 4, !tbaa !13
  %i.bd = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 300), align 4, !tbaa !12 ; 2 uses
  %i.be = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 304), align 8, !tbaa !14 ; 2 uses
  %i.bf = fmul float %i.be, %i.be
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.bd, float %i.bf)
  %i.bh = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 308), align 4, !tbaa !13 ; 2 uses
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.bh, float %i.bg)
  %sqrt.i12.i = tail call noundef float @llvm.sqrt.f32(float %i.bi)
  %i.bj = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), align 4, !tbaa !10 ; 2 uses
  %i.bk = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 284), align 4, !tbaa !10 ; 2 uses
  %i.bl = shufflevector <2 x float> %i.bj, <2 x float> %i.bk, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bm = fmul <2 x float> %i.bl, %i.bl
  %i.bn = shufflevector <2 x float> %i.bj, <2 x float> %i.bk, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.bn, <2 x float> %i.bm)
  %i.bp = insertelement <2 x float> %66, float %i.bc, i64 1 ; 2 uses
  %i.bq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.bp, <2 x float> %i.bo)
  %i.br = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.bq)
  store <2 x float> %i.br, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 524), align 4, !tbaa !10
  store float %sqrt.i12.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 532), align 4, !tbaa !13
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 536), align 8, !tbaa !15
  %i.bs = tail call noundef float @_ZN8ImGuizmo8matrix_t7InverseERKS0_b(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 204), ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), i1 noundef zeroext false) ; 0 uses
  %i.bt = tail call noundef float @_ZN8ImGuizmo8matrix_t7InverseERKS0_b(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 332), ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), i1 noundef zeroext false) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #19
  call void @_ZN8ImGuizmo21FPU_MatrixF_x_MatrixFEPKfS1_Pf(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 12), ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 76), ptr noundef nonnull align 4 dereferenceable(64) %62)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), ptr noundef nonnull align 4 dereferenceable(64) %62, i64 64, i1 false), !tbaa.struct !70
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #19
  call void @_ZN8ImGuizmo21FPU_MatrixF_x_MatrixFEPKfS1_Pf(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), ptr noundef nonnull align 4 dereferenceable(64) %63)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 396), ptr noundef nonnull align 4 dereferenceable(64) %63, i64 64, i1 false), !tbaa.struct !70
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #19
  %i.bu = call noundef float @_ZN8ImGuizmo8matrix_t7InverseERKS0_b(ptr noundef nonnull align 4 dereferenceable(64) %64, ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 12), i1 noundef zeroext false) ; 0 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %64, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 572), ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i64 16, i1 false), !tbaa.struct !17
  %i.bw = getelementptr inbounds nuw i8, ptr %64, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 540), ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i64 16, i1 false), !tbaa.struct !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 556), ptr noundef nonnull align 8 dereferenceable(16) %64, i64 16, i1 false), !tbaa.struct !17
  %i.bx = getelementptr inbounds nuw i8, ptr %64, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 588), ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i64 16, i1 false), !tbaa.struct !17
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %64, i64 8
  %.sroa.8.0.copyload.i = load float, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !10
  %67 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 456), align 8
  %i.by = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 220), align 4, !tbaa !16
  %i.bz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 416), align 8, !tbaa !16 ; 2 uses
  %i.ca = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 424), align 8, !tbaa !16
  %68 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 440), align 8
  %i.cb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 204), align 4, !tbaa !16
  %i.cc = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 236), align 4, !tbaa !16
  %i.cd = load <2 x float>, ptr %64, align 8, !tbaa !10 ; 2 uses
  %i.ce = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 224), align 8
  %i.cf = insertelement <2 x float> %i.cd, float %i.bz, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ch = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.by, i64 1
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> %i.ce, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cj = fmul <4 x float> %i.cg, %i.ci
  %i.ck = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 208), align 8
  %i.cl = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.cb, i64 1
  %i.cm = shufflevector <4 x float> %i.cl, <4 x float> %i.ck, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cn = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 240), align 8
  %i.co = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.cc, i64 1
  %i.cp = shufflevector <4 x float> %i.co, <4 x float> %i.cn, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cq = shufflevector <4 x float> %68, <4 x float> poison, <2 x i32> zeroinitializer
  %i.cr = shufflevector <4 x float> %67, <4 x float> poison, <2 x i32> zeroinitializer
  %i.cs = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 408), align 8, !tbaa !16 ; 2 uses
  %i.ct = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 412), align 4, !tbaa !16
  %i.cu = fmul float %i.ct, 0.000000e+00
  %i.cv = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 396), align 4, !tbaa !16 ; 3 uses
  %i.cw = extractelement <2 x float> %i.cv, i64 0
  %i.cx = shufflevector <2 x float> %i.cv, <2 x float> %i.cd, <4 x i32> <i32 1, i32 2, i32 2, i32 2>
  %i.cy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cx, <4 x float> %i.cm, <4 x float> %i.cj)
  %i.cz = shufflevector <2 x float> %i.cs, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.da = insertelement <3 x float> %i.cz, float %i.ca, i64 0
  %i.db = insertelement <3 x float> %i.da, float %i.bz, i64 2
  %i.dc = shufflevector <3 x float> %i.db, <3 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 2>
  %i.dd = shufflevector <2 x float> %i.cs, <2 x float> %i.cv, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.de = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 428), align 4, !tbaa !16 ; 2 uses
  %i.df = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 444), align 4, !tbaa !16
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dh = shufflevector <2 x float> %i.de, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.di = insertelement <4 x float> %i.dh, float %.sroa.8.0.copyload.i, i64 1
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.cw, float 0.000000e+00, float %i.cu)
  %i.dl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dj, <4 x float> %i.cp, <4 x float> %i.cy) ; 5 uses
  %i.dm = shufflevector <4 x float> %i.dl, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.dn = insertelement <2 x float> %i.dm, float 0.000000e+00, i64 1
  %i.do = shufflevector <4 x float> %i.dl, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 2, i32 2, i32 2>
  %i.dp = fmul <4 x float> %i.do, %i.dc
  %i.dq = shufflevector <4 x float> %i.dl, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 1, i32 1, i32 1>
  %i.dr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dq, <4 x float> %i.dd, <4 x float> %i.dp) ; 2 uses
  %i.ds = shufflevector <4 x float> %i.dr, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dn, <2 x float> %i.cq, <2 x float> %i.ds)
  %i.du = fadd <2 x float> %i.cr, %i.dt           ; 3 uses
  %i.dv = shufflevector <2 x float> %i.du, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.dw = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.du)
  %i.dx = fcmp ogt <2 x float> %i.dw, splat (float f0x34000000)
  %i.dy = shufflevector <4 x float> %i.dl, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 4, i32 5, i32 3, i32 3>
  %i.dz = shufflevector <2 x float> %i.de, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ea = insertelement <4 x float> %i.dz, float -0.000000e+00, i64 1
  %i.eb = shufflevector <4 x float> %i.ea, <4 x float> %i.dz, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ec = shufflevector <4 x float> %i.dl, <4 x float> %i.dr, <4 x i32> <i32 poison, i32 0, i32 6, i32 7>
  %i.ed = insertelement <4 x float> %i.ec, float %i.dk, i64 0
  %i.ee = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dy, <4 x float> %i.eb, <4 x float> %i.ed)
  %i.ef = fadd <4 x float> %i.dg, %i.ee           ; 4 uses
  %i.eg = fdiv <4 x float> splat (float 1.000000e+00), %i.dv
  %i.eh = fmul <4 x float> %i.ef, %i.eg
  %i.ei = shufflevector <2 x i1> %i.dx, <2 x i1> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.ej = select <4 x i1> %i.ei, <4 x float> %i.eh, <4 x float> %i.ef ; 4 uses
  %shift = shufflevector <4 x float> %i.ej, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fsub <4 x float> %shift, %i.ej
  %i.ek = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %shift212 = shufflevector <4 x float> %i.ej, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop213 = fsub <4 x float> %shift212, %i.ej
  %i.el = extractelement <4 x float> %foldExtExtBinop213, i64 1
  %i.em = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 988), align 4, !tbaa !29
  %i.en = fdiv float %i.el, %i.em                 ; 2 uses
  %i.eo = fmul float %i.en, %i.en
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.ek, float %i.ek, float %i.eo)
  %sqrt.i13.i = tail call noundef float @llvm.sqrt.f32(float %i.ep)
  %i.eq = fdiv float 1.000000e-01, %sqrt.i13.i
  store float %i.eq, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8, !tbaa !46
  %i.er = extractelement <2 x float> %i.du, i64 1
  %i.es = fdiv float 5.000000e-01, %i.er          ; 2 uses
  %i.et = extractelement <4 x float> %i.ef, i64 0
  %i.eu = fmul float %i.et, %i.es
  %i.ev = extractelement <4 x float> %i.ef, i64 1
  %i.ew = fmul float %i.ev, %i.es
  %i.ex = fadd float %i.ew, 5.000000e-01
  %i.ey = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.eu, i64 0
  %i.ez = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.ex, i64 1
  %i.fa = fsub <2 x float> %i.ey, %i.ez
  %i.fb = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10
  %i.fc = fmul <2 x float> %i.fb, %i.fa
  %i.fd = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10
  %i.fe = fadd <2 x float> %i.fd, %i.fc           ; 2 uses
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <2 x float> %i.fe, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 640), align 8, !tbaa !10
  %i.fg = fadd <4 x float> %i.ff, <float -1.000000e+01, float -1.000000e+01, float 1.000000e+01, float 1.000000e+01>
  store <4 x float> %i.fg, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 648), align 8, !tbaa !10
  %i.fh = tail call noundef nonnull align 8 dereferenceable(5464) ptr @_ZN5ImGui5GetIOEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #19
  call void @_ZN8ImGuizmo21FPU_MatrixF_x_MatrixFEPKfS1_Pf(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 12), ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 76), ptr noundef nonnull align 4 dereferenceable(64) %61)
  %i.fi = call noundef float @_ZN8ImGuizmo8matrix_t7InverseERKS0_b(ptr noundef nonnull align 4 dereferenceable(64) %60, ptr noundef nonnull align 4 dereferenceable(64) %61, i1 noundef zeroext false) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #19
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 288
  %i.fk = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !25
  %i.fl = load <2 x float>, ptr %i.fj, align 8, !tbaa !10
  %i.fm = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10
  %i.fn = fsub <2 x float> %i.fl, %i.fm           ; 2 uses
  %i.fo = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 976), align 8, !tbaa !26
  %i.fp = extractelement <2 x float> %i.fn, i64 1
  %i.fq = fdiv float %i.fp, %i.fo
  %i.fr = getelementptr inbounds nuw i8, ptr %60, i64 16
  %i.fs = getelementptr inbounds nuw i8, ptr %60, i64 32
  %i.ft = getelementptr inbounds nuw i8, ptr %60, i64 48
  %i.fu = extractelement <2 x float> %i.fn, i64 0
  %i.fv = fdiv float %i.fu, %i.fk
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.fv, float 2.000000e+00, float -1.000000e+00)
  %i.fx = fsub float 1.000000e+00, %i.fq
  %i.fy = tail call float @llvm.fmuladd.f32(float %i.fx, float 2.000000e+00, float -1.000000e+00)
  %i.fz = load <4 x float>, ptr %60, align 16, !tbaa !16
  %i.ga = load <4 x float>, ptr %i.fr, align 16, !tbaa !16
  %i.gb = insertelement <4 x float> poison, float %i.fy, i64 0
  %i.gc = shufflevector <4 x float> %i.gb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gd = fmul <4 x float> %i.ga, %i.gc
  %i.ge = insertelement <4 x float> poison, float %i.fw, i64 0
  %i.gf = shufflevector <4 x float> %i.ge, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gf, <4 x float> %i.fz, <4 x float> %i.gd) ; 3 uses
  %i.gh = load <4 x float>, ptr %i.fs, align 16, !tbaa !16 ; 3 uses
  %i.gi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gh, <4 x float> zeroinitializer, <4 x float> %i.gg)
  %i.gj = load <4 x float>, ptr %i.ft, align 16, !tbaa !16 ; 3 uses
  %i.gk = fadd <4 x float> %i.gj, %i.gi           ; 2 uses
  %i.gl = extractelement <4 x float> %i.gk, i64 3
  %i.gm = fdiv float 1.000000e+00, %i.gl
  %i.gn = insertelement <4 x float> poison, float %i.gm, i64 0
  %i.go = shufflevector <4 x float> %i.gn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gp = fmul <4 x float> %i.gk, %i.go           ; 3 uses
  store <4 x float> %i.gp, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 604), align 4, !tbaa !10
  %i.gq = shufflevector <4 x float> %i.gh, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.gr = shufflevector <4 x float> %i.gg, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.gs = fadd <2 x float> %i.gq, %i.gr
  %i.gt = shufflevector <4 x float> %i.gj, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.gu = fadd <2 x float> %i.gt, %i.gs           ; 2 uses
  %i.gv = extractelement <2 x float> %i.gu, i64 1
  %i.gw = shufflevector <4 x float> %i.gp, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.gx = shufflevector <4 x float> %i.gh, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.gy = shufflevector <4 x float> %i.gg, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.gz = fadd <2 x float> %i.gx, %i.gy
  %i.ha = shufflevector <4 x float> %i.gj, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.hb = fadd <2 x float> %i.ha, %i.gz
  %i.hc = fdiv float 1.000000e+00, %i.gv
  %i.hd = insertelement <2 x float> poison, float %i.hc, i64 0
  %i.he = shufflevector <2 x float> %i.hd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hf = fmul <2 x float> %i.hb, %i.he
  %i.hg = fmul <2 x float> %i.gu, %i.he
  %i.hh = shufflevector <4 x float> %i.gp, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.hi = fsub <2 x float> %i.hf, %i.hh           ; 4 uses
  %i.hj = fsub <2 x float> %i.hg, %i.gw           ; 2 uses
  %foldExtExtBinop215 = fmul <2 x float> %i.hi, %i.hi
  %i.hk = extractelement <2 x float> %foldExtExtBinop215, i64 1
  %i.hl = extractelement <2 x float> %i.hi, i64 0 ; 2 uses
  %i.hm = tail call float @llvm.fmuladd.f32(float %i.hl, float %i.hl, float %i.hk)
  %i.hn = extractelement <2 x float> %i.hj, i64 0 ; 2 uses
  %i.ho = tail call float @llvm.fmuladd.f32(float %i.hn, float %i.hn, float %i.hm)
  %sqrt.i.i.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ho)
  %i.hp = fdiv float 1.000000e+00, %sqrt.i.i.i.i.i
  %i.hq = insertelement <2 x float> poison, float %i.hp, i64 0
  %i.hr = shufflevector <2 x float> %i.hq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hs = fmul <2 x float> %i.hi, %i.hr
  %i.ht = fmul <2 x float> %i.hj, %i.hr
  store <2 x float> %i.hs, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 620), align 4, !tbaa !10
  store <2 x float> %i.ht, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 628), align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #19
  %.not25 = icmp eq ptr %5, null                  ; 4 uses
  br i1 %.not25, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN8ImGuizmoL14ComputeContextEPKfS1_PfNS_4MODEE.exit
  store float 1.000000e+00, ptr %5, align 4, !tbaa !12
  %i.hu = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.hv = getelementptr inbounds nuw i8, ptr %5, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hu, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.hv, align 4, !tbaa !14
  %i.hw = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.hx = getelementptr inbounds nuw i8, ptr %5, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hw, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.hx, align 4, !tbaa !13
  %i.hy = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.hz = getelementptr inbounds nuw i8, ptr %5, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hy, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.hz, align 4, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN8ImGuizmoL14ComputeContextEPKfS1_PfNS_4MODEE.exit
  %i.ia = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 404), align 4, !tbaa !16
  %i.ib = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 420), align 4, !tbaa !16
  %i.ic = fmul float %i.ib, 0.000000e+00
  %i.id = tail call float @llvm.fmuladd.f32(float %i.ia, float 0.000000e+00, float %i.ic)
  %i.ie = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 436), align 4, !tbaa !16
  %i.if = tail call float @llvm.fmuladd.f32(float %i.ie, float 0.000000e+00, float %i.id)
  %i.ig = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 452), align 4, !tbaa !16
  %i.ih = fadd float %i.ig, %i.if
  %i.ii = fcmp olt float %i.ih, 1.000000e-03
  br i1 %i.ii, label %_ZN8ImGuizmoL20DrawTranslationGizmoEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ij = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 685), align 1, !tbaa !50, !range !33, !noundef !34
  %i.ik = trunc nuw i8 %i.ij to i1
  %.not = xor i1 %i.ik, true
  %i.il = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !range !33
  %i.im = trunc nuw i8 %i.il to i1
  %or.cond3 = select i1 %.not, i1 true, i1 %i.im
  br i1 %or.cond3, label %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  switch i32 %2, label %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit [
    i32 1, label %bb.h
    i32 0, label %bb.af
    i32 2, label %bb.ay
  ]

bb.h:                                             ; preds = %bb.g
  %i.in = tail call noundef nonnull align 8 dereferenceable(5464) ptr @_ZN5ImGui5GetIOEv()
end_hunk_1
begin_hunk_2_@_ZN8ImGuizmo10ManipulateEPKfS1_NS_9OPERATIONENS_4MODEEPfS4_S4_S4_S4_:bb.a
  %i.aps = shufflevector <4 x float> %i.apr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apt = fmul <4 x float> %i.aps, %i.apk
  store <4 x float> %i.apt, ptr %i.ama, align 16, !tbaa !10
  %i.apu = load <2 x float>, ptr %i.anj, align 4, !tbaa !10 ; 3 uses
  %i.apv = load <2 x float>, ptr %i.amb, align 16, !tbaa !10 ; 2 uses
  %i.apw = extractelement <2 x float> %i.apu, i64 0
  %i.apx = fmul float %i.apw, %i.aob
  %i.apy = shufflevector <2 x float> %i.apu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.apz = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.apy, <4 x i32> <i32 poison, i32 poison, i32 5, i32 3>
  %i.aqa = shufflevector <2 x float> %i.apv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aqb = shufflevector <4 x float> %i.aqa, <4 x float> %i.apz, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.aqc = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.apx, i64 0
  %i.aqd = shufflevector <2 x float> %i.apu, <2 x float> %i.apv, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.aqe = fmul <4 x float> %i.aqd, %i.aoc
  %i.aqf = shufflevector <4 x float> %i.aqc, <4 x float> %i.aqe, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.aqg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aqb, <4 x float> %i.anz, <4 x float> %i.aqf) ; 3 uses
  %i.aqh = shufflevector <4 x float> %i.aqb, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.aqi = fneg <4 x float> %i.aqg
  %i.aqj = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.aqi, <4 x i32> <i32 6, i32 poison, i32 poison, i32 3>
  %i.aqk = fneg <4 x float> %i.aqg
  %i.aql = shufflevector <4 x float> %i.aqj, <4 x float> %i.aqk, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.aqm = fmul <4 x float> %i.aqh, %i.aql
  %i.aqn = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.aqa, <4 x i32> <i32 poison, i32 poison, i32 4, i32 3>
  %i.aqo = shufflevector <4 x float> %i.apy, <4 x float> %i.aqn, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aqp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aqo, <4 x float> %i.aqg, <4 x float> %i.aqm) ; 5 uses
  %foldExtExtBinop238 = fmul <4 x float> %i.aqp, %i.aqp
  %i.aqq = extractelement <4 x float> %foldExtExtBinop238, i64 1
  %i.aqr = extractelement <4 x float> %i.aqp, i64 0 ; 2 uses
  %i.aqs = call float @llvm.fmuladd.f32(float %i.aqr, float %i.aqr, float %i.aqq)
  %i.aqt = extractelement <4 x float> %i.aqp, i64 2 ; 2 uses
  %i.aqu = call float @llvm.fmuladd.f32(float %i.aqt, float %i.aqt, float %i.aqs)
  %sqrt.i.i.2.i = call noundef float @llvm.sqrt.f32(float %i.aqu)
  %i.aqv = fdiv float 1.000000e+00, %sqrt.i.i.2.i
  %i.aqw = insertelement <4 x float> poison, float %i.aqv, i64 0
  %i.aqx = shufflevector <4 x float> %i.aqw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqy = fmul <4 x float> %i.aqx, %i.aqp
  store <4 x float> %i.aqy, ptr %i.amb, align 16, !tbaa !10
  %i.aqz = zext nneg i32 %i.alw to i64
  %i.ara = getelementptr [16 x i8], ptr %58, i64 %i.aqz ; 3 uses
  %i.arb = getelementptr i8, ptr %i.ara, i64 -16
  %i.arc = load float, ptr %i.arb, align 16, !tbaa !12 ; 3 uses
  %i.ard = getelementptr i8, ptr %i.ara, i64 -12
  %i.are = load float, ptr %i.ard, align 4, !tbaa !14 ; 3 uses
  %i.arf = getelementptr i8, ptr %i.ara, i64 -8
  %i.arg = fmul float %i.are, %i.are
  %i.arh = call float @llvm.fmuladd.f32(float %i.arc, float %i.arc, float %i.arg)
  %i.ari = extractelement <2 x float> %i.anm, i64 0
  %i.arj = extractelement <2 x float> %i.anm, i64 1
  %i.ark = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 612), align 4, !tbaa !10 ; 2 uses
  %i.arl = load <2 x float>, ptr %i.arf, align 8, !tbaa !10 ; 2 uses
  %i.arm = extractelement <2 x float> %i.arl, i64 0 ; 2 uses
  %i.arn = call float @llvm.fmuladd.f32(float %i.arm, float %i.arm, float %i.arh)
  %sqrt.i.i.i.i.i33 = call noundef float @llvm.sqrt.f32(float %i.arn)
  %i.aro = fdiv float 1.000000e+00, %sqrt.i.i.i.i.i33 ; 3 uses
  %i.arp = fmul float %i.arc, %i.aro              ; 4 uses
  %i.arq = fmul float %i.are, %i.aro              ; 4 uses
  %i.arr = insertelement <2 x float> poison, float %i.aro, i64 0
  %i.ars = shufflevector <2 x float> %i.arr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.art = fmul <2 x float> %i.arl, %i.ars        ; 3 uses
  %i.aru = fmul float %i.ari, %i.arq
  %i.arv = call float @llvm.fmuladd.f32(float %i.arp, float %i.ank, float %i.aru)
  %i.arw = extractelement <2 x float> %i.art, i64 0 ; 2 uses
  %i.arx = call float @llvm.fmuladd.f32(float %i.arw, float %i.arj, float %i.arv)
  %.sroa.02.0.vec.insert.i.i34 = insertelement <2 x float> poison, float %i.arp, i64 0
  %.sroa.02.4.vec.insert.i.i35 = insertelement <2 x float> %.sroa.02.0.vec.insert.i.i34, float %i.arq, i64 1
  %i.ary = insertelement <2 x float> %i.ark, float %i.amm, i64 1
  store <2 x float> %.sroa.02.4.vec.insert.i.i35, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 688), align 8, !tbaa !10
  %i.arz = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 628), align 4, !tbaa !10 ; 2 uses
  %i.asa = extractelement <2 x float> %i.arz, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 720), ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), i64 16, i1 false), !tbaa.struct !17
  %i.asb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8, !tbaa !46
  %i.asc = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 620), align 4, !tbaa !10 ; 3 uses
  %i.asd = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 604), align 4, !tbaa !10 ; 3 uses
  %i.ase = extractelement <2 x float> %i.asd, i64 1
  %i.asf = fmul float %i.arq, %i.ase
  %i.asg = extractelement <2 x float> %i.asd, i64 0
  %i.ash = call float @llvm.fmuladd.f32(float %i.arp, float %i.asg, float %i.asf)
  %i.asi = insertelement <2 x float> poison, float %i.ash, i64 0
  %i.asj = insertelement <2 x float> %i.asi, float %i.arx, i64 1
  %i.ask = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.art, <2 x float> %i.ary, <2 x float> %i.asj) ; 3 uses
  %i.asl = shufflevector <2 x float> %i.art, <2 x float> %i.ask, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.asl, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 696), align 8, !tbaa !10
  %i.asm = extractelement <2 x float> %i.asc, i64 1
  %i.asn = fmul float %i.arq, %i.asm
  %shift240 = shufflevector <2 x float> %i.ask, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop241 = fsub <2 x float> %i.ask, %shift240
  %i.aso = extractelement <2 x float> %foldExtExtBinop241, i64 0
  %i.asp = fneg float %i.aso
  %i.asq = extractelement <2 x float> %i.asc, i64 0
  %i.asr = call float @llvm.fmuladd.f32(float %i.arp, float %i.asq, float %i.asn)
  %i.ass = call noundef float @llvm.fmuladd.f32(float %i.arw, float %i.asa, float %i.asr) ; 2 uses
  %i.ast = call float @llvm.fabs.f32(float %i.ass)
  %i.asu = fcmp olt float %i.ast, f0x34000000
  %i.asv = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.asp, i64 0
  %i.asw = insertelement <2 x float> poison, float %i.ass, i64 0
  %i.asx = insertelement <2 x float> %i.asw, float %i.asb, i64 1
  %i.asy = fdiv <2 x float> %i.asv, %i.asx        ; 3 uses
  %i.asz = extractelement <2 x float> %i.asy, i64 0
  %.0.i111.i = select i1 %i.asu, float -1.000000e+00, float %i.asz
  %i.ata = insertelement <2 x float> poison, float %.0.i111.i, i64 0
  %i.atb = shufflevector <2 x float> %i.ata, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.atc = fmul <2 x float> %i.asc, %i.atb
  %i.atd = fmul <2 x float> %i.arz, %i.atb
  %i.ate = fadd <2 x float> %i.asd, %i.atc        ; 2 uses
  %i.atf = fadd <2 x float> %i.ark, %i.atd        ; 2 uses
  store <2 x float> %i.ate, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 704), align 8, !tbaa !10
  store <2 x float> %i.atf, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 712), align 8, !tbaa !10
  %i.atg = shufflevector <2 x float> %i.anm, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ath = insertelement <2 x float> %i.atg, float %i.ank, i64 0
  %i.ati = fsub <2 x float> %i.ate, %i.ath
  %i.atj = shufflevector <2 x float> %i.asy, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.atk = fmul <2 x float> %i.atj, %i.ati
  %i.atl = insertelement <2 x float> %i.atg, float %i.amm, i64 1
  %i.atm = fsub <2 x float> %i.atf, %i.atl
  %i.atn = shufflevector <2 x float> %i.asy, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ato = fmul <2 x float> %i.atn, %i.atm
  store <2 x float> %i.atk, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 668), align 4, !tbaa !10
  store <2 x float> %i.ato, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 676), align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #19
  br label %_ZN8ImGuizmoL11CanActivateEv.exit.i31

_ZN8ImGuizmoL11CanActivateEv.exit.i31:            ; preds = %bb.aw, %bb.ax, %bb.av, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #19
  br label %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit

bb.ay:                                            ; preds = %bb.g
  %i.atp = tail call noundef nonnull align 8 dereferenceable(5464) ptr @_ZN5ImGui5GetIOEv() ; 3 uses
  %i.atq = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32, !range !33, !noundef !34
  %i.atr = trunc nuw i8 %i.atq to i1
  br i1 %i.atr, label %_ZN8ImGuizmoL11CanActivateEv.exit.i52, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ats = tail call fastcc noundef i32 @_ZN8ImGuizmoL12GetScaleTypeEv() ; 7 uses
  %.not.i51 = icmp eq i32 %i.ats, 0               ; 2 uses
  br i1 %.not.i51, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  tail call void @_ZN5ImGui19CaptureMouseFromAppEb(i1 noundef zeroext true)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.att = tail call noundef zeroext i1 @_ZN5ImGui14IsMouseClickedEib(i32 noundef 0, i1 noundef zeroext false)
  br i1 %i.att, label %bb.bc, label %_ZN8ImGuizmoL11CanActivateEv.exit.i52

bb.bc:                                            ; preds = %bb.bb
  %i.atu = tail call noundef zeroext i1 @_ZN5ImGui16IsAnyItemHoveredEv()
  br i1 %i.atu, label %_ZN8ImGuizmoL11CanActivateEv.exit.i52, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.atv = tail call noundef zeroext i1 @_ZN5ImGui15IsAnyItemActiveEv() ; 2 uses
  %brmerge171 = or i1 %.not.i51, %i.atv
  %.mux172 = select i1 %i.atv, i32 %i.ats, i32 0
  br i1 %brmerge171, label %_ZN8ImGuizmoL11CanActivateEv.exit.i52, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32
  store i32 %i.ats, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 960), align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %53, ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 156), i64 16, i1 false), !tbaa.struct !17
  %i.atw = getelementptr inbounds nuw i8, ptr %53, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.atw, ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 172), i64 16, i1 false), !tbaa.struct !17
  %i.atx = getelementptr inbounds nuw i8, ptr %53, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.atx, ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), i64 16, i1 false), !tbaa.struct !17
  %i.aty = getelementptr inbounds nuw i8, ptr %53, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aty, ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 172), i64 16, i1 false), !tbaa.struct !17
  %i.atz = getelementptr inbounds nuw i8, ptr %53, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.atz, ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 156), i64 16, i1 false), !tbaa.struct !17
  %i.aua = getelementptr inbounds nuw i8, ptr %53, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aua, ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), i64 16, i1 false), !tbaa.struct !17
  %i.aub = getelementptr inbounds nuw i8, ptr %53, i64 96
  %i.auc = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 572), align 4, !tbaa !10
  %i.aud = fneg <2 x float> %i.auc
  %i.aue = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 580), align 4, !tbaa !10
  %i.auf = fneg <2 x float> %i.aue
  store <2 x float> %i.aud, ptr %i.aub, align 16
  %i.aug = getelementptr inbounds nuw i8, ptr %53, i64 104
  store <2 x float> %i.auf, ptr %i.aug, align 8
  %i.auh = zext nneg i32 %i.ats to i64
  %i.aui = getelementptr [16 x i8], ptr %53, i64 %i.auh ; 3 uses
  %i.auj = getelementptr i8, ptr %i.aui, i64 -192
  %i.auk = getelementptr i8, ptr %i.aui, i64 -188
  %i.aul = getelementptr i8, ptr %i.aui, i64 -184
  %i.aum = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !12 ; 2 uses
  %i.aun = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !14 ; 2 uses
  %i.auo = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 620), align 4, !tbaa !12 ; 2 uses
  %i.aup = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 624), align 8, !tbaa !14 ; 2 uses
  %i.auq = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 612), align 4, !tbaa !10 ; 2 uses
  %i.aur = load <2 x float>, ptr %i.aul, align 8, !tbaa !10 ; 2 uses
  %i.aus = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !10 ; 3 uses
  %i.aut = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 200), align 8, !tbaa !15
  %i.auu = extractelement <2 x float> %i.aus, i64 0
  %i.auv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 604), align 4, !tbaa !12 ; 2 uses
  %i.auw = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 608), align 8, !tbaa !14 ; 2 uses
  %i.aux = shufflevector <2 x float> %i.auq, <2 x float> %i.aus, <2 x i32> <i32 0, i32 3>
  %i.auy = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 628), align 4, !tbaa !10 ; 2 uses
  %i.auz = extractelement <2 x float> %i.auy, i64 0
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 720), ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), i64 16, i1 false), !tbaa.struct !17
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 760), align 8, !tbaa !10
  %i.ava = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8, !tbaa !46
  %i.avb = insertelement <2 x float> %i.aus, float %i.aut, i64 1
  %69 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 276), align 4
  %70 = shufflevector <4 x float> %69, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.avc = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 292), align 4, !tbaa !13
  %i.avd = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), align 4, !tbaa !10 ; 2 uses
  %i.ave = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 284), align 4, !tbaa !10 ; 2 uses
  %i.avf = shufflevector <2 x float> %i.avd, <2 x float> %i.ave, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.avg = fmul <2 x float> %i.avf, %i.avf
  %i.avh = shufflevector <2 x float> %i.avd, <2 x float> %i.ave, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.avi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.avh, <2 x float> %i.avh, <2 x float> %i.avg)
  %i.avj = insertelement <2 x float> %70, float %i.avc, i64 1 ; 2 uses
  %i.avk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.avj, <2 x float> %i.avj, <2 x float> %i.avi)
  %i.avl = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.avk)
  %i.avm = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 308), align 4, !tbaa !13
  %i.avn = load <2 x float>, ptr %i.auj, align 16, !tbaa !10 ; 3 uses
  %i.avo = load float, ptr %i.auk, align 4, !tbaa !14
  %i.avp = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 300), align 4, !tbaa !10 ; 2 uses
  %i.avq = shufflevector <2 x float> %i.avn, <2 x float> %i.avp, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.avr = fmul <2 x float> %i.avq, %i.avq
  %i.avs = shufflevector <2 x float> %i.avn, <2 x float> %i.avp, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.avt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.avs, <2 x float> %i.avs, <2 x float> %i.avr)
  %i.avu = insertelement <2 x float> %i.aur, float %i.avm, i64 1 ; 2 uses
  %i.avv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.avu, <2 x float> %i.avu, <2 x float> %i.avt)
  %i.avw = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.avv) ; 2 uses
  %i.avx = extractelement <2 x float> %i.avw, i64 0
  %i.avy = fdiv float 1.000000e+00, %i.avx        ; 3 uses
  %i.avz = extractelement <2 x float> %i.avn, i64 0
  %i.awa = fmul float %i.avz, %i.avy              ; 4 uses
  %i.awb = fmul float %i.avo, %i.avy              ; 4 uses
  %i.awc = insertelement <2 x float> poison, float %i.avy, i64 0
  %i.awd = shufflevector <2 x float> %i.awc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.awe = fmul <2 x float> %i.aur, %i.awd        ; 3 uses
  %i.awf = fmul float %i.aun, %i.awb
  %i.awg = tail call float @llvm.fmuladd.f32(float %i.awa, float %i.aum, float %i.awf)
  %i.awh = extractelement <2 x float> %i.awe, i64 0 ; 2 uses
  %i.awi = tail call float @llvm.fmuladd.f32(float %i.awh, float %i.auu, float %i.awg)
  %.sroa.02.0.vec.insert.i.i75 = insertelement <2 x float> poison, float %i.awa, i64 0
  %.sroa.02.4.vec.insert.i.i76 = insertelement <2 x float> %.sroa.02.0.vec.insert.i.i75, float %i.awb, i64 1
  %i.awj = fmul float %i.awb, %i.auw
  %i.awk = tail call float @llvm.fmuladd.f32(float %i.awa, float %i.auv, float %i.awj)
  %i.awl = insertelement <2 x float> poison, float %i.awk, i64 0
  %i.awm = insertelement <2 x float> %i.awl, float %i.awi, i64 1
  %i.awn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.awe, <2 x float> %i.aux, <2 x float> %i.awm) ; 3 uses
  %i.awo = shufflevector <2 x float> %i.awe, <2 x float> %i.awn, <2 x i32> <i32 0, i32 3>
  store <2 x float> %.sroa.02.4.vec.insert.i.i76, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 688), align 8, !tbaa !10
  store <2 x float> %i.awo, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 696), align 8, !tbaa !10
  %i.awp = fmul float %i.awb, %i.aup
  %shift243 = shufflevector <2 x float> %i.awn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop244 = fsub <2 x float> %i.awn, %shift243
  %i.awq = extractelement <2 x float> %foldExtExtBinop244, i64 0
  %i.awr = fneg float %i.awq
  %i.aws = tail call float @llvm.fmuladd.f32(float %i.awa, float %i.auo, float %i.awp)
  %i.awt = tail call noundef float @llvm.fmuladd.f32(float %i.awh, float %i.auz, float %i.aws) ; 2 uses
  %i.awu = tail call float @llvm.fabs.f32(float %i.awt)
  %i.awv = fcmp olt float %i.awu, f0x34000000
  %i.aww = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.awr, i64 0
  %i.awx = insertelement <2 x float> poison, float %i.awt, i64 0
  %i.awy = insertelement <2 x float> %i.awx, float %i.ava, i64 1
  %i.awz = fdiv <2 x float> %i.aww, %i.awy        ; 3 uses
  %i.axa = extractelement <2 x float> %i.awz, i64 0
  %.0.i45.i = select i1 %i.awv, float -1.000000e+00, float %i.axa ; 3 uses
  %i.axb = fmul float %i.auo, %.0.i45.i
  %i.axc = fmul float %i.aup, %.0.i45.i
  %i.axd = insertelement <2 x float> poison, float %.0.i45.i, i64 0
  %i.axe = shufflevector <2 x float> %i.axd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.axf = fmul <2 x float> %i.auy, %i.axe
  %i.axg = fadd float %i.auv, %i.axb              ; 2 uses
  %i.axh = fadd float %i.auw, %i.axc              ; 2 uses
  %i.axi = fadd <2 x float> %i.auq, %i.axf        ; 2 uses
  %.sroa.0.0.vec.insert.i.i52.i = insertelement <2 x float> poison, float %i.axg, i64 0
  %.sroa.0.4.vec.insert.i.i53.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i52.i, float %i.axh, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i53.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 704), align 8, !tbaa !10
  store <2 x float> %i.axi, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 712), align 8, !tbaa !10
  %i.axj = fsub float %i.axg, %i.aum
  %i.axk = fsub float %i.axh, %i.aun
  %i.axl = extractelement <2 x float> %i.awz, i64 1 ; 2 uses
  %i.axm = fmul float %i.axj, %i.axl
  %i.axn = fmul float %i.axk, %i.axl
  %i.axo = fsub <2 x float> %i.axi, %i.avb
  %i.axp = shufflevector <2 x float> %i.awz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.axq = fmul <2 x float> %i.axo, %i.axp
  %.sroa.0.0.vec.insert.i.i64.i = insertelement <2 x float> poison, float %i.axm, i64 0
  %.sroa.0.4.vec.insert.i.i65.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i64.i, float %i.axn, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i65.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 668), align 4, !tbaa !10
  store <2 x float> %i.axq, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 676), align 4, !tbaa !10
  %i.axr = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.avw, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.avl, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 776), align 8, !tbaa !10
  store <2 x float> %i.axr, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 784), align 8, !tbaa !10
  %i.axs = getelementptr inbounds nuw i8, ptr %i.atp, i64 288
  %i.axt = load float, ptr %i.axs, align 8, !tbaa !42
  store float %i.axt, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 792), align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #19
  br label %_ZN8ImGuizmoL11CanActivateEv.exit.i52

_ZN8ImGuizmoL11CanActivateEv.exit.i52:            ; preds = %bb.bd, %bb.be, %bb.bc, %bb.bb, %bb.ay
  %.4 = phi i32 [ 0, %bb.ay ], [ %i.ats, %bb.bc ], [ %.mux172, %bb.bd ], [ %i.ats, %bb.bb ], [ %i.ats, %bb.be ]
  %i.axu = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32, !range !33, !noundef !34
  %i.axv = trunc nuw i8 %i.axu to i1
  br i1 %i.axv, label %bb.bf, label %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit

bb.bf:                                            ; preds = %_ZN8ImGuizmoL11CanActivateEv.exit.i52
  tail call void @_ZN5ImGui19CaptureMouseFromAppEb(i1 noundef zeroext true)
  %i.axw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 960), align 8, !tbaa !71
  %i.axx = add i32 %i.axw, -12                    ; 2 uses
  %or.cond.i53 = icmp ult i32 %i.axx, 3
  br i1 %or.cond.i53, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.axy = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 612), align 4, !tbaa !13 ; 2 uses
  %i.axz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 696), align 8, !tbaa !13 ; 2 uses
  %i.aya = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 628), align 4, !tbaa !13 ; 2 uses
  %i.ayb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 688), align 8, !tbaa !12 ; 2 uses
  %i.ayc = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 620), align 4, !tbaa !12 ; 2 uses
  %i.ayd = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 692), align 4, !tbaa !14 ; 2 uses
  %i.aye = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 624), align 8, !tbaa !14 ; 2 uses
  %i.ayf = fmul float %i.ayd, %i.aye
  %i.ayg = tail call float @llvm.fmuladd.f32(float %i.ayb, float %i.ayc, float %i.ayf)
  %i.ayh = tail call noundef float @llvm.fmuladd.f32(float %i.axz, float %i.aya, float %i.ayg) ; 2 uses
  %i.ayi = tail call float @llvm.fabs.f32(float %i.ayh)
  %i.ayj = fcmp olt float %i.ayi, f0x34000000
  %i.ayk = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 604), align 4, !tbaa !12 ; 2 uses
  %i.ayl = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 608), align 8, !tbaa !14 ; 2 uses
  %i.aym = fmul float %i.ayd, %i.ayl
  %i.ayn = tail call float @llvm.fmuladd.f32(float %i.ayb, float %i.ayk, float %i.aym)
  %i.ayo = tail call noundef float @llvm.fmuladd.f32(float %i.axz, float %i.axy, float %i.ayn)
  %i.ayp = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 700), align 4, !tbaa !15
  %i.ayq = fsub float %i.ayo, %i.ayp
  %i.ayr = fneg float %i.ayq
  %i.ays = fdiv float %i.ayr, %i.ayh
  %.0.i75.i = select i1 %i.ayj, float -1.000000e+00, float %i.ays ; 3 uses
  %i.ayt = fmul float %i.aya, %.0.i75.i
  %i.ayu = fadd float %i.axy, %i.ayt
  %i.ayv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8, !tbaa !46 ; 3 uses
  %i.ayw = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 676), align 4, !tbaa !13
  %i.ayx = fmul float %i.ayv, %i.ayw
  %i.ayy = fsub float %i.ayu, %i.ayx
  %i.ayz = fmul float %i.aye, %.0.i75.i
  %i.aza = fadd float %i.ayl, %i.ayz
  %i.azb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 672), align 8, !tbaa !14
  %i.azc = fmul float %i.ayv, %i.azb
  %i.azd = fsub float %i.aza, %i.azc
  %i.aze = fmul float %i.ayc, %.0.i75.i
  %i.azf = fadd float %i.ayk, %i.aze
  %i.azg = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 668), align 4, !tbaa !12
  %i.azh = fmul float %i.ayv, %i.azg
  %i.azi = fsub float %i.azf, %i.azh
  %i.azj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !12 ; 2 uses
  %i.azk = fsub float %i.azi, %i.azj
  %i.azl = zext nneg i32 %i.axx to i64            ; 2 uses
  %i.azm = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), i64 %i.azl ; 2 uses
  %i.azn = getelementptr inbounds nuw i8, ptr %i.azm, i64 4
  %i.azo = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 704), align 8, !tbaa !12
  %i.azp = fsub float %i.azo, %i.azj              ; 2 uses
  %i.azq = load float, ptr %i.azm, align 4, !tbaa !12 ; 3 uses
  %i.azr = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !10 ; 3 uses
  %i.azs = extractelement <2 x float> %i.azr, i64 1
  %i.azt = fsub float %i.ayy, %i.azs
  %i.azu = extractelement <2 x float> %i.azr, i64 0
  %i.azv = fsub float %i.azd, %i.azu
  %i.azw = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 708), align 4, !tbaa !10
  %i.azx = fsub <2 x float> %i.azw, %i.azr        ; 3 uses
  %i.azy = load <2 x float>, ptr %i.azn, align 8, !tbaa !10 ; 5 uses
  %i.azz = extractelement <2 x float> %i.azy, i64 0
  %i.baa = fmul float %i.azz, %i.azv
  %i.bab = tail call float @llvm.fmuladd.f32(float %i.azq, float %i.azk, float %i.baa)
  %i.bac = extractelement <2 x float> %i.azy, i64 1
  %i.bad = tail call noundef float @llvm.fmuladd.f32(float %i.bac, float %i.azt, float %i.bab) ; 2 uses
  %i.bae = fmul float %i.azq, %i.bad
  %i.baf = insertelement <2 x float> poison, float %i.bad, i64 0
  %i.bag = shufflevector <2 x float> %i.baf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bah = fmul <2 x float> %i.azy, %i.bag
  %i.bai = fadd float %i.azp, %i.bae
  %i.baj = fadd <2 x float> %i.azx, %i.bah        ; 2 uses
  %i.bak = shufflevector <2 x float> %i.azy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bal = shufflevector <2 x float> %i.baj, <2 x float> %i.azx, <2 x i32> <i32 0, i32 2>
  %i.bam = fmul <2 x float> %i.bak, %i.bal
  %i.ban = insertelement <2 x float> poison, float %i.azq, i64 0
  %i.bao = shufflevector <2 x float> %i.ban, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bap = insertelement <2 x float> poison, float %i.bai, i64 0
  %i.baq = insertelement <2 x float> %i.bap, float %i.azp, i64 1
  %i.bar = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bao, <2 x float> %i.baq, <2 x float> %i.bam)
  %i.bas = shufflevector <2 x float> %i.azy, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bat = shufflevector <2 x float> %i.baj, <2 x float> %i.azx, <2 x i32> <i32 1, i32 3>
  %i.bau = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bas, <2 x float> %i.bat, <2 x float> %i.bar) ; 2 uses
  %i.bav = extractelement <2 x float> %i.bau, i64 0
  %i.baw = extractelement <2 x float> %i.bau, i64 1
  %i.bax = fdiv float %i.bav, %i.baw              ; 2 uses
  %i.bay = fcmp ogt float %i.bax, 1.000000e-03
  %i.baz = select i1 %i.bay, float %i.bax, float 1.000000e-03
  %i.bba = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 760), i64 %i.azl
  store float %i.baz, ptr %i.bba, align 4, !tbaa !10
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.atp, i64 288
  %i.bbc = load float, ptr %i.bbb, align 8, !tbaa !42
  %i.bbd = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 792), align 8, !tbaa !74
  %i.bbe = fsub float %i.bbc, %i.bbd
  %i.bbf = fmul float %i.bbe, f0x3C23D70A
  %i.bbg = fadd float %i.bbf, 1.000000e+00        ; 2 uses
  %i.bbh = fcmp ogt float %i.bbg, 1.000000e-03
  %i.bbi = select i1 %i.bbh, float %i.bbg, float 1.000000e-03
  %i.bbj = insertelement <4 x float> poison, float %i.bbi, i64 0
  %i.bbk = shufflevector <4 x float> %i.bbj, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.bbk, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 760), align 8, !tbaa !10
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.not43.i = icmp eq ptr %6, null
  br i1 %.not43.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #19
  %i.bbl = load float, ptr %6, align 4, !tbaa !10 ; 3 uses
  store float %i.bbl, ptr %i.n, align 4, !tbaa !10
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store float %i.bbl, ptr %i.bbm, align 4, !tbaa !10
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store float %i.bbl, ptr %i.bbn, align 4, !tbaa !10
  call fastcc void @_ZN8ImGuizmoL11ComputeSnapERNS_5vec_tEPf(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 760), ptr noundef %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #19
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.bbo = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 760), align 8, !tbaa !10 ; 2 uses
  %i.bbp = fcmp ogt <2 x float> %i.bbo, splat (float 1.000000e-03)
  %i.bbq = select <2 x i1> %i.bbp, <2 x float> %i.bbo, <2 x float> splat (float 1.000000e-03) ; 3 uses
  store <2 x float> %i.bbq, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 760), align 8, !tbaa !10
  %i.bbr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 768), align 8, !tbaa !10 ; 2 uses
  %i.bbs = fcmp ogt float %i.bbr, 1.000000e-03
  %i.bbt = select i1 %i.bbs, float %i.bbr, float 1.000000e-03 ; 2 uses
  store float %i.bbt, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 768), align 8, !tbaa !10
  %i.bbu = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 776), align 8, !tbaa !12
  %i.bbv = extractelement <2 x float> %i.bbq, i64 0
  %i.bbw = fmul float %i.bbv, %i.bbu
  %i.bbx = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 780), align 4, !tbaa !10
  %i.bby = shufflevector <2 x float> %i.bbq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bbz = insertelement <2 x float> %i.bby, float %i.bbt, i64 1
  %i.bca = fmul <2 x float> %i.bbz, %i.bbx        ; 2 uses
  %i.bcb = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), align 4, !tbaa !10 ; 3 uses
  %i.bcc = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 156), align 4, !tbaa !10 ; 2 uses
  %i.bcd = fmul <4 x float> %i.bcc, zeroinitializer ; 2 uses
  %i.bce = insertelement <4 x float> poison, float %i.bbw, i64 0
  %i.bcf = shufflevector <4 x float> %i.bce, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bcg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bcf, <4 x float> %i.bcb, <4 x float> %i.bcd)
  %i.bch = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 172), align 4, !tbaa !10 ; 4 uses
  %i.bci = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bch, <4 x float> zeroinitializer, <4 x float> %i.bcg)
  %i.bcj = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10 ; 4 uses
  %i.bck = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bcj, <4 x float> zeroinitializer, <4 x float> %i.bci)
  store <4 x float> %i.bck, ptr %4, align 4
  %.sroa.7.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bcl = shufflevector <2 x float> %i.bca, <2 x float> poison, <4 x i32> zeroinitializer
  %i.bcm = fmul <4 x float> %i.bcl, %i.bcc
  %i.bcn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bcb, <4 x float> zeroinitializer, <4 x float> %i.bcm)
  %i.bco = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bch, <4 x float> zeroinitializer, <4 x float> %i.bcn)
  %i.bcp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bcj, <4 x float> zeroinitializer, <4 x float> %i.bco)
  store <4 x float> %i.bcp, ptr %.sroa.7.0..sroa_idx.i57, align 4
  %.sroa.11.0..sroa_idx.i61 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bcq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bcb, <4 x float> zeroinitializer, <4 x float> %i.bcd) ; 2 uses
  %i.bcr = shufflevector <2 x float> %i.bca, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bcs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bcr, <4 x float> %i.bch, <4 x float> %i.bcq)
  %i.bct = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bcj, <4 x float> zeroinitializer, <4 x float> %i.bcs)
  store <4 x float> %i.bct, ptr %.sroa.11.0..sroa_idx.i61, align 4
  %.sroa.15.0..sroa_idx.i65 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bcu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bch, <4 x float> zeroinitializer, <4 x float> %i.bcq)
  %i.bcv = fadd <4 x float> %i.bcj, %i.bcu
  store <4 x float> %i.bcv, ptr %.sroa.15.0..sroa_idx.i65, align 4
  br i1 %.not25, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.bcw = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 760), align 8, !tbaa !12
  %i.bcx = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 764), align 4, !tbaa !14
  %i.bcy = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 768), align 8, !tbaa !13
  store float %i.bcw, ptr %5, align 4
  %.sroa.9136.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9136.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store float %i.bcx, ptr %.sroa.27.0..sroa_idx.i, align 4
  %.sroa.33.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.51.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.33.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store float %i.bcy, ptr %.sroa.51.0..sroa_idx.i, align 4
  %.sroa.57.0..sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %5, i64 44
  %.sroa.75.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.57.0..sroa_idx.i69, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.75.0..sroa_idx.i, align 4
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.atp, i64 296
  %i.bda = load i8, ptr %i.bcz, align 8, !tbaa !47, !range !33, !noundef !34
  %i.bdb = trunc nuw i8 %i.bda to i1
  br i1 %i.bdb, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.bdc = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 960), align 8, !tbaa !71
  br label %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit

_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit:    ; preds = %bb.bo, %_ZN8ImGuizmoL11CanActivateEv.exit.i52, %_ZN8ImGuizmoL11CanActivateEv.exit.i31, %bb.ar, %bb.ae, %_ZN8ImGuizmoL11CanActivateEv.exit.i, %bb.g, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ 0, %bb.g ], [ %i.alw, %_ZN8ImGuizmoL11CanActivateEv.exit.i31 ], [ %.1, %_ZN8ImGuizmoL11CanActivateEv.exit.i ], [ %i.aff, %bb.ae ], [ %i.alv, %bb.ar ], [ %i.bdc, %bb.bo ], [ %.4, %_ZN8ImGuizmoL11CanActivateEv.exit.i52 ] ; 18 uses
  %i.bdd = icmp eq ptr %7, null
  %i.bde = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !range !33
  %i.bdf = trunc nuw i8 %i.bde to i1
  %or.cond = select i1 %i.bdd, i1 true, i1 %i.bdf
  br i1 %or.cond, label %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit._crit_edge, label %bb.bp

_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit._crit_edge: ; preds = %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit
  %.pre = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !51, !range !33
  br label %bb.do

bb.bp:                                            ; preds = %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit
  %i.bdg = call noundef nonnull align 8 dereferenceable(5464) ptr @_ZN5ImGui5GetIOEv() ; 2 uses
  %i.bdh = load ptr, ptr @_ZN8ImGuizmoL8gContextE, align 8, !tbaa !31 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #19
  %i.bdi = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 880), align 8, !tbaa !75 ; 2 uses
  store i32 %i.bdi, ptr %i.k, align 4, !tbaa !52
  %i.bdj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !51, !range !33, !noundef !34
  %i.bdk = trunc nuw i8 %i.bdj to i1
  br i1 %i.bdk, label %.thread.thread.i, label %.preheader680.i

.preheader680.i:                                  ; preds = %bb.bp
  %i.bdl = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), align 4, !tbaa !16 ; 3 uses
  %i.bdm = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 284), align 4, !tbaa !16 ; 3 uses
  %i.bdn = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 300), align 4, !tbaa !16 ; 3 uses
  %i.bdo = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 276), align 4, !tbaa !16 ; 3 uses
  %i.bdp = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 292), align 4, !tbaa !16 ; 3 uses
  %i.bdq = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 308), align 4, !tbaa !16 ; 3 uses
  %i.bdr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 540), align 4, !tbaa !12
  %i.bds = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 316), align 4, !tbaa !12
  %i.bdt = fsub float %i.bdr, %i.bds              ; 2 uses
  %i.bdu = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 544), align 8, !tbaa !14
  %i.bdv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 320), align 8, !tbaa !14
  %i.bdw = fsub float %i.bdu, %i.bdv              ; 2 uses
  %i.bdx = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 548), align 4, !tbaa !13
  %i.bdy = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 324), align 4, !tbaa !13
  %i.bdz = fsub float %i.bdx, %i.bdy              ; 2 uses
  %.sroa.0624.0.copyload634.i = load <2 x float>, ptr @_ZN8ImGuizmoL14directionUnaryE, align 16, !tbaa !10 ; 2 uses
  %71 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 8), align 8
  %i.bea = shufflevector <2 x float> %.sroa.0624.0.copyload634.i, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.beb = fmul <2 x float> %i.bdp, %i.bea
  %i.bec = shufflevector <2 x float> %.sroa.0624.0.copyload634.i, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bed = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bec, <2 x float> %i.bdo, <2 x float> %i.beb)
  %i.bee = shufflevector <4 x float> %71, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bef = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bee, <2 x float> %i.bdq, <2 x float> %i.bed) ; 2 uses
  %i.beg = fmul <2 x float> %i.bdm, %i.bea
  %i.beh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bec, <2 x float> %i.bdl, <2 x float> %i.beg)
  %i.bei = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bee, <2 x float> %i.bdn, <2 x float> %i.beh) ; 3 uses
  %i.bej = insertelement <2 x float> %i.bei, float %i.bdw, i64 0 ; 2 uses
  %i.bek = fmul <2 x float> %i.bej, %i.bej
  %i.bel = shufflevector <2 x float> %i.bei, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bem = insertelement <2 x float> %i.bel, float %i.bdt, i64 0 ; 2 uses
  %i.ben = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bem, <2 x float> %i.bem, <2 x float> %i.bek)
  %i.beo = shufflevector <2 x float> %i.bef, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bep = insertelement <2 x float> %i.beo, float %i.bdz, i64 0 ; 2 uses
  %i.beq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bep, <2 x float> %i.bep, <2 x float> %i.ben)
  %i.ber = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.beq)
  %i.bes = fdiv <2 x float> splat (float 1.000000e+00), %i.ber ; 2 uses
  %i.bet = extractelement <2 x float> %i.bes, i64 0 ; 3 uses
  %i.beu = fmul float %i.bdt, %i.bet              ; 3 uses
  %i.bev = fmul float %i.bdw, %i.bet              ; 3 uses
  %i.bew = fmul float %i.bdz, %i.bet              ; 3 uses
  %i.bex = shufflevector <2 x float> %i.bes, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bey = fmul <2 x float> %i.bei, %i.bex        ; 4 uses
  %i.bez = fmul <2 x float> %i.bef, %i.bex        ; 3 uses
  %i.bfa = extractelement <2 x float> %i.bey, i64 1
  %i.bfb = fmul float %i.bev, %i.bfa
  %i.bfc = extractelement <2 x float> %i.bey, i64 0
  %i.bfd = call float @llvm.fmuladd.f32(float %i.beu, float %i.bfc, float %i.bfb)
  %i.bfe = extractelement <2 x float> %i.bez, i64 0
  %i.bff = call noundef float @llvm.fmuladd.f32(float %i.bew, float %i.bfe, float %i.bfd) ; 2 uses
  %i.bfg = call float @llvm.fabs.f32(float %i.bff) ; 2 uses
  %i.bfh = fcmp uno float %i.bff, 0.000000e+00
  br i1 %i.bfh, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.preheader680.i
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %.preheader680.i
  %.sroa.0658.1.i = phi <2 x float> [ zeroinitializer, %.preheader680.i ], [ %i.bey, %bb.bq ]
  %.sroa.10664.1.i = phi <2 x float> [ zeroinitializer, %.preheader680.i ], [ %i.bez, %bb.bq ]
  %.1165.i = phi float [ 0.000000e+00, %.preheader680.i ], [ %i.bfg, %bb.bq ] ; 2 uses
  %.1162.i = phi i32 [ %i.bdi, %.preheader680.i ], [ 0, %bb.bq ]
  %i.bfi = fcmp ult float %i.bfg, 1.000000e-01
  br i1 %i.bfi, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  store i32 0, ptr %i.k, align 4, !tbaa !52
  store <2 x float> %i.bey, ptr %42, align 16, !tbaa !10
  %.sroa.16642.0..sroa_idx643.i = getelementptr inbounds nuw i8, ptr %42, i64 8
  store <2 x float> %i.bez, ptr %.sroa.16642.0..sroa_idx643.i, align 8, !tbaa !10
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.1159.i = phi i32 [ 1, %bb.bs ], [ 0, %bb.br ] ; 3 uses
  %.sroa.0624.0.copyload634.1.i = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 16), align 16, !tbaa !10 ; 2 uses
  %72 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 24), align 8
  %i.bfj = shufflevector <2 x float> %.sroa.0624.0.copyload634.1.i, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bfk = fmul <2 x float> %i.bdp, %i.bfj
  %i.bfl = shufflevector <2 x float> %.sroa.0624.0.copyload634.1.i, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bfm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bfl, <2 x float> %i.bdo, <2 x float> %i.bfk)
  %i.bfn = shufflevector <4 x float> %72, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bfo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bfn, <2 x float> %i.bdq, <2 x float> %i.bfm) ; 2 uses
  %i.bfp = extractelement <2 x float> %i.bfo, i64 0 ; 2 uses
  %i.bfq = fmul <2 x float> %i.bdm, %i.bfj
  %i.bfr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bfl, <2 x float> %i.bdl, <2 x float> %i.bfq)
  %i.bfs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bfn, <2 x float> %i.bdn, <2 x float> %i.bfr) ; 4 uses
  %foldExtExtBinop246 = fmul <2 x float> %i.bfs, %i.bfs
  %i.bft = extractelement <2 x float> %foldExtExtBinop246, i64 1
  %i.bfu = extractelement <2 x float> %i.bfs, i64 0 ; 2 uses
  %i.bfv = call float @llvm.fmuladd.f32(float %i.bfu, float %i.bfu, float %i.bft)
  %i.bfw = call float @llvm.fmuladd.f32(float %i.bfp, float %i.bfp, float %i.bfv)
  %sqrt.i.i.1.i83 = call noundef float @llvm.sqrt.f32(float %i.bfw)
  %i.bfx = fdiv float 1.000000e+00, %sqrt.i.i.1.i83
  %i.bfy = insertelement <2 x float> poison, float %i.bfx, i64 0
  %i.bfz = shufflevector <2 x float> %i.bfy, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bga = fmul <2 x float> %i.bfs, %i.bfz        ; 4 uses
  %i.bgb = fmul <2 x float> %i.bfo, %i.bfz        ; 3 uses
  %i.bgc = extractelement <2 x float> %i.bga, i64 1
  %i.bgd = fmul float %i.bev, %i.bgc
  %i.bge = extractelement <2 x float> %i.bga, i64 0
  %i.bgf = call float @llvm.fmuladd.f32(float %i.beu, float %i.bge, float %i.bgd)
  %i.bgg = extractelement <2 x float> %i.bgb, i64 0
  %i.bgh = call noundef float @llvm.fmuladd.f32(float %i.bew, float %i.bgg, float %i.bgf)
  %i.bgi = call float @llvm.fabs.f32(float %i.bgh) ; 3 uses
  %i.bgj = fcmp ult float %i.bgi, %.1165.i
  br i1 %i.bgj, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.sroa.0658.1.1.i = phi <2 x float> [ %.sroa.0658.1.i, %bb.bt ], [ %i.bga, %bb.bu ]
  %.sroa.10664.1.1.i = phi <2 x float> [ %.sroa.10664.1.i, %bb.bt ], [ %i.bgb, %bb.bu ]
  %.1165.1.i = phi float [ %.1165.i, %bb.bt ], [ %i.bgi, %bb.bu ]
  %.1162.1.i = phi i32 [ %.1162.i, %bb.bt ], [ 1, %bb.bu ]
  %i.bgk = fcmp ult float %i.bgi, 1.000000e-01
  br i1 %i.bgk, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.bgl = zext nneg i32 %.1159.i to i64          ; 2 uses
  %i.bgm = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bgl
  store i32 1, ptr %i.bgm, align 4, !tbaa !52
  %i.bgn = getelementptr inbounds nuw [16 x i8], ptr %42, i64 %i.bgl ; 2 uses
  store <2 x float> %i.bga, ptr %i.bgn, align 16, !tbaa !10
  %.sroa.16642.0..sroa_idx643.1.i = getelementptr inbounds nuw i8, ptr %i.bgn, i64 8
  store <2 x float> %i.bgb, ptr %.sroa.16642.0..sroa_idx643.1.i, align 8, !tbaa !10
  %i.bgo = add nuw nsw i32 %.1159.i, 1
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.1159.1.i = phi i32 [ %i.bgo, %bb.bw ], [ %.1159.i, %bb.bv ] ; 4 uses
  %.sroa.0624.0.copyload634.2.i = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 32), align 16, !tbaa !10 ; 2 uses
  %.sroa.16642.8.vec.extract.2.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 40), align 8, !tbaa !10
  %i.bgp = shufflevector <2 x float> %.sroa.0624.0.copyload634.2.i, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bgq = fmul <2 x float> %i.bdp, %i.bgp
  %i.bgr = shufflevector <2 x float> %.sroa.0624.0.copyload634.2.i, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bgs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bgr, <2 x float> %i.bdo, <2 x float> %i.bgq)
  %i.bgt = insertelement <2 x float> poison, float %.sroa.16642.8.vec.extract.2.i, i64 0
  %i.bgu = shufflevector <2 x float> %i.bgt, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bgv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bgu, <2 x float> %i.bdq, <2 x float> %i.bgs) ; 2 uses
  %i.bgw = extractelement <2 x float> %i.bgv, i64 0 ; 2 uses
  %i.bgx = fmul <2 x float> %i.bdm, %i.bgp
  %i.bgy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bgr, <2 x float> %i.bdl, <2 x float> %i.bgx)
  %i.bgz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bgu, <2 x float> %i.bdn, <2 x float> %i.bgy) ; 4 uses
  %foldExtExtBinop248 = fmul <2 x float> %i.bgz, %i.bgz
  %i.bha = extractelement <2 x float> %foldExtExtBinop248, i64 1
  %i.bhb = extractelement <2 x float> %i.bgz, i64 0 ; 2 uses
  %i.bhc = call float @llvm.fmuladd.f32(float %i.bhb, float %i.bhb, float %i.bha)
  %i.bhd = call float @llvm.fmuladd.f32(float %i.bgw, float %i.bgw, float %i.bhc)
  %sqrt.i.i.2.i84 = call noundef float @llvm.sqrt.f32(float %i.bhd)
  %i.bhe = fdiv float 1.000000e+00, %sqrt.i.i.2.i84
  %i.bhf = insertelement <2 x float> poison, float %i.bhe, i64 0
  %i.bhg = shufflevector <2 x float> %i.bhf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bhh = fmul <2 x float> %i.bgz, %i.bhg        ; 4 uses
  %i.bhi = fmul <2 x float> %i.bgv, %i.bhg        ; 3 uses
  %i.bhj = extractelement <2 x float> %i.bhh, i64 1
  %i.bhk = fmul float %i.bev, %i.bhj
  %i.bhl = extractelement <2 x float> %i.bhh, i64 0
  %i.bhm = call float @llvm.fmuladd.f32(float %i.beu, float %i.bhl, float %i.bhk)
  %i.bhn = extractelement <2 x float> %i.bhi, i64 0
  %i.bho = call noundef float @llvm.fmuladd.f32(float %i.bew, float %i.bhn, float %i.bhm)
  %i.bhp = call float @llvm.fabs.f32(float %i.bho) ; 2 uses
  %i.bhq = fcmp ult float %i.bhp, %.1165.1.i      ; 3 uses
  %.sroa.0658.1.2.i = select i1 %i.bhq, <2 x float> %.sroa.0658.1.1.i, <2 x float> %i.bhh
  %.sroa.10664.1.2.i = select i1 %i.bhq, <2 x float> %.sroa.10664.1.1.i, <2 x float> %i.bhi
  %.1162.2.i = select i1 %i.bhq, i32 %.1162.1.i, i32 2 ; 4 uses
  %i.bhr = fcmp ult float %i.bhp, 1.000000e-01
  br i1 %i.bhr, label %bb.by, label %.thread747.i

.thread747.i:                                     ; preds = %bb.bx
  %i.bhs = zext nneg i32 %.1159.1.i to i64        ; 2 uses
  %i.bht = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bhs
  store i32 2, ptr %i.bht, align 4, !tbaa !52
  %i.bhu = getelementptr inbounds nuw [16 x i8], ptr %42, i64 %i.bhs ; 2 uses
  store <2 x float> %i.bhh, ptr %i.bhu, align 16, !tbaa !10
  %.sroa.16642.0..sroa_idx643.2.i = getelementptr inbounds nuw i8, ptr %i.bhu, i64 8
  store <2 x float> %i.bhi, ptr %.sroa.16642.0..sroa_idx643.2.i, align 8, !tbaa !10
  %i.bhv = add nuw nsw i32 %.1159.1.i, 1
  br label %.thread.i

bb.by:                                            ; preds = %bb.bx
  %i.bhw = icmp eq i32 %.1159.1.i, 0
  br i1 %i.bhw, label %bb.bz, label %.thread.i

bb.bz:                                            ; preds = %bb.by
  store i32 %.1162.2.i, ptr %i.k, align 4, !tbaa !52
  store <2 x float> %.sroa.0658.1.2.i, ptr %42, align 16, !tbaa !10
  %.sroa.10664.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %42, i64 8
  store <2 x float> %.sroa.10664.1.2.i, ptr %.sroa.10664.0..sroa_idx.i, align 8, !tbaa !10
  br label %.thread.thread.i

.thread.i:                                        ; preds = %bb.by, %.thread747.i
  %.1159.2749.i = phi i32 [ %i.bhv, %.thread747.i ], [ %.1159.1.i, %bb.by ] ; 3 uses
  %.pre.i85 = load i32, ptr %i.k, align 4, !tbaa !52 ; 3 uses
  %.not182.i = icmp eq i32 %.1162.2.i, %.pre.i85
  br i1 %.not182.i, label %.thread.thread.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.thread.i
  %wide.trip.count.i = zext nneg i32 %.1159.2749.i to i64
  br label %.preheader.i

bb.ca:                                            ; preds = %.preheader.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge713.i, label %.preheader.i, !llvm.loop !60

._crit_edge713.i:                                 ; preds = %bb.ca
  br label %split.i, !llvm.loop !60

.preheader.i:                                     ; preds = %bb.ca, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next.i, %bb.ca ] ; 3 uses
  %i.bhx = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.bhy = load i32, ptr %i.bhx, align 4, !tbaa !52
  %i.bhz = icmp eq i32 %i.bhy, %.1162.2.i
  br i1 %i.bhz, label %split.i, label %bb.ca

split.i:                                          ; preds = %.preheader.i, %._crit_edge713.i
  %i.bia = phi i32 [ %.pre.i85, %._crit_edge713.i ], [ %.1162.2.i, %.preheader.i ]
  %.0171.i = phi i64 [ 0, %._crit_edge713.i ], [ %indvars.iv.i, %.preheader.i ] ; 2 uses
  %i.bib = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.0171.i
  store i32 %i.bia, ptr %i.k, align 4, !tbaa !52
  store i32 %.pre.i85, ptr %i.bib, align 4, !tbaa !52
  %.sroa.0.0.copyload = load <4 x float>, ptr %42, align 16, !tbaa !10
  %i.bic = getelementptr inbounds nuw [16 x i8], ptr %42, i64 %.0171.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %42, ptr noundef nonnull align 16 dereferenceable(16) %i.bic, i64 16, i1 false), !tbaa.struct !17
  store <4 x float> %.sroa.0.0.copyload, ptr %i.bic, align 16, !tbaa !10
  br label %.thread.thread.i

.thread.thread.i:                                 ; preds = %split.i, %.thread.i, %bb.bz, %bb.bp
  %.3.i = phi i32 [ 1, %bb.bz ], [ %.1159.2749.i, %split.i ], [ %.1159.2749.i, %.thread.i ], [ 1, %bb.bp ]
  %i.bid = getelementptr inbounds nuw i8, ptr %44, i64 16
  %i.bie = getelementptr inbounds nuw i8, ptr %44, i64 32
  %i.bif = getelementptr inbounds nuw i8, ptr %44, i64 48
  %i.big = getelementptr inbounds nuw i8, ptr %44, i64 4
  %i.bih = getelementptr inbounds nuw i8, ptr %44, i64 12
  %i.bii = getelementptr inbounds nuw i8, ptr %44, i64 28
  %i.bij = getelementptr inbounds nuw i8, ptr %44, i64 44
  %i.bik = getelementptr inbounds nuw i8, ptr %44, i64 60
  %i.bil = getelementptr inbounds nuw i8, ptr %i.bdg, i64 288
  %i.bim = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.bin = getelementptr inbounds nuw i8, ptr %50, i64 4
  %i.bio = getelementptr inbounds nuw i8, ptr %50, i64 20
  %i.bip = getelementptr inbounds nuw i8, ptr %50, i64 24 ; 2 uses
  %i.biq = getelementptr inbounds nuw i8, ptr %50, i64 40 ; 2 uses
  %i.bir = getelementptr inbounds nuw i8, ptr %50, i64 44 ; 2 uses
  %i.bis = getelementptr inbounds nuw i8, ptr %50, i64 60 ; 2 uses
  %.not183.i = icmp eq ptr %8, null               ; 2 uses
  %i.bit = getelementptr inbounds nuw i8, ptr %50, i64 16
  %i.biu = getelementptr inbounds nuw i8, ptr %50, i64 32
  %i.biv = getelementptr inbounds nuw i8, ptr %50, i64 48
  %i.biw = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.bix = getelementptr inbounds nuw i8, ptr %50, i64 56
  %.sroa.7450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.11.0..sroa_idx.i92 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.15.0..sroa_idx.i95 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.biy = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.biz = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bja = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.bdg, i64 296
  %wide.trip.count711.i = zext nneg i32 %.3.i to i64 ; 2 uses
  %i.bjc = getelementptr inbounds nuw i8, ptr %43, i64 12
  %i.bjd = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 3 uses
  %i.bje = getelementptr inbounds nuw i8, ptr %43, i64 28
  %i.bjf = getelementptr inbounds nuw i8, ptr %43, i64 32 ; 3 uses
  %i.bjg = getelementptr inbounds nuw i8, ptr %43, i64 44
  %i.bjh = getelementptr inbounds nuw i8, ptr %43, i64 48 ; 3 uses
  %i.bji = getelementptr inbounds nuw i8, ptr %43, i64 60
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.thread.thread.i
  %indvars.iv708.i = phi i64 [ 0, %.thread.thread.i ], [ %indvars.iv708.i.be, %.backedge.backedge ] ; 4 uses
  %i.bjj = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv708.i
  %i.bjk = load i32, ptr %i.bjj, align 4, !tbaa !52 ; 4 uses
  %i.bjl = getelementptr inbounds nuw [16 x i8], ptr %42, i64 %indvars.iv708.i ; 2 uses
  %.sroa.0658.0.copyload661.i = load <2 x float>, ptr %i.bjl, align 16, !tbaa !10 ; 4 uses
  %.sroa.10664.0..sroa_idx665.i = getelementptr inbounds nuw i8, ptr %i.bjl, i64 8
  %.sroa.10664.0.copyload666.i = load <2 x float>, ptr %.sroa.10664.0..sroa_idx665.i, align 8, !tbaa !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #19
  %i.bjm = insertelement <2 x i32> poison, i32 %i.bjk, i64 0
  %i.bjn = shufflevector <2 x i32> %i.bjm, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bjo = add nuw nsw <2 x i32> %i.bjn, <i32 1, i32 2>
end_hunk_2
begin_hunk_3_@_ZN8ImGuizmo10ManipulateEPKfS1_NS_9OPERATIONENS_4MODEEPfS4_S4_S4_S4_:bb.a
  %i.bvz = fmul float %i.bvh, %.0.i281.i
  %i.bwa = insertelement <2 x float> poison, float %.0.i281.i, i64 0
  %i.bwb = shufflevector <2 x float> %i.bwa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bwc = fmul <2 x float> %i.bvo, %i.bwb
  %i.bwd = fadd float %i.bvd, %i.bvz
  %i.bwe = fadd <2 x float> %i.bvi, %i.bwc        ; 2 uses
  %i.bwf = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 816), align 8, !tbaa !12 ; 2 uses
  %i.bwg = fsub float %i.bwd, %i.bwf
  %i.bwh = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 820), align 4, !tbaa !14 ; 2 uses
  %i.bwi = extractelement <2 x float> %i.bwe, i64 0
  %i.bwj = fsub float %i.bwi, %i.bwh              ; 2 uses
  %i.bwk = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 824), align 8, !tbaa !13 ; 2 uses
  %i.bwl = extractelement <2 x float> %i.bwe, i64 1
  %i.bwm = fsub float %i.bwl, %i.bwk
  %i.bwn = call float @llvm.fabs.f32(float %i.bwg) ; 2 uses
  %i.bwo = call float @llvm.fabs.f32(float %i.bwm) ; 2 uses
  %i.bwp = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 832), align 8, !tbaa !12
  %i.bwq = fsub float %i.bwp, %i.bwf
  %i.bwr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 836), align 4, !tbaa !14
  %i.bws = fsub float %i.bwr, %i.bwh              ; 2 uses
  %i.bwt = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 840), align 8, !tbaa !13
  %i.bwu = fsub float %i.bwt, %i.bwk
  %i.bwv = call float @llvm.fabs.f32(float %i.bwq) ; 2 uses
  %i.bww = call float @llvm.fabs.f32(float %i.bwu) ; 2 uses
  %i.bwx = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 884), align 4, !tbaa !52 ; 2 uses
  %i.bwy = icmp eq i32 %i.bwx, -1
  br i1 %i.bwy, label %bb.db, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.bwz = sext i32 %i.bwx to i64                 ; 4 uses
  %i.bxa = getelementptr inbounds [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 896), i64 %i.bwz ; 3 uses
  %i.bxb = load float, ptr %i.bxa, align 8, !tbaa !12
  %i.bxc = call float @llvm.fabs.f32(float %i.bxb) ; 2 uses
  %i.bxd = getelementptr inbounds nuw i8, ptr %i.bxa, i64 4
  %i.bxe = load float, ptr %i.bxd, align 4, !tbaa !14 ; 2 uses
  %i.bxf = getelementptr inbounds nuw i8, ptr %i.bxa, i64 8
  %i.bxg = load float, ptr %i.bxf, align 8, !tbaa !13
  %i.bxh = call float @llvm.fabs.f32(float %i.bxg) ; 2 uses
  %i.bxi = fmul float %i.bws, %i.bxe
  %i.bxj = call float @llvm.fabs.f32(float %i.bxi)
  %i.bxk = call float @llvm.fmuladd.f32(float %i.bxc, float %i.bwv, float %i.bxj)
  %i.bxl = call float @llvm.fmuladd.f32(float %i.bxh, float %i.bww, float %i.bxk) ; 2 uses
  %i.bxm = getelementptr [4 x i8], ptr %7, i64 %i.bwz ; 2 uses
  %i.bxn = getelementptr i8, ptr %i.bxm, i64 12
  %i.bxo = load float, ptr %i.bxn, align 4, !tbaa !10
  %i.bxp = load float, ptr %i.bxm, align 4, !tbaa !10
  %i.bxq = fsub float %i.bxo, %i.bxp              ; 3 uses
  %i.bxr = fcmp ogt float %i.bxl, f0x34000000
  br i1 %i.bxr, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.bxs = fmul float %i.bwj, %i.bxe
  %i.bxt = call float @llvm.fabs.f32(float %i.bxs)
  %i.bxu = call float @llvm.fmuladd.f32(float %i.bxc, float %i.bwn, float %i.bxt)
  %i.bxv = call float @llvm.fmuladd.f32(float %i.bxh, float %i.bwo, float %i.bxu)
  %i.bxw = fadd float %i.bxv, 0.000000e+00
  %i.bxx = fdiv float %i.bxw, %i.bxl
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.0.i = phi float [ %i.bxx, %bb.ct ], [ 1.000000e+00, %bb.cs ] ; 3 uses
  br i1 %.not183.i, label %bb.da, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.bxy = fmul float %i.bxq, %.0.i               ; 6 uses
  %i.bxz = getelementptr inbounds [4 x i8], ptr %8, i64 %i.bwz
  %i.bya = load float, ptr %i.bxz, align 4, !tbaa !10 ; 4 uses
  %i.byb = fcmp ugt float %i.bya, f0x34000000
  br i1 %i.byb, label %bb.cw, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103

bb.cw:                                            ; preds = %bb.cv
  %i.byc = call float @fmodf(float noundef %i.bxy, float noundef %i.bya) #19 ; 3 uses
  %i.byd = call float @llvm.fabs.f32(float %i.byc)
  %i.bye = fdiv float %i.byd, %i.bya              ; 2 uses
  %i.byf = fcmp olt float %i.bye, 5.000000e-01
  br i1 %i.byf, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.byg = fsub float %i.bxy, %i.byc
  br label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103

bb.cy:                                            ; preds = %bb.cw
  %i.byh = fcmp ogt float %i.bye, 5.000000e-01
  br i1 %i.byh, label %bb.cz, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103

bb.cz:                                            ; preds = %bb.cy
  %i.byi = fsub float %i.bxy, %i.byc
  %i.byj = fcmp olt float %i.bxy, 0.000000e+00
  %i.byk = select i1 %i.byj, float -1.000000e+00, float 1.000000e+00
  %i.byl = call float @llvm.fmuladd.f32(float %i.bya, float %i.byk, float %i.byi)
  br label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103

_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103:         ; preds = %bb.cz, %bb.cy, %bb.cx, %bb.cv
  %.0671.i = phi float [ %i.bxy, %bb.cv ], [ %i.bxy, %bb.cy ], [ %i.byg, %bb.cx ], [ %i.byl, %bb.cz ]
  %i.bym = fcmp ogt float %i.bxq, f0x34000000
  %i.byn = fdiv float %.0671.i, %i.bxq
  %.1.i104 = select i1 %i.bym, float %i.byn, float %.0.i
  br label %bb.da

bb.da:                                            ; preds = %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103, %bb.cu
  %.2.i = phi float [ %.1.i104, %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103 ], [ %.0.i, %bb.cu ]
  %i.byo = getelementptr inbounds [16 x i8], ptr %50, i64 %i.bwz ; 2 uses
  %i.byp = load <4 x float>, ptr %i.byo, align 8, !tbaa !10
  %i.byq = insertelement <4 x float> poison, float %.2.i, i64 0
  %i.byr = shufflevector <4 x float> %i.byq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bys = fmul <4 x float> %i.byr, %i.byp
  store <4 x float> %i.bys, ptr %i.byo, align 8, !tbaa !10
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cr
  %i.byt = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 888), align 8, !tbaa !52 ; 2 uses
  %i.byu = icmp eq i32 %i.byt, -1
  br i1 %i.byu, label %bb.dl, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.byv = sext i32 %i.byt to i64                 ; 4 uses
  %i.byw = getelementptr inbounds [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 896), i64 %i.byv ; 3 uses
  %i.byx = load float, ptr %i.byw, align 8, !tbaa !12
  %i.byy = call float @llvm.fabs.f32(float %i.byx) ; 2 uses
  %i.byz = getelementptr inbounds nuw i8, ptr %i.byw, i64 4
  %i.bza = load float, ptr %i.byz, align 4, !tbaa !14 ; 2 uses
  %i.bzb = getelementptr inbounds nuw i8, ptr %i.byw, i64 8
  %i.bzc = load float, ptr %i.bzb, align 8, !tbaa !13
  %i.bzd = call float @llvm.fabs.f32(float %i.bzc) ; 2 uses
  %i.bze = fmul float %i.bws, %i.bza
  %i.bzf = call float @llvm.fabs.f32(float %i.bze)
  %i.bzg = call float @llvm.fmuladd.f32(float %i.byy, float %i.bwv, float %i.bzf)
  %i.bzh = call float @llvm.fmuladd.f32(float %i.bzd, float %i.bww, float %i.bzg) ; 2 uses
  %i.bzi = getelementptr [4 x i8], ptr %7, i64 %i.byv ; 2 uses
  %i.bzj = getelementptr i8, ptr %i.bzi, i64 12
  %i.bzk = load float, ptr %i.bzj, align 4, !tbaa !10
  %i.bzl = load float, ptr %i.bzi, align 4, !tbaa !10
  %i.bzm = fsub float %i.bzk, %i.bzl              ; 3 uses
  %i.bzn = fcmp ogt float %i.bzh, f0x34000000
  br i1 %i.bzn, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.bzo = fmul float %i.bwj, %i.bza
  %i.bzp = call float @llvm.fabs.f32(float %i.bzo)
  %i.bzq = call float @llvm.fmuladd.f32(float %i.byy, float %i.bwn, float %i.bzp)
  %i.bzr = call float @llvm.fmuladd.f32(float %i.bzd, float %i.bwo, float %i.bzq)
  %i.bzs = fadd float %i.bzr, 0.000000e+00
  %i.bzt = fdiv float %i.bzs, %i.bzh
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.0.1.i = phi float [ %i.bzt, %bb.dd ], [ 1.000000e+00, %bb.dc ] ; 3 uses
  br i1 %.not183.i, label %bb.dk, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.bzu = fmul float %i.bzm, %.0.1.i             ; 6 uses
  %i.bzv = getelementptr inbounds [4 x i8], ptr %8, i64 %i.byv
  %i.bzw = load float, ptr %i.bzv, align 4, !tbaa !10 ; 4 uses
  %i.bzx = fcmp ugt float %i.bzw, f0x34000000
  br i1 %i.bzx, label %bb.dg, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1.i

bb.dg:                                            ; preds = %bb.df
  %i.bzy = call float @fmodf(float noundef %i.bzu, float noundef %i.bzw) #19 ; 3 uses
  %i.bzz = call float @llvm.fabs.f32(float %i.bzy)
  %i.caa = fdiv float %i.bzz, %i.bzw              ; 2 uses
  %i.cab = fcmp olt float %i.caa, 5.000000e-01
  br i1 %i.cab, label %bb.dj, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.cac = fcmp ogt float %i.caa, 5.000000e-01
  br i1 %i.cac, label %bb.di, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1.i

bb.di:                                            ; preds = %bb.dh
  %i.cad = fsub float %i.bzu, %i.bzy
  %i.cae = fcmp olt float %i.bzu, 0.000000e+00
  %i.caf = select i1 %i.cae, float -1.000000e+00, float 1.000000e+00
  %i.cag = call float @llvm.fmuladd.f32(float %i.bzw, float %i.caf, float %i.cad)
  br label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1.i

bb.dj:                                            ; preds = %bb.dg
  %i.cah = fsub float %i.bzu, %i.bzy
  br label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1.i

_ZN8ImGuizmoL11ComputeSnapEPff.exit.1.i:          ; preds = %bb.dj, %bb.di, %bb.dh, %bb.df
  %.0671.1.i = phi float [ %i.bzu, %bb.df ], [ %i.bzu, %bb.dh ], [ %i.cah, %bb.dj ], [ %i.cag, %bb.di ]
  %i.cai = fcmp ogt float %i.bzm, f0x34000000
  %i.caj = fdiv float %.0671.1.i, %i.bzm
  %.1.1.i = select i1 %i.cai, float %i.caj, float %.0.1.i
  br label %bb.dk

bb.dk:                                            ; preds = %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1.i, %bb.de
  %.2.1.i = phi float [ %.1.1.i, %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1.i ], [ %.0.1.i, %bb.de ]
  %i.cak = getelementptr inbounds [16 x i8], ptr %50, i64 %i.byv ; 2 uses
  %i.cal = load <4 x float>, ptr %i.cak, align 8, !tbaa !10
  %i.cam = insertelement <4 x float> poison, float %.2.1.i, i64 0
  %i.can = shufflevector <4 x float> %i.cam, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cao = fmul <4 x float> %i.can, %i.cal
  store <4 x float> %i.cao, ptr %i.cak, align 8, !tbaa !10
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.db
  %i.cap = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 896), align 8, !tbaa !10 ; 4 uses
  %i.caq = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 912), align 8, !tbaa !10 ; 4 uses
  %i.car = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 928), align 8, !tbaa !10 ; 4 uses
  %i.cas = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 944), align 8, !tbaa !10 ; 4 uses
  %i.cat = load <2 x float>, ptr %i.biw, align 8, !tbaa !10 ; 4 uses
  %i.cau = shufflevector <2 x float> %i.cat, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.cav = load <2 x float>, ptr %i.bip, align 8, !tbaa !10 ; 4 uses
  %i.caw = shufflevector <2 x float> %i.cav, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cax = fmul <4 x float> %i.caw, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00> ; 3 uses
  %shift254 = shufflevector <4 x float> %i.cax, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop255 = fadd <4 x float> %i.cau, %shift254
  %i.cay = extractelement <2 x float> %i.cat, i64 0
  %shift257 = shufflevector <4 x float> %i.cax, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop258 = fadd <4 x float> %i.cau, %shift257
  %i.caz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cau, <4 x float> zeroinitializer, <4 x float> %i.cax) ; 4 uses
  %i.cba = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 868), align 4, !tbaa !14 ; 4 uses
  %i.cbb = load <3 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 864), align 8, !tbaa !10 ; 6 uses
  %i.cbc = extractelement <3 x float> %i.cbb, i64 0
  %i.cbd = extractelement <3 x float> %i.cbb, i64 2
  %i.cbe = load <2 x float>, ptr %i.biu, align 8, !tbaa !10 ; 7 uses
  %i.cbf = load <2 x float>, ptr %i.biv, align 8, !tbaa !10 ; 4 uses
  %i.cbg = load <2 x float>, ptr %i.bit, align 8, !tbaa !10 ; 5 uses
  %i.cbh = load <2 x float>, ptr %50, align 8, !tbaa !10 ; 6 uses
  %i.cbi = extractelement <2 x float> %i.cbe, i64 0 ; 2 uses
  %i.cbj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cbh, <2 x float> zeroinitializer, <2 x float> %i.cbg)
  %i.cbk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cbe, <2 x float> zeroinitializer, <2 x float> %i.cbj)
  %i.cbl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cbf, <2 x float> zeroinitializer, <2 x float> %i.cbk) ; 3 uses
  %i.cbm = fmul <2 x float> %i.cbl, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.cbn = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cbm)
  %i.cbo = fmul <2 x float> %i.cbg, zeroinitializer ; 2 uses
  %i.cbp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cbh, <2 x float> zeroinitializer, <2 x float> %i.cbo)
  %i.cbq = fadd <2 x float> %i.cbh, %i.cbo
  %i.cbr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cbe, <2 x float> zeroinitializer, <2 x float> %i.cbq)
  %i.cbs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cbf, <2 x float> zeroinitializer, <2 x float> %i.cbr) ; 4 uses
  %i.cbt = fmul <2 x float> %i.cbs, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.cbu = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cbt)
  %i.cbv = fadd <2 x float> %i.cbe, %i.cbp
  %i.cbw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cbf, <2 x float> zeroinitializer, <2 x float> %i.cbv) ; 3 uses
  %i.cbx = load float, ptr %i.bis, align 4, !tbaa !10 ; 3 uses
  %i.cby = load <2 x float>, ptr %i.biq, align 8, !tbaa !10 ; 3 uses
  %i.cbz = load float, ptr %i.bir, align 4, !tbaa !10 ; 3 uses
  %i.cca = shufflevector <2 x float> %i.cbl, <2 x float> %i.cbs, <4 x i32> <i32 0, i32 0, i32 2, i32 poison>
  %i.ccb = insertelement <4 x float> %i.cca, float %i.cbz, i64 3
  %i.ccc = shufflevector <2 x float> %i.cbl, <2 x float> %i.cbm, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.ccd = shufflevector <2 x float> %i.cbs, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cce = shufflevector <4 x float> %i.ccc, <4 x float> %i.ccd, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.ccf = shufflevector <4 x float> %i.cce, <4 x float> %i.caz, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ccg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ccb, <4 x float> zeroinitializer, <4 x float> %i.ccf) ; 4 uses
  %i.cch = extractelement <4 x float> %i.caz, i64 3
  %i.cci = fadd float %i.cbz, %i.cch
  %i.ccj = extractelement <2 x float> %i.cby, i64 0 ; 4 uses
  %i.cck = shufflevector <2 x float> %i.cby, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ccl = insertelement <2 x float> %i.cck, float %i.cbx, i64 0
  %i.ccm = shufflevector <2 x float> %i.ccl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ccn = shufflevector <4 x float> %i.ccg, <4 x float> %i.caz, <4 x i32> <i32 3, i32 4, i32 poison, i32 poison>
  %i.cco = insertelement <4 x float> %i.ccn, float %i.cci, i64 2
  %i.ccp = shufflevector <4 x float> %i.cco, <4 x float> %foldExtExtBinop258, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ccq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ccm, <4 x float> zeroinitializer, <4 x float> %i.ccp) ; 5 uses
  %i.ccr = load float, ptr %i.bix, align 8, !tbaa !10 ; 2 uses
  %i.ccs = extractelement <4 x float> %i.caz, i64 2
  %i.cct = shufflevector <2 x float> %i.cbs, <2 x float> %i.cby, <2 x i32> <i32 0, i32 3>
  %73 = shufflevector <2 x float> %i.cbt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %74 = shufflevector <4 x float> %foldExtExtBinop255, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %75 = shufflevector <2 x float> %73, <2 x float> %74, <2 x i32> <i32 0, i32 3>
  %i.ccu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cct, <2 x float> zeroinitializer, <2 x float> %75) ; 2 uses
  %i.ccv = extractelement <2 x float> %i.ccu, i64 0
  %i.ccw = fmul <2 x float> %i.cbw, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.ccx = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ccw)
  %i.ccy = fadd float %i.ccj, %i.ccs
  %i.ccz = shufflevector <2 x float> %i.cbw, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cda = insertelement <2 x float> %i.ccz, float %i.ccr, i64 0
  %i.cdb = shufflevector <2 x float> %i.cda, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cdc = shufflevector <2 x float> %i.cbw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cdd = shufflevector <4 x float> %i.ccq, <4 x float> %i.cdc, <4 x i32> <i32 3, i32 1, i32 poison, i32 5>
  %i.cde = insertelement <4 x float> %i.cdd, float %i.ccy, i64 2
  %i.cdf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cdb, <4 x float> zeroinitializer, <4 x float> %i.cde) ; 7 uses
  %foldExtExtBinop260 = fadd <4 x float> %i.ccg, %i.cdf
  %i.cdg = extractelement <4 x float> %i.cdf, i64 0
  %i.cdh = shufflevector <4 x float> %i.cdf, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0>
  %i.cdi = shufflevector <4 x float> %i.ccg, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.cdj = insertelement <4 x float> %i.cdi, float %i.cbn, i64 0
  %i.cdk = insertelement <4 x float> %i.cdj, float %i.cbu, i64 3
  %i.cdl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cdh, <4 x float> zeroinitializer, <4 x float> %i.cdk) ; 3 uses
  %i.cdm = fadd float %i.ccv, %i.cdg
  %i.cdn = shufflevector <4 x float> %i.cdf, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.cdo = insertelement <2 x float> %i.cdn, float %i.cbx, i64 1
  %i.cdp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cdo, <2 x float> zeroinitializer, <2 x float> %i.ccu) ; 3 uses
  %shift265 = shufflevector <2 x float> %i.cdp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop266 = fadd <2 x float> %i.cdp, %shift265
  %i.cdq = extractelement <4 x float> %i.cdf, i64 2 ; 2 uses
  %i.cdr = shufflevector <4 x float> %i.cdf, <4 x float> %i.cdc, <4 x i32> <i32 0, i32 2, i32 2, i32 4>
  %i.cds = shufflevector <4 x float> %i.ccg, <4 x float> %i.cdf, <4 x i32> <i32 2, i32 poison, i32 7, i32 poison>
  %i.cdt = insertelement <4 x float> %i.cds, float %i.ccx, i64 1
  %i.cdu = shufflevector <2 x float> %i.ccw, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cdv = shufflevector <4 x float> %i.cdt, <4 x float> %i.cdu, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.cdw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cdr, <4 x float> zeroinitializer, <4 x float> %i.cdv) ; 3 uses
  %i.cdx = extractelement <4 x float> %i.cdw, i64 3 ; 2 uses
  %i.cdy = fadd float %i.cdx, %i.cdq
  %i.cdz = call float @llvm.fmuladd.f32(float %i.cdq, float 0.000000e+00, float %i.cdx)
  %i.cea = extractelement <4 x float> %i.ccq, i64 2
  %i.ceb = fadd float %i.cdz, %i.cea
  %i.cec = shufflevector <2 x float> %foldExtExtBinop266, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ced = shufflevector <4 x float> %i.cdl, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.cee = shufflevector <4 x float> %i.ccq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cef = fadd <4 x float> %i.ced, %i.cee
  %i.ceg = insertelement <4 x float> poison, float %i.ceb, i64 0
  %i.ceh = shufflevector <4 x float> %i.ceg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cei = fneg float %i.cbc                      ; 3 uses
  %i.cej = fneg float %i.cba                      ; 3 uses
  %i.cek = fneg float %i.cbd                      ; 3 uses
  %i.cel = insertelement <2 x float> poison, float %i.cej, i64 0
  %i.cem = shufflevector <2 x float> %i.cel, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cen = fmul <2 x float> %i.cbg, %i.cem
  %i.ceo = insertelement <2 x float> poison, float %i.cei, i64 0
  %i.cep = shufflevector <2 x float> %i.ceo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ceq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cep, <2 x float> %i.cbh, <2 x float> %i.cen)
  %i.cer = insertelement <2 x float> poison, float %i.cek, i64 0
  %i.ces = shufflevector <2 x float> %i.cer, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cet = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ces, <2 x float> %i.cbe, <2 x float> %i.ceq)
  %i.ceu = fadd <2 x float> %i.cbf, %i.cet        ; 3 uses
  %i.cev = extractelement <2 x float> %i.cav, i64 0
  %i.cew = fmul float %i.cev, %i.cej
  %i.cex = call float @llvm.fmuladd.f32(float %i.cei, float %i.cay, float %i.cew)
  %i.cey = call float @llvm.fmuladd.f32(float %i.cek, float %i.ccj, float %i.cex)
  %i.cez = fadd float %i.ccr, %i.cey              ; 3 uses
  %i.cfa = extractelement <2 x float> %i.cav, i64 1
  %i.cfb = fmul float %i.cfa, %i.cej
  %i.cfc = shufflevector <2 x float> %i.cdp, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 1, i32 1>
  %i.cfd = insertelement <4 x float> %i.cfc, float %i.cei, i64 0
  %i.cfe = shufflevector <2 x float> %i.cat, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.cff = shufflevector <3 x float> %i.cfe, <3 x float> %i.cbb, <4 x i32> <i32 1, i32 3, i32 poison, i32 5>
  %i.cfg = insertelement <4 x float> %i.cff, float %i.cba, i64 2
  %i.cfh = shufflevector <4 x float> %i.cdl, <4 x float> %i.cdw, <4 x i32> <i32 poison, i32 3, i32 4, i32 poison>
  %i.cfi = insertelement <4 x float> %i.cfh, float %i.cfb, i64 0
  %i.cfj = insertelement <4 x float> %i.cfi, float %i.cdm, i64 3
  %i.cfk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cfd, <4 x float> %i.cfg, <4 x float> %i.cfj) ; 4 uses
  %i.cfl = insertelement <4 x float> poison, float %i.cek, i64 0
  %i.cfm = shufflevector <4 x float> %i.cfl, <4 x float> %i.ccq, <4 x i32> <i32 0, i32 4, i32 4, i32 4>
  %i.cfn = shufflevector <3 x float> %i.cbb, <3 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %i.cfo = insertelement <4 x float> %i.cfn, float %i.cbz, i64 0
  %i.cfp = insertelement <4 x float> %i.cfo, float %i.cba, i64 2
  %i.cfq = shufflevector <4 x float> %i.cfk, <4 x float> %i.cdl, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.cfr = shufflevector <4 x float> %i.cfq, <4 x float> %foldExtExtBinop260, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.cfs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cfm, <4 x float> %i.cfp, <4 x float> %i.cfr) ; 4 uses
  %i.cft = extractelement <4 x float> %i.cfs, i64 0
  %i.cfu = fadd float %i.cbx, %i.cft              ; 2 uses
  %i.cfv = fmul <2 x float> %i.ceu, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.cfw = shufflevector <2 x float> %i.ceu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cfx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cfv, <2 x float> <float 0.000000e+00, float 1.000000e+00>, <2 x float> %i.cfw)
  %i.cfy = shufflevector <4 x float> %i.ccq, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 2, i32 2, i32 2, i32 7>
  %i.cfz = shufflevector <2 x float> %i.ceu, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.cga = shufflevector <3 x float> %i.cbb, <3 x float> %i.cfz, <4 x i32> <i32 0, i32 poison, i32 2, i32 3>
  %i.cgb = insertelement <4 x float> %i.cga, float %i.cba, i64 1
  %i.cgc = shufflevector <2 x float> %i.cfv, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cgd = shufflevector <4 x float> %i.cdw, <4 x float> %i.cgc, <4 x i32> <i32 1, i32 2, i32 poison, i32 5>
  %i.cge = insertelement <4 x float> %i.cgd, float %i.cdy, i64 2
  %i.cgf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cfy, <4 x float> %i.cgb, <4 x float> %i.cge) ; 5 uses
  %i.cgg = insertelement <3 x float> poison, float %i.cez, i64 0
  %i.cgh = shufflevector <4 x float> %i.cgf, <4 x float> poison, <3 x i32> <i32 poison, i32 poison, i32 3>
  %i.cgi = shufflevector <3 x float> %i.cgg, <3 x float> %i.cgh, <3 x i32> <i32 0, i32 0, i32 5>
  %i.cgj = shufflevector <2 x float> %i.cfx, <2 x float> poison, <3 x i32> <i32 1, i32 0, i32 poison>
  %i.cgk = insertelement <3 x float> %i.cgj, float %i.cez, i64 2
  %i.cgl = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cgi, <3 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <3 x float> %i.cgk)
  %i.cgm = insertelement <3 x float> poison, float %i.cfu, i64 0
  %i.cgn = shufflevector <3 x float> %i.cgm, <3 x float> poison, <3 x i32> zeroinitializer
  %i.cgo = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cgn, <3 x float> %i.cbb, <3 x float> %i.cgl) ; 3 uses
  %i.cgp = extractelement <4 x float> %i.cgf, i64 3
  %i.cgq = call float @llvm.fmuladd.f32(float %i.cez, float 0.000000e+00, float %i.cgp)
  %i.cgr = fadd float %i.cgq, %i.cfu
  %i.cgs = shufflevector <4 x float> %i.cfk, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.cgt = fmul <4 x float> %i.caq, %i.cgs
  %i.cgu = shufflevector <4 x float> %i.cfk, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cgv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cgu, <4 x float> %i.cap, <4 x float> %i.cgt)
  %i.cgw = shufflevector <4 x float> %i.cfk, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.cgx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cgw, <4 x float> %i.car, <4 x float> %i.cgv)
  %i.cgy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cec, <4 x float> %i.cas, <4 x float> %i.cgx)
  %i.cgz = shufflevector <4 x float> %i.cfs, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.cha = fmul <4 x float> %i.cgz, %i.caq
  %i.chb = shufflevector <4 x float> %i.cfs, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.chc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.chb, <4 x float> %i.cap, <4 x float> %i.cha)
  %i.chd = shufflevector <4 x float> %i.cfs, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.che = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.chd, <4 x float> %i.car, <4 x float> %i.chc)
  %i.chf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cef, <4 x float> %i.cas, <4 x float> %i.che)
  %i.chg = shufflevector <4 x float> %i.cgf, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.chh = fmul <4 x float> %i.caq, %i.chg
  %i.chi = shufflevector <4 x float> %i.cgf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.chj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.chi, <4 x float> %i.cap, <4 x float> %i.chh)
  %i.chk = shufflevector <4 x float> %i.cgf, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.chl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.chk, <4 x float> %i.car, <4 x float> %i.chj)
  %i.chm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ceh, <4 x float> %i.cas, <4 x float> %i.chl)
  %i.chn = shufflevector <3 x float> %i.cgo, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cho = fmul <4 x float> %i.caq, %i.chn
  %i.chp = shufflevector <3 x float> %i.cgo, <3 x float> poison, <4 x i32> zeroinitializer
  %i.chq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.chp, <4 x float> %i.cap, <4 x float> %i.cho)
  %i.chr = shufflevector <3 x float> %i.cgo, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.chs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.chr, <4 x float> %i.car, <4 x float> %i.chq)
  %i.cht = insertelement <4 x float> poison, float %i.cgr, i64 0
  %i.chu = shufflevector <4 x float> %i.cht, <4 x float> poison, <4 x i32> zeroinitializer
  %i.chv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.chu, <4 x float> %i.cas, <4 x float> %i.chs)
  store <4 x float> %i.cgy, ptr %4, align 4
  store <4 x float> %i.chf, ptr %.sroa.7450.0..sroa_idx.i, align 4
  store <4 x float> %i.chm, ptr %.sroa.11.0..sroa_idx.i92, align 4
  store <4 x float> %i.chv, ptr %.sroa.15.0..sroa_idx.i95, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #19
  %i.chw = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4
  %i.chx = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4, !tbaa !16
  %i.chy = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 512), align 8, !tbaa !16
  %i.chz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16
  %i.cia = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16
  %i.cib = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16
  %i.cic = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16
  %i.cid = load float, ptr %i.biy, align 4, !tbaa !10
  %i.cie = load float, ptr %7, align 4, !tbaa !10
  %i.cif = fsub float %i.cid, %i.cie
  %i.cig = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10 ; 2 uses
  %i.cih = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4
  %i.cii = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 476), align 4
  %i.cij = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 896), align 8, !tbaa !10 ; 3 uses
  %i.cik = shufflevector <2 x float> %i.cig, <2 x float> %i.cij, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.cil = insertelement <4 x float> poison, float %i.cia, i64 2
  %i.cim = shufflevector <2 x float> %i.cij, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cin = shufflevector <4 x float> %i.cil, <4 x float> %i.cim, <4 x i32> <i32 poison, i32 poison, i32 2, i32 5>
  %i.cio = shufflevector <4 x float> %i.cii, <4 x float> %i.cin, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cip = fmul <4 x float> %i.cik, %i.cio
  %i.ciq = shufflevector <2 x float> %i.cig, <2 x float> %i.cij, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.cir = insertelement <4 x float> poison, float %i.chz, i64 2
  %i.cis = shufflevector <4 x float> %i.cir, <4 x float> %i.cim, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %i.cit = shufflevector <4 x float> %i.cih, <4 x float> %i.cis, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ciu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ciq, <4 x float> %i.cit, <4 x float> %i.cip)
  %i.civ = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 904), align 8, !tbaa !13 ; 2 uses
  %i.ciw = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4
  %i.cix = insertelement <4 x float> %i.chw, float %i.civ, i64 1
  %i.ciy = shufflevector <4 x float> %i.cix, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ciz = insertelement <4 x float> %i.ciw, float %i.cib, i64 2
  %i.cja = insertelement <4 x float> %i.ciz, float %i.civ, i64 3
  %i.cjb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ciy, <4 x float> %i.cja, <4 x float> %i.ciu) ; 4 uses
  %i.cjc = extractelement <4 x float> %i.cjb, i64 0
  %i.cjd = fadd float %i.chx, %i.cjc
  %i.cje = extractelement <4 x float> %i.cjb, i64 1
  %i.cjf = fadd float %i.chy, %i.cje
  %i.cjg = extractelement <4 x float> %i.cjb, i64 2
  %i.cjh = fadd float %i.cic, %i.cjg
  %i.cji = fdiv float 5.000000e-01, %i.cjh        ; 2 uses
  %i.cjj = fmul float %i.cjd, %i.cji
  %i.cjk = fmul float %i.cjf, %i.cji
  %i.cjl = fadd float %i.cjk, 5.000000e-01
  %i.cjm = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 920), align 8, !tbaa !13
  %i.cjn = load <2 x float>, ptr %i.biz, align 4, !tbaa !10
  %i.cjo = load <2 x float>, ptr %i.bja, align 4, !tbaa !10
  %i.cjp = fsub <2 x float> %i.cjn, %i.cjo
  %i.cjq = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 912), align 8 ; 2 uses
  %i.cjr = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 928), align 8 ; 2 uses
  %i.cjs = shufflevector <2 x float> %i.cbh, <2 x float> %i.cbg, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.cjt = shufflevector <4 x float> %i.cjs, <4 x float> %i.cjq, <4 x i32> <i32 0, i32 5, i32 2, i32 poison>
  %i.cju = shufflevector <4 x float> %i.cjt, <4 x float> %i.cjr, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %i.cjv = fmul <4 x float> %i.cju, %i.cju
  %i.cjw = shufflevector <2 x float> %i.cbh, <2 x float> %i.cbg, <4 x i32> <i32 0, i32 poison, i32 2, i32 poison>
  %i.cjx = shufflevector <4 x float> %i.cjw, <4 x float> %i.cjq, <4 x i32> <i32 0, i32 4, i32 2, i32 poison>
  %i.cjy = shufflevector <4 x float> %i.cjx, <4 x float> %i.cjr, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %i.cjz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cjy, <4 x float> %i.cjy, <4 x float> %i.cjv)
  %i.cka = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 936), align 8, !tbaa !13
  %i.ckb = shufflevector <2 x float> %i.cat, <2 x float> %i.cav, <4 x i32> <i32 0, i32 poison, i32 2, i32 poison>
  %i.ckc = insertelement <4 x float> %i.ckb, float %i.cjm, i64 1
  %i.ckd = insertelement <4 x float> %i.ckc, float %i.cka, i64 3 ; 2 uses
  %i.cke = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ckd, <4 x float> %i.ckd, <4 x float> %i.cjz) ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN8ImGuizmo10ManipulateEPKfS1_NS_9OPERATIONENS_4MODEEPfS4_S4_S4_S4_:bb.a
  %i.coc = fadd float %i.cob, %i.coa
  %i.cod = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16
  %i.coe = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16
  %i.cof = fmul float %.sroa.12.0.copyload.i.i118, %i.coe
  %i.cog = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i.i117, float %i.cod, float %i.cof)
  %i.coh = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16
  %i.coi = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i.i119, float %i.coh, float %i.cog)
  %i.coj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16
  %i.cok = fadd float %i.coj, %i.coi
  %i.col = fdiv float 5.000000e-01, %i.cok        ; 2 uses
  %i.com = fmul float %i.cnu, %i.col
  %i.con = fmul float %i.coc, %i.col
  %i.coo = fadd float %i.con, 5.000000e-01
  %i.cop = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.com, i64 0
  %i.coq = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.coo, i64 1
  %i.cor = fsub <2 x float> %i.cop, %i.coq
  %i.cos = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10
  %i.cot = fmul <2 x float> %i.cos, %i.cor
  %i.cou = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10
  %i.cov = fadd <2 x float> %i.cou, %i.cot
  store <2 x float> %i.cov, ptr %38, align 8
  %i.cow = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 636), align 4, !tbaa !49
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(196) %i.clq, ptr noundef nonnull align 4 dereferenceable(8) %38, float noundef %i.cow, i32 noundef %i.cmd, i32 noundef 64, float noundef 3.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #19
  %i.cox = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32, !range !33, !noundef !34
  %i.coy = trunc nuw i8 %i.cox to i1
  br i1 %i.coy, label %bb.ee, label %_ZN8ImGuizmoL17DrawRotationGizmoEi.exit

bb.dz:                                            ; preds = %bb.ed, %bb.dx
  %indvars.iv118.i = phi i64 [ 0, %bb.dx ], [ %indvars.iv.next119.i, %bb.ed ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %36, i8 0, i64 512, i1 false), !tbaa !10
  %.cmp.i = icmp eq i64 %indvars.iv118.i, 2
  %i.coz = sub nsw i64 1, %indvars.iv118.i
  %i.cpa = and i64 %i.coz, 4294967295
  %i.cpb = select i1 %.cmp.i, i64 2, i64 %i.cpa
  %i.cpc = getelementptr inbounds nuw [4 x i8], ptr %i.clp, i64 %i.cpb
  %i.cpd = load float, ptr %i.cpc, align 4
  %i.cpe = sub nuw nsw i64 3, %indvars.iv118.i    ; 2 uses
  %.cmp113.not.i = icmp eq i64 %indvars.iv118.i, 0
  %i.cpf = select i1 %.cmp113.not.i, i64 0, i64 %i.cpe
  %i.cpg = getelementptr inbounds nuw [4 x i8], ptr %i.clp, i64 %i.cpf
  %i.cph = load float, ptr %i.cpg, align 4
  %i.cpi = call float @atan2f(float noundef %i.cpd, float noundef %i.cph) #19
  %i.cpj = fadd float %i.cpi, f0x3FC90FDB
  %i.cpk = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %indvars.iv118.i
  %indvars.iv.next119.i = add nuw nsw i64 %indvars.iv118.i, 1 ; 3 uses
  %.not.i112 = icmp eq i64 %indvars.iv.next119.i, 3 ; 2 uses
  %i.cpl = select i1 %.not.i112, i64 0, i64 %indvars.iv.next119.i
  %i.cpm = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %i.cpl
  %i.cpn = trunc nuw nsw i64 %indvars.iv118.i to i32
  %i.cpo = add nuw nsw i32 %i.cpn, 2
  %i.cpp = urem i32 %i.cpo, 3
  %i.cpq = zext nneg i32 %i.cpp to i64
  %i.cpr = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %i.cpq
  %i.cps = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8, !tbaa !46 ; 3 uses
  %i.cpt = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 396), align 4, !tbaa !16
  %i.cpu = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 412), align 4, !tbaa !16
  %i.cpv = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 428), align 4, !tbaa !16
  %i.cpw = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 444), align 4, !tbaa !16
  %i.cpx = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 408), align 8, !tbaa !16
  %i.cpy = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 424), align 8, !tbaa !16
  %i.cpz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 440), align 8, !tbaa !16
  %i.cqa = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 456), align 8, !tbaa !16
  %i.cqb = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10 ; 3 uses
  %i.cqc = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10 ; 3 uses
  br label %bb.eb

bb.ea:                                            ; preds = %bb.eb
  %.sroa.02.0.copyload.i49.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10 ; 3 uses
  %.sroa.12.0.copyload.i50.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !10 ; 3 uses
  %.sroa.22.0.copyload.i51.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !10 ; 3 uses
  %i.cqd = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4, !tbaa !16
  %i.cqe = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 476), align 4, !tbaa !16
  %i.cqf = fmul float %.sroa.12.0.copyload.i50.i, %i.cqe
  %i.cqg = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i49.i, float %i.cqd, float %i.cqf)
  %i.cqh = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4, !tbaa !16
  %i.cqi = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i51.i, float %i.cqh, float %i.cqg)
  %i.cqj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4, !tbaa !16
  %i.cqk = fadd float %i.cqj, %i.cqi
  %i.cql = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 464), align 8, !tbaa !16
  %i.cqm = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 480), align 8, !tbaa !16
  %i.cqn = fmul float %.sroa.12.0.copyload.i50.i, %i.cqm
  %i.cqo = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i49.i, float %i.cql, float %i.cqn)
  %i.cqp = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 496), align 8, !tbaa !16
  %i.cqq = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i51.i, float %i.cqp, float %i.cqo)
  %i.cqr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 512), align 8, !tbaa !16
  %i.cqs = fadd float %i.cqr, %i.cqq
  %i.cqt = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16
  %i.cqu = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16
  %i.cqv = fmul float %.sroa.12.0.copyload.i50.i, %i.cqu
  %i.cqw = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i49.i, float %i.cqt, float %i.cqv)
  %i.cqx = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16
  %i.cqy = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i51.i, float %i.cqx, float %i.cqw)
  %i.cqz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16
  %i.cra = fadd float %i.cqz, %i.cqy
  %i.crb = fdiv float 5.000000e-01, %i.cra        ; 2 uses
  %i.crc = fmul float %i.cqk, %i.crb
  %i.crd = fmul float %i.cqs, %i.crb
  %i.cre = fadd float %i.crc, 5.000000e-01
  %i.crf = fadd float %i.crd, 5.000000e-01
  %i.crg = fsub float 1.000000e+00, %i.crf
  %i.crh = extractelement <2 x float> %i.cqb, i64 0
  %i.cri = fmul float %i.crh, %i.cre
  %i.crj = extractelement <2 x float> %i.cqb, i64 1
  %i.crk = fmul float %i.crj, %i.crg
  %i.crl = extractelement <2 x float> %i.cqc, i64 0
  %i.crm = fadd float %i.crl, %i.cri
  %i.crn = extractelement <2 x float> %i.cqc, i64 1
  %i.cro = fadd float %i.crn, %i.crk
  %.val44.i = load float, ptr %36, align 16, !tbaa !76
  %.val45.i = load float, ptr %i.cnm, align 4, !tbaa !77
  %i.crp = fsub float %i.crm, %.val44.i           ; 2 uses
  %i.crq = fsub float %i.cro, %.val45.i           ; 2 uses
  %i.crr = fmul float %i.crq, %i.crq
  %i.crs = call noundef float @llvm.fmuladd.f32(float %i.crp, float %i.crp, float %i.crr)
  %sqrt.i116 = call float @llvm.sqrt.f32(float %i.crs) ; 2 uses
  %i.crt = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 636), align 4, !tbaa !49
  %i.cru = fcmp ogt float %sqrt.i116, %i.crt
  br i1 %i.cru, label %bb.ec, label %bb.ed

bb.eb:                                            ; preds = %bb.eb, %bb.dz
  %indvars.iv.i113 = phi i64 [ 0, %bb.dz ], [ %indvars.iv.next.i114, %bb.eb ] ; 3 uses
  %i.crv = trunc nuw nsw i64 %indvars.iv.i113 to i32
  %i.crw = uitofp nneg i32 %i.crv to float
  %i.crx = fmul nnan float %i.crw, 1.562500e-02
  %i.cry = call float @llvm.fmuladd.f32(float %i.crx, float f0x40490FDB, float %i.cpj) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #19
  %i.crz = call float @cosf(float noundef %i.cry) #19
  %i.csa = call float @sinf(float noundef %i.cry) #19
  %.sroa.0.0.vec.insert.i56.i = insertelement <2 x float> poison, float %i.crz, i64 0
  %.sroa.0.4.vec.insert.i57.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i56.i, float %i.csa, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i57.i, ptr %37, align 8
  store <2 x float> zeroinitializer, ptr %i.cnl, align 8
  %i.csb = load float, ptr %i.cpk, align 4, !tbaa !10
  %i.csc = load float, ptr %i.cpm, align 4, !tbaa !10
  %i.csd = load float, ptr %i.cpr, align 4, !tbaa !10
  %i.cse = fmul float %i.cps, %i.csb              ; 2 uses
  %i.csf = fmul float %i.cps, %i.csc              ; 2 uses
  %i.csg = fmul float %i.cps, %i.csd              ; 2 uses
  %i.csh = insertelement <2 x float> poison, float %i.csf, i64 0
  %i.csi = shufflevector <2 x float> %i.csh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.csj = fmul <2 x float> %i.cpu, %i.csi
  %i.csk = insertelement <2 x float> poison, float %i.cse, i64 0
  %i.csl = shufflevector <2 x float> %i.csk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.csm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.csl, <2 x float> %i.cpt, <2 x float> %i.csj)
  %i.csn = insertelement <2 x float> poison, float %i.csg, i64 0
  %i.cso = shufflevector <2 x float> %i.csn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.csp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cso, <2 x float> %i.cpv, <2 x float> %i.csm)
  %i.csq = fadd <2 x float> %i.cpw, %i.csp
  %i.csr = fmul float %i.cpy, %i.csf
  %i.css = call float @llvm.fmuladd.f32(float %i.cse, float %i.cpx, float %i.csr)
  %i.cst = call float @llvm.fmuladd.f32(float %i.csg, float %i.cpz, float %i.css)
  %i.csu = fadd float %i.cqa, %i.cst
  %i.csv = fdiv float 5.000000e-01, %i.csu
  %i.csw = insertelement <2 x float> poison, float %i.csv, i64 0
  %i.csx = shufflevector <2 x float> %i.csw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.csy = fmul <2 x float> %i.csq, %i.csx        ; 2 uses
  %i.csz = extractelement <2 x float> %i.csy, i64 1
  %i.cta = fadd float %i.csz, 5.000000e-01
  %i.ctb = insertelement <2 x float> %i.csy, float 1.000000e+00, i64 1
  %i.ctc = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.cta, i64 1
  %i.ctd = fsub <2 x float> %i.ctb, %i.ctc
  %i.cte = fmul <2 x float> %i.cqb, %i.ctd
  %i.ctf = fadd <2 x float> %i.cqc, %i.cte
  %i.ctg = getelementptr inbounds nuw [8 x i8], ptr %36, i64 %indvars.iv.i113
  store <2 x float> %i.ctf, ptr %i.ctg, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19
  %indvars.iv.next.i114 = add nuw nsw i64 %indvars.iv.i113, 1 ; 2 uses
  %exitcond.not.i115 = icmp eq i64 %indvars.iv.next.i114, 64
  br i1 %exitcond.not.i115, label %bb.ea, label %bb.eb, !llvm.loop !64

bb.ec:                                            ; preds = %bb.ea
  store float %sqrt.i116, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 636), align 4, !tbaa !49
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.ea
  %i.cth = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.cpe
  %i.cti = load i32, ptr %i.cth, align 4, !tbaa !52
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(196) %i.clq, ptr noundef nonnull %36, i32 noundef 64, i32 noundef %i.cti, i32 noundef 0, float noundef 2.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #19
  br i1 %.not.i112, label %bb.dy, label %bb.dz, !llvm.loop !65

bb.ee:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(520) %39, i8 0, i64 520, i1 false), !tbaa !10
  %.sroa.22.0.copyload.i76.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !10 ; 2 uses
  %i.ctj = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4, !tbaa !16 ; 2 uses
  %i.ctk = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16 ; 2 uses
  %i.ctl = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16 ; 2 uses
  %i.ctm = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16 ; 2 uses
  %i.ctn = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10 ; 2 uses
  %i.cto = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10 ; 2 uses
  %i.ctp = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 696), align 8, !tbaa !13 ; 2 uses
  %i.ctq = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10 ; 3 uses
  %.sroa.12.0.copyload.i75.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !10
  %i.ctr = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16 ; 2 uses
  %i.cts = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4, !tbaa !16
  %i.ctt = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 464), align 8, !tbaa !16
  %i.ctu = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 688), align 8, !tbaa !10 ; 5 uses
  %76 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 692), align 4
  %i.ctv = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 476), align 4, !tbaa !16 ; 2 uses
  %i.ctw = shufflevector <2 x float> %i.ctu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ctx = insertelement <2 x float> %i.ctw, float %.sroa.12.0.copyload.i75.i, i64 1
  %i.cty = shufflevector <2 x float> %i.ctx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ctz = shufflevector <2 x float> %i.ctu, <2 x float> %i.ctv, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.cua = insertelement <4 x float> %i.ctz, float %i.ctk, i64 3
  %i.cub = fmul <4 x float> %i.cty, %i.cua
  %i.cuc = shufflevector <2 x float> %i.ctu, <2 x float> %i.ctq, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.cud = shufflevector <2 x float> %i.cts, <2 x float> %i.ctr, <4 x i32> <i32 poison, i32 0, i32 1, i32 2> ; 2 uses
  %i.cue = shufflevector <2 x float> %i.ctu, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cuf = shufflevector <4 x float> %i.cue, <4 x float> %i.cud, <4 x i32> <i32 0, i32 5, i32 poison, i32 7>
  %i.cug = insertelement <4 x float> %i.cuf, float %i.ctt, i64 2
  %i.cuh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cuc, <4 x float> %i.cug, <4 x float> %i.cub)
  %i.cui = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4, !tbaa !16 ; 2 uses
  %i.cuj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 496), align 8, !tbaa !16
  %i.cuk = insertelement <4 x float> poison, float %i.ctp, i64 0 ; 2 uses
  %i.cul = insertelement <4 x float> %i.cuk, float %.sroa.22.0.copyload.i76.i, i64 1
  %i.cum = shufflevector <4 x float> %i.cul, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.cun = shufflevector <2 x float> %i.cui, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cuo = shufflevector <4 x float> %i.cuk, <4 x float> %i.cun, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.cup = insertelement <4 x float> %i.cuo, float %i.ctl, i64 3
  %i.cuq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cum, <4 x float> %i.cup, <4 x float> %i.cuh) ; 3 uses
  %i.cur = extractelement <4 x float> %i.cuq, i64 0 ; 2 uses
  %i.cus = fcmp olt float %i.cur, f0x34000000
  %i.cut = extractelement <4 x float> %i.cuq, i64 3
  %i.cuu = fadd float %i.ctm, %i.cut
  %i.cuv = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 736), align 8, !tbaa !10 ; 3 uses
  %.sroa.8.0.copyload.i122 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 740), align 4, !tbaa !10 ; 3 uses
  %.sroa.13.0.copyload.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 744), align 8, !tbaa !10 ; 3 uses
  %i.cuw = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8, !tbaa !46 ; 3 uses
  %i.cux = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 752), align 8
  %sqrt.i.i123 = call float @llvm.sqrt.f32(float %i.cur)
  %i.cuy = insertelement <2 x float> poison, float %i.cuu, i64 0
  %i.cuz = insertelement <2 x float> %i.cuy, float %sqrt.i.i123, i64 1
  %i.cva = fdiv <2 x float> <float 5.000000e-01, float 1.000000e+00>, %i.cuz ; 3 uses
  %i.cvb = insertelement <2 x float> %i.ctu, float %i.ctp, i64 1
  %i.cvc = shufflevector <2 x float> %i.cva, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cvd = fmul <2 x float> %i.cvb, %i.cvc        ; 6 uses
  %i.cve = fmul <2 x float> %i.cvd, %i.cvd
  %i.cvf = shufflevector <2 x float> %i.ctj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cvg = shufflevector <4 x float> %76, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %i.cvh = shufflevector <4 x float> %i.cvf, <4 x float> %i.cvg, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.cvi = shufflevector <2 x float> %i.cva, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cvj = shufflevector <4 x float> %i.cuq, <4 x float> %i.cvi, <4 x i32> <i32 1, i32 2, i32 5, i32 5> ; 2 uses
  %i.cvk = fadd <4 x float> %i.cvh, %i.cvj
  %i.cvl = fmul <4 x float> %i.cvh, %i.cvj        ; 3 uses
  %i.cvm = shufflevector <4 x float> %i.cvk, <4 x float> %i.cvl, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.cvn = shufflevector <2 x float> %i.cva, <2 x float> %i.cvd, <4 x i32> <i32 0, i32 0, i32 poison, i32 2>
  %i.cvo = shufflevector <4 x float> %i.cvn, <4 x float> %i.cvm, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.cvp = fmul <4 x float> %i.cvo, %i.cvm        ; 4 uses
  %i.cvq = extractelement <4 x float> %i.cvp, i64 1
  %i.cvr = fadd float %i.cvq, 5.000000e-01
  %i.cvs = shufflevector <4 x float> %i.cvp, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.cvt = insertelement <2 x float> %i.cvs, float 1.000000e+00, i64 1
  %i.cvu = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.cvr, i64 1
  %i.cvv = fsub <2 x float> %i.cvt, %i.cvu
  %i.cvw = fmul <2 x float> %i.ctn, %i.cvv
  %i.cvx = fadd <2 x float> %i.cto, %i.cvw
  store <2 x float> %i.cvx, ptr %39, align 16, !tbaa !10
  %i.cvy = shufflevector <4 x float> %i.cvl, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.cvz = shufflevector <2 x float> %i.cvd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cwa = extractelement <2 x float> %i.cuv, i64 0 ; 2 uses
  %i.cwb = shufflevector <2 x float> %i.cuv, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cwc = shufflevector <2 x float> %i.ctr, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cwd = shufflevector <2 x float> %i.cvd, <2 x float> %i.cvy, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.cwe = shufflevector <2 x float> %i.cvd, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.cwf = fmul <4 x float> %i.cwd, %i.cwe        ; 2 uses
  %i.cwg = shufflevector <2 x float> %i.ctv, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 1, i32 poison>
  %i.cwh = insertelement <2 x float> %i.cui, float %i.cuj, i64 1
  %i.cwi = extractelement <4 x float> %i.cvp, i64 2
  %i.cwj = shufflevector <4 x float> %i.cvl, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.cwk = shufflevector <4 x float> %i.cwj, <4 x float> %i.cvz, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.cwl = shufflevector <4 x float> %i.cwk, <4 x float> %i.cvp, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.cwm = shufflevector <4 x float> %i.cwl, <4 x float> %i.cwf, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.cwn = shufflevector <4 x float> %i.cwf, <4 x float> %i.cvz, <4 x i32> <i32 0, i32 1, i32 5, i32 4>
  %i.cwo = shufflevector <2 x float> %i.cuv, <2 x float> %i.ctq, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.cwp = insertelement <4 x float> %i.cwg, float %i.ctk, i64 3
  %i.cwq = shufflevector <4 x float> %i.cwp, <4 x float> %i.cwb, <4 x i32> <i32 5, i32 poison, i32 2, i32 3>
  %i.cwr = shufflevector <4 x float> %i.cwq, <4 x float> %i.cwc, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  br label %bb.eg

bb.ef:                                            ; preds = %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i124
  call void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr noundef nonnull align 8 dereferenceable(196) %i.clq, ptr noundef nonnull %39, i32 noundef 64, i32 noundef -2146402049)
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(196) %i.clq, ptr noundef nonnull %39, i32 noundef 64, i32 noundef -15695617, i32 noundef 1, float noundef 2.000000e+00)
  %i.cws = getelementptr inbounds nuw i8, ptr %39, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #19
  %i.cwt = sext i32 %.0 to i64
  %i.cwu = getelementptr [8 x i8], ptr @_ZN8ImGuizmoL16rotationInfoMaskE, i64 %i.cwt
  %i.cwv = getelementptr i8, ptr %i.cwu, i64 -64
  %i.cww = load ptr, ptr %i.cwv, align 8, !tbaa !78
  %i.cwx = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 752), align 8, !tbaa !73 ; 2 uses
  %i.cwy = fdiv float %i.cwx, f0x40490FDB
  %i.cwz = fmul float %i.cwy, 1.800000e+02
  %i.cxa = fpext float %i.cwz to double
  %i.cxb = fpext float %i.cwx to double
  %i.cxc = load <2 x float>, ptr %i.cws, align 8, !tbaa !10 ; 2 uses
  %i.cxd = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.j, i64 noundef 512, ptr noundef %i.cww, double noundef %i.cxa, double noundef %i.cxb) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #19
  %i.cxe = fadd <2 x float> %i.cxc, splat (float 1.500000e+01)
  store <2 x float> %i.cxe, ptr %40, align 8, !tbaa !10
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(196) %i.clq, ptr noundef nonnull align 4 dereferenceable(8) %40, i32 noundef -16777216, ptr noundef nonnull %i.j, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #19
  %i.cxf = fadd <2 x float> %i.cxc, splat (float 1.400000e+01)
  store <2 x float> %i.cxf, ptr %41, align 8, !tbaa !10
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(196) %i.clq, ptr noundef nonnull align 4 dereferenceable(8) %41, i32 noundef -1, ptr noundef nonnull %i.j, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19
  br label %_ZN8ImGuizmoL17DrawRotationGizmoEi.exit

bb.eg:                                            ; preds = %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i124, %bb.ee
  %indvars.iv123.i = phi i64 [ 1, %bb.ee ], [ %indvars.iv.next124.i, %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i124 ] ; 3 uses
  br i1 %i.cus, label %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i124, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.cxg = trunc i64 %indvars.iv123.i to i32
  %i.cxh = add i32 %i.cxg, -1
  %i.cxi = uitofp i32 %i.cxh to float
  %i.cxj = fdiv nnan float %i.cxi, 6.300000e+01
  %i.cxk = fmul float %i.cux, %i.cxj              ; 2 uses
  %i.cxl = call float @sinf(float noundef %i.cxk) #19
  %i.cxm = call float @cosf(float noundef %i.cxk) #19 ; 3 uses
  %i.cxn = fsub float 1.000000e+00, %i.cxm        ; 3 uses
  %i.cxo = call float @llvm.fmuladd.f32(float %i.cwi, float %i.cxn, float %i.cxm)
  %i.cxp = insertelement <2 x float> poison, float %i.cxn, i64 0
  %i.cxq = shufflevector <2 x float> %i.cxp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cxr = insertelement <2 x float> poison, float %i.cxm, i64 0
  %i.cxs = shufflevector <2 x float> %i.cxr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cxt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cve, <2 x float> %i.cxq, <2 x float> %i.cxs)
  %i.cxu = insertelement <4 x float> poison, float %i.cxl, i64 0
  %i.cxv = insertelement <4 x float> %i.cxu, float %i.cxn, i64 1 ; 2 uses
  %i.cxw = shufflevector <4 x float> %i.cxv, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cxx = fmul <4 x float> %i.cwm, %i.cxw        ; 4 uses
  %i.cxy = shufflevector <4 x float> %i.cxv, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.cxz = fmul <4 x float> %i.cwn, %i.cxy        ; 4 uses
  %foldExtExtBinop272 = fsub <4 x float> %i.cxz, %i.cxx
  %i.cya = extractelement <4 x float> %foldExtExtBinop272, i64 0
  %foldExtExtBinop274 = fsub <4 x float> %i.cxx, %i.cxz
  %i.cyb = extractelement <4 x float> %foldExtExtBinop274, i64 2
  %i.cyc = fadd <4 x float> %i.cxx, %i.cxz
  %i.cyd = fsub <4 x float> %i.cxx, %i.cxz
  %i.cye = shufflevector <4 x float> %i.cyc, <4 x float> %i.cyd, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.cyf = fmul float %.sroa.8.0.copyload.i122, %i.cxo
  br label %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i124

_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i124: ; preds = %bb.eh, %bb.eg
  %.sroa.11.0.i = phi float [ %i.cyb, %bb.eh ], [ 0.000000e+00, %bb.eg ]
  %.sroa.7.0.i = phi float [ %i.cya, %bb.eh ], [ 0.000000e+00, %bb.eg ]
  %.sink59.i.i126 = phi float [ %i.cyf, %bb.eh ], [ %.sroa.8.0.copyload.i122, %bb.eg ]
  %i.cyg = phi <4 x float> [ %i.cye, %bb.eh ], [ zeroinitializer, %bb.eg ] ; 4 uses
  %i.cyh = phi <2 x float> [ %i.cxt, %bb.eh ], [ splat (float 1.000000e+00), %bb.eg ] ; 2 uses
  %i.cyi = fmul float %.sroa.8.0.copyload.i122, %.sroa.11.0.i
  %i.cyj = extractelement <2 x float> %i.cyh, i64 0
  %i.cyk = call float @llvm.fmuladd.f32(float %i.cwa, float %i.cyj, float %i.cyi)
  %i.cyl = extractelement <4 x float> %i.cyg, i64 0
  %i.cym = call float @llvm.fmuladd.f32(float %.sroa.13.0.copyload.i, float %i.cyl, float %i.cyk)
  %i.cyn = fadd float %i.cym, 0.000000e+00
  %i.cyo = extractelement <4 x float> %i.cyg, i64 2
  %i.cyp = call float @llvm.fmuladd.f32(float %i.cwa, float %i.cyo, float %.sink59.i.i126)
  %i.cyq = extractelement <4 x float> %i.cyg, i64 3
  %i.cyr = call float @llvm.fmuladd.f32(float %.sroa.13.0.copyload.i, float %i.cyq, float %i.cyp)
  %i.cys = fadd float %i.cyr, 0.000000e+00
  %i.cyt = extractelement <2 x float> %i.cyh, i64 1
  %i.cyu = fmul float %i.cuw, %i.cyn
  %i.cyv = fmul float %i.cuw, %i.cys
  %i.cyw = insertelement <2 x float> <float -0.000000e+00, float poison>, float %i.cyu, i64 1
  %i.cyx = shufflevector <2 x float> %i.cyw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.cyy = fadd <4 x float> %i.cwo, %i.cyx
  %i.cyz = shufflevector <4 x float> %i.cyg, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cza = insertelement <2 x float> <float -0.000000e+00, float poison>, float %i.cyv, i64 1
  %i.czb = shufflevector <2 x float> %i.cyz, <2 x float> %i.ctq, <4 x i32> <i32 0, i32 3, i32 3, i32 3>
  %i.czc = shufflevector <2 x float> %i.cza, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.czd = fadd <4 x float> %i.czb, %i.czc
  %i.cze = fmul <4 x float> %i.cwr, %i.czd
  %i.czf = insertelement <4 x float> %i.cud, float %.sroa.7.0.i, i64 0
  %i.czg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cyy, <4 x float> %i.czf, <4 x float> %i.cze) ; 3 uses
  %i.czh = extractelement <4 x float> %i.czg, i64 0
  %i.czi = call float @llvm.fmuladd.f32(float %.sroa.13.0.copyload.i, float %i.cyt, float %i.czh)
  %i.czj = fadd float %i.czi, 0.000000e+00
  %i.czk = fmul float %i.cuw, %i.czj
  %i.czl = extractelement <4 x float> %i.czg, i64 3
  %i.czm = fadd float %.sroa.22.0.copyload.i76.i, %i.czk ; 2 uses
  %i.czn = insertelement <2 x float> poison, float %i.czm, i64 0
  %i.czo = shufflevector <2 x float> %i.czn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.czp = shufflevector <4 x float> %i.czg, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.czq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.czo, <2 x float> %i.cwh, <2 x float> %i.czp)
  %i.czr = fadd <2 x float> %i.ctj, %i.czq
  %i.czs = call float @llvm.fmuladd.f32(float %i.czm, float %i.ctl, float %i.czl)
  %i.czt = fadd float %i.ctm, %i.czs
  %i.czu = fdiv float 5.000000e-01, %i.czt
  %i.czv = insertelement <2 x float> poison, float %i.czu, i64 0
  %i.czw = shufflevector <2 x float> %i.czv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.czx = fmul <2 x float> %i.czr, %i.czw        ; 2 uses
  %i.czy = extractelement <2 x float> %i.czx, i64 1
  %i.czz = fadd float %i.czy, 5.000000e-01
  %i.daa = insertelement <2 x float> %i.czx, float 1.000000e+00, i64 1
  %i.dab = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.czz, i64 1
  %i.dac = fsub <2 x float> %i.daa, %i.dab
  %i.dad = fmul <2 x float> %i.ctn, %i.dac
  %i.dae = fadd <2 x float> %i.cto, %i.dad
  %i.daf = getelementptr inbounds nuw [8 x i8], ptr %39, i64 %indvars.iv123.i
  store <2 x float> %i.dae, ptr %i.daf, align 8, !tbaa !10
  %indvars.iv.next124.i = add nuw nsw i64 %indvars.iv123.i, 1 ; 2 uses
  %exitcond126.not.i = icmp eq i64 %indvars.iv.next124.i, 64
  br i1 %exitcond126.not.i, label %bb.ef, label %bb.eg, !llvm.loop !66

_ZN8ImGuizmoL17DrawRotationGizmoEi.exit:          ; preds = %bb.dy, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %35)
  br label %_ZN8ImGuizmoL20DrawTranslationGizmoEi.exit

bb.ei:                                            ; preds = %bb.dp
  %i.dag = load ptr, ptr @_ZN8ImGuizmoL8gContextE, align 8, !tbaa !31 ; 11 uses
  %.not.i131 = icmp eq ptr %i.dag, null
  br i1 %.not.i131, label %_ZN8ImGuizmoL20DrawTranslationGizmoEi.exit, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.dah = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 685), align 1, !tbaa !50, !range !33, !noundef !34
  %i.dai = trunc nuw i8 %i.dah to i1
  br i1 %i.dai, label %bb.ek, label %.preheader.preheader.i.i132

.preheader.preheader.i.i132:                      ; preds = %bb.ej
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.e, i8 -103, i64 28, i1 false), !tbaa !52
  br label %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i133

bb.ek:                                            ; preds = %bb.ej
  %i.daj = icmp eq i32 %.0, 7                     ; 2 uses
  %i.dak = select i1 %i.daj, i32 -1978629889, i32 -1
  store i32 %i.dak, ptr %i.e, align 16, !tbaa !52
  br i1 %i.daj, label %.loopexit.loopexit.i.i, label %.split.preheader.i.i

.split.preheader.i.i:                             ; preds = %bb.ek
  %i.dal = icmp eq i32 %.0, 1
  %i.dam = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  br i1 %i.dal, label %.split.1.thread61.i.i, label %bb.el

.split.1.thread61.i.i:                            ; preds = %.split.preheader.i.i
  store i32 -1978629889, ptr %i.dam, align 4, !tbaa !52
  %i.dan = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 1627390122, ptr %i.dan, align 16, !tbaa !52
  br label %.thread63.i.i

.loopexit.loopexit.i.i:                           ; preds = %bb.ek
  %i.dao = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.dap = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i32 -1978629889, ptr %i.dap, align 4, !tbaa !52
  store <4 x i32> <i32 -16777046, i32 -16733696, i32 -5636096, i32 -1978629889>, ptr %i.dao, align 4, !tbaa !52
  %i.daq = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 -1978629889, ptr %i.daq, align 8, !tbaa !52
  br label %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i133

bb.el:                                            ; preds = %.split.preheader.i.i
  store i32 -16777046, ptr %i.dam, align 4, !tbaa !52
  %i.dar = icmp eq i32 %.0, 4
  %i.das = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.dar, label %.split.1.thread.i.i, label %.split.1.i.i

.split.1.thread.i.i:                              ; preds = %bb.el
  store i32 -1978629889, ptr %i.das, align 16, !tbaa !52
  br label %.thread63.i.i

.split.1.i.i:                                     ; preds = %bb.el
  store i32 1627390122, ptr %i.das, align 16, !tbaa !52
  %i.dat = icmp eq i32 %.0, 2
  %i.dau = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %i.dat, label %.split.2.thread64.i.i, label %bb.em

.split.2.thread64.i.i:                            ; preds = %.split.1.i.i
  store i32 -1978629889, ptr %i.dau, align 8, !tbaa !52
  br label %.thread67.i.i

.thread63.i.i:                                    ; preds = %.split.1.thread.i.i, %.split.1.thread61.i.i
  %i.dav = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 -16733696, ptr %i.dav, align 8, !tbaa !52
  br label %.split.2.i.i

bb.em:                                            ; preds = %.split.1.i.i
  store i32 -16733696, ptr %i.dau, align 8, !tbaa !52
  %i.daw = icmp eq i32 %.0, 5
  br i1 %i.daw, label %.thread67.i.i, label %.split.2.i.i

.split.2.i.i:                                     ; preds = %bb.em, %.thread63.i.i
  %i.dax = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i32 1627433472, ptr %i.dax, align 4, !tbaa !52
  %i.day = icmp eq i32 %.0, 3
  %i.daz = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  br i1 %i.day, label %.thread65.i.i, label %bb.en

.thread65.i.i:                                    ; preds = %.split.2.i.i
  store i32 -1978629889, ptr %i.daz, align 4, !tbaa !52
  br label %bb.eo

.thread67.i.i:                                    ; preds = %bb.em, %.split.2.thread64.i.i
  %.sink.i.i146 = phi i32 [ 1627433472, %.split.2.thread64.i.i ], [ -1978629889, %bb.em ]
  %i.dba = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i32 %.sink.i.i146, ptr %i.dba, align 4, !tbaa !52
  %i.dbb = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 -5636096, ptr %i.dbb, align 4, !tbaa !52
  br label %bb.eo

bb.en:                                            ; preds = %.split.2.i.i
  store i32 -5636096, ptr %i.daz, align 4, !tbaa !52
  %i.dbc = icmp eq i32 %.0, 6
  br i1 %i.dbc, label %.loopexit.loopexit51.i.i, label %bb.eo

bb.eo:                                            ; preds = %bb.en, %.thread67.i.i, %.thread65.i.i
  br label %.loopexit.loopexit51.i.i

.loopexit.loopexit51.i.i:                         ; preds = %bb.eo, %bb.en
  %i.dbd = phi i32 [ 1638531072, %bb.eo ], [ -1978629889, %bb.en ]
  %i.dbe = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 %i.dbd, ptr %i.dbe, align 8, !tbaa !52
  br label %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i133

_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i133: ; preds = %.loopexit.loopexit51.i.i, %.loopexit.loopexit.i.i, %.preheader.preheader.i.i132
  %.sroa.02.0.copyload.i.i134 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10 ; 3 uses
  %.sroa.12.0.copyload.i.i135 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !10 ; 3 uses
  %.sroa.22.0.copyload.i.i136 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !10 ; 3 uses
  %i.dbf = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4, !tbaa !16
  %i.dbg = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 476), align 4, !tbaa !16
  %i.dbh = fmul float %.sroa.12.0.copyload.i.i135, %i.dbg
  %i.dbi = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i.i134, float %i.dbf, float %i.dbh)
  %i.dbj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4, !tbaa !16
  %i.dbk = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i.i136, float %i.dbj, float %i.dbi)
  %i.dbl = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4, !tbaa !16
  %i.dbm = fadd float %i.dbl, %i.dbk
  %i.dbn = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 464), align 8, !tbaa !16
  %i.dbo = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 480), align 8, !tbaa !16
  %i.dbp = fmul float %.sroa.12.0.copyload.i.i135, %i.dbo
  %i.dbq = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i.i134, float %i.dbn, float %i.dbp)
  %i.dbr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 496), align 8, !tbaa !16
  %i.dbs = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i.i136, float %i.dbr, float %i.dbq)
  %i.dbt = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 512), align 8, !tbaa !16
  %i.dbu = fadd float %i.dbt, %i.dbs
  %i.dbv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16
  %i.dbw = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16
  %i.dbx = fmul float %.sroa.12.0.copyload.i.i135, %i.dbw
  %i.dby = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i.i134, float %i.dbv, float %i.dbx)
  %i.dbz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16
  %i.dca = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i.i136, float %i.dbz, float %i.dby)
  %i.dcb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16
  %i.dcc = fadd float %i.dcb, %i.dca
  %i.dcd = fdiv float 5.000000e-01, %i.dcc        ; 2 uses
  %i.dce = fmul float %i.dbm, %i.dcd
  %i.dcf = fmul float %i.dbu, %i.dcd
  %i.dcg = fadd float %i.dcf, 5.000000e-01
  %i.dch = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dce, i64 0
  %i.dci = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.dcg, i64 1
  %i.dcj = fsub <2 x float> %i.dch, %i.dci
  %i.dck = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10
  %i.dcl = fmul <2 x float> %i.dck, %i.dcj
  %i.dcm = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10
  %i.dcn = fadd <2 x float> %i.dcm, %i.dcl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  %i.dco = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.dcp = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.dcq = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.dcr = getelementptr inbounds nuw i8, ptr %27, i64 24
  br label %bb.eq

bb.ep:                                            ; preds = %bb.ev
  %i.dcs = load i32, ptr %i.e, align 16, !tbaa !52
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(196) %i.dag, ptr noundef nonnull align 4 dereferenceable(8) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 640), float noundef 6.000000e+00, i32 noundef %i.dcs, i32 noundef 32)
  %i.dct = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32, !range !33, !noundef !34
  %i.dcu = trunc nuw i8 %i.dct to i1
  br i1 %i.dcu, label %bb.ew, label %bb.ex

bb.eq:                                            ; preds = %bb.ev, %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i133
  %indvars.iv.i137 = phi i64 [ 0, %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i133 ], [ %indvars.iv.next.i138, %bb.ev ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  %i.dcv = trunc nuw nsw i64 %indvars.iv.i137 to i32
  call fastcc void @_ZN8ImGuizmoL30ComputeTripodAxisAndVisibilityEiRNS_5vec_tES1_S1_RbS2_(i32 noundef %i.dcv, ptr noundef nonnull align 4 dereferenceable(16) %21, ptr noundef nonnull align 4 dereferenceable(16) %19, ptr noundef nonnull align 4 dereferenceable(16) %20, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %i.g)
  %i.dcw = load i8, ptr %i.f, align 1, !tbaa !47, !range !33, !noundef !34
  %i.dcx = trunc nuw i8 %i.dcw to i1
  br i1 %i.dcx, label %bb.er, label %bb.eu

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  %77 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8
  %78 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 408), align 8
  %79 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 424), align 8
  %80 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 440), align 8
  %81 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 456), align 8
  %i.dcy = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10 ; 2 uses
  %i.dcz = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  %82 = load <4 x float>, ptr %21, align 16       ; 3 uses
  %i.dda = shufflevector <4 x float> %82, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ddb = fmul <2 x float> %i.dda, <float 1.000000e-01, float 1.000000e+00>
  %i.ddc = shufflevector <4 x float> %82, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ddd = fmul <2 x float> %i.ddc, <float 1.000000e-01, float 1.000000e+00>
  %i.dde = shufflevector <4 x float> %82, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ddf = fmul <2 x float> %i.dde, <float 1.000000e-01, float 1.000000e+00>
  %i.ddg = shufflevector <4 x float> %77, <4 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ddh = fmul <2 x float> %i.ddd, %i.ddg        ; 2 uses
  %i.ddi = shufflevector <2 x float> %i.ddh, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ddj = fmul <2 x float> %i.ddb, %i.ddg        ; 2 uses
  %i.ddk = fmul <2 x float> %i.ddg, %i.ddf        ; 2 uses
  %i.ddl = shufflevector <4 x float> %79, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ddm = fmul <2 x float> %i.ddh, %i.ddl
  %i.ddn = shufflevector <4 x float> %78, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ddo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ddj, <2 x float> %i.ddn, <2 x float> %i.ddm)
  %i.ddp = shufflevector <4 x float> %80, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ddq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ddk, <2 x float> %i.ddp, <2 x float> %i.ddo)
  %i.ddr = shufflevector <4 x float> %81, <4 x float> poison, <2 x i32> zeroinitializer
  %i.dds = fadd <2 x float> %i.ddr, %i.ddq
  %i.ddt = fdiv <2 x float> splat (float 5.000000e-01), %i.dds
  %i.ddu = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 396), align 4, !tbaa !16
  %i.ddv = shufflevector <2 x float> %i.ddu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ddw = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 412), align 4, !tbaa !16
  %i.ddx = shufflevector <2 x float> %i.ddw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ddy = fmul <4 x float> %i.ddi, %i.ddx
  %i.ddz = shufflevector <2 x float> %i.ddj, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.dea = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ddz, <4 x float> %i.ddv, <4 x float> %i.ddy)
  %i.deb = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 428), align 4, !tbaa !16
  %i.dec = shufflevector <2 x float> %i.deb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ded = shufflevector <2 x float> %i.ddk, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.dee = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ded, <4 x float> %i.dec, <4 x float> %i.dea)
  %i.def = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 444), align 4, !tbaa !16
  %i.deg = shufflevector <2 x float> %i.def, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.deh = fadd <4 x float> %i.deg, %i.dee
  %i.dei = shufflevector <2 x float> %i.ddt, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.dej = fmul <4 x float> %i.deh, %i.dei        ; 4 uses
  %i.dek = extractelement <4 x float> %i.dej, i64 1
  %i.del = fadd float %i.dek, 5.000000e-01
  %i.dem = shufflevector <4 x float> %i.dej, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.den = insertelement <2 x float> %i.dem, float 1.000000e+00, i64 1
  %i.deo = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.del, i64 1
  %i.dep = fsub <2 x float> %i.den, %i.deo
  %i.deq = fmul <2 x float> %i.dcy, %i.dep
  %i.der = fadd <2 x float> %i.dcz, %i.deq
  store <2 x float> %i.der, ptr %22, align 8
  %i.des = extractelement <4 x float> %i.dej, i64 3
  %i.det = fadd float %i.des, 5.000000e-01
  %i.deu = shufflevector <4 x float> %i.dej, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.dev = insertelement <2 x float> %i.deu, float 1.000000e+00, i64 1
  %i.dew = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.det, i64 1
  %i.dex = fsub <2 x float> %i.dev, %i.dew
  %i.dey = fmul <2 x float> %i.dcy, %i.dex
  %i.dez = fadd <2 x float> %i.dcz, %i.dey
  store <2 x float> %i.dez, ptr %23, align 8
  %i.dfa = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i137
  %i.dfb = getelementptr inbounds nuw i8, ptr %i.dfa, i64 4
  %i.dfc = load i32, ptr %i.dfb, align 4, !tbaa !52 ; 2 uses
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(196) %i.dag, ptr noundef nonnull align 4 dereferenceable(8) %22, ptr noundef nonnull align 4 dereferenceable(8) %23, i32 noundef %i.dfc, float noundef 3.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  %i.dfd = load <2 x float>, ptr %23, align 8, !tbaa !10 ; 3 uses
  %i.dfe = fsub <2 x float> %i.dcn, %i.dfd        ; 4 uses
  %foldExtExtBinop276 = fmul <2 x float> %i.dfe, %i.dfe
  %i.dff = extractelement <2 x float> %foldExtExtBinop276, i64 1
  %i.dfg = extractelement <2 x float> %i.dfe, i64 0 ; 2 uses
  %i.dfh = call noundef float @llvm.fmuladd.f32(float %i.dfg, float %i.dfg, float %i.dff)
  %sqrt.i145 = call float @llvm.sqrt.f32(float %i.dfh)
  %i.dfi = insertelement <2 x float> poison, float %sqrt.i145, i64 0
  %i.dfj = shufflevector <2 x float> %i.dfi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dfk = fdiv <2 x float> %i.dfe, %i.dfj
  %i.dfl = fmul <2 x float> %i.dfk, splat (float 6.000000e+00) ; 5 uses
  %i.dfm = fsub <2 x float> %i.dfd, %i.dfl
  store <2 x float> %i.dfm, ptr %24, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  %i.dfn = fadd <2 x float> %i.dfd, %i.dfl        ; 3 uses
  %i.dfo = shufflevector <2 x float> %i.dfl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.0.0.vec.insert.i83.i = fadd <2 x float> %i.dfo, %i.dfn
  %i.dfp = shufflevector <2 x float> %i.dfl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dfq = fsub <2 x float> %i.dfn, %i.dfp        ; 2 uses
  %i.dfr = shufflevector <2 x float> %.sroa.0.0.vec.insert.i83.i, <2 x float> %i.dfq, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.dfr, ptr %25, align 8
  %shift281 = shufflevector <2 x float> %i.dfn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop282 = fadd <2 x float> %i.dfl, %shift281
  %.sroa.0.4.vec.insert.i86.i = shufflevector <2 x float> %i.dfq, <2 x float> %foldExtExtBinop282, <2 x i32> <i32 0, i32 2>
  store <2 x float> %.sroa.0.4.vec.insert.i86.i, ptr %26, align 8
  call void @_ZN10ImDrawList17AddTriangleFilledERK6ImVec2S2_S2_j(ptr noundef nonnull align 8 dereferenceable(196) %i.dag, ptr noundef nonnull align 4 dereferenceable(8) %24, ptr noundef nonnull align 4 dereferenceable(8) %25, ptr noundef nonnull align 4 dereferenceable(8) %26, i32 noundef %i.dfc)
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  %i.dfs = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 804), i64 %indvars.iv.i137
  %i.dft = load float, ptr %i.dfs, align 4, !tbaa !10
  %i.dfu = fcmp olt float %i.dft, 0.000000e+00
  br i1 %i.dfu, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  call fastcc void @_ZN8ImGuizmoL15DrawHatchedAxisERKNS_5vec_tE(ptr noundef nonnull align 4 dereferenceable(16) %21)
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.eq
  %i.dfv = load i8, ptr %i.g, align 1, !tbaa !47, !range !33, !noundef !34
  %i.dfw = trunc nuw i8 %i.dfv to i1
  br i1 %i.dfw, label %.preheader.i141, label %bb.ev

.preheader.i141:                                  ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  %i.dfx = load <4 x float>, ptr %19, align 16
  %i.dfy = shufflevector <4 x float> %i.dfx, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.dfz = load float, ptr %i.dco, align 8, !tbaa !13
  %83 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8
  %84 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 408), align 8
  %85 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 424), align 8
  %86 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 440), align 8
  %87 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 456), align 8
  %i.dga = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10 ; 4 uses
  %i.dgb = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10 ; 4 uses
  %i.dgc = load <2 x float>, ptr %19, align 16, !tbaa !10 ; 2 uses
  %i.dgd = load <2 x float>, ptr %20, align 8, !tbaa !10 ; 2 uses
  %i.dge = shufflevector <2 x float> %i.dgc, <2 x float> %i.dgd, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.dgf = fmul <4 x float> %i.dge, <float 8.000000e-01, float 5.000000e-01, float 5.000000e-01, float 8.000000e-01> ; 2 uses
  %i.dgg = shufflevector <4 x float> %i.dgf, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.dgh = fadd <4 x float> %i.dgf, %i.dgg
  %i.dgi = shufflevector <4 x float> %83, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.dgj = fmul <4 x float> %i.dgi, %i.dgh        ; 3 uses
  %i.dgk = shufflevector <2 x float> %i.dgc, <2 x float> %i.dgd, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.dgl = fmul <4 x float> %i.dgk, <float 8.000000e-01, float 5.000000e-01, float 5.000000e-01, float 8.000000e-01> ; 2 uses
  %i.dgm = shufflevector <4 x float> %i.dgl, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.dgn = fadd <4 x float> %i.dgl, %i.dgm
  %i.dgo = fmul <4 x float> %i.dgn, %i.dgi        ; 3 uses
  %i.dgp = insertelement <4 x float> %i.dfy, float %i.dfz, i64 1
  %i.dgq = shufflevector <4 x float> %i.dgp, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dgr = fmul <4 x float> %i.dgq, <float 8.000000e-01, float 5.000000e-01, float 5.000000e-01, float 8.000000e-01> ; 2 uses
  %i.dgs = shufflevector <4 x float> %i.dgr, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.dgt = fadd <4 x float> %i.dgr, %i.dgs
  %i.dgu = fmul <4 x float> %i.dgi, %i.dgt        ; 3 uses
  %i.dgv = shufflevector <4 x float> %85, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dgw = fmul <4 x float> %i.dgj, %i.dgv
  %i.dgx = shufflevector <4 x float> %84, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dgy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dgo, <4 x float> %i.dgx, <4 x float> %i.dgw)
  %i.dgz = shufflevector <4 x float> %86, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dha = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dgu, <4 x float> %i.dgz, <4 x float> %i.dgy)
  %i.dhb = shufflevector <4 x float> %87, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dhc = fadd <4 x float> %i.dhb, %i.dha
  %i.dhd = fdiv <4 x float> splat (float 5.000000e-01), %i.dhc ; 2 uses
  %i.dhe = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 396), align 4, !tbaa !16 ; 2 uses
  %i.dhf = shufflevector <2 x float> %i.dhe, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dhg = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 412), align 4, !tbaa !16 ; 2 uses
  %i.dhh = shufflevector <2 x float> %i.dhg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dhi = shufflevector <4 x float> %i.dgj, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.dhj = fmul <4 x float> %i.dhi, %i.dhh
  %i.dhk = shufflevector <4 x float> %i.dgo, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.dhl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dhk, <4 x float> %i.dhf, <4 x float> %i.dhj)
  %i.dhm = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 428), align 4, !tbaa !16 ; 2 uses
  %i.dhn = shufflevector <2 x float> %i.dhm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dho = shufflevector <4 x float> %i.dgu, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.dhp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dho, <4 x float> %i.dhn, <4 x float> %i.dhl)
  %i.dhq = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 444), align 4, !tbaa !16 ; 2 uses
  %i.dhr = shufflevector <2 x float> %i.dhq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dhs = fadd <4 x float> %i.dhr, %i.dhp
  %i.dht = shufflevector <4 x float> %i.dhd, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.dhu = fmul <4 x float> %i.dhs, %i.dht        ; 3 uses
  %i.dhv = shufflevector <4 x float> %i.dhu, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.dhw = insertelement <2 x float> %i.dhv, float 1.000000e+00, i64 1
  %i.dhx = shufflevector <4 x float> %i.dhu, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.dhy = insertelement <2 x float> %i.dhx, float 1.000000e+00, i64 1
  %i.dhz = shufflevector <4 x float> %i.dgj, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 3, i32 0>
  %i.dia = shufflevector <2 x float> %i.dhg, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.dib = fmul <4 x float> %i.dhz, %i.dia
  %i.dic = shufflevector <4 x float> %i.dgo, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 3, i32 0>
  %i.did = shufflevector <2 x float> %i.dhe, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.die = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dic, <4 x float> %i.did, <4 x float> %i.dib)
  %i.dif = shufflevector <4 x float> %i.dgu, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 3, i32 0>
  %i.dig = shufflevector <2 x float> %i.dhm, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.dih = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dif, <4 x float> %i.dig, <4 x float> %i.die)
  %i.dii = shufflevector <2 x float> %i.dhq, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.dij = fadd <4 x float> %i.dii, %i.dih
  %i.dik = shufflevector <4 x float> %i.dhd, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 3, i32 0>
  %i.dil = fmul <4 x float> %i.dij, %i.dik        ; 3 uses
  %i.dim = shufflevector <4 x float> %i.dil, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.din = insertelement <2 x float> %i.dim, float 1.000000e+00, i64 1
  %i.dio = shufflevector <4 x float> %i.dhu, <4 x float> %i.dil, <4 x i32> <i32 1, i32 3, i32 6, i32 7>
  %i.dip = fadd <4 x float> %i.dio, splat (float 5.000000e-01) ; 4 uses
  %i.diq = shufflevector <4 x float> <float -5.000000e-01, float poison, float poison, float poison>, <4 x float> %i.dip, <2 x i32> <i32 0, i32 4>
  %i.dir = fsub <2 x float> %i.dhw, %i.diq
  %i.dis = fmul <2 x float> %i.dga, %i.dir
  %i.dit = fadd <2 x float> %i.dgb, %i.dis
  store <2 x float> %i.dit, ptr %27, align 16, !tbaa !10
  %i.diu = shufflevector <4 x float> <float -5.000000e-01, float poison, float poison, float poison>, <4 x float> %i.dip, <2 x i32> <i32 0, i32 5>
  %i.div = fsub <2 x float> %i.dhy, %i.diu
  %i.diw = fmul <2 x float> %i.dga, %i.div
  %i.dix = fadd <2 x float> %i.dgb, %i.diw
  store <2 x float> %i.dix, ptr %i.dcp, align 8, !tbaa !10
  %i.diy = shufflevector <4 x float> %i.dip, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.diz = insertelement <2 x float> %i.diy, float -5.000000e-01, i64 0
  %i.dja = fsub <2 x float> %i.din, %i.diz
  %i.djb = fmul <2 x float> %i.dga, %i.dja
  %i.djc = fadd <2 x float> %i.dgb, %i.djb
  store <2 x float> %i.djc, ptr %i.dcq, align 16, !tbaa !10
  %i.djd = shufflevector <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x float> %i.dil, <2 x i32> <i32 5, i32 1>
  %i.dje = shufflevector <4 x float> %i.dip, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.djf = insertelement <2 x float> %i.dje, float -5.000000e-01, i64 0
  %i.djg = fsub <2 x float> %i.djd, %i.djf
  %i.djh = fmul <2 x float> %i.dga, %i.djg
  %i.dji = fadd <2 x float> %i.dgb, %i.djh
  store <2 x float> %i.dji, ptr %i.dcr, align 8, !tbaa !10
  %i.djj = getelementptr inbounds nuw [4 x i8], ptr @_ZN8ImGuizmoL14directionColorE, i64 %indvars.iv.i137
  %i.djk = load i32, ptr %i.djj, align 4, !tbaa !52
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(196) %i.dag, ptr noundef nonnull %27, i32 noundef 4, i32 noundef %i.djk, i32 noundef 1, float noundef 1.000000e+00)
  %i.djl = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i137
  %i.djm = getelementptr inbounds nuw i8, ptr %i.djl, i64 16
  %i.djn = load i32, ptr %i.djm, align 4, !tbaa !52
  call void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr noundef nonnull align 8 dereferenceable(196) %i.dag, ptr noundef nonnull %27, i32 noundef 4, i32 noundef %i.djn)
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  br label %bb.ev

bb.ev:                                            ; preds = %.preheader.i141, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  %indvars.iv.next.i138 = add nuw nsw i64 %indvars.iv.i137, 1 ; 2 uses
  %exitcond.not.i139 = icmp eq i64 %indvars.iv.next.i138, 3
  br i1 %exitcond.not.i139, label %bb.ep, label %bb.eq, !llvm.loop !67

bb.ew:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19
  %i.djo = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 728), align 8
  %i.djp = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4, !tbaa !16 ; 2 uses
  %i.djq = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 480), align 8, !tbaa !16 ; 2 uses
  %i.djr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 512), align 8, !tbaa !16 ; 2 uses
  %i.djs = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16 ; 2 uses
  %i.djt = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16 ; 2 uses
  %i.dju = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #19
  %.sroa.22.0.copyload.i125.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !10 ; 3 uses
  %i.djv = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 720), align 8, !tbaa !10 ; 2 uses
  %i.djw = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4, !tbaa !16
  %i.djx = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 464), align 8, !tbaa !16
  %i.djy = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16 ; 4 uses
  %i.djz = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10 ; 3 uses
  %.sroa.12.0.copyload.i124.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !10 ; 2 uses
  %i.dka = shufflevector <2 x float> %i.djv, <2 x float> %i.djy, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.dkb = shufflevector <2 x float> %i.djy, <2 x float> %i.djz, <4 x i32> <i32 1, i32 poison, i32 poison, i32 3>
  %i.dkc = insertelement <4 x float> %i.dkb, float %i.djq, i64 1
  %i.dkd = insertelement <4 x float> %i.dkc, float %i.djs, i64 2
  %i.dke = fmul <4 x float> %i.dka, %i.dkd
  %i.dkf = shufflevector <2 x float> %i.djv, <2 x float> %i.djz, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.dkg = shufflevector <2 x float> %i.djw, <2 x float> %i.djy, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.dkh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dkf, <4 x float> %i.dkg, <4 x float> %i.dke)
  %i.dki = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4, !tbaa !16
  %i.dkj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 496), align 8, !tbaa !16
  %i.dkk = insertelement <4 x float> %i.djo, float %.sroa.22.0.copyload.i125.i, i64 1
  %i.dkl = shufflevector <4 x float> %i.dkk, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dkm = shufflevector <2 x float> %i.dki, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.dkn = insertelement <3 x float> %i.dkm, float %i.djt, i64 2
  %i.dko = shufflevector <3 x float> %i.dkn, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.dkp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dkl, <4 x float> %i.dko, <4 x float> %i.dkh) ; 4 uses
  %i.dkq = extractelement <4 x float> %i.dkp, i64 0
  %i.dkr = fadd float %i.djp, %i.dkq
  %i.dks = extractelement <4 x float> %i.dkp, i64 1
  %i.dkt = fadd float %i.djr, %i.dks
  %i.dku = extractelement <4 x float> %i.dkp, i64 2
  %i.dkv = fadd float %i.dju, %i.dku
  %i.dkw = fdiv float 5.000000e-01, %i.dkv        ; 2 uses
  %i.dkx = fmul float %i.dkr, %i.dkw
  %i.dky = fmul float %i.dkt, %i.dkw
  %i.dkz = fadd float %i.dky, 5.000000e-01
  %i.dla = extractelement <4 x float> %i.dkp, i64 3
  %i.dlb = fadd float %i.djp, %i.dla
  %i.dlc = fmul float %i.djq, %.sroa.12.0.copyload.i124.i
  %i.dld = extractelement <2 x float> %i.djz, i64 0 ; 2 uses
  %i.dle = call float @llvm.fmuladd.f32(float %i.dld, float %i.djx, float %i.dlc)
  %i.dlf = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i125.i, float %i.dkj, float %i.dle)
  %i.dlg = fadd float %i.djr, %i.dlf
  %i.dlh = fmul float %i.djs, %.sroa.12.0.copyload.i124.i
  %i.dli = extractelement <2 x float> %i.djy, i64 0
  %i.dlj = call float @llvm.fmuladd.f32(float %i.dld, float %i.dli, float %i.dlh)
  %i.dlk = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i125.i, float %i.djt, float %i.dlj)
  %i.dll = fadd float %i.dju, %i.dlk
  %i.dlm = fdiv float 5.000000e-01, %i.dll        ; 2 uses
  %i.dln = fmul float %i.dlb, %i.dlm
  %i.dlo = fmul float %i.dlg, %i.dlm
  %i.dlp = fadd float %i.dlo, 5.000000e-01
  %i.dlq = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dkx, i64 0
  %i.dlr = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.dkz, i64 1
  %i.dls = fsub <2 x float> %i.dlq, %i.dlr
  %i.dlt = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10 ; 2 uses
  %i.dlu = fmul <2 x float> %i.dlt, %i.dls
  %i.dlv = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10 ; 2 uses
  %i.dlw = fadd <2 x float> %i.dlv, %i.dlu        ; 2 uses
  store <2 x float> %i.dlw, ptr %28, align 8
  %i.dlx = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dln, i64 0
  %i.dly = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.dlp, i64 1
  %i.dlz = fsub <2 x float> %i.dlx, %i.dly
  %i.dma = fmul <2 x float> %i.dlt, %i.dlz
  %i.dmb = fadd <2 x float> %i.dlv, %i.dma        ; 2 uses
  store <2 x float> %i.dmb, ptr %29, align 8
  %i.dmc = fsub <2 x float> %i.dmb, %i.dlw        ; 4 uses
  %foldExtExtBinop284 = fmul <2 x float> %i.dmc, %i.dmc
  %i.dmd = extractelement <2 x float> %foldExtExtBinop284, i64 1
  %i.dme = extractelement <2 x float> %i.dmc, i64 0 ; 2 uses
  %i.dmf = call float @llvm.fmuladd.f32(float %i.dme, float %i.dme, float %i.dmd)
  %i.dmg = fadd float %i.dmf, 0.000000e+00
  %sqrt.i.i.i140 = call noundef float @llvm.sqrt.f32(float %i.dmg)
  %i.dmh = fdiv float 1.000000e+00, %sqrt.i.i.i140
  %i.dmi = insertelement <2 x float> poison, float %i.dmh, i64 0
  %i.dmj = shufflevector <2 x float> %i.dmi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dmk = fmul <2 x float> %i.dmc, %i.dmj
  %i.dml = fmul <2 x float> %i.dmk, splat (float 5.000000e+00) ; 2 uses
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(196) %i.dag, ptr noundef nonnull align 4 dereferenceable(8) %28, float noundef 6.000000e+00, i32 noundef -1431655766, i32 noundef 0, float noundef 1.000000e+00)
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(196) %i.dag, ptr noundef nonnull align 4 dereferenceable(8) %29, float noundef 6.000000e+00, i32 noundef -1431655766, i32 noundef 0, float noundef 1.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #19
  %i.dmm = load <2 x float>, ptr %28, align 8, !tbaa !10
  %i.dmn = fadd <2 x float> %i.dmm, %i.dml
  store <2 x float> %i.dmn, ptr %30, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #19
  %i.dmo = load <2 x float>, ptr %29, align 8, !tbaa !10
  %i.dmp = fsub <2 x float> %i.dmo, %i.dml
  store <2 x float> %i.dmp, ptr %31, align 8, !tbaa !10
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(196) %i.dag, ptr noundef nonnull align 4 dereferenceable(8) %30, ptr noundef nonnull align 4 dereferenceable(8) %31, i32 noundef -1431655766, float noundef 2.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #19
  %i.dmq = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10
  %i.dmr = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 720), align 8, !tbaa !10
  %i.dms = fsub <2 x float> %i.dmq, %i.dmr
  %i.dmt = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !10
  %i.dmu = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 728), align 8, !tbaa !10
  %i.dmv = fsub <2 x float> %i.dmt, %i.dmu
  store <2 x float> %i.dms, ptr %32, align 8
  %i.dmw = getelementptr inbounds nuw i8, ptr %32, i64 8
  store <2 x float> %i.dmv, ptr %i.dmw, align 8
  %i.dmx = add nsw i32 %.0, -1                    ; 2 uses
  %i.dmy = mul nsw i32 %i.dmx, 3
  %i.dmz = sext i32 %i.dmx to i64
  %i.dna = getelementptr inbounds [8 x i8], ptr @_ZN8ImGuizmoL19translationInfoMaskE, i64 %i.dmz
  %i.dnb = load ptr, ptr %i.dna, align 8, !tbaa !78
  %i.dnc = sext i32 %i.dmy to i64
  %i.dnd = getelementptr inbounds [4 x i8], ptr @_ZN8ImGuizmoL20translationInfoIndexE, i64 %i.dnc ; 3 uses
  %i.dne = load i32, ptr %i.dnd, align 4, !tbaa !52
  %i.dnf = sext i32 %i.dne to i64
  %i.dng = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %i.dnf
end_hunk_4
begin_hunk_5_@_ZN8ImGuizmo10ManipulateEPKfS1_NS_9OPERATIONENS_4MODEEPfS4_S4_S4_S4_:bb.a
  %i.dsc = shufflevector <2 x float> %i.drg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dsd = shufflevector <2 x float> %i.dpv, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.dse = fmul <4 x float> %i.dsc, %i.dsd
  %i.dsf = shufflevector <4 x float> %i.dsb, <4 x float> %i.dse, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dsg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.drx, <4 x float> %i.drz, <4 x float> %i.dsf) ; 3 uses
  %i.dsh = extractelement <4 x float> %i.dsg, i64 0
  %i.dsi = extractelement <4 x float> %i.dsg, i64 1
  %i.dsj = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 444), align 4, !tbaa !16 ; 3 uses
  %i.dsk = extractelement <2 x float> %i.dsj, i64 0 ; 2 uses
  %i.dsl = fadd float %i.dsk, %i.dro
  %i.dsm = extractelement <2 x float> %i.dsj, i64 1 ; 2 uses
  %i.dsn = fadd float %i.dsm, %i.drq
  %i.dso = fmul float %i.dsl, %i.dru
  %i.dsp = fmul float %i.dsn, %i.dru
  %i.dsq = fadd float %i.dsp, 5.000000e-01
  %i.dsr = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dso, i64 0
  %i.dss = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.dsq, i64 1
  %i.dst = fsub <2 x float> %i.dsr, %i.dss
  %i.dsu = fmul <2 x float> %i.dpb, %i.dst
  %i.dsv = fadd <2 x float> %i.dpc, %i.dsu
  store <2 x float> %i.dsv, ptr %13, align 8
  %i.dsw = fadd float %i.dsk, %i.dsh
  %i.dsx = fadd float %i.dsm, %i.dsi
  %i.dsy = fmul float %i.dsw, %i.drc
  %i.dsz = fmul float %i.dsx, %i.drc
  %i.dta = fadd float %i.dsz, 5.000000e-01
  %i.dtb = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dsy, i64 0
  %i.dtc = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.dta, i64 1
  %i.dtd = fsub <2 x float> %i.dtb, %i.dtc
  %i.dte = fmul <2 x float> %i.dpb, %i.dtd
  %i.dtf = fadd <2 x float> %i.dpc, %i.dte
  store <2 x float> %i.dtf, ptr %14, align 8
  %i.dtg = shufflevector <2 x float> %i.dqp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dth = insertelement <2 x float> %i.drd, float %i.dre, i64 1
  %i.dti = shufflevector <4 x float> %i.dsg, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.dtj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dtg, <2 x float> %i.dth, <2 x float> %i.dti)
  %i.dtk = fadd <2 x float> %i.dsj, %i.dtj
  %i.dtl = shufflevector <2 x float> %i.drb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dtm = fmul <2 x float> %i.dtk, %i.dtl        ; 2 uses
  %i.dtn = extractelement <2 x float> %i.dtm, i64 1
  %i.dto = fadd float %i.dtn, 5.000000e-01
  %i.dtp = insertelement <2 x float> %i.dtm, float 1.000000e+00, i64 1
  %i.dtq = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.dto, i64 1
  %i.dtr = fsub <2 x float> %i.dtp, %i.dtq
  %i.dts = fmul <2 x float> %i.dpb, %i.dtr
  %i.dtt = fadd <2 x float> %i.dpc, %i.dts
  store <2 x float> %i.dtt, ptr %15, align 8
  %i.dtu = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32, !range !33, !noundef !34
  %i.dtv = trunc nuw i8 %i.dtu to i1
  br i1 %i.dtv, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(196) %i.doa, ptr noundef nonnull align 4 dereferenceable(8) %13, ptr noundef nonnull align 4 dereferenceable(8) %14, i32 noundef -12566464, float noundef 3.000000e+00)
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(196) %i.doa, ptr noundef nonnull align 4 dereferenceable(8) %14, float noundef 6.000000e+00, i32 noundef -12566464, i32 noundef 0)
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %i.dtw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i149
  %i.dtx = getelementptr inbounds nuw i8, ptr %i.dtw, i64 4
  %i.dty = load i32, ptr %i.dtx, align 4, !tbaa !52 ; 2 uses
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(196) %i.doa, ptr noundef nonnull align 4 dereferenceable(8) %13, ptr noundef nonnull align 4 dereferenceable(8) %15, i32 noundef %i.dty, float noundef 3.000000e+00)
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(196) %i.doa, ptr noundef nonnull align 4 dereferenceable(8) %15, float noundef 6.000000e+00, i32 noundef %i.dty, i32 noundef 0)
  %i.dtz = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 804), i64 %indvars.iv.i149
  %i.dua = load float, ptr %i.dtz, align 4, !tbaa !10
  %i.dub = fcmp olt float %i.dua, 0.000000e+00
  br i1 %i.dub, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  store <2 x float> %i.dpm, ptr %16, align 8
  store <2 x float> %i.dpr, ptr %i.doq, align 8
  call fastcc void @_ZN8ImGuizmoL15DrawHatchedAxisERKNS_5vec_tE(ptr noundef nonnull align 4 dereferenceable(16) %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %indvars.iv.next.i150 = add nuw nsw i64 %indvars.iv.i149, 1 ; 2 uses
  %exitcond.not.i151 = icmp eq i64 %indvars.iv.next.i150, 3
  br i1 %exitcond.not.i151, label %bb.ff, label %bb.fg, !llvm.loop !68

bb.fn:                                            ; preds = %bb.ff
  %.sroa.02.0.copyload.i66.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10 ; 3 uses
  %.sroa.12.0.copyload.i67.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !10 ; 3 uses
  %.sroa.22.0.copyload.i68.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !10 ; 3 uses
  %i.duc = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4, !tbaa !16
  %i.dud = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 476), align 4, !tbaa !16
  %i.due = fmul float %.sroa.12.0.copyload.i67.i, %i.dud
  %i.duf = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i66.i, float %i.duc, float %i.due)
  %i.dug = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4, !tbaa !16
  %i.duh = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i68.i, float %i.dug, float %i.duf)
  %i.dui = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4, !tbaa !16
  %i.duj = fadd float %i.dui, %i.duh
  %i.duk = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 464), align 8, !tbaa !16
  %i.dul = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 480), align 8, !tbaa !16
  %i.dum = fmul float %.sroa.12.0.copyload.i67.i, %i.dul
  %i.dun = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i66.i, float %i.duk, float %i.dum)
  %i.duo = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 496), align 8, !tbaa !16
  %i.dup = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i68.i, float %i.duo, float %i.dun)
  %i.duq = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 512), align 8, !tbaa !16
  %i.dur = fadd float %i.duq, %i.dup
  %i.dus = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16
  %i.dut = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16
  %i.duu = fmul float %.sroa.12.0.copyload.i67.i, %i.dut
  %i.duv = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i66.i, float %i.dus, float %i.duu)
  %i.duw = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16
  %i.dux = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i68.i, float %i.duw, float %i.duv)
  %i.duy = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16
  %i.duz = fadd float %i.duy, %i.dux
  %i.dva = fdiv float 5.000000e-01, %i.duz        ; 2 uses
  %i.dvb = fmul float %i.duj, %i.dva
  %i.dvc = fmul float %i.dur, %i.dva
  %i.dvd = fadd float %i.dvc, 5.000000e-01
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.dve = add nsw i32 %.0, -12                   ; 2 uses
  %i.dvf = mul nsw i32 %i.dve, 3
  %i.dvg = sext i32 %i.dve to i64
  %i.dvh = getelementptr inbounds [8 x i8], ptr @_ZN8ImGuizmoL13scaleInfoMaskE, i64 %i.dvg
  %i.dvi = load ptr, ptr %i.dvh, align 8, !tbaa !78
  %i.dvj = sext i32 %i.dvf to i64
  %i.dvk = getelementptr inbounds [4 x i8], ptr @_ZN8ImGuizmoL20translationInfoIndexE, i64 %i.dvj
  %i.dvl = load i32, ptr %i.dvk, align 4, !tbaa !52
  %i.dvm = sext i32 %i.dvl to i64
  %i.dvn = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.dvm
  %i.dvo = load float, ptr %i.dvn, align 4, !tbaa !10
  %i.dvp = fpext float %i.dvo to double
  %i.dvq = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dvb, i64 0
  %i.dvr = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.dvd, i64 1
  %i.dvs = fsub <2 x float> %i.dvq, %i.dvr
  %i.dvt = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10
  %i.dvu = fmul <2 x float> %i.dvt, %i.dvs
  %i.dvv = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10
  %i.dvw = fadd <2 x float> %i.dvv, %i.dvu        ; 2 uses
  %i.dvx = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.d, i64 noundef 512, ptr noundef %i.dvi, double noundef %i.dvp) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.dvy = fadd <2 x float> %i.dvw, splat (float 1.500000e+01)
  store <2 x float> %i.dvy, ptr %17, align 8, !tbaa !10
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(196) %i.doa, ptr noundef nonnull align 4 dereferenceable(8) %17, i32 noundef -16777216, ptr noundef nonnull %i.d, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  %i.dvz = fadd <2 x float> %i.dvw, splat (float 1.400000e+01)
  store <2 x float> %i.dvz, ptr %18, align 8, !tbaa !10
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(196) %i.doa, ptr noundef nonnull align 4 dereferenceable(8) %18, i32 noundef -1, ptr noundef nonnull %i.d, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %_ZN8ImGuizmoL14DrawScaleGizmoEi.exit

_ZN8ImGuizmoL14DrawScaleGizmoEi.exit:             ; preds = %bb.ff, %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %_ZN8ImGuizmoL20DrawTranslationGizmoEi.exit

_ZN8ImGuizmoL20DrawTranslationGizmoEi.exit:       ; preds = %bb.do, %_ZN8ImGuizmoL14DrawScaleGizmoEi.exit, %_ZN8ImGuizmoL17DrawRotationGizmoEi.exit, %bb.dp, %bb.ei, %bb.ex, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8ImGuizmo8DrawCubeEPKfS1_S1_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #13 {
bb.a:
  %3 = alloca %"struct.ImGuizmo::matrix_t", align 4 ; 6 uses
  %4 = alloca %"struct.ImGuizmo::matrix_t", align 4 ; 16 uses
  %5 = alloca [4 x %struct.ImVec2], align 16      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = call noundef float @_ZN8ImGuizmo8matrix_t7InverseERKS0_b(ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %0, i1 noundef zeroext false) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @_ZN8ImGuizmo21FPU_MatrixF_x_MatrixFEPKfS1_Pf(ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %4)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load float, ptr %i.h, align 4, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.k = load float, ptr %i.j, align 4, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.m = load float, ptr %i.l, align 4, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.o = load float, ptr %i.n, align 4, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.y = load <16 x float>, ptr %4, align 4, !tbaa !10 ; 8 uses
  %6 = load <4 x float>, ptr %i.r, align 4
  %7 = load <4 x float>, ptr %i.q, align 4
  %8 = load <4 x float>, ptr %i.p, align 4
  %9 = load <4 x float>, ptr %i.f, align 4
  %10 = load <4 x float>, ptr %i.d, align 4
  %11 = load <4 x float>, ptr %i.b, align 4
  %i.z = insertelement <4 x float> poison, float %i.k, i64 0
  %i.aa = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ab = shufflevector <16 x float> %i.y, <16 x float> poison, <4 x i32> <i32 13, i32 9, i32 1, i32 5>
  %i.ac = fmul <4 x float> %i.aa, %i.ab
  %i.ad = shufflevector <16 x float> %i.y, <16 x float> poison, <4 x i32> <i32 12, i32 8, i32 0, i32 4>
  %i.ae = insertelement <4 x float> poison, float %i.i, i64 0
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ag = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ad, <4 x float> %i.af, <4 x float> %i.ac)
  %i.ah = shufflevector <16 x float> %i.y, <16 x float> poison, <4 x i32> <i32 14, i32 10, i32 2, i32 6>
  %i.ai = insertelement <4 x float> poison, float %i.m, i64 0
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ak = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ah, <4 x float> %i.aj, <4 x float> %i.ag)
  %i.al = load <2 x float>, ptr %1, align 4, !tbaa !10 ; 4 uses
  %i.am = load <2 x float>, ptr %i.c, align 4, !tbaa !10 ; 4 uses
  %i.an = load <2 x float>, ptr %i.e, align 4, !tbaa !10 ; 4 uses
  %i.ao = load <2 x float>, ptr %i.g, align 4, !tbaa !10 ; 3 uses
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.aq = shufflevector <4 x float> %11, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x float> %i.aq, %i.am
  %i.as = shufflevector <16 x float> %i.y, <16 x float> poison, <2 x i32> zeroinitializer
  %i.at = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.al, <2 x float> %i.ar)
  %i.au = shufflevector <4 x float> %10, <4 x float> poison, <2 x i32> zeroinitializer
  %i.av = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.an, <2 x float> %i.at)
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ax = shufflevector <4 x float> %9, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ay = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ax, <4 x float> %i.ap, <4 x float> %i.aw) ; 2 uses
  %i.az = shufflevector <4 x float> %8, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fmul <2 x float> %i.am, %i.az
  %i.bb = shufflevector <16 x float> %i.y, <16 x float> poison, <2 x i32> <i32 4, i32 4>
  %i.bc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.al, <2 x float> %i.ba)
  %i.bd = shufflevector <4 x float> %7, <4 x float> poison, <2 x i32> zeroinitializer
  %i.be = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.an, <2 x float> %i.bc)
  %i.bf = shufflevector <4 x float> %6, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.ao, <2 x float> %i.be) ; 2 uses
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %12 = load <4 x float>, ptr %i.u, align 4
  %13 = load <4 x float>, ptr %i.t, align 4
  %14 = load <4 x float>, ptr %i.s, align 4
  %i.bi = shufflevector <4 x float> %14, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bj = fmul <2 x float> %i.am, %i.bi
  %i.bk = shufflevector <16 x float> %i.y, <16 x float> poison, <2 x i32> <i32 8, i32 8>
  %i.bl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.al, <2 x float> %i.bj)
  %i.bm = shufflevector <4 x float> %13, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.an, <2 x float> %i.bl)
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bp = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bp, <4 x float> %i.ap, <4 x float> %i.bo) ; 2 uses
  %i.br = load float, ptr %i.x, align 4, !tbaa !10
  %i.bs = load float, ptr %i.w, align 4, !tbaa !10
  %i.bt = load float, ptr %i.v, align 4, !tbaa !10
  %i.bu = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = fmul <2 x float> %i.am, %i.bv
  %i.bx = shufflevector <16 x float> %i.y, <16 x float> poison, <2 x i32> <i32 12, i32 12>
  %i.by = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.al, <2 x float> %i.bw)
  %i.bz = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> %i.an, <2 x float> %i.by)
  %i.cc = insertelement <2 x float> poison, float %i.br, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> %i.ao, <2 x float> %i.cb) ; 2 uses
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cg = shufflevector <16 x float> %i.y, <16 x float> poison, <4 x i32> <i32 15, i32 11, i32 3, i32 7>
  %i.ch = insertelement <4 x float> poison, float %i.o, i64 0
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cg, <4 x float> %i.ci, <4 x float> %i.ak) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cs = load float, ptr %i.cr, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.cu = load float, ptr %i.ct, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.cw = load float, ptr %i.cv, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.da = shufflevector <4 x float> %i.cj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.db = shufflevector <4 x float> %i.cj, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dc = shufflevector <4 x float> %i.cj, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.dd = shufflevector <4 x float> %i.cj, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.de = shufflevector <4 x float> %i.ay, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.df = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.dg = shufflevector <4 x float> %i.bq, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.dh = shufflevector <2 x float> %i.ce, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  br label %bb.c

bb.b:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

bb.c:                                             ; preds = %bb.a, %.loopexit
  %.043204 = phi i32 [ 0, %bb.a ], [ %i.mb, %.loopexit ] ; 5 uses
  %.urem = add nsw i32 %.043204, -3
  %.cmp = icmp samesign ult i32 %.043204, 3
  %i.di = select i1 %.cmp, i32 %.043204, i32 %.urem ; 3 uses
  %i.dj = add nuw nsw i32 %i.di, 1                ; 2 uses
  %i.dk = icmp eq i32 %i.dj, 3
  %i.dl = select i1 %i.dk, i32 0, i32 %i.dj
  %i.dm = add nuw nsw i32 %i.di, 2
  %i.dn = urem i32 %i.dm, 3
  %i.do = icmp samesign ugt i32 %.043204, 2
  %i.dp = select i1 %i.do, float -1.000000e+00, float 1.000000e+00 ; 13 uses
  %i.dq = zext nneg i32 %i.di to i64              ; 2 uses
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr @_ZN8ImGuizmoL14directionUnaryE, i64 %i.dq ; 2 uses
  %i.ds = zext nneg i32 %i.dl to i64
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr @_ZN8ImGuizmoL14directionUnaryE, i64 %i.ds ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.dw = zext nneg i32 %i.dn to i64
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr @_ZN8ImGuizmoL14directionUnaryE, i64 %i.dw ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.dz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 404), align 4, !tbaa !16 ; 4 uses
  %i.ea = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 420), align 4, !tbaa !16 ; 4 uses
  %i.eb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 436), align 4, !tbaa !16 ; 4 uses
  %i.ec = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 452), align 4, !tbaa !16 ; 4 uses
  %i.ed = load float, ptr %i.du, align 4, !tbaa !14 ; 2 uses
  %i.ee = load <3 x float>, ptr %i.dr, align 16, !tbaa !10 ; 5 uses
  %i.ef = load float, ptr %i.dv, align 4, !tbaa !14
  %i.eg = load <3 x float>, ptr %i.dt, align 16, !tbaa !10 ; 3 uses
  %i.eh = fadd <3 x float> %i.ee, %i.eg           ; 4 uses
  %i.ei = load float, ptr %i.dy, align 4, !tbaa !14 ; 3 uses
  %i.ej = load <3 x float>, ptr %i.dx, align 16, !tbaa !10 ; 6 uses
  %i.ek = fadd <3 x float> %i.eh, %i.ej
  %i.el = extractelement <3 x float> %i.ee, i64 0
  %foldExtExtBinop = fsub <3 x float> %i.ee, %i.eg ; 2 uses
  %i.em = fsub float %i.ed, %i.ef                 ; 2 uses
  %i.en = extractelement <3 x float> %i.ee, i64 2
  %foldExtExtBinop238 = fsub <3 x float> %i.ee, %i.eg
  %i.eo = extractelement <3 x float> %foldExtExtBinop238, i64 2 ; 2 uses
  %foldExtExtBinop240 = fsub <3 x float> %foldExtExtBinop, %i.ej
  %i.ep = extractelement <3 x float> %foldExtExtBinop240, i64 0
  %i.eq = fsub float %i.em, %i.ei
  %i.er = extractelement <3 x float> %i.ej, i64 2 ; 2 uses
  %i.es = fsub float %i.eo, %i.er
  %foldExtExtBinop242 = fadd <3 x float> %foldExtExtBinop, %i.ej
  %i.et = extractelement <3 x float> %foldExtExtBinop242, i64 0
  %i.eu = fadd float %i.em, %i.ei
  %i.ev = fadd float %i.eo, %i.er
  %i.ew = fmul <3 x float> %i.ek, splat (float 5.000000e-01)
  %i.ex = insertelement <3 x float> poison, float %i.dp, i64 0
  %i.ey = shufflevector <3 x float> %i.ex, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ez = fmul <3 x float> %i.ey, %i.ew           ; 9 uses
  %i.fa = extractelement <3 x float> %i.ez, i64 1 ; 2 uses
  %i.fb = fmul float %i.fa, %i.ea
  %i.fc = extractelement <3 x float> %i.ez, i64 0 ; 2 uses
  %i.fd = call float @llvm.fmuladd.f32(float %i.fc, float %i.dz, float %i.fb)
  %i.fe = extractelement <3 x float> %i.ez, i64 2 ; 2 uses
  %i.ff = call float @llvm.fmuladd.f32(float %i.fe, float %i.eb, float %i.fd)
  %i.fg = fadd float %i.ec, %i.ff
  %i.fh = fcmp uge float %i.fg, 1.000000e-03
  br i1 %i.fh, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %foldExtExtBinop244 = fsub <3 x float> %i.eh, %i.ej
  %i.fi = extractelement <3 x float> %foldExtExtBinop244, i64 2
  %i.fj = extractelement <3 x float> %i.eh, i64 1
  %i.fk = fsub float %i.fj, %i.ei
  %foldExtExtBinop246 = fsub <3 x float> %i.eh, %i.ej
  %i.fl = extractelement <3 x float> %foldExtExtBinop246, i64 0
  %i.fm = fmul float %i.fl, 5.000000e-01
  %i.fn = fmul float %i.fk, 5.000000e-01
  %i.fo = fmul float %i.fi, 5.000000e-01
  %i.fp = fmul float %i.dp, %i.fm                 ; 2 uses
  %i.fq = fmul float %i.dp, %i.fn                 ; 2 uses
  %i.fr = fmul float %i.dp, %i.fo                 ; 2 uses
  %i.fs = fmul float %i.fq, %i.ea
  %i.ft = call float @llvm.fmuladd.f32(float %i.fp, float %i.dz, float %i.fs)
  %i.fu = call float @llvm.fmuladd.f32(float %i.fr, float %i.eb, float %i.ft)
  %i.fv = fadd float %i.ec, %i.fu
  %i.fw = fcmp uge float %i.fv, 1.000000e-03
  br i1 %i.fw, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.fx = fmul float %i.ep, 5.000000e-01
  %i.fy = fmul float %i.eq, 5.000000e-01
  %i.fz = fmul float %i.es, 5.000000e-01
  %i.ga = fmul float %i.dp, %i.fx                 ; 3 uses
  %i.gb = fmul float %i.dp, %i.fy                 ; 3 uses
  %i.gc = fmul float %i.dp, %i.fz                 ; 3 uses
  %i.gd = fmul float %i.gb, %i.ea
  %i.ge = call float @llvm.fmuladd.f32(float %i.ga, float %i.dz, float %i.gd)
  %i.gf = call float @llvm.fmuladd.f32(float %i.gc, float %i.eb, float %i.ge)
  %i.gg = fadd float %i.ec, %i.gf
  %i.gh = fcmp uge float %i.gg, 1.000000e-03
  br i1 %i.gh, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.gi = fmul float %i.et, 5.000000e-01
  %i.gj = fmul float %i.eu, 5.000000e-01
  %i.gk = fmul float %i.ev, 5.000000e-01
  %i.gl = fmul float %i.dp, %i.gi                 ; 3 uses
  %i.gm = fmul float %i.dp, %i.gj                 ; 3 uses
  %i.gn = fmul float %i.dp, %i.gk                 ; 3 uses
  %i.go = fmul float %i.gm, %i.ea
  %i.gp = call float @llvm.fmuladd.f32(float %i.gl, float %i.dz, float %i.go)
  %i.gq = call float @llvm.fmuladd.f32(float %i.gn, float %i.eb, float %i.gp)
  %i.gr = fadd float %i.ec, %i.gq
  %i.gs = fcmp uge float %i.gr, 1.000000e-03
  br i1 %i.gs, label %.critedge.loopexit, label %.loopexit

.critedge.loopexit:                               ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.gt = shufflevector <3 x float> %i.ez, <3 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.gu = insertelement <4 x float> %i.gt, float %i.fq, i64 1 ; 2 uses
  %i.gv = shufflevector <4 x float> %i.gu, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.gw = fmul <4 x float> %i.bh, %i.gv
  %i.gx = insertelement <4 x float> %i.gu, float %i.gb, i64 2
  %i.gy = insertelement <4 x float> %i.gx, float %i.gm, i64 3
  %i.gz = fmul <4 x float> %i.dd, %i.gy
  %i.ha = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10 ; 4 uses
  %i.hb = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10 ; 4 uses
  %i.hc = shufflevector <3 x float> %i.ez, <3 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.hd = insertelement <4 x float> %i.hc, float %i.fp, i64 1 ; 2 uses
  %i.he = shufflevector <4 x float> %i.hd, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.hf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.he, <4 x float> %i.ay, <4 x float> %i.gw)
  %i.hg = shufflevector <3 x float> %i.ez, <3 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.hh = insertelement <4 x float> %i.hg, float %i.fr, i64 1 ; 2 uses
  %i.hi = shufflevector <4 x float> %i.hh, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.hj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hi, <4 x float> %i.bq, <4 x float> %i.hf)
  %i.hk = insertelement <4 x float> poison, float %i.gb, i64 0
  %i.hl = insertelement <4 x float> %i.hk, float %i.gm, i64 1
  %i.hm = shufflevector <4 x float> %i.hl, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hn = fmul <4 x float> %i.df, %i.hm
  %i.ho = insertelement <4 x float> poison, float %i.ga, i64 0
  %i.hp = insertelement <4 x float> %i.ho, float %i.gl, i64 1
  %i.hq = shufflevector <4 x float> %i.hp, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hq, <4 x float> %i.de, <4 x float> %i.hn)
  %i.hs = insertelement <4 x float> poison, float %i.gc, i64 0
  %i.ht = insertelement <4 x float> %i.hs, float %i.gn, i64 1
  %i.hu = shufflevector <4 x float> %i.ht, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hu, <4 x float> %i.dg, <4 x float> %i.hr)
  %i.hw = insertelement <4 x float> %i.hd, float %i.ga, i64 2
  %i.hx = insertelement <4 x float> %i.hw, float %i.gl, i64 3
  %i.hy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hx, <4 x float> %i.dc, <4 x float> %i.gz)
  %i.hz = insertelement <4 x float> %i.hh, float %i.gc, i64 2
  %i.ia = insertelement <4 x float> %i.hz, float %i.gn, i64 3
  %i.ib = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ia, <4 x float> %i.db, <4 x float> %i.hy)
  %i.ic = fadd <4 x float> %i.da, %i.ib
  %i.id = fdiv <4 x float> splat (float 5.000000e-01), %i.ic ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN8ImGuizmoL30ComputeTripodAxisAndVisibilityEiRNS_5vec_tES1_S1_RbS2_:bb.a
  %i.dk = shufflevector <2 x float> %i.bb, <2 x float> %i.df, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.dl = insertelement <4 x float> %i.dk, float %i.ac, i64 2
  %i.dm = shufflevector <4 x float> %i.dl, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.dn = fmul <4 x float> %i.dm, %i.cu
  %i.do = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> %i.bs, <4 x float> %i.dn)
  %i.dp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.bw, <2 x float> %i.dj)
  %i.dq = fadd <2 x float> %i.cs, %i.dp           ; 2 uses
  %i.dr = fmul <2 x float> %i.dq, %i.bg
  %i.ds = select <2 x i1> %i.bi, <2 x float> %i.dr, <2 x float> %i.dq ; 3 uses
  %i.dt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ca, <4 x float> %i.cd, <4 x float> %i.do) ; 2 uses
  %i.du = extractelement <4 x float> %i.dt, i64 2
  %i.dv = fadd float %i.ae, %i.du                 ; 2 uses
  %i.dw = tail call float @llvm.fabs.f32(float %i.dv)
  %i.dx = fcmp ogt float %i.dw, f0x34000000       ; 2 uses
  %i.dy = shufflevector <2 x float> %i.cp, <2 x float> %i.df, <4 x i32> <i32 0, i32 1, i32 3, i32 0>
  %i.dz = insertelement <4 x float> %i.dt, float -0.000000e+00, i64 2
  %i.ea = fadd <4 x float> %i.dy, %i.dz           ; 4 uses
  %i.eb = extractelement <4 x float> %i.ea, i64 1
  %i.ec = extractelement <4 x float> %i.ea, i64 0
  %i.ed = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ee = extractelement <4 x float> %i.ea, i64 3
  %i.ef = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.eg = insertelement <2 x float> %i.ef, float %i.cz, i64 0
  %i.eh = shufflevector <2 x float> %i.eg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ei = fmul <4 x float> %i.dg, %i.eh
  %i.ej = insertelement <4 x float> %i.cj, float %i.ce, i64 0
  %i.ek = insertelement <4 x float> %i.ej, float %i.ba, i64 1
  %i.el = shufflevector <4 x float> %i.ek, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.em = shufflevector <2 x float> %i.cf, <2 x float> %i.az, <4 x i32> <i32 poison, i32 0, i32 2, i32 2>
  %i.en = insertelement <4 x float> %i.em, float %i.ba, i64 0
  %i.eo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.el, <4 x float> %i.en, <4 x float> %i.ei)
  %i.ep = insertelement <2 x float> %i.dc, float %i.aw, i64 0
  %i.eq = shufflevector <2 x float> %i.ep, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.er = insertelement <2 x float> %i.bv, float %i.bu, i64 0 ; 2 uses
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.et = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eq, <4 x float> %i.es, <4 x float> %i.eo)
  %i.eu = insertelement <2 x float> %i.cr, float %i.cq, i64 0 ; 2 uses
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ew = fadd <4 x float> %i.ev, %i.et           ; 2 uses
  %i.ex = fneg float %i.cg                        ; 2 uses
  %i.ey = insertelement <4 x float> poison, float %i.ex, i64 0
  %i.ez = shufflevector <4 x float> %i.ey, <4 x float> %i.cj, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.fa = shufflevector <4 x float> %i.ez, <4 x float> %i.bq, <4 x i32> <i32 0, i32 1, i32 poison, i32 4>
  %i.fb = insertelement <4 x float> %i.fa, float %i.ce, i64 2
  %i.fc = fneg float %.sroa.13.0.copyload.i121    ; 2 uses
  %i.fd = fneg float %i.dd                        ; 2 uses
  %i.fe = insertelement <4 x float> %i.cj, float %i.fd, i64 0
  %i.ff = shufflevector <4 x float> %i.fe, <4 x float> %i.bq, <4 x i32> <i32 0, i32 1, i32 poison, i32 5>
  %i.fg = insertelement <4 x float> %i.de, float %i.fc, i64 0
  %i.fh = insertelement <4 x float> %i.fg, float %i.aw, i64 2
  %i.fi = insertelement <4 x float> %i.fh, float %.sroa.13.0.copyload.i85, i64 3
  %i.fj = insertelement <4 x float> %i.ff, float %i.cz, i64 2
  %i.fk = fmul <4 x float> %i.ci, %i.fj
  %i.fl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fb, <4 x float> %i.ck, <4 x float> %i.fk)
  %i.fm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fi, <4 x float> %i.cm, <4 x float> %i.fl)
  %i.fn = fadd <4 x float> %i.co, %i.fm           ; 4 uses
  %i.fo = insertelement <4 x float> %i.fn, float 1.000000e+00, i64 2
  %i.fp = insertelement <4 x float> %i.fo, float %i.dv, i64 0
  %i.fq = shufflevector <4 x float> %i.fp, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.fr = fdiv <4 x float> %i.da, %i.fq           ; 2 uses
  %i.fs = fmul <4 x float> %i.ea, %i.fr           ; 4 uses
  %i.ft = extractelement <4 x float> %i.fs, i64 1
  %.sroa.8.0.i71 = select i1 %i.dx, float %i.ft, float %i.eb
  %i.fu = extractelement <4 x float> %i.fs, i64 0
  %.sroa.0.0.i72 = select i1 %i.dx, float %i.fu, float %i.ec
  %i.fv = insertelement <2 x float> %i.cx, float %.sroa.0.0.i72, i64 1
  %i.fw = fsub <2 x float> %i.fv, %i.db           ; 2 uses
  %i.fx = insertelement <2 x float> %i.ds, float %.sroa.8.0.i71, i64 1
  %i.fy = fsub <2 x float> %i.fx, %i.ed
  %i.fz = fdiv <2 x float> %i.fy, %i.av           ; 2 uses
  %i.ga = fmul <2 x float> %i.fz, %i.fz
  %i.gb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fw, <2 x float> %i.fw, <2 x float> %i.ga)
  %i.gc = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.gb) ; 2 uses
  %i.gd = extractelement <4 x float> %i.fs, i64 2
  %i.ge = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.ba, float %i.gd)
  %i.gf = tail call float @llvm.fmuladd.f32(float %.sroa.13.0.copyload.i85, float %i.bu, float %i.ge)
  %i.gg = fadd float %i.cq, %i.gf                 ; 2 uses
  %i.gh = extractelement <4 x float> %i.fr, i64 3
  %i.gi = fmul float %i.gg, %i.gh
  %i.gj = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.fn)
  %i.gk = fcmp ogt <4 x float> %i.gj, splat (float f0x34000000) ; 3 uses
  %i.gl = extractelement <4 x i1> %i.gk, i64 3    ; 2 uses
  %.sroa.8.0.i86 = select i1 %i.gl, float %i.gi, float %i.gg
  %i.gm = extractelement <4 x float> %i.fs, i64 3
  %.sroa.0.0.i87 = select i1 %i.gl, float %i.gm, float %i.ee
  %i.gn = fsub float %.sroa.0.0.i87, %i.cy        ; 2 uses
  %i.go = fdiv <4 x float> <float poison, float 1.000000e+00, float 1.000000e+00, float poison>, %i.fn
  %i.gp = shufflevector <4 x float> %i.go, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 2, i32 1>
  %i.gq = fmul <4 x float> %i.ew, %i.gp
  %i.gr = shufflevector <4 x i1> %i.gk, <4 x i1> poison, <4 x i32> <i32 2, i32 1, i32 2, i32 1>
  %i.gs = select <4 x i1> %i.gr, <4 x float> %i.gq, <4 x float> %i.ew ; 3 uses
  %i.gt = extractelement <4 x float> %i.gs, i64 2
  %i.gu = fsub float %i.gt, %i.cy                 ; 2 uses
  %i.gv = extractelement <4 x float> %i.gs, i64 3
  %i.gw = fsub float %i.gv, %i.cy                 ; 2 uses
  %i.gx = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gy = insertelement <2 x float> poison, float %i.fd, i64 0
  %i.gz = shufflevector <2 x float> %i.gy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ha = fmul <2 x float> %i.gx, %i.gz
  %i.hb = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.hc = shufflevector <2 x float> %i.hb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hd = insertelement <2 x float> %i.bl, float %i.ba, i64 0
  %i.he = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hc, <2 x float> %i.hd, <2 x float> %i.ha)
  %i.hf = insertelement <2 x float> poison, float %i.fc, i64 0
  %i.hg = shufflevector <2 x float> %i.hf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hg, <2 x float> %i.er, <2 x float> %i.he)
  %i.hi = fadd <2 x float> %i.eu, %i.hh           ; 2 uses
  %i.hj = extractelement <4 x float> %i.fn, i64 0
  %i.hk = fdiv float 1.000000e+00, %i.hj
  %i.hl = insertelement <2 x float> poison, float %i.hk, i64 0
  %i.hm = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hn = fmul <2 x float> %i.hi, %i.hm
  %i.ho = shufflevector <4 x i1> %i.gk, <4 x i1> poison, <2 x i32> zeroinitializer
  %i.hp = select <2 x i1> %i.ho, <2 x float> %i.hn, <2 x float> %i.hi ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %i.hp, %i.cx
  %i.hq = extractelement <2 x float> %foldExtExtBinop, i64 1 ; 2 uses
  %i.hr = shufflevector <2 x float> %i.hp, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.hs = shufflevector <4 x float> %i.gs, <4 x float> %i.hr, <4 x i32> <i32 poison, i32 0, i32 1, i32 4>
  %i.ht = insertelement <4 x float> %i.hs, float %.sroa.8.0.i86, i64 0
  %i.hu = shufflevector <2 x float> %i.ds, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.hv = fsub <4 x float> %i.ht, %i.hu           ; 4 uses
  %i.hw = extractelement <4 x float> %i.hv, i64 0
  %i.hx = fdiv float %i.hw, %i.af                 ; 2 uses
  %i.hy = fmul float %i.hx, %i.hx
  %i.hz = tail call float @llvm.fmuladd.f32(float %i.gn, float %i.gn, float %i.hy)
  %sqrt.i88 = tail call noundef float @llvm.sqrt.f32(float %i.hz) ; 2 uses
  %i.ia = extractelement <4 x float> %i.hv, i64 1
  %i.ib = fdiv float %i.ia, %i.af                 ; 2 uses
  %i.ic = fmul float %i.ib, %i.ib
  %i.id = tail call float @llvm.fmuladd.f32(float %i.gu, float %i.gu, float %i.ic)
  %sqrt.i109 = tail call noundef float @llvm.sqrt.f32(float %i.id) ; 2 uses
  %i.ie = extractelement <4 x float> %i.hv, i64 2
  %i.if = fdiv float %i.ie, %i.af                 ; 2 uses
  %i.ig = fmul float %i.if, %i.if
  %i.ih = tail call float @llvm.fmuladd.f32(float %i.gw, float %i.gw, float %i.ig)
  %sqrt.i124 = tail call noundef float @llvm.sqrt.f32(float %i.ih) ; 2 uses
  %i.ii = extractelement <4 x float> %i.hv, i64 3
  %i.ij = fdiv float %i.ii, %i.af                 ; 2 uses
  %i.ik = fmul float %i.ij, %i.ij
  %i.il = tail call float @llvm.fmuladd.f32(float %i.hq, float %i.hq, float %i.ik)
  %sqrt.i145 = tail call noundef float @llvm.sqrt.f32(float %i.il) ; 2 uses
  %i.im = extractelement <2 x float> %i.gc, i64 0 ; 2 uses
  %i.in = extractelement <2 x float> %i.gc, i64 1 ; 2 uses
  %i.io = fcmp olt float %i.im, %i.in
  br i1 %i.io, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ip = fsub float %i.im, %i.in
  %i.iq = tail call float @llvm.fabs.f32(float %i.ip)
  %i.ir = fcmp ogt float %i.iq, f0x34000000
  %i.is = select i1 %i.ir, float -1.000000e+00, float 1.000000e+00
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.it = phi float [ 1.000000e+00, %bb.c ], [ %i.is, %bb.d ] ; 2 uses
  %i.iu = fcmp olt float %sqrt.i88, %sqrt.i109
  br i1 %i.iu, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.iv = fsub float %sqrt.i88, %sqrt.i109
  %i.iw = tail call float @llvm.fabs.f32(float %i.iv)
  %i.ix = fcmp ogt float %i.iw, f0x34000000
  %i.iy = select i1 %i.ix, float -1.000000e+00, float 1.000000e+00
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.iz = phi float [ 1.000000e+00, %bb.e ], [ %i.iy, %bb.f ]
  %i.ja = fcmp olt float %sqrt.i124, %sqrt.i145
  br i1 %i.ja, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.jb = fsub float %sqrt.i124, %sqrt.i145
  %i.jc = tail call float @llvm.fabs.f32(float %i.jb)
  %i.jd = fcmp ogt float %i.jc, f0x34000000
  %i.je = select i1 %i.jd, float -1.000000e+00, float 1.000000e+00
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.jf = phi float [ 1.000000e+00, %bb.g ], [ %i.je, %bb.h ] ; 3 uses
  %i.jg = insertelement <4 x float> poison, float %i.it, i64 0
  %i.jh = shufflevector <4 x float> %i.jg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ji = fmul <4 x float> %i.ag, %i.jh
  store <4 x float> %i.ji, ptr %1, align 4, !tbaa !10
  %i.jj = load <4 x float>, ptr %2, align 4, !tbaa !10
  %i.jk = insertelement <4 x float> poison, float %i.iz, i64 0
  %i.jl = shufflevector <4 x float> %i.jk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jm = fmul <4 x float> %i.jl, %i.jj
  store <4 x float> %i.jm, ptr %2, align 4, !tbaa !10
  %i.jn = load <4 x float>, ptr %3, align 4, !tbaa !10
  %i.jo = insertelement <4 x float> poison, float %i.jf, i64 0
  %i.jp = shufflevector <4 x float> %i.jo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jq = fmul <4 x float> %i.jp, %i.jn           ; 4 uses
  store <4 x float> %i.jq, ptr %3, align 4, !tbaa !10
  %i.jr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8, !tbaa !46 ; 4 uses
  %i.js = load float, ptr %1, align 4, !tbaa !12
  %i.jt = fmul float %i.jr, %i.js
  %i.ju = load float, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !14
  %i.jv = fmul float %i.jr, %i.ju
  %i.jw = load float, ptr %.sroa.13.0..sroa_idx.i, align 4, !tbaa !13
  %i.jx = fmul float %i.jr, %i.jw
  %6 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 408), align 8
  %7 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 424), align 8
  %8 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 440), align 8
  %9 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 456), align 8
  %i.jy = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.jv, i64 0 ; 3 uses
  %i.jz = shufflevector <4 x float> %7, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ka = fmul <2 x float> %i.jy, %i.jz
  %i.kb = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.jt, i64 0 ; 3 uses
  %i.kc = shufflevector <4 x float> %6, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kb, <2 x float> %i.kc, <2 x float> %i.ka)
  %i.ke = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.jx, i64 0 ; 3 uses
  %i.kf = shufflevector <4 x float> %8, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ke, <2 x float> %i.kf, <2 x float> %i.kd)
  %i.kh = shufflevector <4 x float> %9, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ki = fadd <2 x float> %i.kh, %i.kg           ; 2 uses
  %i.kj = fdiv <2 x float> splat (float 1.000000e+00), %i.ki ; 3 uses
  %i.kk = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ki)
  %i.kl = fcmp ogt <2 x float> %i.kk, splat (float f0x34000000) ; 3 uses
  %i.km = load float, ptr %.sroa.13.0..sroa_idx.i84, align 4, !tbaa !13
  %10 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 404), align 4
  %11 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 420), align 4
  %12 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 436), align 4
  %13 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 452), align 4
  %i.kn = shufflevector <4 x float> %11, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ko = shufflevector <4 x float> %10, <4 x float> poison, <2 x i32> zeroinitializer
  %i.kp = shufflevector <4 x float> %12, <4 x float> poison, <2 x i32> zeroinitializer
  %i.kq = shufflevector <4 x float> %13, <4 x float> poison, <2 x i32> zeroinitializer
  %i.kr = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 396), align 4, !tbaa !16 ; 4 uses
  %i.ks = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 412), align 4, !tbaa !16 ; 4 uses
  %i.kt = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 428), align 4, !tbaa !16 ; 4 uses
  %i.ku = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 444), align 4, !tbaa !16 ; 4 uses
  %i.kv = shufflevector <2 x float> %i.ks, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kw = fmul <2 x float> %i.jy, %i.kv
  %i.kx = shufflevector <2 x float> %i.kr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ky = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kb, <2 x float> %i.kx, <2 x float> %i.kw)
  %i.kz = shufflevector <2 x float> %i.kt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.la = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ke, <2 x float> %i.kz, <2 x float> %i.ky)
  %i.lb = shufflevector <2 x float> %i.ku, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lc = fadd <2 x float> %i.lb, %i.la           ; 2 uses
  %i.ld = fmul <2 x float> %i.lc, %i.kj
  %i.le = shufflevector <2 x float> %i.ks, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.lf = shufflevector <2 x float> %i.ks, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lg = fmul <2 x float> %i.jy, %i.lf
  %i.lh = shufflevector <2 x float> %i.kr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.li = shufflevector <2 x float> %i.kr, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kb, <2 x float> %i.li, <2 x float> %i.lg)
  %i.lk = shufflevector <2 x float> %i.kt, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ll = shufflevector <2 x float> %i.kt, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ke, <2 x float> %i.ll, <2 x float> %i.lj)
  %i.ln = shufflevector <2 x float> %i.ku, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.lo = shufflevector <2 x float> %i.ku, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lp = fadd <2 x float> %i.lo, %i.lm           ; 2 uses
  %i.lq = fmul <2 x float> %i.lp, %i.kj
  %i.lr = select <2 x i1> %i.kl, <2 x float> %i.lq, <2 x float> %i.lp ; 3 uses
  %i.ls = select <2 x i1> %i.kl, <2 x float> %i.ld, <2 x float> %i.lc ; 4 uses
  %shift216 = shufflevector <2 x float> %i.ls, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop217 = fsub <2 x float> %i.ls, %shift216
  %i.lt = extractelement <2 x float> %foldExtExtBinop217, i64 0 ; 2 uses
  %i.lu = extractelement <2 x float> %i.lr, i64 0
  %i.lv = extractelement <2 x float> %i.lr, i64 1 ; 2 uses
  %i.lw = fsub float %i.lu, %i.lv
  %i.lx = fdiv float %i.lw, %i.af                 ; 2 uses
  %i.ly = fmul float %i.lx, %i.lx
  %i.lz = tail call float @llvm.fmuladd.f32(float %i.lt, float %i.lt, float %i.ly)
  %sqrt.i166 = tail call noundef float @llvm.sqrt.f32(float %i.lz)
  %i.ma = load <2 x float>, ptr %2, align 4, !tbaa !10 ; 2 uses
  %i.mb = shufflevector <4 x float> %i.jq, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.mc = shufflevector <2 x float> %i.ma, <2 x float> %i.mb, <2 x i32> <i32 0, i32 3>
  %i.md = insertelement <2 x float> poison, float %i.jr, i64 0
  %i.me = shufflevector <2 x float> %i.md, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.mf = fmul <2 x float> %i.mc, %i.me           ; 4 uses
  %i.mg = shufflevector <2 x float> %i.ma, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.mh = shufflevector <4 x float> %i.jq, <4 x float> %i.mg, <2 x i32> <i32 5, i32 1>
  %i.mi = fmul <2 x float> %i.mh, %i.me           ; 4 uses
  %i.mj = shufflevector <4 x float> %i.jq, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.mk = insertelement <2 x float> %i.mj, float %i.km, i64 0
  %i.ml = fmul <2 x float> %i.mk, %i.me           ; 4 uses
  %i.mm = fmul <2 x float> %i.mi, %i.jz
  %i.mn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mf, <2 x float> %i.kc, <2 x float> %i.mm)
  %i.mo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ml, <2 x float> %i.kf, <2 x float> %i.mn)
  %i.mp = fadd <2 x float> %i.kh, %i.mo           ; 2 uses
  %i.mq = fdiv <2 x float> splat (float 1.000000e+00), %i.mp ; 3 uses
  %i.mr = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.mp)
  %i.ms = fcmp ogt <2 x float> %i.mr, splat (float f0x34000000) ; 3 uses
  %i.mt = fmul <2 x float> %i.mi, %i.ks
  %i.mu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mf, <2 x float> %i.kr, <2 x float> %i.mt)
  %i.mv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ml, <2 x float> %i.kt, <2 x float> %i.mu)
  %i.mw = fadd <2 x float> %i.ku, %i.mv           ; 2 uses
  %i.mx = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.mi, <2 x i32> <i32 3, i32 1>
  %i.my = fmul <2 x float> %i.mx, %i.kn
  %i.mz = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.mf, <2 x i32> <i32 3, i32 1>
  %i.na = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mz, <2 x float> %i.ko, <2 x float> %i.my)
  %i.nb = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.ml, <2 x i32> <i32 3, i32 1>
  %i.nc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nb, <2 x float> %i.kp, <2 x float> %i.na)
  %i.nd = fadd <2 x float> %i.kq, %i.nc           ; 2 uses
  %i.ne = fmul <2 x float> %i.mw, %i.mq
  %i.nf = shufflevector <2 x float> %i.kj, <2 x float> %i.mq, <2 x i32> <i32 3, i32 1>
  %i.ng = fmul <2 x float> %i.nf, %i.nd
  %i.nh = shufflevector <2 x i1> %i.kl, <2 x i1> %i.ms, <2 x i32> <i32 3, i32 1>
  %i.ni = select <2 x i1> %i.nh, <2 x float> %i.ng, <2 x float> %i.nd ; 2 uses
  %i.nj = select <2 x i1> %i.ms, <2 x float> %i.ne, <2 x float> %i.mw
  %i.nk = fmul <2 x float> %i.mi, %i.le
  %i.nl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mf, <2 x float> %i.lh, <2 x float> %i.nk)
  %i.nm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ml, <2 x float> %i.lk, <2 x float> %i.nl)
  %i.nn = fadd <2 x float> %i.ln, %i.nm           ; 2 uses
  %i.no = fmul <2 x float> %i.nn, %i.mq
  %i.np = select <2 x i1> %i.ms, <2 x float> %i.no, <2 x float> %i.nn ; 2 uses
  %i.nq = extractelement <2 x float> %i.np, i64 0
  %i.nr = fsub float %i.nq, %i.lv
  %foldExtExtBinop209 = fsub <2 x float> %i.np, %i.ls
  %i.ns = extractelement <2 x float> %foldExtExtBinop209, i64 1
  %i.nt = shufflevector <2 x float> %i.ls, <2 x float> %i.lr, <2 x i32> <i32 1, i32 3>
  %i.nu = fsub <2 x float> %i.nj, %i.nt           ; 4 uses
  %shift = shufflevector <2 x float> %i.ni, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop211 = fsub <2 x float> %i.ni, %shift
  %i.nv = extractelement <2 x float> %foldExtExtBinop211, i64 0
  %i.nw = fdiv float %i.nr, %i.af                 ; 3 uses
  %i.nx = fneg float %i.nw
  %i.ny = insertelement <2 x float> %i.nu, float %i.nw, i64 1 ; 2 uses
  %i.nz = fmul <2 x float> %i.ny, %i.ny
  %i.oa = shufflevector <2 x float> %i.nu, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ob = insertelement <2 x float> %i.oa, float %i.nw, i64 0 ; 2 uses
  %i.oc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ob, <2 x float> %i.ob, <2 x float> %i.nz)
  %i.od = fadd <2 x float> %i.oc, <float 0.000000e+00, float -0.000000e+00>
  %i.oe = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.od) ; 2 uses
  %i.of = extractelement <2 x float> %i.oe, i64 0
  %i.og = fdiv float 1.000000e+00, %i.of          ; 3 uses
  %i.oh = fmul float %i.og, %i.nx
  %i.oi = fmul float %i.og, 0.000000e+00
  %i.oj = extractelement <2 x float> %i.nu, i64 1
  %i.ok = fdiv float %i.oj, %i.af
  %i.ol = extractelement <2 x float> %i.nu, i64 0
  %i.om = fmul float %i.ol, %i.og
  %i.on = fmul float %i.ok, %i.om
  %i.oo = tail call float @llvm.fmuladd.f32(float %i.oh, float %i.ns, float %i.on)
  %i.op = tail call noundef float @llvm.fmuladd.f32(float %i.oi, float %i.nv, float %i.oo)
  %i.oq = tail call float @llvm.fabs.f32(float %i.op)
  %i.or = extractelement <2 x float> %i.oe, i64 1
  %i.os = fmul float %i.or, %i.oq
  %i.ot = fcmp ogt float %i.os, 2.500000e-03
  %i.ou = zext i1 %i.ot to i8
  store i8 %i.ou, ptr %5, align 1, !tbaa !47
  %i.ov = fcmp ogt float %sqrt.i166, 2.000000e-02
  %i.ow = zext i1 %i.ov to i8                     ; 2 uses
  store i8 %i.ow, ptr %4, align 1, !tbaa !47
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 804), i64 %i.a
  store float %i.it, ptr %i.ox, align 4, !tbaa !10
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 804), i64 %i.f
  store float %i.jf, ptr %i.oy, align 4, !tbaa !10
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 804), i64 %i.i
  store float %i.jf, ptr %i.oz, align 4, !tbaa !10
  %i.pa = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 796), i64 %i.a
  store i8 %i.ow, ptr %i.pa, align 1, !tbaa !47
  %i.pb = load i8, ptr %5, align 1, !tbaa !47, !range !33, !noundef !34
  %i.pc = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 799), i64 %i.a
  store i8 %i.pb, ptr %i.pc, align 1, !tbaa !47
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  ret void
}

declare void @_ZN5ImGui19CaptureMouseFromAppEb(i1 noundef zeroext) local_unnamed_addr #11

declare noundef zeroext i1 @_ZN5ImGui14IsMouseClickedEib(i32 noundef, i1 noundef zeroext) local_unnamed_addr #11

declare noundef zeroext i1 @_ZN5ImGui16IsAnyItemHoveredEv() local_unnamed_addr #11

declare noundef zeroext i1 @_ZN5ImGui15IsAnyItemActiveEv() local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @fmodf(float noundef, float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define internal fastcc void @_ZN8ImGuizmoL11ComputeSnapERNS_5vec_tEPf(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #16 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !10   ; 4 uses
  %i.b = fcmp ugt float %i.a, f0x34000000
  br i1 %i.b, label %bb.b, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load float, ptr %0, align 4, !tbaa !10   ; 4 uses
  %i.d = tail call float @fmodf(float noundef %i.c, float noundef %i.a) #19 ; 3 uses
  %i.e = tail call float @llvm.fabs.f32(float %i.d)
  %i.f = fdiv float %i.e, %i.a                    ; 2 uses
  %i.g = fcmp olt float %i.f, 5.000000e-01
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = fsub float %i.c, %i.d
  br label %.sink.split.i

bb.d:                                             ; preds = %bb.b
  %i.i = fcmp ogt float %i.f, 5.000000e-01
  br i1 %i.i, label %bb.e, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit

bb.e:                                             ; preds = %bb.d
  %i.j = fsub float %i.c, %i.d
  %i.k = fcmp olt float %i.c, 0.000000e+00
  %i.l = select i1 %i.k, float -1.000000e+00, float 1.000000e+00
  %i.m = tail call float @llvm.fmuladd.f32(float %i.a, float %i.l, float %i.j)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %bb.c
  %.sink.i = phi float [ %i.h, %bb.c ], [ %i.m, %bb.e ]
  store float %.sink.i, ptr %0, align 4, !tbaa !10
  br label %_ZN8ImGuizmoL11ComputeSnapEPff.exit

_ZN8ImGuizmoL11ComputeSnapEPff.exit:              ; preds = %bb.a, %bb.d, %.sink.split.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = load float, ptr %i.o, align 4, !tbaa !10 ; 4 uses
  %i.q = fcmp ugt float %i.p, f0x34000000
  br i1 %i.q, label %bb.f, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1

bb.f:                                             ; preds = %_ZN8ImGuizmoL11ComputeSnapEPff.exit
  %i.r = load float, ptr %i.n, align 4, !tbaa !10 ; 4 uses
  %i.s = tail call float @fmodf(float noundef %i.r, float noundef %i.p) #19 ; 3 uses
  %i.t = tail call float @llvm.fabs.f32(float %i.s)
  %i.u = fdiv float %i.t, %i.p                    ; 2 uses
  %i.v = fcmp olt float %i.u, 5.000000e-01
  br i1 %i.v, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = fcmp ogt float %i.u, 5.000000e-01
  br i1 %i.w, label %bb.h, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1

bb.h:                                             ; preds = %bb.g
  %i.x = fsub float %i.r, %i.s
  %i.y = fcmp olt float %i.r, 0.000000e+00
  %i.z = select i1 %i.y, float -1.000000e+00, float 1.000000e+00
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.p, float %i.z, float %i.x)
  br label %.sink.split.i.1

bb.i:                                             ; preds = %bb.f
  %i.ab = fsub float %i.r, %i.s
  br label %.sink.split.i.1

.sink.split.i.1:                                  ; preds = %bb.i, %bb.h
  %.sink.i.1 = phi float [ %i.ab, %bb.i ], [ %i.aa, %bb.h ]
  store float %.sink.i.1, ptr %i.n, align 4, !tbaa !10
  br label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1

_ZN8ImGuizmoL11ComputeSnapEPff.exit.1:            ; preds = %.sink.split.i.1, %bb.g, %_ZN8ImGuizmoL11ComputeSnapEPff.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !10 ; 4 uses
  %i.af = fcmp ugt float %i.ae, f0x34000000
  br i1 %i.af, label %bb.j, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.2

bb.j:                                             ; preds = %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1
  %i.ag = load float, ptr %i.ac, align 4, !tbaa !10 ; 4 uses
  %i.ah = tail call float @fmodf(float noundef %i.ag, float noundef %i.ae) #19 ; 3 uses
  %i.ai = tail call float @llvm.fabs.f32(float %i.ah)
  %i.aj = fdiv float %i.ai, %i.ae                 ; 2 uses
  %i.ak = fcmp olt float %i.aj, 5.000000e-01
  br i1 %i.ak, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = fcmp ogt float %i.aj, 5.000000e-01
  br i1 %i.al, label %bb.l, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.2

bb.l:                                             ; preds = %bb.k
  %i.am = fsub float %i.ag, %i.ah
  %i.an = fcmp olt float %i.ag, 0.000000e+00
  %i.ao = select i1 %i.an, float -1.000000e+00, float 1.000000e+00
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.ao, float %i.am)
  br label %.sink.split.i.2

bb.m:                                             ; preds = %bb.j
  %i.aq = fsub float %i.ag, %i.ah
  br label %.sink.split.i.2

.sink.split.i.2:                                  ; preds = %bb.m, %bb.l
  %.sink.i.2 = phi float [ %i.aq, %bb.m ], [ %i.ap, %bb.l ]
  store float %.sink.i.2, ptr %i.ac, align 4, !tbaa !10
  br label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.2

_ZN8ImGuizmoL11ComputeSnapEPff.exit.2:            ; preds = %.sink.split.i.2, %bb.k, %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

declare void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(196), ptr noundef nonnull align 4 dereferenceable(8), float noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

declare noundef i32 @_Z14ImFormatStringPcmPKcz(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #11

declare void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(196), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

declare void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(196), ptr noundef, i32 noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #11

declare void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(196), ptr noundef nonnull align 4 dereferenceable(8), float noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #11

declare void @_ZN10ImDrawList17AddTriangleFilledERK6ImVec2S2_S2_j(ptr noundef nonnull align 8 dereferenceable(196), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8ImGuizmoL15DrawHatchedAxisERKNS_5vec_tE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #13 {
bb.a:
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  ret void

bb.c:                                             ; preds = %bb.a, %bb.c
  %.052 = phi i32 [ 1, %bb.a ], [ %i.br, %bb.c ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.c = shl nuw nsw i32 %.052, 1                 ; 2 uses
  %3 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8
  %4 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 408), align 8
  %5 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 424), align 8
  %6 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 440), align 8
  %7 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 456), align 8
  %i.d = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10 ; 2 uses
  %i.e = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.f = or disjoint i32 %i.c, 1
  %8 = load <4 x float>, ptr %0, align 4
  %i.g = shufflevector <4 x float> %8, <4 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.h = load float, ptr %i.a, align 4, !tbaa !14
  %i.i = load float, ptr %i.b, align 4, !tbaa !13
  %i.j = insertelement <3 x float> %i.g, float %i.h, i64 1
  %i.k = insertelement <3 x float> %i.j, float %i.i, i64 2
  %i.l = fmul <3 x float> %i.k, splat (float 5.000000e-02) ; 3 uses
  %i.m = uitofp nneg i32 %i.c to float
  %i.n = uitofp nneg i32 %i.f to float
  %i.o = shufflevector <3 x float> %i.l, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.p = insertelement <2 x float> poison, float %i.m, i64 0
  %i.q = insertelement <2 x float> %i.p, float %i.n, i64 1 ; 3 uses
  %i.r = fmul <2 x float> %i.o, %i.q
  %i.s = shufflevector <4 x float> %3, <4 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.t = fmul <2 x float> %i.s, %i.r              ; 2 uses
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.v = shufflevector <3 x float> %i.l, <3 x float> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x float> %i.v, %i.q
  %i.x = fmul <2 x float> %i.w, %i.s              ; 2 uses
  %i.y = shufflevector <3 x float> %i.l, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.z = fmul <2 x float> %i.y, %i.q
  %i.aa = fmul <2 x float> %i.s, %i.z             ; 2 uses
  %i.ab = shufflevector <4 x float> %5, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fmul <2 x float> %i.t, %i.ab
  %i.ad = shufflevector <4 x float> %4, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ae = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> %i.ad, <2 x float> %i.ac)
  %i.af = shufflevector <4 x float> %6, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ag = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %i.af, <2 x float> %i.ae)
  %i.ah = shufflevector <4 x float> %7, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ai = fadd <2 x float> %i.ah, %i.ag
  %i.aj = fdiv <2 x float> splat (float 5.000000e-01), %i.ai
  %i.ak = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 396), align 4, !tbaa !16
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.am = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 412), align 4, !tbaa !16
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ao = fmul <4 x float> %i.u, %i.an
  %i.ap = shufflevector <2 x float> %i.x, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.aq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ap, <4 x float> %i.al, <4 x float> %i.ao)
  %i.ar = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 428), align 4, !tbaa !16
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.at = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.au = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.at, <4 x float> %i.as, <4 x float> %i.aq)
  %i.av = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 444), align 4, !tbaa !16
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ax = fadd <4 x float> %i.aw, %i.au
  %i.ay = shufflevector <2 x float> %i.aj, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.az = fmul <4 x float> %i.ax, %i.ay           ; 4 uses
  %i.ba = extractelement <4 x float> %i.az, i64 1
  %i.bb = fadd float %i.ba, 5.000000e-01
  %i.bc = shufflevector <4 x float> %i.az, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bd = insertelement <2 x float> %i.bc, float 1.000000e+00, i64 1
  %i.be = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.bb, i64 1
  %i.bf = fsub <2 x float> %i.bd, %i.be
  %i.bg = fmul <2 x float> %i.d, %i.bf
  %i.bh = fadd <2 x float> %i.e, %i.bg
  store <2 x float> %i.bh, ptr %1, align 8
  %i.bi = extractelement <4 x float> %i.az, i64 3
  %i.bj = fadd float %i.bi, 5.000000e-01
  %i.bk = shufflevector <4 x float> %i.az, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.bl = insertelement <2 x float> %i.bk, float 1.000000e+00, i64 1
  %i.bm = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.bj, i64 1
  %i.bn = fsub <2 x float> %i.bl, %i.bm
  %i.bo = fmul <2 x float> %i.d, %i.bn
  %i.bp = fadd <2 x float> %i.e, %i.bo
  store <2 x float> %i.bp, ptr %2, align 8
  %i.bq = load ptr, ptr @_ZN8ImGuizmoL8gContextE, align 8, !tbaa !31
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(196) %i.bq, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, i32 noundef -2147483648, float noundef 6.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %i.br = add nuw nsw i32 %.052, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.br, 10
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !81
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_ImGuizmo.cpp() #18 section ".text.startup" {
bb.a:
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 640), i8 0, i64 24, i1 false)
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 685), align 1, !tbaa !50
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !51
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), i8 0, i64 24, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 988), align 4, !tbaa !29
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 992), align 8, !tbaa !30
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr @_ZN8ImGuizmoL14directionUnaryE, align 16
  store <2 x float> zeroinitializer, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 8), align 8
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 16), align 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 24), i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 40), align 8
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZN8ImGuizmoL14directionUnaryE) ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.sqrt.v3f32(<3 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"float", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"_ZTSN8ImGuizmo5vec_tE", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12}
!12 = !{!11, !9, i64 0}
!13 = !{!11, !9, i64 8}
!14 = !{!11, !9, i64 4}
!15 = !{!11, !9, i64 12}
!16 = !{!5, !5, i64 0}
!17 = !{i64 0, i64 4, !10, i64 4, i64 4, !10, i64 8, i64 4, !10, i64 12, i64 4, !10}
!18 = !{!"any pointer", !5, i64 0}
!19 = !{!"p1 _ZTS10ImDrawList", !18, i64 0}
!20 = !{!"_ZTSN8ImGuizmo4MODEE", !5, i64 0}
!21 = !{!"_ZTSN8ImGuizmo8matrix_tE", !5, i64 0}
!22 = !{!"_ZTS6ImVec2", !9, i64 0, !9, i64 4}
!23 = !{!"bool", !5, i64 0}
!24 = !{!"_ZTSN8ImGuizmo7ContextE", !19, i64 0, !20, i64 8, !21, i64 12, !21, i64 76, !21, i64 140, !21, i64 204, !21, i64 268, !21, i64 332, !21, i64 396, !21, i64 460, !11, i64 524, !11, i64 540, !11, i64 556, !11, i64 572, !11, i64 588, !11, i64 604, !11, i64 620, !9, i64 636, !22, i64 640, !22, i64 648, !22, i64 656, !9, i64 664, !11, i64 668, !23, i64 684, !23, i64 685, !11, i64 688, !11, i64 704, !11, i64 720, !11, i64 736, !9, i64 752, !9, i64 756, !11, i64 760, !11, i64 776, !9, i64 792, !5, i64 796, !5, i64 799, !5, i64 804, !11, i64 816, !11, i64 832, !11, i64 848, !11, i64 864, !6, i64 880, !5, i64 884, !23, i64 892, !21, i64 896, !6, i64 960, !9, i64 964, !9, i64 968, !9, i64 972, !9, i64 976, !9, i64 980, !9, i64 984, !9, i64 988, !23, i64 992}
!25 = !{!24, !9, i64 972}
!26 = !{!24, !9, i64 976}
!27 = !{!24, !9, i64 980}
!28 = !{!24, !9, i64 984}
!29 = !{!24, !9, i64 988}
!30 = !{!24, !23, i64 992}
!31 = !{!24, !19, i64 0}
!32 = !{!24, !23, i64 684}
!33 = !{i8 0, i8 2}
!34 = !{}
!35 = !{!"p1 omnipotent char", !18, i64 0}
!36 = !{!"p1 _ZTS11ImFontAtlas", !18, i64 0}
!37 = !{!"p1 _ZTS6ImFont", !18, i64 0}
!38 = !{!"short", !5, i64 0}
!39 = !{!"p1 short", !18, i64 0}
!40 = !{!"_ZTS8ImVectorItE", !6, i64 0, !6, i64 4, !39, i64 8}
!41 = !{!"_ZTS7ImGuiIO", !6, i64 0, !6, i64 4, !22, i64 8, !9, i64 16, !9, i64 20, !35, i64 24, !35, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !5, i64 52, !9, i64 140, !9, i64 144, !18, i64 152, !36, i64 160, !9, i64 168, !23, i64 172, !37, i64 176, !22, i64 184, !23, i64 192, !23, i64 193, !23, i64 194, !23, i64 195, !23, i64 196, !23, i64 197, !9, i64 200, !35, i64 208, !35, i64 216, !18, i64 224, !18, i64 232, !18, i64 240, !18, i64 248, !18, i64 256, !18, i64 264, !18, i64 272, !18, i64 280, !22, i64 288, !5, i64 296, !9, i64 304, !9, i64 308, !23, i64 312, !23, i64 313, !23, i64 314, !23, i64 315, !5, i64 316, !5, i64 828, !23, i64 908, !23, i64 909, !23, i64 910, !23, i64 911, !23, i64 912, !23, i64 913, !23, i64 914, !9, i64 916, !6, i64 920, !6, i64 924, !6, i64 928, !6, i64 932, !6, i64 936, !22, i64 940, !23, i64 948, !6, i64 952, !6, i64 956, !22, i64 960, !5, i64 968, !5, i64 1008, !5, i64 1048, !5, i64 1053, !5, i64 1058, !5, i64 1063, !5, i64 1068, !5, i64 1073, !5, i64 1080, !5, i64 1100, !5, i64 1120, !5, i64 1160, !5, i64 1180, !5, i64 3228, !5, i64 5276, !5, i64 5356, !9, i64 5436, !23, i64 5440, !38, i64 5442, !40, i64 5448}
!42 = !{!41, !9, i64 288}
!43 = !{!24, !9, i64 648}
!44 = !{!41, !9, i64 292}
!45 = !{!24, !9, i64 652}
!46 = !{!24, !9, i64 664}
!47 = !{!23, !23, i64 0}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!24, !9, i64 636}
!50 = !{!24, !23, i64 685}
!51 = !{!24, !23, i64 892}
!52 = !{!6, !6, i64 0}
!53 = !{!"branch_weights", i32 1, i32 1048575}
!54 = !{!24, !9, i64 964}
!55 = !{!24, !9, i64 968}
!56 = distinct !{!56, !48}
!57 = !{!24, !9, i64 640}
!58 = !{!24, !9, i64 644}
!59 = distinct !{!59, !48}
!60 = distinct !{!60, !48}
!61 = distinct !{!61, !48}
!62 = distinct !{!62, !48}
!63 = distinct !{!63, !48}
!64 = distinct !{!64, !48}
!65 = distinct !{!65, !48}
!66 = distinct !{!66, !48}
!67 = distinct !{!67, !48}
!68 = distinct !{!68, !48}
!69 = !{!24, !20, i64 8}
!70 = !{i64 0, i64 64, !16}
!71 = !{!24, !6, i64 960}
!72 = !{!24, !9, i64 756}
!73 = !{!24, !9, i64 752}
!74 = !{!24, !9, i64 792}
!75 = !{!24, !6, i64 880}
!76 = !{!22, !9, i64 0}
!77 = !{!22, !9, i64 4}
end_hunk_6
