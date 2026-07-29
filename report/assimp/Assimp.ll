inline.NumInlined: 1626
inline.NumDeleted: 658
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 53
begin_hunk_0_@aiMatrix3Inverse:bb.a
  %i.aa = extractelement <2 x float> %i.j, i64 0  ; 2 uses
  %i.ab = fneg float %i.aa                        ; 2 uses
  %i.ac = fmul float %i.p, %i.ab                  ; 2 uses
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.l, float %i.z)
  %i.ae = load float, ptr %i.i, align 4           ; 4 uses
  %i.af = fmul float %i.aa, %i.ae
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.af, float %i.m, float %i.ad)
  %i.ah = fneg float %i.t
  %i.ai = fmul float %i.ae, %i.ah                 ; 2 uses
  %i.aj = tail call noundef float @llvm.fmuladd.f32(float %i.ai, float %i.g, float %i.ag) ; 2 uses
  %i.ak = fcmp oeq float %i.aj, 0.000000e+00
  br i1 %i.ak, label %_ZN12aiMatrix3x3tIfE7InverseEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.al = fdiv float 1.000000e+00, %i.aj          ; 3 uses
  %i.am = fneg float %i.al
  %i.an = fneg float %i.g                         ; 2 uses
  %i.ao = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ap = insertelement <4 x float> %i.ao, float %i.ae, i64 1
  %i.aq = insertelement <4 x float> %i.ap, float %i.ai, i64 2
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.as = insertelement <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, float %i.n, i64 0
  %i.at = insertelement <4 x float> %i.as, float %i.an, i64 3
  %i.au = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.av = fmul <4 x float> %i.ar, %i.au
  %i.aw = shufflevector <2 x float> %i.j, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.ax = shufflevector <2 x float> %i.o, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ay = shufflevector <2 x float> %i.j, <2 x float> %i.o, <4 x i32> <i32 1, i32 poison, i32 3, i32 0>
  %i.az = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ba = shufflevector <4 x float> %i.ay, <4 x float> %i.az, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.bb = shufflevector <2 x float> %i.o, <2 x float> %i.q, <4 x i32> <i32 poison, i32 1, i32 3, i32 poison>
  %i.bc = shufflevector <4 x float> %i.az, <4 x float> %i.bb, <4 x i32> <i32 1, i32 5, i32 6, i32 1>
  %i.bd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ba, <4 x float> %i.bc, <4 x float> %i.av)
  %i.be = insertelement <4 x float> poison, float %i.al, i64 0
  %i.bf = insertelement <4 x float> %i.be, float %i.am, i64 1
  %i.bg = shufflevector <4 x float> %i.bf, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.bh = fmul <4 x float> %i.bd, %i.bg
  %i.bi = insertelement <4 x float> poison, float %i.ae, i64 0
  %i.bj = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bk = shufflevector <4 x float> %i.bi, <4 x float> %i.bj, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.bl = shufflevector <4 x float> %i.bk, <4 x float> %i.ax, <4 x i32> <i32 0, i32 0, i32 1, i32 5>
  %i.bm = insertelement <4 x float> poison, float %i.an, i64 0
  %i.bn = insertelement <4 x float> %i.bm, float %i.ab, i64 1
  %i.bo = shufflevector <4 x float> %i.bn, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.bp = fmul <4 x float> %i.bl, %i.bo
  %i.bq = shufflevector <2 x float> %i.o, <2 x float> %i.k, <4 x i32> <i32 0, i32 0, i32 poison, i32 2>
  %i.br = shufflevector <4 x float> %i.bq, <4 x float> %i.aw, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.bs = shufflevector <2 x float> %i.k, <2 x float> %i.q, <4 x i32> <i32 1, i32 3, i32 0, i32 poison>
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
define noundef float @aiMatrix3Determinant(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #18 {
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
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load <2 x float>, ptr %i.a, align 4        ; 4 uses
  %i.d = load float, ptr %3, align 4              ; 5 uses
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load <2 x float>, ptr %1, align 4        ; 5 uses
  %i.f = load float, ptr %5, align 4              ; 4 uses
  %6 = extractelement <2 x float> %i.e, i64 1     ; 2 uses
  %i.g = extractelement <2 x float> %4, i64 0     ; 5 uses
  %i.h = fmul float %i.g, %6
  %7 = extractelement <2 x float> %i.e, i64 0
  %8 = tail call float @llvm.fmuladd.f32(float %i.c, float %7, float %i.h)
  %i.i = tail call noundef float @llvm.fmuladd.f32(float %i.d, float %i.f, float %8) ; 4 uses
  %i.j = tail call float @llvm.fabs.f32(float %i.i)
  %i.k = fcmp ogt float %i.j, f0x3F7FFF58
  br i1 %i.k, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %9 = fcmp ogt float %i.c, 0.000000e+00
  %10 = fneg float %i.c
  %11 = select i1 %9, float %i.c, float %10       ; 2 uses
  %i.l = fcmp ogt float %i.g, 0.000000e+00
  %i.m = fneg float %i.g
  %i.n = select i1 %i.l, float %i.g, float %i.m   ; 2 uses
  %12 = fcmp ogt float %i.d, 0.000000e+00
  %13 = fneg float %i.d
  %14 = select i1 %12, float %i.d, float %13      ; 2 uses
  %i.o = fcmp olt float %11, %i.n
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = fcmp olt float %11, %14
  br i1 %i.p, label %_ZN12aiMatrix3x3tIfEixEj.exit.2, label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  br label %_ZN12aiMatrix3x3tIfEixEj.exit.2

bb.e:                                             ; preds = %bb.b
  %i.q = fcmp olt float %i.n, %14
  br i1 %i.q, label %_ZN12aiMatrix3x3tIfEixEj.exit.2, label %bb.d

_ZN12aiMatrix3x3tIfEixEj.exit.2:                  ; preds = %bb.d, %bb.c, %bb.e
  %.sroa.0.0 = phi float [ 0.000000e+00, %bb.e ], [ 1.000000e+00, %bb.d ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %15 = phi <4 x float> [ <float 0.000000e+00, float 1.000000e+00, float undef, float undef>, %bb.e ], [ <float 0.000000e+00, float 0.000000e+00, float undef, float undef>, %bb.d ], [ <float 1.000000e+00, float 0.000000e+00, float undef, float undef>, %bb.c ]
  %i.r = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %bb.e ], [ zeroinitializer, %bb.d ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.c ]
  %16 = fsub <2 x float> %i.r, %i.e               ; 5 uses
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 6 uses
  %18 = extractelement <2 x float> %16, i64 0     ; 4 uses
  %19 = fneg float %18
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 20
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.s = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %.sroa.0.0, i64 0
  %23 = shufflevector <4 x float> %i.s, <4 x float> %15, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %24 = shufflevector <2 x float> %i.b, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %25 = insertelement <4 x float> %24, float 0.000000e+00, i64 3
  %26 = shufflevector <2 x float> %4, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %27 = shufflevector <4 x float> %26, <4 x float> %25, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %28 = fsub <4 x float> %23, %27                 ; 11 uses
  %29 = fsub float %.sroa.0.0, %i.f               ; 10 uses
  %30 = extractelement <4 x float> %28, i64 2
  %i.t = extractelement <4 x float> %28, i64 1    ; 4 uses
  %i.u = extractelement <4 x float> %28, i64 0    ; 4 uses
  %i.v = extractelement <2 x float> %16, i64 1    ; 2 uses
  %31 = shufflevector <4 x float> %28, <4 x float> %17, <2 x i32> <i32 2, i32 5> ; 2 uses
  %i.w = fmul <2 x float> %31, %31
  %32 = shufflevector <4 x float> %28, <4 x float> %17, <2 x i32> <i32 1, i32 4> ; 2 uses
  %33 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %32, <2 x float> %32, <2 x float> %i.w)
  %34 = shufflevector <4 x float> %28, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %35 = insertelement <2 x float> %34, float %29, i64 1 ; 2 uses
  %i.x = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %35, <2 x float> %35, <2 x float> %33)
  %i.y = fdiv <2 x float> splat (float 2.000000e+00), %i.x ; 4 uses
  %i.z = extractelement <2 x float> %i.y, i64 0   ; 2 uses
  %i.aa = extractelement <2 x float> %i.y, i64 1  ; 3 uses
  %i.ab = fmul float %i.z, %i.aa
  %36 = fmul float %30, %i.v
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.t, float %18, float %36)
  %i.ad = tail call noundef float @llvm.fmuladd.f32(float %i.u, float %29, float %i.ac)
  %i.ae = fmul float %i.ad, %i.ab                 ; 6 uses
  %i.af = fneg float %i.z                         ; 4 uses
  %i.ag = fmul float %i.t, %i.af
  %i.ah = fmul float %i.aa, %18
  %i.ai = fmul float %i.ah, %19
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.t, float %i.ai)
  %i.ak = fmul float %i.ae, %18
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.t, float %i.aj)
  %i.am = fadd float %i.al, 1.000000e+00
  store float %i.am, ptr %2, align 4
  %i.an = shufflevector <4 x float> %28, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 1, i32 2>
  %i.ao = insertelement <4 x float> poison, float %i.af, i64 0
  %i.ap = shufflevector <4 x float> %i.ao, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aq = fmul <4 x float> %i.an, %i.ap
  %37 = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ar = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %38 = fmul <4 x float> %i.ar, %17
  %39 = shufflevector <2 x float> %16, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 1>
  %i.as = insertelement <4 x float> %39, float %29, i64 2
  %40 = fneg <4 x float> %i.as
  %41 = fmul <4 x float> %38, %40
  %42 = shufflevector <4 x float> %28, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 2> ; 2 uses
  %43 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aq, <4 x float> %42, <4 x float> %41)
  %i.at = insertelement <4 x float> poison, float %i.ae, i64 0
  %44 = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> zeroinitializer
  %i.au = fmul <4 x float> %44, %17
  %45 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.au, <4 x float> %42, <4 x float> %43)
  %46 = shufflevector <4 x float> %45, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %46, ptr %20, align 4
  %47 = load float, ptr %22, align 4
  %48 = fadd float %47, 1.000000e+00
  store float %48, ptr %22, align 4
  %i.av = insertelement <2 x float> poison, float %29, i64 0
  %49 = shufflevector <2 x float> %i.av, <2 x float> %16, <2 x i32> <i32 0, i32 2>
  %50 = fneg <2 x float> %49
  %51 = shufflevector <4 x float> %28, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 0, i32 7>
  %52 = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.af, i64 0
  %53 = shufflevector <4 x float> %52, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.aw = fmul <4 x float> %51, %53
  %54 = fmul float %i.u, %i.af
  %55 = fmul float %i.aa, %29
  %56 = fneg float %29
  %57 = fmul float %55, %56
  %58 = tail call float @llvm.fmuladd.f32(float %54, float %i.u, float %57)
  %59 = fmul float %i.ae, %29
  %60 = tail call float @llvm.fmuladd.f32(float %59, float %i.u, float %58)
  %i.ax = fadd float %60, 1.000000e+00
  %61 = insertelement <4 x float> %37, float %i.ax, i64 1
  %62 = shufflevector <4 x float> %61, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %63 = shufflevector <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x float> %17, <4 x i32> <i32 5, i32 poison, i32 2, i32 poison>
  %64 = insertelement <4 x float> %63, float %29, i64 1
  %65 = shufflevector <4 x float> %64, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 2>
  %i.ay = fmul <4 x float> %62, %65
  %66 = fneg <4 x float> %17
  %67 = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %66, <4 x i32> <i32 poison, i32 poison, i32 5, i32 3>
  %68 = shufflevector <2 x float> %50, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %69 = shufflevector <4 x float> %68, <4 x float> %67, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.az = fmul <4 x float> %i.ay, %69
  %i.ba = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aw, <4 x float> %28, <4 x float> %i.az)
  %70 = fmul float %i.ae, %29
  %71 = fmul float %i.ae, %29
  %72 = fmul float %i.ae, %i.v
  %73 = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %72, i64 0
  %74 = insertelement <4 x float> %73, float %71, i64 1
  %75 = insertelement <4 x float> %74, float %70, i64 2
  %76 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %75, <4 x float> %28, <4 x float> %i.ba)
  store <4 x float> %76, ptr %21, align 4
  br label %.loopexit

