Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/Assimp?download=true
inline.NumInlined: 1626
inline.NumDeleted: 658
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 53
begin_hunk_0_@aiMatrix3Inverse:bb.a

bb.b:                                             ; preds = %bb.a
  %i.aj = fdiv float 1.000000e+00, %i.ah          ; 3 uses
  %i.ak = fneg float %i.aj
  %i.al = fneg float %i.g                         ; 2 uses
  %i.am = fmul float %i.k, %i.al
  %i.an = fmul float %i.r, %i.o
  %i.ao = fmul float %i.k, %i.o
  %i.ap = insertelement <4 x float> poison, float %i.j, i64 0
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> %i.p, <4 x i32> <i32 0, i32 poison, i32 5, i32 7>
  %i.ar = shufflevector <2 x float> %i.l, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 4 uses
  %i.as = shufflevector <4 x float> %i.aq, <4 x float> %i.ar, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.at = shufflevector <4 x float> %i.p, <4 x float> %i.ar, <4 x i32> <i32 5, i32 1, i32 poison, i32 poison>
  %i.au = insertelement <4 x float> %i.at, float %i.k, i64 2
  %i.av = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.aw = insertelement <4 x float> poison, float %i.ao, i64 0
  %i.ax = insertelement <4 x float> %i.aw, float %i.an, i64 1
  %i.ay = insertelement <4 x float> %i.ax, float %i.ag, i64 2
  %i.az = insertelement <4 x float> %i.ay, float %i.am, i64 3
  %i.ba = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.as, <4 x float> %i.av, <4 x float> %i.az)
  %i.bb = insertelement <4 x float> poison, float %i.aj, i64 0
  %i.bc = insertelement <4 x float> %i.bb, float %i.ak, i64 1
  %i.bd = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.be = fmul <4 x float> %i.ba, %i.bd
  %i.bf = shufflevector <4 x float> %i.p, <4 x float> poison, <3 x i32> <i32 2, i32 poison, i32 1>
  %i.bg = insertelement <3 x float> %i.bf, float %i.j, i64 1
  %i.bh = shufflevector <3 x float> %i.bg, <3 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 2>
  %i.bi = insertelement <4 x float> poison, float %i.al, i64 0
  %i.bj = insertelement <4 x float> %i.bi, float %i.aa, i64 1
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.bl = fmul <4 x float> %i.bh, %i.bk
  %i.bm = shufflevector <4 x float> %i.ar, <4 x float> %i.p, <4 x i32> <i32 1, i32 poison, i32 7, i32 4>
  %i.bn = insertelement <4 x float> %i.bm, float %i.k, i64 1
  %i.bo = shufflevector <4 x float> %i.p, <4 x float> %i.ar, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  %i.bp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bn, <4 x float> %i.bo, <4 x float> %i.bl)
  %i.bq = fmul <4 x float> %i.bp, %i.bd
  %i.br = tail call float @llvm.fmuladd.f32(float %i.t, float %i.j, float %i.ab)
  %i.bs = fmul float %i.br, %i.aj
  br label %_ZN12aiMatrix3x3tIfE7InverseEv.exit

