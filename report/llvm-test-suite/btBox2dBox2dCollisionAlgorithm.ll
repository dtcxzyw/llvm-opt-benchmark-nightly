Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btBox2dBox2dCollisionAlgorithm?download=true
inline.NumInlined: 152
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_Z17b2CollidePolygonsP16btManifoldResultPK12btBox2dShapeRK11btTransformS3_S6_:bb.a
  store <2 x float> %.sroa.3.12.vec.insert.i34.i92, ptr %.sroa.4.0..sroa_idx.i93, align 4, !tbaa !41
  %i.jx = fcmp ogt float %i.iv, 0.000000e+00
  %..i94.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.jx, i64 16, i64 36
  %..i94.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %5, i64 %..i94.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %.sink.i95 = load i32, ptr %..i94.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !44
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  store i32 %.sink.i95, ptr %i.jy, align 4, !tbaa !44
  %i.jz = add nuw nsw i32 %.1.i88, 1
  br label %_ZL17ClipSegmentToLineP10ClipVertexS0_RK9btVector3f.exit96

_ZL17ClipSegmentToLineP10ClipVertexS0_RK9btVector3f.exit96: ; preds = %bb.m, %bb.n
  %.2.i89 = phi i32 [ %i.jz, %bb.n ], [ %.1.i88, %bb.m ]
  %i.ka = icmp samesign ult i32 %.2.i89, 2
  br i1 %i.ka, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %_ZL17ClipSegmentToLineP10ClipVertexS0_RK9btVector3f.exit96
  %i.kb = load i32, ptr @b2_maxManifoldPoints, align 4, !tbaa !7 ; 2 uses
  %i.kc = icmp sgt i32 %i.kb, 0
  br i1 %i.kc, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.o
  %.sroa.0.0.vec.insert.i97 = insertelement <2 x float> poison, float %i.gv, i64 0
  %.sroa.0.4.vec.insert.i98 = insertelement <2 x float> %.sroa.0.0.vec.insert.i97, float %i.fp, i64 1
  %.sroa.0.0 = select i1 %i.h, <2 x float> %.sroa.0123.4.vec.insert, <2 x float> %.sroa.0.4.vec.insert.i98
  %i.kd = fneg <2 x float> %.sroa.0.0
  %i.ke = select i1 %i.h, float -0.000000e+00, float 0.000000e+00
  %.sroa.3.12.vec.insert.i104 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ke, i64 0
  %i.kf = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.r
  %i.kg = phi i32 [ %i.kb, %.lr.ph ], [ %i.kv, %bb.r ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 2 uses
  %i.kh = getelementptr inbounds nuw [20 x i8], ptr %6, i64 %indvars.iv ; 4 uses
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !24
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !24
  %i.kl = fmul float %i.kk, %i.fs
  %i.km = call float @llvm.fmuladd.f32(float %i.fq, float %i.ki, float %i.kl)
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !24
  %i.kp = call noundef float @llvm.fmuladd.f32(float %i.ko, float 0.000000e+00, float %i.km)
  %i.kq = fsub float %i.kp, %i.gp                 ; 2 uses
  %i.kr = fcmp ugt float %i.kq, 0.000000e+00
  br i1 %i.kr, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  store <2 x float> %i.kd, ptr %7, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i104, ptr %i.kf, align 8
  %i.ks = load ptr, ptr %0, align 8, !tbaa !9
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 32
  %i.ku = load ptr, ptr %i.kt, align 8
  call void %i.ku(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %i.kh, float noundef %i.kq)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %.pre = load i32, ptr @b2_maxManifoldPoints, align 4, !tbaa !7
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.kv = phi i32 [ %.pre, %bb.q ], [ %i.kg, %bb.p ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.kw = sext i32 %i.kv to i64
  %i.kx = icmp slt i64 %indvars.iv.next, %i.kw
  br i1 %i.kx, label %bb.p, label %.loopexit

.loopexit:                                        ; preds = %bb.r, %bb.o, %_ZL17ClipSegmentToLineP10ClipVertexS0_RK9btVector3f.exit96, %_ZL17ClipSegmentToLineP10ClipVertexS0_RK9btVector3f.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.s

bb.s:                                             ; preds = %bb.b, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @_ZN30btBox2dBox2dCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #7 align 2 {
bb.a:
  ret float 1.000000e+00
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef float @_ZL17FindMaxSeparationPiPK12btBox2dShapeRK11btTransformS2_S5_(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %4) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load <4 x float>, ptr %i.d, align 4
  %i.f = shufflevector <4 x float> %i.e, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.i = load <4 x float>, ptr %i.h, align 4
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.m = load <4 x float>, ptr %i.l, align 4
  %i.n = shufflevector <4 x float> %i.m, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.p = load float, ptr %i.o, align 4, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = load <4 x float>, ptr %i.r, align 4
  %i.t = shufflevector <4 x float> %i.s, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.v = load float, ptr %i.u, align 4, !tbaa !24
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ag = load float, ptr %i.af, align 4, !tbaa !24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !24
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.am = load float, ptr %i.al, align 4, !tbaa !24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ao = load float, ptr %i.an, align 4, !tbaa !24
  %i.ap = load <2 x float>, ptr %i.b, align 4, !tbaa !24 ; 2 uses
  %i.aq = load <2 x float>, ptr %i.q, align 4, !tbaa !24 ; 2 uses
  %i.ar = load <2 x float>, ptr %i.w, align 4, !tbaa !24 ; 2 uses
  %i.as = load <2 x float>, ptr %4, align 4, !tbaa !24 ; 2 uses
  %i.at = load <2 x float>, ptr %2, align 4, !tbaa !24 ; 3 uses
  %i.au = load <2 x float>, ptr %i.c, align 4, !tbaa !24 ; 2 uses
  %i.av = load float, ptr %i.g, align 4, !tbaa !24
  %i.aw = load <2 x float>, ptr %i.y, align 4, !tbaa !24 ; 2 uses
  %i.ax = load float, ptr %i.aa, align 4, !tbaa !24
  %i.ay = shufflevector <2 x float> %i.as, <2 x float> %i.at, <2 x i32> <i32 1, i32 3>
  %i.az = shufflevector <2 x float> %i.au, <2 x float> %i.aw, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ba = fmul <2 x float> %i.ay, %i.az
  %i.bb = shufflevector <2 x float> %i.as, <2 x float> %i.at, <2 x i32> <i32 0, i32 2>
  %i.bc = shufflevector <2 x float> %i.ap, <2 x float> %i.ar, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.bd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.bc, <2 x float> %i.ba)
  %i.be = shufflevector <2 x float> %i.au, <2 x float> %i.aw, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bf = insertelement <2 x float> %i.j, float %i.ac, i64 1
  %i.bg = load <2 x float>, ptr %i.k, align 4, !tbaa !24 ; 2 uses
  %i.bh = load <2 x float>, ptr %i.ad, align 4, !tbaa !24 ; 3 uses
  %i.bi = load float, ptr %i.ae, align 4, !tbaa !24
  %i.bj = shufflevector <2 x float> %i.bg, <2 x float> %i.bh, <2 x i32> <i32 1, i32 3>
  %i.bk = fmul <2 x float> %i.az, %i.bj
  %i.bl = shufflevector <2 x float> %i.bg, <2 x float> %i.bh, <2 x i32> <i32 0, i32 2>
  %i.bm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> %i.bc, <2 x float> %i.bk)
  %i.bn = insertelement <2 x float> %i.n, float %i.ag, i64 1
  %i.bo = insertelement <2 x float> poison, float %i.av, i64 0
  %i.bp = insertelement <2 x float> %i.bo, float %i.ax, i64 1
  %i.bq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.bp, <2 x float> %i.bm)
  %i.br = insertelement <2 x float> poison, float %i.p, i64 0
  %i.bs = insertelement <2 x float> %i.br, float %i.ai, i64 1
  %i.bt = fadd <2 x float> %i.bs, %i.bq           ; 2 uses
  %i.bu = load <2 x float>, ptr %i.aj, align 4, !tbaa !24 ; 3 uses
  %i.bv = load float, ptr %i.ak, align 4, !tbaa !24
  %i.bw = shufflevector <2 x float> %i.ap, <2 x float> %i.ar, <2 x i32> <i32 1, i32 3>
  %i.bx = shufflevector <2 x float> %i.aq, <2 x float> %i.bu, <2 x i32> <i32 1, i32 3>
  %i.by = fmul <2 x float> %i.bw, %i.bx
  %i.bz = shufflevector <2 x float> %i.aq, <2 x float> %i.bu, <2 x i32> <i32 0, i32 2>
  %i.ca = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.bc, <2 x float> %i.by)
  %i.cb = insertelement <2 x float> %i.t, float %i.am, i64 1
  %i.cc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.be, <2 x float> %i.ca)
  %i.cd = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ce = insertelement <2 x float> %i.cd, float %i.ao, i64 1
  %i.cf = fadd <2 x float> %i.ce, %i.cc           ; 2 uses
  %shift = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.bt, %shift ; 3 uses
  %i.cg = extractelement <2 x float> %foldExtExtBinop, i64 0
  %shift168 = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop169 = fsub <2 x float> %i.cf, %shift168
  %i.ch = extractelement <2 x float> %foldExtExtBinop169, i64 0 ; 3 uses
  %i.ci = extractelement <2 x float> %i.at, i64 0
  %i.cj = extractelement <2 x float> %i.bu, i64 0
  %i.ck = fmul float %i.bi, %i.cg
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !24
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.cp = load float, ptr %i.co, align 4, !tbaa !24
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.cr = load float, ptr %i.z, align 4, !tbaa !24 ; 2 uses
  %i.cs = load float, ptr %i.x, align 4, !tbaa !24
  %i.ct = insertelement <2 x float> %i.f, float %i.cr, i64 1
  %i.cu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> %i.be, <2 x float> %i.bd)
  %i.cv = fadd <2 x float> %i.cu, %i.bf           ; 2 uses
  %shift171 = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop172 = fsub <2 x float> %i.cv, %shift171
  %i.cw = extractelement <2 x float> %foldExtExtBinop172, i64 0 ; 3 uses
  %foldExtExtBinop174 = fmul <2 x float> %i.bh, %foldExtExtBinop
  %i.cx = extractelement <2 x float> %foldExtExtBinop174, i64 0
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.cw, float %i.cx)
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.cw, float %i.ck)
  %i.da = tail call noundef float @llvm.fmuladd.f32(float %i.bv, float %i.ch, float %i.cz) ; 2 uses
  %i.db = load <2 x float>, ptr %i.a, align 4, !tbaa !24 ; 2 uses
  %i.dc = load <2 x float>, ptr %i.cn, align 4, !tbaa !24
  %i.dd = load <2 x float>, ptr %i.cq, align 4, !tbaa !24
  %i.de = insertelement <4 x float> poison, float %i.ag, i64 0
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
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 184
  %6 = load float, ptr %5, align 4, !tbaa !24
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 192
  %8 = load float, ptr %7, align 4, !tbaa !24
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 196
  %10 = load float, ptr %9, align 4, !tbaa !24
  %11 = tail call noundef float @llvm.fmuladd.f32(float %i.cj, float %i.ch, float %i.cy) ; 2 uses
  %i.dt = insertelement <4 x float> %i.ds, float %11, i64 1
  %i.du = shufflevector <4 x float> %i.dt, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.dv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dr, <4 x float> %i.du, <4 x float> %i.dn) ; 2 uses
  %i.dw = extractelement <4 x float> %i.dv, i64 0
  %i.dx = tail call noundef float @llvm.fmuladd.f32(float %i.am, float %i.ch, float %i.dw) ; 2 uses
  %12 = fmul float %i.da, %10
  %13 = insertelement <4 x float> poison, float %8, i64 0
  %14 = insertelement <4 x float> %13, float %i.cm, i64 1
  %15 = insertelement <4 x float> %14, float %i.cp, i64 2
  %16 = insertelement <4 x float> %15, float %6, i64 3
  %17 = insertelement <4 x float> poison, float %i.dx, i64 0
  %18 = insertelement <4 x float> %17, float %11, i64 1
  %19 = shufflevector <4 x float> %18, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %20 = insertelement <4 x float> %i.dv, float %12, i64 0
  %21 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %16, <4 x float> %19, <4 x float> %20) ; 4 uses
  %i.dy = extractelement <4 x float> %21, i64 1   ; 2 uses
  %22 = fcmp ogt float %i.dy, f0xDD5E0B6B
  %.182 = select i1 %22, float %i.dy, float f0xDD5E0B6B ; 2 uses
  %23 = extractelement <4 x float> %21, i64 2     ; 2 uses
  %24 = fcmp ogt float %23, %.182                 ; 2 uses
  %.184.1 = zext i1 %24 to i32
  %.182.1 = select i1 %24, float %23, float %.182 ; 2 uses
  %25 = extractelement <4 x float> %21, i64 3     ; 2 uses
  %26 = fcmp ogt float %25, %.182.1               ; 2 uses
  %.184.2 = select i1 %26, i32 2, i32 %.184.1     ; 2 uses
  %.182.2 = select i1 %26, float %25, float %.182.1
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !24
  %27 = extractelement <4 x float> %21, i64 0
  %i.eb = tail call noundef float @llvm.fmuladd.f32(float %i.ea, float %i.dx, float %27)
  %i.ec = fcmp ogt float %i.eb, %.182.2           ; 2 uses
  %.184.3 = select i1 %i.ec, i32 3, i32 %.184.2   ; 4 uses
  %i.ed = tail call fastcc noundef float @_ZL14EdgeSeparationPK12btBox2dShapeRK11btTransformiS1_S4_(ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(64) %2, i32 noundef %.184.3, ptr noundef nonnull %3, ptr noundef nonnull align 4 dereferenceable(64) %4) ; 5 uses
  %i.ee = fcmp ogt float %i.ed, 0.000000e+00
  br i1 %i.ee, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ef = add nsw i32 %.184.3, -1
  %.not = icmp eq i32 %.184.3, 0
  %i.eg = select i1 %.not, i32 3, i32 %i.ef       ; 2 uses
  %i.eh = tail call fastcc noundef float @_ZL14EdgeSeparationPK12btBox2dShapeRK11btTransformiS1_S4_(ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(64) %2, i32 noundef %i.eg, ptr noundef nonnull %3, ptr noundef nonnull align 4 dereferenceable(64) %4) ; 5 uses
  %i.ei = fcmp ogt float %i.eh, 0.000000e+00
  br i1 %i.ei, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ej = add nuw nsw i32 %.184.2, 1
  %i.ek = select i1 %i.ec, i32 0, i32 %i.ej       ; 2 uses
  %i.el = tail call fastcc noundef float @_ZL14EdgeSeparationPK12btBox2dShapeRK11btTransformiS1_S4_(ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(64) %2, i32 noundef %i.ek, ptr noundef nonnull %3, ptr noundef nonnull align 4 dereferenceable(64) %4) ; 5 uses
  %i.em = fcmp ogt float %i.el, 0.000000e+00
  br i1 %i.em, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.en = fcmp ogt float %i.eh, %i.ed
  %i.eo = fcmp ogt float %i.eh, %i.el
  %or.cond = and i1 %i.en, %i.eo
  br i1 %or.cond, label %.split.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ep = fcmp ogt float %i.el, %i.ed
  br i1 %i.ep, label %.split, label %.loopexit.sink.split

