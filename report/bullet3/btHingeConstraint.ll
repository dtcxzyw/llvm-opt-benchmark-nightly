Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btHingeConstraint?download=true
inline.NumInlined: 753
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN17btHingeConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E:bb.a
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  store i32 5, ptr %1, align 4, !tbaa !54
  store i32 1, ptr %i.d, align 4, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30, !nonnull !31, !align !32 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36, !nonnull !31, !align !32 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.n = load float, ptr %i.m, align 8, !tbaa !12 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.p = load float, ptr %i.o, align 8, !tbaa !12 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.t = load float, ptr %i.s, align 8, !tbaa !12 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.w = load float, ptr %i.v, align 8, !tbaa !12 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.y = load float, ptr %i.x, align 4, !tbaa !12 ; 3 uses
  %i.z = load <2 x float>, ptr %i.g, align 8, !tbaa !12 ; 2 uses
  %i.aa = load <2 x float>, ptr %i.u, align 8, !tbaa !12 ; 2 uses
  %i.ab = load <2 x float>, ptr %i.k, align 8, !tbaa !12 ; 3 uses
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ad = load <2 x float>, ptr %i.l, align 8, !tbaa !12 ; 3 uses
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.af = shufflevector <2 x float> %i.z, <2 x float> %i.aa, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.ag = fmul <4 x float> %i.af, %i.ae
  %i.ah = shufflevector <2 x float> %i.z, <2 x float> %i.aa, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.ai = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ah, <4 x float> %i.ac, <4 x float> %i.ag) ; 4 uses
  %i.aj = extractelement <4 x float> %i.ai, i64 0
  %i.ak = tail call noundef float @llvm.fmuladd.f32(float %i.p, float %i.n, float %i.aj)
  %i.al = extractelement <4 x float> %i.ai, i64 2
  %i.am = tail call noundef float @llvm.fmuladd.f32(float %i.w, float %i.n, float %i.al)
  %i.an = extractelement <4 x float> %i.ai, i64 1
  %i.ao = tail call noundef float @llvm.fmuladd.f32(float %i.p, float %i.y, float %i.an)
  %i.ap = extractelement <4 x float> %i.ai, i64 3
  %i.aq = tail call noundef float @llvm.fmuladd.f32(float %i.w, float %i.y, float %i.ap)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 644
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 660
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 676
  %i.au = load float, ptr %i.ar, align 4, !tbaa !12 ; 3 uses
  %i.av = load float, ptr %i.as, align 4, !tbaa !12 ; 3 uses
  %i.aw = load float, ptr %i.at, align 4, !tbaa !12 ; 3 uses
  %i.ax = load float, ptr %i.j, align 8, !tbaa !12
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.az = load float, ptr %i.ay, align 4, !tbaa !12
  %i.ba = fmul float %i.av, %i.az
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.au, float %i.ba)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bd = load float, ptr %i.bc, align 8, !tbaa !12
  %i.be = tail call noundef float @llvm.fmuladd.f32(float %i.bd, float %i.aw, float %i.bb) ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !12
  %i.bi = load <2 x float>, ptr %i.q, align 8, !tbaa !12 ; 3 uses
  %i.bj = load float, ptr %i.r, align 4, !tbaa !12
  %i.bk = extractelement <2 x float> %i.ad, i64 1
  %i.bl = fmul float %i.bj, %i.bk
  %i.bm = extractelement <2 x float> %i.bi, i64 0
  %i.bn = extractelement <2 x float> %i.ab, i64 1
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bm, float %i.bn, float %i.bl)
  %i.bp = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.y, float %i.bo)
  %i.bq = load <2 x float>, ptr %i.bf, align 8, !tbaa !12 ; 2 uses
  %i.br = insertelement <2 x float> %i.ad, float %i.av, i64 1
  %i.bs = shufflevector <2 x float> %i.bi, <2 x float> %i.bq, <2 x i32> <i32 1, i32 3>
  %i.bt = fmul <2 x float> %i.br, %i.bs
  %i.bu = shufflevector <2 x float> %i.bi, <2 x float> %i.bq, <2 x i32> <i32 0, i32 2>
  %i.bv = insertelement <2 x float> %i.ab, float %i.au, i64 1
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.bv, <2 x float> %i.bt)
  %i.bx = insertelement <2 x float> poison, float %i.t, i64 0
  %i.by = insertelement <2 x float> %i.bx, float %i.bh, i64 1
  %i.bz = insertelement <2 x float> poison, float %i.n, i64 0
  %i.ca = insertelement <2 x float> %i.bz, float %i.aw, i64 1
  %i.cb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.by, <2 x float> %i.ca, <2 x float> %i.bw) ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.cd = load float, ptr %i.cc, align 8, !tbaa !12
  %i.ce = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !12
  %i.cg = fmul float %i.av, %i.cf
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.au, float %i.cg)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.cj = load float, ptr %i.ci, align 8, !tbaa !12
  %i.ck = tail call noundef float @llvm.fmuladd.f32(float %i.cj, float %i.aw, float %i.ch) ; 2 uses
  %i.cl = extractelement <2 x float> %i.cb, i64 0
  %i.cm = extractelement <2 x float> %i.cb, i64 1 ; 2 uses
  %i.cn = fmul float %i.cl, %i.cm
  %i.co = tail call float @llvm.fmuladd.f32(float %i.be, float %i.ak, float %i.cn)
  %i.cp = tail call noundef float @llvm.fmuladd.f32(float %i.ck, float %i.am, float %i.co)
  %i.cq = fmul float %i.bp, %i.cm
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.be, float %i.ao, float %i.cq)
  %i.cs = tail call noundef float @llvm.fmuladd.f32(float %i.ck, float %i.aq, float %i.cr)
  %i.ct = tail call noundef float @atan2f(float noundef %i.cp, float noundef %i.cs) #20
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 756
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !29
  %i.cw = fmul float %i.ct, %i.cv                 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 752
  store float %i.cw, ptr %i.cx, align 8, !tbaa !50
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 712
  tail call void @_ZN14btAngularLimit4testEf(ptr noundef nonnull align 4 dereferenceable(29) %i.cy, float noundef %i.cw)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 740
  %i.da = load i8, ptr %i.cz, align 4, !tbaa !56, !range !34, !noundef !31
  %.not = icmp eq i8 %i.da, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 761
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !57, !range !34, !noundef !31
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.de = load i32, ptr %1, align 4, !tbaa !54
  %i.df = add nsw i32 %i.de, 1
  store i32 %i.df, ptr %1, align 4, !tbaa !54
  %i.dg = load i32, ptr %i.d, align 4, !tbaa !55
  %i.dh = add nsw i32 %i.dg, -1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.e
  %.sink = phi i32 [ %i.dh, %bb.e ], [ 0, %bb.b ]
  store i32 %.sink, ptr %i.d, align 4, !tbaa !55
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN17btHingeConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(792) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 762
  %i.b = load i8, ptr %i.a, align 2, !tbaa !33, !range !34, !noundef !31
  %i.c = trunc nuw i8 %i.b to i1
  %spec.select = select i1 %i.c, i32 0, i32 6
  store i32 %spec.select, ptr %1, align 4, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !55
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17btHingeConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 763
  %i.b = load i8, ptr %i.a, align 1, !tbaa !108, !range !34, !noundef !31
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30, !nonnull !31, !align !32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36, !nonnull !31, !align !32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 436 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 436 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN17btHingeConstraint32getInfo2InternalUsingFrameOffsetEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %i.f, ptr noundef nonnull align 4 dereferenceable(64) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.k)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN17btHingeConstraint16getInfo2InternalEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %i.f, ptr noundef nonnull align 4 dereferenceable(64) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.k)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17btHingeConstraint32getInfo2InternalUsingFrameOffsetEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 580
  %i.f = load float, ptr %i.e, align 4, !tbaa !12, !noalias !117 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.h = load float, ptr %i.g, align 4, !tbaa !12, !noalias !117 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.j = load float, ptr %i.i, align 4, !tbaa !12, !noalias !117 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.l = load float, ptr %i.k, align 8, !tbaa !12, !noalias !117 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.n = load float, ptr %i.m, align 8, !tbaa !12, !noalias !117 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.p = load float, ptr %i.o, align 8, !tbaa !12, !noalias !117 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 624
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 628
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 48
  %8 = load float, ptr %i.x, align 4, !tbaa !12, !noalias !118
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !12, !noalias !119 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !12, !noalias !119 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.af = load float, ptr %i.ae, align 8, !tbaa !12, !noalias !119 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !12, !noalias !119 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 688
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 692
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 696
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 52
  %11 = load <2 x float>, ptr %2, align 4, !tbaa !12, !noalias !117 ; 4 uses
  %12 = extractelement <2 x float> %11, i64 0
  %i.ap = load <2 x float>, ptr %i.q, align 4, !tbaa !12, !noalias !117 ; 4 uses
  %13 = load <2 x float>, ptr %i.c, align 4, !tbaa !12, !noalias !117 ; 4 uses
  %i.aq = load float, ptr %i.d, align 4, !tbaa !12, !noalias !117
  %14 = load <2 x float>, ptr %i.r, align 4, !tbaa !12, !noalias !117 ; 4 uses
  %15 = load float, ptr %i.s, align 4, !tbaa !12, !noalias !117
  %16 = insertelement <2 x float> poison, float %i.h, i64 0
  %i.ar = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = shufflevector <2 x float> %13, <2 x float> %14, <2 x i32> <i32 0, i32 2>
  %17 = fmul <2 x float> %i.ar, %i.as
  %18 = insertelement <2 x float> poison, float %i.f, i64 0
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> zeroinitializer
  %20 = shufflevector <2 x float> %11, <2 x float> %i.ap, <2 x i32> <i32 0, i32 2>
  %21 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %19, <2 x float> %20, <2 x float> %17)
  %i.at = extractelement <2 x float> %13, i64 0
  %22 = fmul float %i.at, %i.n
  %23 = tail call float @llvm.fmuladd.f32(float %i.l, float %12, float %22)
  %24 = tail call noundef float @llvm.fmuladd.f32(float %i.p, float %i.aq, float %23) ; 4 uses
  %25 = insertelement <2 x float> poison, float %i.j, i64 0
  %26 = shufflevector <2 x float> %25, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = shufflevector <2 x float> %13, <2 x float> %14, <2 x i32> <i32 1, i32 3>
  %27 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %26, <2 x float> %i.au, <2 x float> %21)
  %28 = load <2 x float>, ptr %i.t, align 4, !tbaa !12, !noalias !117 ; 6 uses
  %29 = extractelement <2 x float> %28, i64 0
  %30 = load float, ptr %6, align 4, !tbaa !12, !noalias !118
  %31 = load float, ptr %i.w, align 8, !tbaa !12, !noalias !118
  %32 = load float, ptr %7, align 8, !tbaa !12, !noalias !118
  %33 = shufflevector <2 x float> %i.ap, <2 x float> %28, <2 x i32> <i32 1, i32 3>
  %34 = insertelement <2 x float> poison, float %30, i64 0
  %35 = shufflevector <2 x float> %34, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %36 = fmul <2 x float> %33, %35
  %37 = shufflevector <2 x float> %28, <2 x float> %11, <2 x i32> <i32 1, i32 3>
  %38 = fmul <2 x float> %37, %35
  %39 = insertelement <2 x float> poison, float %31, i64 0
  %40 = shufflevector <2 x float> %39, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %41 = shufflevector <2 x float> %i.ap, <2 x float> %28, <2 x i32> <i32 0, i32 2>
  %42 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %40, <2 x float> %41, <2 x float> %36)
  %43 = shufflevector <2 x float> %28, <2 x float> %11, <2 x i32> <i32 0, i32 2>
  %44 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %40, <2 x float> %43, <2 x float> %38)
  %i.av = insertelement <2 x float> poison, float %32, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %45 = load <2 x float>, ptr %i.y, align 4, !tbaa !12, !noalias !118 ; 3 uses
  %46 = shufflevector <2 x float> %45, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ax = insertelement <2 x float> %46, float %8, i64 1 ; 2 uses
  %47 = load float, ptr %10, align 4, !tbaa !12, !noalias !120
  %48 = load <2 x float>, ptr %i.ai, align 4, !tbaa !12, !noalias !119 ; 3 uses
  %49 = load <2 x float>, ptr %i.ak, align 4, !tbaa !12, !noalias !119 ; 5 uses
  %50 = load float, ptr %9, align 4, !tbaa !12, !noalias !120
  %51 = load float, ptr %i.am, align 8, !tbaa !12, !noalias !120
  %52 = load float, ptr %i.an, align 8, !tbaa !12, !noalias !120
  %53 = shufflevector <2 x float> %48, <2 x float> %49, <2 x i32> <i32 1, i32 3>
  %54 = insertelement <2 x float> poison, float %50, i64 0
  %55 = shufflevector <2 x float> %54, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %56 = fmul <2 x float> %53, %55
  %57 = load <2 x float>, ptr %3, align 4, !tbaa !12, !noalias !119 ; 3 uses
  %58 = load float, ptr %i.z, align 4, !tbaa !12, !noalias !119
  %59 = shufflevector <2 x float> %49, <2 x float> %57, <2 x i32> <i32 1, i32 3>
  %i.ay = fmul <2 x float> %59, %55
  %i.az = insertelement <2 x float> poison, float %51, i64 0
  %60 = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ba = shufflevector <2 x float> %48, <2 x float> %49, <2 x i32> <i32 0, i32 2>
  %i.bb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %60, <2 x float> %i.ba, <2 x float> %56)
  %61 = shufflevector <2 x float> %49, <2 x float> %57, <2 x i32> <i32 0, i32 2>
  %62 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %60, <2 x float> %61, <2 x float> %i.ay)
  %i.bc = insertelement <2 x float> poison, float %52, i64 0
  %63 = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %64 = fmul float %58, %i.af
  %65 = extractelement <2 x float> %57, i64 0
  %66 = tail call float @llvm.fmuladd.f32(float %i.ad, float %65, float %64)
  %67 = tail call noundef float @llvm.fmuladd.f32(float %i.ah, float %i.ab, float %66) ; 4 uses
  %68 = load <2 x float>, ptr %i.ao, align 4, !tbaa !12, !noalias !120 ; 3 uses
  %69 = shufflevector <2 x float> %68, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %70 = insertelement <2 x float> %69, float %47, i64 1 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !30, !nonnull !31, !align !32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 452
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !49 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !36, !nonnull !31, !align !32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 452
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !49 ; 3 uses
  %i.bl = fcmp olt float %i.bg, f0x34000000
  %i.bm = fcmp olt float %i.bk, f0x34000000
  %i.bn = or i1 %i.bl, %i.bm                      ; 2 uses
  %i.bo = fadd float %i.bg, %i.bk                 ; 2 uses
  %i.bp = fcmp ogt float %i.bo, 0.000000e+00
  %i.bq = fdiv float %i.bk, %i.bo
  %storemerge = select i1 %i.bp, float %i.bq, float 5.000000e-01 ; 5 uses
  %i.br = fsub float 1.000000e+00, %storemerge    ; 4 uses
  %i.bs = fmul float %24, %storemerge
  %i.bt = fmul float %67, %i.br
  %i.bu = load <2 x float>, ptr %i.aj, align 4, !tbaa !12, !noalias !119 ; 3 uses
  %i.bv = insertelement <2 x float> poison, float %i.n, i64 0
  %i.bw = insertelement <2 x float> %i.bv, float %i.af, i64 1 ; 2 uses
  %i.bx = shufflevector <2 x float> %14, <2 x float> %i.bu, <2 x i32> <i32 0, i32 2>
  %i.by = fmul <2 x float> %i.bw, %i.bx
  %i.bz = insertelement <2 x float> poison, float %i.l, i64 0
  %i.ca = insertelement <2 x float> %i.bz, float %i.ad, i64 1 ; 2 uses
  %i.cb = shufflevector <2 x float> %i.ap, <2 x float> %48, <2 x i32> <i32 0, i32 2>
  %i.cc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> %i.cb, <2 x float> %i.by)
  %i.cd = insertelement <2 x float> poison, float %i.p, i64 0
  %i.ce = insertelement <2 x float> %i.cd, float %i.ah, i64 1 ; 2 uses
  %i.cf = insertelement <2 x float> %i.bu, float %15, i64 0
  %i.cg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.cf, <2 x float> %i.cc) ; 5 uses
  %i.ch = insertelement <2 x float> poison, float %storemerge, i64 0
  %i.ci = insertelement <2 x float> %i.ch, float %i.br, i64 1 ; 2 uses
  %i.cj = fmul <2 x float> %i.cg, %i.ci           ; 2 uses
  %i.ck = load <2 x float>, ptr %i.u, align 4, !tbaa !12, !noalias !117 ; 5 uses
  %71 = load float, ptr %i.v, align 4, !tbaa !12, !noalias !117
  %72 = extractelement <2 x float> %i.ck, i64 0
  %73 = fmul float %i.h, %72
  %74 = tail call float @llvm.fmuladd.f32(float %i.f, float %29, float %73)
  %75 = tail call noundef float @llvm.fmuladd.f32(float %i.j, float %71, float %74)
  %76 = shufflevector <2 x float> %14, <2 x float> %i.ck, <2 x i32> <i32 1, i32 3>
  %77 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %76, <2 x float> %42)
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> %13, <2 x i32> <i32 1, i32 3>
  %i.cm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.cl, <2 x float> %44)
  %78 = fadd <2 x float> %77, %45                 ; 3 uses
  %i.cn = fadd <2 x float> %i.cm, %i.ax           ; 2 uses
  %i.co = load <2 x float>, ptr %i.al, align 4, !tbaa !12, !noalias !119 ; 4 uses
  %79 = shufflevector <2 x float> %i.bu, <2 x float> %i.co, <2 x i32> <i32 1, i32 3>
  %80 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %63, <2 x float> %79, <2 x float> %i.bb)
  %81 = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %82 = insertelement <2 x float> %81, float %i.ab, i64 1
  %83 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %63, <2 x float> %82, <2 x float> %62)
  %i.cp = shufflevector <2 x float> %i.ck, <2 x float> %i.co, <2 x i32> <i32 0, i32 2>
  %i.cq = fmul <2 x float> %i.bw, %i.cp
  %i.cr = shufflevector <2 x float> %28, <2 x float> %49, <2 x i32> <i32 0, i32 2>
  %i.cs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> %i.cr, <2 x float> %i.cq)
  %i.ct = shufflevector <2 x float> %i.ck, <2 x float> %i.co, <2 x i32> <i32 1, i32 3>
  %i.cu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.ct, <2 x float> %i.cs) ; 5 uses
  %84 = fadd <2 x float> %80, %68                 ; 3 uses
  %85 = fadd <2 x float> %83, %70                 ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %85, %i.cn
  %86 = extractelement <2 x float> %foldExtExtBinop, i64 1 ; 3 uses
  %foldExtExtBinop804 = fsub <2 x float> %84, %78 ; 2 uses
  %i.cv = extractelement <2 x float> %foldExtExtBinop804, i64 0 ; 2 uses
  %foldExtExtBinop806 = fsub <2 x float> %84, %78
  %i.cw = extractelement <2 x float> %foldExtExtBinop806, i64 1 ; 3 uses
  %i.cx = fmul <2 x float> %i.cu, %i.ci           ; 2 uses
  %i.cy = fadd float %i.bs, %i.bt                 ; 3 uses
  %shift808 = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop809 = fadd <2 x float> %i.cj, %shift808 ; 3 uses
  %shift811 = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop812 = fadd <2 x float> %i.cx, %shift811 ; 2 uses
  %i.cz = extractelement <2 x float> %foldExtExtBinop812, i64 0 ; 2 uses
  %.sroa.0.0.vec.insert.i302 = insertelement <2 x float> poison, float %i.cy, i64 0
  %.sroa.0.4.vec.insert.i303 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i302, <2 x float> %foldExtExtBinop809, <2 x i32> <i32 0, i32 2>
  %.sroa.3.12.vec.insert.i304827 = insertelement <2 x float> %foldExtExtBinop812, float 0.000000e+00, i64 1
  %foldExtExtBinop814 = fmul <2 x float> %foldExtExtBinop809, %foldExtExtBinop809
  %i.da = extractelement <2 x float> %foldExtExtBinop814, i64 0
  %i.db = tail call float @llvm.fmuladd.f32(float %i.cy, float %i.cy, float %i.da)
  %i.dc = tail call noundef float @llvm.fmuladd.f32(float %i.cz, float %i.cz, float %i.db)
  %i.dd = fcmp olt float %i.dc, f0x34000000
  %87 = insertelement <4 x float> poison, float %storemerge, i64 0
  %88 = insertelement <4 x float> %87, float %i.br, i64 1
  %89 = shufflevector <4 x float> %88, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  br i1 %i.dd, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.de = extractelement <2 x float> %i.cu, i64 0
  %i.df = fmul float %i.de, 0.000000e+00
  %i.dg = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dh = insertelement <2 x float> %i.dg, float %24, i64 0
  %i.di = fmul <2 x float> %i.dh, zeroinitializer
  %i.dj = insertelement <2 x float> %i.cg, float %67, i64 0
  %i.dk = fadd <2 x float> %i.di, %i.dj
  %i.dl = extractelement <2 x float> %i.cu, i64 1
  %i.dm = fadd float %i.df, %i.dl
  %.sroa.3.12.vec.insert.i319 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dm, i64 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.15.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i319, %bb.b ], [ %.sroa.3.12.vec.insert.i304827, %bb.a ] ; 2 uses
  %.sroa.0769.0 = phi <2 x float> [ %i.dk, %bb.b ], [ %.sroa.0.4.vec.insert.i303, %bb.a ] ; 4 uses
  %.0649 = phi float [ 0.000000e+00, %bb.b ], [ %storemerge, %bb.a ] ; 6 uses
  %.0648 = phi float [ 1.000000e+00, %bb.b ], [ %i.br, %bb.a ] ; 4 uses
  %90 = phi <4 x float> [ <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %bb.b ], [ %89, %bb.a ] ; 3 uses
  %.sroa.0769.0.vec.extract771 = extractelement <2 x float> %.sroa.0769.0, i64 0 ; 2 uses
  %foldExtExtBinop816 = fmul <2 x float> %.sroa.0769.0, %.sroa.0769.0
  %i.dn = extractelement <2 x float> %foldExtExtBinop816, i64 1
  %i.do = tail call float @llvm.fmuladd.f32(float %.sroa.0769.0.vec.extract771, float %.sroa.0769.0.vec.extract771, float %i.dn)
  %.sroa.15.8.vec.extract786 = extractelement <2 x float> %.sroa.15.0, i64 0 ; 2 uses
  %i.dp = tail call noundef float @llvm.fmuladd.f32(float %.sroa.15.8.vec.extract786, float %.sroa.15.8.vec.extract786, float %i.do)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.dp)
  %i.dq = fdiv float 1.000000e+00, %sqrt.i.i
  %i.dr = shl i32 %i.b, 1
  %91 = fsub <2 x float> %85, %70                 ; 2 uses
  %i.ds = fsub <2 x float> %84, %68               ; 3 uses
  %i.dt = fsub <2 x float> %i.cn, %i.ax           ; 2 uses
  %i.du = fsub <2 x float> %78, %45               ; 3 uses
  %92 = shufflevector <2 x float> %.sroa.15.0, <2 x float> %.sroa.0769.0, <4 x i32> <i32 0, i32 2, i32 3, i32 0>
  %93 = insertelement <4 x float> poison, float %i.dq, i64 0
  %94 = shufflevector <4 x float> %93, <4 x float> poison, <4 x i32> zeroinitializer
  %95 = fmul <4 x float> %92, %94                 ; 8 uses
  %i.dv = shufflevector <4 x float> %95, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 4 uses
  %96 = extractelement <4 x float> %95, i64 2     ; 6 uses
  %97 = extractelement <4 x float> %95, i64 1     ; 6 uses
  %98 = extractelement <4 x float> %95, i64 0     ; 7 uses
  %99 = extractelement <2 x float> %i.ds, i64 0
  %100 = fmul float %96, %99
  %101 = extractelement <2 x float> %i.du, i64 0
  %i.dw = fmul float %101, %96
  %102 = extractelement <2 x float> %91, i64 1
  %103 = tail call float @llvm.fmuladd.f32(float %102, float %97, float %100)
  %104 = extractelement <2 x float> %i.dt, i64 1
  %105 = tail call float @llvm.fmuladd.f32(float %104, float %97, float %i.dw)
  %106 = extractelement <2 x float> %i.ds, i64 1
  %107 = tail call noundef float @llvm.fmuladd.f32(float %106, float %98, float %103)
  %108 = extractelement <2 x float> %i.du, i64 1
  %109 = tail call noundef float @llvm.fmuladd.f32(float %108, float %98, float %105)
  %110 = shufflevector <4 x float> %95, <4 x float> poison, <2 x i32> <i32 2, i32 0> ; 3 uses
  %111 = insertelement <2 x float> poison, float %107, i64 0
  %112 = shufflevector <2 x float> %111, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %113 = fmul <2 x float> %110, %112              ; 3 uses
  %114 = shufflevector <4 x float> %95, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 3 uses
  %i.dx = fmul <2 x float> %114, %112             ; 2 uses
  %115 = insertelement <2 x float> poison, float %109, i64 0
  %i.dy = shufflevector <2 x float> %115, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dz = fmul <2 x float> %110, %i.dy            ; 2 uses
  %i.ea = fmul <2 x float> %114, %i.dy            ; 2 uses
  %116 = fsub <2 x float> %i.du, %i.dz            ; 3 uses
  %i.eb = fsub <2 x float> %i.dt, %i.ea           ; 2 uses
  %i.ec = fsub <2 x float> %i.dz, %113            ; 3 uses
  %i.ed = fsub <2 x float> %i.ea, %i.dx           ; 2 uses
  %117 = shufflevector <4 x float> %90, <4 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %118 = fmul <2 x float> %117, %i.ec
  %i.ee = fmul <2 x float> %117, %i.ed
  %119 = fadd <2 x float> %116, %118              ; 6 uses
  %120 = fadd <2 x float> %i.eb, %i.ee            ; 5 uses
  %121 = fsub <2 x float> %i.ds, %113             ; 3 uses
  %122 = shufflevector <2 x float> %113, <2 x float> %i.dx, <2 x i32> <i32 1, i32 3>
  %i.ef = fsub <2 x float> %91, %122              ; 2 uses
  %123 = shufflevector <4 x float> %90, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.eg = fmul <2 x float> %123, %i.ec
  %124 = shufflevector <2 x float> %i.ec, <2 x float> %i.ed, <2 x i32> <i32 1, i32 3>
  %i.eh = fmul <2 x float> %123, %124
  %125 = fsub <2 x float> %121, %i.eg             ; 7 uses
  %i.ei = fsub <2 x float> %i.ef, %i.eh           ; 5 uses
  %126 = extractelement <2 x float> %i.ef, i64 1
  %127 = fmul float %.0649, %126
  %i.ej = extractelement <2 x float> %121, i64 0
  %i.ek = fmul float %.0649, %i.ej
  %i.el = extractelement <2 x float> %121, i64 1
  %i.em = fmul float %.0649, %i.el
  %128 = extractelement <2 x float> %i.eb, i64 1
  %129 = fmul float %.0648, %128
  %i.en = extractelement <2 x float> %116, i64 0
  %i.eo = fmul float %.0648, %i.en
  %i.ep = extractelement <2 x float> %116, i64 1
  %i.eq = fmul float %.0648, %i.ep
  %130 = fadd float %129, %127                    ; 3 uses
  %i.er = fadd float %i.eo, %i.ek                 ; 3 uses
  %i.es = fadd float %i.eq, %i.em                 ; 3 uses
  %i.et = fmul float %i.er, %i.er
  %i.eu = tail call float @llvm.fmuladd.f32(float %130, float %130, float %i.et)
  %i.ev = tail call noundef float @llvm.fmuladd.f32(float %i.es, float %i.es, float %i.eu) ; 2 uses
  %i.ew = fcmp ogt float %i.ev, f0x34000000
  br i1 %i.ew, label %bb.d, label %.preheader663

