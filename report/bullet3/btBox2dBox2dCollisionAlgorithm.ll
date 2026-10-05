Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btBox2dBox2dCollisionAlgorithm?download=true
inline.NumInlined: 163
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_Z17b2CollidePolygonsP16btManifoldResultPK12btBox2dShapeRK11btTransformS3_S6_:bb.a
  store <2 x float> %.sroa.3.12.vec.insert.i34.i86, ptr %.sroa.4.0..sroa_idx.i87, align 4, !tbaa !47
  %i.jx = fcmp ogt float %i.iv, 0.000000e+00
  %..i88.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.jx, i64 16, i64 36
  %..i88.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %5, i64 %..i88.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %.sink.i89 = load i32, ptr %..i88.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !51
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  store i32 %.sink.i89, ptr %i.jy, align 4, !tbaa !51
  %i.jz = add nuw nsw i32 %.1.i82, 1
  br label %_ZL17ClipSegmentToLineP10ClipVertexS0_RK9btVector3f.exit90

_ZL17ClipSegmentToLineP10ClipVertexS0_RK9btVector3f.exit90: ; preds = %bb.m, %bb.n
  %.2.i83 = phi i32 [ %i.jz, %bb.n ], [ %.1.i82, %bb.m ]
  %i.ka = icmp samesign ult i32 %.2.i83, 2
  br i1 %i.ka, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %_ZL17ClipSegmentToLineP10ClipVertexS0_RK9btVector3f.exit90
  %i.kb = load i32, ptr @b2_maxManifoldPoints, align 4, !tbaa !30 ; 2 uses
  %i.kc = icmp sgt i32 %i.kb, 0
  br i1 %i.kc, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.o
  %.sroa.0.0.vec.insert.i91 = insertelement <2 x float> poison, float %i.gv, i64 0
  %.sroa.0.4.vec.insert.i92 = insertelement <2 x float> %.sroa.0.0.vec.insert.i91, float %i.fp, i64 1
  %.sroa.0.0 = select i1 %i.h, <2 x float> %.sroa.0117.4.vec.insert, <2 x float> %.sroa.0.4.vec.insert.i92
  %i.kd = fneg <2 x float> %.sroa.0.0
  %i.ke = select i1 %i.h, float -0.000000e+00, float 0.000000e+00
  %.sroa.3.12.vec.insert.i98 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ke, i64 0
  %i.kf = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.r
  %i.kg = phi i32 [ %i.kb, %.lr.ph ], [ %i.kv, %bb.r ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 2 uses
  %i.kh = getelementptr inbounds nuw [20 x i8], ptr %6, i64 %indvars.iv ; 4 uses
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !31
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !31
  %i.kl = fmul float %i.kk, %i.fs
  %i.km = call float @llvm.fmuladd.f32(float %i.fq, float %i.ki, float %i.kl)
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !31
  %i.kp = call noundef float @llvm.fmuladd.f32(float %i.ko, float 0.000000e+00, float %i.km)
  %i.kq = fsub float %i.kp, %i.gp                 ; 2 uses
  %i.kr = fcmp ugt float %i.kq, 0.000000e+00
  br i1 %i.kr, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  store <2 x float> %i.kd, ptr %7, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i98, ptr %i.kf, align 8
  %i.ks = load ptr, ptr %0, align 8, !tbaa !10
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 32
  %i.ku = load ptr, ptr %i.kt, align 8
  call void %i.ku(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %i.kh, float noundef %i.kq)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %.pre = load i32, ptr @b2_maxManifoldPoints, align 4, !tbaa !30
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.kv = phi i32 [ %.pre, %bb.q ], [ %i.kg, %bb.p ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.kw = sext i32 %i.kv to i64
  %i.kx = icmp slt i64 %indvars.iv.next, %i.kw
  br i1 %i.kx, label %bb.p, label %.loopexit, !llvm.loop !46

.loopexit:                                        ; preds = %bb.r, %bb.o, %_ZL17ClipSegmentToLineP10ClipVertexS0_RK9btVector3f.exit90, %_ZL17ClipSegmentToLineP10ClipVertexS0_RK9btVector3f.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.s

bb.s:                                             ; preds = %bb.b, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @_ZN30btBox2dBox2dCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #9 align 2 {
bb.a:
  ret float 1.000000e+00
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef float @_ZL17FindMaxSeparationPiPK12btBox2dShapeRK11btTransformS2_S5_(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %4) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load <4 x float>, ptr %i.g, align 4
  %i.i = shufflevector <4 x float> %i.h, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.k = load <4 x float>, ptr %i.j, align 4
  %i.l = shufflevector <4 x float> %i.k, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.n = load <4 x float>, ptr %i.m, align 4
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.q = load <4 x float>, ptr %i.p, align 4
  %i.r = shufflevector <4 x float> %i.q, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.t = load float, ptr %i.s, align 4, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.v = load float, ptr %i.u, align 4, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.af = load float, ptr %i.ae, align 4, !tbaa !31 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !31 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !31
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.am = load float, ptr %i.al, align 4, !tbaa !31
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ao = load float, ptr %i.an, align 4, !tbaa !31
  %i.ap = load <2 x float>, ptr %i.b, align 4, !tbaa !31 ; 2 uses
  %i.aq = load <2 x float>, ptr %i.d, align 4, !tbaa !31 ; 2 uses
  %i.ar = load <2 x float>, ptr %i.w, align 4, !tbaa !31 ; 2 uses
  %i.as = load <2 x float>, ptr %i.y, align 4, !tbaa !31 ; 3 uses
  %i.at = load float, ptr %i.ag, align 4, !tbaa !31
  %i.au = shufflevector <2 x float> %i.ap, <2 x float> %i.ar, <2 x i32> <i32 1, i32 3>
  %i.av = shufflevector <2 x float> %i.aq, <2 x float> %i.as, <2 x i32> <i32 1, i32 3>
  %i.aw = fmul <2 x float> %i.au, %i.av
  %i.ax = shufflevector <2 x float> %i.ap, <2 x float> %i.ar, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.ay = shufflevector <2 x float> %i.aq, <2 x float> %i.as, <2 x i32> <i32 0, i32 2>
  %i.az = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> %i.ay, <2 x float> %i.aw)
  %i.ba = insertelement <2 x float> %i.o, float %i.ai, i64 1
  %i.bb = load <2 x float>, ptr %4, align 4, !tbaa !31 ; 2 uses
  %i.bc = load <2 x float>, ptr %2, align 4, !tbaa !31 ; 3 uses
  %i.bd = load <2 x float>, ptr %i.e, align 4, !tbaa !31 ; 2 uses
  %i.be = load float, ptr %i.f, align 4, !tbaa !31
  %i.bf = load <2 x float>, ptr %i.z, align 4, !tbaa !31 ; 2 uses
  %i.bg = load float, ptr %i.ab, align 4, !tbaa !31
  %i.bh = shufflevector <2 x float> %i.bd, <2 x float> %i.bf, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bi = shufflevector <2 x float> %i.bb, <2 x float> %i.bc, <2 x i32> <i32 1, i32 3>
  %i.bj = fmul <2 x float> %i.bh, %i.bi
  %i.bk = shufflevector <2 x float> %i.bb, <2 x float> %i.bc, <2 x i32> <i32 0, i32 2>
  %i.bl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> %i.bk, <2 x float> %i.bj)
  %i.bm = shufflevector <2 x float> %i.bd, <2 x float> %i.bf, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.ba, <2 x float> %i.az)
  %i.bo = insertelement <2 x float> %i.r, float %i.ak, i64 1
  %i.bp = load <2 x float>, ptr %i.c, align 4, !tbaa !31 ; 2 uses
  %i.bq = load <2 x float>, ptr %i.x, align 4, !tbaa !31 ; 3 uses
  %i.br = load float, ptr %i.ad, align 4, !tbaa !31
  %i.bs = shufflevector <2 x float> %i.bp, <2 x float> %i.bq, <2 x i32> <i32 1, i32 3>
  %i.bt = fmul <2 x float> %i.bh, %i.bs
  %i.bu = shufflevector <2 x float> %i.bp, <2 x float> %i.bq, <2 x i32> <i32 0, i32 2>
  %i.bv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> %i.bu, <2 x float> %i.bt)
  %i.bw = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bx = insertelement <2 x float> %i.bw, float %i.bg, i64 1
  %i.by = insertelement <2 x float> %i.l, float %i.af, i64 1
  %i.bz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.by, <2 x float> %i.bv)
  %i.ca = insertelement <2 x float> poison, float %i.t, i64 0
  %i.cb = insertelement <2 x float> %i.ca, float %i.am, i64 1
  %i.cc = fadd <2 x float> %i.bz, %i.cb           ; 2 uses
  %i.cd = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ce = insertelement <2 x float> %i.cd, float %i.ao, i64 1
  %i.cf = fadd <2 x float> %i.bn, %i.ce           ; 2 uses
  %shift = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.cc, %shift ; 3 uses
  %i.cg = extractelement <2 x float> %foldExtExtBinop, i64 0
  %shift152 = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop153 = fsub <2 x float> %i.cf, %shift152
  %i.ch = extractelement <2 x float> %foldExtExtBinop153, i64 0 ; 3 uses
  %i.ci = extractelement <2 x float> %i.bc, i64 0
  %i.cj = extractelement <2 x float> %i.as, i64 0
  %i.ck = fmul float %i.br, %i.cg
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !31
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.cp = load float, ptr %i.co, align 4, !tbaa !31
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.cr = load float, ptr %i.ac, align 4, !tbaa !31 ; 2 uses
  %i.cs = load float, ptr %i.aa, align 4, !tbaa !31
  %i.ct = insertelement <2 x float> %i.i, float %i.cr, i64 1
  %i.cu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.ct, <2 x float> %i.bl)
  %i.cv = fadd <2 x float> %i.cu, %i.bo           ; 2 uses
  %shift155 = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop156 = fsub <2 x float> %i.cv, %shift155
  %i.cw = extractelement <2 x float> %foldExtExtBinop156, i64 0 ; 3 uses
  %foldExtExtBinop158 = fmul <2 x float> %i.bq, %foldExtExtBinop
  %i.cx = extractelement <2 x float> %foldExtExtBinop158, i64 0
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.cw, float %i.cx)
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.cw, float %i.ck)
  %i.da = tail call noundef float @llvm.fmuladd.f32(float %i.at, float %i.ch, float %i.cz) ; 2 uses
  %i.db = load <2 x float>, ptr %i.a, align 4, !tbaa !31 ; 2 uses
  %i.dc = load <2 x float>, ptr %i.cn, align 4, !tbaa !31
  %i.dd = load <2 x float>, ptr %i.cq, align 4, !tbaa !31
  %i.de = insertelement <4 x float> poison, float %i.af, i64 0
  %i.df = insertelement <4 x float> %i.de, float %i.da, i64 1
  %i.dg = shufflevector <4 x float> %i.df, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.dh = shufflevector <2 x float> %i.db, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.di = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.db, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.dj = shufflevector <2 x float> %i.dc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dk = shufflevector <4 x float> %i.di, <4 x float> %i.dj, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.dl = shufflevector <2 x float> %i.dd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dm = shufflevector <4 x float> %i.dk, <4 x float> %i.dl, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.dn = fmul <4 x float> %i.dg, %i.dm
  %i.do = insertelement <4 x float> poison, float %i.cr, i64 0
  %i.dp = shufflevector <4 x float> %i.do, <4 x float> %i.dh, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.dq = shufflevector <4 x float> %i.dp, <4 x float> %i.dj, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.dr = shufflevector <4 x float> %i.dq, <4 x float> %i.dl, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ds = insertelement <4 x float> poison, float %i.cw, i64 0
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 200
  %6 = load float, ptr %5, align 4, !tbaa !31
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 208
  %8 = load float, ptr %7, align 4, !tbaa !31
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 212
  %10 = load float, ptr %9, align 4, !tbaa !31
  %i.dt = tail call noundef float @llvm.fmuladd.f32(float %i.cj, float %i.ch, float %i.cy) ; 2 uses
  %11 = insertelement <4 x float> %i.ds, float %i.dt, i64 1
  %12 = shufflevector <4 x float> %11, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %13 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dr, <4 x float> %12, <4 x float> %i.dn) ; 2 uses
  %i.du = extractelement <4 x float> %13, i64 0
  %i.dv = tail call noundef float @llvm.fmuladd.f32(float %i.ai, float %i.ch, float %i.du) ; 2 uses
  %14 = fmul float %i.da, %10
  %15 = insertelement <4 x float> poison, float %8, i64 0
  %16 = insertelement <4 x float> %15, float %i.cm, i64 1
  %17 = insertelement <4 x float> %16, float %i.cp, i64 2
  %18 = insertelement <4 x float> %17, float %6, i64 3
  %19 = insertelement <4 x float> poison, float %i.dv, i64 0
  %20 = insertelement <4 x float> %19, float %i.dt, i64 1
  %21 = shufflevector <4 x float> %20, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %22 = insertelement <4 x float> %13, float %14, i64 0
  %23 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %18, <4 x float> %21, <4 x float> %22) ; 4 uses
  %i.dw = extractelement <4 x float> %23, i64 1   ; 2 uses
  %24 = fcmp ule float %i.dw, f0xFF7FFFFF         ; 2 uses
  %.114.i = select i1 %24, float f0xFF7FFFFF, float %i.dw ; 2 uses
  %.1.i = sext i1 %24 to i32
  %25 = extractelement <4 x float> %23, i64 2     ; 2 uses
  %26 = fcmp ogt float %25, %.114.i               ; 2 uses
  %.114.i.1 = select i1 %26, float %25, float %.114.i ; 2 uses
  %.1.i.1 = select i1 %26, i32 1, i32 %.1.i
  %27 = extractelement <4 x float> %23, i64 3     ; 2 uses
  %28 = fcmp ogt float %27, %.114.i.1             ; 2 uses
  %.114.i.2 = select i1 %28, float %27, float %.114.i.1
  %.1.i.2 = select i1 %28, i32 2, i32 %.1.i.1     ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !31
  %29 = extractelement <4 x float> %23, i64 0
  %i.dz = tail call noundef float @llvm.fmuladd.f32(float %i.dy, float %i.dv, float %29)
  %i.ea = fcmp ule float %i.dz, %.114.i.2         ; 2 uses
  %.1.i.3 = select i1 %i.ea, i32 %.1.i.2, i32 3   ; 4 uses
  %i.eb = tail call fastcc noundef float @_ZL14EdgeSeparationPK12btBox2dShapeRK11btTransformiS1_S4_(ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(64) %2, i32 noundef %.1.i.3, ptr noundef nonnull %3, ptr noundef nonnull align 4 dereferenceable(64) %4) ; 5 uses
  %i.ec = fcmp ogt float %i.eb, 0.000000e+00
  br i1 %i.ec, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ed = add nsw i32 %.1.i.3, -1
  %i.ee = icmp sgt i32 %.1.i.3, 0
  %i.ef = select i1 %i.ee, i32 %i.ed, i32 3       ; 2 uses
  %i.eg = tail call fastcc noundef float @_ZL14EdgeSeparationPK12btBox2dShapeRK11btTransformiS1_S4_(ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(64) %2, i32 noundef %i.ef, ptr noundef nonnull %3, ptr noundef nonnull align 4 dereferenceable(64) %4) ; 5 uses
  %i.eh = fcmp ogt float %i.eg, 0.000000e+00
  br i1 %i.eh, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ei = add nsw i32 %.1.i.2, 1
  %i.ej = select i1 %i.ea, i32 %i.ei, i32 0       ; 2 uses
  %i.ek = tail call fastcc noundef float @_ZL14EdgeSeparationPK12btBox2dShapeRK11btTransformiS1_S4_(ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(64) %2, i32 noundef %i.ej, ptr noundef nonnull %3, ptr noundef nonnull align 4 dereferenceable(64) %4) ; 5 uses
  %i.el = fcmp ogt float %i.ek, 0.000000e+00
  br i1 %i.el, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.em = fcmp ogt float %i.eg, %i.eb
  %i.en = fcmp ogt float %i.eg, %i.ek
  %or.cond = and i1 %i.em, %i.en
  br i1 %or.cond, label %.split.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.eo = fcmp ogt float %i.ek, %i.eb
  br i1 %i.eo, label %.split, label %.loopexit.sink.split