_ZN12aiMatrix3x3tIfE7InverseEv.exit:              ; preds = %bb.a, %bb.b
  %storemerge.i = phi float [ %i.bs, %bb.b ], [ +qnan, %bb.a ]
  %i.bt = phi <4 x float> [ %i.be, %bb.b ], [ splat (float +qnan), %bb.a ]
  %i.bu = phi <4 x float> [ %i.bq, %bb.b ], [ splat (float +qnan), %bb.a ]
  store <4 x float> %i.bt, ptr %0, align 4
  store <4 x float> %i.bu, ptr %i.a, align 4
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
  %i.o = tail call noundef float @llvm.fmuladd.f32(float %i.f, float %i.i, float %i.n) ; 4 uses
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
  %i.aw = extractelement <2 x float> %i.af, i64 1 ; 2 uses
  %i.ax = fsub float %.sroa.20.0, %i.i            ; 10 uses
  %i.ay = fmul float %i.at, %i.aw
  %i.az = tail call float @llvm.fmuladd.f32(float %i.au, float %i.ah, float %i.ay)
  %i.ba = tail call noundef float @llvm.fmuladd.f32(float %i.av, float %i.ax, float %i.az)
  %i.bb = shufflevector <4 x float> %i.as, <4 x float> %i.ag, <2 x i32> <i32 2, i32 5> ; 2 uses
  %i.bc = fmul <2 x float> %i.bb, %i.bb
  %i.bd = shufflevector <4 x float> %i.as, <4 x float> %i.ag, <2 x i32> <i32 1, i32 4> ; 2 uses
  %i.be = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.bd, <2 x float> %i.bc)
  %3 = shufflevector <4 x float> %i.as, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.bf = insertelement <2 x float> %3, float %i.ax, i64 1 ; 2 uses
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.bf, <2 x float> %i.be)
  %i.bh = fdiv <2 x float> splat (float 2.000000e+00), %i.bg ; 4 uses
  %i.bi = extractelement <2 x float> %i.bh, i64 0 ; 2 uses
  %i.bj = fneg float %i.bi                        ; 3 uses
  %i.bk = extractelement <2 x float> %i.bh, i64 1 ; 3 uses
  %i.bl = fmul float %i.bi, %i.bk
  %i.bm = fmul float %i.ba, %i.bl                 ; 6 uses
  %i.bn = fmul float %i.bk, %i.ah
  %i.bo = fmul float %i.bn, %i.ai
  %i.bp = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 1, i32 2>
  %i.bq = insertelement <4 x float> poison, float %i.bj, i64 0 ; 2 uses
  %i.br = shufflevector <4 x float> %i.bq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bs = fmul <4 x float> %i.bp, %i.br
  %i.bt = shufflevector <2 x float> %i.bh, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bu = fmul <4 x float> %i.bt, %i.ag
  %i.bv = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 1>
  %i.bw = insertelement <4 x float> %i.bv, float %i.ax, i64 2
  %i.bx = fneg <4 x float> %i.bw
  %i.by = fmul <4 x float> %i.bu, %i.bx
  %i.bz = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 2> ; 2 uses
  %i.ca = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bs, <4 x float> %i.bz, <4 x float> %i.by)
  %i.cb = insertelement <4 x float> poison, float %i.bm, i64 0
  %i.cc = shufflevector <4 x float> %i.cb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cd = fmul <4 x float> %i.cc, %i.ag
  %i.ce = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cd, <4 x float> %i.bz, <4 x float> %i.ca)
  %i.cf = shufflevector <4 x float> %i.ce, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.cf, ptr %i.aj, align 4
  %i.cg = load float, ptr %i.al, align 4
  %i.ch = fadd float %i.cg, 1.000000e+00
  store float %i.ch, ptr %i.al, align 4
  %i.ci = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> %i.af, <2 x i32> <i32 0, i32 2>
  %i.ck = fneg <2 x float> %i.cj
  %4 = insertelement <2 x float> poison, float %i.bj, i64 0
  %5 = insertelement <2 x float> %4, float %i.bm, i64 1
  %6 = shufflevector <4 x float> %i.as, <4 x float> %i.ag, <2 x i32> <i32 0, i32 4>
  %7 = fmul <2 x float> %5, %6
  %i.cl = fmul float %i.bk, %i.ax
  %i.cm = fmul float %i.au, %i.bj
  %i.cn = fneg float %i.ax
  %i.co = fmul float %i.cl, %i.cn
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.au, float %i.bo)
  %8 = insertelement <2 x float> poison, float %i.co, i64 0
  %9 = insertelement <2 x float> %8, float %i.cp, i64 1
  %10 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %7, <2 x float> %3, <2 x float> %9) ; 2 uses
  %11 = extractelement <2 x float> %10, i64 1
  %12 = fadd float %11, 1.000000e+00
  store float %12, ptr %2, align 4
  %13 = shufflevector <2 x float> %i.bh, <2 x float> %10, <4 x i32> <i32 1, i32 1, i32 1, i32 2>
  %i.cq = shufflevector <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x float> %i.ag, <4 x i32> <i32 5, i32 poison, i32 2, i32 poison>
  %i.cr = insertelement <4 x float> %i.cq, float %i.ax, i64 1
  %i.cs = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 2>
  %i.ct = fmul <4 x float> %13, %i.cs
  %i.cu = fneg <4 x float> %i.ag
  %i.cv = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.cu, <4 x i32> <i32 poison, i32 poison, i32 5, i32 3>
  %i.cw = shufflevector <2 x float> %i.ck, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cx = shufflevector <4 x float> %i.cw, <4 x float> %i.cv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cy = fmul <4 x float> %i.ct, %i.cx
  %i.cz = fmul float %i.bm, %i.ax
  %i.da = fmul float %i.bm, %i.ax
  %i.db = fmul float %i.bm, %i.aw
  %i.dc = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 0, i32 poison>
  %i.dd = insertelement <4 x float> %i.dc, float %i.bm, i64 3
  %i.de = insertelement <4 x float> %i.bq, float %i.ax, i64 3
  %i.df = shufflevector <4 x float> %i.de, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.dg = fmul <4 x float> %i.dd, %i.df
  %i.dh = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.di = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dg, <4 x float> %i.dh, <4 x float> %i.cy)
  %i.dj = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.db, i64 0
  %i.dk = insertelement <4 x float> %i.dj, float %i.da, i64 1
  %i.dl = insertelement <4 x float> %i.dk, float %i.cz, i64 2
  %i.dm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.as, <4 x float> %i.di)
  store <4 x float> %i.dm, ptr %i.ak, align 4
  br label %.loopexit