bb.d:                                             ; preds = %bb.c
  %sqrt = tail call float @llvm.sqrt.f32(float %i.ev)
  %i.ex = fdiv float 1.000000e+00, %sqrt          ; 3 uses
  %i.ey = fmul float %130, %i.ex
  %i.ez = insertelement <2 x float> poison, float %i.ey, i64 0
  %i.fa = fmul float %i.er, %i.ex
  %.sroa.0697.4.vec.insert = insertelement <2 x float> %i.ez, float %i.fa, i64 1
  %i.fb = fmul float %i.es, %i.ex
  br label %.preheader663

.preheader663:                                    ; preds = %bb.c, %bb.d
  %.sink = phi float [ %i.fb, %bb.d ], [ %75, %bb.c ] ; 6 uses
  %.sroa.0697.0 = phi <2 x float> [ %.sroa.0697.4.vec.insert, %bb.d ], [ %27, %bb.c ] ; 7 uses
  %i.fc = extractelement <2 x float> %.sroa.0697.0, i64 1 ; 3 uses
  %i.fd = extractelement <2 x float> %.sroa.0697.0, i64 0 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !61 ; 13 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !62 ; 15 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = fneg <2 x float> %.sroa.0697.0          ; 7 uses
  %131 = shufflevector <2 x float> %.sroa.0697.0, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %132 = insertelement <2 x float> %131, float %.sink, i64 0 ; 3 uses
  %133 = fneg <2 x float> %132                    ; 4 uses
  %134 = fmul <2 x float> %110, %i.fj
  %135 = fmul <2 x float> %i.dv, %133
  %136 = insertelement <2 x float> %131, float %.sink, i64 1
  %137 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dv, <2 x float> %136, <2 x float> %134) ; 6 uses
  %138 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %114, <2 x float> %.sroa.0697.0, <2 x float> %135) ; 5 uses
  %139 = shufflevector <2 x float> %137, <2 x float> %138, <2 x i32> <i32 1, i32 2>
  %140 = extractelement <2 x float> %i.fj, i64 1  ; 2 uses
  %141 = extractelement <2 x float> %133, i64 0   ; 2 uses
  %142 = shufflevector <2 x float> %119, <2 x float> %120, <2 x i32> <i32 1, i32 3>
  %143 = shufflevector <2 x float> %i.fj, <2 x float> %133, <2 x i32> <i32 1, i32 2>
  %144 = fmul <2 x float> %142, %143
  %i.fk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %119, <2 x float> %132, <2 x float> %144)
  store <2 x float> %i.fk, ptr %i.ff, align 4, !tbaa !12
  %145 = shufflevector <2 x float> %125, <2 x float> %i.ei, <2 x i32> <i32 1, i32 3>
  %146 = shufflevector <2 x float> %i.fj, <2 x float> %133, <2 x i32> <i32 1, i32 2>
  %147 = fmul <2 x float> %145, %146
  %i.fl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %125, <2 x float> %132, <2 x float> %147)
  %i.fm = fneg <2 x float> %i.fl
  %148 = fneg <2 x float> %138                    ; 6 uses
  %149 = fmul <2 x float> %120, %148
  %150 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %119, <2 x float> %137, <2 x float> %149) ; 3 uses
  %.sroa.0697.4.vec.extract705 = extractelement <2 x float> %137, i64 1 ; 4 uses
  %151 = fmul <2 x float> %i.ei, %148
  %152 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %125, <2 x float> %137, <2 x float> %151) ; 3 uses
  %i.fn = fneg float %.sroa.0697.4.vec.extract705 ; 3 uses
  %153 = shufflevector <2 x float> %119, <2 x float> %125, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %154 = shufflevector <2 x float> %i.fj, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.fo = insertelement <4 x float> poison, float %i.fn, i64 0
  %155 = shufflevector <4 x float> %i.fo, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %156 = shufflevector <4 x float> %154, <4 x float> %155, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fp = fmul <4 x float> %153, %156
  %157 = shufflevector <2 x float> %120, <2 x float> %i.ei, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %158 = shufflevector <2 x float> %.sroa.0697.0, <2 x float> %138, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.fq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %157, <4 x float> %158, <4 x float> %i.fp) ; 6 uses
  %i.fr = extractelement <4 x float> %i.fq, i64 0
  store float %i.fr, ptr %.sroa.16.0..sroa_idx, align 4, !tbaa !12
  store <2 x float> %i.fm, ptr %i.fh, align 4, !tbaa !12
  %i.fs = extractelement <4 x float> %i.fq, i64 1
  %i.ft = fneg float %i.fs
  store float %i.ft, ptr %i.fi, align 4, !tbaa !12
  %159 = shufflevector <4 x float> %i.fq, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %160 = insertelement <2 x float> %159, float 0.000000e+00, i64 1 ; 3 uses
  %i.fu = shufflevector <4 x float> %i.fq, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.fv = insertelement <2 x float> %i.fu, float 0.000000e+00, i64 1 ; 3 uses
  br i1 %i.bn, label %bb.e, label %.preheader662

