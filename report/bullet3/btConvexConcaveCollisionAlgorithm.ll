Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btConvexConcaveCollisionAlgorithm?download=true
inline.NumInlined: 393
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN24btConvexTriangleCallback22setTimeStepAndCountersEfRK16btDispatcherInfoPK24btCollisionObjectWrapperS5_P16btManifoldResult:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.m = load float, ptr %i.j, align 4, !tbaa !44, !noalias !103 ; 2 uses
  %i.n = load float, ptr %i.k, align 4, !tbaa !44, !noalias !103 ; 2 uses
  %i.o = load float, ptr %i.l, align 4, !tbaa !44, !noalias !103 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !60, !nonnull !43, !align !61 ; 11 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 36
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.ae = load <2 x float>, ptr %i.g, align 4, !tbaa !44, !noalias !103 ; 3 uses
  %i.af = load <2 x float>, ptr %i.h, align 4, !tbaa !44, !noalias !103 ; 3 uses
  %i.ag = load <2 x float>, ptr %i.i, align 4, !tbaa !44, !noalias !103 ; 3 uses
  %i.ah = load float, ptr %i.p, align 4, !tbaa !44, !noalias !104
  %i.ai = fneg float %i.ah                        ; 2 uses
  %i.aj = load float, ptr %i.q, align 4, !tbaa !44, !noalias !104
  %i.ak = fneg float %i.aj                        ; 2 uses
  %i.al = load float, ptr %i.r, align 4, !tbaa !44, !noalias !104
  %i.am = fneg float %i.al
  %i.an = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x float> %i.af, %i.ao
  %i.aq = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.ar, <2 x float> %i.ap)
  %i.at = insertelement <2 x float> poison, float %i.am, i64 0 ; 2 uses
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.au, <2 x float> %i.as)
  %i.aw = load float, ptr %i.ad, align 4, !tbaa !44, !noalias !105 ; 2 uses
  %i.ax = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = load <2 x float>, ptr %i.ac, align 4, !tbaa !44, !noalias !105 ; 4 uses
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bb = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bc = fmul <2 x float> %i.af, %i.bb
  %i.bd = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.ae, <2 x float> %i.bc)
  %i.bf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> %i.ag, <2 x float> %i.be)
  %i.bg = insertelement <2 x float> poison, float %i.n, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = insertelement <2 x float> %i.az, float %i.ak, i64 0
  %i.bj = fmul <2 x float> %i.bh, %i.bi
  %i.bk = insertelement <2 x float> poison, float %i.m, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = insertelement <2 x float> %i.ba, float %i.ai, i64 0
  %i.bn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> %i.bm, <2 x float> %i.bj)
  %i.bo = insertelement <2 x float> poison, float %i.o, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = insertelement <2 x float> %i.at, float %i.aw, i64 1
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.bq, <2 x float> %i.bn) ; 2 uses
  %i.bs = fadd <2 x float> %i.av, %i.bf
  %shift = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.br, %shift
  %.sroa.3.12.vec.insert.i4.i.i27 = insertelement <2 x float> %foldExtExtBinop, float 0.000000e+00, i64 1
  %i.bt = load <2 x float>, ptr %i.t, align 4, !tbaa !44, !noalias !106 ; 2 uses
  %i.bu = load <2 x float>, ptr %i.u, align 4, !tbaa !44, !noalias !106 ; 2 uses
  %i.bv = load <2 x float>, ptr %i.v, align 4, !tbaa !44, !noalias !106 ; 2 uses
  %i.bw = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bx = shufflevector <4 x float> %i.bw, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.by = shufflevector <2 x float> %i.bu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bz = insertelement <4 x float> %i.by, float 1.000000e+00, i64 3
  %i.ca = shufflevector <2 x float> %i.bt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cb = insertelement <4 x float> %i.ca, float 0.000000e+00, i64 3
  %i.cc = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cd = shufflevector <4 x float> %i.cc, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.ce = shufflevector <2 x float> %i.bv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cf = insertelement <4 x float> %i.ce, float 0.000000e+00, i64 3
  %i.cg = shufflevector <2 x float> %i.ag, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ch = shufflevector <4 x float> %i.cg, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cj = load <2 x float>, ptr %i.x, align 4, !tbaa !44, !noalias !106 ; 2 uses
  %i.ck = load float, ptr %i.aa, align 4, !tbaa !44, !noalias !106
  %i.cl = load <2 x float>, ptr %i.w, align 4, !tbaa !44, !noalias !106 ; 2 uses
  %i.cm = load float, ptr %i.z, align 4, !tbaa !44, !noalias !106
  %i.cn = load <2 x float>, ptr %i.y, align 4, !tbaa !44, !noalias !106 ; 2 uses
  %i.co = load float, ptr %i.ab, align 4, !tbaa !44, !noalias !106
  %i.cp = shufflevector <2 x float> %i.cj, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cq = shufflevector <4 x float> %i.bz, <4 x float> %i.cp, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.cr = fmul <4 x float> %i.bx, %i.cq
  %i.cs = shufflevector <2 x float> %i.cl, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ct = shufflevector <4 x float> %i.cb, <4 x float> %i.cs, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.cu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ct, <4 x float> %i.cd, <4 x float> %i.cr)
  %i.cv = shufflevector <2 x float> %i.cn, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cw = shufflevector <4 x float> %i.cf, <4 x float> %i.cv, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.cx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cw, <4 x float> %i.ch, <4 x float> %i.cu)
  %i.cy = shufflevector <4 x float> %i.bw, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cz = shufflevector <2 x float> %i.bu, <2 x float> %i.cj, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.da = insertelement <4 x float> %i.cz, float 1.000000e+00, i64 3 ; 2 uses
  %i.db = fmul <4 x float> %i.cy, %i.da
  %i.dc = shufflevector <2 x float> %i.bt, <2 x float> %i.cl, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.dd = insertelement <4 x float> %i.dc, float 0.000000e+00, i64 3 ; 2 uses
  %i.de = shufflevector <4 x float> %i.cc, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.df = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> %i.de, <4 x float> %i.db)
  %i.dg = shufflevector <2 x float> %i.bv, <2 x float> %i.cn, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.dh = insertelement <4 x float> %i.dg, float 0.000000e+00, i64 3 ; 2 uses
  %i.di = shufflevector <4 x float> %i.cg, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.dj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dh, <4 x float> %i.di, <4 x float> %i.df)
  store <4 x float> %i.cx, ptr %6, align 16
  store <4 x float> %i.dj, ptr %i.ci, align 16
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.dl = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.n, i64 0
  %i.dm = shufflevector <4 x float> %i.dl, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dn = insertelement <4 x float> %i.da, float %i.ck, i64 2
  %i.do = fmul <4 x float> %i.dm, %i.dn
  %i.dp = insertelement <4 x float> %i.dd, float %i.cm, i64 2
  %i.dq = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.m, i64 0
  %i.dr = shufflevector <4 x float> %i.dq, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ds = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dp, <4 x float> %i.dr, <4 x float> %i.do)
  %i.dt = insertelement <4 x float> %i.dh, float %i.co, i64 2
  %i.du = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.o, i64 0
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dt, <4 x float> %i.dv, <4 x float> %i.ds)
  store <4 x float> %i.dw, ptr %i.dk, align 16
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store <2 x float> %i.bs, ptr %i.dx, align 16
  %.sroa.19.48..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i27, ptr %.sroa.19.48..sroa_idx, align 8, !tbaa !48
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !45 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ec = load ptr, ptr %i.dz, align 8, !tbaa !10
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(32) %i.dz, ptr noundef nonnull align 4 dereferenceable(64) %6, ptr noundef nonnull align 4 dereferenceable(16) %i.ea, ptr noundef nonnull align 4 dereferenceable(16) %i.eb)
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.eg = load float, ptr %i.ef, align 8, !tbaa !57
  %i.eh = fadd float %1, %i.eg                    ; 3 uses
  %i.ei = load <2 x float>, ptr %i.eb, align 8, !tbaa !44
  %i.ej = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.el = fadd <2 x float> %i.ek, %i.ei
  store <2 x float> %i.el, ptr %i.eb, align 8, !tbaa !44
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.en = load float, ptr %i.em, align 8, !tbaa !44
  %i.eo = fadd float %i.eh, %i.en
  store float %i.eo, ptr %i.em, align 8, !tbaa !44
  %i.ep = load <2 x float>, ptr %i.ea, align 8, !tbaa !44
  %i.eq = fsub <2 x float> %i.ep, %i.ek
  store <2 x float> %i.eq, ptr %i.ea, align 8, !tbaa !44
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.es = load float, ptr %i.er, align 8, !tbaa !44
  %i.et = fsub float %i.es, %i.eh
  store float %i.et, ptr %i.er, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN33btConvexConcaveCollisionAlgorithm10clearCacheEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(113) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.d), !inline_history !31
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN33btConvexConcaveCollisionAlgorithm16processCollisionEPK24btCollisionObjectWrapperS2_RK16btDispatcherInfoP16btManifoldResult(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef %4) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.CProfileSample, align 1      ; 6 uses
  %6 = alloca %class.btAlignedObjectArray.0, align 8 ; 8 uses
  %7 = alloca %class.btVector3, align 4           ; 5 uses
  %8 = alloca %class.btVector3, align 8           ; 6 uses
  %9 = alloca %class.btVector3, align 4           ; 9 uses
  %i.a = alloca float, align 4                    ; 6 uses
  %10 = alloca %class.btVector3, align 8          ; 6 uses
  %11 = alloca %class.btVector3, align 8          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull @.str.2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load i8, ptr %i.b, align 8, !tbaa !36, !range !42, !noundef !43
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.d, ptr %2, ptr %1           ; 4 uses
  %i.f = select i1 %i.d, ptr %1, ptr %2           ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !47   ; 2 uses
  %i.k = add i32 %i.j, -21
  %i.l = icmp ult i32 %i.k, 9
  br i1 %i.l, label %bb.b, label %bb.at

