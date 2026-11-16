Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/Assimp?download=true
inline.NumInlined: 1626
inline.NumDeleted: 658
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 51
begin_hunk_0_@aiVector3CrossProduct:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load float, ptr %i.f, align 4
  %i.h = load <2 x float>, ptr %2, align 4        ; 2 uses
  %i.i = fneg float %i.g
  %i.j = fmul float %i.e, %i.i
  %i.k = load float, ptr %i.a, align 4
  %i.l = load <2 x float>, ptr %1, align 4        ; 2 uses
  %i.m = tail call float @llvm.fmuladd.f32(float %i.k, float %i.c, float %i.j)
  %i.n = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.o = insertelement <2 x float> %i.n, float %i.c, i64 0
  %i.p = fneg <2 x float> %i.o
  %i.q = fmul <2 x float> %i.l, %i.p
  %i.r = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.s = insertelement <2 x float> %i.r, float %i.e, i64 0
  %i.t = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> %i.h, <2 x float> %i.q) ; 2 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.m, i64 0
  %i.u = shufflevector <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> %i.t, <2 x i32> <i32 0, i32 2>
  store <2 x float> %i.u, ptr %0, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = extractelement <2 x float> %i.t, i64 1
  store float %i.v, ptr %.sroa.4.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiVector3Normalize(ptr nofree noundef captures(none) %0) local_unnamed_addr #14 !guid !190 {
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
define void @aiVector3NormalizeSafe(ptr nofree noundef captures(none) %0) local_unnamed_addr #14 !guid !191 {
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
define void @aiVector3RotateByQuaternion(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #15 !guid !192 {
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
define void @aiMatrix3FromMatrix4(ptr nofree noundef writeonly captures(none) initializes((0, 36)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #14 !guid !193 {
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
define void @aiMatrix3FromQuaternion(ptr nofree noundef writeonly captures(none) initializes((0, 36)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #14 !guid !196 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load <3 x float>, ptr %i.a, align 4, !noalias !197 ; 5 uses
  %i.c = shufflevector <3 x float> %i.b, <3 x float> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 0> ; 3 uses
  %i.d = shufflevector <3 x float> %i.b, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 1, i32 2> ; 2 uses
  %i.e = shufflevector <3 x float> %i.b, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.f = load <2 x float>, ptr %1, align 4, !noalias !197 ; 3 uses
  %i.g = load float, ptr %i.a, align 4, !noalias !197 ; 2 uses
  %i.h = extractelement <2 x float> %i.f, i64 0
  %i.i = fneg float %i.h                          ; 2 uses
  %i.j = insertelement <4 x float> %i.d, float %i.i, i64 1
  %i.k = shufflevector <2 x float> %i.f, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 1> ; 4 uses
  %i.l = shufflevector <4 x float> %i.j, <4 x float> %i.k, <4 x i32> <i32 0, i32 1, i32 4, i32 4>
  %i.m = fmul <4 x float> %i.d, %i.l              ; 2 uses
  %i.n = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.c, <4 x float> %i.e, <4 x float> %i.m) ; 2 uses
  %i.o = shufflevector <3 x float> %i.b, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1> ; 2 uses
  %i.p = shufflevector <4 x float> %i.m, <4 x float> %i.o, <4 x i32> <i32 0, i32 poison, i32 5, i32 poison>
  %i.q = shufflevector <4 x float> %i.p, <4 x float> %i.k, <4 x i32> <i32 0, i32 5, i32 2, i32 5>
  %i.r = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.i, i64 1
  %i.s = shufflevector <4 x float> %i.r, <4 x float> %i.k, <4 x i32> <i32 0, i32 1, i32 1, i32 4>
  %i.t = fmul <4 x float> %i.q, %i.s
  %i.u = shufflevector <3 x float> %i.b, <3 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.v = shufflevector <2 x float> %i.f, <2 x float> %i.u, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.w = shufflevector <4 x float> %i.o, <4 x float> %i.k, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.x = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> %i.w, <4 x float> %i.t) ; 2 uses
  %foldExtExtBinop = fmul <4 x float> %i.c, %i.c
  %i.y = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.z = tail call float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.y)
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.z, float -2.000000e+00, float 1.000000e+00)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = shufflevector <4 x float> %i.n, <4 x float> %i.x, <2 x i32> <i32 0, i32 4>
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> splat (float -2.000000e+00), <2 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %2 = fmul <4 x float> %i.n, <float poison, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %3 = shufflevector <4 x float> %i.ad, <4 x float> %2, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  store <4 x float> %3, ptr %0, align 4
  %i.ae = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %4 = fmul <4 x float> %i.x, <float poison, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %5 = shufflevector <4 x float> %i.ae, <4 x float> %4, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  store <4 x float> %5, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.aa, ptr %.sroa.11.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @aiMatrix3AreEqual(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #18 !guid !198 {
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
define range(i32 0, 2) i32 @aiMatrix3AreEqualEpsilon(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, float noundef %2) local_unnamed_addr #18 !guid !199 {
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
define void @aiMatrix3Inverse(ptr nofree noundef captures(none) %0) local_unnamed_addr #14 !guid !200 {
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
  %i.j = load float, ptr %i.a, align 4            ; 5 uses
  %i.k = load float, ptr %i.c, align 4            ; 6 uses
  %i.l = load <2 x float>, ptr %i.d, align 4      ; 2 uses
  %i.m = load float, ptr %i.b, align 4            ; 2 uses
  %i.n = extractelement <2 x float> %i.l, i64 0   ; 2 uses
  %i.o = fneg float %i.n                          ; 3 uses
  %i.p = load <4 x float>, ptr %0, align 4        ; 6 uses
  %i.q = load float, ptr %i.h, align 4            ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN12aiMatrix3x3tIfE12FromToMatrixERK10aiVector3tIfES4_RS0_:bb.a
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 7 uses
  %i.ah = extractelement <2 x float> %i.af, i64 0 ; 3 uses
  %i.ai = fneg float %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.am = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %.sroa.20.0, i64 0
  %i.an = shufflevector <4 x float> %i.am, <4 x float> %i.ad, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ao = shufflevector <2 x float> %i.b, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.ap = insertelement <4 x float> %i.ao, float 0.000000e+00, i64 3
  %i.aq = shufflevector <2 x float> %i.e, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> %i.ap, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.as = fsub <4 x float> %i.an, %i.ar           ; 12 uses
  %i.at = extractelement <4 x float> %i.as, i64 2
  %i.au = extractelement <4 x float> %i.as, i64 1 ; 3 uses
  %i.av = extractelement <4 x float> %i.as, i64 0
  %i.aw = extractelement <2 x float> %i.af, i64 1
  %i.ax = fmul float %i.at, %i.aw
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.au, float %i.ah, float %i.ax)
  %i.az = shufflevector <4 x float> %i.as, <4 x float> %i.ag, <2 x i32> <i32 2, i32 5> ; 2 uses
  %i.ba = fmul <2 x float> %i.az, %i.az
  %i.bb = shufflevector <4 x float> %i.as, <4 x float> %i.ag, <2 x i32> <i32 1, i32 4> ; 2 uses
  %i.bc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.bb, <2 x float> %i.ba)
  %i.bd = shufflevector <4 x float> %i.as, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.be = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 1, i32 2>
  %i.bf = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 1>
  %i.bg = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 2> ; 2 uses
  %i.bh = shufflevector <4 x float> %i.as, <4 x float> %i.ag, <2 x i32> <i32 0, i32 4>
  %i.bi = shufflevector <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x float> %i.ag, <4 x i32> <i32 5, i32 poison, i32 2, i32 poison>
  %i.bj = fneg <4 x float> %i.ag
  %i.bk = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.bj, <4 x i32> <i32 poison, i32 poison, i32 5, i32 3>
  %i.bl = fsub float %.sroa.20.0, %i.n            ; 8 uses
  %i.bm = tail call noundef float @llvm.fmuladd.f32(float %i.av, float %i.bl, float %i.ay)
  %i.bn = insertelement <2 x float> %i.bd, float %i.bl, i64 1 ; 2 uses
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.bn, <2 x float> %i.bc)
  %i.bp = fdiv <2 x float> splat (float 2.000000e+00), %i.bo ; 5 uses
  %i.bq = extractelement <2 x float> %i.bp, i64 0 ; 2 uses
  %i.br = fneg float %i.bq                        ; 3 uses
  %i.bs = extractelement <2 x float> %i.bp, i64 1 ; 2 uses
  %i.bt = fmul float %i.bq, %i.bs
  %i.bu = fmul float %i.bs, %i.ah
  %i.bv = fmul float %i.bu, %i.ai
  %i.bw = insertelement <4 x float> poison, float %i.br, i64 0 ; 2 uses
  %i.bx = shufflevector <4 x float> %i.bw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.by = fmul <4 x float> %i.be, %i.bx
  %i.bz = shufflevector <2 x float> %i.bp, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ca = fmul <4 x float> %i.bz, %i.ag
  %i.cb = insertelement <4 x float> %i.bf, float %i.bl, i64 2
  %i.cc = fneg <4 x float> %i.cb
  %i.cd = fmul <4 x float> %i.ca, %i.cc
  %i.ce = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.by, <4 x float> %i.bg, <4 x float> %i.cd)
  %i.cf = insertelement <2 x float> %i.bp, float %i.bm, i64 0
  %i.cg = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.ch = insertelement <2 x float> %i.cg, float %i.bl, i64 1 ; 2 uses
  %i.ci = fmul <2 x float> %i.cf, %i.ch           ; 4 uses
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.ck = shufflevector <2 x float> %i.ci, <2 x float> poison, <4 x i32> zeroinitializer
  %i.cl = fmul <4 x float> %i.ck, %i.ag
  %i.cm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cl, <4 x float> %i.bg, <4 x float> %i.ce)
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.cn, ptr %i.aj, align 4
  %i.co = load float, ptr %i.al, align 4
  %i.cp = fadd float %i.co, 1.000000e+00
  store float %i.cp, ptr %i.al, align 4
  %i.cq = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> %i.af, <2 x i32> <i32 0, i32 2>
  %i.cs = fneg <2 x float> %i.cr
  %i.ct = fmul float %i.au, %i.br
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.au, float %i.bv)
  %i.cv = insertelement <2 x float> poison, float %i.br, i64 0
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> %i.ci, <2 x i32> <i32 0, i32 2>
  %i.cx = fmul <2 x float> %i.cw, %i.bh
  %i.cy = fneg float %i.bl
  %i.cz = shufflevector <2 x float> %i.af, <2 x float> %i.ch, <4 x i32> <i32 1, i32 3, i32 poison, i32 3>
  %i.da = insertelement <4 x float> %i.cz, float %i.cy, i64 2
  %i.db = fmul <4 x float> %i.cj, %i.da           ; 2 uses
  %i.dc = shufflevector <4 x float> %i.db, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.dd = insertelement <2 x float> %i.dc, float %i.cu, i64 1
  %i.de = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cx, <2 x float> %i.bd, <2 x float> %i.dd) ; 2 uses
  %i.df = extractelement <2 x float> %i.de, i64 1
  %i.dg = fadd float %i.df, 1.000000e+00
  store float %i.dg, ptr %2, align 4
  %i.dh = shufflevector <2 x float> %i.bp, <2 x float> %i.de, <4 x i32> <i32 1, i32 1, i32 1, i32 2>
  %i.di = insertelement <4 x float> %i.bi, float %i.bl, i64 1
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 2>
  %i.dk = fmul <4 x float> %i.dh, %i.dj
  %i.dl = shufflevector <2 x float> %i.cs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dm = shufflevector <4 x float> %i.dl, <4 x float> %i.bk, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dn = fmul <4 x float> %i.dk, %i.dm
  %i.do = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 0, i32 poison>
  %i.dp = shufflevector <2 x float> %i.ci, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dq = shufflevector <4 x float> %i.do, <4 x float> %i.dp, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.dr = insertelement <4 x float> %i.bw, float %i.bl, i64 3
  %i.ds = shufflevector <4 x float> %i.dr, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.dt = fmul <4 x float> %i.dq, %i.ds
  %i.du = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.dv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dt, <4 x float> %i.du, <4 x float> %i.dn)
  %i.dw = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.db, <4 x i32> <i32 4, i32 5, i32 7, i32 3>
  %i.dx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dw, <4 x float> %i.as, <4 x float> %i.dv)
  store <4 x float> %i.dx, ptr %i.ak, align 4
  br label %.loopexit