bb.e:                                             ; preds = %.preheader663
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 740
  %i.fx = load i8, ptr %i.fw, align 4, !tbaa !56, !range !34, !noundef !31
  %.not = icmp eq i8 %i.fx, 0
  br i1 %.not, label %.preheader662, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fy = fmul <2 x float> %123, %152
  %i.fz = extractelement <4 x float> %i.fq, i64 3
  %i.ga = fmul float %.0648, %i.fz
  %i.gb = insertelement <2 x float> %i.fv, float %i.ga, i64 0
  %i.gc = fmul <2 x float> %117, %150
  %i.gd = extractelement <4 x float> %i.fq, i64 2
  %i.ge = fmul float %.0649, %i.gd
  %.sroa.16.8.vec.insert = insertelement <2 x float> %160, float %i.ge, i64 0
  br label %.preheader662

.preheader662:                                    ; preds = %bb.f, %bb.e, %.preheader663
  %.sroa.16.0 = phi <2 x float> [ %160, %bb.e ], [ %.sroa.16.8.vec.insert, %bb.f ], [ %160, %.preheader663 ]
  %.sroa.0747.0 = phi <2 x float> [ %150, %bb.e ], [ %i.gc, %bb.f ], [ %150, %.preheader663 ]
  %.sroa.19.0 = phi <2 x float> [ %i.fv, %bb.e ], [ %i.gb, %bb.f ], [ %i.fv, %.preheader663 ]
  %.sroa.0713.0 = phi <2 x float> [ %152, %bb.e ], [ %i.fy, %bb.f ], [ %152, %.preheader663 ]
  %i.gf = sext i32 %i.b to i64                    ; 6 uses
  %i.gg = shl nsw i64 %i.gf, 2                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ff, i64 %i.gg ; 2 uses
  store <2 x float> %.sroa.0747.0, ptr %scevgep, align 4, !tbaa !12
  %.sroa.16.0.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 8
  %.sroa.16.0.vec.extract761 = extractelement <2 x float> %.sroa.16.0, i64 0
  store float %.sroa.16.0.vec.extract761, ptr %.sroa.16.0.scevgep.sroa_idx, align 4, !tbaa !12
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.gf
  %i.gi = fneg <2 x float> %.sroa.0713.0
  store <2 x float> %i.gi, ptr %i.gh, align 4, !tbaa !12
  %.sroa.19.8.vec.extract744 = extractelement <2 x float> %.sroa.19.0, i64 0
  %i.gj = fneg float %.sroa.19.8.vec.extract744
  %i.gk = add nsw i64 %i.gf, 2                    ; 2 uses
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.gk
  store float %i.gj, ptr %i.gl, align 4, !tbaa !12
  %161 = fneg <4 x float> %95                     ; 7 uses
  %162 = shufflevector <4 x float> %161, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2> ; 2 uses
  %163 = shufflevector <2 x float> %119, <2 x float> %120, <4 x i32> <i32 1, i32 3, i32 0, i32 poison>
  %164 = shufflevector <2 x float> %125, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %165 = shufflevector <4 x float> %163, <4 x float> %164, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %166 = fmul <4 x float> %165, %162
  %167 = shufflevector <2 x float> %119, <2 x float> %120, <4 x i32> <i32 0, i32 1, i32 3, i32 poison>
  %168 = shufflevector <4 x float> %167, <4 x float> %164, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %169 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %168, <4 x float> %95, <4 x float> %166) ; 6 uses
  %170 = shufflevector <4 x float> %169, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %171 = shufflevector <4 x float> %169, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.gm = insertelement <2 x float> %171, float 0.000000e+00, i64 1 ; 2 uses
  %172 = shufflevector <2 x float> %i.ei, <2 x float> %125, <2 x i32> <i32 1, i32 2>
  %173 = shufflevector <4 x float> %162, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.gn = fmul <2 x float> %172, %173
  %174 = shufflevector <2 x float> %125, <2 x float> %i.ei, <2 x i32> <i32 1, i32 3>
  %i.go = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %174, <2 x float> %i.dv, <2 x float> %i.gn) ; 3 uses
  %175 = shufflevector <4 x float> %169, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %176 = shufflevector <2 x float> %175, <2 x float> %i.go, <2 x i32> <i32 0, i32 2>
  %i.gp = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.go, <2 x i32> <i32 3, i32 1> ; 2 uses
  br i1 %i.bn, label %bb.g, label %.preheader661

