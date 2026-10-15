Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/Assimp?download=true
inline.NumInlined: 1626
inline.NumDeleted: 658
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 52
begin_hunk_0_@aiQuaternionFromAxisAngle:bb.a
  %.sroa.01.0.copyload = load <2 x float>, ptr %1, align 4 ; 5 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4 ; 4 uses
  %.sroa.0.0.vec.extract8.i = extractelement <2 x float> %.sroa.01.0.copyload, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.01.0.copyload, %.sroa.01.0.copyload
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.b = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract8.i, float %.sroa.0.0.vec.extract8.i, float %i.a)
  %i.c = tail call noundef float @llvm.fmuladd.f32(float %.sroa.22.0.copyload, float %.sroa.22.0.copyload, float %i.b)
  %i.d = tail call noundef float @sqrtf(float noundef %i.c) #48 ; 2 uses
  %i.e = fcmp oeq float %i.d, 0.000000e+00        ; 2 uses
  %i.f = fdiv float 1.000000e+00, %i.d            ; 2 uses
  %i.g = fmul float %.sroa.22.0.copyload, %i.f
  %i.h = insertelement <2 x float> poison, float %i.f, i64 0
  %i.i = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer
  %i.j = fmul <2 x float> %.sroa.01.0.copyload, %i.i
  %i.k = insertelement <2 x i1> poison, i1 %i.e, i64 0
  %i.l = shufflevector <2 x i1> %i.k, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.m = select <2 x i1> %i.l, <2 x float> %.sroa.01.0.copyload, <2 x float> %i.j
  %.sroa.11.0.i = select i1 %i.e, float %.sroa.22.0.copyload, float %i.g
  %i.n = fmul float %2, 5.000000e-01              ; 2 uses
  %i.o = tail call noundef float @sinf(float noundef %i.n) #48
  %i.p = tail call noundef float @cosf(float noundef %i.n) #48
  %i.q = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.o, i64 1
  %i.r = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.s = insertelement <4 x float> poison, float %i.p, i64 0
  %i.t = shufflevector <2 x float> %i.m, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.u = shufflevector <4 x float> %i.s, <4 x float> %i.t, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.v = insertelement <4 x float> %i.u, float %.sroa.11.0.i, i64 3
  %i.w = fmul <4 x float> %i.r, %i.v
  store <4 x float> %i.w, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @aiQuaternionFromNormalizedQuaternion(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #23 {
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
  %i.h = tail call noundef float @sqrtf(float noundef %i.f) #48
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
define range(i32 0, 2) i32 @aiQuaternionAreEqual(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #18 {
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
define range(i32 0, 2) i32 @aiQuaternionAreEqualEpsilon(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, float noundef %2) local_unnamed_addr #18 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @aiQuaternionNormalize(ptr nofree noundef captures(none) %0) local_unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load float, ptr %i.a, align 4            ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load float, ptr %i.c, align 4            ; 2 uses
  %i.e = fmul float %i.d, %i.d
  %i.f = tail call float @llvm.fmuladd.f32(float %i.b, float %i.b, float %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load float, ptr %i.g, align 4            ; 2 uses
  %i.i = tail call float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.f)
  %i.j = load float, ptr %0, align 4              ; 2 uses
  %i.k = tail call float @llvm.fmuladd.f32(float %i.j, float %i.j, float %i.i)
  %i.l = tail call noundef float @sqrtf(float noundef %i.k) #48 ; 2 uses
  %i.m = fcmp une float %i.l, 0.000000e+00
  br i1 %i.m, label %bb.b, label %_ZN13aiQuaterniontIfE9NormalizeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.n = fdiv float 1.000000e+00, %i.l
  %i.o = load <4 x float>, ptr %0, align 4
  %i.p = insertelement <4 x float> poison, float %i.n, i64 0
  %i.q = shufflevector <4 x float> %i.p, <4 x float> poison, <4 x i32> zeroinitializer
  %i.r = fmul <4 x float> %i.q, %i.o
  store <4 x float> %i.r, ptr %0, align 4
  br label %_ZN13aiQuaterniontIfE9NormalizeEv.exit

_ZN13aiQuaterniontIfE9NormalizeEv.exit:           ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiQuaternionConjugate(ptr nofree noundef captures(none) %0) local_unnamed_addr #14 {
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
define void @aiQuaternionMultiply(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #15 {
bb.a:
  %i.a = load float, ptr %0, align 4
  %i.b = load float, ptr %1, align 4              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load <2 x float>, ptr %i.d, align 4      ; 4 uses
  %i.h = extractelement <2 x float> %i.g, i64 0
  %i.i = fneg float %i.h
  %i.j = load <2 x float>, ptr %i.c, align 4      ; 5 uses
  %i.k = load <2 x float>, ptr %i.e, align 4      ; 3 uses
  %i.l = load <2 x float>, ptr %i.f, align 4      ; 3 uses
  %i.m = fneg <2 x float> %i.j
  %i.n = extractelement <2 x float> %i.k, i64 1
  %i.o = fneg float %i.n
  %i.p = insertelement <2 x float> poison, float %i.i, i64 0
  %i.q = insertelement <2 x float> %i.p, float %i.b, i64 1
  %i.r = insertelement <2 x float> poison, float %i.a, i64 0
  %i.s = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.t = insertelement <2 x float> %i.s, float %i.b, i64 0
  %i.u = fneg <2 x float> %i.j
  %i.v = shufflevector <2 x float> %i.j, <2 x float> %i.u, <2 x i32> <i32 3, i32 1>
  %2 = insertelement <2 x float> poison, float %i.o, i64 0
  %3 = insertelement <2 x float> poison, float %i.b, i64 0
  %4 = shufflevector <2 x float> %i.k, <2 x float> %i.j, <2 x i32> <i32 1, i32 2>
  %5 = shufflevector <2 x float> %2, <2 x float> %i.m, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %6 = shufflevector <2 x float> %i.l, <2 x float> %i.g, <4 x i32> <i32 1, i32 3, i32 1, i32 2>
  %7 = shufflevector <2 x float> %i.v, <2 x float> %4, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %8 = shufflevector <2 x float> %i.g, <2 x float> %i.l, <4 x i32> <i32 1, i32 3, i32 0, i32 1>
  %9 = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> zeroinitializer
  %10 = shufflevector <2 x float> %i.t, <2 x float> %i.l, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %11 = shufflevector <2 x float> %i.j, <2 x float> %3, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %12 = shufflevector <2 x float> %i.q, <2 x float> %i.k, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %13 = fmul <4 x float> %11, %12
  %14 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %9, <4 x float> %10, <4 x float> %13)
  %15 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %7, <4 x float> %8, <4 x float> %14)
  %16 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %5, <4 x float> %6, <4 x float> %15)
  store <4 x float> %16, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @aiQuaternionInterpolate(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, float noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load float, ptr %i.a, align 4            ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load float, ptr %i.c, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.f = load float, ptr %i.e, align 4
  %i.g = load float, ptr %1, align 4
  %i.h = load <4 x float>, ptr %2, align 4        ; 6 uses
  %i.i = extractelement <4 x float> %i.h, i64 2
  %i.j = fmul float %i.d, %i.i
  %i.k = extractelement <4 x float> %i.h, i64 1
  %i.l = tail call float @llvm.fmuladd.f32(float %i.b, float %i.k, float %i.j)
  %i.m = extractelement <4 x float> %i.h, i64 3
  %i.n = tail call float @llvm.fmuladd.f32(float %i.f, float %i.m, float %i.l)
  %i.o = extractelement <4 x float> %i.h, i64 0
  %i.p = tail call float @llvm.fmuladd.f32(float %i.g, float %i.o, float %i.n) ; 3 uses
  %i.q = fcmp olt float %i.p, 0.000000e+00        ; 2 uses
  %i.r = fneg float %i.p
  %i.s = fneg <4 x float> %i.h
  %.0.i = select i1 %i.q, float %i.r, float %i.p  ; 2 uses
  %i.t = select i1 %i.q, <4 x float> %i.s, <4 x float> %i.h
  %i.u = fsub float 1.000000e+00, %.0.i
  %i.v = fcmp ogt float %i.u, f0x358637BD
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.w = tail call noundef float @acosf(float noundef %.0.i) #48 ; 3 uses
  %i.x = tail call noundef float @sinf(float noundef %i.w) #48 ; 2 uses
  %i.y = fsub float 1.000000e+00, %3
  %i.z = fmul float %i.y, %i.w
  %i.aa = tail call noundef float @sinf(float noundef %i.z) #48
  %i.ab = fdiv float %i.aa, %i.x
  %i.ac = fmul float %3, %i.w
  %i.ad = tail call noundef float @sinf(float noundef %i.ac) #48
  %i.ae = fdiv float %i.ad, %i.x
  %.pre.i = load float, ptr %i.a, align 4
  br label %_ZN13aiQuaterniontIfE11InterpolateERS0_RKS0_S3_f.exit

bb.c:                                             ; preds = %bb.a
  %i.af = fsub float 1.000000e+00, %3
  br label %_ZN13aiQuaterniontIfE11InterpolateERS0_RKS0_S3_f.exit

_ZN13aiQuaterniontIfE11InterpolateERS0_RKS0_S3_f.exit: ; preds = %bb.b, %bb.c
  %i.ag = phi float [ %.pre.i, %bb.b ], [ %i.b, %bb.c ]
  %.043.i = phi float [ %i.ab, %bb.b ], [ %i.af, %bb.c ] ; 4 uses
  %.042.i = phi float [ %i.ae, %bb.b ], [ %3, %bb.c ]
  %i.ah = insertelement <4 x float> poison, float %.042.i, i64 0
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aj = fmul <4 x float> %i.t, %i.ai            ; 4 uses
  %i.ak = extractelement <4 x float> %i.aj, i64 1
  %i.al = tail call float @llvm.fmuladd.f32(float %.043.i, float %i.ag, float %i.ak)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.al, ptr %i.am, align 4
  %i.an = load float, ptr %i.c, align 4
  %i.ao = extractelement <4 x float> %i.aj, i64 2
  %i.ap = tail call float @llvm.fmuladd.f32(float %.043.i, float %i.an, float %i.ao)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ap, ptr %i.aq, align 4
  %i.ar = load float, ptr %i.e, align 4
  %i.as = extractelement <4 x float> %i.aj, i64 3
  %i.at = tail call float @llvm.fmuladd.f32(float %.043.i, float %i.ar, float %i.as)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.at, ptr %i.au, align 4
  %i.av = load float, ptr %1, align 4
  %i.aw = extractelement <4 x float> %i.aj, i64 0
  %i.ax = tail call float @llvm.fmuladd.f32(float %.043.i, float %i.av, float %i.aw)
  store float %i.ax, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @assimp_stbi_failure_reason() local_unnamed_addr #10 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #24

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @assimp_stbi_image_free(ptr noundef captures(none) %0) local_unnamed_addr #25 {
bb.a:
  tail call void @free(ptr noundef %0) #48
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #26

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @assimp_stbi_set_flip_vertically_on_load(i32 noundef %0) local_unnamed_addr #27 {
bb.a:
  store i32 %0, ptr @_ZL36stbi__vertically_flip_on_load_global, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @assimp_stbi_set_flip_vertically_on_load_thread(i32 noundef %0) local_unnamed_addr #27 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZL35stbi__vertically_flip_on_load_local)
  store i32 %0, ptr %i.a, align 4
  %i.b = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZL33stbi__vertically_flip_on_load_set)
  store i32 1, ptr %i.b, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @assimp_stbi_load(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 14 uses
  %i.a = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str.3) ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.4, ptr %i.b, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) @_ZL21stbi__stdio_callbacks, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 128, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i32 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 3 uses
  store i32 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 4 uses
  store ptr %i.h, ptr %i.j, align 8
  %i.k = load ptr, ptr %i.c, align 8
  %i.l = call noundef i32 %i.k(ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, i32 noundef 128), !inline_history !40 ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8
  %i.n = load ptr, ptr %i.i, align 8
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = load i32, ptr %i.g, align 8
  %i.t = add nsw i32 %i.s, %i.r
  store i32 %i.t, ptr %i.g, align 8
  %i.u = icmp eq i32 %i.l, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 57
  store i8 0, ptr %i.h, align 8
  br label %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit.i

