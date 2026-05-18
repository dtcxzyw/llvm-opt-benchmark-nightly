inline.NumInlined: 1626
inline.NumDeleted: 658
begin_hunk_0_@aiMatrix3Inverse:bb.a
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> %i.ax, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> %i.bt, <4 x float> %i.bp)
  %i.bv = fmul <4 x float> %i.bu, %i.bg
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.s, float %i.t, float %i.ac)
  %i.bx = fmul float %i.bw, %i.al
  br label %_ZN12aiMatrix3x3tIfE7InverseEv.exit

_ZN12aiMatrix3x3tIfE7InverseEv.exit:              ; preds = %bb.a, %bb.b
  %storemerge.i = phi float [ %i.bx, %bb.b ], [ +qnan, %bb.a ]
  %i.by = phi <4 x float> [ %i.bh, %bb.b ], [ splat (float +qnan), %bb.a ]
  %i.bz = phi <4 x float> [ %i.bv, %bb.b ], [ splat (float +qnan), %bb.a ]
  store <4 x float> %i.by, ptr %0, align 4
  store <4 x float> %i.bz, ptr %i.a, align 4
  store float %storemerge.i, ptr %i.b, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef float @aiMatrix3Determinant(ptr noundef readonly captures(none) %0) local_unnamed_addr #18 {