bb.g:                                             ; preds = %.preheader662
  %177 = shufflevector <4 x float> %169, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %178 = shufflevector <2 x float> %i.go, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %179 = shufflevector <4 x float> %177, <4 x float> %178, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %180 = fmul <4 x float> %90, %179               ; 3 uses
  %181 = shufflevector <4 x float> %180, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %182 = shufflevector <4 x float> %180, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %183 = shufflevector <2 x float> %182, <2 x float> %i.gp, <2 x i32> <i32 0, i32 3>
  %184 = shufflevector <4 x float> %180, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.gq = extractelement <4 x float> %169, i64 1
  %i.gr = fmul float %.0649, %i.gq
  %.sroa.0747.4.vec.insert759 = insertelement <2 x float> %184, float %i.gr, i64 1
  %i.gs = extractelement <4 x float> %169, i64 2
  %i.gt = fmul float %.0649, %i.gs
  %.sroa.16.8.vec.insert766 = insertelement <2 x float> %i.gm, float %i.gt, i64 0
  br label %.preheader661

.preheader661:                                    ; preds = %bb.g, %.preheader662
  %.sroa.16.1 = phi <2 x float> [ %.sroa.16.8.vec.insert766, %bb.g ], [ %i.gm, %.preheader662 ]
  %.sroa.0747.1 = phi <2 x float> [ %.sroa.0747.4.vec.insert759, %bb.g ], [ %170, %.preheader662 ]
  %.sroa.19.1 = phi <2 x float> [ %183, %bb.g ], [ %i.gp, %.preheader662 ]
  %.sroa.0713.1 = phi <2 x float> [ %181, %bb.g ], [ %176, %.preheader662 ]
  %i.gu = sext i32 %i.dr to i64                   ; 6 uses
  %i.gv = shl nsw i64 %i.gu, 2                    ; 2 uses
  %scevgep680 = getelementptr i8, ptr %i.ff, i64 %i.gv ; 2 uses
  store <2 x float> %.sroa.0747.1, ptr %scevgep680, align 4, !tbaa !12
  %.sroa.16.0.scevgep680.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep680, i64 8
  %.sroa.16.0.vec.extract763 = extractelement <2 x float> %.sroa.16.1, i64 0
  store float %.sroa.16.0.vec.extract763, ptr %.sroa.16.0.scevgep680.sroa_idx, align 4, !tbaa !12
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.gu
  %i.gx = fneg <2 x float> %.sroa.0713.1
  store <2 x float> %i.gx, ptr %i.gw, align 4, !tbaa !12
  %.sroa.19.8.vec.extract746 = extractelement <2 x float> %.sroa.19.1, i64 0
  %i.gy = fneg float %.sroa.19.8.vec.extract746
  %i.gz = add nsw i64 %i.gu, 2                    ; 2 uses
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.gz
  store float %i.gy, ptr %i.ha, align 4, !tbaa !12
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 772 ; 3 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !63
  %i.hd = and i32 %i.hc, 8
  %.not263 = icmp eq i32 %i.hd, 0
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.in = select i1 %.not263, ptr %i.hf, ptr %i.he
  %i.hg = load float, ptr %.in, align 4, !tbaa !12 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.hi = load i8, ptr %i.hh, align 8, !tbaa !35, !range !34, !noundef !31
  %i.hj = trunc nuw i8 %i.hi to i1
  br i1 %i.hj, label %.preheader661._crit_edge, label %.preheader660

.preheader661._crit_edge:                         ; preds = %.preheader661
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !64
  br label %bb.h

