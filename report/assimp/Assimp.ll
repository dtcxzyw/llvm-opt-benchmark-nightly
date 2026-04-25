inline.NumInlined: 1626
inline.NumDeleted: 658
begin_hunk_0_@aiMultiplyMatrix3:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %4 = load float, ptr %3, align 4, !noalias !12  ; 3 uses
  %5 = load <4 x float>, ptr %0, align 4          ; 3 uses
  %.sroa.10.0.copyload9.a = load float, ptr %.sroa.10.0..sroa_idx8, align 4
  %6 = load <2 x float>, ptr %.sroa.12.0..sroa_idx10, align 4 ; 2 uses
  %7 = load <4 x float>, ptr %1, align 4, !noalias !12 ; 3 uses
  %i.f = load float, ptr %i.a, align 4, !noalias !12
  %8 = load <4 x float>, ptr %i.d, align 4, !noalias !12 ; 3 uses
  %i.g = load float, ptr %2, align 4, !noalias !12 ; 2 uses
  %i.h = shufflevector <2 x float> %6, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.i = shufflevector <4 x float> %5, <4 x float> %i.h, <4 x i32> <i32 1, i32 1, i32 1, i32 4>
  %9 = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 3, i32 4, i32 5, i32 3>
  %10 = fmul <4 x float> %i.i, %9
  %11 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %12 = shufflevector <4 x float> %5, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.j = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %11, <4 x float> %12, <4 x float> %10)
  %13 = shufflevector <4 x float> %8, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 2>
  %14 = insertelement <4 x float> %13, float %4, i64 2
  %15 = shufflevector <4 x float> %5, <4 x float> %i.h, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %16 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %14, <4 x float> %15, <4 x float> %i.j)
  %i.k = load <4 x float>, ptr %.sroa.14.0..sroa_idx12, align 4 ; 3 uses
  %.sroa.20.0.copyload19 = load float, ptr %.sroa.20.0..sroa_idx18, align 4
  %.sroa.18.0.copyload17 = load float, ptr %.sroa.18.0..sroa_idx16, align 4
  %.sroa.16.0.copyload15 = load float, ptr %.sroa.16.0..sroa_idx14, align 4
  %17 = load <2 x float>, ptr %i.c, align 4, !noalias !12
  %18 = load float, ptr %i.e, align 4, !noalias !12
  %19 = load <2 x float>, ptr %i.b, align 4, !noalias !12 ; 2 uses
  %20 = shufflevector <4 x float> %i.k, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %21 = shufflevector <2 x float> %6, <2 x float> %20, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %22 = shufflevector <4 x float> %8, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %23 = insertelement <4 x float> %22, float %i.f, i64 1
  %i.l = insertelement <4 x float> %23, float %i.g, i64 2
  %24 = fmul <4 x float> %21, %i.l
  %25 = shufflevector <2 x float> %17, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 0>
  %26 = shufflevector <4 x float> %7, <4 x float> %25, <4 x i32> <i32 4, i32 0, i32 6, i32 7>
  %i.m = shufflevector <4 x float> %i.k, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.n = insertelement <2 x float> %i.m, float %.sroa.10.0.copyload9.a, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.p = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %26, <4 x float> %i.o, <4 x float> %24)
  %27 = insertelement <4 x float> poison, float %4, i64 2
  %28 = shufflevector <2 x float> %19, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %29 = shufflevector <2 x float> %19, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %30 = shufflevector <4 x float> %27, <4 x float> %29, <4 x i32> <i32 poison, i32 poison, i32 2, i32 5>
  %31 = shufflevector <4 x float> %28, <4 x float> %30, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.q = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.r = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %31, <4 x float> %i.q, <4 x float> %i.p)
  %i.s = fmul float %.sroa.18.0.copyload17, %i.g
  %i.t = tail call float @llvm.fmuladd.f32(float %18, float %.sroa.16.0.copyload15, float %i.s)
  %i.u = tail call float @llvm.fmuladd.f32(float %4, float %.sroa.20.0.copyload19, float %i.t)
  store <4 x float> %16, ptr %0, align 4
  %i.v = shufflevector <4 x float> %i.r, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.v, ptr %.sroa.12.0..sroa_idx10, align 4
  store float %i.u, ptr %.sroa.20.0..sroa_idx18, align 4
end_hunk_0
begin_hunk_1_@aiMatrix3Inverse:bb.a
  %i.bh = fmul <4 x float> %i.bd, %i.bg
  %i.bi = insertelement <4 x float> poison, float %i.ae, i64 0
  %i.bj = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %1 = shufflevector <4 x float> %i.bi, <4 x float> %i.bj, <4 x i32> <i32 0, i32 poison, i32 4, i32 poison>
  %2 = shufflevector <4 x float> %1, <4 x float> %i.ax, <4 x i32> <i32 0, i32 0, i32 2, i32 5>
  %i.bk = insertelement <4 x float> poison, float %i.an, i64 0
  %i.bl = insertelement <4 x float> %i.bk, float %i.ab, i64 1
  %i.bm = shufflevector <4 x float> %i.bl, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
