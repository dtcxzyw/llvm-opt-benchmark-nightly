Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btGeneric6DofSpring2Constraint?download=true
inline.NumInlined: 593
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN30btGeneric6DofSpring2Constraint15calculateJacobiEP23btRotationalLimitMotor2RK11btTransformS4_PN17btTypedConstraint17btConstraintInfo2EiR9btVector3ii:bb.a
  store float %i.cp, ptr %i.cr, align 4, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

declare noundef float @_ZN17btTypedConstraint14getMotorFactorEfffff(ptr noundef nonnull align 8 dereferenceable(72), float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN30btGeneric6DofSpring2Constraint8setParamEifi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1484) %0, i32 noundef %1, float noundef %2, i32 noundef %3) unnamed_addr #11 align 2 {
bb.a:
  %or.cond = icmp ult i32 %3, 3
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.m [
    i32 2, label %bb.c
    i32 4, label %bb.d
    i32 1, label %bb.e
    i32 3, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.b = zext nneg i32 %3 to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.b
  store float %2, ptr %i.c, align 4, !tbaa !13
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.e = zext nneg i32 %3 to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.e
  store float %2, ptr %i.f, align 4, !tbaa !13
  br label %.sink.split

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.h = zext nneg i32 %3 to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h
  store float %2, ptr %i.i, align 4, !tbaa !13
  br label %.sink.split

bb.f:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.k = zext nneg i32 %3 to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.k
  store float %2, ptr %i.l, align 4, !tbaa !13
  br label %.sink.split

bb.g:                                             ; preds = %bb.a
  %i.m = icmp ult i32 %3, 6
  br i1 %i.m, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  switch i32 %1, label %bb.m [
    i32 2, label %bb.i
    i32 4, label %bb.j
    i32 1, label %bb.k
    i32 3, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %i.n = zext nneg i32 %3 to i64
  %i.o = getelementptr [88 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 740
  store float %2, ptr %i.p, align 4, !tbaa !103
  br label %.sink.split

bb.j:                                             ; preds = %bb.h
  %i.q = zext nneg i32 %3 to i64
  %i.r = getelementptr [88 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 744
  store float %2, ptr %i.s, align 8, !tbaa !101
  br label %.sink.split

bb.k:                                             ; preds = %bb.h
  %i.t = zext nneg i32 %3 to i64
  %i.u = getelementptr [88 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 748
  store float %2, ptr %i.v, align 4, !tbaa !104
  br label %.sink.split

bb.l:                                             ; preds = %bb.h
  %i.w = zext nneg i32 %3 to i64
  %i.x = getelementptr [88 x i8], ptr %0, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 752
  store float %2, ptr %i.y, align 8, !tbaa !17
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.i, %bb.j, %bb.k, %bb.l
  %.sink = phi i32 [ 4, %bb.l ], [ 8, %bb.k ], [ 1, %bb.j ], [ 2, %bb.i ], [ 2, %bb.c ], [ 1, %bb.d ], [ 8, %bb.e ], [ 4, %bb.f ]
  %i.z = shl nuw nsw i32 %3, 2
  %i.aa = shl nuw nsw i32 %.sink, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1480 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !39
  %i.ad = or i32 %i.ac, %i.aa
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !39
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.h, %bb.g, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZNK30btGeneric6DofSpring2Constraint8getParamEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1484) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 align 2 {
bb.a:
  %or.cond = icmp ult i32 %2, 3
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.m [
    i32 2, label %bb.c
    i32 4, label %bb.d
    i32 1, label %bb.e
    i32 3, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.b = zext nneg i32 %2 to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load float, ptr %i.c, align 4, !tbaa !13
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.f = zext nneg i32 %2 to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.f
  %i.h = load float, ptr %i.g, align 4, !tbaa !13
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.j = zext nneg i32 %2 to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j
  %i.l = load float, ptr %i.k, align 4, !tbaa !13
  br label %bb.m

bb.f:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.n = zext nneg i32 %2 to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n
  %i.p = load float, ptr %i.o, align 4, !tbaa !13
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  %i.q = icmp ult i32 %2, 6
  br i1 %i.q, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  switch i32 %1, label %bb.m [
    i32 2, label %bb.i
    i32 4, label %bb.j
    i32 1, label %bb.k
    i32 3, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %i.r = zext nneg i32 %2 to i64
  %i.s = getelementptr [88 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 740
  %i.u = load float, ptr %i.t, align 4, !tbaa !103
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.v = zext nneg i32 %2 to i64
  %i.w = getelementptr [88 x i8], ptr %0, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 744
  %i.y = load float, ptr %i.x, align 8, !tbaa !101
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  %i.z = zext nneg i32 %2 to i64
  %i.aa = getelementptr [88 x i8], ptr %0, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 748
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !104
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.ad = zext nneg i32 %2 to i64
  %i.ae = getelementptr [88 x i8], ptr %0, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 752
  %i.ag = load float, ptr %i.af, align 8, !tbaa !17
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %bb.l, %bb.k, %bb.j, %bb.i, %bb.g, %bb.c, %bb.d, %bb.e, %bb.f, %bb.b
  %.0 = phi float [ 0.000000e+00, %bb.b ], [ %i.d, %bb.c ], [ %i.h, %bb.d ], [ %i.l, %bb.e ], [ %i.p, %bb.f ], [ 0.000000e+00, %bb.h ], [ %i.u, %bb.i ], [ %i.y, %bb.j ], [ %i.ac, %bb.k ], [ %i.ag, %bb.l ], [ 0.000000e+00, %bb.g ]
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN30btGeneric6DofSpring2Constraint7setAxisERK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(1484) initializes((72, 200), (964, 976), (980, 992), (1260, 1388), (1452, 1468)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) local_unnamed_addr #14 align 2 {
bb.a:
  %.sroa.0.0.copyload3.i = load <2 x float>, ptr %1, align 4 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.8.8.vec.extract.i = load float, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !12
  %.sroa.0.0.copyload3.i3 = load <2 x float>, ptr %2, align 4 ; 2 uses
  %3 = load <4 x float>, ptr %2, align 4
  %4 = shufflevector <4 x float> %3, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.a = shufflevector <2 x float> %.sroa.0.0.copyload3.i3, <2 x float> %.sroa.0.0.copyload3.i, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.b = fmul <2 x float> %i.a, %i.a
  %i.c = shufflevector <2 x float> %.sroa.0.0.copyload3.i3, <2 x float> %.sroa.0.0.copyload3.i, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.d = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.c, <2 x float> %i.c, <2 x float> %i.b)
  %5 = insertelement <2 x float> %4, float %.sroa.8.8.vec.extract.i, i64 1 ; 3 uses
  %i.e = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %5, <2 x float> %5, <2 x float> %i.d)
  %i.f = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.e)
  %i.g = fdiv <2 x float> splat (float 1.000000e+00), %i.f ; 3 uses
  %i.h = fmul <2 x float> %i.c, %i.g              ; 5 uses
  %i.i = extractelement <2 x float> %i.h, i64 0
  %i.j = fmul <2 x float> %i.a, %i.g              ; 5 uses
  %i.k = extractelement <2 x float> %i.j, i64 0
  %i.l = fmul <2 x float> %5, %i.g                ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !40, !nonnull !41, !align !42 ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.u = load float, ptr %i.r, align 8, !tbaa !13, !noalias !120 ; 3 uses
  %i.v = load float, ptr %i.s, align 8, !tbaa !13, !noalias !120 ; 3 uses
  %i.w = load float, ptr %i.t, align 8, !tbaa !13, !noalias !120 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.y = load float, ptr %i.x, align 8, !tbaa !13, !noalias !125
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 60
  %i.aa = load float, ptr %i.z, align 4, !tbaa !13, !noalias !125
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !13, !noalias !125
  %i.ad = fneg float %i.ac                        ; 2 uses
  %i.ae = fneg float %i.y                         ; 2 uses
  %i.af = shufflevector <2 x float> %i.j, <2 x float> %i.l, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.ag = shufflevector <2 x float> %i.h, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ah = shufflevector <4 x float> %i.af, <4 x float> %i.ag, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.ai = insertelement <4 x float> %i.ah, float %i.aa, i64 3
  %i.aj = fneg <4 x float> %i.ai                  ; 2 uses
  %i.ak = shufflevector <2 x float> %i.l, <2 x float> %i.h, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.al = insertelement <4 x float> %i.ak, float %i.k, i64 2
  %i.am = insertelement <4 x float> %i.al, float %i.v, i64 3
  %i.an = fmul <4 x float> %i.am, %i.aj
  %i.ao = shufflevector <2 x float> %i.j, <2 x float> %i.l, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ap = insertelement <4 x float> %i.ao, float %i.i, i64 2
  %i.aq = insertelement <4 x float> %i.ap, float %i.u, i64 3
  %i.ar = shufflevector <2 x float> %i.l, <2 x float> %i.h, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.as = shufflevector <2 x float> %i.j, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.at = shufflevector <4 x float> %i.ar, <4 x float> %i.as, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.au = insertelement <4 x float> %i.at, float %i.ae, i64 3
  %i.av = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aq, <4 x float> %i.au, <4 x float> %i.an) ; 4 uses
  %i.aw = extractelement <4 x float> %i.av, i64 3
  %i.ax = tail call noundef float @llvm.fmuladd.f32(float %i.w, float %i.ad, float %i.aw)
  %i.ay = fmul float %i.v, 0.000000e+00
  %i.az = tail call float @llvm.fmuladd.f32(float %i.u, float 0.000000e+00, float %i.ay)
  %i.ba = tail call noundef float @llvm.fmuladd.f32(float %i.w, float 0.000000e+00, float %i.az)
  %i.bb = load <2 x float>, ptr %i.o, align 8, !tbaa !13, !noalias !120 ; 3 uses
  %i.bc = load <2 x float>, ptr %i.p, align 8, !tbaa !13, !noalias !120 ; 3 uses
  %i.bd = load <2 x float>, ptr %i.q, align 8, !tbaa !13, !noalias !120 ; 3 uses
  %i.be = shufflevector <4 x float> %i.aj, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.bf = fmul <2 x float> %i.bc, %i.be
  %i.bg = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.bh, <2 x float> %i.bf)
  %i.bj = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.bk, <2 x float> %i.bi)
  %i.bm = fmul <2 x float> %i.bc, zeroinitializer
  %i.bn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> zeroinitializer, <2 x float> %i.bm)
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> zeroinitializer, <2 x float> %i.bn)
  %i.bp = fadd <2 x float> %i.bo, %i.bl
  %i.bq = fadd float %i.ba, %i.ax
  %.sroa.3.12.vec.insert.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bq, i64 0
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bs = shufflevector <2 x float> %i.bc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.bu = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.av, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.bv = shufflevector <2 x float> %i.j, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bw = shufflevector <4 x float> %i.bu, <4 x float> %i.bv, <4 x i32> <i32 0, i32 4, i32 5, i32 3> ; 6 uses
  %i.bx = fmul <4 x float> %i.bt, %i.bw
  %i.by = insertelement <4 x float> %i.av, float 0.000000e+00, i64 3
  %i.bz = shufflevector <2 x float> %i.h, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ca = shufflevector <4 x float> %i.by, <4 x float> %i.bz, <4 x i32> <i32 0, i32 4, i32 5, i32 3> ; 6 uses
  %i.cb = shufflevector <2 x float> %i.bb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cc = shufflevector <4 x float> %i.cb, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.cd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ca, <4 x float> %i.cc, <4 x float> %i.bx)
  %i.ce = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.av, <4 x i32> <i32 6, i32 poison, i32 poison, i32 3>
  %i.cf = shufflevector <2 x float> %i.l, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cg = shufflevector <4 x float> %i.ce, <4 x float> %i.cf, <4 x i32> <i32 0, i32 4, i32 5, i32 3> ; 6 uses
  %i.ch = shufflevector <2 x float> %i.bd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.cj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cg, <4 x float> %i.ci, <4 x float> %i.cd)
  store <4 x float> %i.cj, ptr %i.br, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cl = shufflevector <4 x float> %i.bs, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cm = fmul <4 x float> %i.cl, %i.bw
  %i.cn = shufflevector <4 x float> %i.cb, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.co = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ca, <4 x float> %i.cn, <4 x float> %i.cm)
  %i.cp = shufflevector <4 x float> %i.ch, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cg, <4 x float> %i.cp, <4 x float> %i.co)
  store <4 x float> %i.cq, ptr %i.ck, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cs = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.v, i64 0
  %i.ct = shufflevector <4 x float> %i.cs, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cu = fmul <4 x float> %i.ct, %i.bw
  %i.cv = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.u, i64 0
  %i.cw = shufflevector <4 x float> %i.cv, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ca, <4 x float> %i.cw, <4 x float> %i.cu)
  %i.cy = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.w, i64 0
  %i.cz = shufflevector <4 x float> %i.cy, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.da = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cg, <4 x float> %i.cz, <4 x float> %i.cx)
  store <4 x float> %i.da, ptr %i.cr, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 120
  store <2 x float> %i.bp, ptr %i.db, align 8
  %.sroa.1980.48..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %.sroa.1980.48..sroa_idx, align 8, !tbaa !12
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !43, !nonnull !41, !align !42 ; 9 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 48
  %i.dk = load float, ptr %i.dh, align 8, !tbaa !13, !noalias !126 ; 3 uses
  %i.dl = load float, ptr %i.di, align 8, !tbaa !13, !noalias !126 ; 3 uses
  %i.dm = load float, ptr %i.dj, align 8, !tbaa !13, !noalias !126 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 56
  %i.do = load float, ptr %i.dn, align 8, !tbaa !13, !noalias !131
  %i.dp = fneg float %i.do                        ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dd, i64 60
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !13, !noalias !131
  %i.ds = fneg float %i.dr                        ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dd, i64 64
  %i.du = load float, ptr %i.dt, align 8, !tbaa !13, !noalias !131
  %i.dv = fneg float %i.du                        ; 2 uses
  %i.dw = fmul float %i.dl, %i.ds
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.dk, float %i.dp, float %i.dw)
  %i.dy = tail call noundef float @llvm.fmuladd.f32(float %i.dm, float %i.dv, float %i.dx)
  %i.dz = fmul float %i.dl, 0.000000e+00
  %i.ea = tail call float @llvm.fmuladd.f32(float %i.dk, float 0.000000e+00, float %i.dz)
  %i.eb = tail call noundef float @llvm.fmuladd.f32(float %i.dm, float 0.000000e+00, float %i.ea)
  %i.ec = load <2 x float>, ptr %i.de, align 8, !tbaa !13, !noalias !126 ; 3 uses
  %i.ed = load <2 x float>, ptr %i.df, align 8, !tbaa !13, !noalias !126 ; 3 uses
  %i.ee = load <2 x float>, ptr %i.dg, align 8, !tbaa !13, !noalias !126 ; 3 uses
  %i.ef = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = fmul <2 x float> %i.ed, %i.eg
  %i.ei = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ek = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ec, <2 x float> %i.ej, <2 x float> %i.eh)
  %i.el = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> %i.em, <2 x float> %i.ek)
  %i.eo = fmul <2 x float> %i.ed, zeroinitializer
  %i.ep = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ec, <2 x float> zeroinitializer, <2 x float> %i.eo)
  %i.eq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> zeroinitializer, <2 x float> %i.ep)
  %i.er = fadd <2 x float> %i.eq, %i.en
  %i.es = fadd float %i.eb, %i.dy
  %.sroa.3.12.vec.insert.i4.i.i35 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.es, i64 0
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.eu = shufflevector <2 x float> %i.ed, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ev = shufflevector <4 x float> %i.eu, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.ew = fmul <4 x float> %i.ev, %i.bw
  %i.ex = shufflevector <2 x float> %i.ec, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ey = shufflevector <4 x float> %i.ex, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.ez = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ca, <4 x float> %i.ey, <4 x float> %i.ew)
  %i.fa = shufflevector <2 x float> %i.ee, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fb = shufflevector <4 x float> %i.fa, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.fc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cg, <4 x float> %i.fb, <4 x float> %i.ez)
  store <4 x float> %i.fc, ptr %i.et, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.fe = shufflevector <4 x float> %i.eu, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.ff = fmul <4 x float> %i.fe, %i.bw
  %i.fg = shufflevector <4 x float> %i.ex, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.fh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ca, <4 x float> %i.fg, <4 x float> %i.ff)
  %i.fi = shufflevector <4 x float> %i.fa, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.fj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cg, <4 x float> %i.fi, <4 x float> %i.fh)
  store <4 x float> %i.fj, ptr %i.fd, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.fl = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.dl, i64 0
  %i.fm = shufflevector <4 x float> %i.fl, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fn = fmul <4 x float> %i.fm, %i.bw
  %i.fo = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.dk, i64 0
  %i.fp = shufflevector <4 x float> %i.fo, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ca, <4 x float> %i.fp, <4 x float> %i.fn)
  %i.fr = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.dm, i64 0
  %i.fs = shufflevector <4 x float> %i.fr, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ft = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cg, <4 x float> %i.fs, <4 x float> %i.fq)
  store <4 x float> %i.ft, ptr %i.fk, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 184
  store <2 x float> %i.er, ptr %i.fu, align 8
  %.sroa.19.48..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i35, ptr %.sroa.19.48..sroa_idx, align 8, !tbaa !12
  tail call void @_ZN30btGeneric6DofSpring2Constraint19calculateTransformsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(1484) %0, ptr noundef nonnull align 4 dereferenceable(64) %i.o, ptr noundef nonnull align 4 dereferenceable(64) %i.de)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN30btGeneric6DofSpring2Constraint9setBounceEif(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(1484) %0, i32 noundef %1, float noundef %2) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 3
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  store float %2, ptr %i.d, align 4, !tbaa !13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = zext nneg i32 %1 to i64
  %i.f = getelementptr [88 x i8], ptr %0, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 736
end_hunk_0
