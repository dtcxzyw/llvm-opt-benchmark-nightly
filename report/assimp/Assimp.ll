Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/Assimp?download=true
inline.NumInlined: 1626
inline.NumDeleted: 658
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 53
begin_hunk_0_@aiVector3Negate:bb.a
  %i.a = load <2 x float>, ptr %0, align 4
  %i.b = fneg <2 x float> %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load float, ptr %i.c, align 4
  %i.e = fneg float %i.d
  store <2 x float> %i.b, ptr %0, align 4
  store float %i.e, ptr %i.c, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef float @aiVector3DotProduct(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #18 {
bb.a:
  %i.a = load float, ptr %0, align 4
  %i.b = load float, ptr %1, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load float, ptr %i.c, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load float, ptr %i.e, align 4
  %i.g = fmul float %i.d, %i.f
  %i.h = tail call float @llvm.fmuladd.f32(float %i.a, float %i.b, float %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load float, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load float, ptr %i.k, align 4
  %i.m = tail call noundef float @llvm.fmuladd.f32(float %i.j, float %i.l, float %i.h)
  ret float %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiVector3CrossProduct(ptr nofree noundef writeonly captures(none) initializes((0, 12)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load float, ptr %2, align 4              ; 2 uses
  %i.d = load float, ptr %1, align 4              ; 2 uses
  %i.e = load <2 x float>, ptr %i.a, align 4      ; 3 uses
  %i.f = load <2 x float>, ptr %i.b, align 4      ; 3 uses
  %i.g = fneg <2 x float> %i.f
  %i.h = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.i = insertelement <2 x float> %i.h, float %i.d, i64 1
  %i.j = fmul <2 x float> %i.i, %i.g
  %i.k = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.l = insertelement <2 x float> %i.k, float %i.c, i64 1
  %i.m = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.e, <2 x float> %i.l, <2 x float> %i.j)
  %i.n = fneg float %i.c
  %i.o = extractelement <2 x float> %i.e, i64 0
  %i.p = fmul float %i.o, %i.n
  %i.q = extractelement <2 x float> %i.f, i64 0
  %i.r = tail call float @llvm.fmuladd.f32(float %i.d, float %i.q, float %i.p)
  store <2 x float> %i.m, ptr %0, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.r, ptr %.sroa.4.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiVector3Normalize(ptr nofree noundef captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = load float, ptr %0, align 4              ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load float, ptr %i.b, align 4            ; 3 uses
  %i.d = fmul float %i.c, %i.c
  %i.e = tail call float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load float, ptr %i.f, align 4            ; 3 uses
  %i.h = tail call noundef float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.e) ; 2 uses
  %i.i = fcmp oeq float %i.h, 0.000000e+00
  br i1 %i.i, label %_ZN10aiVector3tIfE9NormalizeEv.exit, label %_ZN10aiVector3tIfEdVEf.exit.i

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.a
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.h)
  %i.j = fdiv float 1.000000e+00, %sqrt.i.i       ; 3 uses
  %i.k = fmul float %i.a, %i.j
  store float %i.k, ptr %0, align 4
  %i.l = fmul float %i.c, %i.j
  store float %i.l, ptr %i.b, align 4
  %i.m = fmul float %i.g, %i.j
  store float %i.m, ptr %i.f, align 4
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit

_ZN10aiVector3tIfE9NormalizeEv.exit:              ; preds = %bb.a, %_ZN10aiVector3tIfEdVEf.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiVector3NormalizeSafe(ptr nofree noundef captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = load float, ptr %0, align 4              ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load float, ptr %i.b, align 4            ; 3 uses
  %i.d = fmul float %i.c, %i.c
  %i.e = tail call float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load float, ptr %i.f, align 4            ; 3 uses
  %i.h = tail call noundef float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.e) ; 2 uses
  %i.i = fcmp ogt float %i.h, 0.000000e+00
  br i1 %i.i, label %_ZN10aiVector3tIfEdVEf.exit.i, label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.a
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.h)
  %i.j = fdiv float 1.000000e+00, %sqrt.i.i       ; 3 uses
  %i.k = fmul float %i.a, %i.j
  store float %i.k, ptr %0, align 4
  %i.l = fmul float %i.c, %i.j
  store float %i.l, ptr %i.b, align 4
  %i.m = fmul float %i.g, %i.j
  store float %i.m, ptr %i.f, align 4
  br label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit

_ZN10aiVector3tIfE13NormalizeSafeEv.exit:         ; preds = %bb.a, %_ZN10aiVector3tIfEdVEf.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiVector3RotateByQuaternion(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.016.0.copyload.i = load <2 x float>, ptr %1, align 4 ; 6 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.9.0.copyload.i = load <2 x float>, ptr %.sroa.9.0..sroa_idx.i, align 4 ; 5 uses
  %.sroa.016.0.vec.extract18.i = extractelement <2 x float> %.sroa.016.0.copyload.i, i64 0
  %.sroa.016.4.vec.extract22.i = extractelement <2 x float> %.sroa.016.0.copyload.i, i64 1 ; 2 uses
  %i.c = load <2 x float>, ptr %0, align 4        ; 5 uses
  %i.d = load <2 x float>, ptr %i.a, align 4      ; 4 uses
  %i.e = fneg <2 x float> %.sroa.9.0.copyload.i   ; 3 uses
  %i.f = shufflevector <2 x float> %.sroa.016.0.copyload.i, <2 x float> %.sroa.9.0.copyload.i, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.g = fneg <2 x float> %i.f                    ; 2 uses
  %i.h = shufflevector <2 x float> %.sroa.9.0.copyload.i, <2 x float> %.sroa.016.0.copyload.i, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.i = fneg <2 x float> %i.h
  %i.j = extractelement <2 x float> %i.c, i64 0
  %i.k = fneg float %i.j
  %i.l = fmul float %.sroa.016.4.vec.extract22.i, %i.k
  %i.m = tail call float @llvm.fmuladd.f32(float %.sroa.016.0.vec.extract18.i, float 0.000000e+00, float %i.l)
  %i.n = extractelement <2 x float> %i.e, i64 0   ; 2 uses
  %i.o = extractelement <2 x float> %i.c, i64 1
  %i.p = tail call float @llvm.fmuladd.f32(float %i.n, float %i.o, float %i.m)
  %i.q = extractelement <2 x float> %i.e, i64 1   ; 2 uses
  %i.r = extractelement <2 x float> %i.d, i64 1
  %i.s = tail call float @llvm.fmuladd.f32(float %i.q, float %i.r, float %i.p) ; 2 uses
  %i.t = fmul <2 x float> %i.h, zeroinitializer
  %i.u = fmul <2 x float> %.sroa.9.0.copyload.i, zeroinitializer
  %i.v = shufflevector <2 x float> %.sroa.016.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.w = shufflevector <2 x float> %i.d, <2 x float> %i.c, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.x = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.w, <2 x float> %i.t)
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.d, <2 x float> %i.u)
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.f, <2 x float> %i.d, <2 x float> %i.x)
  %i.aa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.h, <2 x float> %i.c, <2 x float> %i.y)
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.e, <2 x float> %i.c, <2 x float> %i.z) ; 4 uses
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.g, <2 x float> %i.w, <2 x float> %i.aa) ; 3 uses
  %i.ad = shufflevector <2 x float> %i.ab, <2 x float> %i.ac, <2 x i32> <i32 1, i32 2>
  %i.ae = fmul <2 x float> %i.v, %i.ad
  %i.af = insertelement <2 x float> poison, float %i.s, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.g, <2 x float> %i.ae)
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.i, <2 x float> %i.ah)
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %.sroa.9.0.copyload.i, <2 x float> %i.ai)
  %foldExtExtBinop = fmul <2 x float> %.sroa.016.0.copyload.i, %i.ab
  %i.ak = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.al = tail call float @llvm.fmuladd.f32(float %i.s, float %i.q, float %i.ak)
  %i.am = extractelement <2 x float> %i.ab, i64 1
  %i.an = tail call float @llvm.fmuladd.f32(float %i.am, float %i.n, float %i.al)
  %i.ao = extractelement <2 x float> %i.ac, i64 0
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ao, float %.sroa.016.4.vec.extract22.i, float %i.an)
  store <2 x float> %i.aj, ptr %0, align 4
  store float %i.ap, ptr %i.b, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiMatrix3FromMatrix4(ptr nofree noundef writeonly captures(none) initializes((0, 36)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = load float, ptr %1, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load float, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load float, ptr %i.g, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load <2 x float>, ptr %i.b, align 4
  %i.j = load <2 x float>, ptr %i.c, align 4
  %i.k = shufflevector <2 x float> %i.i, <2 x float> %i.j, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load <2 x float>, ptr %i.f, align 4
  store float %i.a, ptr %0, align 4
  store <4 x float> %i.k, ptr %.sroa.4.0..sroa_idx, align 4
  store float %i.e, ptr %.sroa.8.0..sroa_idx, align 4
  store <2 x float> %i.l, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.h, ptr %.sroa.11.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiMatrix3FromQuaternion(ptr nofree noundef writeonly captures(none) initializes((0, 36)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #14 {
bb.a:
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %3 = load <2 x float>, ptr %2, align 4, !noalias !16 ; 6 uses
  %4 = load float, ptr %i.a, align 4, !noalias !16 ; 3 uses
  %5 = fmul float %4, %4                          ; 2 uses
  %6 = extractelement <2 x float> %3, i64 0       ; 2 uses
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %6, float %5)
  %8 = shufflevector <2 x float> %3, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %9 = shufflevector <4 x float> %8, <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 1, i32 0, i32 1>
  %10 = insertelement <4 x float> poison, float %7, i64 0
  %11 = shufflevector <4 x float> %8, <4 x float> <float -2.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 0, i32 1, i32 0>
  %foldExtExtBinop = fmul <2 x float> %3, %3
  %12 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %13 = load <2 x float>, ptr %1, align 4, !noalias !16 ; 3 uses
  %14 = load float, ptr %i.b, align 4, !noalias !16 ; 4 uses
  %15 = extractelement <2 x float> %13, i64 0
  %16 = fneg float %15
  %17 = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %16, i64 1 ; 2 uses
  %18 = shufflevector <2 x float> %13, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 4 uses
  %19 = shufflevector <4 x float> %17, <4 x float> %18, <4 x i32> <i32 0, i32 1, i32 4, i32 4>
  %i.c = fmul <4 x float> %9, %19
  %20 = shufflevector <4 x float> %10, <4 x float> %18, <4 x i32> <i32 0, i32 5, i32 5, i32 5>
  %i.d = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %20, <4 x float> %11, <4 x float> %i.c)
  %i.e = fmul <4 x float> %i.d, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %21 = tail call float @llvm.fmuladd.f32(float %14, float %14, float %5)
  %22 = shufflevector <2 x float> %3, <2 x float> %13, <4 x i32> <i32 poison, i32 3, i32 0, i32 3>
  %23 = insertelement <4 x float> %22, float 1.000000e+00, i64 0
  %24 = shufflevector <4 x float> %17, <4 x float> %18, <4 x i32> <i32 0, i32 1, i32 1, i32 4>
  %25 = fmul <4 x float> %23, %24
  %26 = shufflevector <2 x float> %3, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>
  %27 = insertelement <4 x float> %26, float %21, i64 0
  %28 = shufflevector <4 x float> %27, <4 x float> %18, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %29 = insertelement <4 x float> <float -2.000000e+00, float poison, float poison, float poison>, float %4, i64 1
  %30 = shufflevector <4 x float> %29, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %31 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %28, <4 x float> %30, <4 x float> %25)
  %32 = fmul <4 x float> %31, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %i.f = tail call float @llvm.fmuladd.f32(float %14, float %14, float %12)
  %i.g = tail call float @llvm.fmuladd.f32(float %i.f, float -2.000000e+00, float 1.000000e+00)
  store <4 x float> %i.e, ptr %0, align 4
  store <4 x float> %32, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.g, ptr %.sroa.11.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @aiMatrix3AreEqual(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #18 {
bb.a:
  %i.a = load float, ptr %0, align 4
  %i.b = load float, ptr %1, align 4
  %i.c = fcmp oeq float %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_ZNK12aiMatrix3x3tIfEeqERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load float, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load float, ptr %i.f, align 4
  %i.h = fcmp oeq float %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_ZNK12aiMatrix3x3tIfEeqERKS0_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load float, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load float, ptr %i.k, align 4
  %i.m = fcmp oeq float %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_ZNK12aiMatrix3x3tIfEeqERKS0_.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = load float, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = load float, ptr %i.p, align 4
  %i.r = fcmp oeq float %i.o, %i.q
  br i1 %i.r, label %bb.e, label %_ZNK12aiMatrix3x3tIfEeqERKS0_.exit

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load float, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load float, ptr %i.u, align 4
  %i.w = fcmp oeq float %i.t, %i.v
  br i1 %i.w, label %bb.f, label %_ZNK12aiMatrix3x3tIfEeqERKS0_.exit

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.y = load float, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aa = load float, ptr %i.z, align 4
  %i.ab = fcmp oeq float %i.y, %i.aa
  br i1 %i.ab, label %bb.g, label %_ZNK12aiMatrix3x3tIfEeqERKS0_.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load float, ptr %i.ac, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load float, ptr %i.ae, align 4
  %i.ag = fcmp oeq float %i.ad, %i.af
  br i1 %i.ag, label %bb.h, label %_ZNK12aiMatrix3x3tIfEeqERKS0_.exit

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ai = load float, ptr %i.ah, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ak = load float, ptr %i.aj, align 4
  %i.al = fcmp oeq float %i.ai, %i.ak
  br i1 %i.al, label %bb.i, label %_ZNK12aiMatrix3x3tIfEeqERKS0_.exit

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load float, ptr %i.am, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ap = load float, ptr %i.ao, align 4
  %i.aq = fcmp oeq float %i.an, %i.ap
  %i.ar = zext i1 %i.aq to i32
  br label %_ZNK12aiMatrix3x3tIfEeqERKS0_.exit

_ZNK12aiMatrix3x3tIfEeqERKS0_.exit:               ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %i.as = phi i32 [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ %i.ar, %bb.i ]
  ret i32 %i.as
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @aiMatrix3AreEqualEpsilon(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, float noundef %2) local_unnamed_addr #18 {
bb.a:
  %i.a = load float, ptr %0, align 4
  %i.b = load float, ptr %1, align 4
  %i.c = fsub float %i.a, %i.b
  %i.d = tail call noundef float @llvm.fabs.f32(float %i.c)
  %i.e = fcmp ugt float %i.d, %2
  br i1 %i.e, label %_ZNK12aiMatrix3x3tIfE5EqualERKS0_f.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load float, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load float, ptr %i.h, align 4
  %i.j = fsub float %i.g, %i.i
  %i.k = tail call noundef float @llvm.fabs.f32(float %i.j)
  %i.l = fcmp ugt float %i.k, %2
  br i1 %i.l, label %_ZNK12aiMatrix3x3tIfE5EqualERKS0_f.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load float, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load float, ptr %i.o, align 4
  %i.q = fsub float %i.n, %i.p
  %i.r = tail call noundef float @llvm.fabs.f32(float %i.q)
  %i.s = fcmp ugt float %i.r, %2
  br i1 %i.s, label %_ZNK12aiMatrix3x3tIfE5EqualERKS0_f.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.u = load float, ptr %i.t, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.w = load float, ptr %i.v, align 4
  %i.x = fsub float %i.u, %i.w
  %i.y = tail call noundef float @llvm.fabs.f32(float %i.x)
  %i.z = fcmp ugt float %i.y, %2
  br i1 %i.z, label %_ZNK12aiMatrix3x3tIfE5EqualERKS0_f.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load float, ptr %i.aa, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load float, ptr %i.ac, align 4
  %i.ae = fsub float %i.ab, %i.ad
  %i.af = tail call noundef float @llvm.fabs.f32(float %i.ae)
  %i.ag = fcmp ugt float %i.af, %2
  br i1 %i.ag, label %_ZNK12aiMatrix3x3tIfE5EqualERKS0_f.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ai = load float, ptr %i.ah, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ak = load float, ptr %i.aj, align 4
  %i.al = fsub float %i.ai, %i.ak
  %i.am = tail call noundef float @llvm.fabs.f32(float %i.al)
  %i.an = fcmp ugt float %i.am, %2
  br i1 %i.an, label %_ZNK12aiMatrix3x3tIfE5EqualERKS0_f.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load float, ptr %i.ao, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load float, ptr %i.aq, align 4
  %i.as = fsub float %i.ap, %i.ar
  %i.at = tail call noundef float @llvm.fabs.f32(float %i.as)
  %i.au = fcmp ugt float %i.at, %2
  br i1 %i.au, label %_ZNK12aiMatrix3x3tIfE5EqualERKS0_f.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aw = load float, ptr %i.av, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ay = load float, ptr %i.ax, align 4
  %i.az = fsub float %i.aw, %i.ay
  %i.ba = tail call noundef float @llvm.fabs.f32(float %i.az)
  %i.bb = fcmp ugt float %i.ba, %2
  br i1 %i.bb, label %_ZNK12aiMatrix3x3tIfE5EqualERKS0_f.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bd = load float, ptr %i.bc, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bf = load float, ptr %i.be, align 4
  %i.bg = fsub float %i.bd, %i.bf
  %i.bh = tail call noundef float @llvm.fabs.f32(float %i.bg)
  %i.bi = fcmp ole float %i.bh, %2
  %i.bj = zext i1 %i.bi to i32
  br label %_ZNK12aiMatrix3x3tIfE5EqualERKS0_f.exit

_ZNK12aiMatrix3x3tIfE5EqualERKS0_f.exit:          ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %i.bk = phi i32 [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ %i.bj, %bb.i ]
  ret i32 %i.bk
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiMatrix3Inverse(ptr nofree noundef captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load float, ptr %i.f, align 4            ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %1 = load <2 x float>, ptr %i.h, align 4        ; 3 uses
  %i.j = load <2 x float>, ptr %i.d, align 4      ; 4 uses
  %i.k = load float, ptr %i.b, align 4            ; 2 uses
  %i.l = extractelement <2 x float> %i.j, i64 0   ; 2 uses
  %i.m = fneg float %i.l                          ; 2 uses
  %2 = load <2 x float>, ptr %0, align 4          ; 6 uses
  %i.n = load float, ptr %i.e, align 4            ; 2 uses
  %3 = load <2 x float>, ptr %i.a, align 4        ; 6 uses
  %i.o = load float, ptr %i.c, align 4            ; 2 uses
  %4 = extractelement <2 x float> %2, i64 0       ; 2 uses
  %i.p = extractelement <2 x float> %3, i64 0     ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %2, %3
  %5 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.q = fmul float %4, %i.o
  %i.r = fmul float %i.q, %i.m
  %i.s = tail call float @llvm.fmuladd.f32(float %5, float %i.k, float %i.r)
  %i.t = fmul float %i.o, %i.n
  %i.u = tail call float @llvm.fmuladd.f32(float %i.t, float %i.g, float %i.s)
  %6 = extractelement <2 x float> %1, i64 0       ; 2 uses
  %i.v = fneg float %6                            ; 2 uses
  %i.w = fmul float %i.n, %i.v                    ; 2 uses
  %i.x = tail call float @llvm.fmuladd.f32(float %i.w, float %i.k, float %i.u)
  %7 = load float, ptr %i.i, align 4              ; 4 uses
  %i.y = fmul float %6, %7
  %i.z = tail call float @llvm.fmuladd.f32(float %i.y, float %i.l, float %i.x)
  %i.aa = fneg float %i.p
  %i.ab = fmul float %7, %i.aa                    ; 2 uses
  %i.ac = tail call noundef float @llvm.fmuladd.f32(float %i.ab, float %i.g, float %i.z) ; 2 uses
  %i.ad = fcmp oeq float %i.ac, 0.000000e+00
  br i1 %i.ad, label %_ZN12aiMatrix3x3tIfE7InverseEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = fdiv float 1.000000e+00, %i.ac          ; 3 uses
  %i.af = fneg float %i.ae
  %i.ag = fneg float %i.g                         ; 2 uses
  %8 = shufflevector <2 x float> %3, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %9 = insertelement <4 x float> %8, float %7, i64 1
  %10 = insertelement <4 x float> %9, float %i.ab, i64 2
  %11 = shufflevector <4 x float> %10, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ah = insertelement <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, float %i.m, i64 0
  %12 = insertelement <4 x float> %i.ah, float %i.ag, i64 3
  %13 = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %14 = fmul <4 x float> %11, %13
  %15 = shufflevector <2 x float> %1, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %16 = shufflevector <2 x float> %2, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %17 = shufflevector <2 x float> %1, <2 x float> %2, <4 x i32> <i32 1, i32 poison, i32 3, i32 0>
  %18 = shufflevector <2 x float> %i.j, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %19 = shufflevector <4 x float> %17, <4 x float> %18, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %20 = shufflevector <2 x float> %2, <2 x float> %3, <4 x i32> <i32 poison, i32 1, i32 3, i32 poison>
  %21 = shufflevector <4 x float> %18, <4 x float> %20, <4 x i32> <i32 1, i32 5, i32 6, i32 1>
  %i.ai = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %19, <4 x float> %21, <4 x float> %14)
  %i.aj = insertelement <4 x float> poison, float %i.ae, i64 0
  %i.ak = insertelement <4 x float> %i.aj, float %i.af, i64 1
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.am = fmul <4 x float> %i.ai, %i.al
  %22 = insertelement <4 x float> poison, float %7, i64 0
  %23 = shufflevector <2 x float> %3, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %24 = shufflevector <4 x float> %22, <4 x float> %23, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %25 = shufflevector <4 x float> %24, <4 x float> %16, <4 x i32> <i32 0, i32 0, i32 1, i32 5>
  %i.an = insertelement <4 x float> poison, float %i.ag, i64 0
  %i.ao = insertelement <4 x float> %i.an, float %i.v, i64 1
  %i.ap = shufflevector <4 x float> %i.ao, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.aq = fmul <4 x float> %25, %i.ap
  %26 = shufflevector <2 x float> %2, <2 x float> %i.j, <4 x i32> <i32 0, i32 0, i32 poison, i32 2>
  %27 = shufflevector <4 x float> %26, <4 x float> %15, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %28 = shufflevector <2 x float> %i.j, <2 x float> %3, <4 x i32> <i32 1, i32 3, i32 0, i32 poison>
  %29 = shufflevector <4 x float> %28, <4 x float> %16, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ar = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %27, <4 x float> %29, <4 x float> %i.aq)
  %i.as = fmul <4 x float> %i.ar, %i.al
  %i.at = tail call float @llvm.fmuladd.f32(float %4, float %i.p, float %i.w)
  %i.au = fmul float %i.at, %i.ae
  br label %_ZN12aiMatrix3x3tIfE7InverseEv.exit

_ZN12aiMatrix3x3tIfE7InverseEv.exit:              ; preds = %bb.a, %bb.b
  %storemerge.i = phi float [ %i.au, %bb.b ], [ +qnan, %bb.a ]
  %i.av = phi <4 x float> [ %i.am, %bb.b ], [ splat (float +qnan), %bb.a ]
  %i.aw = phi <4 x float> [ %i.as, %bb.b ], [ splat (float +qnan), %bb.a ]
  store <4 x float> %i.av, ptr %0, align 4
  store <4 x float> %i.aw, ptr %i.a, align 4
  store float %storemerge.i, ptr %i.b, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef float @aiMatrix3Determinant(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load float, ptr %i.b, align 4            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load float, ptr %i.d, align 4            ; 2 uses
  %i.f = fneg float %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load float, ptr %i.g, align 4            ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load float, ptr %i.i, align 4            ; 2 uses
  %i.k = fneg float %i.j
  %i.l = load <2 x float>, ptr %i.a, align 4      ; 2 uses
  %i.m = load <2 x float>, ptr %0, align 4
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.o = shufflevector <2 x float> %i.l, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison>
  %i.p = insertelement <4 x float> %i.o, float %i.k, i64 3
  %i.q = fmul <4 x float> %i.n, %i.p              ; 4 uses
  %i.r = extractelement <4 x float> %i.q, i64 2
  %i.s = fmul float %i.r, %i.f
  %i.t = extractelement <4 x float> %i.q, i64 0
  %i.u = tail call float @llvm.fmuladd.f32(float %i.t, float %i.c, float %i.s)
  %i.v = extractelement <4 x float> %i.q, i64 1
  %i.w = tail call float @llvm.fmuladd.f32(float %i.v, float %i.h, float %i.u)
  %i.x = extractelement <4 x float> %i.q, i64 3
  %i.y = tail call float @llvm.fmuladd.f32(float %i.x, float %i.c, float %i.w)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load float, ptr %i.z, align 4           ; 2 uses
  %i.ab = fmul float %i.j, %i.aa
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.e, float %i.y)
  %i.ad = extractelement <2 x float> %i.l, i64 0
  %i.ae = fneg float %i.ad
  %i.af = fmul float %i.aa, %i.ae
  %i.ag = tail call noundef float @llvm.fmuladd.f32(float %i.af, float %i.h, float %i.ac)
  ret float %i.ag
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define void @aiMatrix3RotationZ(ptr nofree noundef writeonly captures(none) initializes((0, 36)) %0, float noundef %1) local_unnamed_addr #19 {
bb.a:
  %i.a = tail call noundef float @cosf(float noundef %1) #47 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.a, ptr %i.b, align 4
  store float %i.a, ptr %0, align 4
  %i.c = tail call noundef float @sinf(float noundef %1) #47 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.c, ptr %i.d, align 4
  %i.e = fneg float %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.e, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float 0.000000e+00, ptr %i.h, align 4
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.g, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @aiMatrix3FromRotationAroundAxis(ptr nofree noundef writeonly captures(none) initializes((0, 36)) %0, ptr nofree noundef readonly captures(none) %1, float noundef %2) local_unnamed_addr #20 {
bb.a:
  %i.a = tail call noundef float @cosf(float noundef %2) #47 ; 3 uses
  %i.b = tail call noundef float @sinf(float noundef %2) #47 ; 2 uses
  %i.c = fsub float 1.000000e+00, %i.a            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load <3 x float>, ptr %1, align 4        ; 5 uses
  %i.f = shufflevector <3 x float> %i.e, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.g = load float, ptr %i.d, align 4            ; 3 uses
  %i.h = extractelement <3 x float> %i.e, i64 2   ; 3 uses
  %i.i = fmul float %i.b, %i.h                    ; 2 uses
  %i.j = fneg float %i.i
  %i.k = insertelement <4 x float> poison, float %i.a, i64 0 ; 2 uses
  %i.l = insertelement <4 x float> %i.k, float %i.j, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = insertelement <2 x float> poison, float %i.b, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = shufflevector <3 x float> %i.e, <3 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.q = insertelement <2 x float> %i.p, float %i.g, i64 1
  %i.r = fmul <2 x float> %i.o, %i.q              ; 2 uses
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.t = shufflevector <4 x float> %i.l, <4 x float> %i.s, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.u = insertelement <4 x float> %i.t, float %i.i, i64 3
  %i.v = fneg <2 x float> %i.r
  %i.w = insertelement <2 x float> poison, float %i.c, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = shufflevector <3 x float> %i.e, <3 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.z = insertelement <2 x float> %i.y, float %i.g, i64 0
  %i.aa = fmul <2 x float> %i.x, %i.z             ; 2 uses
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.ac = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ad = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ac, <4 x float> %i.f, <4 x float> %i.u)
  store <4 x float> %i.ad, ptr %0, align 4
  %i.ae = shufflevector <3 x float> %i.e, <3 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.af = insertelement <2 x float> %i.ae, float %i.g, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ah = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ai = shufflevector <4 x float> %i.k, <4 x float> %i.ah, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> %i.s, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ak = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %i.ag, <4 x float> %i.aj)
  store <4 x float> %i.ak, ptr %i.m, align 4
  %i.al = fmul float %i.c, %i.h
  %i.am = tail call float @llvm.fmuladd.f32(float %i.al, float %i.h, float %i.a)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.am, ptr %i.an, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiMatrix3Translation(ptr nofree noundef writeonly captures(none) initializes((0, 36)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #14 {
bb.a:
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %0, align 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %.sroa.7.0..sroa_idx.i, align 4
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float 1.000000e+00, ptr %.sroa.11.0..sroa_idx.i, align 4
  %i.a = load float, ptr %1, align 4
  store float %i.a, ptr %.sroa.5.0..sroa_idx.i, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load float, ptr %i.b, align 4
  store float %i.c, ptr %.sroa.8.0..sroa_idx.i, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define void @aiMatrix3FromTo(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef nonnull align 4 dereferenceable(36) ptr @_ZN12aiMatrix3x3tIfE12FromToMatrixERK10aiVector3tIfES4_RS0_(ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(36) %0) ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(36) ptr @_ZN12aiMatrix3x3tIfE12FromToMatrixERK10aiVector3tIfES4_RS0_(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(36) %2) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load <2 x float>, ptr %0, align 4        ; 4 uses
  %i.c = extractelement <2 x float> %i.b, i64 0   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load <2 x float>, ptr %i.a, align 4      ; 4 uses
  %i.f = load float, ptr %i.d, align 4            ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load <2 x float>, ptr %1, align 4        ; 5 uses
  %i.i = load float, ptr %i.g, align 4            ; 4 uses
  %i.j = extractelement <2 x float> %i.h, i64 1   ; 2 uses
  %i.k = extractelement <2 x float> %i.e, i64 0   ; 5 uses
  %i.l = fmul float %i.k, %i.j
  %i.m = extractelement <2 x float> %i.h, i64 0
  %i.n = tail call float @llvm.fmuladd.f32(float %i.c, float %i.m, float %i.l)
  %i.o = tail call noundef float @llvm.fmuladd.f32(float %i.f, float %i.i, float %i.n) ; 5 uses
  %i.p = tail call float @llvm.fabs.f32(float %i.o)
  %i.q = fcmp ogt float %i.p, f0x3F7FFF58
  br i1 %i.q, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.r = fcmp ogt float %i.c, 0.000000e+00
  %i.s = fneg float %i.c
  %i.t = select i1 %i.r, float %i.c, float %i.s   ; 2 uses
  %i.u = fcmp ogt float %i.k, 0.000000e+00
  %i.v = fneg float %i.k
  %i.w = select i1 %i.u, float %i.k, float %i.v   ; 2 uses
  %i.x = fcmp ogt float %i.f, 0.000000e+00
  %i.y = fneg float %i.f
  %i.z = select i1 %i.x, float %i.f, float %i.y   ; 2 uses
  %i.aa = fcmp olt float %i.t, %i.w
  br i1 %i.aa, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ab = fcmp olt float %i.t, %i.z
  br i1 %i.ab, label %_ZN12aiMatrix3x3tIfEixEj.exit.2, label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  br label %_ZN12aiMatrix3x3tIfEixEj.exit.2

bb.e:                                             ; preds = %bb.b
  %i.ac = fcmp olt float %i.w, %i.z
  br i1 %i.ac, label %_ZN12aiMatrix3x3tIfEixEj.exit.2, label %bb.d

_ZN12aiMatrix3x3tIfEixEj.exit.2:                  ; preds = %bb.d, %bb.c, %bb.e
  %.sroa.20.0 = phi float [ 0.000000e+00, %bb.e ], [ 1.000000e+00, %bb.d ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %i.ad = phi <4 x float> [ <float 0.000000e+00, float 1.000000e+00, float undef, float undef>, %bb.e ], [ <float 0.000000e+00, float 0.000000e+00, float undef, float undef>, %bb.d ], [ <float 1.000000e+00, float 0.000000e+00, float undef, float undef>, %bb.c ]
  %i.ae = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %bb.e ], [ zeroinitializer, %bb.d ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.c ]
  %i.af = fsub <2 x float> %i.ae, %i.h            ; 5 uses
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 6 uses
  %i.ah = extractelement <2 x float> %i.af, i64 0 ; 4 uses
  %i.ai = fneg float %i.ah
end_hunk_0