bb.b:                                             ; preds = %bb.a
  %12 = icmp eq i32 %i.j, 29
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !45   ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !47   ; 3 uses
  %i.q = icmp slt i32 %i.p, 20                    ; 2 uses
  br i1 %12, label %bb.c, label %13

bb.c:                                             ; preds = %bb.b
  br i1 %i.q, label %bb.d, label %bb.at

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  store i8 1, ptr %i.r, align 8, !tbaa !112
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr null, ptr %i.s, align 8, !tbaa !65
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 6 uses
  store i32 0, ptr %i.t, align 4, !tbaa !113
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i32 0, ptr %i.u, align 8, !tbaa !114
  %i.v = icmp slt i32 %i.p, 7
  br i1 %i.v, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.d, %bb.m
  %i.w = phi ptr [ %i.aw, %bb.m ], [ null, %bb.d ] ; 11 uses
  %i.x = phi i32 [ %i.ax, %bb.m ], [ 0, %bb.d ]   ; 17 uses
  %.pre2.i = phi i32 [ %i.bb, %bb.m ], [ 0, %bb.d ] ; 5 uses
  %.052 = phi i32 [ %i.bc, %bb.m ], [ 0, %bb.d ]  ; 3 uses
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 200
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = invoke noundef i32 %i.aa(ptr noundef nonnull align 8 dereferenceable(80) %i.n)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.preheader
  %i.ac = icmp slt i32 %.052, %i.ab
  br i1 %i.ac, label %bb.g, label %bb.o

