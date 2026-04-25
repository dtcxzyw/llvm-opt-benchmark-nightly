inline.NumInlined: 245
inline.NumDeleted: 125
begin_hunk_0_@llvm.fmuladd.f32
; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(36) ptr @_ZN12aiMatrix3x3tIfE12FromToMatrixERK10aiVector3tIfES4_RS0_(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(36) %2) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load <2 x float>, ptr %0, align 4          ; 6 uses
  %4 = extractelement <2 x float> %3, i64 1       ; 3 uses
  %5 = extractelement <2 x float> %3, i64 0       ; 3 uses
  %i.c = load float, ptr %i.b, align 4            ; 7 uses
  %i.d = load <2 x float>, ptr %i.a, align 4      ; 3 uses
  %6 = load float, ptr %1, align 4                ; 4 uses
  %7 = extractelement <2 x float> %i.d, i64 0     ; 3 uses
  %8 = fmul float %4, %7
  %i.e = tail call float @llvm.fmuladd.f32(float %5, float %6, float %8)
  %i.f = extractelement <2 x float> %i.d, i64 1   ; 3 uses
  %i.g = tail call noundef float @llvm.fmuladd.f32(float %i.c, float %i.f, float %i.e) ; 5 uses
  %i.h = tail call float @llvm.fabs.f32(float %i.g)
  %i.i = fcmp ogt float %i.h, 0x3FEFFFEB00000000
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %9 = fcmp ogt <2 x float> %3, zeroinitializer
  %10 = fneg <2 x float> %3
  %11 = select <2 x i1> %9, <2 x float> %3, <2 x float> %10 ; 2 uses
  %i.j = fcmp ogt float %i.c, 0.000000e+00
  %i.k = fneg float %i.c
  %i.l = select i1 %i.j, float %i.c, float %i.k   ; 2 uses
  %12 = extractelement <2 x float> %11, i64 0     ; 2 uses
  %13 = extractelement <2 x float> %11, i64 1     ; 2 uses
  %i.m = fcmp olt float %12, %13
  br i1 %i.m, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = fcmp olt float %12, %i.l
  br i1 %i.n, label %_ZN12aiMatrix3x3tIfEixEj.exit.2, label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  br label %_ZN12aiMatrix3x3tIfEixEj.exit.2

bb.e:                                             ; preds = %bb.b
  %i.o = fcmp olt float %13, %i.l
  br i1 %i.o, label %_ZN12aiMatrix3x3tIfEixEj.exit.2, label %bb.d

