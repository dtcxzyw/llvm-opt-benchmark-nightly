inline.NumInlined: 1626
inline.NumDeleted: 658
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 53
begin_hunk_0_@aiMatrix3Inverse:bb.a
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
  %3 = extractelement <2 x float> %i.b, i64 0     ; 4 uses
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load <2 x float>, ptr %i.a, align 4        ; 4 uses
  %6 = load float, ptr %4, align 4                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load <2 x float>, ptr %1, align 4        ; 5 uses
  %i.e = load float, ptr %i.c, align 4            ; 4 uses
  %7 = extractelement <2 x float> %i.d, i64 1     ; 2 uses
  %i.f = extractelement <2 x float> %5, i64 0     ; 5 uses
  %8 = fmul float %i.f, %7
  %i.g = extractelement <2 x float> %i.d, i64 0
  %i.h = tail call float @llvm.fmuladd.f32(float %3, float %i.g, float %8)
  %i.i = tail call noundef float @llvm.fmuladd.f32(float %6, float %i.e, float %i.h) ; 4 uses
  %i.j = tail call float @llvm.fabs.f32(float %i.i)
  %i.k = fcmp ogt float %i.j, f0x3F7FFF58
  br i1 %i.k, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.l = fcmp ogt float %3, 0.000000e+00
  %i.m = fneg float %3
  %i.n = select i1 %i.l, float %3, float %i.m     ; 2 uses
  %i.o = fcmp ogt float %i.f, 0.000000e+00
  %i.p = fneg float %i.f
  %i.q = select i1 %i.o, float %i.f, float %i.p   ; 2 uses
  %i.r = fcmp ogt float %6, 0.000000e+00
  %i.s = fneg float %6
  %i.t = select i1 %i.r, float %6, float %i.s     ; 2 uses
  %i.u = fcmp olt float %i.n, %i.q
  br i1 %i.u, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.v = fcmp olt float %i.n, %i.t
  br i1 %i.v, label %_ZN12aiMatrix3x3tIfEixEj.exit.2, label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  br label %_ZN12aiMatrix3x3tIfEixEj.exit.2

bb.e:                                             ; preds = %bb.b
  %i.w = fcmp olt float %i.q, %i.t
  br i1 %i.w, label %_ZN12aiMatrix3x3tIfEixEj.exit.2, label %bb.d