bb.f:                                             ; preds = %.preheader
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !10
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 224
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(80) %i.n, i32 noundef %.052, ptr noundef nonnull align 4 dereferenceable(16) %7)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.ah = icmp eq i32 %.pre2.i, %i.x
  br i1 %i.ah, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %.not.i.i = icmp eq i32 %i.x, 0
  %i.ai = shl i32 %i.x, 1
  %i.aj = select i1 %.not.i.i, i32 1, i32 %i.ai   ; 5 uses
  %i.ak = icmp slt i32 %i.x, %i.aj
  br i1 %i.ak, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = sext i32 %i.aj to i64
  %i.am = shl nsw i64 %i.al, 4
  %i.an = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.am, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i unwind label %bb.n

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi ptr [ null, %bb.j ], [ %i.an, %bb.k ] ; 5 uses
  %i.ao = icmp sgt i32 %i.x, 0
  br i1 %i.ao, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.x to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.ap = icmp eq i32 %i.x, 1
  br i1 %i.ap, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.l ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.l ]
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %indvars.iv.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aq, ptr noundef nonnull align 4 dereferenceable(16) %i.ar, i64 16, i1 false), !tbaa.struct !49
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %indvars.iv.next.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.as, ptr noundef nonnull align 4 dereferenceable(16) %i.at, i64 16, i1 false), !tbaa.struct !49
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.thread.loopexit.unr-lcssa, label %bb.l, !llvm.loop !107

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
  %.not.i5.i.i.not = icmp eq ptr %i.w, null
  br i1 %.not.i5.i.i.not, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.thread

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.thread.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.thread.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.thread.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod210 = trunc i32 %i.x to i1
  call void @llvm.assume(i1 %lcmp.mod210)
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.epil.init
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %indvars.iv.i.i.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.au, ptr noundef nonnull align 4 dereferenceable(16) %i.av, i64 16, i1 false), !tbaa.struct !49
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.thread

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.thread: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.thread.loopexit.unr-lcssa, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.w)
          to label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i unwind label %bb.n

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i: ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.thread, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  store i8 1, ptr %i.r, align 8, !tbaa !112
  store ptr %.0.i.i.i, ptr %i.s, align 8, !tbaa !65
  store i32 %i.aj, ptr %i.u, align 8, !tbaa !114
  br label %bb.m

bb.m:                                             ; preds = %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i, %bb.i, %bb.h
  %i.aw = phi ptr [ %.0.i.i.i, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i ], [ %i.w, %bb.i ], [ %i.w, %bb.h ] ; 2 uses
  %i.ax = phi i32 [ %i.aj, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i ], [ %i.x, %bb.i ], [ %i.x, %bb.h ]
  %i.ay = sext i32 %.pre2.i to i64
  %i.az = getelementptr inbounds [16 x i8], ptr %i.aw, i64 %i.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.az, ptr noundef nonnull align 4 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !49
  %i.ba = load i32, ptr %i.t, align 4, !tbaa !113
  %i.bb = add nsw i32 %i.ba, 1                    ; 2 uses
  store i32 %i.bb, ptr %i.t, align 4, !tbaa !113
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.bc = add nuw nsw i32 %.052, 1
  br label %.preheader, !llvm.loop !108

bb.n:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.thread, %bb.k, %bb.g
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.an

bb.o:                                             ; preds = %bb.e
  %.pr = load i32, ptr %i.o, align 8, !tbaa !47
  %i.be = icmp eq i32 %.pr, 8
  br i1 %i.be, label %bb.p, label %bb.v

.thread:                                          ; preds = %bb.d
  %i.bf = icmp eq i32 %i.p, 8
  br i1 %i.bf, label %.thread180, label %_ZN16btManifoldResult20refreshContactPointsEv.exit

