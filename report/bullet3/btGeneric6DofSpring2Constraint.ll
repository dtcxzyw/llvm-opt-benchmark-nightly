Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btGeneric6DofSpring2Constraint?download=true
inline.NumInlined: 593
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN30btGeneric6DofSpring2Constraint8setParamEifi:bb.a
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
  store float %2, ptr %i.c, align 4, !tbaa !14
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.e = zext nneg i32 %3 to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.e
  store float %2, ptr %i.f, align 4, !tbaa !14
  br label %.sink.split

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.h = zext nneg i32 %3 to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h
  store float %2, ptr %i.i, align 4, !tbaa !14
  br label %.sink.split

bb.f:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.k = zext nneg i32 %3 to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.k
  store float %2, ptr %i.l, align 4, !tbaa !14
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
  store float %2, ptr %i.p, align 4, !tbaa !70
  br label %.sink.split

bb.j:                                             ; preds = %bb.h
  %i.q = zext nneg i32 %3 to i64
  %i.r = getelementptr [88 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 744
  store float %2, ptr %i.s, align 8, !tbaa !69
  br label %.sink.split

bb.k:                                             ; preds = %bb.h
  %i.t = zext nneg i32 %3 to i64
  %i.u = getelementptr [88 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 748
  store float %2, ptr %i.v, align 4, !tbaa !71
  br label %.sink.split

bb.l:                                             ; preds = %bb.h
  %i.w = zext nneg i32 %3 to i64
  %i.x = getelementptr [88 x i8], ptr %0, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 752
  store float %2, ptr %i.y, align 8, !tbaa !18
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
  %i.d = load float, ptr %i.c, align 4, !tbaa !14
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.f = zext nneg i32 %2 to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.f
  %i.h = load float, ptr %i.g, align 4, !tbaa !14
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.j = zext nneg i32 %2 to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j
  %i.l = load float, ptr %i.k, align 4, !tbaa !14
  br label %bb.m

bb.f:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.n = zext nneg i32 %2 to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n
  %i.p = load float, ptr %i.o, align 4, !tbaa !14
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
  %i.u = load float, ptr %i.t, align 4, !tbaa !70
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.v = zext nneg i32 %2 to i64
  %i.w = getelementptr [88 x i8], ptr %0, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 744
  %i.y = load float, ptr %i.x, align 8, !tbaa !69
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  %i.z = zext nneg i32 %2 to i64
  %i.aa = getelementptr [88 x i8], ptr %0, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 748
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !71
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.ad = zext nneg i32 %2 to i64
  %i.ae = getelementptr [88 x i8], ptr %0, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 752
  %i.ag = load float, ptr %i.af, align 8, !tbaa !18
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
  %.sroa.8.8.vec.extract.i = load float, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !11
  %.sroa.0.0.copyload3.i3 = load <2 x float>, ptr %2, align 4 ; 2 uses
  %i.a = load <4 x float>, ptr %2, align 4
  %i.b = shufflevector <4 x float> %i.a, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.c = shufflevector <2 x float> %.sroa.0.0.copyload3.i3, <2 x float> %.sroa.0.0.copyload3.i, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.d = fmul <2 x float> %i.c, %i.c
  %i.e = shufflevector <2 x float> %.sroa.0.0.copyload3.i3, <2 x float> %.sroa.0.0.copyload3.i, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.f = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.e, <2 x float> %i.e, <2 x float> %i.d)
  %i.g = insertelement <2 x float> %i.b, float %.sroa.8.8.vec.extract.i, i64 1 ; 3 uses
  %i.h = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.g, <2 x float> %i.g, <2 x float> %i.f)
  %i.i = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.h)
  %i.j = fdiv <2 x float> splat (float 1.000000e+00), %i.i ; 3 uses
  %i.k = fmul <2 x float> %i.e, %i.j              ; 5 uses
  %i.l = extractelement <2 x float> %i.k, i64 0
  %i.m = fmul <2 x float> %i.c, %i.j              ; 5 uses
  %i.n = extractelement <2 x float> %i.m, i64 0
  %i.o = fmul <2 x float> %i.g, %i.j              ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !40, !nonnull !41, !align !42 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.x = load float, ptr %i.u, align 8, !tbaa !14, !noalias !128 ; 3 uses
  %i.y = load float, ptr %i.v, align 8, !tbaa !14, !noalias !128 ; 3 uses
  %i.z = load float, ptr %i.w, align 8, !tbaa !14, !noalias !128 ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %4 = getelementptr inbounds nuw i8, ptr %i.q, i64 60
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.ab = shufflevector <2 x float> %i.o, <2 x float> %i.m, <2 x i32> <i32 1, i32 3>
  %i.ac = shufflevector <2 x float> %i.m, <2 x float> %i.o, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ad = insertelement <4 x float> %i.ac, float %i.l, i64 2
  %i.ae = insertelement <4 x float> %i.ad, float %i.x, i64 3
  %i.af = shufflevector <2 x float> %i.o, <2 x float> %i.k, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.ag = insertelement <4 x float> %i.af, float 0.000000e+00, i64 3
  %i.ah = shufflevector <2 x float> %i.m, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ai = shufflevector <4 x float> %i.ag, <4 x float> %i.ah, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.aj = shufflevector <2 x float> %i.k, <2 x float> %i.o, <4 x i32> <i32 2, i32 0, i32 poison, i32 poison>
  %i.ak = insertelement <4 x float> %i.aj, float %i.n, i64 2
  %i.al = shufflevector <2 x float> %i.ab, <2 x float> %i.k, <4 x i32> <i32 1, i32 0, i32 3, i32 poison>
  %i.am = fneg <4 x float> %i.al
  %i.an = insertelement <4 x float> %i.ak, float %i.y, i64 3
  %i.ao = insertelement <4 x float> %i.am, float 0.000000e+00, i64 3
  %i.ap = fmul <4 x float> %i.an, %i.ao
  %i.aq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> %i.ai, <4 x float> %i.ap) ; 4 uses
  %i.ar = extractelement <4 x float> %i.aq, i64 3
  %i.as = tail call noundef float @llvm.fmuladd.f32(float %i.z, float 0.000000e+00, float %i.ar)
  %i.at = load <2 x float>, ptr %i.r, align 8, !tbaa !14, !noalias !128 ; 3 uses
  %i.au = load <2 x float>, ptr %i.s, align 8, !tbaa !14, !noalias !128 ; 3 uses
  %i.av = load <2 x float>, ptr %i.t, align 8, !tbaa !14, !noalias !128 ; 3 uses
  %5 = load float, ptr %4, align 4, !tbaa !14, !noalias !129
  %6 = load float, ptr %3, align 8, !tbaa !14, !noalias !129
  %7 = load float, ptr %i.aa, align 8, !tbaa !14, !noalias !129
  %8 = fneg float %5                              ; 2 uses
  %9 = fneg float %6                              ; 2 uses
  %10 = fneg float %7                             ; 2 uses
  %11 = insertelement <2 x float> poison, float %8, i64 0
  %i.aw = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = fmul <2 x float> %i.au, %i.aw
  %13 = insertelement <2 x float> poison, float %9, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> %14, <2 x float> %12)
  %15 = insertelement <2 x float> poison, float %10, i64 0
  %16 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> zeroinitializer
  %17 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.av, <2 x float> %16, <2 x float> %i.ax)
  %18 = fmul float %i.y, %8
  %19 = tail call float @llvm.fmuladd.f32(float %i.x, float %9, float %18)
  %i.ay = tail call noundef float @llvm.fmuladd.f32(float %i.z, float %10, float %19)
  %i.az = fmul <2 x float> %i.au, zeroinitializer
  %i.ba = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> zeroinitializer, <2 x float> %i.az)
  %i.bb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.av, <2 x float> zeroinitializer, <2 x float> %i.ba)
  %i.bc = fadd <2 x float> %i.bb, %17
  %i.bd = fadd float %i.as, %i.ay
  %.sroa.3.12.vec.insert.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bd, i64 0
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bf = shufflevector <2 x float> %i.au, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bg = shufflevector <4 x float> %i.bf, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.bh = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.aq, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.bi = shufflevector <2 x float> %i.m, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bj = shufflevector <4 x float> %i.bh, <4 x float> %i.bi, <4 x i32> <i32 0, i32 4, i32 5, i32 3> ; 6 uses
  %i.bk = fmul <4 x float> %i.bg, %i.bj
  %i.bl = insertelement <4 x float> %i.aq, float 0.000000e+00, i64 3
  %i.bm = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bn = shufflevector <4 x float> %i.bl, <4 x float> %i.bm, <4 x i32> <i32 0, i32 4, i32 5, i32 3> ; 6 uses
  %i.bo = shufflevector <2 x float> %i.at, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bp = shufflevector <4 x float> %i.bo, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.bq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bn, <4 x float> %i.bp, <4 x float> %i.bk)
  %i.br = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.aq, <4 x i32> <i32 6, i32 poison, i32 poison, i32 3>
  %i.bs = shufflevector <2 x float> %i.o, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bt = shufflevector <4 x float> %i.br, <4 x float> %i.bs, <4 x i32> <i32 0, i32 4, i32 5, i32 3> ; 6 uses
  %i.bu = shufflevector <2 x float> %i.av, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bv = shufflevector <4 x float> %i.bu, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.bw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bt, <4 x float> %i.bv, <4 x float> %i.bq)
  store <4 x float> %i.bw, ptr %i.be, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.by = shufflevector <4 x float> %i.bf, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.bz = fmul <4 x float> %i.by, %i.bj
  %i.ca = shufflevector <4 x float> %i.bo, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bn, <4 x float> %i.ca, <4 x float> %i.bz)
  %i.cc = shufflevector <4 x float> %i.bu, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bt, <4 x float> %i.cc, <4 x float> %i.cb)
  store <4 x float> %i.cd, ptr %i.bx, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cf = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.y, i64 0
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ch = fmul <4 x float> %i.cg, %i.bj
  %i.ci = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.x, i64 0
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ck = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bn, <4 x float> %i.cj, <4 x float> %i.ch)
  %i.cl = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.z, i64 0
  %i.cm = shufflevector <4 x float> %i.cl, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bt, <4 x float> %i.cm, <4 x float> %i.ck)
  store <4 x float> %i.cn, ptr %i.ce, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 120
  store <2 x float> %i.bc, ptr %i.co, align 8
  %.sroa.1980.48..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %.sroa.1980.48..sroa_idx, align 8, !tbaa !11
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !43, !nonnull !41, !align !42 ; 9 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  %i.cx = load float, ptr %i.cu, align 8, !tbaa !14, !noalias !130 ; 3 uses
  %i.cy = load float, ptr %i.cv, align 8, !tbaa !14, !noalias !130 ; 3 uses
  %i.cz = load float, ptr %i.cw, align 8, !tbaa !14, !noalias !130 ; 3 uses
  %20 = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  %21 = getelementptr inbounds nuw i8, ptr %i.cq, i64 60
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 64
  %i.db = fmul float %i.cy, 0.000000e+00
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.cx, float 0.000000e+00, float %i.db)
  %i.dd = tail call noundef float @llvm.fmuladd.f32(float %i.cz, float 0.000000e+00, float %i.dc)
  %i.de = load <2 x float>, ptr %i.cr, align 8, !tbaa !14, !noalias !130 ; 3 uses
  %i.df = load <2 x float>, ptr %i.cs, align 8, !tbaa !14, !noalias !130 ; 3 uses
  %i.dg = load <2 x float>, ptr %i.ct, align 8, !tbaa !14, !noalias !130 ; 3 uses
  %22 = load float, ptr %21, align 4, !tbaa !14, !noalias !131
  %23 = load float, ptr %20, align 8, !tbaa !14, !noalias !131
  %24 = load float, ptr %i.da, align 8, !tbaa !14, !noalias !131
  %25 = fneg float %22                            ; 2 uses
  %26 = fneg float %23                            ; 2 uses
  %27 = fneg float %24                            ; 2 uses
  %28 = insertelement <2 x float> poison, float %25, i64 0
  %i.dh = shufflevector <2 x float> %28, <2 x float> poison, <2 x i32> zeroinitializer
  %29 = fmul <2 x float> %i.df, %i.dh
  %30 = insertelement <2 x float> poison, float %26, i64 0
  %31 = shufflevector <2 x float> %30, <2 x float> poison, <2 x i32> zeroinitializer
  %i.di = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.de, <2 x float> %31, <2 x float> %29)
  %32 = insertelement <2 x float> poison, float %27, i64 0
  %33 = shufflevector <2 x float> %32, <2 x float> poison, <2 x i32> zeroinitializer
  %34 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dg, <2 x float> %33, <2 x float> %i.di)
  %35 = fmul float %i.cy, %25
  %36 = tail call float @llvm.fmuladd.f32(float %i.cx, float %26, float %35)
  %i.dj = tail call noundef float @llvm.fmuladd.f32(float %i.cz, float %27, float %36)
  %i.dk = fmul <2 x float> %i.df, zeroinitializer
  %i.dl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.de, <2 x float> zeroinitializer, <2 x float> %i.dk)
  %i.dm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dg, <2 x float> zeroinitializer, <2 x float> %i.dl)
  %i.dn = fadd <2 x float> %i.dm, %34
  %i.do = fadd float %i.dd, %i.dj
  %.sroa.3.12.vec.insert.i4.i.i35 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.do, i64 0
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.dq = shufflevector <2 x float> %i.df, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dr = shufflevector <4 x float> %i.dq, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.ds = fmul <4 x float> %i.dr, %i.bj
  %i.dt = shufflevector <2 x float> %i.de, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.du = shufflevector <4 x float> %i.dt, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.dv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bn, <4 x float> %i.du, <4 x float> %i.ds)
  %i.dw = shufflevector <2 x float> %i.dg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dx = shufflevector <4 x float> %i.dw, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.dy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bt, <4 x float> %i.dx, <4 x float> %i.dv)
  store <4 x float> %i.dy, ptr %i.dp, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ea = shufflevector <4 x float> %i.dq, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.eb = fmul <4 x float> %i.ea, %i.bj
  %i.ec = shufflevector <4 x float> %i.dt, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.ed = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bn, <4 x float> %i.ec, <4 x float> %i.eb)
  %i.ee = shufflevector <4 x float> %i.dw, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.ef = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bt, <4 x float> %i.ee, <4 x float> %i.ed)
  store <4 x float> %i.ef, ptr %i.dz, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.eh = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.cy, i64 0
  %i.ei = shufflevector <4 x float> %i.eh, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ej = fmul <4 x float> %i.ei, %i.bj
  %i.ek = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.cx, i64 0
  %i.el = shufflevector <4 x float> %i.ek, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.em = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bn, <4 x float> %i.el, <4 x float> %i.ej)
  %i.en = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.cz, i64 0
  %i.eo = shufflevector <4 x float> %i.en, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ep = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bt, <4 x float> %i.eo, <4 x float> %i.em)
  store <4 x float> %i.ep, ptr %i.eg, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 184
  store <2 x float> %i.dn, ptr %i.eq, align 8
  %.sroa.19.48..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i35, ptr %.sroa.19.48..sroa_idx, align 8, !tbaa !11
  tail call void @_ZN30btGeneric6DofSpring2Constraint19calculateTransformsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(1484) %0, ptr noundef nonnull align 4 dereferenceable(64) %i.r, ptr noundef nonnull align 4 dereferenceable(64) %i.cr)
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
  store float %2, ptr %i.d, align 4, !tbaa !14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = zext nneg i32 %1 to i64
  %i.f = getelementptr [88 x i8], ptr %0, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 736
  store float %2, ptr %i.g, align 8, !tbaa !72
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN30btGeneric6DofSpring2Constraint11enableMotorEib(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(1484) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = zext i1 %2 to i8                         ; 2 uses
  %i.b = icmp slt i32 %1, 3
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 %i.d
  store i8 %i.a, ptr %i.e, align 1, !tbaa !16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %1 to i64
  %i.g = getelementptr [88 x i8], ptr %0, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 756
  store i8 %i.a, ptr %i.h, align 4, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN30btGeneric6DofSpring2Constraint8setServoEib(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(1484) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = zext i1 %2 to i8                         ; 2 uses
  %i.b = icmp slt i32 %1, 3
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 819
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 %i.d
  store i8 %i.a, ptr %i.e, align 1, !tbaa !16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %1 to i64
  %i.g = getelementptr [88 x i8], ptr %0, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 768
  store i8 %i.a, ptr %i.h, align 8, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN30btGeneric6DofSpring2Constraint17setTargetVelocityEif(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(1484) %0, i32 noundef %1, float noundef %2) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 3
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 900
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  store float %2, ptr %i.d, align 4, !tbaa !14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = zext nneg i32 %1 to i64
  %i.f = getelementptr [88 x i8], ptr %0, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 760
  store float %2, ptr %i.g, align 8, !tbaa !75
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN30btGeneric6DofSpring2Constraint14setServoTargetEif(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(1484) %0, i32 noundef %1, float noundef %2) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 3
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 828
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  store float %2, ptr %i.d, align 4, !tbaa !14
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = fadd float %2, f0x40490FDB               ; 2 uses
  %i.f = fdiv float %i.e, f0x40C90FDB
  %i.g = tail call noundef float @llvm.floor.f32(float %i.f)
  %i.h = tail call float @llvm.fmuladd.f32(float %i.g, float f0xC0C90FDB, float %i.e) ; 4 uses
  %i.i = fcmp ult float %i.h, f0x40C90FDB
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = fcmp olt float %i.h, 0.000000e+00
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = fadd float %i.h, f0x40C90FDB             ; 2 uses
  %i.l = fcmp oeq float %i.k, f0x40C90FDB
  %. = select i1 %i.l, float 0.000000e+00, float %i.k
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.0 = phi float [ 0.000000e+00, %bb.c ], [ %., %bb.e ], [ %i.h, %bb.d ]
  %i.m = fadd float %.0, f0xC0490FDB
  %i.n = zext nneg i32 %1 to i64
  %i.o = getelementptr [88 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 772
  store float %i.m, ptr %i.p, align 4, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN30btGeneric6DofSpring2Constraint16setMaxMotorForceEif(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(1484) %0, i32 noundef %1, float noundef %2) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 3
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 916
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  store float %2, ptr %i.d, align 4, !tbaa !14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = zext nneg i32 %1 to i64
  %i.f = getelementptr [88 x i8], ptr %0, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 764
  store float %2, ptr %i.g, align 4, !tbaa !74
end_hunk_0
