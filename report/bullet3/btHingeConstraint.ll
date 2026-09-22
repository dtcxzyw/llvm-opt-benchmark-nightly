Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btHingeConstraint?download=true
inline.NumInlined: 753
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN17btHingeConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E:bb.a
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
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.h = load float, ptr %i.g, align 4, !tbaa !12, !noalias !117 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.j = load float, ptr %i.i, align 8, !tbaa !12, !noalias !117 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.u = load float, ptr %i.t, align 4, !tbaa !12, !noalias !118
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = load float, ptr %i.w, align 4, !tbaa !12, !noalias !119 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.z = load float, ptr %i.y, align 8, !tbaa !12, !noalias !119 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !12, !noalias !119 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !12, !noalias !119 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.am = load <2 x float>, ptr %2, align 4, !tbaa !12, !noalias !117 ; 4 uses
  %i.an = load <2 x float>, ptr %i.k, align 4, !tbaa !12, !noalias !117 ; 4 uses
  %i.ao = load <2 x float>, ptr %i.c, align 4, !tbaa !12, !noalias !117 ; 4 uses
  %i.ap = load float, ptr %i.d, align 4, !tbaa !12, !noalias !117
  %i.aq = load <2 x float>, ptr %i.l, align 4, !tbaa !12, !noalias !117 ; 4 uses
  %i.ar = load float, ptr %i.m, align 4, !tbaa !12, !noalias !117
  %i.as = shufflevector <2 x float> %i.ao, <2 x float> %i.aq, <2 x i32> <i32 0, i32 2>
  %i.at = shufflevector <2 x float> %i.am, <2 x float> %i.an, <2 x i32> <i32 0, i32 2>
  %i.au = insertelement <2 x float> poison, float %i.h, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = shufflevector <2 x float> %i.ao, <2 x float> %i.aq, <2 x i32> <i32 1, i32 3>
  %i.ax = load <2 x float>, ptr %i.n, align 4, !tbaa !12, !noalias !117 ; 6 uses
  %i.ay = load float, ptr %i.r, align 4, !tbaa !12, !noalias !118
  %i.az = load float, ptr %i.q, align 8, !tbaa !12, !noalias !118
  %i.ba = load float, ptr %i.s, align 8, !tbaa !12, !noalias !118
  %i.bb = shufflevector <2 x float> %i.an, <2 x float> %i.ax, <2 x i32> <i32 1, i32 3>
  %i.bc = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.be = fmul <2 x float> %i.bb, %i.bd
  %i.bf = shufflevector <2 x float> %i.ax, <2 x float> %i.am, <2 x i32> <i32 1, i32 3>
  %i.bg = fmul <2 x float> %i.bf, %i.bd
  %i.bh = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bj = shufflevector <2 x float> %i.an, <2 x float> %i.ax, <2 x i32> <i32 0, i32 2>
  %i.bk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.bj, <2 x float> %i.be)
  %i.bl = shufflevector <2 x float> %i.ax, <2 x float> %i.am, <2 x i32> <i32 0, i32 2>
  %i.bm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.bl, <2 x float> %i.bg)
  %i.bn = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bp = load <2 x float>, ptr %i.v, align 4, !tbaa !12, !noalias !118 ; 3 uses
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.br = insertelement <2 x float> %i.bq, float %i.u, i64 1 ; 2 uses
  %i.bs = load float, ptr %i.ak, align 4, !tbaa !12, !noalias !120 ; 2 uses
  %i.bt = load <2 x float>, ptr %i.ae, align 4, !tbaa !12, !noalias !119 ; 3 uses
  %i.bu = load <2 x float>, ptr %i.ag, align 4, !tbaa !12, !noalias !119 ; 3 uses
  %i.bv = load float, ptr %i.aj, align 8, !tbaa !12, !noalias !120 ; 2 uses
  %i.bw = shufflevector <2 x float> %i.bt, <2 x float> %i.bu, <2 x i32> <i32 1, i32 3>
  %i.bx = shufflevector <2 x float> %i.bt, <2 x float> %i.bu, <2 x i32> <i32 0, i32 2>
  %6 = insertelement <2 x float> poison, float %i.bv, i64 0
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %i.by = load <2 x float>, ptr %i.al, align 4, !tbaa !12, !noalias !120 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !30, !nonnull !31, !align !32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 452
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !49 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !36, !nonnull !31, !align !32
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 452
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !49 ; 3 uses
  %i.ch = fcmp olt float %i.cc, f0x34000000
  %i.ci = fcmp olt float %i.cg, f0x34000000
  %i.cj = or i1 %i.ch, %i.ci                      ; 2 uses
  %i.ck = fadd float %i.cc, %i.cg                 ; 2 uses
  %i.cl = fcmp ogt float %i.ck, 0.000000e+00
  %i.cm = fdiv float %i.cg, %i.ck
  %storemerge = select i1 %i.cl, float %i.cm, float 5.000000e-01 ; 4 uses
  %i.cn = fsub float 1.000000e+00, %storemerge    ; 3 uses
  %i.co = load <2 x float>, ptr %i.af, align 4, !tbaa !12, !noalias !119 ; 3 uses
  %i.cp = shufflevector <2 x float> %i.aq, <2 x float> %i.co, <2 x i32> <i32 0, i32 2>
  %i.cq = shufflevector <2 x float> %i.an, <2 x float> %i.bt, <2 x i32> <i32 0, i32 2>
  %i.cr = insertelement <2 x float> poison, float %i.j, i64 0
  %i.cs = insertelement <2 x float> %i.cr, float %i.ad, i64 1 ; 2 uses
  %i.ct = insertelement <2 x float> %i.co, float %i.ar, i64 0
  %i.cu = insertelement <2 x float> poison, float %storemerge, i64 0
  %i.cv = insertelement <2 x float> %i.cu, float %i.cn, i64 1 ; 2 uses
  %i.cw = load <2 x float>, ptr %i.o, align 4, !tbaa !12, !noalias !117 ; 5 uses
  %i.cx = load float, ptr %i.p, align 4, !tbaa !12, !noalias !117
  %i.cy = load <2 x float>, ptr %i.e, align 4, !tbaa !12, !noalias !117 ; 3 uses
  %i.cz = load <2 x float>, ptr %i.f, align 4, !tbaa !12, !noalias !117 ; 3 uses
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.db = fmul <2 x float> %i.da, %i.as
  %i.dc = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dc, <2 x float> %i.at, <2 x float> %i.db)
  %8 = load <2 x float>, ptr %i.ai, align 8, !tbaa !12, !noalias !120 ; 4 uses
  %i.de = load <2 x float>, ptr %3, align 4, !tbaa !12, !noalias !119 ; 2 uses
  %i.df = shufflevector <2 x float> %i.ao, <2 x float> %i.cw, <4 x i32> <i32 0, i32 poison, i32 poison, i32 2>
  %i.dg = shufflevector <2 x float> %i.de, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 1, i32 poison>
  %i.dh = shufflevector <4 x float> %i.df, <4 x float> %i.dg, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %9 = shufflevector <2 x float> %i.cz, <2 x float> %8, <4 x i32> <i32 1, i32 3, i32 poison, i32 0>
  %i.di = insertelement <4 x float> %9, float %i.ab, i64 2
  %10 = fmul <4 x float> %i.dh, %i.di
  %11 = shufflevector <2 x float> %i.cy, <2 x float> %8, <4 x i32> <i32 1, i32 2, i32 poison, i32 0>
  %12 = insertelement <4 x float> %11, float %i.z, i64 2
  %13 = shufflevector <2 x float> %i.am, <2 x float> %i.ax, <4 x i32> <i32 0, i32 poison, i32 poison, i32 2>
  %14 = shufflevector <2 x float> %i.de, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 poison>
  %15 = shufflevector <4 x float> %13, <4 x float> %14, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %16 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %12, <4 x float> %15, <4 x float> %10) ; 4 uses
  %17 = extractelement <4 x float> %16, i64 0
  %18 = tail call noundef float @llvm.fmuladd.f32(float %i.j, float %i.ap, float %17) ; 4 uses
  %19 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.av, <2 x float> %i.aw, <2 x float> %i.dd)
  %20 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %21 = fmul <2 x float> %i.bw, %20
  %22 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %22, <2 x float> %i.bx, <2 x float> %21)
  %i.dk = extractelement <4 x float> %16, i64 1
  %i.dl = tail call noundef float @llvm.fmuladd.f32(float %i.bv, float %i.x, float %i.dk)
  %i.dm = extractelement <4 x float> %16, i64 2
  %i.dn = tail call noundef float @llvm.fmuladd.f32(float %i.ad, float %i.x, float %i.dm) ; 4 uses
  %i.do = fadd float %i.bs, %i.dl                 ; 2 uses
  %i.dp = fmul float %18, %storemerge
  %i.dq = fmul float %i.dn, %i.cn
  %i.dr = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ds = insertelement <2 x float> %i.dr, float %i.ab, i64 1 ; 2 uses
  %i.dt = fmul <2 x float> %i.ds, %i.cp
  %i.du = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dv = insertelement <2 x float> %i.du, float %i.z, i64 1 ; 2 uses
  %i.dw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dv, <2 x float> %i.cq, <2 x float> %i.dt)
  %i.dx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %i.ct, <2 x float> %i.dw) ; 5 uses
  %i.dy = fmul <2 x float> %i.dx, %i.cv           ; 2 uses
  %i.dz = extractelement <4 x float> %16, i64 3
  %i.ea = tail call noundef float @llvm.fmuladd.f32(float %i.h, float %i.cx, float %i.dz)
  %i.eb = shufflevector <2 x float> %i.aq, <2 x float> %i.cw, <2 x i32> <i32 1, i32 3>
  %i.ec = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.eb, <2 x float> %i.bk)
  %i.ed = shufflevector <2 x float> %i.cw, <2 x float> %i.ao, <2 x i32> <i32 1, i32 3>
  %i.ee = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.ed, <2 x float> %i.bm)
  %i.ef = fadd <2 x float> %i.ec, %i.bp           ; 3 uses
  %i.eg = fadd <2 x float> %i.ee, %i.br           ; 2 uses
  %i.eh = load <2 x float>, ptr %i.ah, align 4, !tbaa !12, !noalias !119 ; 3 uses
  %i.ei = shufflevector <2 x float> %i.co, <2 x float> %i.eh, <2 x i32> <i32 1, i32 3>
  %i.ej = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %7, <2 x float> %i.ei, <2 x float> %i.dj)
  %i.ek = shufflevector <2 x float> %i.cw, <2 x float> %i.eh, <2 x i32> <i32 0, i32 2>
  %i.el = fmul <2 x float> %i.ds, %i.ek
  %i.em = shufflevector <2 x float> %i.ax, <2 x float> %i.bu, <2 x i32> <i32 0, i32 2>
  %i.en = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dv, <2 x float> %i.em, <2 x float> %i.el)
  %i.eo = shufflevector <2 x float> %i.cw, <2 x float> %i.eh, <2 x i32> <i32 1, i32 3>
  %i.ep = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %i.eo, <2 x float> %i.en) ; 5 uses
  %i.eq = fadd <2 x float> %i.ej, %i.by           ; 3 uses
  %i.er = extractelement <2 x float> %i.eg, i64 1
  %i.es = fsub float %i.do, %i.er                 ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %i.eq, %i.ef ; 2 uses
  %i.et = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop804 = fsub <2 x float> %i.eq, %i.ef
  %i.eu = extractelement <2 x float> %foldExtExtBinop804, i64 1 ; 3 uses
  %i.ev = fmul <2 x float> %i.ep, %i.cv           ; 2 uses
  %i.ew = fadd float %i.dp, %i.dq                 ; 3 uses
  %shift = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop806 = fadd <2 x float> %i.dy, %shift ; 3 uses
  %shift808 = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop809 = fadd <2 x float> %i.ev, %shift808 ; 2 uses
  %i.ex = extractelement <2 x float> %foldExtExtBinop809, i64 0 ; 2 uses
  %.sroa.0.0.vec.insert.i302 = insertelement <2 x float> poison, float %i.ew, i64 0
  %.sroa.0.4.vec.insert.i303 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i302, <2 x float> %foldExtExtBinop806, <2 x i32> <i32 0, i32 2>
  %.sroa.3.12.vec.insert.i304825 = insertelement <2 x float> %foldExtExtBinop809, float 0.000000e+00, i64 1
  %foldExtExtBinop811 = fmul <2 x float> %foldExtExtBinop806, %foldExtExtBinop806
  %i.ey = extractelement <2 x float> %foldExtExtBinop811, i64 0
  %i.ez = tail call float @llvm.fmuladd.f32(float %i.ew, float %i.ew, float %i.ey)
  %i.fa = tail call noundef float @llvm.fmuladd.f32(float %i.ex, float %i.ex, float %i.ez)
  %i.fb = fcmp olt float %i.fa, f0x34000000
  br i1 %i.fb, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.fc = extractelement <2 x float> %i.ep, i64 0
  %i.fd = fmul float %i.fc, 0.000000e+00
  %i.fe = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ff = insertelement <2 x float> %i.fe, float %18, i64 0
  %i.fg = fmul <2 x float> %i.ff, zeroinitializer
  %i.fh = insertelement <2 x float> %i.dx, float %i.dn, i64 0
  %i.fi = fadd <2 x float> %i.fg, %i.fh
  %i.fj = extractelement <2 x float> %i.ep, i64 1
  %i.fk = fadd float %i.fd, %i.fj
  %.sroa.3.12.vec.insert.i319 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fk, i64 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.15.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i319, %bb.b ], [ %.sroa.3.12.vec.insert.i304825, %bb.a ] ; 3 uses
  %.sroa.0769.0 = phi <2 x float> [ %i.fi, %bb.b ], [ %.sroa.0.4.vec.insert.i303, %bb.a ] ; 5 uses
  %.0649 = phi float [ 0.000000e+00, %bb.b ], [ %storemerge, %bb.a ] ; 6 uses
  %.0648 = phi float [ 1.000000e+00, %bb.b ], [ %i.cn, %bb.a ] ; 7 uses
  %.sroa.0769.0.vec.extract771 = extractelement <2 x float> %.sroa.0769.0, i64 0 ; 2 uses
  %foldExtExtBinop813 = fmul <2 x float> %.sroa.0769.0, %.sroa.0769.0
  %i.fl = extractelement <2 x float> %foldExtExtBinop813, i64 1
  %i.fm = tail call float @llvm.fmuladd.f32(float %.sroa.0769.0.vec.extract771, float %.sroa.0769.0.vec.extract771, float %i.fl)
  %.sroa.15.8.vec.extract786 = extractelement <2 x float> %.sroa.15.0, i64 0 ; 2 uses
  %i.fn = tail call noundef float @llvm.fmuladd.f32(float %.sroa.15.8.vec.extract786, float %.sroa.15.8.vec.extract786, float %i.fm)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.fn)
  %i.fo = fdiv float 1.000000e+00, %sqrt.i.i
  %i.fp = shl i32 %i.b, 1
  %i.fq = fsub float %i.do, %i.bs                 ; 2 uses
  %i.fr = fsub <2 x float> %i.eq, %i.by           ; 3 uses
  %i.fs = fsub <2 x float> %i.eg, %i.br           ; 2 uses
  %i.ft = fsub <2 x float> %i.ef, %i.bp           ; 3 uses
  %i.fu = shufflevector <2 x float> %.sroa.15.0, <2 x float> %.sroa.0769.0, <2 x i32> <i32 0, i32 2>
  %i.fv = insertelement <2 x float> poison, float %i.fo, i64 0
  %i.fw = shufflevector <2 x float> %i.fv, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fx = fmul <2 x float> %i.fu, %i.fw           ; 8 uses
  %i.fy = shufflevector <2 x float> %.sroa.0769.0, <2 x float> %.sroa.15.0, <2 x i32> <i32 1, i32 2>
  %i.fz = fmul <2 x float> %i.fy, %i.fw           ; 12 uses
  %i.ga = shufflevector <2 x float> %i.fz, <2 x float> %i.fx, <2 x i32> <i32 3, i32 0>
  %i.gb = extractelement <2 x float> %i.fz, i64 0 ; 5 uses
  %foldExtExtBinop815 = fmul <2 x float> %i.fz, %i.fr
  %i.gc = extractelement <2 x float> %foldExtExtBinop815, i64 0
  %foldExtExtBinop817 = fmul <2 x float> %i.ft, %i.fz
  %i.gd = extractelement <2 x float> %foldExtExtBinop817, i64 0
  %i.ge = extractelement <2 x float> %i.fx, i64 1 ; 7 uses
  %i.gf = tail call float @llvm.fmuladd.f32(float %i.fq, float %i.ge, float %i.gc)
  %i.gg = extractelement <2 x float> %i.fs, i64 1
  %i.gh = tail call float @llvm.fmuladd.f32(float %i.gg, float %i.ge, float %i.gd)
  %i.gi = extractelement <2 x float> %i.fz, i64 1 ; 8 uses
  %i.gj = extractelement <2 x float> %i.fr, i64 1
  %i.gk = tail call noundef float @llvm.fmuladd.f32(float %i.gj, float %i.gi, float %i.gf)
  %i.gl = extractelement <2 x float> %i.ft, i64 1
  %i.gm = tail call noundef float @llvm.fmuladd.f32(float %i.gl, float %i.gi, float %i.gh)
  %i.gn = insertelement <2 x float> poison, float %i.gk, i64 0
  %i.go = shufflevector <2 x float> %i.gn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gp = fmul <2 x float> %i.fz, %i.go           ; 2 uses
  %i.gq = fmul <2 x float> %i.fx, %i.go           ; 2 uses
  %i.gr = extractelement <2 x float> %i.gq, i64 1
  %i.gs = insertelement <2 x float> poison, float %i.gm, i64 0
  %i.gt = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gu = fmul <2 x float> %i.fz, %i.gt           ; 2 uses
  %i.gv = fmul <2 x float> %i.fx, %i.gt           ; 2 uses
  %i.gw = fsub <2 x float> %i.ft, %i.gu           ; 3 uses
  %i.gx = fsub <2 x float> %i.fs, %i.gv           ; 2 uses
  %i.gy = fsub <2 x float> %i.gu, %i.gp           ; 2 uses
  %i.gz = fsub <2 x float> %i.gv, %i.gq           ; 2 uses
  %i.ha = insertelement <2 x float> poison, float %.0649, i64 0
  %i.hb = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.hc = fmul <2 x float> %i.hb, %i.gy
  %i.hd = fmul <2 x float> %i.hb, %i.gz
  %i.he = fadd <2 x float> %i.gw, %i.hc           ; 6 uses
  %i.hf = fadd <2 x float> %i.gx, %i.hd           ; 3 uses
  %i.hg = extractelement <2 x float> %i.gz, i64 1
  %i.hh = fsub <2 x float> %i.fr, %i.gp           ; 3 uses
  %i.hi = fsub float %i.fq, %i.gr                 ; 2 uses
  %i.hj = insertelement <2 x float> poison, float %.0648, i64 0
  %i.hk = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.hl = fmul <2 x float> %i.hk, %i.gy
  %i.hm = fmul float %.0648, %i.hg
  %i.hn = fsub float %i.hi, %i.hm                 ; 5 uses
  %i.ho = fsub <2 x float> %i.hh, %i.hl           ; 7 uses
  %i.hp = fmul float %.0649, %i.hi
  %i.hq = extractelement <2 x float> %i.hh, i64 0
  %i.hr = fmul float %.0649, %i.hq
  %i.hs = extractelement <2 x float> %i.hh, i64 1
  %i.ht = fmul float %.0649, %i.hs
  %i.hu = extractelement <2 x float> %i.gx, i64 1
  %i.hv = fmul float %.0648, %i.hu
  %i.hw = extractelement <2 x float> %i.gw, i64 0
  %i.hx = fmul float %.0648, %i.hw
  %i.hy = extractelement <2 x float> %i.gw, i64 1
  %i.hz = fmul float %.0648, %i.hy
  %i.ia = fadd float %i.hv, %i.hp                 ; 3 uses
  %i.ib = fadd float %i.hx, %i.hr                 ; 3 uses
  %i.ic = fadd float %i.hz, %i.ht                 ; 3 uses
  %i.id = fmul float %i.ib, %i.ib
  %i.ie = tail call float @llvm.fmuladd.f32(float %i.ia, float %i.ia, float %i.id)
  %i.if = tail call noundef float @llvm.fmuladd.f32(float %i.ic, float %i.ic, float %i.ie) ; 2 uses
  %i.ig = fcmp ogt float %i.if, f0x34000000
  br i1 %i.ig, label %bb.d, label %.preheader663