.preheader660:                                    ; preds = %.preheader661
  %i.hk = load float, ptr %1, align 8, !tbaa !65
  %i.hl = fmul float %i.hg, %i.hk                 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !66 ; 4 uses
  store <2 x float> %.sroa.0697.0, ptr %i.hn, align 4, !tbaa !12
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  store float %.sink, ptr %.sroa.13.0..sroa_idx, align 4, !tbaa !12
  %scevgep684 = getelementptr i8, ptr %i.hn, i64 %i.gg ; 2 uses
  store <2 x float> %139, ptr %scevgep684, align 4, !tbaa !12
  %.sroa.8.0.scevgep684.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep684, i64 8
  %i.ho = extractelement <2 x float> %137, i64 0  ; 2 uses
  store float %i.ho, ptr %.sroa.8.0.scevgep684.sroa_idx, align 4, !tbaa !12
  %scevgep686 = getelementptr i8, ptr %i.hn, i64 %i.gv ; 2 uses
  store <2 x float> %i.dv, ptr %scevgep686, align 4, !tbaa !12
  %.sroa.15.0.scevgep686.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep686, i64 8
  store float %98, ptr %.sroa.15.0.scevgep686.sroa_idx, align 4, !tbaa !12
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !67 ; 9 uses
  %i.hr = extractelement <2 x float> %i.fj, i64 0
  store float %i.hr, ptr %i.hq, align 4, !tbaa !12
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  store float %140, ptr %i.hs, align 4, !tbaa !12
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  store float %141, ptr %i.ht, align 4, !tbaa !12
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.hq, i64 %i.gf
  store float %i.fn, ptr %i.hu, align 4, !tbaa !12
  %i.hv = getelementptr [4 x i8], ptr %i.hq, i64 %i.gf
  %i.hw = getelementptr i8, ptr %i.hv, i64 4
  %i.hx = extractelement <2 x float> %148, i64 0
  store float %i.hx, ptr %i.hw, align 4, !tbaa !12
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.hq, i64 %i.gk
  %i.hz = extractelement <2 x float> %148, i64 1
  store float %i.hz, ptr %i.hy, align 4, !tbaa !12
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.hq, i64 %i.gu
  %185 = extractelement <4 x float> %161, i64 1
  store float %185, ptr %i.ia, align 4, !tbaa !12
  %i.ib = getelementptr [4 x i8], ptr %i.hq, i64 %i.gu
  %i.ic = getelementptr i8, ptr %i.ib, i64 4
  %i.id = extractelement <4 x float> %161, i64 2
  store float %i.id, ptr %i.ic, align 4, !tbaa !12
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.hq, i64 %i.gz
  %i.if = extractelement <4 x float> %161, i64 0
  store float %i.if, ptr %i.ie, align 4, !tbaa !12
  %i.ig = fmul float %i.cv, %i.fc
  %i.ih = tail call float @llvm.fmuladd.f32(float %i.fd, float %86, float %i.ig)
  %i.ii = tail call noundef float @llvm.fmuladd.f32(float %.sink, float %i.cw, float %i.ih)
  %i.ij = fmul float %i.ii, %i.hl
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !64 ; 4 uses
  store float %i.ij, ptr %i.il, align 4, !tbaa !12
  %foldExtExtBinop827 = fmul <2 x float> %foldExtExtBinop804, %138
  %186 = extractelement <2 x float> %foldExtExtBinop827, i64 0
  %i.im = tail call float @llvm.fmuladd.f32(float %.sroa.0697.4.vec.extract705, float %86, float %186)
  %i.in = tail call noundef float @llvm.fmuladd.f32(float %i.ho, float %i.cw, float %i.im)
  %i.io = fmul float %i.in, %i.hl
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.il, i64 %i.gf
  store float %i.io, ptr %i.ip, align 4, !tbaa !12
  %187 = fmul float %i.cv, %96
  %i.iq = tail call float @llvm.fmuladd.f32(float %97, float %86, float %187)
  %i.ir = tail call noundef float @llvm.fmuladd.f32(float %98, float %i.cw, float %i.iq)
  %i.is = fmul float %i.ir, %i.hl
  %i.it = getelementptr inbounds [4 x i8], ptr %i.il, i64 %i.gu
  store float %i.is, ptr %i.it, align 4, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %.preheader661._crit_edge, %.preheader660
  %i.iu = phi ptr [ %.pre, %.preheader661._crit_edge ], [ %i.il, %.preheader660 ] ; 2 uses
  %i.iv = mul nsw i32 %i.b, 3                     ; 3 uses
  %i.iw = shl nsw i32 %i.b, 2                     ; 3 uses
  %i.ix = sext i32 %i.iv to i64                   ; 3 uses
  %i.iy = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.ix
  store float %i.fd, ptr %i.iy, align 4, !tbaa !12
  %i.iz = add nsw i32 %i.iv, 1
  %i.ja = sext i32 %i.iz to i64                   ; 2 uses
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.ja
  store float %i.fc, ptr %i.jb, align 4, !tbaa !12
  %i.jc = add nsw i32 %i.iv, 2
  %i.jd = sext i32 %i.jc to i64                   ; 2 uses
  %i.je = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.jd
  store float %.sink, ptr %i.je, align 4, !tbaa !12
  %i.jf = sext i32 %i.iw to i64                   ; 3 uses
  %i.jg = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.jf
  store float %.sroa.0697.4.vec.extract705, ptr %i.jg, align 4, !tbaa !12
  %i.jh = or disjoint i32 %i.iw, 1
  %i.ji = sext i32 %i.jh to i64                   ; 2 uses
  %i.jj = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.ji
  %188 = extractelement <2 x float> %138, i64 0   ; 2 uses
  store float %188, ptr %i.jj, align 4, !tbaa !12
  %i.jk = or disjoint i32 %i.iw, 2
  %i.jl = sext i32 %i.jk to i64                   ; 2 uses
  %i.jm = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.jl
  %i.jn = extractelement <2 x float> %137, i64 0  ; 2 uses
  store float %i.jn, ptr %i.jm, align 4, !tbaa !12
  %i.jo = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.ix
  %i.jp = extractelement <2 x float> %i.fj, i64 0
  store float %i.jp, ptr %i.jo, align 4, !tbaa !12
  %i.jq = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.ja
  store float %140, ptr %i.jq, align 4, !tbaa !12
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.jd
  store float %141, ptr %i.jr, align 4, !tbaa !12
  %i.js = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.jf
  store float %i.fn, ptr %i.js, align 4, !tbaa !12
  %i.jt = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.ji
  %i.ju = extractelement <2 x float> %148, i64 0
  store float %i.ju, ptr %i.jt, align 4, !tbaa !12
  %i.jv = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.jl
  %i.jw = extractelement <2 x float> %148, i64 1
  store float %i.jw, ptr %i.jv, align 4, !tbaa !12
  %i.jx = load float, ptr %1, align 8, !tbaa !65
  %i.jy = fmul float %i.hg, %i.jx                 ; 2 uses
  %i.jz = extractelement <2 x float> %i.cg, i64 1 ; 2 uses
  %i.ka = fneg float %i.jz
  %i.kb = extractelement <2 x float> %i.cu, i64 0 ; 2 uses
  %i.kc = fmul float %i.kb, %i.ka
  %i.kd = extractelement <2 x float> %i.cu, i64 1 ; 2 uses
  %i.ke = extractelement <2 x float> %i.cg, i64 0 ; 2 uses
  %i.kf = tail call float @llvm.fmuladd.f32(float %i.ke, float %i.kd, float %i.kc) ; 2 uses
  %i.kg = fneg float %i.kd
  %i.kh = fmul float %24, %i.kg
  %i.ki = tail call float @llvm.fmuladd.f32(float %i.kb, float %67, float %i.kh) ; 2 uses
  %i.kj = fneg float %67
  %i.kk = fmul float %i.ke, %i.kj
  %i.kl = tail call float @llvm.fmuladd.f32(float %24, float %i.jz, float %i.kk) ; 2 uses
  %i.km = fmul float %i.ki, %i.fc
  %i.kn = tail call float @llvm.fmuladd.f32(float %i.kf, float %i.fd, float %i.km)
  %i.ko = tail call noundef float @llvm.fmuladd.f32(float %i.kl, float %.sink, float %i.kn)
  %i.kp = fmul float %i.ko, %i.jy
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.kr = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %i.ix
  store float %i.kp, ptr %i.kr, align 4, !tbaa !12
  %i.ks = fmul float %i.ki, %188
  %i.kt = tail call float @llvm.fmuladd.f32(float %i.kf, float %.sroa.0697.4.vec.extract705, float %i.ks)
  %i.ku = tail call noundef float @llvm.fmuladd.f32(float %i.kl, float %i.jn, float %i.kt)
  %i.kv = fmul float %i.ku, %i.jy
  %i.kw = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %i.jf
  store float %i.kv, ptr %i.kw, align 4, !tbaa !12
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 740
  %i.ky = load i8, ptr %i.kx, align 4, !tbaa !56, !range !34, !noundef !31
  %.not264 = icmp eq i8 %i.ky, 0                  ; 3 uses
  br i1 %.not264, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.h
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.la = load float, ptr %i.kz, align 4, !tbaa !68
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 756
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !29
  %i.ld = fmul float %i.la, %i.lc                 ; 2 uses
  %i.le = fcmp ogt float %i.ld, 0.000000e+00
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 761
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !57, !range !34, !noundef !31
  %i.lh = trunc nuw i8 %i.lg to i1
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 761
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !57, !range !34, !noundef !31
  %i.lk = trunc nuw i8 %i.lj to i1
  br i1 %i.lk, label %bb.j, label %bb.ad