bb.a:
  %i.a = load float, ptr %0, align 4              ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load float, ptr %i.b, align 4            ; 2 uses
  %i.d = fmul float %i.a, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load float, ptr %i.e, align 4            ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load float, ptr %i.g, align 4            ; 2 uses
  %i.i = fmul float %i.a, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.k = load float, ptr %i.j, align 4            ; 2 uses
  %i.l = fneg float %i.k
  %i.m = fmul float %i.i, %i.l
  %i.n = tail call float @llvm.fmuladd.f32(float %i.d, float %i.f, float %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = load float, ptr %i.o, align 4            ; 2 uses
  %i.q = fmul float %i.h, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load float, ptr %i.r, align 4            ; 2 uses
  %i.t = tail call float @llvm.fmuladd.f32(float %i.q, float %i.s, float %i.n)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load float, ptr %i.u, align 4            ; 2 uses
  %i.w = fneg float %i.v
  %i.x = fmul float %i.p, %i.w
  %i.y = tail call float @llvm.fmuladd.f32(float %i.x, float %i.f, float %i.t)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load float, ptr %i.z, align 4           ; 2 uses
  %i.ab = fmul float %i.v, %i.aa
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.k, float %i.y)
  %i.ad = fneg float %i.c
  %i.ae = fmul float %i.aa, %i.ad
  %i.af = tail call noundef float @llvm.fmuladd.f32(float %i.ae, float %i.s, float %i.ac)
  ret float %i.af
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define void @aiMatrix3RotationZ(ptr noundef writeonly captures(none) initializes((0, 36)) %0, float noundef %1) local_unnamed_addr #19 {
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

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @aiMatrix3FromRotationAroundAxis(ptr noundef writeonly captures(none) initializes((0, 36)) %0, ptr noundef readonly captures(none) %1, float noundef %2) local_unnamed_addr #20 {
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
define void @aiMatrix3Translation(ptr noundef writeonly captures(none) initializes((0, 36)) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #14 {
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
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load <2 x float>, ptr %0, align 4        ; 6 uses
  %i.d = extractelement <2 x float> %i.c, i64 1   ; 3 uses
  %i.e = extractelement <2 x float> %i.c, i64 0   ; 3 uses
  %i.f = load float, ptr %i.b, align 4            ; 7 uses
  %i.g = load <2 x float>, ptr %i.a, align 4      ; 3 uses
  %i.h = load float, ptr %1, align 4              ; 4 uses
  %i.i = extractelement <2 x float> %i.g, i64 0   ; 3 uses
  %i.j = fmul float %i.d, %i.i
  %i.k = tail call float @llvm.fmuladd.f32(float %i.e, float %i.h, float %i.j)
  %i.l = extractelement <2 x float> %i.g, i64 1   ; 3 uses
  %i.m = tail call noundef float @llvm.fmuladd.f32(float %i.f, float %i.l, float %i.k) ; 5 uses
  %i.n = tail call float @llvm.fabs.f32(float %i.m)
  %i.o = fcmp ogt float %i.n, f0x3F7FFF58
  br i1 %i.o, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.p = fcmp ogt <2 x float> %i.c, zeroinitializer
  %i.q = fneg <2 x float> %i.c
  %i.r = select <2 x i1> %i.p, <2 x float> %i.c, <2 x float> %i.q ; 2 uses
  %i.s = fcmp ogt float %i.f, 0.000000e+00
  %i.t = fneg float %i.f
  %i.u = select i1 %i.s, float %i.f, float %i.t   ; 2 uses
  %i.v = extractelement <2 x float> %i.r, i64 0   ; 2 uses
  %i.w = extractelement <2 x float> %i.r, i64 1   ; 2 uses
  %i.x = fcmp olt float %i.v, %i.w
  br i1 %i.x, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.y = fcmp olt float %i.v, %i.u
  br i1 %i.y, label %_ZN12aiMatrix3x3tIfEixEj.exit.2, label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  br label %_ZN12aiMatrix3x3tIfEixEj.exit.2

bb.e:                                             ; preds = %bb.b
  %i.z = fcmp olt float %i.w, %i.u
  br i1 %i.z, label %_ZN12aiMatrix3x3tIfEixEj.exit.2, label %bb.d

_ZN12aiMatrix3x3tIfEixEj.exit.2:                  ; preds = %bb.d, %bb.c, %bb.e
  %.sroa.0.0 = phi float [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.d ], [ 1.000000e+00, %bb.c ]
  %i.aa = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %bb.e ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.d ], [ zeroinitializer, %bb.c ]
  %i.ab = phi <4 x float> [ <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, %bb.e ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %bb.d ], [ <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.c ]
  %i.ac = insertelement <4 x float> poison, float %i.f, i64 0
  %i.ad = shufflevector <2 x float> %i.c, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ae = shufflevector <4 x float> %i.ac, <4 x float> %i.ad, <4 x i32> <i32 0, i32 4, i32 5, i32 0>
  %i.af = fsub <4 x float> %i.ab, %i.ae           ; 11 uses
  %3 = fsub float %.sroa.0.0, %i.h                ; 9 uses
  %i.ag = fsub <2 x float> %i.aa, %i.g            ; 5 uses
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 5 uses
  %i.ai = extractelement <4 x float> %i.af, i64 1 ; 4 uses
  %i.aj = extractelement <4 x float> %i.af, i64 0
  %i.ak = extractelement <2 x float> %i.ag, i64 1
  %4 = shufflevector <4 x float> %i.af, <4 x float> %i.ah, <2 x i32> <i32 2, i32 4> ; 2 uses
  %5 = fmul <2 x float> %4, %4
  %6 = shufflevector <4 x float> %i.af, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.al = insertelement <2 x float> %6, float %3, i64 1 ; 2 uses
  %7 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %i.al, <2 x float> %5)
  %8 = shufflevector <4 x float> %i.af, <4 x float> %i.ah, <2 x i32> <i32 0, i32 5> ; 2 uses
  %9 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %8, <2 x float> %8, <2 x float> %7)
  %10 = fdiv <2 x float> splat (float 2.000000e+00), %9 ; 3 uses
  %11 = extractelement <2 x float> %10, i64 0     ; 2 uses
  %12 = extractelement <2 x float> %10, i64 1     ; 2 uses
  %13 = fmul float %11, %12
  %shift = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fmul <4 x float> %shift, %i.ah
  %14 = extractelement <4 x float> %foldExtExtBinop, i64 0
  %15 = tail call float @llvm.fmuladd.f32(float %i.ai, float %3, float %14)
  %16 = tail call noundef float @llvm.fmuladd.f32(float %i.aj, float %i.ak, float %15)
  %17 = fmul float %16, %13                       ; 2 uses
  %i.am = fneg float %11                          ; 2 uses
  %18 = fmul float %i.ai, %i.am
  %i.an = fmul float %12, %3
  %19 = fneg float %3
  %20 = fmul float %i.an, %19
  %i.ao = tail call float @llvm.fmuladd.f32(float %18, float %i.ai, float %20)
  %i.ap = fmul float %17, %3
  %21 = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.ai, float %i.ao)
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %23 = fadd float %21, 1.000000e+00
  store float %23, ptr %2, align 4
  %24 = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 1, i32 2>
  %25 = insertelement <4 x float> poison, float %i.am, i64 0
  %26 = shufflevector <4 x float> %25, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %27 = fmul <4 x float> %24, %26
  %28 = shufflevector <2 x float> %10, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %29 = shufflevector <2 x float> %i.ag, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0> ; 2 uses
  %30 = insertelement <4 x float> poison, float %3, i64 0
  %31 = shufflevector <4 x float> %30, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %32 = shufflevector <4 x float> %31, <4 x float> %29, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %33 = fmul <4 x float> %28, %32
  %34 = insertelement <4 x float> %29, float %3, i64 1
  %35 = fneg <4 x float> %34
  %36 = fmul <4 x float> %33, %35
  %37 = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 2> ; 2 uses
  %38 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %27, <4 x float> %37, <4 x float> %36)
  %39 = insertelement <4 x float> poison, float %17, i64 0
  %40 = shufflevector <4 x float> %39, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %41 = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %42 = insertelement <2 x float> %41, float %3, i64 0
  %43 = shufflevector <2 x float> %42, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %44 = fmul <4 x float> %40, %43
  %45 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %44, <4 x float> %37, <4 x float> %38)
  %46 = shufflevector <4 x float> %45, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %46, ptr %22, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %47 = load float, ptr %i.ar, align 4
  %i.as = fadd float %47, 1.000000e+00
  store float %i.as, ptr %i.ar, align 4
  %i.at = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 0, i32 0>
  %i.au = fmul <4 x float> %i.at, %26
  %i.av = fmul <4 x float> %28, %i.ah
  %48 = shufflevector <2 x float> %i.ag, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 1>
  %49 = insertelement <4 x float> %48, float %3, i64 1
  %i.aw = fneg <4 x float> %49
  %i.ax = fmul <4 x float> %i.av, %i.aw
  %i.ay = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.au, <4 x float> %i.af, <4 x float> %i.ax)
  %i.az = fmul <4 x float> %40, %i.ah
  %i.ba = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.az, <4 x float> %i.af, <4 x float> %i.ay)
  %i.bb = fadd <4 x float> %i.ba, <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float 1.000000e+00>
  store <4 x float> %i.bb, ptr %i.aq, align 4
  br label %.loopexit

