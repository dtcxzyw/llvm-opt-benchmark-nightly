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
  %i.ag = fsub <2 x float> %i.aa, %i.g            ; 7 uses
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 4 uses
  %i.ai = extractelement <4 x float> %i.af, i64 2 ; 4 uses
  %i.aj = extractelement <4 x float> %i.af, i64 1
  %i.ak = extractelement <4 x float> %i.af, i64 0
  %i.al = extractelement <2 x float> %i.ag, i64 1
  %i.am = extractelement <2 x float> %i.ag, i64 0 ; 4 uses
  %i.an = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ao = insertelement <2 x float> %i.an, float %.sroa.0.0, i64 0
  %i.ap = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.h, i64 0
  %i.aq = fsub <2 x float> %i.ao, %i.ap           ; 6 uses
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.as = extractelement <2 x float> %i.aq, i64 0
  %i.at = shufflevector <4 x float> %i.af, <4 x float> %i.ah, <2 x i32> <i32 2, i32 4> ; 2 uses
  %i.au = fmul <2 x float> %i.at, %i.at
  %i.av = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.aw = shufflevector <4 x float> %i.af, <4 x float> %i.av, <2 x i32> <i32 1, i32 4> ; 2 uses
  %i.ax = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.aw, <2 x float> %i.au)
  %i.ay = shufflevector <4 x float> %i.af, <4 x float> %i.ah, <2 x i32> <i32 0, i32 5> ; 2 uses
  %i.az = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> %i.ay, <2 x float> %i.ax)
  %i.ba = fdiv <2 x float> splat (float 2.000000e+00), %i.az ; 3 uses
  %i.bb = extractelement <2 x float> %i.ba, i64 0 ; 2 uses
  %i.bc = fneg float %i.bb                        ; 2 uses
  %i.bd = extractelement <2 x float> %i.ba, i64 1 ; 2 uses
  %i.be = fmul float %i.bb, %i.bd
  %i.bf = fmul float %i.ai, %i.am
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.as, float %i.bf)
  %i.bh = tail call noundef float @llvm.fmuladd.f32(float %i.ak, float %i.al, float %i.bg)
  %i.bi = fmul float %i.bh, %i.be                 ; 2 uses
  %i.bj = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 2>
  %i.bk = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.bl = shufflevector <4 x float> %i.bk, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bm = fmul <4 x float> %i.bj, %i.bl
  %i.bn = shufflevector <2 x float> %i.ba, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %3 = shufflevector <2 x float> %i.aq, <2 x float> %i.ag, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.bo = fmul <4 x float> %i.bn, %3
  %i.bp = shufflevector <2 x float> %i.ag, <2 x float> %i.aq, <4 x i32> <i32 1, i32 2, i32 0, i32 2>
  %i.bq = fneg <4 x float> %i.bp
  %i.br = fmul <4 x float> %i.bo, %i.bq
  %i.bs = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1> ; 2 uses
  %i.bt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> %i.bs, <4 x float> %i.br)
  %i.bu = insertelement <4 x float> poison, float %i.bi, i64 0
  %i.bv = shufflevector <4 x float> %i.bu, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bw = fmul <4 x float> %i.bv, %i.ar
  %i.bx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bw, <4 x float> %i.bs, <4 x float> %i.bt)
  %i.by = shufflevector <4 x float> %i.bx, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  store <4 x float> %i.by, ptr %2, align 4
  %i.bz = load float, ptr %2, align 4
  %i.ca = fadd float %i.bz, 1.000000e+00
  store float %i.ca, ptr %2, align 4
  %i.cb = fmul float %i.ai, %i.bc
  %i.cc = fmul float %i.bd, %i.am
  %i.cd = fneg float %i.am
  %i.ce = fmul float %i.cc, %i.cd
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.ai, float %i.ce)
  %i.cg = fmul float %i.bi, %i.am
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.ai, float %i.cf)
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ck = fadd float %i.ch, 1.000000e+00
  store float %i.ck, ptr %i.cj, align 4
  %i.cl = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 0, i32 0>
  %i.cm = fmul <4 x float> %i.cl, %i.bl
  %i.cn = fmul <4 x float> %i.bn, %i.ah
  %i.co = shufflevector <2 x float> %i.ag, <2 x float> %i.aq, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.cp = fneg <4 x float> %i.co
  %i.cq = fmul <4 x float> %i.cn, %i.cp
  %i.cr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cm, <4 x float> %i.af, <4 x float> %i.cq)
  %i.cs = fmul <4 x float> %i.bv, %i.ah
  %i.ct = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cs, <4 x float> %i.af, <4 x float> %i.cr)
  %i.cu = fadd <4 x float> %i.ct, <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float 1.000000e+00>
  store <4 x float> %i.cu, ptr %i.ci, align 4
  br label %.loopexit

bb.f:                                             ; preds = %bb.a
  %i.cv = fneg float %i.i
  %i.cw = fmul float %i.f, %i.cv
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.d, float %i.l, float %i.cw) ; 4 uses
  %i.cy = fneg float %i.l
  %i.cz = fmul float %i.e, %i.cy
  %i.da = tail call float @llvm.fmuladd.f32(float %i.f, float %i.h, float %i.cz) ; 6 uses
  %i.db = fneg float %i.h
  %i.dc = fmul float %i.d, %i.db
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.e, float %i.i, float %i.dc) ; 5 uses
  %i.de = fadd float %i.m, 1.000000e+00
  %i.df = fdiv float 1.000000e+00, %i.de          ; 3 uses
  %i.dg = fmul float %i.cx, %i.df                 ; 3 uses
  %i.dh = fmul float %i.dd, %i.df                 ; 2 uses
  %i.di = fmul float %i.da, %i.dg                 ; 2 uses
  %i.dj = fmul float %i.dd, %i.dg                 ; 2 uses
  %i.dk = fmul float %i.da, %i.dh                 ; 2 uses
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.cx, float %i.m)
  store float %i.dl, ptr %2, align 4
  %i.dm = fsub float %i.di, %i.dd
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.dm, ptr %i.dn, align 4
  %i.do = fadd float %i.da, %i.dj
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.do, ptr %i.dp, align 4
  %i.dq = fadd float %i.dd, %i.di
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float %i.dq, ptr %i.dr, align 4
  %i.ds = fmul float %i.da, %i.df
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.ds, float %i.da, float %i.m)
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %i.dt, ptr %i.du, align 4
  %i.dv = fsub float %i.dk, %i.cx
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 20
  store float %i.dv, ptr %i.dw, align 4
  %i.dx = fsub float %i.dj, %i.da
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 24
  store float %i.dx, ptr %i.dy, align 4
  %i.dz = fadd float %i.cx, %i.dk
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 28
  store float %i.dz, ptr %i.ea, align 4
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.dh, float %i.dd, float %i.m)
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 32
  store float %i.eb, ptr %i.ec, align 4
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
end_hunk_0