end_hunk_1
begin_hunk_2_@aiMatrix3FromRotationAroundAxis:bb.a
  %i.b = tail call noundef float @sinf(float noundef %2) #48 ; 2 uses
  %i.c = fsub float 1.000000e+00, %i.a            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %3 = load <2 x float>, ptr %1, align 4          ; 3 uses
  %4 = insertelement <4 x float> poison, float %i.a, i64 0 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = load <2 x float>, ptr %i.d, align 4        ; 5 uses
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %8 = extractelement <2 x float> %6, i64 1       ; 3 uses
  %9 = fmul float %i.b, %8                        ; 2 uses
  %10 = fneg float %9
  %i.e = insertelement <2 x float> poison, float %i.c, i64 0
  %i.f = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> zeroinitializer
  %11 = shufflevector <2 x float> %6, <2 x float> %3, <2 x i32> <i32 0, i32 2>
  %i.g = fmul <2 x float> %i.f, %11               ; 2 uses
  %12 = shufflevector <2 x float> %i.g, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %13 = shufflevector <2 x float> %i.g, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %14 = shufflevector <2 x float> %3, <2 x float> %6, <4 x i32> <i32 0, i32 1, i32 3, i32 1>
  %15 = insertelement <4 x float> %4, float %10, i64 1
  %i.h = insertelement <2 x float> poison, float %i.b, i64 0
  %i.i = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer
  %16 = shufflevector <2 x float> %3, <2 x float> %6, <2 x i32> <i32 0, i32 2>
  %17 = fmul <2 x float> %i.i, %16                ; 2 uses
  %18 = shufflevector <2 x float> %17, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %19 = shufflevector <4 x float> %15, <4 x float> %18, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %20 = insertelement <4 x float> %19, float %9, i64 3
  %i.j = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %13, <4 x float> %14, <4 x float> %20)
  store <4 x float> %i.j, ptr %0, align 4
  %21 = fneg <2 x float> %17
  %i.k = shufflevector <2 x float> %21, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.l = shufflevector <4 x float> %4, <4 x float> %i.k, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.m = shufflevector <4 x float> %i.l, <4 x float> %18, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.n = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %12, <4 x float> %7, <4 x float> %i.m)
  store <4 x float> %i.n, ptr %5, align 4
  %i.o = fmul float %i.c, %8
  %i.p = tail call float @llvm.fmuladd.f32(float %i.o, float %8, float %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.p, ptr %i.q, align 4
  ret void
end_hunk_2
begin_hunk_3_@aiMatrix3FromTo:bb.a
; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(36) ptr @_ZN12aiMatrix3x3tIfE12FromToMatrixERK10aiVector3tIfES4_RS0_(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(36) %2) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %3 = load float, ptr %1, align 4                ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load float, ptr %4, align 4                ; 7 uses
  %6 = load <2 x float>, ptr %0, align 4          ; 2 uses
  %i.c = load float, ptr %i.a, align 4            ; 6 uses
  %i.d = load <2 x float>, ptr %i.b, align 4      ; 4 uses
  %7 = extractelement <2 x float> %i.d, i64 0     ; 3 uses
  %8 = fmul float %i.c, %7
  %9 = extractelement <2 x float> %6, i64 0       ; 6 uses
  %i.e = tail call float @llvm.fmuladd.f32(float %9, float %3, float %8)
  %i.f = extractelement <2 x float> %i.d, i64 1   ; 3 uses
  %i.g = tail call noundef float @llvm.fmuladd.f32(float %5, float %i.f, float %i.e) ; 5 uses
  %i.h = tail call float @llvm.fabs.f32(float %i.g)
  %i.i = fcmp ogt float %i.h, 0x3FEFFFEB00000000
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %10 = fcmp ogt float %9, 0.000000e+00
  %11 = fneg float %9
  %12 = select i1 %10, float %9, float %11        ; 2 uses
  %i.j = fcmp ogt float %i.c, 0.000000e+00
  %i.k = fneg float %i.c
  %i.l = select i1 %i.j, float %i.c, float %i.k   ; 2 uses
  %13 = fcmp ogt float %5, 0.000000e+00
  %14 = fneg float %5
  %15 = select i1 %13, float %5, float %14        ; 2 uses
  %i.m = fcmp olt float %12, %i.l
  br i1 %i.m, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = fcmp olt float %12, %15
  br i1 %i.n, label %_ZN12aiMatrix3x3tIfEixEj.exit.2, label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  br label %_ZN12aiMatrix3x3tIfEixEj.exit.2

bb.e:                                             ; preds = %bb.b
  %i.o = fcmp olt float %i.l, %15
  br i1 %i.o, label %_ZN12aiMatrix3x3tIfEixEj.exit.2, label %bb.d

_ZN12aiMatrix3x3tIfEixEj.exit.2:                  ; preds = %bb.d, %bb.c, %bb.e
  %i.p = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %bb.e ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.d ], [ zeroinitializer, %bb.c ]
  %i.q = phi <4 x float> [ <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, %bb.e ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %bb.d ], [ <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.c ] ; 2 uses
  %16 = shufflevector <2 x float> %6, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.r = insertelement <4 x float> poison, float %5, i64 0
  %17 = shufflevector <4 x float> %i.r, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %18 = shufflevector <4 x float> %17, <4 x float> %16, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.s = fsub <4 x float> %i.q, %18               ; 11 uses
  %19 = shufflevector <2 x float> %i.d, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 1>
  %20 = insertelement <4 x float> %19, float %3, i64 1
  %21 = fsub <4 x float> %i.q, %20                ; 5 uses
  %22 = fsub <2 x float> %i.p, %i.d               ; 3 uses
  %23 = shufflevector <2 x float> %22, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 6 uses
  %i.t = extractelement <4 x float> %i.s, i64 2   ; 4 uses
  %i.u = extractelement <4 x float> %i.s, i64 1
  %24 = extractelement <4 x float> %i.s, i64 0
  %25 = extractelement <2 x float> %22, i64 0     ; 4 uses
  %26 = extractelement <4 x float> %21, i64 1
  %i.v = extractelement <2 x float> %22, i64 1
  %i.w = shufflevector <4 x float> %i.s, <4 x float> %23, <2 x i32> <i32 2, i32 4> ; 2 uses
  %i.x = fmul <2 x float> %i.w, %i.w
  %27 = shufflevector <4 x float> %i.s, <4 x float> %21, <2 x i32> <i32 1, i32 5> ; 2 uses
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %27, <2 x float> %27, <2 x float> %i.x)
  %i.z = shufflevector <4 x float> %i.s, <4 x float> %23, <2 x i32> <i32 0, i32 5> ; 2 uses
  %i.aa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> %i.z, <2 x float> %i.y)
  %i.ab = fdiv <2 x float> splat (float 2.000000e+00), %i.aa ; 3 uses
  %i.ac = extractelement <2 x float> %i.ab, i64 0 ; 2 uses
  %i.ad = extractelement <2 x float> %i.ab, i64 1 ; 2 uses
  %i.ae = fmul float %i.ac, %i.ad
  %i.af = fmul float %i.t, %25
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.u, float %26, float %i.af)
  %i.ah = tail call noundef float @llvm.fmuladd.f32(float %24, float %i.v, float %i.ag)
  %i.ai = fmul float %i.ah, %i.ae                 ; 2 uses
  %28 = fneg float %i.ac                          ; 2 uses
  %i.aj = shufflevector <4 x float> %i.s, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 2>
  %i.ak = insertelement <4 x float> poison, float %28, i64 0
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.am = fmul <4 x float> %i.aj, %i.al
  %i.an = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %29 = shufflevector <4 x float> %21, <4 x float> %23, <4 x i32> <i32 1, i32 1, i32 1, i32 4> ; 2 uses
  %i.ao = fmul <4 x float> %i.an, %29
  %30 = shufflevector <4 x float> %23, <4 x float> %21, <4 x i32> <i32 1, i32 5, i32 0, i32 5>
  %i.ap = fneg <4 x float> %30
  %i.aq = fmul <4 x float> %i.ao, %i.ap
  %i.ar = shufflevector <4 x float> %i.s, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1> ; 2 uses
  %i.as = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.am, <4 x float> %i.ar, <4 x float> %i.aq)
  %i.at = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.au = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.av = fmul <4 x float> %i.au, %29
  %i.aw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.av, <4 x float> %i.ar, <4 x float> %i.as)
  %i.ax = shufflevector <4 x float> %i.aw, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  store <4 x float> %i.ax, ptr %2, align 4
  %i.ay = load float, ptr %2, align 4
  %i.az = fadd float %i.ay, 1.000000e+00
  store float %i.az, ptr %2, align 4
  %i.ba = fmul float %i.t, %28
  %i.bb = fmul float %i.ad, %25
  %i.bc = fneg float %25
  %i.bd = fmul float %i.bb, %i.bc
  %i.be = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.t, float %i.bd)
  %i.bf = fmul float %i.ai, %25
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.t, float %i.be)
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = fadd float %i.bg, 1.000000e+00
  store float %i.bj, ptr %i.bi, align 4
  %i.bk = shufflevector <4 x float> %i.s, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 0, i32 0>
  %i.bl = fmul <4 x float> %i.bk, %i.al
  %i.bm = fmul <4 x float> %i.an, %23
  %i.bn = fneg <4 x float> %21
  %i.bo = fmul <4 x float> %i.bm, %i.bn
  %i.bp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bl, <4 x float> %i.s, <4 x float> %i.bo)
  %i.bq = fmul <4 x float> %i.au, %23
  %i.br = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bq, <4 x float> %i.s, <4 x float> %i.bp)
  %i.bs = fadd <4 x float> %i.br, <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float 1.000000e+00>
  store <4 x float> %i.bs, ptr %i.bh, align 4