_ZN12aiMatrix3x3tIfEixEj.exit.2:                  ; preds = %bb.d, %bb.c, %bb.e
  %.sroa.20.0 = phi float [ 0.000000e+00, %bb.e ], [ 1.000000e+00, %bb.d ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %9 = phi <4 x float> [ <float 0.000000e+00, float 1.000000e+00, float undef, float undef>, %bb.e ], [ <float 0.000000e+00, float 0.000000e+00, float undef, float undef>, %bb.d ], [ <float 1.000000e+00, float 0.000000e+00, float undef, float undef>, %bb.c ]
  %i.x = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %bb.e ], [ zeroinitializer, %bb.d ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.c ]
  %10 = fsub <2 x float> %i.x, %i.d               ; 5 uses
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 6 uses
  %i.y = extractelement <2 x float> %10, i64 0    ; 4 uses
  %i.z = fneg float %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %12 = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %.sroa.20.0, i64 0
  %13 = shufflevector <4 x float> %12, <4 x float> %9, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ad = shufflevector <2 x float> %i.b, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.ae = insertelement <4 x float> %i.ad, float 0.000000e+00, i64 3
  %i.af = shufflevector <2 x float> %5, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ag = shufflevector <4 x float> %i.af, <4 x float> %i.ae, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ah = fsub <4 x float> %13, %i.ag             ; 11 uses
  %14 = fsub float %.sroa.20.0, %i.e              ; 10 uses
  %15 = extractelement <4 x float> %i.ah, i64 2
  %i.ai = extractelement <4 x float> %i.ah, i64 1 ; 4 uses
  %i.aj = extractelement <4 x float> %i.ah, i64 0 ; 4 uses
  %i.ak = extractelement <2 x float> %10, i64 1   ; 2 uses
  %16 = shufflevector <4 x float> %i.ah, <4 x float> %11, <2 x i32> <i32 2, i32 5> ; 2 uses
  %i.al = fmul <2 x float> %16, %16
  %17 = shufflevector <4 x float> %i.ah, <4 x float> %11, <2 x i32> <i32 1, i32 4> ; 2 uses
  %18 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %17, <2 x float> %17, <2 x float> %i.al)
  %19 = shufflevector <4 x float> %i.ah, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %20 = insertelement <2 x float> %19, float %14, i64 1 ; 2 uses
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %20, <2 x float> %20, <2 x float> %18)
  %i.an = fdiv <2 x float> splat (float 2.000000e+00), %i.am ; 4 uses
  %i.ao = extractelement <2 x float> %i.an, i64 0 ; 2 uses
  %i.ap = extractelement <2 x float> %i.an, i64 1 ; 3 uses
  %i.aq = fmul float %i.ao, %i.ap
  %21 = fmul float %15, %i.ak
  %22 = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.y, float %21)
  %23 = tail call noundef float @llvm.fmuladd.f32(float %i.aj, float %14, float %22)
  %24 = fmul float %23, %i.aq                     ; 6 uses
  %i.ar = fneg float %i.ao                        ; 4 uses
  %i.as = fmul float %i.ai, %i.ar
  %i.at = fmul float %i.ap, %i.y
  %i.au = fmul float %i.at, %i.z
  %i.av = tail call float @llvm.fmuladd.f32(float %i.as, float %i.ai, float %i.au)
  %i.aw = fmul float %24, %i.y
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.ai, float %i.av)
  %i.ay = fadd float %i.ax, 1.000000e+00
  store float %i.ay, ptr %2, align 4
  %i.az = shufflevector <4 x float> %i.ah, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 1, i32 2>
  %i.ba = insertelement <4 x float> poison, float %i.ar, i64 0
  %i.bb = shufflevector <4 x float> %i.ba, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bc = fmul <4 x float> %i.az, %i.bb
  %i.bd = shufflevector <2 x float> %i.an, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.be = shufflevector <2 x float> %i.an, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %25 = fmul <4 x float> %i.be, %11
  %26 = shufflevector <2 x float> %10, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 1>
  %27 = insertelement <4 x float> %26, float %14, i64 2
  %i.bf = fneg <4 x float> %27
  %i.bg = fmul <4 x float> %25, %i.bf
  %i.bh = shufflevector <4 x float> %i.ah, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 2> ; 2 uses
  %i.bi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bc, <4 x float> %i.bh, <4 x float> %i.bg)
  %28 = insertelement <4 x float> poison, float %24, i64 0
  %i.bj = shufflevector <4 x float> %28, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bk = fmul <4 x float> %i.bj, %11
  %i.bl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bk, <4 x float> %i.bh, <4 x float> %i.bi)
  %i.bm = shufflevector <4 x float> %i.bl, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.bm, ptr %i.aa, align 4
  %i.bn = load float, ptr %i.ac, align 4
  %i.bo = fadd float %i.bn, 1.000000e+00
  store float %i.bo, ptr %i.ac, align 4
  %29 = insertelement <2 x float> poison, float %14, i64 0
  %30 = shufflevector <2 x float> %29, <2 x float> %10, <2 x i32> <i32 0, i32 2>
  %i.bp = fneg <2 x float> %30
  %i.bq = shufflevector <4 x float> %i.ah, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 0, i32 7>
  %i.br = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.ar, i64 0
  %i.bs = shufflevector <4 x float> %i.br, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bt = fmul <4 x float> %i.bq, %i.bs
  %i.bu = fmul float %i.aj, %i.ar
  %i.bv = fmul float %i.ap, %14
  %i.bw = fneg float %14
  %i.bx = fmul float %i.bv, %i.bw
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.aj, float %i.bx)
  %i.bz = fmul float %24, %14
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.aj, float %i.by)
  %i.cb = fadd float %i.ca, 1.000000e+00
  %i.cc = insertelement <4 x float> %i.bd, float %i.cb, i64 1
  %i.cd = shufflevector <4 x float> %i.cc, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %31 = shufflevector <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x float> %11, <4 x i32> <i32 5, i32 poison, i32 2, i32 poison>
  %32 = insertelement <4 x float> %31, float %14, i64 1
  %33 = shufflevector <4 x float> %32, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 2>
  %i.ce = fmul <4 x float> %i.cd, %33
  %i.cf = fneg <4 x float> %11
  %34 = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.cf, <4 x i32> <i32 poison, i32 poison, i32 5, i32 3>
  %i.cg = shufflevector <2 x float> %i.bp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ch = shufflevector <4 x float> %i.cg, <4 x float> %34, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ci = fmul <4 x float> %i.ce, %i.ch
  %i.cj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bt, <4 x float> %i.ah, <4 x float> %i.ci)
  %35 = fmul float %24, %14
  %36 = fmul float %24, %14
  %37 = fmul float %24, %i.ak
  %38 = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %37, i64 0
  %39 = insertelement <4 x float> %38, float %36, i64 1
  %40 = insertelement <4 x float> %39, float %35, i64 2
  %i.ck = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %40, <4 x float> %i.ah, <4 x float> %i.cj)
  store <4 x float> %i.ck, ptr %i.ab, align 4
  br label %.loopexit