bb.d:                                             ; preds = %bb.c
  %sqrt = tail call float @llvm.sqrt.f32(float %i.if)
  %i.ih = fdiv float 1.000000e+00, %sqrt          ; 3 uses
  %i.ii = fmul float %i.ia, %i.ih
  %i.ij = insertelement <2 x float> poison, float %i.ii, i64 0
  %i.ik = fmul float %i.ib, %i.ih
  %.sroa.0697.4.vec.insert = insertelement <2 x float> %i.ij, float %i.ik, i64 1
  %i.il = fmul float %i.ic, %i.ih
  br label %.preheader663

.preheader663:                                    ; preds = %bb.c, %bb.d
  %.sink = phi float [ %i.il, %bb.d ], [ %i.ea, %bb.c ] ; 7 uses
  %.sroa.0697.0 = phi <2 x float> [ %.sroa.0697.4.vec.insert, %bb.d ], [ %19, %bb.c ] ; 5 uses
  %.sroa.0697.4.vec.extract705 = extractelement <2 x float> %.sroa.0697.0, i64 1 ; 5 uses
  %.sroa.0697.0.vec.extract700 = extractelement <2 x float> %.sroa.0697.0, i64 0 ; 4 uses
  %i.im = extractelement <2 x float> %i.he, i64 0 ; 2 uses
  %i.in = extractelement <2 x float> %i.hf, i64 1 ; 4 uses
  %i.io = extractelement <2 x float> %i.ho, i64 0 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !61 ; 13 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !62 ; 15 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iu = fneg <2 x float> %.sroa.0697.0          ; 6 uses
  %i.iv = fneg float %.sink                       ; 4 uses
  %i.iw = fmul <2 x float> %i.fz, %i.iu
  %i.ix = shufflevector <2 x float> %i.fx, <2 x float> %i.fz, <2 x i32> <i32 1, i32 2>
  %i.iy = shufflevector <2 x float> %.sroa.0697.0, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.iz = insertelement <2 x float> %i.iy, float %.sink, i64 1
  %i.ja = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ix, <2 x float> %i.iz, <2 x float> %i.iw) ; 6 uses
  %i.jb = shufflevector <2 x float> %i.ja, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jc = extractelement <2 x float> %i.iu, i64 1 ; 2 uses
  %i.jd = insertelement <2 x float> %i.iy, float %.sink, i64 0 ; 2 uses
  %i.je = extractelement <2 x float> %i.iu, i64 0 ; 2 uses
  %i.jf = shufflevector <2 x float> %i.fx, <2 x float> %i.he, <4 x i32> <i32 1, i32 poison, i32 3, i32 2>
  %i.jg = insertelement <4 x float> %i.jf, float %i.in, i64 1
  %i.jh = shufflevector <2 x float> %i.iu, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 1, i32 0>
  %i.ji = insertelement <4 x float> poison, float %i.iv, i64 0
  %i.jj = shufflevector <4 x float> %i.ji, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.jk = shufflevector <4 x float> %i.jj, <4 x float> %i.jh, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.jl = fmul <4 x float> %i.jg, %i.jk           ; 3 uses
  %i.jm = extractelement <4 x float> %i.jl, i64 0
  %i.jn = tail call float @llvm.fmuladd.f32(float %i.gi, float %.sroa.0697.0.vec.extract700, float %i.jm) ; 7 uses
  %.sroa.0.4.vec.insert.i398 = insertelement <2 x float> %i.jb, float %i.jn, i64 1
  %i.jo = shufflevector <4 x float> %i.jl, <4 x float> poison, <2 x i32> <i32 2, i32 1>
  %i.jp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.he, <2 x float> %i.jd, <2 x float> %i.jo)
  %i.jq = extractelement <4 x float> %i.jl, i64 3
  %i.jr = tail call float @llvm.fmuladd.f32(float %i.in, float %.sroa.0697.4.vec.extract705, float %i.jq)
  %foldExtExtBinop819 = fmul <2 x float> %i.ho, %i.iu
  %i.js = extractelement <2 x float> %foldExtExtBinop819, i64 0
  %i.jt = tail call float @llvm.fmuladd.f32(float %i.hn, float %.sroa.0697.4.vec.extract705, float %i.js)
  store <2 x float> %i.jp, ptr %i.iq, align 4, !tbaa !12
  store float %i.jr, ptr %.sroa.16.0..sroa_idx, align 4, !tbaa !12
  %i.ju = fmul float %i.hn, %i.iv
  %foldExtExtBinop821 = fmul <2 x float> %i.ho, %i.iu
  %i.jv = shufflevector <2 x float> %foldExtExtBinop821, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.jw = insertelement <2 x float> %i.jv, float %i.ju, i64 1
  %i.jx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ho, <2 x float> %i.jd, <2 x float> %i.jw)
  %i.jy = fneg <2 x float> %i.jx
  store <2 x float> %i.jy, ptr %i.is, align 4, !tbaa !12
  %i.jz = fneg float %i.jt
  store float %i.jz, ptr %i.it, align 4, !tbaa !12
  %i.ka = insertelement <2 x float> %i.jb, float %i.jn, i64 0
  %i.kb = fneg <2 x float> %i.ka                  ; 6 uses
  %i.kc = shufflevector <2 x float> %i.he, <2 x float> %i.hf, <2 x i32> <i32 1, i32 3>
  %i.kd = fmul <2 x float> %i.kc, %i.kb
  %i.ke = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.he, <2 x float> %i.ja, <2 x float> %i.kd) ; 3 uses
  %i.kf = extractelement <2 x float> %i.ja, i64 1 ; 4 uses
  %i.kg = fneg float %i.kf                        ; 4 uses
  %i.kh = fmul float %i.im, %i.kg
  %i.ki = tail call float @llvm.fmuladd.f32(float %i.in, float %i.jn, float %i.kh) ; 2 uses
  %.sroa.3.12.vec.insert.i414 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ki, i64 0 ; 3 uses
  %i.kj = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.kk = insertelement <2 x float> %i.kj, float %i.hn, i64 1 ; 2 uses
  %i.kl = fmul <2 x float> %i.kk, %i.kb
  %i.km = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ho, <2 x float> %i.ja, <2 x float> %i.kl) ; 3 uses
  %i.kn = fmul float %i.io, %i.kg
  %i.ko = tail call float @llvm.fmuladd.f32(float %i.hn, float %i.jn, float %i.kn) ; 2 uses
  %.sroa.3.12.vec.insert.i419 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ko, i64 0 ; 3 uses
  br i1 %i.cj, label %bb.e, label %.preheader662