bb.f:                                             ; preds = %bb.a
  %i.bb = fneg float %6
  %i.bc = fmul float %i.d, %i.bb
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.g, float %i.f, float %i.bc) ; 4 uses
  %i.be = fadd float %i.i, 1.000000e+00
  %i.bf = fdiv float 1.000000e+00, %i.be          ; 2 uses
  %i.bg = fmul float %i.bd, %i.bf                 ; 2 uses
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.bd, float %i.i)
  store float %i.bh, ptr %2, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %77 = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bk = insertelement <2 x float> %77, float %i.f, i64 0
  %78 = fneg <2 x float> %i.bk
  %79 = shufflevector <2 x float> %i.b, <2 x float> %4, <2 x i32> <i32 0, i32 2>
  %80 = fmul <2 x float> %79, %78
  %81 = shufflevector <2 x float> %4, <2 x float> %i.b, <2 x i32> <i32 1, i32 2>
  %i.bl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %81, <2 x float> %i.e, <2 x float> %80) ; 7 uses
  %i.bm = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bn = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bo = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = fmul <2 x float> %i.bn, %i.bo           ; 3 uses
  %foldExtExtBinop179.a = fsub <2 x float> %i.bp, %i.bl
  %i.bq = extractelement <2 x float> %foldExtExtBinop179.a, i64 1
  store float %i.bq, ptr %i.bi, align 4
  %i.br = fadd <2 x float> %i.bl, %i.bp
  store <2 x float> %i.br, ptr %i.bj, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 20
  %foldExtExtBinop181.a = fsub <2 x float> %i.bp, %i.bl
  %i.bu = extractelement <2 x float> %foldExtExtBinop181.a, i64 0
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 24
  store float %i.bu, ptr %i.bv, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.bx = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fmul <2 x float> %i.bl, %i.by           ; 2 uses
  %shift183 = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop184 = fmul <2 x float> %i.bl, %shift183
  %i.ca = extractelement <2 x float> %foldExtExtBinop184, i64 0 ; 2 uses
  %i.cb = insertelement <2 x float> poison, float %i.i, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.bl, <2 x float> %i.cc) ; 2 uses
  %i.ce = extractelement <2 x float> %i.cd, i64 0
  store float %i.ce, ptr %i.bs, align 4
  %i.cf = fsub float %i.ca, %i.bd
  store float %i.cf, ptr %i.bt, align 4
  %i.cg = fadd float %i.bd, %i.ca
  store float %i.cg, ptr %i.bw, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ci = extractelement <2 x float> %i.cd, i64 1
  store float %i.ci, ptr %i.ch, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN12aiMatrix3x3tIfEixEj.exit.2, %bb.f
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiMatrix4FromMatrix3(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #14 {
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
define void @aiMatrix4FromScalingQuaternionPosition(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load float, ptr %2, align 4, !noalias !19 ; 4 uses
  %i.e = fneg float %i.d                          ; 3 uses
  %4 = load float, ptr %1, align 4
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load float, ptr %5, align 4
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %8 = load float, ptr %7, align 4
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %10 = load float, ptr %3, align 4
  %11 = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %4, i64 0
  %12 = shufflevector <4 x float> %11, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %13 = load float, ptr %6, align 4
  %14 = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.f, i64 0
  %15 = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %16 = load float, ptr %9, align 4
  %17 = load <2 x float>, ptr %i.c, align 4, !noalias !19 ; 4 uses
  %18 = load <2 x float>, ptr %i.a, align 4, !noalias !19 ; 10 uses
  %19 = extractelement <2 x float> %18, i64 0     ; 2 uses
  %20 = load float, ptr %i.b, align 4, !noalias !19 ; 5 uses
  %21 = insertelement <2 x float> poison, float %20, i64 0
  %22 = insertelement <2 x float> %21, float %i.d, i64 1
  %23 = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.g = insertelement <2 x float> %23, float %i.e, i64 0
  %i.h = fmul <2 x float> %22, %i.g
  %24 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.i = insertelement <2 x float> %18, float %20, i64 1
  %i.j = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %24, <2 x float> %i.i, <2 x float> %i.h)
  %25 = shufflevector <2 x float> %i.j, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %26 = insertelement <2 x float> %18, float -2.000000e+00, i64 0
  %27 = insertelement <2 x float> %18, float %i.d, i64 1
  %28 = insertelement <2 x float> %24, float %i.e, i64 0
  %29 = fmul <2 x float> %27, %28
  %30 = extractelement <2 x float> %17, i64 0
  %31 = fmul float %30, %i.e
  %i.k = fmul <2 x float> %18, %18
  %32 = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %33 = fmul float %20, %i.d
  %34 = fmul float %20, %20                       ; 2 uses
  %35 = tail call float @llvm.fmuladd.f32(float %19, float %19, float %34)
  %36 = insertelement <2 x float> %24, float %35, i64 0
  %37 = shufflevector <2 x float> %36, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %38 = shufflevector <2 x float> %17, <2 x float> %18, <4 x i32> <i32 poison, i32 0, i32 2, i32 0>
  %39 = insertelement <4 x float> %38, float -2.000000e+00, i64 0
  %i.l = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %34, i64 1
  %40 = insertelement <4 x float> %i.l, float %33, i64 2
  %41 = shufflevector <4 x float> %40, <4 x float> %32, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %42 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %37, <4 x float> %39, <4 x float> %41) ; 4 uses
  %43 = shufflevector <4 x float> %42, <4 x float> %25, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %44 = insertelement <4 x float> %43, float %10, i64 3
  %i.m = fmul <4 x float> %44, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 1.000000e+00>
  %45 = shufflevector <2 x float> %18, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %46 = shufflevector <4 x float> %45, <4 x float> %42, <2 x i32> <i32 5, i32 1>
  %47 = insertelement <2 x float> <float 1.000000e+00, float poison>, float %31, i64 1
  %48 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %46, <2 x float> %26, <2 x float> %47)
  %49 = shufflevector <4 x float> %42, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.n = shufflevector <2 x float> %48, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.o = shufflevector <4 x float> %49, <4 x float> %i.n, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.p = insertelement <4 x float> %i.o, float %13, i64 3
  %i.q = fmul <4 x float> %i.p, <float 2.000000e+00, float 1.000000e+00, float 2.000000e+00, float 1.000000e+00>
  %50 = shufflevector <2 x float> %17, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %51 = shufflevector <4 x float> %50, <4 x float> <float poison, float poison, float -2.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %52 = shufflevector <2 x float> %18, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %53 = shufflevector <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x float> %52, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %54 = shufflevector <4 x float> %53, <4 x float> %42, <4 x i32> <i32 0, i32 0, i32 7, i32 3>
  %55 = shufflevector <2 x float> %29, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %56 = insertelement <4 x float> %55, float 1.000000e+00, i64 2
  %i.r = insertelement <4 x float> %56, float %16, i64 3
  %57 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %51, <4 x float> %54, <4 x float> %i.r)
  %58 = fmul <4 x float> %57, <float 2.000000e+00, float 2.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %59 = fmul <4 x float> %i.m, %12
  %60 = fmul <4 x float> %15, %i.q
  %i.s = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %8, i64 0
  %61 = shufflevector <4 x float> %i.s, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.t = fmul <4 x float> %61, %58
  store <4 x float> %59, ptr %0, align 4
  store <4 x float> %60, ptr %.sroa.7.0..sroa_idx, align 4
  store <4 x float> %i.t, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.15.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiMatrix4Add(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #14 {
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
define range(i32 0, 2) i32 @aiMatrix4AreEqual(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #18 {
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
define range(i32 0, 2) i32 @aiMatrix4AreEqualEpsilon(ptr noundef nonnull %0, ptr noundef nonnull %1, float noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK12aiMatrix4x4tIfE5EqualERKS0_f(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, float noundef %2)
  %i.b = zext i1 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK12aiMatrix4x4tIfE5EqualERKS0_f(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, float noundef %2) local_unnamed_addr #21 comdat align 2 {
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
end_hunk_0
begin_hunk_1_@_ZNK12aiMatrix4x4tIfE18DecomposeNoScalingER13aiQuaterniontIfER10aiVector3tIfE:bb.a
  %i.au = fsub float %i.at, %i.y
  %i.av = tail call noundef float @sqrtf(float noundef %i.au) #47
  %.scalar34 = fmul float %i.av, 2.000000e+00
  %i.aw = insertelement <2 x float> <float poison, float 2.500000e-01>, float %.scalar34, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0> ; 3 uses
  %i.ay = fadd float %i.u, %i.n
  %i.az = fadd float %i.t, %i.w
  %i.ba = fsub float %i.v, %i.r
  %i.bb = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> %i.ax, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.bd = insertelement <4 x float> %i.bc, float %i.ay, i64 2
  %i.be = insertelement <4 x float> %i.bd, float %i.az, i64 3 ; 2 uses
  %i.bf = fdiv <4 x float> %i.be, %i.ax
  %i.bg = fmul <4 x float> %i.be, %i.ax
  %i.bh = shufflevector <4 x float> %i.bf, <4 x float> %i.bg, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.e:                                             ; preds = %bb.c
  %i.bi = fcmp ogt float %i.p, %i.y
  br i1 %i.bi, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bj = fadd float %i.p, 1.000000e+00
  %i.bk = fsub float %i.bj, %i.k
  %i.bl = fsub float %i.bk, %i.y
  %i.bm = tail call noundef float @sqrtf(float noundef %i.bl) #47
  %i.bn = fmul float %i.bm, 2.000000e+00
  %i.bo = fadd float %i.u, %i.n
  %i.bp = fadd float %i.r, %i.v
  %i.bq = fsub float %i.t, %i.w
  %i.br = insertelement <4 x float> <float poison, float poison, float 2.500000e-01, float poison>, float %i.bq, i64 0
  %i.bs = insertelement <4 x float> %i.br, float %i.bo, i64 1
  %i.bt = insertelement <4 x float> %i.bs, float %i.bp, i64 3 ; 2 uses
  %i.bu = insertelement <4 x float> poison, float %i.bn, i64 0
  %i.bv = shufflevector <4 x float> %i.bu, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bw = fdiv <4 x float> %i.bt, %i.bv
  %i.bx = fmul <4 x float> %i.bt, %i.bv
  %i.by = shufflevector <4 x float> %i.bw, <4 x float> %i.bx, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.g:                                             ; preds = %bb.e
  %i.bz = fadd float %i.y, 1.000000e+00
  %i.ca = fsub float %i.bz, %i.k
  %i.cb = fsub float %i.ca, %i.p
  %i.cc = tail call noundef float @sqrtf(float noundef %i.cb) #47
  %i.cd = fmul float %i.cc, 2.000000e+00
  %i.ce = fadd float %i.t, %i.w
  %i.cf = fadd float %i.r, %i.v
  %i.cg = fsub float %i.n, %i.u
  %i.ch = insertelement <4 x float> <float poison, float poison, float poison, float 2.500000e-01>, float %i.cg, i64 0
  %i.ci = insertelement <4 x float> %i.ch, float %i.ce, i64 1
  %i.cj = insertelement <4 x float> %i.ci, float %i.cf, i64 2 ; 2 uses
  %i.ck = insertelement <4 x float> poison, float %i.cd, i64 0
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cm = fdiv <4 x float> %i.cj, %i.cl
  %i.cn = fmul <4 x float> %i.cj, %i.cl
  %i.co = shufflevector <4 x float> %i.cm, <4 x float> %i.cn, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit: ; preds = %bb.b, %bb.d, %bb.f, %bb.g
  %i.cp = phi <4 x float> [ %i.ap, %bb.b ], [ %i.bh, %bb.d ], [ %i.by, %bb.f ], [ %i.co, %bb.g ]
  store <4 x float> %i.cp, ptr %1, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define void @aiMatrix4FromEulerAngles(ptr nofree noundef writeonly captures(none) initializes((0, 12), (16, 28), (32, 44)) %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #19 {
bb.a:
  %i.a = tail call noundef float @cosf(float noundef %1) #47 ; 4 uses
  %i.b = tail call noundef float @sinf(float noundef %1) #47 ; 3 uses
  %i.c = tail call noundef float @cosf(float noundef %2) #47 ; 4 uses
  %i.d = tail call noundef float @sinf(float noundef %2) #47 ; 3 uses
  %i.e = tail call noundef float @cosf(float noundef %3) #47 ; 4 uses
  %i.f = tail call noundef float @sinf(float noundef %3) #47 ; 4 uses
  %i.g = fmul float %i.c, %i.e
  store float %i.g, ptr %0, align 4
  %i.h = fmul float %i.d, %i.e                    ; 2 uses
  %i.i = fneg float %i.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = insertelement <2 x float> poison, float %i.f, i64 0
  %i.l = insertelement <2 x float> %i.k, float %i.a, i64 1
  %i.m = insertelement <2 x float> poison, float %i.i, i64 0
  %i.n = insertelement <2 x float> %i.m, float %i.h, i64 1
  %i.o = fmul <2 x float> %i.l, %i.n
  %i.p = insertelement <2 x float> poison, float %i.h, i64 0
  %i.q = insertelement <2 x float> %i.p, float %i.f, i64 1
  %i.r = insertelement <2 x float> poison, float %i.b, i64 0 ; 2 uses
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.s, <2 x float> %i.o)
  store <2 x float> %i.t, ptr %i.j, align 4
  %i.u = fmul float %i.c, %i.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.u, ptr %i.v, align 4
  %i.w = fmul float %i.d, %i.f                    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.y = fneg float %i.b
  %i.z = insertelement <2 x float> %i.r, float %i.e, i64 1
  %i.aa = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ab = insertelement <2 x float> %i.aa, float %i.y, i64 1
  %i.ac = fmul <2 x float> %i.z, %i.ab
  %i.ad = insertelement <2 x float> poison, float %i.e, i64 0
  %i.ae = insertelement <2 x float> %i.ad, float %i.w, i64 1
  %i.af = insertelement <2 x float> poison, float %i.a, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.ag, <2 x float> %i.ac)
  store <2 x float> %i.ah, ptr %i.x, align 4
  %i.ai = fneg float %i.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.ai, ptr %i.aj, align 4
  %i.ak = fmul float %i.b, %i.c
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.ak, ptr %i.al, align 4
  %i.am = fmul float %i.a, %i.c
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.am, ptr %i.an, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define void @aiMatrix4RotationX(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0, float noundef %1) local_unnamed_addr #19 {
bb.a:
  store float 1.000000e+00, ptr %0, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i64 0, ptr %i.a, align 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx.i, align 4
  %i.b = tail call noundef float @cosf(float noundef %1) #47 ; 2 uses
  store float %i.b, ptr %.sroa.7.0..sroa_idx.i, align 4
  store float %i.b, ptr %.sroa.5.0..sroa_idx.i, align 4
  %i.c = tail call noundef float @sinf(float noundef %1) #47 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.c, ptr %i.d, align 4
  %i.e = fneg float %i.c
  store float %i.e, ptr %.sroa.6.0..sroa_idx.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define void @aiMatrix4RotationY(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0, float noundef %1) local_unnamed_addr #19 {
bb.a:
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx.i, align 4
  %i.a = tail call noundef float @cosf(float noundef %1) #47 ; 2 uses
  store float %i.a, ptr %.sroa.7.0..sroa_idx.i, align 4
  store float %i.a, ptr %0, align 4
  %i.b = tail call noundef float @sinf(float noundef %1) #47 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.b, ptr %i.c, align 4
  %i.d = fneg float %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.d, ptr %i.e, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define void @aiMatrix4RotationZ(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0, float noundef %1) local_unnamed_addr #19 {
bb.a:
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.a, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float 1.000000e+00, ptr %.sroa.7.0..sroa_idx.i, align 4
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx.i, align 4
  %i.b = tail call noundef float @cosf(float noundef %1) #47 ; 2 uses
  store float %i.b, ptr %.sroa.5.0..sroa_idx.i, align 4
  store float %i.b, ptr %0, align 4
  %i.c = tail call noundef float @sinf(float noundef %1) #47 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.c, ptr %i.d, align 4
  %i.e = fneg float %i.c
  store float %i.e, ptr %.sroa.4.0..sroa_idx.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @aiMatrix4FromRotationAroundAxis(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0, ptr nofree noundef readonly captures(none) %1, float noundef %2) local_unnamed_addr #20 {
bb.a:
  %i.a = tail call noundef float @cosf(float noundef %2) #47 ; 4 uses
  %i.b = tail call noundef float @sinf(float noundef %2) #47 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load float, ptr %i.c, align 4            ; 5 uses
  %i.e = fmul float %i.b, %i.d                    ; 2 uses
  %i.f = fneg float %i.e
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.scalar = fsub float 1.000000e+00, %i.a        ; 2 uses
  %6 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.scalar, i64 0
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %8 = load <2 x float>, ptr %1, align 4          ; 2 uses
  %9 = load float, ptr %3, align 4
  %10 = shufflevector <2 x float> %8, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %11 = shufflevector <4 x float> %10, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 5, i32 0, i32 1>
  %12 = fmul <4 x float> %11, %7                  ; 3 uses
  %13 = shufflevector <4 x float> %12, <4 x float> poison, <2 x i32> zeroinitializer
  %14 = insertelement <2 x float> %8, float %9, i64 1 ; 2 uses
  %i.i = insertelement <2 x float> poison, float %i.a, i64 0
  %i.j = insertelement <2 x float> %i.i, float %i.f, i64 1
  %i.k = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %13, <2 x float> %14, <2 x float> %i.j)
  store <2 x float> %i.k, ptr %0, align 4
  %15 = shufflevector <4 x float> %10, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 poison, i32 5, i32 1, i32 1>
  %16 = insertelement <4 x float> %15, float %i.d, i64 0
  %17 = insertelement <2 x float> poison, float %i.b, i64 0
  %18 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> zeroinitializer
  %19 = fmul <2 x float> %18, %14                 ; 2 uses
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %21 = shufflevector <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x float> %20, <4 x i32> <i32 5, i32 1, i32 poison, i32 poison>
  %22 = insertelement <4 x float> %21, float %i.e, i64 2
  %23 = insertelement <4 x float> %22, float %i.a, i64 3
  %24 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %12, <4 x float> %16, <4 x float> %23)
  %25 = fneg <2 x float> %19
  %26 = fmul float %.scalar, %i.d
  %27 = tail call float @llvm.fmuladd.f32(float %26, float %i.d, float %i.a)
  store float %27, ptr %i.g, align 4
  %28 = shufflevector <4 x float> %12, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 3, i32 5, i32 0, i32 3>
  %29 = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.d, i64 0
  %30 = shufflevector <4 x float> %29, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %31 = shufflevector <2 x float> %25, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %32 = insertelement <4 x float> %31, float 0.000000e+00, i64 1
  %33 = shufflevector <4 x float> %32, <4 x float> %20, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %34 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %28, <4 x float> %30, <4 x float> %33)
  store <4 x float> %34, ptr %5, align 4
  store <4 x float> %24, ptr %4, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.l, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiMatrix4Translation(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #14 {
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
define void @aiMatrix4Scaling(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #14 {
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
define void @aiMatrix4FromTo(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) local_unnamed_addr #2 {
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
define void @aiQuaternionFromEulerAngles(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #19 {
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
define void @aiQuaternionFromAxisAngle(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, ptr nofree noundef readonly captures(none) %1, float noundef %2) local_unnamed_addr #22 {
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
  %i.l = tail call noundef float @sinf(float noundef %i.k) #47
  %i.m = tail call noundef float @cosf(float noundef %i.k) #47
  %i.n = insertelement <4 x float> poison, float %i.m, i64 0
  %i.o = shufflevector <2 x float> %i.j, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.p = shufflevector <4 x float> %i.n, <4 x float> %i.o, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.q = insertelement <4 x float> %i.p, float %.sroa.7.0.i, i64 3
  %i.r = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.l, i64 1
  %i.s = shufflevector <4 x float> %i.r, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.t = fmul <4 x float> %i.q, %i.s
  store <4 x float> %i.t, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @aiQuaternionFromNormalizedQuaternion(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #22 {
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
end_hunk_1