.split.us:                                        ; preds = %bb.d, %bb.f
  %.179.us = phi i32 [ %i.es, %bb.f ], [ %i.eg, %bb.d ] ; 3 uses
  %.1.us = phi float [ %i.et, %bb.f ], [ %i.eh, %bb.d ] ; 2 uses
  %i.eq = add nsw i32 %.179.us, -1
  %i.er = icmp sgt i32 %.179.us, 0
  %i.es = select i1 %i.er, i32 %i.eq, i32 3       ; 2 uses
  %i.et = tail call fastcc noundef float @_ZL14EdgeSeparationPK12btBox2dShapeRK11btTransformiS1_S4_(ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(64) %2, i32 noundef %i.es, ptr noundef nonnull %3, ptr noundef nonnull align 4 dereferenceable(64) %4) ; 4 uses
  %i.eu = fcmp ogt float %i.et, 0.000000e+00
  br i1 %i.eu, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.split.us
  %i.ev = fcmp ogt float %i.et, %.1.us
  br i1 %i.ev, label %.split.us, label %.loopexit.sink.split

.split:                                           ; preds = %bb.e, %bb.g
  %.179 = phi i32 [ %i.ey, %bb.g ], [ %i.ek, %bb.e ] ; 3 uses
  %.1 = phi float [ %i.ez, %bb.g ], [ %i.el, %bb.e ] ; 2 uses
  %i.ew = add nsw i32 %.179, 1
  %i.ex = icmp slt i32 %.179, 3
  %i.ey = select i1 %i.ex, i32 %i.ew, i32 0       ; 2 uses
  %i.ez = tail call fastcc noundef float @_ZL14EdgeSeparationPK12btBox2dShapeRK11btTransformiS1_S4_(ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(64) %2, i32 noundef %i.ey, ptr noundef nonnull %3, ptr noundef nonnull align 4 dereferenceable(64) %4) ; 4 uses
  %i.fa = fcmp ogt float %i.ez, 0.000000e+00
  br i1 %i.fa, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.split
  %i.fb = fcmp ogt float %i.ez, %.1
  br i1 %i.fb, label %.split, label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.g, %bb.f, %bb.e
  %.184.3.sink = phi i32 [ %.184.3, %bb.e ], [ %.179.us, %bb.f ], [ %.179, %bb.g ]
  %.3.ph = phi float [ %i.ed, %bb.e ], [ %.1.us, %bb.f ], [ %.1, %bb.g ]
  store i32 %.184.3.sink, ptr %0, align 4, !tbaa !7
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %.split.us, %.loopexit.sink.split, %bb.b, %bb.c, %bb.a
  %.3 = phi float [ %i.ed, %bb.a ], [ %i.eh, %bb.b ], [ %i.el, %bb.c ], [ %.3.ph, %.loopexit.sink.split ], [ %i.et, %.split.us ], [ %i.ez, %.split ]
  ret float %.3
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN30btBox2dBox2dCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  %.not = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i8, ptr %i.c, align 8, !range !20
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !52   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !53
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
  %.pre.i = load i32, ptr %i.f, align 4, !tbaa !52
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i: ; preds = %bb.e, %bb.d
  %i.q = phi i32 [ %.pre.i, %bb.e ], [ %i.g, %bb.d ] ; 5 uses
  %.0.i.i.i = phi ptr [ %i.p, %bb.e ], [ null, %bb.d ] ; 8 uses
  %i.r = icmp sgt i32 %i.q, 0
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !54   ; 9 uses
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
  %wide.load = load <2 x ptr>, ptr %i.x, align 8, !tbaa !55
  %wide.load9 = load <2 x ptr>, ptr %i.y, align 8, !tbaa !55
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x ptr> %wide.load, ptr %i.w, align 8, !tbaa !55
  store <2 x ptr> %wide.load9, ptr %i.z, align 8, !tbaa !55
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !45

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
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !55
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !55
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !46

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ae = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !55
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !55
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !55
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !55
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i.1
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !55
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !55
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i.2
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !55
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !55
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
end_hunk_0