end_hunk_3
begin_hunk_4_@_ZN12aiMatrix3x3tIfE12FromToMatrixERK10aiVector3tIfES4_RS0_:bb.a

bb.f:                                             ; preds = %bb.a
  %i.bt = fneg float %7
  %i.bu = fmul float %5, %i.bt
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.c, float %i.f, float %i.bu) ; 4 uses
  %i.bw = fneg float %i.f
  %i.bx = fmul float %9, %i.bw
  %i.by = tail call float @llvm.fmuladd.f32(float %5, float %3, float %i.bx) ; 6 uses
  %i.bz = fneg float %3
  %i.ca = fmul float %i.c, %i.bz
  %i.cb = tail call float @llvm.fmuladd.f32(float %9, float %7, float %i.ca) ; 5 uses
  %i.cc = fadd float %i.g, 1.000000e+00
  %i.cd = fdiv float 1.000000e+00, %i.cc          ; 3 uses
  %i.ce = fmul float %i.bv, %i.cd                 ; 3 uses
end_hunk_4
begin_hunk_5_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
  %i.ae = load <2 x float>, ptr %i.l, align 4     ; 6 uses
  %i.af = extractelement <2 x float> %i.ae, i64 0
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ah = load <2 x float>, ptr %i.h, align 4     ; 11 uses
  %i.ai = load <2 x float>, ptr %i.c, align 4     ; 8 uses
  %i.aj = load float, ptr %i.f, align 4           ; 7 uses
  %i.ak = fneg float %i.aj                        ; 3 uses
  %i.al = extractelement <2 x float> %i.ai, i64 0 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