bb.p:                                             ; preds = %bb.o
  %i.bg = icmp eq i32 %.pre2.i, %i.x
  br i1 %i.bg, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %.not.i.i86 = icmp eq i32 %i.x, 0
  %i.bh = shl nsw i32 %i.x, 1
  %spec.select = select i1 %.not.i.i86, i32 1, i32 %i.bh ; 3 uses
  %i.bi = icmp slt i32 %i.x, %spec.select
  br i1 %i.bi, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %.not.i.i.i87 = icmp eq i32 %spec.select, 0
  br i1 %.not.i.i.i87, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i89, label %.thread180

.thread180:                                       ; preds = %.thread, %bb.r
  %i.bj = phi i32 [ %i.x, %bb.r ], [ 0, %.thread ]
  %i.bk = phi ptr [ %i.w, %bb.r ], [ null, %.thread ]
  %i.bl = phi i32 [ %spec.select, %bb.r ], [ 1, %.thread ] ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = shl nsw i64 %i.bm, 4
  %i.bo = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.bn, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i89 unwind label %bb.u

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i89: ; preds = %.thread180, %bb.r
  %i.bp = phi i32 [ %i.x, %bb.r ], [ %i.bj, %.thread180 ] ; 5 uses
  %i.bq = phi ptr [ %i.w, %bb.r ], [ %i.bk, %.thread180 ] ; 5 uses
  %i.br = phi i32 [ 0, %bb.r ], [ %i.bl, %.thread180 ]
  %.0.i.i.i90 = phi ptr [ null, %bb.r ], [ %i.bo, %.thread180 ] ; 5 uses
  %i.bs = icmp sgt i32 %i.bp, 0
  br i1 %i.bs, label %.lr.ph.i.i.i95, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i91

.lr.ph.i.i.i95:                                   ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i89
  %wide.trip.count.i.i.i96 = zext nneg i32 %i.bp to i64 ; 2 uses
  %xtraiter212 = and i64 %wide.trip.count.i.i.i96, 1
  %i.bt = icmp eq i32 %i.bp, 1
  br i1 %i.bt, label %.epil.preheader211, label %.lr.ph.i.i.i95.new

.lr.ph.i.i.i95.new:                               ; preds = %.lr.ph.i.i.i95
  %unroll_iter215 = and i64 %wide.trip.count.i.i.i96, 2147483646
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i.i.i95.new
  %indvars.iv.i.i.i97 = phi i64 [ 0, %.lr.ph.i.i.i95.new ], [ %indvars.iv.next.i.i.i98.1, %bb.s ] ; 4 uses
  %niter216 = phi i64 [ 0, %.lr.ph.i.i.i95.new ], [ %niter216.next.1, %bb.s ]
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i90, i64 %indvars.iv.i.i.i97
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %indvars.iv.i.i.i97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bu, ptr noundef nonnull align 4 dereferenceable(16) %i.bv, i64 16, i1 false), !tbaa.struct !49
  %indvars.iv.next.i.i.i98 = or disjoint i64 %indvars.iv.i.i.i97, 1 ; 2 uses
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i90, i64 %indvars.iv.next.i.i.i98
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %indvars.iv.next.i.i.i98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bw, ptr noundef nonnull align 4 dereferenceable(16) %i.bx, i64 16, i1 false), !tbaa.struct !49
end_hunk_0
begin_hunk_1_@_ZN33btConvexConcaveCollisionAlgorithm16processCollisionEPK24btCollisionObjectWrapperS2_RK16btDispatcherInfoP16btManifoldResult:bb.a
  %i.fz = load float, ptr %i.fm, align 4, !tbaa !44
  %i.ga = fsub float %i.fg, %i.fz                 ; 2 uses
  %i.gb = load <2 x float>, ptr %i.fh, align 4, !tbaa !44, !noalias !120
  %i.gc = load <2 x float>, ptr %i.fn, align 4, !tbaa !44, !noalias !120
  %i.gd = load <2 x float>, ptr %i.fo, align 4, !tbaa !44, !noalias !120
  %i.ge = insertelement <2 x float> poison, float %i.fy, i64 0
  %i.gf = shufflevector <2 x float> %i.ge, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gg = fmul <2 x float> %i.gf, %i.gc
  %i.gh = insertelement <2 x float> poison, float %i.fw, i64 0
  %i.gi = shufflevector <2 x float> %i.gh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gb, <2 x float> %i.gi, <2 x float> %i.gg)
  %i.gk = insertelement <2 x float> poison, float %i.ga, i64 0
  %i.gl = shufflevector <2 x float> %i.gk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gd, <2 x float> %i.gl, <2 x float> %i.gj)
  %i.gn = fmul float %i.fy, %i.ft
  %i.go = call float @llvm.fmuladd.f32(float %i.fs, float %i.fw, float %i.gn)
  %i.gp = call noundef float @llvm.fmuladd.f32(float %i.fu, float %i.ga, float %i.go)
  %.sroa.3.12.vec.insert.i4.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gp, i64 0
  store <2 x float> %i.gm, ptr %8, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i4.i, ptr %i.cu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.gq = invoke noundef zeroext i1 @_ZN19btSdfCollisionShape10queryPointERK9btVector3RfRS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %9)
          to label %bb.y unwind label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.gr = load float, ptr %i.a, align 4           ; 3 uses
  %i.gs = fcmp ole float %i.gr, %.051
  %or.cond.not = select i1 %i.gq, i1 %i.gs, i1 false
  br i1 %or.cond.not, label %bb.z, label %bb.ai