bb.f:                                             ; preds = %bb.a
  %i.dn = fneg float %i.j
  %i.do = fmul float %i.f, %i.dn
  %i.dp = tail call float @llvm.fmuladd.f32(float %i.k, float %i.i, float %i.do) ; 4 uses
  %i.dq = fadd float %i.o, 1.000000e+00
  %i.dr = fdiv float 1.000000e+00, %i.dq          ; 2 uses
  %i.ds = fmul float %i.dp, %i.dr                 ; 2 uses
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.ds, float %i.dp, float %i.o)
  store float %i.dt, ptr %2, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dw = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dx = insertelement <2 x float> %i.dw, float %i.i, i64 0
  %i.dy = fneg <2 x float> %i.dx
  %i.dz = shufflevector <2 x float> %i.b, <2 x float> %i.e, <2 x i32> <i32 0, i32 2>
  %i.ea = fmul <2 x float> %i.dz, %i.dy
  %i.eb = shufflevector <2 x float> %i.e, <2 x float> %i.b, <2 x i32> <i32 1, i32 2>
  %i.ec = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eb, <2 x float> %i.h, <2 x float> %i.ea) ; 7 uses
  %i.ed = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.ee = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ef = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eg = fmul <2 x float> %i.ee, %i.ef           ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %i.eg, %i.ec
  %14 = extractelement <2 x float> %foldExtExtBinop, i64 1
  store float %14, ptr %i.du, align 4
  %15 = fadd <2 x float> %i.ec, %i.eg
  store <2 x float> %15, ptr %i.dv, align 4
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 20
  %foldExtExtBinop179 = fsub <2 x float> %i.eg, %i.ec
  %18 = extractelement <2 x float> %foldExtExtBinop179, i64 0
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 24
  store float %18, ptr %i.eh, align 4
  %19 = getelementptr inbounds nuw i8, ptr %2, i64 28
  %20 = insertelement <2 x float> poison, float %i.dr, i64 0
  %21 = shufflevector <2 x float> %20, <2 x float> poison, <2 x i32> zeroinitializer
  %22 = fmul <2 x float> %i.ec, %21               ; 2 uses
  %shift = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop181 = fmul <2 x float> %i.ec, %shift
  %i.ei = extractelement <2 x float> %foldExtExtBinop181, i64 0 ; 2 uses
  %23 = insertelement <2 x float> poison, float %i.o, i64 0
  %24 = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> zeroinitializer
  %25 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %22, <2 x float> %i.ec, <2 x float> %24) ; 2 uses
  %26 = extractelement <2 x float> %25, i64 0
  store float %26, ptr %16, align 4
  %27 = fsub float %i.ei, %i.dp
  store float %27, ptr %17, align 4
  %28 = fadd float %i.dp, %i.ei
  store float %28, ptr %19, align 4
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 32
  %29 = extractelement <2 x float> %25, i64 1
  store float %29, ptr %i.ej, align 4
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
  %i.d = load float, ptr %2, align 4, !noalias !36 ; 4 uses
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
  %i.t = load <2 x float>, ptr %i.c, align 4, !noalias !36 ; 5 uses
  %i.u = extractelement <2 x float> %i.t, i64 0
  %i.v = fmul float %i.u, %i.e
  %i.w = load <2 x float>, ptr %i.a, align 4, !noalias !36 ; 9 uses
  %i.x = load float, ptr %i.b, align 4, !noalias !36 ; 3 uses
  %i.y = insertelement <2 x float> poison, float %i.x, i64 0
  %i.z = insertelement <2 x float> %i.y, float %i.d, i64 1
  %i.aa = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> <i32 poison, i32 0> ; 2 uses
  %i.ab = insertelement <2 x float> %i.aa, float %i.e, i64 0
  %i.ac = fmul <2 x float> %i.z, %i.ab
  %i.ad = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ae = insertelement <2 x float> %i.w, float %i.x, i64 1
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.ae, <2 x float> %i.ac)
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ah = insertelement <2 x float> %i.w, float -2.000000e+00, i64 0
  %i.ai = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.v, i64 1
  %i.aj = insertelement <2 x float> %i.w, float %i.d, i64 1
  %i.ak = insertelement <2 x float> %i.ad, float %i.e, i64 0
  %i.al = fmul <2 x float> %i.aj, %i.ak
  %i.am = insertelement <2 x float> %i.aa, float %i.x, i64 0 ; 2 uses
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ao = shufflevector <2 x float> %i.w, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ap = shufflevector <2 x float> %i.am, <2 x float> %i.w, <4 x i32> <i32 0, i32 0, i32 poison, i32 2>
  %i.aq = insertelement <4 x float> %i.ap, float %i.d, i64 2
  %i.ar = fmul <4 x float> %i.an, %i.aq
  %i.as = shufflevector <2 x float> %i.w, <2 x float> %i.t, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.at = shufflevector <2 x float> %i.w, <2 x float> %i.t, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.au = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.as, <4 x float> %i.at, <4 x float> %i.ar) ; 4 uses
  %i.av = extractelement <4 x float> %i.au, i64 0
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float -2.000000e+00, float 1.000000e+00)
  %i.ax = insertelement <4 x float> poison, float %i.aw, i64 0
  %i.ay = shufflevector <4 x float> %i.ax, <4 x float> %i.ag, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.az = insertelement <4 x float> %i.ay, float %i.m, i64 3
  %i.ba = fmul <4 x float> %i.az, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 1.000000e+00>
  %i.bb = shufflevector <2 x float> %i.w, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> %i.au, <2 x i32> <i32 5, i32 1>
  %i.bd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.ah, <2 x float> %i.ai)
  %i.be = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.bf = shufflevector <2 x float> %i.bd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bg = shufflevector <4 x float> %i.be, <4 x float> %i.bf, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.bh = insertelement <4 x float> %i.bg, float %i.p, i64 3
  %i.bi = fmul <4 x float> %i.bh, <float 2.000000e+00, float 1.000000e+00, float 2.000000e+00, float 1.000000e+00>
  %i.bj = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> <float poison, float poison, float -2.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bl = shufflevector <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x float> %i.ao, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.bm = shufflevector <4 x float> %i.bl, <4 x float> %i.au, <4 x i32> <i32 0, i32 0, i32 7, i32 3>
  %i.bn = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bo = insertelement <4 x float> %i.bn, float 1.000000e+00, i64 2
  %i.bp = insertelement <4 x float> %i.bo, float %i.s, i64 3
  %i.bq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bk, <4 x float> %i.bm, <4 x float> %i.bp)
  %i.br = fmul <4 x float> %i.bq, <float 2.000000e+00, float 2.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.bs = fmul <4 x float> %i.ba, %i.o
  %i.bt = fmul <4 x float> %i.r, %i.bi
  %i.bu = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.k, i64 0
  %i.bv = shufflevector <4 x float> %i.bu, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bw = fmul <4 x float> %i.bv, %i.br
  store <4 x float> %i.bs, ptr %0, align 4
  store <4 x float> %i.bt, ptr %.sroa.7.0..sroa_idx, align 4
  store <4 x float> %i.bw, ptr %.sroa.11.0..sroa_idx, align 4
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
  %i.g = load <4 x float>, ptr %1, align 4, !noalias !39
  %i.h = load <4 x float>, ptr %0, align 4, !noalias !39
  %i.i = fadd <4 x float> %i.g, %i.h
  %i.j = load <4 x float>, ptr %i.a, align 4, !noalias !39
  %i.k = load <4 x float>, ptr %i.b, align 4, !noalias !39
  %i.l = fadd <4 x float> %i.j, %i.k
  %i.m = load <4 x float>, ptr %i.c, align 4, !noalias !39
  %i.n = load <4 x float>, ptr %i.d, align 4, !noalias !39
  %i.o = fadd <4 x float> %i.m, %i.n
  %i.p = load <4 x float>, ptr %i.e, align 4, !noalias !39
  %i.q = load <4 x float>, ptr %i.f, align 4, !noalias !39
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
end_hunk_0