bb.e:                                             ; preds = %.preheader663
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 740
  %i.kq = load i8, ptr %i.kp, align 4, !tbaa !56, !range !34, !noundef !31
  %.not = icmp eq i8 %i.kq, 0
  br i1 %.not, label %.preheader662, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.kr = fmul <2 x float> %i.hk, %i.km
  %i.ks = fmul float %.0648, %i.ko
  %.sroa.19.8.vec.insert = insertelement <2 x float> %.sroa.3.12.vec.insert.i419, float %i.ks, i64 0
  %i.kt = fmul <2 x float> %i.hb, %i.ke
  %i.ku = fmul float %.0649, %i.ki
  %.sroa.16.8.vec.insert = insertelement <2 x float> %.sroa.3.12.vec.insert.i414, float %i.ku, i64 0
  br label %.preheader662

.preheader662:                                    ; preds = %bb.f, %bb.e, %.preheader663
  %.sroa.16.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i414, %bb.e ], [ %.sroa.16.8.vec.insert, %bb.f ], [ %.sroa.3.12.vec.insert.i414, %.preheader663 ]
  %.sroa.0747.0 = phi <2 x float> [ %i.ke, %bb.e ], [ %i.kt, %bb.f ], [ %i.ke, %.preheader663 ]
  %.sroa.19.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i419, %bb.e ], [ %.sroa.19.8.vec.insert, %bb.f ], [ %.sroa.3.12.vec.insert.i419, %.preheader663 ]
  %.sroa.0713.0 = phi <2 x float> [ %i.km, %bb.e ], [ %i.kr, %bb.f ], [ %i.km, %.preheader663 ]
  %i.kv = sext i32 %i.b to i64                    ; 6 uses
  %i.kw = shl nsw i64 %i.kv, 2                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.iq, i64 %i.kw ; 2 uses
  store <2 x float> %.sroa.0747.0, ptr %scevgep, align 4, !tbaa !12
  %.sroa.16.0.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 8
  %.sroa.16.0.vec.extract761 = extractelement <2 x float> %.sroa.16.0, i64 0
  store float %.sroa.16.0.vec.extract761, ptr %.sroa.16.0.scevgep.sroa_idx, align 4, !tbaa !12
  %i.kx = getelementptr inbounds [4 x i8], ptr %i.is, i64 %i.kv
  %i.ky = fneg <2 x float> %.sroa.0713.0
  store <2 x float> %i.ky, ptr %i.kx, align 4, !tbaa !12
  %.sroa.19.8.vec.extract744 = extractelement <2 x float> %.sroa.19.0, i64 0
  %i.kz = fneg float %.sroa.19.8.vec.extract744
  %i.la = add nsw i64 %i.kv, 2                    ; 2 uses
  %i.lb = getelementptr inbounds [4 x i8], ptr %i.is, i64 %i.la
  store float %i.kz, ptr %i.lb, align 4, !tbaa !12
  %i.lc = fneg <2 x float> %i.fz                  ; 6 uses
  %i.ld = fmul <2 x float> %i.hf, %i.lc
  %i.le = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.he, <2 x float> %i.fx, <2 x float> %i.ld) ; 2 uses
  %i.lf = fneg float %i.ge                        ; 4 uses
  %i.lg = fmul float %i.im, %i.lf
  %i.lh = tail call float @llvm.fmuladd.f32(float %i.in, float %i.gb, float %i.lg) ; 2 uses
  %.sroa.3.12.vec.insert.i424 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.lh, i64 0 ; 2 uses
  %i.li = fmul <2 x float> %i.kk, %i.lc
  %i.lj = shufflevector <2 x float> %i.fz, <2 x float> %i.fx, <2 x i32> <i32 1, i32 3>
  %i.lk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ho, <2 x float> %i.lj, <2 x float> %i.li) ; 2 uses
  %i.ll = fmul float %i.io, %i.lf
  %i.lm = tail call float @llvm.fmuladd.f32(float %i.hn, float %i.gb, float %i.ll) ; 2 uses
  %.sroa.3.12.vec.insert.i429 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.lm, i64 0 ; 2 uses
  br i1 %i.cj, label %bb.g, label %.preheader661