bb.j:                                             ; preds = %.thread, %bb.i
  %i.ll = phi i1 [ %i.lh, %.thread ], [ true, %bb.i ]
  %.0254654 = phi i1 [ %i.le, %.thread ], [ false, %bb.i ] ; 3 uses
  %.0255653 = phi float [ %i.ld, %.thread ], [ 0.000000e+00, %bb.i ]
  %i.lm = load i32, ptr %i.a, align 8, !tbaa !60
  %i.ln = mul nsw i32 %i.lm, 5                    ; 3 uses
  %i.lo = sext i32 %i.ln to i64                   ; 11 uses
  %i.lp = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.lo
  store float %97, ptr %i.lp, align 4, !tbaa !12
  %i.lq = add nsw i32 %i.ln, 1
  %i.lr = sext i32 %i.lq to i64                   ; 2 uses
  %i.ls = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.lr
  store float %96, ptr %i.ls, align 4, !tbaa !12
  %i.lt = add nsw i32 %i.ln, 2
  %i.lu = sext i32 %i.lt to i64                   ; 2 uses
  %i.lv = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.lu
  store float %98, ptr %i.lv, align 4, !tbaa !12
  %i.lw = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.lo
  %189 = extractelement <4 x float> %161, i64 1
  store float %189, ptr %i.lw, align 4, !tbaa !12
  %i.lx = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.lr
  %i.ly = extractelement <4 x float> %161, i64 2
  store float %i.ly, ptr %i.lx, align 4, !tbaa !12
  %i.lz = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.lu
  %i.ma = extractelement <4 x float> %161, i64 0
  store float %i.ma, ptr %i.lz, align 4, !tbaa !12
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.mc = tail call noundef float @_ZNK14btAngularLimit6getLowEv(ptr noundef nonnull align 4 dereferenceable(29) %i.mb) ; 2 uses
  %i.md = tail call noundef float @_ZNK14btAngularLimit7getHighEv(ptr noundef nonnull align 4 dereferenceable(29) %i.mb) ; 2 uses
  %i.me = fcmp une float %i.mc, %i.md             ; 2 uses
  %or.cond268.not = or i1 %.not264, %i.me
  %spec.select = select i1 %or.cond268.not, i1 %i.ll, i1 false
  %i.mf = load ptr, ptr %i.kq, align 8, !tbaa !64 ; 2 uses
  %i.mg = getelementptr inbounds [4 x i8], ptr %i.mf, i64 %i.lo
  store float 0.000000e+00, ptr %i.mg, align 4, !tbaa !12
  %i.mh = load i32, ptr %i.hb, align 4, !tbaa !63 ; 2 uses
  %i.mi = and i32 %i.mh, 2
  %.not265 = icmp eq i32 %i.mi, 0
  br i1 %.not265, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 788
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !69
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ml = phi float [ %i.mk, %bb.k ], [ %i.hg, %bb.j ] ; 2 uses
  br i1 %spec.select, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.mm = and i32 %i.mh, 4
  %.not266 = icmp eq i32 %i.mm, 0
  br i1 %.not266, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.mo = load float, ptr %i.mn, align 8, !tbaa !70
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !71
  %i.mr = getelementptr inbounds [4 x i8], ptr %i.mq, i64 %i.lo
  store float %i.mo, ptr %i.mr, align 4, !tbaa !12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.mt = load float, ptr %i.ms, align 8, !tbaa !50
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.mv = load float, ptr %i.mu, align 8, !tbaa !72
  %i.mw = load float, ptr %1, align 8, !tbaa !65
  %i.mx = fmul float %i.ml, %i.mw
  %i.my = tail call noundef float @_ZN17btTypedConstraint14getMotorFactorEfffff(ptr noundef nonnull align 8 dereferenceable(72) %0, float noundef %i.mt, float noundef %i.mc, float noundef %i.md, float noundef %i.mv, float noundef %i.mx)
  %i.mz = load float, ptr %i.mu, align 8, !tbaa !72
  %i.na = fmul float %i.my, %i.mz
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 756
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !29
  %i.nd = load ptr, ptr %i.kq, align 8, !tbaa !64 ; 2 uses
  %i.ne = getelementptr inbounds [4 x i8], ptr %i.nd, i64 %i.lo ; 2 uses
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !12
  %i.ng = tail call float @llvm.fmuladd.f32(float %i.na, float %i.nc, float %i.nf)
  store float %i.ng, ptr %i.ne, align 4, !tbaa !12
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 708 ; 2 uses
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !73
  %i.nj = fneg float %i.ni
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !74
  %i.nm = getelementptr inbounds [4 x i8], ptr %i.nl, i64 %i.lo
  store float %i.nj, ptr %i.nm, align 4, !tbaa !12
  %i.nn = load float, ptr %i.nh, align 4, !tbaa !73
  %i.no = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !75
  %i.nq = getelementptr inbounds [4 x i8], ptr %i.np, i64 %i.lo
  store float %i.nn, ptr %i.nq, align 4, !tbaa !12
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.nr = phi ptr [ %i.nd, %bb.o ], [ %i.mf, %bb.l ]
  br i1 %.not264, label %bb.ad, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ns = load float, ptr %1, align 8, !tbaa !65
  %i.nt = fmul float %i.ml, %i.ns
  %i.nu = getelementptr inbounds [4 x i8], ptr %i.nr, i64 %i.lo ; 7 uses
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !12
  %i.nw = tail call float @llvm.fmuladd.f32(float %i.nt, float %.0255653, float %i.nv)
  store float %i.nw, ptr %i.nu, align 4, !tbaa !12
  %i.nx = load i32, ptr %i.hb, align 4, !tbaa !63
  %i.ny = and i32 %i.nx, 1
  %.not267 = icmp eq i32 %i.ny, 0
  br i1 %.not267, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.oa = load float, ptr %i.nz, align 8, !tbaa !76
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !71
  %i.od = getelementptr inbounds [4 x i8], ptr %i.oc, i64 %i.lo
  store float %i.oa, ptr %i.od, align 4, !tbaa !12
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.oe = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !74
  %i.og = getelementptr inbounds [4 x i8], ptr %i.of, i64 %i.lo
  br i1 %i.me, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %. = select i1 %.0254654, float 0.000000e+00, float f0xFF7FFFFF
  %.802 = select i1 %.0254654, float f0x7F7FFFFF, float 0.000000e+00
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink801 = phi float [ %., %bb.t ], [ f0xFF7FFFFF, %bb.s ]
  %.sink798 = phi float [ %.802, %bb.t ], [ f0x7F7FFFFF, %bb.s ]
  store float %.sink801, ptr %i.og, align 4, !tbaa !12
  %.sink800.in = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sink800 = load ptr, ptr %.sink800.in, align 8, !tbaa !75
  %i.oh = getelementptr inbounds [4 x i8], ptr %.sink800, i64 %i.lo
  store float %.sink798, ptr %i.oh, align 4, !tbaa !12
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.oj = load float, ptr %i.oi, align 8, !tbaa !15 ; 3 uses
  %i.ok = fcmp ogt float %i.oj, 0.000000e+00
  br i1 %i.ok, label %bb.v, label %._crit_edge

._crit_edge:                                      ; preds = %bb.u
  %.pre791 = load float, ptr %i.nu, align 4, !tbaa !12
  br label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.ol = load float, ptr %4, align 4, !tbaa !12
  %i.om = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.on = load float, ptr %i.om, align 4, !tbaa !12
  %i.oo = fmul float %96, %i.on
  %i.op = tail call float @llvm.fmuladd.f32(float %i.ol, float %97, float %i.oo)
  %i.oq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.or = load float, ptr %i.oq, align 4, !tbaa !12
  %i.os = tail call noundef float @llvm.fmuladd.f32(float %i.or, float %98, float %i.op)
  %i.ot = load float, ptr %5, align 4, !tbaa !12
  %i.ou = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ov = load float, ptr %i.ou, align 4, !tbaa !12
  %i.ow = fmul float %96, %i.ov
  %i.ox = tail call float @llvm.fmuladd.f32(float %i.ot, float %97, float %i.ow)
  %i.oy = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !12
  %i.pa = tail call noundef float @llvm.fmuladd.f32(float %i.oz, float %98, float %i.ox)
  %i.pb = fsub float %i.os, %i.pa                 ; 4 uses
  %.pre792 = load float, ptr %i.nu, align 4, !tbaa !12 ; 6 uses
  br i1 %.0254654, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.pc = fcmp olt float %i.pb, 0.000000e+00
  br i1 %i.pc, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.pd = fneg float %i.oj
  %i.pe = fmul nnan float %i.pb, %i.pd            ; 3 uses
  %i.pf = fcmp ogt float %i.pe, %.pre792
  br i1 %i.pf, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  store float %i.pe, ptr %i.nu, align 4, !tbaa !12
  br label %bb.ac

bb.z:                                             ; preds = %bb.v
  %i.pg = fcmp ogt float %i.pb, 0.000000e+00
  br i1 %i.pg, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.ph = fneg float %i.oj
  %i.pi = fmul nnan float %i.pb, %i.ph            ; 3 uses
  %i.pj = fcmp olt float %i.pi, %.pre792
  br i1 %i.pj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store float %i.pi, ptr %i.nu, align 4, !tbaa !12
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge, %bb.w, %bb.z, %bb.y, %bb.x, %bb.ab, %bb.aa
  %i.pk = phi float [ %.pre791, %._crit_edge ], [ %.pre792, %bb.w ], [ %.pre792, %bb.z ], [ %i.pe, %bb.y ], [ %.pre792, %bb.x ], [ %i.pi, %bb.ab ], [ %.pre792, %bb.aa ]
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 724
  %i.pm = load float, ptr %i.pl, align 4, !tbaa !77
  %i.pn = fmul float %i.pm, %i.pk
  store float %i.pn, ptr %i.nu, align 4, !tbaa !12
  br label %bb.ad