.split.us:                                        ; preds = %bb.d, %bb.f
  %.173.us = phi i32 [ %i.er, %bb.f ], [ %i.ef, %bb.d ] ; 3 uses
  %.1.us = phi float [ %i.es, %bb.f ], [ %i.eg, %bb.d ] ; 2 uses
  %i.ep = add nsw i32 %.173.us, -1
  %i.eq = icmp sgt i32 %.173.us, 0
  %i.er = select i1 %i.eq, i32 %i.ep, i32 3       ; 2 uses
  %i.es = tail call fastcc noundef float @_ZL14EdgeSeparationPK12btBox2dShapeRK11btTransformiS1_S4_(ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(64) %2, i32 noundef %i.er, ptr noundef nonnull %3, ptr noundef nonnull align 4 dereferenceable(64) %4) ; 4 uses
  %i.et = fcmp ogt float %i.es, 0.000000e+00
  br i1 %i.et, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.split.us
  %i.eu = fcmp ogt float %i.es, %.1.us
  br i1 %i.eu, label %.split.us, label %.loopexit.sink.split, !llvm.loop !52

.split:                                           ; preds = %bb.e, %bb.g
  %.173 = phi i32 [ %i.ex, %bb.g ], [ %i.ej, %bb.e ] ; 3 uses
  %.1 = phi float [ %i.ey, %bb.g ], [ %i.ek, %bb.e ] ; 2 uses
  %i.ev = add nsw i32 %.173, 1
  %i.ew = icmp slt i32 %.173, 3
  %i.ex = select i1 %i.ew, i32 %i.ev, i32 0       ; 2 uses
  %i.ey = tail call fastcc noundef float @_ZL14EdgeSeparationPK12btBox2dShapeRK11btTransformiS1_S4_(ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(64) %2, i32 noundef %i.ex, ptr noundef nonnull %3, ptr noundef nonnull align 4 dereferenceable(64) %4) ; 4 uses
  %i.ez = fcmp ogt float %i.ey, 0.000000e+00
  br i1 %i.ez, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.split
  %i.fa = fcmp ogt float %i.ey, %.1
  br i1 %i.fa, label %.split, label %.loopexit.sink.split, !llvm.loop !52