bb.g:                                             ; preds = %.preheader662
  %i.ln = fmul <2 x float> %i.hk, %i.lk
  %i.lo = fmul float %.0648, %i.lm
  %.sroa.19.8.vec.insert738 = insertelement <2 x float> %.sroa.3.12.vec.insert.i429, float %i.lo, i64 0
  %i.lp = fmul <2 x float> %i.hb, %i.le
  %i.lq = fmul float %.0649, %i.lh
  %.sroa.16.8.vec.insert766 = insertelement <2 x float> %.sroa.3.12.vec.insert.i424, float %i.lq, i64 0
  br label %.preheader661

.preheader661:                                    ; preds = %bb.g, %.preheader662
  %.sroa.16.1 = phi <2 x float> [ %.sroa.16.8.vec.insert766, %bb.g ], [ %.sroa.3.12.vec.insert.i424, %.preheader662 ]
  %.sroa.0747.1 = phi <2 x float> [ %i.lp, %bb.g ], [ %i.le, %.preheader662 ]
  %.sroa.19.1 = phi <2 x float> [ %.sroa.19.8.vec.insert738, %bb.g ], [ %.sroa.3.12.vec.insert.i429, %.preheader662 ]
  %.sroa.0713.1 = phi <2 x float> [ %i.ln, %bb.g ], [ %i.lk, %.preheader662 ]
  %i.lr = sext i32 %i.fp to i64                   ; 6 uses
  %i.ls = shl nsw i64 %i.lr, 2                    ; 2 uses
  %scevgep680 = getelementptr i8, ptr %i.iq, i64 %i.ls ; 2 uses
  store <2 x float> %.sroa.0747.1, ptr %scevgep680, align 4, !tbaa !12
  %.sroa.16.0.scevgep680.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep680, i64 8
  %.sroa.16.0.vec.extract763 = extractelement <2 x float> %.sroa.16.1, i64 0
  store float %.sroa.16.0.vec.extract763, ptr %.sroa.16.0.scevgep680.sroa_idx, align 4, !tbaa !12
  %i.lt = getelementptr inbounds [4 x i8], ptr %i.is, i64 %i.lr
  %i.lu = fneg <2 x float> %.sroa.0713.1
  store <2 x float> %i.lu, ptr %i.lt, align 4, !tbaa !12
  %.sroa.19.8.vec.extract746 = extractelement <2 x float> %.sroa.19.1, i64 0
  %i.lv = fneg float %.sroa.19.8.vec.extract746
  %i.lw = add nsw i64 %i.lr, 2                    ; 2 uses
  %i.lx = getelementptr inbounds [4 x i8], ptr %i.is, i64 %i.lw
  store float %i.lv, ptr %i.lx, align 4, !tbaa !12
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 772 ; 3 uses
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !63
  %i.ma = and i32 %i.lz, 8
  %.not263 = icmp eq i32 %i.ma, 0
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.in = select i1 %.not263, ptr %i.mc, ptr %i.mb
  %i.md = load float, ptr %.in, align 4, !tbaa !12 ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.mf = load i8, ptr %i.me, align 8, !tbaa !35, !range !34, !noundef !31
  %i.mg = trunc nuw i8 %i.mf to i1
  br i1 %i.mg, label %.preheader661._crit_edge, label %.preheader660