bb.b:                                             ; preds = %bb.a
  %i.de = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.df = fdiv float 1.000000e+00, %i.dc          ; 3 uses
  %1 = shufflevector <2 x float> %i.ah, <2 x float> %i.ai, <4 x i32> <i32 3, i32 1, i32 3, i32 1> ; 2 uses
  %i.dg = shufflevector <2 x float> %i.ai, <2 x float> %i.ah, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.dh = fmul <4 x float> %i.dg, %i.de
  %i.di = fneg float %i.e
end_hunk_6
begin_hunk_7_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
  %i.dk = fneg float %i.df                        ; 2 uses
  %i.dl = shufflevector <2 x float> %i.u, <2 x float> %i.r, <4 x i32> <i32 1, i32 1, i32 3, i32 3> ; 2 uses
  %i.dm = insertelement <4 x float> poison, float %i.e, i64 0 ; 2 uses
  %2 = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> %2, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.do = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.dn, <4 x float> %i.dh) ; 2 uses
  %i.dp = shufflevector <2 x float> %i.u, <2 x float> %i.r, <4 x i32> <i32 0, i32 2, i32 0, i32 2> ; 3 uses
end_hunk_7
begin_hunk_8_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
  %i.er = shufflevector <2 x float> %i.az, <2 x float> %i.bc, <4 x i32> <i32 1, i32 3, i32 1, i32 3> ; 2 uses
  %i.es = fmul <4 x float> %i.er, %i.dt
  %i.et = insertelement <4 x float> poison, float %i.n, i64 0
  %i.eu = insertelement <4 x float> %1, float %i.n, i64 0 ; 2 uses
  %3 = shufflevector <4 x float> %i.eu, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 poison, i32 poison>
  %i.ev = insertelement <4 x float> %3, float %i.n, i64 2
  %i.ew = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %4 = shufflevector <4 x float> %i.ev, <4 x float> %i.ew, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ex = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eu, <4 x float> %4, <4 x float> %i.es) ; 2 uses
  %i.ey = shufflevector <2 x float> %i.ah, <2 x float> %i.ay, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.ez = shufflevector <2 x float> %i.ah, <2 x float> %i.ay, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.fa = fmul <4 x float> %i.ez, %i.ex
end_hunk_8