.loopexit.sink.split:                             ; preds = %bb.g, %bb.f, %bb.e
  %.1.i.3.sink = phi i32 [ %.1.i.3, %bb.e ], [ %.173.us, %bb.f ], [ %.173, %bb.g ]
  %.3.ph = phi float [ %i.eb, %bb.e ], [ %.1.us, %bb.f ], [ %.1, %bb.g ]
  store i32 %.1.i.3.sink, ptr %0, align 4, !tbaa !30
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %.split.us, %.loopexit.sink.split, %bb.b, %bb.c, %bb.a
  %.3 = phi float [ %i.eb, %bb.a ], [ %i.eg, %bb.b ], [ %i.ek, %bb.c ], [ %.3.ph, %.loopexit.sink.split ], [ %i.es, %.split.us ], [ %i.ey, %.split ]
  ret float %.3
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN30btBox2dBox2dCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %.not = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i8, ptr %i.c, align 8, !range !27
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !60   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !61
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.g, 0
  %i.k = shl nsw i32 %i.g, 1
  %i.l = select i1 %.not.i.i, i32 1, i32 %i.k     ; 4 uses
  %i.m = icmp slt i32 %i.g, %i.l
  br i1 %i.m, label %bb.d, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = sext i32 %i.l to i64
  %i.o = shl nsw i64 %i.n, 3
  %i.p = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.o, i32 noundef 16)
  %.pre.i = load i32, ptr %i.f, align 4, !tbaa !60
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i: ; preds = %bb.e, %bb.d
  %i.q = phi i32 [ %.pre.i, %bb.e ], [ %i.g, %bb.d ] ; 5 uses
  %.0.i.i.i = phi ptr [ %i.p, %bb.e ], [ null, %bb.d ] ; 8 uses
  %i.r = icmp sgt i32 %i.q, 0
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !62   ; 9 uses
  br i1 %i.r, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i
  %i.u = ptrtoaddr ptr %i.t to i64
  %.0.i.i.i8 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.q to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.q, 8
  %i.v = sub i64 %i.u, %.0.i.i.i8
  %diff.check = icmp ugt i64 %i.v, -32
  %or.cond10 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond10, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <2 x ptr>, ptr %i.x, align 8, !tbaa !63
  %wide.load9 = load <2 x ptr>, ptr %i.y, align 8, !tbaa !63
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x ptr> %wide.load, ptr %i.w, align 8, !tbaa !63
  store <2 x ptr> %wide.load9, ptr %i.z, align 8, !tbaa !63
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.i.prol
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !63
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !63
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !54

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ae = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !63
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !63
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !63
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !63
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i.1
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !63
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !63
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i.2
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !63
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !63
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
end_hunk_0