.preheader661._crit_edge:                         ; preds = %.preheader661
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !64
  br label %bb.h

.preheader660:                                    ; preds = %.preheader661
  %i.mh = load float, ptr %1, align 8, !tbaa !65
  %i.mi = fmul float %i.md, %i.mh                 ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !66 ; 4 uses
  store <2 x float> %.sroa.0697.0, ptr %i.mk, align 4, !tbaa !12
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  store float %.sink, ptr %.sroa.13.0..sroa_idx, align 4, !tbaa !12
  %scevgep684 = getelementptr i8, ptr %i.mk, i64 %i.kw ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i398, ptr %scevgep684, align 4, !tbaa !12
  %.sroa.8.0.scevgep684.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep684, i64 8
  %i.ml = extractelement <2 x float> %i.ja, i64 0 ; 2 uses
  store float %i.ml, ptr %.sroa.8.0.scevgep684.sroa_idx, align 4, !tbaa !12
  %scevgep686 = getelementptr i8, ptr %i.mk, i64 %i.ls ; 2 uses
  store <2 x float> %i.ga, ptr %scevgep686, align 4, !tbaa !12
  %.sroa.15.0.scevgep686.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep686, i64 8
  store float %i.gi, ptr %.sroa.15.0.scevgep686.sroa_idx, align 4, !tbaa !12
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !67 ; 9 uses
  store float %i.je, ptr %i.mn, align 4, !tbaa !12
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 4
  store float %i.jc, ptr %i.mo, align 4, !tbaa !12
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  store float %i.iv, ptr %i.mp, align 4, !tbaa !12
  %i.mq = getelementptr inbounds [4 x i8], ptr %i.mn, i64 %i.kv
  store float %i.kg, ptr %i.mq, align 4, !tbaa !12
  %i.mr = getelementptr [4 x i8], ptr %i.mn, i64 %i.kv
  %i.ms = getelementptr i8, ptr %i.mr, i64 4
  %i.mt = extractelement <2 x float> %i.kb, i64 0
  store float %i.mt, ptr %i.ms, align 4, !tbaa !12
  %i.mu = getelementptr inbounds [4 x i8], ptr %i.mn, i64 %i.la
  %i.mv = extractelement <2 x float> %i.kb, i64 1
  store float %i.mv, ptr %i.mu, align 4, !tbaa !12
  %i.mw = getelementptr inbounds [4 x i8], ptr %i.mn, i64 %i.lr
  store float %i.lf, ptr %i.mw, align 4, !tbaa !12
  %i.mx = getelementptr [4 x i8], ptr %i.mn, i64 %i.lr
  %i.my = getelementptr i8, ptr %i.mx, i64 4
  %i.mz = extractelement <2 x float> %i.lc, i64 0
  store float %i.mz, ptr %i.my, align 4, !tbaa !12
  %i.na = getelementptr inbounds [4 x i8], ptr %i.mn, i64 %i.lw
  %i.nb = extractelement <2 x float> %i.lc, i64 1
  store float %i.nb, ptr %i.na, align 4, !tbaa !12
  %i.nc = fmul float %i.et, %.sroa.0697.4.vec.extract705
  %i.nd = tail call float @llvm.fmuladd.f32(float %.sroa.0697.0.vec.extract700, float %i.es, float %i.nc)
  %i.ne = tail call noundef float @llvm.fmuladd.f32(float %.sink, float %i.eu, float %i.nd)
  %i.nf = fmul float %i.ne, %i.mi
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !64 ; 4 uses
  store float %i.nf, ptr %i.nh, align 4, !tbaa !12
  %i.ni = fmul float %i.et, %i.jn
  %i.nj = tail call float @llvm.fmuladd.f32(float %i.kf, float %i.es, float %i.ni)
  %i.nk = tail call noundef float @llvm.fmuladd.f32(float %i.ml, float %i.eu, float %i.nj)
  %i.nl = fmul float %i.nk, %i.mi
  %i.nm = getelementptr inbounds [4 x i8], ptr %i.nh, i64 %i.kv
  store float %i.nl, ptr %i.nm, align 4, !tbaa !12
  %foldExtExtBinop823 = fmul <2 x float> %foldExtExtBinop, %i.fz
  %i.nn = extractelement <2 x float> %foldExtExtBinop823, i64 0
  %i.no = tail call float @llvm.fmuladd.f32(float %i.ge, float %i.es, float %i.nn)
  %i.np = tail call noundef float @llvm.fmuladd.f32(float %i.gi, float %i.eu, float %i.no)
  %i.nq = fmul float %i.np, %i.mi
  %i.nr = getelementptr inbounds [4 x i8], ptr %i.nh, i64 %i.lr
  store float %i.nq, ptr %i.nr, align 4, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %.preheader661._crit_edge, %.preheader660
  %i.ns = phi ptr [ %.pre, %.preheader661._crit_edge ], [ %i.nh, %.preheader660 ] ; 2 uses
  %i.nt = mul nsw i32 %i.b, 3                     ; 3 uses
  %i.nu = shl nsw i32 %i.b, 2                     ; 3 uses
  %i.nv = sext i32 %i.nt to i64                   ; 3 uses
  %i.nw = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.nv
  store float %.sroa.0697.0.vec.extract700, ptr %i.nw, align 4, !tbaa !12
  %i.nx = add nsw i32 %i.nt, 1
  %i.ny = sext i32 %i.nx to i64                   ; 2 uses
  %i.nz = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.ny
  store float %.sroa.0697.4.vec.extract705, ptr %i.nz, align 4, !tbaa !12
  %i.oa = add nsw i32 %i.nt, 2
  %i.ob = sext i32 %i.oa to i64                   ; 2 uses
  %i.oc = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.ob
  store float %.sink, ptr %i.oc, align 4, !tbaa !12
  %i.od = sext i32 %i.nu to i64                   ; 3 uses
  %i.oe = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.od
  store float %i.kf, ptr %i.oe, align 4, !tbaa !12
  %i.of = or disjoint i32 %i.nu, 1
  %i.og = sext i32 %i.of to i64                   ; 2 uses
  %i.oh = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.og
  store float %i.jn, ptr %i.oh, align 4, !tbaa !12
  %i.oi = or disjoint i32 %i.nu, 2
  %i.oj = sext i32 %i.oi to i64                   ; 2 uses
  %i.ok = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.oj
  %i.ol = extractelement <2 x float> %i.ja, i64 0 ; 2 uses
  store float %i.ol, ptr %i.ok, align 4, !tbaa !12
  %i.om = getelementptr inbounds [4 x i8], ptr %i.is, i64 %i.nv
  store float %i.je, ptr %i.om, align 4, !tbaa !12
  %i.on = getelementptr inbounds [4 x i8], ptr %i.is, i64 %i.ny
  store float %i.jc, ptr %i.on, align 4, !tbaa !12
  %i.oo = getelementptr inbounds [4 x i8], ptr %i.is, i64 %i.ob
  store float %i.iv, ptr %i.oo, align 4, !tbaa !12
  %i.op = getelementptr inbounds [4 x i8], ptr %i.is, i64 %i.od
  store float %i.kg, ptr %i.op, align 4, !tbaa !12
  %i.oq = getelementptr inbounds [4 x i8], ptr %i.is, i64 %i.og
  %i.or = extractelement <2 x float> %i.kb, i64 0
  store float %i.or, ptr %i.oq, align 4, !tbaa !12
  %i.os = getelementptr inbounds [4 x i8], ptr %i.is, i64 %i.oj
  %i.ot = extractelement <2 x float> %i.kb, i64 1
  store float %i.ot, ptr %i.os, align 4, !tbaa !12
  %i.ou = load float, ptr %1, align 8, !tbaa !65
  %i.ov = fmul float %i.md, %i.ou                 ; 2 uses
  %i.ow = extractelement <2 x float> %i.dx, i64 1 ; 2 uses
  %i.ox = fneg float %i.ow
  %i.oy = extractelement <2 x float> %i.ep, i64 0 ; 2 uses
  %i.oz = fmul float %i.oy, %i.ox
  %i.pa = extractelement <2 x float> %i.ep, i64 1 ; 2 uses
  %i.pb = extractelement <2 x float> %i.dx, i64 0 ; 2 uses
  %i.pc = tail call float @llvm.fmuladd.f32(float %i.pb, float %i.pa, float %i.oz) ; 2 uses
  %i.pd = fneg float %i.pa
  %i.pe = fmul float %18, %i.pd
  %i.pf = tail call float @llvm.fmuladd.f32(float %i.oy, float %i.dn, float %i.pe) ; 2 uses
  %i.pg = fneg float %i.dn
  %i.ph = fmul float %i.pb, %i.pg
  %i.pi = tail call float @llvm.fmuladd.f32(float %18, float %i.ow, float %i.ph) ; 2 uses
  %i.pj = fmul float %i.pf, %.sroa.0697.4.vec.extract705
  %i.pk = tail call float @llvm.fmuladd.f32(float %i.pc, float %.sroa.0697.0.vec.extract700, float %i.pj)
  %i.pl = tail call noundef float @llvm.fmuladd.f32(float %i.pi, float %.sink, float %i.pk)
  %i.pm = fmul float %i.pl, %i.ov
  %i.pn = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.po = getelementptr inbounds [4 x i8], ptr %i.ns, i64 %i.nv
  store float %i.pm, ptr %i.po, align 4, !tbaa !12
  %i.pp = fmul float %i.pf, %i.jn
  %i.pq = tail call float @llvm.fmuladd.f32(float %i.pc, float %i.kf, float %i.pp)
  %i.pr = tail call noundef float @llvm.fmuladd.f32(float %i.pi, float %i.ol, float %i.pq)
  %i.ps = fmul float %i.pr, %i.ov
  %i.pt = getelementptr inbounds [4 x i8], ptr %i.ns, i64 %i.od
  store float %i.ps, ptr %i.pt, align 4, !tbaa !12
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 740
  %i.pv = load i8, ptr %i.pu, align 4, !tbaa !56, !range !34, !noundef !31
  %.not264 = icmp eq i8 %i.pv, 0                  ; 3 uses
  br i1 %.not264, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.h
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.px = load float, ptr %i.pw, align 4, !tbaa !68
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 756
  %i.pz = load float, ptr %i.py, align 4, !tbaa !29
  %i.qa = fmul float %i.px, %i.pz                 ; 2 uses
  %i.qb = fcmp ogt float %i.qa, 0.000000e+00
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 761
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !57, !range !34, !noundef !31
  %i.qe = trunc nuw i8 %i.qd to i1
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 761
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !57, !range !34, !noundef !31
  %i.qh = trunc nuw i8 %i.qg to i1
  br i1 %i.qh, label %bb.j, label %bb.ad