bb.ad:                                            ; preds = %bb.p, %bb.ac, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17btHingeConstraint16getInfo2InternalEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.g = load float, ptr %i.f, align 8, !tbaa !12, !noalias !129 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load float, ptr %i.h, align 4, !tbaa !12, !noalias !129 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.k = load float, ptr %i.j, align 4, !tbaa !12, !noalias !129 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.m = load float, ptr %i.l, align 8, !tbaa !12, !noalias !129 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.o = load float, ptr %i.n, align 8, !tbaa !12, !noalias !129 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.q = load float, ptr %i.p, align 8, !tbaa !12, !noalias !129 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.u = load float, ptr %i.t, align 4, !tbaa !12, !noalias !129 ; 3 uses
  %i.v = load <2 x float>, ptr %2, align 4, !tbaa !12, !noalias !129 ; 4 uses
  %i.w = load float, ptr %i.e, align 4, !tbaa !12, !noalias !129 ; 2 uses
  %i.x = load <2 x float>, ptr %i.r, align 4, !tbaa !12, !noalias !129 ; 4 uses
  %i.y = load float, ptr %i.s, align 4, !tbaa !12, !noalias !129 ; 2 uses
  %i.z = shufflevector <2 x float> %i.v, <2 x float> %i.x, <2 x i32> <i32 1, i32 3>
  %i.aa = shufflevector <2 x float> %i.v, <2 x float> %i.x, <2 x i32> <i32 0, i32 2>
  %i.ab = insertelement <2 x float> poison, float %i.k, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ad = insertelement <2 x float> poison, float %i.i, i64 0
  %i.ae = insertelement <2 x float> %i.ad, float %i.u, i64 1
  %i.af = insertelement <4 x float> poison, float %i.w, i64 0
  %i.ag = insertelement <4 x float> %i.af, float %i.y, i64 1
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ai = shufflevector <2 x float> %i.v, <2 x float> %i.x, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.am = load float, ptr %i.al, align 4, !tbaa !12, !noalias !129 ; 4 uses
  %i.an = load <2 x float>, ptr %i.c, align 8, !tbaa !12, !noalias !129 ; 2 uses
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ap = shufflevector <2 x float> %i.an, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 1> ; 2 uses
  %i.aq = insertelement <4 x float> %i.ap, float %i.m, i64 1
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.as = insertelement <4 x float> %i.ap, float %i.g, i64 0
  %i.at = insertelement <4 x float> %i.as, float %i.q, i64 2
  %i.au = insertelement <4 x float> poison, float %i.u, i64 0
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ax = load float, ptr %i.aw, align 8, !tbaa !12, !noalias !130 ; 2 uses
  %i.ay = load <2 x float>, ptr %i.aj, align 4, !tbaa !12, !noalias !129 ; 2 uses
  %i.az = load float, ptr %i.ak, align 4, !tbaa !12, !noalias !129
  %i.ba = load <2 x float>, ptr %i.d, align 8, !tbaa !12, !noalias !129 ; 3 uses
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bc = fmul <2 x float> %i.bb, %i.z
  %i.bd = shufflevector <2 x float> %i.ba, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.be = insertelement <4 x float> %i.bd, float %i.o, i64 1
  %i.bf = shufflevector <4 x float> %i.be, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bg = fmul <4 x float> %i.bf, %i.ah
  %i.bh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.aa, <2 x float> %i.bc)
  %i.bi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ae, <2 x float> %i.bh) ; 4 uses
  %i.bj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ar, <4 x float> %i.ai, <4 x float> %i.bg) ; 3 uses
  %i.bk = extractelement <4 x float> %i.bj, i64 0
  %i.bl = tail call noundef float @llvm.fmuladd.f32(float %i.g, float %i.i, float %i.bk) ; 3 uses
  %i.bm = extractelement <4 x float> %i.bj, i64 2
  %i.bn = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.i, float %i.bm) ; 6 uses
  %i.bo = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bp = shufflevector <2 x float> %i.ay, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0> ; 2 uses
  %i.bq = shufflevector <4 x float> %i.au, <4 x float> %i.bp, <4 x i32> <i32 0, i32 4, i32 0, i32 4>
  %i.br = shufflevector <2 x float> %i.ba, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bs = shufflevector <2 x float> %i.bo, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.bt = fmul <4 x float> %i.br, %i.bs
  %i.bu = shufflevector <4 x float> %i.bj, <4 x float> %i.bt, <4 x i32> <i32 1, i32 4, i32 3, i32 5>
  %i.bv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.at, <4 x float> %i.bq, <4 x float> %i.bu) ; 4 uses
  %i.bw = extractelement <4 x float> %i.bv, i64 1
  %i.bx = tail call noundef float @llvm.fmuladd.f32(float %i.g, float %i.am, float %i.bw) ; 3 uses
  %i.by = extractelement <4 x float> %i.bv, i64 3
  %i.bz = tail call noundef float @llvm.fmuladd.f32(float %i.k, float %i.am, float %i.by) ; 3 uses
  %i.ca = load <2 x float>, ptr %i.av, align 8, !tbaa !12, !noalias !130 ; 2 uses
  %i.cb = shufflevector <2 x float> %i.ay, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cc = insertelement <4 x float> %i.cb, float %i.w, i64 1
  %i.cd = insertelement <4 x float> %i.cc, float %i.y, i64 2
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.cf = insertelement <2 x float> %i.ca, float %i.o, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ch = fmul <4 x float> %i.ce, %i.cg
  %i.ci = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cj = insertelement <2 x float> %i.ci, float %i.m, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.cl = shufflevector <2 x float> %i.v, <2 x float> %i.x, <4 x i32> <i32 poison, i32 0, i32 2, i32 poison>
  %i.cm = shufflevector <4 x float> %i.bp, <4 x float> %i.cl, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.cn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ck, <4 x float> %i.cm, <4 x float> %i.ch) ; 3 uses
  %i.co = extractelement <4 x float> %i.cn, i64 0
  %i.cp = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.am, float %i.co) ; 6 uses
  %i.cq = extractelement <4 x float> %i.cn, i64 1
  %i.cr = tail call noundef float @llvm.fmuladd.f32(float %i.ax, float %i.i, float %i.cq)
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !12, !noalias !130 ; 2 uses
  %i.cu = fadd float %i.ct, %i.cr                 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !12, !noalias !131 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.cz = load float, ptr %i.cy, align 8, !tbaa !12, !noalias !131
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.db = load float, ptr %i.da, align 8, !tbaa !12, !noalias !131
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.dd = load float, ptr %i.dc, align 8, !tbaa !12, !noalias !131 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 692
  %i.dl = load <2 x float>, ptr %3, align 4, !tbaa !12, !noalias !131 ; 2 uses
  %i.dm = load <2 x float>, ptr %i.de, align 4, !tbaa !12, !noalias !131 ; 3 uses
  %i.dn = load <2 x float>, ptr %i.dh, align 4, !tbaa !12, !noalias !131 ; 2 uses
  %i.do = load <2 x float>, ptr %i.dj, align 8, !tbaa !12, !noalias !132 ; 2 uses
  %i.dp = load float, ptr %i.dk, align 4, !tbaa !12, !noalias !132
  %i.dq = shufflevector <2 x float> %i.dl, <2 x float> %i.dm, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.dr = shufflevector <2 x float> %i.dn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ds = shufflevector <4 x float> %i.dq, <4 x float> %i.dr, <4 x i32> <i32 0, i32 1, i32 5, i32 0>
  %i.dt = insertelement <2 x float> %i.do, float %i.db, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dv = fmul <4 x float> %i.ds, %i.du
  %i.dw = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dx = insertelement <2 x float> %i.dw, float %i.cz, i64 0
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dz = shufflevector <2 x float> %i.dl, <2 x float> %i.dm, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ea = shufflevector <4 x float> %i.dz, <4 x float> %i.dr, <4 x i32> <i32 0, i32 1, i32 4, i32 0>
  %i.eb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dy, <4 x float> %i.ea, <4 x float> %i.dv) ; 3 uses
  %i.ec = extractelement <4 x float> %i.eb, i64 1
  %i.ed = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.ee = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ef = shufflevector <4 x float> %i.eb, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.eh = load float, ptr %i.eg, align 8, !tbaa !12, !noalias !132 ; 2 uses
  %i.ei = extractelement <4 x float> %i.eb, i64 3
  %i.ej = tail call noundef float @llvm.fmuladd.f32(float %i.eh, float %i.cx, float %i.ei)
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.el = load float, ptr %i.ek, align 4, !tbaa !12, !noalias !132
  %i.em = fadd float %i.el, %i.ej                 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ep = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.eq = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> zeroinitializer
  %i.er = insertelement <2 x float> poison, float %i.u, i64 0
  %i.es = insertelement <2 x float> %i.er, float %i.am, i64 1
  %i.et = shufflevector <4 x float> %i.cn, <4 x float> poison, <2 x i32> <i32 2, i32 3>