_ZN12aiMatrix3x3tIfEixEj.exit.2:                  ; preds = %bb.d, %bb.c, %bb.e
  %.sroa.0.0 = phi float [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.d ], [ 1.000000e+00, %bb.c ]
  %i.p = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %bb.e ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.d ], [ zeroinitializer, %bb.c ]
  %i.q = phi <4 x float> [ <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, %bb.e ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %bb.d ], [ <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.c ]
  %i.r = insertelement <4 x float> poison, float %i.c, i64 0
  %14 = shufflevector <2 x float> %3, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %15 = shufflevector <4 x float> %i.r, <4 x float> %14, <4 x i32> <i32 0, i32 4, i32 5, i32 0>
  %i.s = fsub <4 x float> %i.q, %15               ; 11 uses
  %16 = fsub <2 x float> %i.p, %i.d               ; 6 uses
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 4 uses
  %18 = extractelement <4 x float> %i.s, i64 2    ; 4 uses
  %19 = extractelement <4 x float> %i.s, i64 1
  %20 = extractelement <4 x float> %i.s, i64 0
  %i.t = extractelement <2 x float> %16, i64 1
  %i.u = extractelement <2 x float> %16, i64 0    ; 4 uses
  %21 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %22 = insertelement <2 x float> %21, float %.sroa.0.0, i64 0
  %23 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %6, i64 0
  %24 = fsub <2 x float> %22, %23                 ; 5 uses
  %25 = shufflevector <2 x float> %24, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.v = extractelement <2 x float> %24, i64 0
  %i.w = shufflevector <4 x float> %i.s, <4 x float> %17, <2 x i32> <i32 2, i32 4> ; 2 uses
  %i.x = fmul <2 x float> %i.w, %i.w
  %26 = shufflevector <2 x float> %24, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %27 = shufflevector <4 x float> %i.s, <4 x float> %26, <2 x i32> <i32 1, i32 4> ; 2 uses
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %27, <2 x float> %27, <2 x float> %i.x)
  %i.z = shufflevector <4 x float> %i.s, <4 x float> %17, <2 x i32> <i32 0, i32 5> ; 2 uses
  %i.aa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> %i.z, <2 x float> %i.y)
  %i.ab = fdiv <2 x float> splat (float 2.000000e+00), %i.aa ; 3 uses
  %i.ac = extractelement <2 x float> %i.ab, i64 0 ; 2 uses
  %28 = fneg float %i.ac                          ; 2 uses
  %i.ad = extractelement <2 x float> %i.ab, i64 1 ; 2 uses
  %i.ae = fmul float %i.ac, %i.ad
  %i.af = fmul float %18, %i.u
  %i.ag = tail call float @llvm.fmuladd.f32(float %19, float %i.v, float %i.af)
  %i.ah = tail call noundef float @llvm.fmuladd.f32(float %20, float %i.t, float %i.ag)
  %i.ai = fmul float %i.ah, %i.ae                 ; 2 uses
  %i.aj = shufflevector <4 x float> %i.s, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 2>
  %i.ak = insertelement <4 x float> poison, float %28, i64 0
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.am = fmul <4 x float> %i.aj, %i.al
  %i.an = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.ao = fmul <4 x float> %i.an, %25
  %29 = shufflevector <2 x float> %16, <2 x float> %24, <4 x i32> <i32 1, i32 2, i32 0, i32 2>
  %i.ap = fneg <4 x float> %29
  %i.aq = fmul <4 x float> %i.ao, %i.ap
  %i.ar = shufflevector <4 x float> %i.s, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1> ; 2 uses
  %i.as = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.am, <4 x float> %i.ar, <4 x float> %i.aq)
  %i.at = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.au = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.av = fmul <4 x float> %i.au, %25
  %i.aw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.av, <4 x float> %i.ar, <4 x float> %i.as)
  %i.ax = shufflevector <4 x float> %i.aw, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  store <4 x float> %i.ax, ptr %2, align 4
  %i.ay = load float, ptr %2, align 4
  %i.az = fadd float %i.ay, 1.000000e+00
  store float %i.az, ptr %2, align 4
  %i.ba = fmul float %18, %28
  %i.bb = fmul float %i.ad, %i.u
  %i.bc = fneg float %i.u
  %i.bd = fmul float %i.bb, %i.bc
  %i.be = tail call float @llvm.fmuladd.f32(float %i.ba, float %18, float %i.bd)
  %i.bf = fmul float %i.ai, %i.u
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bf, float %18, float %i.be)
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = fadd float %i.bg, 1.000000e+00
  store float %i.bj, ptr %i.bi, align 4
  %i.bk = shufflevector <4 x float> %i.s, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 0, i32 0>
  %i.bl = fmul <4 x float> %i.bk, %i.al
  %i.bm = fmul <4 x float> %i.an, %17
  %30 = shufflevector <2 x float> %16, <2 x float> %24, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.bn = fneg <4 x float> %30
  %i.bo = fmul <4 x float> %i.bm, %i.bn
  %i.bp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bl, <4 x float> %i.s, <4 x float> %i.bo)
  %i.bq = fmul <4 x float> %i.au, %17
  %i.br = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bq, <4 x float> %i.s, <4 x float> %i.bp)
  %i.bs = fadd <4 x float> %i.br, <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float 1.000000e+00>
  store <4 x float> %i.bs, ptr %i.bh, align 4
end_hunk_0
begin_hunk_1_@_ZN12aiMatrix3x3tIfE12FromToMatrixERK10aiVector3tIfES4_RS0_:bb.a

bb.f:                                             ; preds = %bb.a
  %i.bt = fneg float %7
  %i.bu = fmul float %i.c, %i.bt
  %i.bv = tail call float @llvm.fmuladd.f32(float %4, float %i.f, float %i.bu) ; 4 uses
  %i.bw = fneg float %i.f
  %i.bx = fmul float %5, %i.bw
  %i.by = tail call float @llvm.fmuladd.f32(float %i.c, float %6, float %i.bx) ; 6 uses
  %i.bz = fneg float %6
  %i.ca = fmul float %4, %i.bz
  %i.cb = tail call float @llvm.fmuladd.f32(float %5, float %7, float %i.ca) ; 5 uses
  %i.cc = fadd float %i.g, 1.000000e+00
  %i.cd = fdiv float 1.000000e+00, %i.cc          ; 3 uses
  %i.ce = fmul float %i.bv, %i.cd                 ; 3 uses
end_hunk_1