bb.z:                                             ; preds = %bb.y
  %i.gt = load float, ptr %9, align 4, !tbaa !44  ; 3 uses
  %i.gu = load float, ptr %i.cv, align 4, !tbaa !44 ; 3 uses
  %i.gv = fmul float %i.gu, %i.gu
  %i.gw = call float @llvm.fmuladd.f32(float %i.gt, float %i.gt, float %i.gv)
  %i.gx = load float, ptr %i.cw, align 4, !tbaa !44 ; 3 uses
  %i.gy = call noundef float @llvm.fmuladd.f32(float %i.gx, float %i.gx, float %i.gw) ; 2 uses
  %i.gz = fcmp ult float %i.gy, f0x28800000
  br i1 %i.gz, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %sqrt.i = call float @llvm.sqrt.f32(float %i.gy)
  %i.ha = fdiv float 1.000000e+00, %sqrt.i        ; 3 uses
  %i.hb = fmul float %i.gt, %i.ha
  %i.hc = fmul float %i.gu, %i.ha
  %i.hd = fmul float %i.gx, %i.ha
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  store float 0.000000e+00, ptr %i.cx, align 4, !tbaa !44
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %.sink7.i = phi float [ 1.000000e+00, %bb.ab ], [ %i.hb, %bb.aa ] ; 3 uses
  %.sink6.i = phi float [ 0.000000e+00, %bb.ab ], [ %i.hc, %bb.aa ] ; 3 uses
  %.sink.i104 = phi float [ 0.000000e+00, %bb.ab ], [ %i.hd, %bb.aa ] ; 3 uses
  store float %.sink7.i, ptr %9, align 4, !tbaa !44
  store float %.sink6.i, ptr %i.cv, align 4, !tbaa !44
  store float %.sink.i104, ptr %i.cw, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.he = load ptr, ptr %i.ct, align 8, !tbaa !60, !nonnull !43, !align !61 ; 7 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !44
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !44
  %i.hk = load <2 x float>, ptr %i.he, align 4, !tbaa !44 ; 2 uses
  %i.hl = load <2 x float>, ptr %i.hh, align 4, !tbaa !44 ; 2 uses
  %i.hm = insertelement <2 x float> poison, float %.sink6.i, i64 0
  %i.hn = shufflevector <2 x float> %i.hm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ho = shufflevector <2 x float> %i.hk, <2 x float> %i.hl, <2 x i32> <i32 1, i32 3>
  %i.hp = fmul <2 x float> %i.hn, %i.ho
  %i.hq = shufflevector <2 x float> %i.hk, <2 x float> %i.hl, <2 x i32> <i32 0, i32 2>
  %i.hr = insertelement <2 x float> poison, float %.sink7.i, i64 0
  %i.hs = shufflevector <2 x float> %i.hr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ht = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hq, <2 x float> %i.hs, <2 x float> %i.hp)
  %i.hu = insertelement <2 x float> poison, float %i.hg, i64 0
  %i.hv = insertelement <2 x float> %i.hu, float %i.hj, i64 1
  %i.hw = insertelement <2 x float> poison, float %.sink.i104, i64 0
  %i.hx = shufflevector <2 x float> %i.hw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hv, <2 x float> %i.hx, <2 x float> %i.ht) ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !44
  %i.ib = getelementptr inbounds nuw i8, ptr %i.he, i64 36
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !44
  %i.id = fmul float %.sink6.i, %i.ic
  %i.ie = call float @llvm.fmuladd.f32(float %i.ia, float %.sink7.i, float %i.id)
  %i.if = getelementptr inbounds nuw i8, ptr %i.he, i64 40
  %i.ig = load float, ptr %i.if, align 4, !tbaa !44
  %i.ih = call noundef float @llvm.fmuladd.f32(float %i.ig, float %.sink.i104, float %i.ie) ; 3 uses
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ih, i64 0
  store <2 x float> %i.hy, ptr %10, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.cy, align 8
  %i.ii = load i32, ptr %i.o, align 8, !tbaa !47
  %i.ij = icmp eq i32 %i.ii, 8
  br i1 %i.ij, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.ik = load float, ptr %i.cz, align 8, !tbaa !44
  %i.il = load float, ptr %i.da, align 8, !tbaa !44
  %i.im = fmul float %i.ik, %i.il                 ; 3 uses
  %i.in = fsub float %i.gr, %i.im                 ; 2 uses
  store float %i.in, ptr %i.a, align 4, !tbaa !44
  %i.io = fmul float %i.im, %i.ih
  %i.ip = insertelement <2 x float> poison, float %i.im, i64 0
  %i.iq = shufflevector <2 x float> %i.ip, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ir = fmul <2 x float> %i.iq, %i.hy
  %i.is = fsub <2 x float> %i.fd, %i.ir
  %i.it = fsub float %i.fg, %i.io
  %.sroa.12.8.vec.insert = insertelement <2 x float> %.sroa.3.12.vec.insert.i4.i.i, float %i.it, i64 0
  br label %bb.af

