Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btReducedDeformableBody?download=true
inline.NumInlined: 956
inline.NumDeleted: 155
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN23btReducedDeformableBody19updateInertiaTensorEv:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2480
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2544
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2560
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2484
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2576
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2488
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2548
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2564
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2580
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2496
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2500
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2512
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2516
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2520
  %i.p = load float, ptr %i.o, align 8, !tbaa !142, !noalias !204 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2592
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2596
  %i.r = load <2 x float>, ptr %i.a, align 8, !tbaa !142, !noalias !204 ; 5 uses
  %i.s = load <2 x float>, ptr %i.b, align 8, !tbaa !142, !noalias !204 ; 3 uses
  %i.t = load <2 x float>, ptr %i.c, align 8, !tbaa !142, !noalias !204 ; 4 uses
  %i.u = load <2 x float>, ptr %i.e, align 8, !tbaa !142, !noalias !204 ; 3 uses
  %i.v = load <2 x float>, ptr %i.j, align 8, !tbaa !142, !noalias !204 ; 5 uses
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.x = shufflevector <2 x float> %i.t, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.y = shufflevector <2 x float> %i.r, <2 x float> %i.v, <4 x i32> <i32 1, i32 1, i32 poison, i32 3> ; 4 uses
  %i.z = insertelement <4 x float> %i.y, float 1.000000e+00, i64 2
  %i.aa = fmul <4 x float> %i.x, %i.z
  %i.ab = shufflevector <2 x float> %i.s, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.ac = shufflevector <2 x float> %i.r, <2 x float> %i.v, <4 x i32> <i32 0, i32 0, i32 poison, i32 2> ; 2 uses
  %i.ad = insertelement <4 x float> %i.ac, float -0.000000e+00, i64 2 ; 3 uses
  %i.ae = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %i.ad, <4 x float> %i.aa)
  %i.af = shufflevector <2 x float> %i.u, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.ag = shufflevector <2 x float> %i.r, <2 x float> %i.t, <4 x i32> <i32 1, i32 1, i32 poison, i32 3>
  %i.ah = insertelement <4 x float> %i.ag, float 1.000000e+00, i64 2
  %i.ai = shufflevector <2 x float> %i.t, <2 x float> %i.v, <4 x i32> <i32 1, i32 1, i32 poison, i32 3>
  %i.aj = insertelement <4 x float> %i.ai, float 1.000000e+00, i64 2
  %i.ak = fmul <4 x float> %i.ah, %i.aj
  %i.al = shufflevector <2 x float> %i.s, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 3, i32 1>
  %i.am = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.ad, <4 x float> %i.ak)
  %i.an = shufflevector <2 x float> %i.u, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 3, i32 1>
  %i.ao = shufflevector <4 x float> %i.y, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 0, i32 0, i32 6, i32 poison>
  %i.ap = load <2 x float>, ptr %i.m, align 8, !tbaa !142, !noalias !204 ; 4 uses
  %i.aq = load float, ptr %i.n, align 4, !tbaa !142, !noalias !204 ; 2 uses
  %i.ar = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.as = shufflevector <4 x float> %i.y, <4 x float> %i.ar, <4 x i32> <i32 3, i32 5, i32 poison, i32 0>
  %i.at = insertelement <4 x float> %i.as, float 0.000000e+00, i64 2
  %i.au = shufflevector <4 x float> %i.ac, <4 x float> %i.ar, <4 x i32> <i32 3, i32 4, i32 poison, i32 0>
  %i.av = insertelement <4 x float> %i.au, float 0.000000e+00, i64 2
  %.sroa.916.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2612
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2616
  %.sroa.1117.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2620
  store float 0.000000e+00, ptr %.sroa.1117.16..sroa_idx, align 4, !tbaa !149
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 2624
  %i.ax = load <2 x float>, ptr %i.d, align 4, !tbaa !142, !noalias !204 ; 4 uses
  %i.ay = load <4 x float>, ptr %i.f, align 8
  %i.az = load <2 x float>, ptr %i.g, align 4, !tbaa !142, !noalias !204 ; 3 uses
  %i.ba = load <2 x float>, ptr %i.h, align 4, !tbaa !142, !noalias !204 ; 2 uses
  %i.bb = load <2 x float>, ptr %i.i, align 4, !tbaa !142, !noalias !204 ; 2 uses
  %i.bc = load <2 x float>, ptr %i.k, align 4, !tbaa !142, !noalias !204 ; 4 uses
  %i.bd = load float, ptr %i.l, align 8, !tbaa !142, !noalias !204
  %i.be = shufflevector <2 x float> %i.ax, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bf = shufflevector <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x float> %i.be, <4 x i32> <i32 5, i32 poison, i32 2, i32 poison>
  %i.bg = shufflevector <2 x float> %i.bc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bh = shufflevector <4 x float> %i.bf, <4 x float> %i.bg, <4 x i32> <i32 0, i32 0, i32 2, i32 5> ; 3 uses
  %i.bi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.bh, <4 x float> %i.ae) ; 2 uses
  %i.bj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.an, <4 x float> %i.bh, <4 x float> %i.am) ; 2 uses
  %i.bk = shufflevector <2 x float> %i.ba, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bl = shufflevector <4 x float> %i.ao, <4 x float> %i.bk, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %i.bm = shufflevector <4 x float> %i.bl, <4 x float> %i.y, <4 x i32> <i32 3, i32 3, i32 poison, i32 7>
  %i.bn = insertelement <4 x float> %i.bm, float 1.000000e+00, i64 2
  %i.bo = fmul <4 x float> %i.bl, %i.bn
  %i.bp = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 5, i32 1>
  %i.br = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bq, <4 x float> %i.ad, <4 x float> %i.bo)
  %i.bs = shufflevector <2 x float> %i.bb, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 5, i32 1>
  %i.bu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bt, <4 x float> %i.bh, <4 x float> %i.br) ; 2 uses
  %i.bv = shufflevector <2 x float> %i.t, <2 x float> %i.ba, <3 x i32> <i32 3, i32 0, i32 2>
  %i.bw = insertelement <3 x float> poison, float %i.aq, i64 0
  %i.bx = shufflevector <3 x float> %i.bw, <3 x float> poison, <3 x i32> zeroinitializer
  %i.by = fmul <3 x float> %i.bv, %i.bx
  %i.bz = shufflevector <2 x float> %i.ap, <2 x float> %i.s, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.ca = shufflevector <2 x float> %i.az, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.cb = shufflevector <3 x float> %i.bz, <3 x float> %i.ca, <3 x i32> <i32 0, i32 1, i32 3>
  %i.cc = shufflevector <2 x float> %i.az, <2 x float> %i.ap, <3 x i32> <i32 1, i32 2, i32 2>
  %i.cd = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cb, <3 x float> %i.cc, <3 x float> %i.by)
  %i.ce = shufflevector <2 x float> %i.u, <2 x float> %i.bb, <3 x i32> <i32 3, i32 0, i32 2>
  %i.cf = insertelement <3 x float> poison, float %i.p, i64 0
  %i.cg = shufflevector <3 x float> %i.cf, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ch = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ce, <3 x float> %i.cg, <3 x float> %i.cd) ; 4 uses
  %i.ci = fmul <4 x float> %i.at, %i.bj
  %i.cj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.av, <4 x float> %i.bi, <4 x float> %i.ci)
  %i.ck = shufflevector <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x float> %i.be, <4 x i32> <i32 poison, i32 poison, i32 2, i32 5>
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> %i.bg, <4 x i32> <i32 5, i32 poison, i32 2, i32 3>
  %i.cm = insertelement <4 x float> %i.cl, float %i.p, i64 1
  %i.cn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cm, <4 x float> %i.bu, <4 x float> %i.cj)
  %i.co = shufflevector <2 x float> %i.ax, <2 x float> %i.bc, <2 x i32> <i32 0, i32 2>
  %i.cp = shufflevector <3 x float> %i.ch, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.cq = fmul <2 x float> %i.co, %i.cp
  %i.cr = shufflevector <2 x float> %i.r, <2 x float> %i.v, <2 x i32> <i32 0, i32 2>
  %i.cs = shufflevector <3 x float> %i.ch, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ct = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> %i.cs, <2 x float> %i.cq)
  %i.cu = shufflevector <2 x float> %i.ax, <2 x float> %i.bc, <2 x i32> <i32 1, i32 3>
  %i.cv = shufflevector <3 x float> %i.ch, <3 x float> poison, <2 x i32> zeroinitializer
  %i.cw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cu, <2 x float> %i.cv, <2 x float> %i.ct)
  %i.cx = shufflevector <2 x float> %i.ax, <2 x float> %i.bc, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.cy = insertelement <4 x float> poison, float %i.aq, i64 0
  %i.cz = shufflevector <4 x float> %i.cy, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %i.da = shufflevector <4 x float> %i.cx, <4 x float> %i.cz, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.db = shufflevector <3 x float> %i.ch, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 3 uses
  %i.dc = shufflevector <4 x float> %i.bj, <4 x float> %i.db, <4 x i32> <i32 0, i32 3, i32 3, i32 6>
  %i.dd = fmul <4 x float> %i.da, %i.dc
  %i.de = shufflevector <2 x float> %i.r, <2 x float> %i.ap, <4 x i32> <i32 0, i32 poison, i32 2, i32 2>
  %i.df = shufflevector <4 x float> %i.de, <4 x float> %i.w, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.dg = shufflevector <4 x float> %i.bi, <4 x float> %i.db, <4 x i32> <i32 0, i32 3, i32 3, i32 5>
  %i.dh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.df, <4 x float> %i.dg, <4 x float> %i.dd)
  %i.di = insertelement <4 x float> %i.ay, float %i.bd, i64 1
  %i.dj = insertelement <4 x float> %i.di, float %i.p, i64 2
  %i.dk = shufflevector <4 x float> %i.dj, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.dl = shufflevector <4 x float> %i.bu, <4 x float> %i.db, <4 x i32> <i32 0, i32 3, i32 3, i32 4>
  %i.dm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dk, <4 x float> %i.dl, <4 x float> %i.dh) ; 4 uses
  %i.dn = extractelement <4 x float> %i.dm, i64 0
  store float %i.dn, ptr %i.q, align 8
  store <4 x float> %i.cn, ptr %.sroa.414.0..sroa_idx, align 4
  %i.do = extractelement <4 x float> %i.dm, i64 1
  store float %i.do, ptr %.sroa.916.16..sroa_idx, align 4
  %i.dp = extractelement <4 x float> %i.dm, i64 2
  store float %i.dp, ptr %.sroa.10.16..sroa_idx, align 8
  store <2 x float> %i.cw, ptr %i.aw, align 8
  %.sroa.1518.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2632
  %i.dq = extractelement <4 x float> %i.dm, i64 3
  store float %i.dq, ptr %.sroa.1518.32..sroa_idx, align 8
  %.sroa.1619.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2636
  store float 0.000000e+00, ptr %.sroa.1619.32..sroa_idx, align 4, !tbaa !149
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN23btReducedDeformableBody16setRigidVelocityERK9btVector3(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(3176) initializes((2360, 2376)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2360
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !150
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN23btReducedDeformableBody23setRigidAngularVelocityERK9btVector3(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(3176) initializes((2376, 2392)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2376
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !150
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN23btReducedDeformableBody17setStiffnessScaleEf(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(3176) initializes((2072, 2076)) %0, float noundef %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2072
  store float %1, ptr %i.a, align 8, !tbaa !160
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN23btReducedDeformableBody12setMassScaleEf(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(3176) initializes((2068, 2072)) %0, float noundef %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2068
  store float %1, ptr %i.a, align 4, !tbaa !152
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23btReducedDeformableBody13setFixedNodesEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(3176) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3108 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !137  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3112 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !138
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %i.b, 0
  %i.f = shl nsw i32 %i.b, 1
  %i.g = select i1 %.not.i.i, i32 1, i32 %i.f     ; 4 uses
  %i.h = icmp slt i32 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sext i32 %i.g to i64
  %i.j = shl nsw i64 %i.i, 2
  %i.k = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16)
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !137
  br label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i: ; preds = %bb.d, %bb.c
  %i.l = phi i32 [ %.pre.i, %bb.d ], [ %i.b, %bb.c ] ; 3 uses
  %.0.i.i.i = phi ptr [ %i.k, %bb.d ], [ null, %bb.c ] ; 8 uses
  %i.m = icmp sgt i32 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3120 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !136  ; 9 uses
  br i1 %i.m, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %i.p = ptrtoaddr ptr %i.o to i64
  %.0.i.i.i5 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.l to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.l, 8
  %i.q = sub i64 %i.p, %.0.i.i.i5
  %diff.check = icmp ugt i64 %i.q, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <4 x i32>, ptr %i.s, align 4, !tbaa !208
  %wide.load6 = load <4 x i32>, ptr %i.t, align 4, !tbaa !208
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x i32> %wide.load, ptr %i.r, align 4, !tbaa !208
  store <4 x i32> %wide.load6, ptr %i.u, align 4, !tbaa !208
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !205

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.i.prol
  %i.y = load i32, ptr %i.x, align 4, !tbaa !208
  store i32 %i.y, ptr %i.w, align 4, !tbaa !208
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !206

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.z = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.i
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !208
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !208
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !208
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !208
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.1
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !208
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !208
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.2
  %i.am = load i32, ptr %i.al, align 4, !tbaa !208
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !208
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph, !llvm.loop !207

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 3128
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !135, !range !143, !noundef !148
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.e, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i

bb.e:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.o)
  br label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i: ; preds = %bb.e, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 3128
  store i8 1, ptr %i.aq, align 8, !tbaa !135
  store ptr %.0.i.i.i, ptr %i.n, align 8, !tbaa !136
  store i32 %i.g, ptr %i.c, align 8, !tbaa !138
  %.pre2.i = load i32, ptr %i.a, align 4, !tbaa !137
  br label %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit

_ZN20btAlignedObjectArrayIiE9push_backERKi.exit:  ; preds = %bb.a, %bb.b, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i
  %i.ar = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i ], [ %i.b, %bb.b ], [ %i.b, %bb.a ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 3120
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !136
  %i.au = sext i32 %i.ar to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.au
  store i32 %1, ptr %i.av, align 4, !tbaa !208
  %i.aw = load i32, ptr %i.a, align 4, !tbaa !137
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.a, align 4, !tbaa !137
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !151
  %i.ba = sext i32 %1 to i64
  %i.bb = getelementptr inbounds [256 x i8], ptr %i.az, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 112
  store float 0.000000e+00, ptr %i.bc, align 8, !tbaa !159
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN23btReducedDeformableBody10setDampingEff(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(3176) initializes((2704, 2712)) %0, float noundef %1, float noundef %2) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2704
  store float %1, ptr %i.a, align 8, !tbaa !209
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2708
  store float %2, ptr %i.b, align 4, !tbaa !161
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23btReducedDeformableBody22internalInitializationEv(ptr noundef nonnull align 8 dereferenceable(3176) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.b = load i32, ptr %i.a, align 8, !tbaa !139  ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %_ZN23btReducedDeformableBody20endOfTimeStepZeroingEv.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2928
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !128  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2960
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !128  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2896
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !128  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2288
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !128  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2768
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !128  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2800
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !128  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2832
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !128  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2864
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !128  ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.b to i64  ; 3 uses
  %min.iters.check = icmp ult i32 %i.b, 80
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.t = ptrtoaddr ptr %i.s to i64                ; 7 uses
  %i.u = ptrtoaddr ptr %i.q to i64                ; 6 uses
  %i.v = ptrtoaddr ptr %i.o to i64                ; 7 uses
  %i.w = ptrtoaddr ptr %i.m to i64                ; 6 uses
  %i.x = ptrtoaddr ptr %i.k to i64                ; 7 uses
  %i.y = ptrtoaddr ptr %i.i to i64                ; 7 uses
  %i.z = ptrtoaddr ptr %i.g to i64                ; 7 uses
  %i.aa = ptrtoaddr ptr %i.e to i64               ; 7 uses
  %i.ab = sub i64 %i.aa, %i.z
  %diff.check = icmp ugt i64 %i.ab, -16
  %i.ac = sub i64 %i.aa, %i.y
  %diff.check8 = icmp ugt i64 %i.ac, -16
  %conflict.rdx = or i1 %diff.check, %diff.check8
  %i.ad = sub i64 %i.aa, %i.x
  %diff.check9 = icmp ugt i64 %i.ad, -16
  %conflict.rdx10 = or i1 %conflict.rdx, %diff.check9
  %i.ae = sub i64 %i.aa, %i.v
  %diff.check11 = icmp ugt i64 %i.ae, -16
  %conflict.rdx12 = or i1 %conflict.rdx10, %diff.check11
  %i.af = sub i64 %i.aa, %i.t
  %diff.check13 = icmp ugt i64 %i.af, -16
  %conflict.rdx14 = or i1 %conflict.rdx12, %diff.check13
  %i.ag = sub i64 %i.aa, %i.w
  %diff.check15 = icmp ugt i64 %i.ag, -16
  %conflict.rdx16 = or i1 %conflict.rdx14, %diff.check15
  %i.ah = sub i64 %i.aa, %i.u
  %diff.check17 = icmp ugt i64 %i.ah, -16
  %conflict.rdx18 = or i1 %conflict.rdx16, %diff.check17
  %i.ai = sub i64 %i.z, %i.y
  %diff.check19 = icmp ugt i64 %i.ai, -16
  %conflict.rdx20 = or i1 %conflict.rdx18, %diff.check19
  %i.aj = sub i64 %i.z, %i.x
  %diff.check21 = icmp ugt i64 %i.aj, -16
  %conflict.rdx22 = or i1 %conflict.rdx20, %diff.check21
  %i.ak = sub i64 %i.z, %i.v
  %diff.check23 = icmp ugt i64 %i.ak, -16
  %conflict.rdx24 = or i1 %conflict.rdx22, %diff.check23
  %i.al = sub i64 %i.z, %i.t
  %diff.check25 = icmp ugt i64 %i.al, -16
  %conflict.rdx26 = or i1 %conflict.rdx24, %diff.check25
  %i.am = sub i64 %i.z, %i.w
  %diff.check27 = icmp ugt i64 %i.am, -16
  %conflict.rdx28 = or i1 %conflict.rdx26, %diff.check27
  %i.an = sub i64 %i.z, %i.u
  %diff.check29 = icmp ugt i64 %i.an, -16
  %conflict.rdx30 = or i1 %conflict.rdx28, %diff.check29
  %i.ao = sub i64 %i.y, %i.x
  %diff.check31 = icmp ugt i64 %i.ao, -16
  %conflict.rdx32 = or i1 %conflict.rdx30, %diff.check31
  %i.ap = sub i64 %i.y, %i.v
  %diff.check33 = icmp ugt i64 %i.ap, -16
  %conflict.rdx34 = or i1 %conflict.rdx32, %diff.check33
  %i.aq = sub i64 %i.y, %i.t
  %diff.check35 = icmp ugt i64 %i.aq, -16
  %conflict.rdx36 = or i1 %conflict.rdx34, %diff.check35
  %i.ar = sub i64 %i.y, %i.w
  %diff.check37 = icmp ugt i64 %i.ar, -16
  %conflict.rdx38 = or i1 %conflict.rdx36, %diff.check37
  %i.as = sub i64 %i.y, %i.u
  %diff.check39 = icmp ugt i64 %i.as, -16
  %conflict.rdx40 = or i1 %conflict.rdx38, %diff.check39
  %i.at = sub i64 %i.x, %i.v
  %diff.check41 = icmp ugt i64 %i.at, -16
  %conflict.rdx42 = or i1 %conflict.rdx40, %diff.check41
  %i.au = sub i64 %i.x, %i.t
  %diff.check43 = icmp ugt i64 %i.au, -16
  %conflict.rdx44 = or i1 %conflict.rdx42, %diff.check43
  %i.av = sub i64 %i.x, %i.w
  %diff.check45 = icmp ugt i64 %i.av, -16
  %conflict.rdx46 = or i1 %conflict.rdx44, %diff.check45
  %i.aw = sub i64 %i.x, %i.u
  %diff.check47 = icmp ugt i64 %i.aw, -16
  %conflict.rdx48 = or i1 %conflict.rdx46, %diff.check47
  %i.ax = sub i64 %i.v, %i.t
  %diff.check49 = icmp ugt i64 %i.ax, -16
  %conflict.rdx50 = or i1 %conflict.rdx48, %diff.check49
  %i.ay = sub i64 %i.w, %i.v
  %diff.check51 = icmp ugt i64 %i.ay, -16
  %conflict.rdx52 = or i1 %conflict.rdx50, %diff.check51
  %i.az = sub i64 %i.v, %i.u
  %diff.check53 = icmp ugt i64 %i.az, -16
  %conflict.rdx54 = or i1 %conflict.rdx52, %diff.check53
  %i.ba = sub i64 %i.w, %i.t
  %diff.check55 = icmp ugt i64 %i.ba, -16
  %conflict.rdx56 = or i1 %conflict.rdx54, %diff.check55
  %i.bb = sub i64 %i.u, %i.t
  %diff.check57 = icmp ugt i64 %i.bb, -16
  %conflict.rdx58 = or i1 %conflict.rdx56, %diff.check57
  br i1 %conflict.rdx58, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index
  store <4 x float> zeroinitializer, ptr %i.bc, align 4, !tbaa !142
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index
  store <4 x float> zeroinitializer, ptr %i.bd, align 4, !tbaa !142
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index
  store <4 x float> zeroinitializer, ptr %i.be, align 4, !tbaa !142
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index
  store <4 x float> zeroinitializer, ptr %i.bf, align 4, !tbaa !142
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index
  %wide.load = load <4 x float>, ptr %i.bg, align 4, !tbaa !142
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index
  store <4 x float> %wide.load, ptr %i.bh, align 4, !tbaa !142
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index
  %wide.load59 = load <4 x float>, ptr %i.bi, align 4, !tbaa !142
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index
  store <4 x float> %wide.load59, ptr %i.bj, align 4, !tbaa !142
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !210

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZN23btReducedDeformableBody20endOfTimeStepZeroingEv.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 9 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i
  store float 0.000000e+00, ptr %i.bl, align 4, !tbaa !142
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i
  store float 0.000000e+00, ptr %i.bm, align 4, !tbaa !142
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i
  store float 0.000000e+00, ptr %i.bn, align 4, !tbaa !142
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  store float 0.000000e+00, ptr %i.bo, align 4, !tbaa !142
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !142
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i
  store float %i.bq, ptr %i.br, align 4, !tbaa !142
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i
end_hunk_0