bb.f:                                             ; preds = %bb.a
  %i.cl = fneg float %7
  %i.cm = fmul float %6, %i.cl
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.f, float %i.e, float %i.cm) ; 4 uses
  %i.co = fadd float %i.i, 1.000000e+00
  %i.cp = fdiv float 1.000000e+00, %i.co          ; 2 uses
  %i.cq = fmul float %i.cn, %i.cp                 ; 2 uses
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.cn, float %i.i)
  store float %i.cr, ptr %2, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 8
  %41 = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %42 = insertelement <2 x float> %41, float %i.e, i64 0
  %i.cu = fneg <2 x float> %42
  %i.cv = shufflevector <2 x float> %i.b, <2 x float> %5, <2 x i32> <i32 0, i32 2>
  %i.cw = fmul <2 x float> %i.cv, %i.cu
  %i.cx = shufflevector <2 x float> %5, <2 x float> %i.b, <2 x i32> <i32 1, i32 2>
  %i.cy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cx, <2 x float> %i.d, <2 x float> %i.cw) ; 7 uses
  %i.cz = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.da = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.db = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dc = fmul <2 x float> %i.da, %i.db           ; 3 uses
  %foldExtExtBinop.a = fsub <2 x float> %i.dc, %i.cy
  %i.dd = extractelement <2 x float> %foldExtExtBinop.a, i64 1
  store float %i.dd, ptr %i.cs, align 4
  %i.de = fadd <2 x float> %i.cy, %i.dc
  store <2 x float> %i.de, ptr %i.ct, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 20
  %foldExtExtBinop179.a = fsub <2 x float> %i.dc, %i.cy
  %i.dh = extractelement <2 x float> %foldExtExtBinop179.a, i64 0
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 24
  store float %i.dh, ptr %i.di, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.dk = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = fmul <2 x float> %i.cy, %i.dl           ; 2 uses
  %shift.a = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop181 = fmul <2 x float> %i.cy, %shift.a
  %i.dn = extractelement <2 x float> %foldExtExtBinop181, i64 0 ; 2 uses
  %i.do = insertelement <2 x float> poison, float %i.i, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> %i.cy, <2 x float> %i.dp) ; 2 uses
  %i.dr = extractelement <2 x float> %i.dq, i64 0
  store float %i.dr, ptr %i.df, align 4
  %i.ds = fsub float %i.dn, %i.cn
  store float %i.ds, ptr %i.dg, align 4
  %i.dt = fadd float %i.cn, %i.dn
  store float %i.dt, ptr %i.dj, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dv = extractelement <2 x float> %i.dq, i64 1
  store float %i.dv, ptr %i.du, align 4
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
  %i.f = load float, ptr %1, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load float, ptr %i.g, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load float, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load float, ptr %3, align 4
  %i.n = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.f, i64 0
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load float, ptr %i.i, align 4
  %i.q = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.h, i64 0
  %i.r = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load float, ptr %i.l, align 4
  %i.t = load <2 x float>, ptr %i.c, align 4, !noalias !19 ; 4 uses
  %i.u = load <2 x float>, ptr %i.a, align 4, !noalias !19 ; 10 uses
  %i.v = extractelement <2 x float> %i.u, i64 0   ; 2 uses
  %i.w = load float, ptr %i.b, align 4, !noalias !19 ; 5 uses
  %i.x = insertelement <2 x float> poison, float %i.w, i64 0
  %i.y = insertelement <2 x float> %i.x, float %i.d, i64 1
  %i.z = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aa = insertelement <2 x float> %i.z, float %i.e, i64 0
  %i.ab = fmul <2 x float> %i.y, %i.aa
  %i.ac = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ad = insertelement <2 x float> %i.u, float %i.w, i64 1
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ad, <2 x float> %i.ab)
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ag = insertelement <2 x float> %i.u, float -2.000000e+00, i64 0
  %i.ah = insertelement <2 x float> %i.u, float %i.d, i64 1
  %i.ai = insertelement <2 x float> %i.ac, float %i.e, i64 0
  %i.aj = fmul <2 x float> %i.ah, %i.ai
  %i.ak = extractelement <2 x float> %i.t, i64 0
  %i.al = fmul float %i.ak, %i.e
  %foldExtExtBinop = fmul <2 x float> %i.u, %i.u
  %i.am = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.an = fmul float %i.w, %i.d
  %i.ao = fmul float %i.w, %i.w                   ; 2 uses
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.v, float %i.v, float %i.ao)
  %i.aq = insertelement <2 x float> %i.ac, float %i.ap, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.as = shufflevector <2 x float> %i.t, <2 x float> %i.u, <4 x i32> <i32 poison, i32 0, i32 2, i32 0>
  %i.at = insertelement <4 x float> %i.as, float -2.000000e+00, i64 0
  %i.au = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.ao, i64 1
  %i.av = insertelement <4 x float> %i.au, float %i.an, i64 2
  %i.aw = shufflevector <4 x float> %i.av, <4 x float> %i.am, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ax = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ar, <4 x float> %i.at, <4 x float> %i.aw) ; 4 uses
  %i.ay = shufflevector <4 x float> %i.ax, <4 x float> %i.af, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.az = insertelement <4 x float> %i.ay, float %i.m, i64 3
  %i.ba = fmul <4 x float> %i.az, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 1.000000e+00>
  %i.bb = shufflevector <2 x float> %i.u, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> %i.ax, <2 x i32> <i32 5, i32 1>
  %i.bd = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.al, i64 1
  %i.be = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.ag, <2 x float> %i.bd)
  %i.bf = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.bg = shufflevector <2 x float> %i.be, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bh = shufflevector <4 x float> %i.bf, <4 x float> %i.bg, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.bi = insertelement <4 x float> %i.bh, float %i.p, i64 3
  %i.bj = fmul <4 x float> %i.bi, <float 2.000000e+00, float 1.000000e+00, float 2.000000e+00, float 1.000000e+00>
  %i.bk = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bl = shufflevector <4 x float> %i.bk, <4 x float> <float poison, float poison, float -2.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bm = shufflevector <2 x float> %i.u, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bn = shufflevector <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x float> %i.bm, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.bo = shufflevector <4 x float> %i.bn, <4 x float> %i.ax, <4 x i32> <i32 0, i32 0, i32 7, i32 3>
  %i.bp = shufflevector <2 x float> %i.aj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bq = insertelement <4 x float> %i.bp, float 1.000000e+00, i64 2
  %i.br = insertelement <4 x float> %i.bq, float %i.s, i64 3
  %i.bs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bl, <4 x float> %i.bo, <4 x float> %i.br)
  %i.bt = fmul <4 x float> %i.bs, <float 2.000000e+00, float 2.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.bu = fmul <4 x float> %i.ba, %i.o
  %i.bv = fmul <4 x float> %i.r, %i.bj
  %i.bw = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.k, i64 0
  %i.bx = shufflevector <4 x float> %i.bw, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.by = fmul <4 x float> %i.bx, %i.bt
  store <4 x float> %i.bu, ptr %0, align 4
  store <4 x float> %i.bv, ptr %.sroa.7.0..sroa_idx, align 4
  store <4 x float> %i.by, ptr %.sroa.11.0..sroa_idx, align 4
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
end_hunk_0