bb.ae:                                            ; preds = %bb.x
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %i.iv = phi float [ %i.in, %bb.ad ], [ %i.gr, %bb.ac ] ; 3 uses
  %.sroa.12.0 = phi <2 x float> [ %.sroa.12.8.vec.insert, %bb.ad ], [ %.sroa.3.12.vec.insert.i4.i.i, %bb.ac ]
  %.sroa.0126.0 = phi <2 x float> [ %i.is, %bb.ad ], [ %i.fd, %bb.ac ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.iw = insertelement <2 x float> poison, float %i.iv, i64 0
  %i.ix = shufflevector <2 x float> %i.iw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iy = fmul <2 x float> %i.hy, %i.ix
  %i.iz = fmul float %i.iv, %i.ih
  %i.ja = fsub <2 x float> %.sroa.0126.0, %i.iy
  %.sroa.12.8.vec.extract141 = extractelement <2 x float> %.sroa.12.0, i64 0
  %i.jb = fsub float %.sroa.12.8.vec.extract141, %i.iz
  %.sroa.3.12.vec.insert.i112 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.jb, i64 0
  store <2 x float> %i.ja, ptr %11, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i112, ptr %i.db, align 8
  %i.jc = load ptr, ptr %4, align 8, !tbaa !10
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 32
  %i.je = load ptr, ptr %i.jd, align 8
  invoke void %i.je(ptr noundef nonnull align 8 dereferenceable(52) %4, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %11, float noundef %i.iv)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.jf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jg = icmp samesign ult i64 %indvars.iv.next, %i.dc
  br i1 %i.jg, label %bb.x, label %._crit_edge.loopexit, !llvm.loop !111

bb.aj:                                            ; preds = %bb.ah, %bb.ae
  %.pn70.pn = phi { ptr, i32 } [ %i.jf, %bb.ah ], [ %i.iu, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.an

bb.ak:                                            ; preds = %.sink.split.i
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

_ZN16btManifoldResult20refreshContactPointsEv.exit: ; preds = %.thread, %._crit_edge, %.sink.split.i, %bb.v
  %i.ji = load ptr, ptr %i.s, align 8, !tbaa !65  ; 2 uses
  %.not.i.i.i115 = icmp ne ptr %i.ji, null
  %i.jj = load i8, ptr %i.r, align 8, !range !42
  %i.jk = trunc nuw i8 %i.jj to i1
  %or.cond.i.i = select i1 %.not.i.i.i115, i1 %i.jk, i1 false
  br i1 %or.cond.i.i, label %bb.al, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit

bb.al:                                            ; preds = %_ZN16btManifoldResult20refreshContactPointsEv.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ji)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jl = landingpad { ptr, i32 }
          catch ptr null
  %i.jm = extractvalue { ptr, i32 } %i.jl, 0
  call void @__clang_call_terminate(ptr %i.jm) #15
  unreachable

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit:   ; preds = %_ZN16btManifoldResult20refreshContactPointsEv.exit, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.at

bb.an:                                            ; preds = %bb.aj, %bb.u, %bb.ak, %bb.f, %bb.n
  %.pn77.pn = phi { ptr, i32 } [ %i.jh, %bb.ak ], [ %i.ad, %bb.f ], [ %i.bd, %bb.n ], [ %i.cm, %bb.u ], [ %.pn70.pn, %bb.aj ]
  call void @_ZN20btAlignedObjectArrayI9btVector3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.au

13:                                               ; preds = %bb.b
  br i1 %i.q, label %bb.ao, label %bb.at

bb.ao:                                            ; preds = %13
  %i.jn = load ptr, ptr %i.h, align 8, !tbaa !10
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 96
  %i.jp = load ptr, ptr %i.jo, align 8
  %i.jq = invoke noundef float %i.jp(ptr noundef nonnull align 8 dereferenceable(36) %i.h)
          to label %bb.ap unwind label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !39
  %i.ju = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.jt, ptr %i.ju, align 8, !tbaa !115
  invoke void @_ZN24btConvexTriangleCallback22setTimeStepAndCountersEfRK16btDispatcherInfoPK24btCollisionObjectWrapperS5_P16btManifoldResult(ptr noundef nonnull align 8 dereferenceable(96) %i.jr, float noundef %i.jq, ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %4)
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.jv = load ptr, ptr %i.js, align 8, !tbaa !39 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !29
  %i.jy = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !29
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jv, i64 840
  store ptr %i.jx, ptr %i.ka, align 8, !tbaa !119
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jv, i64 848
  store ptr %i.jz, ptr %i.kb, align 8, !tbaa !121
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ke = load ptr, ptr %i.h, align 8, !tbaa !10
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 128
  %i.kg = load ptr, ptr %i.kf, align 8
  invoke void %i.kg(ptr noundef nonnull align 8 dereferenceable(36) %i.h, ptr noundef nonnull %i.jr, ptr noundef nonnull align 4 dereferenceable(16) %i.kc, ptr noundef nonnull align 4 dereferenceable(16) %i.kd)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.kh = load ptr, ptr %i.ju, align 8, !tbaa !115 ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 856
  %i.kj = load i32, ptr %i.ki, align 8, !tbaa !118
  %.not.i116 = icmp eq i32 %i.kj, 0
  br i1 %.not.i116, label %_ZN16btManifoldResult20refreshContactPointsEv.exit123, label %.sink.split.i118

.sink.split.i118:                                 ; preds = %bb.ar
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kh, i64 840
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !119
  %i.km = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !58
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !29 ; 3 uses
  %.not1.i117 = icmp eq ptr %i.kl, %i.kp          ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !59
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !29 ; 2 uses
  %.194 = select i1 %.not1.i117, ptr %i.kt, ptr %i.kp
  %.195 = select i1 %.not1.i117, ptr %i.kp, ptr %i.kt
  %.sink.i121 = getelementptr inbounds nuw i8, ptr %.195, i64 8
  %i.ku = getelementptr inbounds nuw i8, ptr %.194, i64 8
  invoke void @_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(880) %i.kh, ptr noundef nonnull align 4 dereferenceable(64) %.sink.i121, ptr noundef nonnull align 4 dereferenceable(64) %i.ku)
          to label %_ZN16btManifoldResult20refreshContactPointsEv.exit123 unwind label %bb.as