end_hunk_0
begin_hunk_1_@_ZNK17btHingeConstraint9serializeEPvP12btSerializer:bb.a
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 220
  %i.dp = load <2 x float>, ptr %i.dn, align 8, !tbaa !12
  store <2 x float> %i.dp, ptr %i.do, align 4, !tbaa !12
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.dr = load float, ptr %i.dq, align 8, !tbaa !15
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 228
  store float %i.dr, ptr %i.ds, align 4, !tbaa !145
  ret ptr @.str
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK17btHingeConstraint8getFlagsEv(ptr noundef nonnull align 8 dereferenceable(792) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 772
  %i.b = load i32, ptr %i.a, align 4, !tbaa !63
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17btTypedConstraintD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN33btHingeAccumulatedAngleConstraintD0Ev(ptr noundef nonnull align 8 dereferenceable(796) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN33btHingeAccumulatedAngleConstraintdlEPv.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #21
  unreachable

_ZN33btHingeAccumulatedAngleConstraintdlEPv.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @fmodf(float noundef, float noundef) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

declare noundef float @_ZNK14btAngularLimit6getLowEv(ptr noundef nonnull align 4 dereferenceable(29)) local_unnamed_addr #1

declare noundef float @_ZNK14btAngularLimit7getHighEv(ptr noundef nonnull align 4 dereferenceable(29)) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 7 uses
  %i.b = load float, ptr %0, align 4, !tbaa !12   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !12 ; 3 uses
  %i.e = fadd float %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load float, ptr %i.f, align 4, !tbaa !12 ; 3 uses
  %i.h = fadd float %i.e, %i.g                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.i = fcmp ogt float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = fadd float %i.h, 1.000000e+00
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = tail call noundef float @sqrtf(float noundef %i.l) #20 ; 2 uses
  %i.r = fdiv float 5.000000e-01, %i.q
  %i.s = load float, ptr %i.n, align 4, !tbaa !12
  %i.t = load float, ptr %i.m, align 4, !tbaa !12
  %i.u = load float, ptr %i.j, align 4, !tbaa !12
  %i.v = load float, ptr %i.k, align 4, !tbaa !12
  %i.w = load float, ptr %i.o, align 4, !tbaa !12
  %i.x = load float, ptr %i.p, align 4, !tbaa !12
  %i.y = fsub float %i.v, %i.x
  %i.z = fsub float %i.w, %i.u
  %i.aa = fsub float %i.t, %i.s
  %i.ab = insertelement <4 x float> poison, float %i.r, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %i.q, i64 3
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ae = insertelement <4 x float> <float poison, float poison, float poison, float 5.000000e-01>, float %i.aa, i64 0
  %i.af = insertelement <4 x float> %i.ae, float %i.z, i64 1
  %i.ag = insertelement <4 x float> %i.af, float %i.y, i64 2
  %i.ah = fmul <4 x float> %i.ad, %i.ag
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ai = fcmp olt float %i.b, %i.d
  %i.aj = fcmp olt float %i.d, %i.g
  %i.ak = select i1 %i.aj, i32 2, i32 1
  %i.al = fcmp olt float %i.b, %i.g
  %i.am = select i1 %i.al, i32 2, i32 0
  %i.an = select i1 %i.ai, i32 %i.ak, i32 %i.am
  %.fr = freeze i32 %i.an                         ; 3 uses
  %i.ao = add nuw nsw i32 %.fr, 1                 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 3
  %i.aq = select i1 %i.ap, i32 0, i32 %i.ao
  %i.ar = add nuw nsw i32 %.fr, 2
  %i.as = urem i32 %i.ar, 3
  %i.at = zext nneg i32 %.fr to i64               ; 5 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.at
  %i.aw = load float, ptr %i.av, align 4, !tbaa !12
  %i.ax = sext i32 %i.aq to i64                   ; 5 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ax ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ax
  %i.ba = load float, ptr %i.az, align 4, !tbaa !12
  %i.bb = fsub float %i.aw, %i.ba
  %i.bc = zext nneg i32 %i.as to i64              ; 5 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = load float, ptr %i.be, align 4, !tbaa !12
  %i.bg = fsub float %i.bb, %i.bf
  %i.bh = fadd float %i.bg, 1.000000e+00
  %i.bi = tail call noundef float @sqrtf(float noundef %i.bh) #20 ; 2 uses
  %i.bj = fmul float %i.bi, 5.000000e-01
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.at
  store float %i.bj, ptr %i.bk, align 4, !tbaa !12
  %i.bl = fdiv float 5.000000e-01, %i.bi          ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ax
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !12
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bc
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !12
  %i.bq = fsub float %i.bn, %i.bp
  %i.br = fmul float %i.bl, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float %i.br, ptr %i.bs, align 4, !tbaa !12
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.at
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !12
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ax
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !12
  %i.bx = fadd float %i.bu, %i.bw
  %i.by = fmul float %i.bl, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ax
  store float %i.by, ptr %i.bz, align 4, !tbaa !12
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.at
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !12
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bc
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !12
  %i.ce = fadd float %i.cb, %i.cd
  %i.cf = fmul float %i.bl, %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bc
  store float %i.cf, ptr %i.cg, align 4, !tbaa !12
  %i.ch = load <4 x float>, ptr %i.a, align 16, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ci = phi <4 x float> [ %i.ch, %bb.c ], [ %i.ah, %bb.b ]
  store <4 x float> %i.ci, ptr %1, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #16

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #17 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nofree noreturn }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nounwind }
attributes #21 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"vtable pointer", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"float", !5, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"bool", !5, i64 0}
!14 = !{!"_ZTS14btAngularLimit", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !13, i64 28}
!15 = !{!14, !11, i64 16}
!16 = !{!13, !13, i64 0}
!17 = !{!"_ZTS13btTypedObject", !6, i64 0}
!18 = !{!"any pointer", !5, i64 0}
!19 = !{!"p1 _ZTS11btRigidBody", !18, i64 0}
!20 = !{!"p1 _ZTS15btJointFeedback", !18, i64 0}
!21 = !{!"_ZTS17btTypedConstraint", !17, i64 8, !6, i64 12, !5, i64 16, !11, i64 24, !13, i64 28, !13, i64 29, !6, i64 32, !19, i64 40, !19, i64 48, !11, i64 56, !11, i64 60, !20, i64 64}
!22 = !{!"_ZTS11btMatrix3x3", !5, i64 0}
!23 = !{!"_ZTS9btVector3", !5, i64 0}
!24 = !{!"_ZTS11btTransform", !22, i64 0, !23, i64 48}
!25 = !{!"_ZTS17btHingeConstraint", !21, i64 0, !5, i64 72, !5, i64 324, !24, i64 576, !24, i64 640, !11, i64 704, !11, i64 708, !14, i64 712, !11, i64 744, !11, i64 748, !11, i64 752, !11, i64 756, !13, i64 760, !13, i64 761, !13, i64 762, !13, i64 763, !13, i64 764, !11, i64 768, !6, i64 772, !11, i64 776, !11, i64 780, !11, i64 784, !11, i64 788}
!26 = !{!25, !13, i64 764}
!27 = !{!5, !5, i64 0}
!28 = !{i64 0, i64 16, !27}
!29 = !{!25, !11, i64 756}
!30 = !{!21, !19, i64 40}
!31 = !{}
!32 = !{i64 8}
!33 = !{!25, !13, i64 762}
!34 = !{i8 0, i8 2}
!35 = !{!25, !13, i64 760}
!36 = !{!21, !19, i64 48}
!37 = !{!"p1 _ZTS17btBroadphaseProxy", !18, i64 0}
!38 = !{!"p1 _ZTS16btCollisionShape", !18, i64 0}
!39 = !{!"_ZTS18btAlignedAllocatorIPK17btCollisionObjectLj16EE"}
!40 = !{!"any p2 pointer", !18, i64 0}
!41 = !{!"p2 _ZTS17btCollisionObject", !40, i64 0}
!42 = !{!"_ZTS20btAlignedObjectArrayIPK17btCollisionObjectE", !39, i64 0, !6, i64 4, !6, i64 8, !41, i64 16, !13, i64 24}
!43 = !{!"_ZTS17btCollisionObject", !24, i64 8, !24, i64 72, !23, i64 136, !23, i64 152, !23, i64 168, !6, i64 184, !11, i64 188, !37, i64 192, !38, i64 200, !18, i64 208, !38, i64 216, !6, i64 224, !6, i64 228, !6, i64 232, !6, i64 236, !6, i64 240, !11, i64 244, !11, i64 248, !11, i64 252, !11, i64 256, !11, i64 260, !11, i64 264, !11, i64 268, !6, i64 272, !18, i64 280, !6, i64 288, !6, i64 292, !6, i64 296, !11, i64 300, !11, i64 304, !11, i64 308, !6, i64 312, !42, i64 320, !6, i64 352, !23, i64 356}
!44 = !{!"p1 _ZTS13btMotionState", !18, i64 0}
!45 = !{!"_ZTS18btAlignedAllocatorIP17btTypedConstraintLj16EE"}
!46 = !{!"p2 _ZTS17btTypedConstraint", !40, i64 0}
!47 = !{!"_ZTS20btAlignedObjectArrayIP17btTypedConstraintE", !45, i64 0, !6, i64 4, !6, i64 8, !46, i64 16, !13, i64 24}
!48 = !{!"_ZTS11btRigidBody", !43, i64 0, !22, i64 372, !23, i64 420, !23, i64 436, !11, i64 452, !23, i64 456, !23, i64 472, !23, i64 488, !23, i64 504, !23, i64 520, !23, i64 536, !11, i64 552, !11, i64 556, !13, i64 560, !11, i64 564, !11, i64 568, !11, i64 572, !11, i64 576, !11, i64 580, !11, i64 584, !44, i64 592, !47, i64 600, !6, i64 632, !6, i64 636, !23, i64 640, !23, i64 656, !23, i64 672, !23, i64 688, !23, i64 704, !23, i64 720, !6, i64 736, !6, i64 740}
!49 = !{!48, !11, i64 452}
!50 = !{!25, !11, i64 752}
!51 = !{!"_ZTS33btHingeAccumulatedAngleConstraint", !25, i64 0, !11, i64 792}
!52 = !{!51, !11, i64 792}
!53 = !{!"_ZTSN17btTypedConstraint17btConstraintInfo1E", !6, i64 0, !6, i64 4}
!54 = !{!53, !6, i64 0}
!55 = !{!53, !6, i64 4}
!56 = !{!14, !13, i64 28}
!57 = !{!25, !13, i64 761}
!58 = !{!"p1 float", !18, i64 0}
!59 = !{!"_ZTSN17btTypedConstraint17btConstraintInfo2E", !11, i64 0, !11, i64 4, !58, i64 8, !58, i64 16, !58, i64 24, !58, i64 32, !6, i64 40, !58, i64 48, !58, i64 56, !58, i64 64, !58, i64 72, !6, i64 80, !11, i64 84}
!60 = !{!59, !6, i64 40}
!61 = !{!59, !58, i64 16}
!62 = !{!59, !58, i64 32}
!63 = !{!25, !6, i64 772}
!64 = !{!59, !58, i64 48}
!65 = !{!59, !11, i64 0}
!66 = !{!59, !58, i64 8}
!67 = !{!59, !58, i64 24}
!68 = !{!14, !11, i64 20}
!69 = !{!25, !11, i64 788}
!70 = !{!25, !11, i64 776}
!71 = !{!59, !58, i64 56}
!72 = !{!25, !11, i64 704}
!73 = !{!25, !11, i64 708}
!74 = !{!59, !58, i64 64}
!75 = !{!59, !58, i64 72}
!76 = !{!25, !11, i64 784}
!77 = !{!14, !11, i64 12}
!78 = !{!25, !11, i64 780}
!79 = distinct !{!79, !"_ZNK11btMatrix3x39transposeEv"}
!80 = distinct !{!80, !79, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!81 = distinct !{!81, !"_ZNK11btMatrix3x39transposeEv"}
!82 = distinct !{!82, !81, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!83 = distinct !{!83, !100}
!84 = distinct !{!84, !"_ZNK11btMatrix3x39transposeEv"}
!85 = distinct !{!85, !84, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!86 = distinct !{!86, !"_ZNK11btMatrix3x39transposeEv"}
!87 = distinct !{!87, !86, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!88 = distinct !{!88, !"_ZNK11btMatrix3x39transposeEv"}
!89 = distinct !{!89, !88, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!90 = distinct !{!90, !"_ZNK11btMatrix3x39transposeEv"}
!91 = distinct !{!91, !90, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!92 = distinct !{!92, !"_ZNK11btMatrix3x39transposeEv"}
!93 = distinct !{!93, !92, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!94 = !{!21, !11, i64 56}
!95 = !{!25, !11, i64 768}
!96 = !{!80}
!97 = !{!82}
!98 = !{!"_ZTS15btJacobianEntry", !23, i64 0, !23, i64 16, !23, i64 32, !23, i64 48, !23, i64 64, !11, i64 80}
!99 = !{!98, !11, i64 80}
!100 = !{!"llvm.loop.mustprogress"}
!101 = !{!85}
!102 = !{!87}
!103 = !{!89}
!104 = !{!91}
!105 = !{!93}
!106 = !{!25, !11, i64 748}
!107 = !{!25, !11, i64 744}
!108 = !{!25, !13, i64 763}
!109 = distinct !{!109, !"_ZNK11btTransformmlERKS_"}
!110 = distinct !{!110, !109, !"_ZNK11btTransformmlERKS_: argument 0"}
!111 = distinct !{!111, !"_ZmlRK11btMatrix3x3S1_"}
!112 = distinct !{!112, !111, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!113 = distinct !{!113, !"_ZNK11btTransformmlERKS_"}
!114 = distinct !{!114, !113, !"_ZNK11btTransformmlERKS_: argument 0"}
!115 = distinct !{!115, !"_ZmlRK11btMatrix3x3S1_"}
!116 = distinct !{!116, !115, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!117 = !{!112, !110}
!118 = !{!110}
!119 = !{!116, !114}
!120 = !{!114}
!121 = distinct !{!121, !"_ZNK11btTransformmlERKS_"}
!122 = distinct !{!122, !121, !"_ZNK11btTransformmlERKS_: argument 0"}
!123 = distinct !{!123, !"_ZmlRK11btMatrix3x3S1_"}
!124 = distinct !{!124, !123, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!125 = distinct !{!125, !"_ZNK11btTransformmlERKS_"}
!126 = distinct !{!126, !125, !"_ZNK11btTransformmlERKS_: argument 0"}
!127 = distinct !{!127, !"_ZmlRK11btMatrix3x3S1_"}
!128 = distinct !{!128, !127, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!129 = !{!124, !122}
!130 = !{!122}
!131 = !{!128, !126}
!132 = !{!126}
!133 = !{!"p1 _ZTS20btRigidBodyFloatData", !18, i64 0}
!134 = !{!"p1 omnipotent char", !18, i64 0}
!135 = !{!"_ZTS21btTypedConstraintData", !133, i64 0, !133, i64 8, !134, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !11, i64 40, !11, i64 44, !6, i64 48, !6, i64 52, !11, i64 56, !6, i64 60}
!136 = !{!"_ZTS20btMatrix3x3FloatData", !5, i64 0}
!137 = !{!"_ZTS18btVector3FloatData", !5, i64 0}
!138 = !{!"_ZTS20btTransformFloatData", !136, i64 0, !137, i64 48}
!139 = !{!"_ZTS26btHingeConstraintFloatData", !135, i64 0, !138, i64 64, !138, i64 128, !6, i64 192, !6, i64 196, !6, i64 200, !11, i64 204, !11, i64 208, !11, i64 212, !11, i64 216, !11, i64 220, !11, i64 224, !11, i64 228}
!140 = !{!139, !6, i64 196}
!141 = !{!139, !6, i64 200}
!142 = !{!139, !6, i64 192}
!143 = !{!139, !11, i64 212}
!144 = !{!139, !11, i64 216}
!145 = !{!139, !11, i64 228}
end_hunk_1