bb.e:                                             ; preds = %bb.c
  %i.w = sext i32 %i.l to i64
  %i.x = getelementptr inbounds i8, ptr %i.h, i64 %i.w
  br label %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit.i

_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit.i: ; preds = %bb.e, %bb.d
  %.sink.i.i.i.i = phi ptr [ %i.v, %bb.d ], [ %i.x, %bb.e ] ; 2 uses
  store ptr %i.h, ptr %i.j, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  store ptr %.sink.i.i.i.i, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 216
  store ptr %.sink.i.i.i.i, ptr %i.z, align 8
  %i.aa = call fastcc noundef ptr @_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %assimp_stbi_load_from_file.exit, label %bb.f

bb.f:                                             ; preds = %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit.i
  %i.ab = load ptr, ptr %i.y, align 8
  %i.ac = load ptr, ptr %i.j, align 8
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %.neg.i = sub i64 %i.ae, %i.ad
  %i.af = shl i64 %.neg.i, 32
  %i.ag = ashr exact i64 %i.af, 32
  %i.ah = call i32 @fseek(ptr noundef nonnull %i.a, i64 noundef %i.ag, i32 noundef 1) ; 0 uses
  br label %assimp_stbi_load_from_file.exit

assimp_stbi_load_from_file.exit:                  ; preds = %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  %i.ai = call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %assimp_stbi_load_from_file.exit, %bb.b
  %.0 = phi ptr [ %i.aa, %assimp_stbi_load_from_file.exit ], [ null, %bb.b ]
  ret ptr %.0
}
end_hunk_0