bb.f:                                             ; preds = %bb.a
  %i.bc = fneg float %i.i
  %i.bd = fmul float %i.f, %i.bc
  %i.be = tail call float @llvm.fmuladd.f32(float %i.d, float %i.l, float %i.bd) ; 4 uses
  %i.bf = fneg float %i.l
  %i.bg = fmul float %i.e, %i.bf
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.f, float %i.h, float %i.bg) ; 6 uses
  %i.bi = fneg float %i.h
  %i.bj = fmul float %i.d, %i.bi
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.e, float %i.i, float %i.bj) ; 5 uses
  %i.bl = fadd float %i.m, 1.000000e+00
  %i.bm = fdiv float 1.000000e+00, %i.bl          ; 3 uses
  %i.bn = fmul float %i.be, %i.bm                 ; 3 uses
  %i.bo = fmul float %i.bk, %i.bm                 ; 2 uses
  %i.bp = fmul float %i.bh, %i.bn                 ; 2 uses
  %i.bq = fmul float %i.bk, %i.bn                 ; 2 uses
  %i.br = fmul float %i.bh, %i.bo                 ; 2 uses
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.be, float %i.m)
  store float %i.bs, ptr %2, align 4
  %i.bt = fsub float %i.bp, %i.bk
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.bt, ptr %i.bu, align 4
  %i.bv = fadd float %i.bh, %i.bq
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.bv, ptr %i.bw, align 4
  %i.bx = fadd float %i.bk, %i.bp
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float %i.bx, ptr %i.by, align 4
  %i.bz = fmul float %i.bh, %i.bm
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.bh, float %i.m)
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %i.ca, ptr %i.cb, align 4
  %i.cc = fsub float %i.br, %i.be
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 20
  store float %i.cc, ptr %i.cd, align 4
  %i.ce = fsub float %i.bq, %i.bh
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 24
  store float %i.ce, ptr %i.cf, align 4
  %i.cg = fadd float %i.be, %i.br
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 28
  store float %i.cg, ptr %i.ch, align 4
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.bo, float %i.bk, float %i.m)
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 32
  store float %i.ci, ptr %i.cj, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN12aiMatrix3x3tIfEixEj.exit.2, %bb.f
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiMatrix4FromMatrix3(ptr noundef writeonly captures(none) initializes((0, 64)) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #14 {
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
define void @aiMatrix4FromScalingQuaternionPosition(ptr noundef writeonly captures(none) initializes((0, 64)) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load float, ptr %2, align 4, !noalias !19 ; 4 uses
  %i.d = fneg float %i.c                          ; 3 uses
  %i.e = load <2 x float>, ptr %i.a, align 4, !noalias !19 ; 3 uses
  %i.f = extractelement <2 x float> %i.e, i64 1   ; 6 uses
  %i.g = fmul float %i.f, %i.f                    ; 2 uses
  %i.h = load <2 x float>, ptr %i.b, align 4, !noalias !19 ; 4 uses
  %i.i = extractelement <2 x float> %i.h, i64 1   ; 8 uses
  %i.j = tail call float @llvm.fmuladd.f32(float %i.i, float %i.i, float %i.g)
  %i.k = tail call float @llvm.fmuladd.f32(float %i.j, float -2.000000e+00, float 1.000000e+00)
  %i.l = insertelement <2 x float> poison, float %i.c, i64 0
  %i.m = insertelement <2 x float> %i.l, float %i.d, i64 1
  %i.n = fmul <2 x float> %i.e, %i.m
  %i.o = shufflevector <2 x float> %i.e, <2 x float> %i.h, <2 x i32> <i32 1, i32 2>
  %i.p = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.h, <2 x float> %i.o, <2 x float> %i.n)
  %i.q = fmul <2 x float> %i.p, splat (float 2.000000e+00)
  %i.r = fmul float %i.f, %i.c
  %i.s = extractelement <2 x float> %i.h, i64 0   ; 8 uses
  %i.t = tail call float @llvm.fmuladd.f32(float %i.s, float %i.i, float %i.r)
  %i.u = fmul float %i.t, 2.000000e+00
  %i.v = tail call float @llvm.fmuladd.f32(float %i.s, float %i.s, float %i.g)
  %i.w = tail call float @llvm.fmuladd.f32(float %i.v, float -2.000000e+00, float 1.000000e+00)
  %i.x = fmul float %i.s, %i.d
  %i.y = tail call float @llvm.fmuladd.f32(float %i.i, float %i.f, float %i.x)
  %i.z = fmul float %i.y, 2.000000e+00
  %i.aa = fmul float %i.i, %i.d
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.s, float %i.f, float %i.aa)
  %i.ac = fmul float %i.ab, 2.000000e+00
  %i.ad = fmul float %i.s, %i.c
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.i, float %i.f, float %i.ad)
  %i.af = fmul float %i.ae, 2.000000e+00
  %i.ag = fmul float %i.i, %i.i
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.s, float %i.s, float %i.ag)
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float -2.000000e+00, float 1.000000e+00)
  %i.aj = load float, ptr %1, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.al = load float, ptr %i.ak, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load float, ptr %i.an, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aq = load float, ptr %3, align 4
  %i.ar = insertelement <4 x float> poison, float %i.k, i64 0
  %i.as = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.at = shufflevector <4 x float> %i.ar, <4 x float> %i.as, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.au = insertelement <4 x float> %i.at, float %i.aq, i64 3
  %i.av = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.aj, i64 0
  %i.aw = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ax = fmul <4 x float> %i.au, %i.aw
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load float, ptr %i.am, align 4
  %i.az = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.al, i64 0
  %i.ba = shufflevector <4 x float> %i.az, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bb = insertelement <4 x float> poison, float %i.u, i64 0
  %i.bc = insertelement <4 x float> %i.bb, float %i.w, i64 1
  %i.bd = insertelement <4 x float> %i.bc, float %i.z, i64 2
  %i.be = insertelement <4 x float> %i.bd, float %i.ay, i64 3
  %i.bf = fmul <4 x float> %i.ba, %i.be
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bg = load float, ptr %i.ap, align 4
  %i.bh = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.ao, i64 0
  %i.bi = shufflevector <4 x float> %i.bh, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bj = insertelement <4 x float> poison, float %i.ac, i64 0
  %i.bk = insertelement <4 x float> %i.bj, float %i.af, i64 1
  %i.bl = insertelement <4 x float> %i.bk, float %i.ai, i64 2
  %i.bm = insertelement <4 x float> %i.bl, float %i.bg, i64 3
  %i.bn = fmul <4 x float> %i.bi, %i.bm
  store <4 x float> %i.ax, ptr %0, align 4
  store <4 x float> %i.bf, ptr %.sroa.7.0..sroa_idx, align 4
  store <4 x float> %i.bn, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.15.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiMatrix4Add(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = load <4 x float>, ptr %1, align 4, !noalias !22
  %i.h = load <4 x float>, ptr %0, align 4, !noalias !22
  %i.i = fadd <4 x float> %i.g, %i.h
  %i.j = load <4 x float>, ptr %i.a, align 4, !noalias !22
  %i.k = load <4 x float>, ptr %i.b, align 4, !noalias !22
  %i.l = fadd <4 x float> %i.j, %i.k
  %i.m = load <4 x float>, ptr %i.c, align 4, !noalias !22
  %i.n = load <4 x float>, ptr %i.d, align 4, !noalias !22
  %i.o = fadd <4 x float> %i.m, %i.n
  %i.p = load <4 x float>, ptr %i.e, align 4, !noalias !22
  %i.q = load <4 x float>, ptr %i.f, align 4, !noalias !22
  %i.r = fadd <4 x float> %i.p, %i.q
  store <4 x float> %i.i, ptr %0, align 4
  store <4 x float> %i.l, ptr %i.b, align 4
  store <4 x float> %i.o, ptr %i.d, align 4
  store <4 x float> %i.r, ptr %i.f, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @aiMatrix4AreEqual(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #18 {
end_hunk_0