bb.f:                                             ; preds = %bb.a
  %i.dy = fneg float %i.i
  %i.dz = fmul float %i.f, %i.dy
  %i.ea = tail call float @llvm.fmuladd.f32(float %i.j, float %i.n, float %i.dz) ; 4 uses
  %i.eb = fadd float %i.o, 1.000000e+00
  %i.ec = fdiv float 1.000000e+00, %i.eb          ; 2 uses
  %i.ed = fmul float %i.ea, %i.ec                 ; 2 uses
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.ed, float %i.ea, float %i.o)
  store float %i.ee, ptr %2, align 4
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.el = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.em = insertelement <2 x float> %i.el, float %i.n, i64 0
  %i.en = fneg <2 x float> %i.em
  %i.eo = shufflevector <2 x float> %i.b, <2 x float> %i.e, <2 x i32> <i32 0, i32 2>
  %i.ep = fmul <2 x float> %i.eo, %i.en
  %i.eq = shufflevector <2 x float> %i.e, <2 x float> %i.b, <2 x i32> <i32 1, i32 2>
  %i.er = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eq, <2 x float> %i.h, <2 x float> %i.ep) ; 7 uses
  %i.es = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.et = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eu = fmul <2 x float> %i.er, %i.et           ; 2 uses
  %shift = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.er, %shift
  %i.ev = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.ew = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.ex = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ey = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = fmul <2 x float> %i.ex, %i.ey           ; 3 uses
  %foldExtExtBinop179 = fsub <2 x float> %i.ez, %i.er
  %i.fa = extractelement <2 x float> %foldExtExtBinop179, i64 1
  store float %i.fa, ptr %i.ef, align 4
  %i.fb = fadd <2 x float> %i.er, %i.ez
  store <2 x float> %i.fb, ptr %i.eg, align 4
  %i.fc = insertelement <2 x float> poison, float %i.o, i64 0
  %i.fd = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fe = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.er, <2 x float> %i.fd) ; 2 uses
  %i.ff = extractelement <2 x float> %i.fe, i64 0
  store float %i.ff, ptr %i.eh, align 4
  %i.fg = fsub float %i.ev, %i.ea
  store float %i.fg, ptr %i.ei, align 4
  %foldExtExtBinop181 = fsub <2 x float> %i.ez, %i.er
  %i.fh = extractelement <2 x float> %foldExtExtBinop181, i64 0
  store float %i.fh, ptr %i.ej, align 4
  %i.fi = fadd float %i.ea, %i.ev
  store float %i.fi, ptr %i.ek, align 4
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fk = extractelement <2 x float> %i.fe, i64 1
  store float %i.fk, ptr %i.fj, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN12aiMatrix3x3tIfEixEj.exit.2, %bb.f
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiMatrix4FromMatrix3(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #14 !guid !207 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load float, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.e = load float, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load float, ptr %i.g, align 4
  %i.i = load <2 x float>, ptr %1, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load <2 x float>, ptr %i.c, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load <2 x float>, ptr %i.f, align 4
  store <2 x float> %i.i, ptr %0, align 4
  store float %i.b, ptr %.sroa.5.0..sroa_idx, align 4
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 4
  store <2 x float> %i.j, ptr %.sroa.7.0..sroa_idx, align 4
  store float %i.e, ptr %.sroa.9.0..sroa_idx, align 4
  store float 0.000000e+00, ptr %.sroa.10.0..sroa_idx, align 4
  store <2 x float> %i.k, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.h, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.14.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %.sroa.15.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiMatrix4FromScalingQuaternionPosition(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #14 !guid !210 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load float, ptr %i.c, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %8 = load <4 x float>, ptr %2, align 4, !noalias !211 ; 6 uses
  %i.f = load float, ptr %4, align 4, !noalias !211 ; 3 uses
  %9 = fmul float %i.f, %i.f
  %10 = extractelement <4 x float> %8, i64 0
  %11 = fneg float %10                            ; 2 uses
  %12 = shufflevector <4 x float> %8, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 poison, i32 3>
  %13 = shufflevector <4 x float> %8, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>
  %14 = insertelement <4 x float> poison, float %11, i64 0
  %i.g = insertelement <4 x float> %13, float %11, i64 0
  %15 = fmul <4 x float> %12, %i.g
  %16 = shufflevector <4 x float> %8, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 1>
  %17 = shufflevector <4 x float> %8, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 2>
  %18 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %16, <4 x float> %17, <4 x float> %15)
  %19 = fmul <4 x float> %18, <float 2.000000e+00, float 2.000000e+00, float poison, float 2.000000e+00>
  %i.h = load <2 x float>, ptr %1, align 4        ; 2 uses
  %20 = load float, ptr %3, align 4
  %21 = shufflevector <2 x float> %i.h, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 1>
  %22 = insertelement <3 x float> %21, float %20, i64 1
  %23 = shufflevector <3 x float> %22, <3 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 2> ; 2 uses
  %24 = fmul <4 x float> %23, %19
  %25 = shufflevector <4 x float> %24, <4 x float> %23, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %26 = load float, ptr %6, align 4
  %27 = load <2 x float>, ptr %i.b, align 4, !noalias !211 ; 4 uses
  %28 = load float, ptr %i.a, align 4, !noalias !211 ; 3 uses
  %29 = extractelement <2 x float> %27, i64 0     ; 2 uses
  %30 = shufflevector <2 x float> %27, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 0>
  %31 = shufflevector <4 x float> %8, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %32 = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %33 = shufflevector <4 x float> %32, <4 x float> %31, <4 x i32> <i32 0, i32 poison, i32 2, i32 7>
  %34 = fmul <4 x float> %30, %33
  %35 = shufflevector <2 x float> %27, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 1>
  %36 = insertelement <4 x float> poison, float %i.f, i64 0
  %37 = shufflevector <4 x float> %36, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0>
  %38 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %35, <4 x float> %37, <4 x float> %34)
  %39 = fmul <4 x float> %38, <float 2.000000e+00, float poison, float 2.000000e+00, float 2.000000e+00>
  %40 = fmul float %28, %28
  %41 = tail call float @llvm.fmuladd.f32(float %29, float %29, float %40)
  %42 = tail call float @llvm.fmuladd.f32(float %41, float -2.000000e+00, float 1.000000e+00)
  %43 = load <2 x float>, ptr %5, align 4         ; 2 uses
  %44 = load float, ptr %7, align 4
  %45 = shufflevector <2 x float> %27, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %46 = insertelement <2 x float> %45, float %28, i64 0 ; 2 uses
  %47 = insertelement <2 x float> poison, float %9, i64 0
  %48 = shufflevector <2 x float> %47, <2 x float> poison, <2 x i32> zeroinitializer
  %49 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %46, <2 x float> %46, <2 x float> %48)
  %50 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %49, <2 x float> splat (float -2.000000e+00), <2 x float> splat (float 1.000000e+00))
  %51 = shufflevector <2 x float> %i.h, <2 x float> %43, <2 x i32> <i32 0, i32 2>
  %52 = fmul <2 x float> %50, %51                 ; 2 uses
  %53 = shufflevector <2 x float> %43, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 1>
  %54 = insertelement <3 x float> %53, float %26, i64 1
  %55 = shufflevector <3 x float> %54, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2> ; 2 uses
  %56 = fmul <4 x float> %55, %39
  %57 = shufflevector <4 x float> %56, <4 x float> %55, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %58 = fmul float %42, %44
  %59 = extractelement <2 x float> %52, i64 0
  store float %59, ptr %0, align 4
  store <4 x float> %25, ptr %i.e, align 4
  %60 = extractelement <2 x float> %52, i64 1
  store float %60, ptr %.sroa.8.0..sroa_idx, align 4
  store <4 x float> %57, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %61 = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, float %58, i64 0
  %62 = insertelement <4 x float> %61, float %i.d, i64 1
  store <4 x float> %62, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.15.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiMatrix4Add(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #14 !guid !214 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = load <4 x float>, ptr %1, align 4, !noalias !215
  %i.h = load <4 x float>, ptr %0, align 4, !noalias !215
  %i.i = fadd <4 x float> %i.g, %i.h
  %i.j = load <4 x float>, ptr %i.a, align 4, !noalias !215
  %i.k = load <4 x float>, ptr %i.b, align 4, !noalias !215
  %i.l = fadd <4 x float> %i.j, %i.k
  %i.m = load <4 x float>, ptr %i.c, align 4, !noalias !215
  %i.n = load <4 x float>, ptr %i.d, align 4, !noalias !215
  %i.o = fadd <4 x float> %i.m, %i.n
  %i.p = load <4 x float>, ptr %i.e, align 4, !noalias !215
  %i.q = load <4 x float>, ptr %i.f, align 4, !noalias !215
  %i.r = fadd <4 x float> %i.p, %i.q
  store <4 x float> %i.i, ptr %0, align 4
  store <4 x float> %i.l, ptr %i.b, align 4
  store <4 x float> %i.o, ptr %i.d, align 4
  store <4 x float> %i.r, ptr %i.f, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @aiMatrix4AreEqual(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #18 !guid !216 {
bb.a:
  %i.a = load float, ptr %0, align 4
  %i.b = load float, ptr %1, align 4
  %i.c = fcmp oeq float %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load float, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load float, ptr %i.f, align 4
  %i.h = fcmp oeq float %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load float, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load float, ptr %i.k, align 4
  %i.m = fcmp oeq float %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = load float, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = load float, ptr %i.p, align 4
  %i.r = fcmp oeq float %i.o, %i.q
  br i1 %i.r, label %bb.e, label %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load float, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load float, ptr %i.u, align 4
  %i.w = fcmp oeq float %i.t, %i.v
  br i1 %i.w, label %bb.f, label %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.y = load float, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aa = load float, ptr %i.z, align 4
  %i.ab = fcmp oeq float %i.y, %i.aa
  br i1 %i.ab, label %bb.g, label %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load float, ptr %i.ac, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load float, ptr %i.ae, align 4
  %i.ag = fcmp oeq float %i.ad, %i.af
  br i1 %i.ag, label %bb.h, label %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ai = load float, ptr %i.ah, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ak = load float, ptr %i.aj, align 4
  %i.al = fcmp oeq float %i.ai, %i.ak
  br i1 %i.al, label %bb.i, label %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load float, ptr %i.am, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ap = load float, ptr %i.ao, align 4
  %i.aq = fcmp oeq float %i.an, %i.ap
  br i1 %i.aq, label %bb.j, label %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.as = load float, ptr %i.ar, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.au = load float, ptr %i.at, align 4
  %i.av = fcmp oeq float %i.as, %i.au
  br i1 %i.av, label %bb.k, label %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ax = load float, ptr %i.aw, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.az = load float, ptr %i.ay, align 4
  %i.ba = fcmp oeq float %i.ax, %i.az
  br i1 %i.ba, label %bb.l, label %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bc = load float, ptr %i.bb, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.be = load float, ptr %i.bd, align 4
  %i.bf = fcmp oeq float %i.bc, %i.be
  br i1 %i.bf, label %bb.m, label %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bh = load float, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bj = load float, ptr %i.bi, align 4
  %i.bk = fcmp oeq float %i.bh, %i.bj
  br i1 %i.bk, label %bb.n, label %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bm = load float, ptr %i.bl, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bo = load float, ptr %i.bn, align 4
  %i.bp = fcmp oeq float %i.bm, %i.bo
  br i1 %i.bp, label %bb.o, label %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit

bb.o:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.br = load float, ptr %i.bq, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bt = load float, ptr %i.bs, align 4
  %i.bu = fcmp oeq float %i.br, %i.bt
  br i1 %i.bu, label %bb.p, label %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit

bb.p:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bw = load float, ptr %i.bv, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.by = load float, ptr %i.bx, align 4
  %i.bz = fcmp oeq float %i.bw, %i.by
  %i.ca = zext i1 %i.bz to i32
  br label %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit

_ZNK12aiMatrix4x4tIfEeqERKS0_.exit:               ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %i.cb = phi i32 [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ %i.ca, %bb.p ]
  ret i32 %i.cb
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 2) i32 @aiMatrix4AreEqualEpsilon(ptr noundef nonnull %0, ptr noundef nonnull %1, float noundef %2) local_unnamed_addr #0 !guid !217 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK12aiMatrix4x4tIfE5EqualERKS0_f(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, float noundef %2)
  %i.b = zext i1 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK12aiMatrix4x4tIfE5EqualERKS0_f(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, float noundef %2) local_unnamed_addr #21 comdat align 2 !guid !218 {
bb.a:
  %i.a = load float, ptr %0, align 4
  %i.b = load float, ptr %1, align 4
  %i.c = fsub float %i.a, %i.b
  %i.d = tail call noundef float @llvm.fabs.f32(float %i.c)
  %i.e = fcmp ugt float %i.d, %2
  br i1 %i.e, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load float, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load float, ptr %i.h, align 4
  %i.j = fsub float %i.g, %i.i
  %i.k = tail call noundef float @llvm.fabs.f32(float %i.j)
  %i.l = fcmp ugt float %i.k, %2
  br i1 %i.l, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load float, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load float, ptr %i.o, align 4
  %i.q = fsub float %i.n, %i.p
  %i.r = tail call noundef float @llvm.fabs.f32(float %i.q)
end_hunk_1
begin_hunk_2_@aiMatrix4FromRotationAroundAxis:bb.a
  %i.w = insertelement <2 x float> %i.v, float %i.g, i64 1
  %i.x = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.u, <2 x float> %i.w)
  store <2 x float> %i.x, ptr %0, align 4
  %i.y = shufflevector <4 x float> %i.q, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 poison, i32 5, i32 1, i32 1>
  %i.z = insertelement <4 x float> %i.y, float %i.e, i64 0
  %i.aa = insertelement <2 x float> poison, float %i.b, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fmul <2 x float> %i.ab, %i.u            ; 2 uses
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.af = insertelement <4 x float> %i.ae, float %i.f, i64 2
  %i.ag = insertelement <4 x float> %i.af, float %i.a, i64 3
  %i.ah = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.s, <4 x float> %i.z, <4 x float> %i.ag)
  %i.ai = fneg <2 x float> %i.ac
  %i.aj = extractelement <4 x float> %i.m, i64 0
  %i.ak = fmul float %i.aj, %i.e
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.e, float %i.a)
  store float %i.al, ptr %i.j, align 4
  %i.am = shufflevector <4 x float> %i.s, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 3, i32 5, i32 0, i32 3>
  %i.an = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.e, i64 0
  %i.ao = shufflevector <4 x float> %i.an, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.ap = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.aq = insertelement <4 x float> %i.ap, float 0.000000e+00, i64 1
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> %i.ad, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.as = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.am, <4 x float> %i.ao, <4 x float> %i.ar)
  store <4 x float> %i.as, ptr %i.i, align 4
  store <4 x float> %i.ah, ptr %i.h, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.at, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiMatrix4Translation(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #14 !guid !234 {
bb.a:
  store float 1.000000e+00, ptr %0, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float 1.000000e+00, ptr %.sroa.7.0..sroa_idx.i, align 4
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx.i, align 4
  %i.a = load float, ptr %1, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.a, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load float, ptr %i.c, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.d, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load float, ptr %i.f, align 4
  store float %i.g, ptr %.sroa.8.0..sroa_idx.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiMatrix4Scaling(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #14 !guid !235 {
bb.a:
  store float 1.000000e+00, ptr %0, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store float 1.000000e+00, ptr %.sroa.7.0..sroa_idx.i, align 4
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx.i, align 4
  %i.a = load float, ptr %1, align 4
  store float %i.a, ptr %0, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load float, ptr %i.b, align 4
  store float %i.c, ptr %.sroa.5.0..sroa_idx.i, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load float, ptr %i.d, align 4
  store float %i.e, ptr %.sroa.7.0..sroa_idx.i, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define void @aiMatrix4FromTo(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) local_unnamed_addr #2 !guid !236 {
bb.a:
  %3 = alloca %class.aiMatrix3x3t, align 16       ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 12
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %3, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.c, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store float 1.000000e+00, ptr %i.f, align 16
  %i.g = call noundef nonnull align 4 dereferenceable(36) ptr @_ZN12aiMatrix3x3tIfE12FromToMatrixERK10aiVector3tIfES4_RS0_(ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(36) %3) ; 0 uses
  %i.h = load float, ptr %i.a, align 8
  %i.i = load float, ptr %i.d, align 4
  %i.j = load float, ptr %i.f, align 16
  %i.k = load <2 x float>, ptr %3, align 16
  store <2 x float> %i.k, ptr %0, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.h, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load <2 x float>, ptr %i.b, align 4
  store <2 x float> %i.l, ptr %.sroa.7.0..sroa_idx.i, align 4
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.i, ptr %.sroa.9.0..sroa_idx.i, align 4
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float 0.000000e+00, ptr %.sroa.10.0..sroa_idx.i, align 4
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load <2 x float>, ptr %i.e, align 8
  store <2 x float> %i.m, ptr %.sroa.11.0..sroa_idx.i, align 4
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.j, ptr %.sroa.13.0..sroa_idx.i, align 4
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.14.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %.sroa.15.0..sroa_idx.i, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define void @aiQuaternionFromEulerAngles(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #19 !guid !237 {
bb.a:
  %i.a = fmul float %1, 5.000000e-01              ; 2 uses
  %i.b = tail call noundef float @sinf(float noundef %i.a) #47 ; 3 uses
  %i.c = tail call noundef float @cosf(float noundef %i.a) #47 ; 2 uses
  %i.d = fmul float %2, 5.000000e-01              ; 2 uses
  %i.e = tail call noundef float @sinf(float noundef %i.d) #47 ; 3 uses
  %i.f = tail call noundef float @cosf(float noundef %i.d) #47 ; 2 uses
  %i.g = fmul float %3, 5.000000e-01              ; 2 uses
  %i.h = tail call noundef float @sinf(float noundef %i.g) #47 ; 3 uses
  %i.i = tail call noundef float @cosf(float noundef %i.g) #47 ; 2 uses
  %i.j = fmul float %i.b, %i.e                    ; 2 uses
  %i.k = fneg float %i.j
  %i.l = fmul float %i.c, %i.h
  %i.m = fmul float %i.b, %i.h
  %i.n = fneg float %i.f
  %i.o = insertelement <4 x float> poison, float %i.c, i64 0
  %i.p = insertelement <4 x float> %i.o, float %i.b, i64 1
  %i.q = shufflevector <4 x float> %i.p, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.r = insertelement <4 x float> poison, float %i.f, i64 0
  %i.s = insertelement <4 x float> %i.r, float %i.i, i64 1 ; 2 uses
  %i.t = shufflevector <4 x float> %i.s, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.u = fmul <4 x float> %i.q, %i.t
  %i.v = insertelement <4 x float> poison, float %i.j, i64 0
  %i.w = insertelement <4 x float> %i.v, float %i.i, i64 1
  %i.x = insertelement <4 x float> %i.w, float %i.e, i64 2
  %i.y = insertelement <4 x float> %i.x, float %i.m, i64 3
  %i.z = insertelement <4 x float> poison, float %i.h, i64 0 ; 2 uses
  %i.aa = insertelement <4 x float> %i.z, float %i.k, i64 1
  %i.ab = insertelement <4 x float> %i.aa, float %i.l, i64 2
  %i.ac = insertelement <4 x float> %i.ab, float %i.n, i64 3
  %i.ad = fmul <4 x float> %i.y, %i.ac
  %i.ae = shufflevector <4 x float> %i.s, <4 x float> %i.z, <4 x i32> <i32 1, i32 4, i32 0, i32 poison>
  %i.af = insertelement <4 x float> %i.ae, float %i.e, i64 3
  %i.ag = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.u, <4 x float> %i.ad)
  store <4 x float> %i.ag, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @aiQuaternionFromAxisAngle(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, ptr nofree noundef readonly captures(none) %1, float noundef %2) local_unnamed_addr #22 !guid !238 {
bb.a:
  %.sroa.01.0.copyload = load <2 x float>, ptr %1, align 4 ; 5 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4 ; 4 uses
  %.sroa.0.0.vec.extract8.i = extractelement <2 x float> %.sroa.01.0.copyload, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.01.0.copyload, %.sroa.01.0.copyload
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.b = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract8.i, float %.sroa.0.0.vec.extract8.i, float %i.a)
  %i.c = tail call noundef float @llvm.fmuladd.f32(float %.sroa.22.0.copyload, float %.sroa.22.0.copyload, float %i.b) ; 2 uses
  %i.d = fcmp oeq float %i.c, 0.000000e+00
  br i1 %i.d, label %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit, label %_ZN10aiVector3tIfEdVEf.exit.i.i

_ZN10aiVector3tIfEdVEf.exit.i.i:                  ; preds = %bb.a
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.c)
  %i.e = fdiv float 1.000000e+00, %sqrt.i.i.i     ; 2 uses
  %i.f = insertelement <2 x float> poison, float %i.e, i64 0
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer
  %i.h = fmul <2 x float> %.sroa.01.0.copyload, %i.g
  %i.i = fmul float %.sroa.22.0.copyload, %i.e
  br label %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit

_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit:    ; preds = %bb.a, %_ZN10aiVector3tIfEdVEf.exit.i.i
  %.sroa.7.0.i = phi float [ %.sroa.22.0.copyload, %bb.a ], [ %i.i, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %i.j = phi <2 x float> [ %.sroa.01.0.copyload, %bb.a ], [ %i.h, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %i.k = fmul float %2, 5.000000e-01              ; 2 uses
  %i.l = tail call noundef float @sinf(float noundef %i.k) #47 ; 2 uses
  %i.m = tail call noundef float @cosf(float noundef %i.k) #47
  %3 = fmul float %.sroa.7.0.i, %i.l
  store float %i.m, ptr %0, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %4 = insertelement <2 x float> poison, float %i.l, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %i.j, %5
  store <2 x float> %6, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %3, ptr %.sroa.6.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @aiQuaternionFromNormalizedQuaternion(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #22 !guid !239 {
bb.a:
  %.sroa.01.0.copyload = load <2 x float>, ptr %1, align 4 ; 3 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4 ; 3 uses
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.01.0.copyload, i64 0 ; 2 uses
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %.sroa.01.0.copyload, i64 1 ; 2 uses
  %i.a = fneg float %.sroa.03.0.vec.extract.i
  %i.b = tail call float @llvm.fmuladd.f32(float %i.a, float %.sroa.03.0.vec.extract.i, float 1.000000e+00)
  %i.c = fneg float %.sroa.03.4.vec.extract.i
  %i.d = tail call float @llvm.fmuladd.f32(float %i.c, float %.sroa.03.4.vec.extract.i, float %i.b)
  %i.e = fneg float %.sroa.22.0.copyload
  %i.f = tail call float @llvm.fmuladd.f32(float %i.e, float %.sroa.22.0.copyload, float %i.d) ; 2 uses
  %i.g = fcmp olt float %i.f, 0.000000e+00
  br i1 %i.g, label %_ZN13aiQuaterniontIfEC2E10aiVector3tIfE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef float @sqrtf(float noundef %i.f) #47
  br label %_ZN13aiQuaterniontIfEC2E10aiVector3tIfE.exit

_ZN13aiQuaterniontIfEC2E10aiVector3tIfE.exit:     ; preds = %bb.a, %bb.b
  %storemerge.i = phi float [ %i.h, %bb.b ], [ 0.000000e+00, %bb.a ]
  store float %storemerge.i, ptr %0, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store <2 x float> %.sroa.01.0.copyload, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %.sroa.22.0.copyload, ptr %.sroa.6.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @aiQuaternionAreEqual(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #18 !guid !240 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load float, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load float, ptr %i.c, align 4
  %i.e = fcmp oeq float %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZNK13aiQuaterniontIfEeqERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load float, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load float, ptr %i.h, align 4
  %i.j = fcmp oeq float %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZNK13aiQuaterniontIfEeqERKS0_.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = load float, ptr %i.k, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = load float, ptr %i.m, align 4
  %i.o = fcmp oeq float %i.l, %i.n
  br i1 %i.o, label %bb.d, label %_ZNK13aiQuaterniontIfEeqERKS0_.exit

bb.d:                                             ; preds = %bb.c
  %i.p = load float, ptr %0, align 4
  %i.q = load float, ptr %1, align 4
  %i.r = fcmp oeq float %i.p, %i.q
  %i.s = zext i1 %i.r to i32
  br label %_ZNK13aiQuaterniontIfEeqERKS0_.exit

_ZNK13aiQuaterniontIfEeqERKS0_.exit:              ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.t = phi i32 [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ %i.s, %bb.d ]
  ret i32 %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @aiQuaternionAreEqualEpsilon(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, float noundef %2) local_unnamed_addr #18 !guid !241 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load float, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load float, ptr %i.c, align 4
  %i.e = fsub float %i.b, %i.d
  %i.f = tail call noundef float @llvm.fabs.f32(float %i.e)
  %i.g = fcmp ugt float %i.f, %2
  br i1 %i.g, label %_ZNK13aiQuaterniontIfE5EqualERKS0_f.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load float, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load float, ptr %i.j, align 4
  %i.l = fsub float %i.i, %i.k
  %i.m = tail call noundef float @llvm.fabs.f32(float %i.l)
  %i.n = fcmp ugt float %i.m, %2
  br i1 %i.n, label %_ZNK13aiQuaterniontIfE5EqualERKS0_f.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load float, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.r = load float, ptr %i.q, align 4
  %i.s = fsub float %i.p, %i.r
  %i.t = tail call noundef float @llvm.fabs.f32(float %i.s)
  %i.u = fcmp ugt float %i.t, %2
  br i1 %i.u, label %_ZNK13aiQuaterniontIfE5EqualERKS0_f.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load float, ptr %0, align 4
  %i.w = load float, ptr %1, align 4
  %i.x = fsub float %i.v, %i.w
  %i.y = tail call noundef float @llvm.fabs.f32(float %i.x)
  %i.z = fcmp ole float %i.y, %2
  %i.aa = zext i1 %i.z to i32
  br label %_ZNK13aiQuaterniontIfE5EqualERKS0_f.exit

_ZNK13aiQuaterniontIfE5EqualERKS0_f.exit:         ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.ab = phi i32 [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ %i.aa, %bb.d ]
  ret i32 %i.ab
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiQuaternionNormalize(ptr nofree noundef captures(none) %0) local_unnamed_addr #14 !guid !242 {
bb.a:
  %i.a = load <4 x float>, ptr %0, align 4        ; 6 uses
  %foldExtExtBinop = fmul <4 x float> %i.a, %i.a
  %i.b = extractelement <4 x float> %foldExtExtBinop, i64 2
  %i.c = extractelement <4 x float> %i.a, i64 1   ; 2 uses
  %i.d = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.b)
  %i.e = extractelement <4 x float> %i.a, i64 3   ; 2 uses
  %i.f = tail call float @llvm.fmuladd.f32(float %i.e, float %i.e, float %i.d)
  %i.g = extractelement <4 x float> %i.a, i64 0   ; 2 uses
  %i.h = tail call float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.f) ; 2 uses
  %i.i = fcmp une float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.b, label %_ZN13aiQuaterniontIfE9NormalizeEv.exit

bb.b:                                             ; preds = %bb.a
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.h)
  %i.j = fdiv float 1.000000e+00, %sqrt.i
  %i.k = insertelement <4 x float> poison, float %i.j, i64 0
  %i.l = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> zeroinitializer
  %i.m = fmul <4 x float> %i.a, %i.l
  store <4 x float> %i.m, ptr %0, align 4
  br label %_ZN13aiQuaterniontIfE9NormalizeEv.exit

_ZN13aiQuaterniontIfE9NormalizeEv.exit:           ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiQuaternionConjugate(ptr nofree noundef captures(none) %0) local_unnamed_addr #14 !guid !243 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load <2 x float>, ptr %i.a, align 4
  %i.c = fneg <2 x float> %i.b
  store <2 x float> %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.e = load float, ptr %i.d, align 4
  %i.f = fneg float %i.e
  store float %i.f, ptr %i.d, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiQuaternionMultiply(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #15 !guid !244 {
bb.a:
  %i.a = load float, ptr %0, align 4
  %i.b = load float, ptr %1, align 4              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load <2 x float>, ptr %i.d, align 4      ; 6 uses
  %i.h = extractelement <2 x float> %i.g, i64 0
  %i.i = fneg float %i.h
  %i.j = load <2 x float>, ptr %i.c, align 4      ; 5 uses
  %i.k = load <2 x float>, ptr %i.e, align 4      ; 3 uses
  %i.l = load <2 x float>, ptr %i.f, align 4      ; 4 uses
  %i.m = fneg <2 x float> %i.j
  %i.n = extractelement <2 x float> %i.k, i64 1
  %i.o = fneg float %i.n
  %i.p = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = insertelement <2 x float> poison, float %i.i, i64 0
  %i.r = insertelement <2 x float> %i.q, float %i.b, i64 1
  %i.s = fmul <2 x float> %i.p, %i.r
  %i.t = insertelement <2 x float> poison, float %i.a, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.v = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.w = insertelement <2 x float> %i.v, float %i.b, i64 0
  %i.x = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.w, <2 x float> %i.s)
  %i.y = fneg <2 x float> %i.j
  %i.z = shufflevector <2 x float> %i.j, <2 x float> %i.y, <2 x i32> <i32 3, i32 1>
  %i.aa = shufflevector <2 x float> %i.g, <2 x float> %i.l, <2 x i32> <i32 1, i32 3>
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> %i.aa, <2 x float> %i.x)
  %i.ac = insertelement <2 x float> poison, float %i.o, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = shufflevector <2 x float> %i.l, <2 x float> %i.g, <2 x i32> <i32 1, i32 3>
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.ae, <2 x float> %i.ab)
  %i.ag = insertelement <2 x float> poison, float %i.b, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = fmul <2 x float> %i.ah, %i.k
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.l, <2 x float> %i.ai)
  %i.ak = shufflevector <2 x float> %i.k, <2 x float> %i.j, <2 x i32> <i32 1, i32 2>
end_hunk_2
