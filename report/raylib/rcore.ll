Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rcore?download=true
inline.NumInlined: 1934
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
begin_hunk_0_@Vector3Transform:bb.a
  %i.y = fadd float %i.x, %i.v
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.m, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.y, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @Vector3RotateByQuaternion(<2 x float> %0, float %1, <2 x float> %2, <2 x float> %3) local_unnamed_addr #13 {
bb.a:
  %.sroa.092.0.vec.extract = extractelement <2 x float> %0, i64 0
  %.sroa.01.0.vec.extract = extractelement <2 x float> %2, i64 0 ; 5 uses
  %.sroa.25.12.vec.extract = extractelement <2 x float> %3, i64 1 ; 4 uses
  %i.a = fmul float %.sroa.25.12.vec.extract, %.sroa.25.12.vec.extract
  %.sroa.25.8.vec.extract = extractelement <2 x float> %3, i64 0 ; 3 uses
  %.sroa.092.4.vec.extract = extractelement <2 x float> %0, i64 1
  %i.b = fneg float %.sroa.01.0.vec.extract
  %i.c = fmul float %.sroa.01.0.vec.extract, %i.b
  %i.d = tail call float @llvm.fmuladd.f32(float %.sroa.01.0.vec.extract, float %.sroa.01.0.vec.extract, float %i.a)
  %.sroa.01.4.vec.extract = extractelement <2 x float> %2, i64 1 ; 7 uses
  %i.e = fneg float %.sroa.01.4.vec.extract       ; 2 uses
  %i.f = fneg float %.sroa.25.8.vec.extract       ; 3 uses
  %i.g = shufflevector <2 x float> %3, <2 x float> %2, <2 x i32> <i32 1, i32 3>
  %i.h = fmul <2 x float> %i.g, splat (float 2.000000e+00) ; 3 uses
  %i.i = extractelement <2 x float> %i.h, i64 0   ; 2 uses
  %i.j = fmul float %i.i, %i.f
  %i.k = shufflevector <2 x float> %2, <2 x float> %3, <2 x i32> <i32 0, i32 3>
  %i.l = fmul <2 x float> %i.k, <float 2.000000e+00, float -2.000000e+00> ; 5 uses
  %i.m = extractelement <2 x float> %i.l, i64 0
  %i.n = fmul float %.sroa.01.4.vec.extract, %i.m
  %i.o = tail call float @llvm.fmuladd.f32(float %i.e, float %.sroa.01.4.vec.extract, float %i.d)
  %i.p = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.q = insertelement <2 x float> %i.p, float %i.f, i64 0
  %i.r = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = insertelement <2 x float> poison, float %i.o, i64 0
  %i.t = insertelement <2 x float> %i.s, float %i.n, i64 1
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.r, <2 x float> %i.t)
  %i.v = tail call float @llvm.fmuladd.f32(float %.sroa.25.12.vec.extract, float %.sroa.25.12.vec.extract, float %i.c) ; 2 uses
  %i.w = tail call float @llvm.fmuladd.f32(float %.sroa.01.4.vec.extract, float %.sroa.01.4.vec.extract, float %i.v)
  %i.x = insertelement <2 x float> %i.l, float %i.f, i64 1
  %i.y = shufflevector <2 x float> %2, <2 x float> %3, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.z = insertelement <2 x float> poison, float %i.j, i64 0
  %i.aa = insertelement <2 x float> %i.z, float %i.w, i64 1
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> %i.y, <2 x float> %i.aa)
  %i.ac = shufflevector <2 x float> %0, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ad = fmul <2 x float> %i.ac, %i.ab
  %i.ae = shufflevector <2 x float> %0, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.u, <2 x float> %i.ad)
  %i.ag = fmul <2 x float> %i.y, %i.h             ; 2 uses
  %i.ah = shufflevector <2 x float> %3, <2 x float> %2, <2 x i32> <i32 0, i32 2>
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.l, <2 x float> %i.ah, <2 x float> %i.ag)
  %i.aj = insertelement <2 x float> poison, float %1, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.ai, <2 x float> %i.af)
  %foldExtExtBinop = fmul <2 x float> %i.l, %3
  %i.am = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.an = extractelement <2 x float> %i.l, i64 1
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.an, float %.sroa.01.4.vec.extract, float %i.am)
  %i.ap = extractelement <2 x float> %i.ag, i64 1
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.i, float %.sroa.01.0.vec.extract, float %i.ap)
  %i.ar = fmul float %.sroa.092.4.vec.extract, %i.aq
  %i.as = tail call float @llvm.fmuladd.f32(float %.sroa.092.0.vec.extract, float %i.ao, float %i.ar)
  %i.at = tail call float @llvm.fmuladd.f32(float %i.e, float %.sroa.01.4.vec.extract, float %i.v)
  %i.au = tail call float @llvm.fmuladd.f32(float %.sroa.25.8.vec.extract, float %.sroa.25.8.vec.extract, float %i.at)
  %i.av = tail call float @llvm.fmuladd.f32(float %1, float %i.au, float %i.as)
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.al, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.av, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define { <2 x float>, float } @Vector3RotateByAxisAngle(<2 x float> %0, float %1, <2 x float> %2, float %3, float noundef %4) local_unnamed_addr #14 {
bb.a:
  %.sroa.044.0.vec.extract = extractelement <2 x float> %2, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %2, %2
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.b = tail call float @llvm.fmuladd.f32(float %.sroa.044.0.vec.extract, float %.sroa.044.0.vec.extract, float %i.a)
  %i.c = tail call float @llvm.fmuladd.f32(float %3, float %3, float %i.b) ; 2 uses
  %sqrt = tail call float @llvm.sqrt.f32(float %i.c)
  %i.d = fcmp oeq float %i.c, 0.000000e+00
  %i.e = fdiv float 1.000000e+00, %sqrt
  %i.f = select i1 %i.d, float 1.000000e+00, float %i.e
  %i.g = fmul float %4, 5.000000e-01              ; 2 uses
  %i.h = tail call float @sinf(float noundef %i.g) #56
  %i.i = tail call float @cosf(float noundef %i.g) #56
  %i.j = fmul float %i.i, 2.000000e+00            ; 2 uses
  %i.k = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.l = insertelement <2 x float> %i.k, float %3, i64 1
  %i.m = insertelement <2 x float> poison, float %i.f, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.o = fmul <2 x float> %i.l, %i.n
  %i.p = fmul <2 x float> %2, %i.n
  %i.q = insertelement <2 x float> %i.k, float %3, i64 0
  %i.r = fmul <2 x float> %i.q, %i.n
  %i.s = insertelement <2 x float> poison, float %i.h, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.u = fmul <2 x float> %i.o, %i.t              ; 5 uses
  %i.v = fmul <2 x float> %i.p, %i.t
  %i.w = fmul <2 x float> %i.r, %i.t              ; 5 uses
  %i.x = shufflevector <2 x float> %0, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.y = insertelement <2 x float> %i.x, float %1, i64 1 ; 2 uses
  %i.z = fneg <2 x float> %i.y
  %i.aa = fneg <2 x float> %0
  %i.ab = insertelement <2 x float> %i.x, float %1, i64 0 ; 2 uses
  %i.ac = fneg <2 x float> %i.ab
  %i.ad = fmul <2 x float> %i.w, %i.z
  %i.ae = fmul <2 x float> %i.u, %i.aa
  %i.af = shufflevector <2 x float> %i.w, <2 x float> %i.u, <2 x i32> <i32 1, i32 2>
  %i.ag = fmul <2 x float> %i.af, %i.ac
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.ab, <2 x float> %i.ad) ; 3 uses
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.y, <2 x float> %i.ae) ; 2 uses
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %0, <2 x float> %i.ag)
  %i.ak = fneg <2 x float> %i.aj
  %i.al = fmul <2 x float> %i.w, %i.ak
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.ai, <2 x float> %i.al)
  %i.an = extractelement <2 x float> %i.ah, i64 0
  %i.ao = fneg float %i.an
  %i.ap = extractelement <2 x float> %i.u, i64 0
  %i.aq = fmul float %i.ap, %i.ao
  %i.ar = extractelement <2 x float> %i.ah, i64 1
  %i.as = extractelement <2 x float> %i.w, i64 1
  %i.at = tail call float @llvm.fmuladd.f32(float %i.as, float %i.ar, float %i.aq)
  %i.au = insertelement <2 x float> poison, float %i.j, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = fmul <2 x float> %i.av, %i.ah
  %i.ax = extractelement <2 x float> %i.ai, i64 0
  %i.ay = fmul float %i.j, %i.ax
  %i.az = fmul <2 x float> %i.am, splat (float 2.000000e+00)
  %i.ba = fmul float %i.at, 2.000000e+00
  %i.bb = fadd <2 x float> %0, %i.aw
  %i.bc = fadd float %1, %i.ay
  %i.bd = fadd <2 x float> %i.bb, %i.az
  %i.be = fadd float %i.bc, %i.ba
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.bd, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.be, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @Vector3MoveTowards(<2 x float> %0, float %1, <2 x float> %2, float %3, float noundef %4) local_unnamed_addr #13 {
bb.a:
  %i.a = fsub <2 x float> %2, %0                  ; 4 uses
  %i.b = fsub float %3, %1                        ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.a, %i.a
  %i.c = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.d = extractelement <2 x float> %i.a, i64 0   ; 2 uses
  %i.e = tail call float @llvm.fmuladd.f32(float %i.d, float %i.d, float %i.c)
  %i.f = tail call float @llvm.fmuladd.f32(float %i.b, float %i.b, float %i.e) ; 3 uses
  %i.g = fcmp oeq float %i.f, 0.000000e+00
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = fcmp ult float %4, 0.000000e+00
  %i.i = fmul float %4, %4
  %i.j = fcmp ugt float %i.f, %i.i
  %or.cond = or i1 %i.h, %i.j
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %sqrt = tail call float @llvm.sqrt.f32(float %i.f) ; 2 uses
  %i.k = insertelement <2 x float> poison, float %sqrt, i64 0
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  %i.m = fdiv <2 x float> %i.a, %i.l
  %i.n = insertelement <2 x float> poison, float %4, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.m, <2 x float> %i.o, <2 x float> %0)
  %i.q = fdiv float %i.b, %sqrt
  %i.r = tail call float @llvm.fmuladd.f32(float %i.q, float %4, float %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.034.0 = phi <2 x float> [ %i.p, %bb.c ], [ %2, %bb.b ], [ %2, %bb.a ]
  %.sroa.436.0 = phi float [ %i.r, %bb.c ], [ %3, %bb.b ], [ %3, %bb.a ]
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.034.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.436.0, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @Vector3Lerp(<2 x float> %0, float %1, <2 x float> %2, float %3, float noundef %4) local_unnamed_addr #13 {
bb.a:
  %i.a = fsub <2 x float> %2, %0
  %i.b = insertelement <2 x float> poison, float %4, i64 0
  %i.c = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> zeroinitializer
  %i.d = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.c, <2 x float> %i.a, <2 x float> %0)
  %i.e = fsub float %3, %1
  %i.f = tail call float @llvm.fmuladd.f32(float %4, float %i.e, float %1)
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.d, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.f, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @Vector3CubicHermite(<2 x float> %0, float %1, <2 x float> %2, float %3, <2 x float> %4, float %5, <2 x float> %6, float %7, float noundef %8) local_unnamed_addr #13 {
bb.a:
  %i.a = fmul float %8, %8                        ; 4 uses
  %i.b = fmul float %8, %i.a                      ; 4 uses
  %i.c = fmul float %i.a, 3.000000e+00            ; 2 uses
  %i.d = fneg float %i.c
  %i.e = tail call float @llvm.fmuladd.f32(float %i.b, float -2.000000e+00, float %i.c) ; 2 uses
  %i.f = fsub float %i.b, %i.a                    ; 2 uses
  %9 = insertelement <2 x float> poison, float %i.b, i64 0
  %10 = insertelement <2 x float> %9, float %i.a, i64 1
  %11 = insertelement <2 x float> poison, float %i.d, i64 0
  %12 = insertelement <2 x float> %11, float %i.b, i64 1
  %13 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %10, <2 x float> <float 2.000000e+00, float -2.000000e+00>, <2 x float> %12)
  %i.g = insertelement <2 x float> <float 1.000000e+00, float poison>, float %8, i64 1
  %14 = fadd <2 x float> %13, %i.g                ; 4 uses
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %16 = fmul <2 x float> %2, %15
  %i.h = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer
  %i.i = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.h, <2 x float> %0, <2 x float> %16)
  %i.j = insertelement <2 x float> poison, float %i.e, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> %4, <2 x float> %i.i)
  %i.m = insertelement <2 x float> poison, float %i.f, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.n, <2 x float> %6, <2 x float> %i.l)
  %17 = extractelement <2 x float> %14, i64 1
  %i.p = fmul float %3, %17
  %18 = extractelement <2 x float> %14, i64 0
  %i.q = tail call float @llvm.fmuladd.f32(float %18, float %1, float %i.p)
  %i.r = tail call float @llvm.fmuladd.f32(float %i.e, float %5, float %i.q)
  %i.s = tail call float @llvm.fmuladd.f32(float %i.f, float %7, float %i.r)
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.o, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.s, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @Vector3Reflect(<2 x float> %0, float %1, <2 x float> %2, float %3) local_unnamed_addr #13 {
bb.a:
  %.sroa.013.0.vec.extract = extractelement <2 x float> %0, i64 0
  %.sroa.05.0.vec.extract = extractelement <2 x float> %2, i64 0
  %foldExtExtBinop = fmul <2 x float> %0, %2
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.b = tail call float @llvm.fmuladd.f32(float %.sroa.013.0.vec.extract, float %.sroa.05.0.vec.extract, float %i.a)
  %i.c = tail call float @llvm.fmuladd.f32(float %1, float %3, float %i.b) ; 2 uses
  %i.d = fmul <2 x float> %2, splat (float -2.000000e+00)
  %i.e = insertelement <2 x float> poison, float %i.c, i64 0
  %i.f = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> zeroinitializer
  %i.g = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.d, <2 x float> %i.f, <2 x float> %0)
  %i.h = fmul float %3, -2.000000e+00
  %i.i = tail call float @llvm.fmuladd.f32(float %i.h, float %i.c, float %1)
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.g, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.i, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @Vector3Min(<2 x float> %0, float %1, <2 x float> %2, float %3) local_unnamed_addr #13 {
bb.a:
  %i.a = tail call nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %0, <2 x float> %2)
  %i.b = tail call nsz float @llvm.minnum.f32(float %1, float %3)
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.a, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.b, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @Vector3Max(<2 x float> %0, float %1, <2 x float> %2, float %3) local_unnamed_addr #13 {
bb.a:
  %i.a = tail call nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %0, <2 x float> %2)
  %i.b = tail call nsz float @llvm.maxnum.f32(float %1, float %3)
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.a, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.b, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @Vector3Barycenter(<2 x float> %0, float %1, <2 x float> %2, float %3, <2 x float> %4, float %5, <2 x float> %6, float %7) local_unnamed_addr #13 {
bb.a:
  %i.a = insertelement <2 x float> poison, float %1, i64 0
  %i.b = insertelement <2 x float> %i.a, float %7, i64 1
  %i.c = insertelement <2 x float> poison, float %3, i64 0
  %i.d = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> zeroinitializer
  %i.e = fsub <2 x float> %i.b, %i.d              ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %4, %2      ; 2 uses
  %i.f = extractelement <2 x float> %foldExtExtBinop, i64 1 ; 2 uses
  %foldExtExtBinop70 = fsub <2 x float> %4, %2    ; 2 uses
  %i.g = extractelement <2 x float> %foldExtExtBinop70, i64 0 ; 2 uses
  %i.h = fsub float %5, %3                        ; 3 uses
  %i.i = shufflevector <2 x float> %0, <2 x float> %6, <2 x i32> <i32 0, i32 2>
  %i.j = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = fsub <2 x float> %i.i, %i.j              ; 3 uses
  %i.l = shufflevector <2 x float> %0, <2 x float> %6, <2 x i32> <i32 1, i32 3>
  %i.m = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.n = fsub <2 x float> %i.l, %i.m              ; 3 uses
  %i.o = fmul float %i.f, %i.f
  %i.p = tail call float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.o)
  %i.q = tail call float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.p)
  %i.r = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.s = fmul <2 x float> %i.r, %i.n
  %i.t = shufflevector <2 x float> %foldExtExtBinop70, <2 x float> poison, <2 x i32> zeroinitializer
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.k, <2 x float> %i.s)
  %i.v = insertelement <2 x float> poison, float %i.h, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.e, <2 x float> %i.u) ; 4 uses
  %i.y = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.z = fmul <2 x float> %i.y, %i.n
  %i.aa = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %i.k, <2 x float> %i.z)
  %i.ac = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ad = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.e, <2 x float> %i.ab) ; 3 uses
  %i.ae = extractelement <2 x float> %i.ad, i64 0
  %i.af = fneg float %i.ae
  %i.ag = extractelement <2 x float> %i.x, i64 1
  %i.ah = fmul float %i.ag, %i.af
  %i.ai = extractelement <2 x float> %i.ad, i64 1
  %i.aj = extractelement <2 x float> %i.x, i64 0
  %i.ak = fneg <2 x float> %i.x
  %i.al = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.am = fmul <2 x float> %i.al, %i.ak
  %i.an = insertelement <2 x float> poison, float %i.q, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.ad, <2 x float> %i.am) ; 2 uses
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.aj, float %i.ah)
  %i.ar = insertelement <2 x float> %i.ap, float %i.aq, i64 1
  %i.as = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.at = fdiv <2 x float> %i.ar, %i.as           ; 3 uses
  %i.au = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.at)
  %i.av = fsub float 1.000000e+00, %i.au
  %i.aw = insertelement <2 x float> %i.at, float %i.av, i64 0
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.aw, 0
  %i.ax = extractelement <2 x float> %i.at, i64 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.ax, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { <2 x float>, float } @Vector3Unproject(<2 x float> %0, float %1, ptr nofree noundef readonly byval(%struct.Matrix) align 8 captures(none) %2, ptr nofree noundef readonly byval(%struct.Matrix) align 8 captures(none) %3) local_unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.u = load float, ptr %i.t, align 8            ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.z = load float, ptr %i.y, align 4            ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.ac = load float, ptr %2, align 8             ; 3 uses
  %i.ad = load float, ptr %i.b, align 4           ; 3 uses
  %i.ae = load float, ptr %i.h, align 4           ; 3 uses
  %i.af = load <2 x float>, ptr %i.a, align 8     ; 4 uses
  %i.ag = load <2 x float>, ptr %3, align 8       ; 4 uses
  %i.ah = load <2 x float>, ptr %i.c, align 8     ; 4 uses
  %i.ai = load <2 x float>, ptr %i.e, align 8     ; 4 uses
  %i.aj = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = fmul <2 x float> %i.af, %i.ak
  %i.am = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.an, <2 x float> %i.al)
  %i.ap = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x float> %i.af, %i.aq
  %i.as = fmul float %i.ad, %i.u
  %i.at = fmul float %i.ae, %i.u
  %i.au = fmul float %i.ad, %i.z
  %i.av = fmul float %i.ae, %i.z
  %i.aw = load float, ptr %i.p, align 4           ; 3 uses
  %i.ax = load float, ptr %i.o, align 8           ; 3 uses
  %i.ay = load float, ptr %i.q, align 8           ; 3 uses
  %i.az = load float, ptr %i.r, align 4           ; 3 uses
  %i.ba = fmul float %i.aw, %i.u
  %i.bb = fmul float %i.aw, %i.z
  %i.bc = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = fmul <2 x float> %i.af, %i.bd
  %i.bf = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.bg, <2 x float> %i.be)
  %i.bi = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.bj, <2 x float> %i.bh)
  %i.bl = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.bm, <2 x float> %i.bk) ; 5 uses
  %i.bo = fneg <2 x float> %i.bn                  ; 5 uses
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> %i.bn, <2 x i32> <i32 0, i32 3>
  %i.bq = shufflevector <2 x float> %0, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.br = shufflevector <2 x float> %0, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bs = insertelement <2 x float> poison, float %1, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bu = load float, ptr %i.s, align 8           ; 4 uses
  %i.bv = load float, ptr %i.v, align 8           ; 4 uses
  %i.bw = load float, ptr %i.w, align 8           ; 4 uses
  %i.bx = load float, ptr %i.x, align 4           ; 4 uses
  %i.by = load float, ptr %i.aa, align 4          ; 4 uses
  %i.bz = load float, ptr %i.ab, align 4          ; 4 uses
  %i.ca = load float, ptr %i.d, align 8           ; 3 uses
  %i.cb = load float, ptr %i.f, align 4           ; 3 uses
  %i.cc = load float, ptr %i.g, align 8           ; 3 uses
  %i.cd = load float, ptr %i.i, align 8           ; 3 uses
  %i.ce = load float, ptr %i.j, align 4           ; 3 uses
  %i.cf = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.cg, <2 x float> %i.ao)
  %i.ci = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.cj, <2 x float> %i.ch) ; 7 uses
  %i.cl = insertelement <2 x float> poison, float %i.cc, i64 0
end_hunk_0