_ZN16btManifoldResult20refreshContactPointsEv.exit123: ; preds = %bb.ar, %.sink.split.i118
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kv, i8 0, i64 16, i1 false)
  br label %bb.at

bb.as:                                            ; preds = %.sink.split.i118, %bb.aq, %bb.ap, %bb.ao
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.at:                                            ; preds = %13, %_ZN16btManifoldResult20refreshContactPointsEv.exit123, %bb.c, %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit, %bb.a
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret void

bb.au:                                            ; preds = %bb.as, %bb.an
  %.pn77.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn77.pn, %bb.an ], [ %i.kw, %bb.as ]
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  resume { ptr, i32 } %.pn77.pn.pn.pn.pn
}

declare noundef zeroext i1 @_ZN19btSdfCollisionShape10queryPointERK9btVector3RfRS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayI9btVector3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !42
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #15
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZN33btConvexConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(113) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.btVector3, align 8           ; 9 uses
  %6 = alloca %class.btVector3, align 8           ; 6 uses
  %7 = alloca %struct.LocalTriangleSphereCastCallback, align 8 ; 31 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i8, ptr %i.a, align 8, !tbaa !36, !range !42, !noundef !43
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = select i1 %i.c, ptr %2, ptr %1           ; 21 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.g = load float, ptr %i.e, align 4, !tbaa !44 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 124 ; 2 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.k = load <2 x float>, ptr %i.f, align 4, !tbaa !44 ; 3 uses
  %i.l = load float, ptr %i.j, align 4, !tbaa !44 ; 2 uses
  %i.m = extractelement <2 x float> %i.k, i64 0   ; 2 uses
  %i.n = fsub float %i.g, %i.m                    ; 2 uses
  %i.o = fsub float %i.i, %i.l                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.q = load float, ptr %i.p, align 4, !tbaa !44
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.s = load float, ptr %i.r, align 4, !tbaa !44 ; 3 uses
  %i.t = fsub float %i.q, %i.s                    ; 2 uses
  %i.u = fmul float %i.o, %i.o
  %i.v = tail call float @llvm.fmuladd.f32(float %i.n, float %i.n, float %i.u)
  %i.w = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 308
  %i.y = load float, ptr %i.x, align 4, !tbaa !139 ; 2 uses
  %i.z = fmul float %i.y, %i.y
  %i.aa = fcmp olt float %i.w, %i.z
  br i1 %i.aa, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.ad = select i1 %i.c, ptr %1, ptr %2          ; 10 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.ak = load float, ptr %i.ah, align 4, !tbaa !44, !noalias !140 ; 4 uses
  %i.al = load float, ptr %i.ai, align 4, !tbaa !44, !noalias !140 ; 4 uses
  %i.am = load float, ptr %i.aj, align 4, !tbaa !44, !noalias !140 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 60
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.as = load <2 x float>, ptr %i.ab, align 4, !tbaa !44, !noalias !141 ; 3 uses
  %i.at = load <2 x float>, ptr %i.aq, align 4, !tbaa !44, !noalias !141 ; 3 uses
  %i.au = load <2 x float>, ptr %i.ar, align 4, !tbaa !44, !noalias !141 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.aw = load float, ptr %i.av, align 4, !tbaa !44, !noalias !141 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !44, !noalias !141 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ba = load float, ptr %i.az, align 4, !tbaa !44, !noalias !141 ; 3 uses
  %i.bb = insertelement <2 x float> poison, float %i.al, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bd = fmul <2 x float> %i.bc, %i.at
  %i.be = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.bf, <2 x float> %i.bd)
  %i.bh = insertelement <2 x float> poison, float %i.am, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.bi, <2 x float> %i.bg)
  %i.bk = fmul float %i.al, %i.ay
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.ak, float %i.bk)
  %i.bm = tail call noundef float @llvm.fmuladd.f32(float %i.ba, float %i.am, float %i.bl)
  %i.bn = fmul float %i.al, %i.l
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.m, float %i.ak, float %i.bn)
  %i.bp = tail call noundef float @llvm.fmuladd.f32(float %i.s, float %i.am, float %i.bo)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.bs = load <2 x float>, ptr %i.ac, align 4, !tbaa !44, !noalias !142 ; 3 uses
  %i.bt = load <2 x float>, ptr %i.bq, align 4, !tbaa !44, !noalias !142 ; 3 uses
  %i.bu = load <2 x float>, ptr %i.br, align 4, !tbaa !44, !noalias !142 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !44, !noalias !142 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.by = load float, ptr %i.bx, align 4, !tbaa !44, !noalias !142 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !44, !noalias !142 ; 3 uses
  %i.cb = fmul <2 x float> %i.bc, %i.bt
  %i.cc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.bf, <2 x float> %i.cb)
  %i.cd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.bi, <2 x float> %i.cc)
  %i.ce = load <2 x float>, ptr %i.ae, align 4, !tbaa !44, !noalias !140 ; 7 uses
  %i.cf = load <2 x float>, ptr %i.af, align 4, !tbaa !44, !noalias !140 ; 7 uses
  %i.cg = load <2 x float>, ptr %i.ag, align 4, !tbaa !44, !noalias !140 ; 7 uses
  %i.ch = load float, ptr %i.an, align 4, !tbaa !44, !noalias !143
  %i.ci = fneg float %i.ch                        ; 2 uses
  %i.cj = load float, ptr %i.ao, align 4, !tbaa !44, !noalias !143
  %i.ck = fneg float %i.cj                        ; 2 uses
  %i.cl = load float, ptr %i.ap, align 4, !tbaa !44, !noalias !143
  %i.cm = fneg float %i.cl                        ; 2 uses
  %i.cn = load <2 x float>, ptr %i.h, align 4, !tbaa !44, !noalias !144 ; 3 uses
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cp = insertelement <2 x float> %i.co, float %i.ck, i64 0
  %i.cq = fmul <2 x float> %i.bc, %i.cp
  %i.cr = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.cs = insertelement <2 x float> %i.cr, float %i.g, i64 1
  %i.ct = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.cs, <2 x float> %i.cq)
  %i.cu = insertelement <2 x float> %i.cn, float %i.cm, i64 0
  %i.cv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.cu, <2 x float> %i.ct) ; 3 uses
  %i.cw = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cx = fmul <2 x float> %i.cw, %i.at
  %i.cy = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.cy, <2 x float> %i.cx)
  %i.da = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.db = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.da, <2 x float> %i.cz)
  %i.dc = extractelement <2 x float> %i.cg, i64 0 ; 2 uses
  %i.dd = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.de = fmul <2 x float> %i.dd, %i.at
  %i.df = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.df, <2 x float> %i.de)
  %i.dh = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.di = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.dh, <2 x float> %i.dg)
  %i.dj = extractelement <2 x float> %i.cf, i64 1
  %i.dk = extractelement <2 x float> %i.ce, i64 1
  %i.dl = extractelement <2 x float> %i.cg, i64 1 ; 2 uses
  %i.dm = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dn = insertelement <2 x float> %i.dm, float %i.ck, i64 1 ; 2 uses
  %i.do = fmul <2 x float> %i.cf, %i.dn
  %i.dp = insertelement <2 x float> %i.k, float %i.ci, i64 1 ; 2 uses
  %i.dq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dp, <2 x float> %i.ce, <2 x float> %i.do)
  %i.dr = insertelement <2 x float> poison, float %i.s, i64 0
  %i.ds = insertelement <2 x float> %i.dr, float %i.cm, i64 1 ; 2 uses
  %i.dt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ds, <2 x float> %i.cg, <2 x float> %i.dq) ; 2 uses
  %i.du = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dv = fmul <2 x float> %i.cf, %i.du
  %i.dw = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.dw, <2 x float> %i.dv)
  %i.dy = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.dy, <2 x float> %i.dx) ; 2 uses
  %i.ea = fadd <2 x float> %i.dt, %i.dz           ; 6 uses
  %i.eb = extractelement <2 x float> %i.cv, i64 0
  %i.ec = fadd float %i.eb, %i.bp                 ; 5 uses
  %.sroa.3.12.vec.insert.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ec, i64 0 ; 3 uses
  %i.ed = fmul <2 x float> %i.cw, %i.bt
  %i.ee = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.cy, <2 x float> %i.ed)
  %i.ef = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.da, <2 x float> %i.ee)
  %i.eg = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 1>
  %i.eh = insertelement <4 x float> %i.eg, float %i.al, i64 0
  %i.ei = insertelement <4 x float> poison, float %i.by, i64 0
  %i.ej = insertelement <4 x float> %i.ei, float %i.ay, i64 1
  %i.ek = shufflevector <4 x float> %i.ej, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.el = fmul <4 x float> %i.eh, %i.ek
  %i.em = insertelement <4 x float> poison, float %i.bw, i64 0
  %i.en = insertelement <4 x float> %i.em, float %i.aw, i64 1
  %i.eo = shufflevector <4 x float> %i.en, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ep = shufflevector <2 x float> %i.ce, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 1>
  %i.eq = insertelement <4 x float> %i.ep, float %i.ak, i64 0
  %i.er = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eo, <4 x float> %i.eq, <4 x float> %i.el) ; 4 uses
  %i.es = extractelement <4 x float> %i.er, i64 0
  %i.et = tail call noundef float @llvm.fmuladd.f32(float %i.ca, float %i.am, float %i.es)
end_hunk_1