bb.j:                                             ; preds = %.thread, %bb.i
  %i.qi = phi i1 [ %i.qe, %.thread ], [ true, %bb.i ]
  %.0254654 = phi i1 [ %i.qb, %.thread ], [ false, %bb.i ] ; 3 uses
  %.0255653 = phi float [ %i.qa, %.thread ], [ 0.000000e+00, %bb.i ]
  %i.qj = load i32, ptr %i.a, align 8, !tbaa !60
  %i.qk = mul nsw i32 %i.qj, 5                    ; 3 uses
  %i.ql = sext i32 %i.qk to i64                   ; 11 uses
  %i.qm = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.ql
  store float %i.ge, ptr %i.qm, align 4, !tbaa !12
  %i.qn = add nsw i32 %i.qk, 1
  %i.qo = sext i32 %i.qn to i64                   ; 2 uses
  %i.qp = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.qo
  store float %i.gb, ptr %i.qp, align 4, !tbaa !12
  %i.qq = add nsw i32 %i.qk, 2
  %i.qr = sext i32 %i.qq to i64                   ; 2 uses
  %i.qs = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.qr
  store float %i.gi, ptr %i.qs, align 4, !tbaa !12
  %i.qt = getelementptr inbounds [4 x i8], ptr %i.is, i64 %i.ql
  store float %i.lf, ptr %i.qt, align 4, !tbaa !12
  %i.qu = getelementptr inbounds [4 x i8], ptr %i.is, i64 %i.qo
  %i.qv = extractelement <2 x float> %i.lc, i64 0
  store float %i.qv, ptr %i.qu, align 4, !tbaa !12
  %i.qw = getelementptr inbounds [4 x i8], ptr %i.is, i64 %i.qr
  %i.qx = extractelement <2 x float> %i.lc, i64 1
  store float %i.qx, ptr %i.qw, align 4, !tbaa !12
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.qz = tail call noundef float @_ZNK14btAngularLimit6getLowEv(ptr noundef nonnull align 4 dereferenceable(29) %i.qy) ; 2 uses
  %i.ra = tail call noundef float @_ZNK14btAngularLimit7getHighEv(ptr noundef nonnull align 4 dereferenceable(29) %i.qy) ; 2 uses
  %i.rb = fcmp une float %i.qz, %i.ra             ; 2 uses
  %or.cond268.not = or i1 %.not264, %i.rb
  %spec.select = select i1 %or.cond268.not, i1 %i.qi, i1 false
  %i.rc = load ptr, ptr %i.pn, align 8, !tbaa !64 ; 2 uses
  %i.rd = getelementptr inbounds [4 x i8], ptr %i.rc, i64 %i.ql
  store float 0.000000e+00, ptr %i.rd, align 4, !tbaa !12
  %i.re = load i32, ptr %i.ly, align 4, !tbaa !63 ; 2 uses
  %i.rf = and i32 %i.re, 2
  %.not265 = icmp eq i32 %i.rf, 0
  br i1 %.not265, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 788
  %i.rh = load float, ptr %i.rg, align 4, !tbaa !69
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ri = phi float [ %i.rh, %bb.k ], [ %i.md, %bb.j ] ; 2 uses
  br i1 %spec.select, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.rj = and i32 %i.re, 4
  %.not266 = icmp eq i32 %i.rj, 0
  br i1 %.not266, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.rl = load float, ptr %i.rk, align 8, !tbaa !70
  %i.rm = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !71
  %i.ro = getelementptr inbounds [4 x i8], ptr %i.rn, i64 %i.ql
  store float %i.rl, ptr %i.ro, align 4, !tbaa !12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.rq = load float, ptr %i.rp, align 8, !tbaa !50
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.rs = load float, ptr %i.rr, align 8, !tbaa !72
  %i.rt = load float, ptr %1, align 8, !tbaa !65
  %i.ru = fmul float %i.ri, %i.rt
  %i.rv = tail call noundef float @_ZN17btTypedConstraint14getMotorFactorEfffff(ptr noundef nonnull align 8 dereferenceable(72) %0, float noundef %i.rq, float noundef %i.qz, float noundef %i.ra, float noundef %i.rs, float noundef %i.ru)
  %i.rw = load float, ptr %i.rr, align 8, !tbaa !72
  %i.rx = fmul float %i.rv, %i.rw
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 756
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !29
  %i.sa = load ptr, ptr %i.pn, align 8, !tbaa !64 ; 2 uses
  %i.sb = getelementptr inbounds [4 x i8], ptr %i.sa, i64 %i.ql ; 2 uses
  %i.sc = load float, ptr %i.sb, align 4, !tbaa !12
  %i.sd = tail call float @llvm.fmuladd.f32(float %i.rx, float %i.rz, float %i.sc)
  store float %i.sd, ptr %i.sb, align 4, !tbaa !12
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 708 ; 2 uses
  %i.sf = load float, ptr %i.se, align 4, !tbaa !73
  %i.sg = fneg float %i.sf
  %i.sh = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !74
  %i.sj = getelementptr inbounds [4 x i8], ptr %i.si, i64 %i.ql
  store float %i.sg, ptr %i.sj, align 4, !tbaa !12
  %i.sk = load float, ptr %i.se, align 4, !tbaa !73
  %i.sl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !75
  %i.sn = getelementptr inbounds [4 x i8], ptr %i.sm, i64 %i.ql
  store float %i.sk, ptr %i.sn, align 4, !tbaa !12
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.so = phi ptr [ %i.sa, %bb.o ], [ %i.rc, %bb.l ]
  br i1 %.not264, label %bb.ad, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.sp = load float, ptr %1, align 8, !tbaa !65
  %i.sq = fmul float %i.ri, %i.sp
  %i.sr = getelementptr inbounds [4 x i8], ptr %i.so, i64 %i.ql ; 7 uses
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !12
  %i.st = tail call float @llvm.fmuladd.f32(float %i.sq, float %.0255653, float %i.ss)
  store float %i.st, ptr %i.sr, align 4, !tbaa !12
  %i.su = load i32, ptr %i.ly, align 4, !tbaa !63
  %i.sv = and i32 %i.su, 1
  %.not267 = icmp eq i32 %i.sv, 0
  br i1 %.not267, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.sx = load float, ptr %i.sw, align 8, !tbaa !76
  %i.sy = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !71
  %i.ta = getelementptr inbounds [4 x i8], ptr %i.sz, i64 %i.ql
  store float %i.sx, ptr %i.ta, align 4, !tbaa !12
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.tb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !74
  %i.td = getelementptr inbounds [4 x i8], ptr %i.tc, i64 %i.ql
  br i1 %i.rb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %. = select i1 %.0254654, float 0.000000e+00, float f0xFF7FFFFF
  %.802 = select i1 %.0254654, float f0x7F7FFFFF, float 0.000000e+00
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink801 = phi float [ %., %bb.t ], [ f0xFF7FFFFF, %bb.s ]
  %.sink798 = phi float [ %.802, %bb.t ], [ f0x7F7FFFFF, %bb.s ]
  store float %.sink801, ptr %i.td, align 4, !tbaa !12
  %.sink800.in = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sink800 = load ptr, ptr %.sink800.in, align 8, !tbaa !75
  %i.te = getelementptr inbounds [4 x i8], ptr %.sink800, i64 %i.ql
  store float %.sink798, ptr %i.te, align 4, !tbaa !12
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.tg = load float, ptr %i.tf, align 8, !tbaa !15 ; 3 uses
  %i.th = fcmp ogt float %i.tg, 0.000000e+00
  br i1 %i.th, label %bb.v, label %._crit_edge

._crit_edge:                                      ; preds = %bb.u
  %.pre791 = load float, ptr %i.sr, align 4, !tbaa !12
  br label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.ti = load float, ptr %4, align 4, !tbaa !12
  %i.tj = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.tk = load float, ptr %i.tj, align 4, !tbaa !12
  %i.tl = fmul float %i.gb, %i.tk
  %i.tm = tail call float @llvm.fmuladd.f32(float %i.ti, float %i.ge, float %i.tl)
  %i.tn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.to = load float, ptr %i.tn, align 4, !tbaa !12
  %i.tp = tail call noundef float @llvm.fmuladd.f32(float %i.to, float %i.gi, float %i.tm)
  %i.tq = load float, ptr %5, align 4, !tbaa !12
  %i.tr = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !12
  %i.tt = fmul float %i.gb, %i.ts
  %i.tu = tail call float @llvm.fmuladd.f32(float %i.tq, float %i.ge, float %i.tt)
  %i.tv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !12
  %i.tx = tail call noundef float @llvm.fmuladd.f32(float %i.tw, float %i.gi, float %i.tu)
  %i.ty = fsub float %i.tp, %i.tx                 ; 4 uses
end_hunk_0
